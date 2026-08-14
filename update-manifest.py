#!/usr/bin/env python3
"""
update-manifest.py — Auto-generate manifest.json for Assets

USAGE:
    python3 update-manifest.py [--repo /path/to/Assets]

WHAT IT DOES:
    1. Scans chars/ for character folders (each must contain a .def file)
    2. Parses each .def file to extract:
       - id (folder name)
       - displayName (from [Info] displayname, or [Info] name)
       - author (from [Info] author)
       - files (ALL files referenced in [Files] section: sprite, anim, sound,
                cmd, cns, stcommon, st, st1..stN, pal1..palN)
    3. Scans stages/ for .def files (pairs with .sff of same name)
    4. Computes total sizeMB from actual file sizes on disk
    5. Preserves manual overrides (description) from existing manifest.json
    6. Writes updated manifest.json
    7. Prints a summary of what changed

CASE-AWARE FILE MATCHING:
    The manifest stores filenames exactly as they appear on disk (case-preserved).
    This is critical because GitHub raw (the fallback CDN) is case-sensitive.
    On Windows, the filesystem is case-insensitive, so a .def file might
    reference "basics.st" while the actual file is "Basics.st". The old script
    used Path.exists() which passes on Windows but the resulting manifest
    has the wrong case, causing 404 errors on GitHub raw.

    This script builds a case-insensitive map of all files in the character
    folder (including subdirectories), then matches .def references to the
    actual on-disk filenames. The manifest always uses the real on-disk name.

FOLDER/.def MISMATCH WARNING:
    The engine builds the player path as chars/<charId>/<charId>.def, so the
    .def filename MUST match the folder name. If they don't match, the engine
    can't find the character definition and crashes. This script prints a
    prominent warning when a mismatch is detected, and exits with code 1.

WORKFLOW:
    1. Clone Assets to your desktop
    2. Add/remove character folders in chars/ and stage files in stages/
    3. Run this script: python3 update-manifest.py
    4. Review changes with: git diff manifest.json
    5. Commit and push: git add manifest.json && git commit -m "update manifest" && git push

NOTES:
    - The script PRESERVES existing "description" fields from manifest.json
      so you don't lose manual descriptions. New characters get a generic
      description you can edit later.
    - The script PRESERVES the "version" field from existing manifest.
    - sizeMB is computed from actual file sizes, rounded to nearest MB.
    - cdnBase uses jsDelivr with URL-encoding for spaces (%20).
    - Files that don't exist on disk are skipped (with a warning).

REQUIREMENTS:
    Python 3.6+ (standard library only — no pip install needed)
"""

import os
import sys
import json
import re
import argparse
from pathlib import Path

# =============================================================================
# Configuration
# =============================================================================

GITHUB_USER = "FightingGameEngine"
REPO_NAME = "DemoAssets"
BRANCH = "main"
CDN_BASE = f"https://cdn.jsdelivr.net/gh/{GITHUB_USER}/{REPO_NAME}@{BRANCH}"

# Files to EXCLUDE from the manifest (not needed by engine)
EXCLUDE_FILES = {
    "desktop.ini",
    "readme.txt",
    "readme.md",
    "movelist.dat",
    ".DS_Store",
    "Thumbs.db",
}

# File extensions to include in the files list
INCLUDE_EXTENSIONS = {
    ".def", ".cns", ".cmd", ".air", ".sff", ".snd", ".act",
    ".st", ".txt",  # .st = state file, .txt = some characters use it
}

# Track folder/.def mismatches for final summary
MISMATCH_WARNINGS = []


# =============================================================================
# Case-aware file map builder
# =============================================================================

def build_case_insensitive_file_map(folder_path):
    """Build a case-insensitive map of all files in a folder.

    Returns a dict mapping lowercase relative path -> actual on-disk relative path.
    For example, if the folder contains "Basics.st", the map will have:
        {"basics.st": "Basics.st"}

    This lets us match .def references (which may use different casing) to
    the actual on-disk filenames, so the manifest always uses the correct case.

    Walks one level deep into subdirectories (e.g., ACT/pal1.act).
    """
    file_map = {}
    folder = Path(folder_path)

    # Top-level files
    for f in folder.iterdir():
        if f.is_file() and f.name not in EXCLUDE_FILES:
            file_map[f.name.lower()] = f.name

    # One level deep (subdirectories like ACT/)
    for sub in folder.iterdir():
        if sub.is_dir() and not sub.name.startswith("."):
            for f in sub.iterdir():
                if f.is_file() and f.name not in EXCLUDE_FILES:
                    rel = f"{sub.name}/{f.name}"
                    file_map[rel.lower()] = rel

    return file_map


# =============================================================================
# .def file parser
# =============================================================================

def parse_def_file(def_path, char_folder):
    """Parse a MUGEN .def file and extract metadata + file references.

    Returns dict with keys:
        - name: from [Info] name
        - displayname: from [Info] displayname (falls back to name)
        - author: from [Info] author
        - files: list of all filenames referenced in [Files] section
                (INCLUDING the .def file itself), with CORRECT on-disk casing
        - pal_defaults: list of palette numbers from pal.defaults
    """
    try:
        with open(def_path, "r", encoding="utf-8", errors="replace") as f:
            content = f.read()
    except Exception:
        try:
            with open(def_path, "r", encoding="latin-1") as f:
                content = f.read()
        except Exception as e:
            print(f"  ERROR reading {def_path}: {e}")
            return None

    result = {
        "name": "",
        "displayname": "",
        "author": "",
        "files": [],
        "pal_defaults": [],
    }

    # The .def file itself must be in the files list (the download manager
    # needs it to know what to inject into the WASM filesystem)
    def_filename = Path(def_path).name
    result["files"].append(def_filename)

    # Parse sections
    current_section = None
    for line in content.splitlines():
        line = line.strip()
        if not line or line.startswith(";"):
            continue

        # Section header [SectionName]
        if line.startswith("[") and line.endswith("]"):
            current_section = line[1:-1].strip().lower()
            continue

        # Key = Value
        if "=" in line and current_section:
            # Split on first = only (values may contain =)
            idx = line.index("=")
            key = line[:idx].strip().lower()
            value = line[idx+1:].strip()

            # Remove trailing comments. In MUGEN .def files, ; starts a comment,
            # but semicolons inside quoted strings are literal.
            if value.startswith('"'):
                # Find the closing quote - everything after it is a comment
                end_quote = value.find('"', 1)
                if end_quote > 0:
                    value = value[:end_quote+1]
            elif ";" in value:
                value = value.split(";")[0].strip()

            # Remove surrounding quotes
            if value.startswith('"') and value.endswith('"') and len(value) >= 2:
                value = value[1:-1]

            if current_section == "info":
                if key == "name":
                    result["name"] = value
                elif key == "displayname":
                    result["displayname"] = value
                elif key == "author":
                    result["author"] = value
                elif key == "pal.defaults":
                    # Parse "1,2,3" or "1"
                    result["pal_defaults"] = [v.strip() for v in value.split(",") if v.strip()]

            elif current_section == "files":
                # File reference keys: sprite, anim, sound, cmd, cns, stcommon,
                # st, st1, st2, ..., pal1, pal2, ...
                # All values are filenames
                if key in ("sprite", "anim", "sound", "cmd", "cns", "stcommon", "st"):
                    if value:
                        result["files"].append(value)
                elif key.startswith("st") and key[2:].isdigit():
                    # st1, st2, st3, ...
                    if value:
                        result["files"].append(value)
                elif key.startswith("pal") and key[3:].isdigit():
                    # pal1, pal2, ...
                    if value:
                        result["files"].append(value)

    # Fallback: if displayname is empty, use name
    if not result["displayname"]:
        result["displayname"] = result["name"]

    # Clean up author field (extra safety - quotes already stripped during parse)
    result["author"] = result["author"].strip()

    # Deduplicate files while preserving order
    seen = set()
    unique_files = []
    for f in result["files"]:
        if f not in seen:
            seen.add(f)
            unique_files.append(f)
    result["files"] = unique_files

    # ======================================================================
    # Case-aware file matching
    # ======================================================================
    # Build a case-insensitive map of actual on-disk filenames in the
    # character folder (including one level of subdirectories).
    # This ensures the manifest uses the REAL on-disk filename, not the
    # (possibly differently-cased) name from the .def file.
    #
    # Why this matters: GitHub raw (our fallback CDN) is case-sensitive.
    # If the .def says "basics.st" but the file is "Basics.st" on disk,
    # Windows Path.exists() passes (case-insensitive), but GitHub raw
    # returns 404 for "basics.st". Using the correct case fixes this.
    # ======================================================================
    char_folder_path = Path(def_path).parent
    disk_file_map = build_case_insensitive_file_map(char_folder_path)

    existing_files = []
    missing_files = []
    case_corrections = []
    for f in result["files"]:
        # Check for exact match first (most common case)
        if (char_folder_path / f).exists() and f in disk_file_map.values():
            existing_files.append(f)
        else:
            # Try case-insensitive match
            actual = disk_file_map.get(f.lower())
            if actual:
                existing_files.append(actual)
                if actual != f:
                    case_corrections.append((f, actual))
            else:
                missing_files.append(f)

    if case_corrections:
        print(f"    CASE CORRECTIONS (manifest will use actual on-disk name):")
        for old, new in case_corrections:
            print(f"      '{old}' -> '{new}'")

    if missing_files:
        print(f"    NOTE: Skipping {len(missing_files)} missing file(s): {missing_files}")
    result["files"] = existing_files

    return result


def find_def_file(folder):
    """Find the main .def file in a character folder.

    The main .def file is usually named the same as the folder, but some
    characters have differently-named .def files. If there's only one .def,
    use that. If there are multiple, prefer the one matching the folder name.
    """
    def_files = list(Path(folder).glob("*.def"))
    if not def_files:
        return None
    if len(def_files) == 1:
        return str(def_files[0])

    # Multiple .def files - prefer one matching folder name
    folder_name = Path(folder).name
    for f in def_files:
        if f.stem.lower() == folder_name.lower():
            return str(f)

    # Fallback: use the first .def
    return str(def_files[0])


def check_folder_def_mismatch(char_id, def_path):
    """Check if the .def filename matches the folder name.

    The engine builds the player path as chars/<charId>/<charId>.def, so the
    .def filename MUST match the folder name. If they don't match, the engine
    can't find the character definition and crashes with "error while trying
    to start game".

    Returns True if there's a mismatch, False if OK.
    """
    def_filename = Path(def_path).stem  # filename without extension
    if def_filename != char_id:
        MISMATCH_WARNINGS.append({
            "char_id": char_id,
            "def_filename": Path(def_path).name,
            "expected": f"{char_id}.def",
        })
        return True
    return False


def compute_size_mb(folder, files):
    """Compute total size in MB from actual files on disk."""
    total = 0
    for f in files:
        fpath = Path(folder) / f
        if fpath.exists() and fpath.is_file():
            total += fpath.stat().st_size
    return round(total / (1024 * 1024))


def url_encode_path(path):
    """URL-encode spaces in a path for CDN URLs."""
    return path.replace(" ", "%20")


# =============================================================================
# Character scanner
# =============================================================================

def scan_characters(chars_dir):
    """Scan chars/ directory for character folders and build manifest entries."""
    characters = []
    chars_path = Path(chars_dir)

    if not chars_path.exists():
        print(f"  WARNING: {chars_dir} does not exist")
        return characters

    for char_folder in sorted(chars_path.iterdir()):
        if not char_folder.is_dir():
            continue
        if char_folder.name.startswith("."):
            continue

        char_id = char_folder.name
        print(f"  Scanning character: {char_id}")

        def_path = find_def_file(char_folder)
        if not def_path:
            print(f"    WARNING: No .def file found, skipping")
            continue

        # Check for folder/.def name mismatch
        mismatch = check_folder_def_mismatch(char_id, def_path)
        if mismatch:
            print(f"    WARNING: Folder/.def name mismatch!")
            print(f"       Folder name: '{char_id}'")
            print(f"       .def file:   '{Path(def_path).name}'")
            print(f"       Engine expects: '{char_id}.def'")
            print(f"       FIX: Rename '{Path(def_path).name}' -> '{char_id}.def'")
            print(f"       The engine looks for chars/{char_id}/{char_id}.def")
            print(f"       and will crash if it doesn't find it.")

        parsed = parse_def_file(def_path, char_folder)
        if not parsed:
            print(f"    WARNING: Failed to parse .def, skipping")
            continue

        size_mb = compute_size_mb(char_folder, parsed["files"])

        # Build cdnBase with URL-encoding
        encoded_id = url_encode_path(char_id)
        cdn_base = f"{CDN_BASE}/chars/{encoded_id}/"

        # Check for missing files (shouldn't happen after case-aware matching,
        # but keep as a safety net)
        missing = []
        for f in parsed["files"]:
            fpath = char_folder / f
            if not fpath.exists():
                missing.append(f)

        if missing:
            print(f"    WARNING: Missing files: {missing}")

        entry = {
            "id": char_id,
            "displayName": parsed["displayname"] or char_id,
            "author": parsed["author"] or "Unknown",
            "description": "",  # Preserved from existing manifest
            "sizeMB": size_mb,
            "bundled": False,
            "cdnBase": cdn_base,
            "files": parsed["files"],
        }

        characters.append(entry)
        print(f"    -> {entry['displayName']} by {entry['author']} ({size_mb}MB, {len(parsed['files'])} files)")

    return characters


# =============================================================================
# Stage scanner
# =============================================================================

def parse_stage_def(def_path):
    """Parse a stage .def file to extract name and author."""
    try:
        with open(def_path, "r", encoding="utf-8", errors="replace") as f:
            content = f.read()
    except Exception:
        with open(def_path, "r", encoding="latin-1") as f:
            content = f.read()

    result = {"name": "", "author": ""}
    current_section = None

    for line in content.splitlines():
        line = line.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            current_section = line[1:-1].strip().lower()
            continue
        if "=" in line and current_section == "info":
            idx = line.index("=")
            key = line[:idx].strip().lower()
            value = line[idx+1:].strip()
            if ";" in value and not value.startswith('"'):
                value = value.split(";")[0].strip()
            if value.startswith('"') and value.endswith('"'):
                value = value[1:-1]
            if key == "name":
                result["name"] = value
            elif key == "author":
                result["author"] = value

    return result


def scan_stages(stages_dir):
    """Scan stages/ directory for stage .def files."""
    stages = []
    stages_path = Path(stages_dir)

    if not stages_path.exists():
        print(f"  WARNING: {stages_dir} does not exist")
        return stages

    for def_file in sorted(stages_path.glob("*.def")):
        stage_id = def_file.stem
        print(f"  Scanning stage: {stage_id}")

        parsed = parse_stage_def(def_file)

        # Find the .sff file (same name as .def, or referenced in [Files])
        sff_file = str(def_file.with_suffix(".sff"))
        files = [def_file.name]
        if Path(sff_file).exists():
            files.append(Path(sff_file).name)

        size_mb = 0
        for f in files:
            fpath = stages_path / f
            if fpath.exists():
                size_mb += fpath.stat().st_size
        size_mb = round(size_mb / (1024 * 1024))

        entry = {
            "id": stage_id,
            "displayName": parsed["name"] or stage_id,
            "author": parsed["author"] or "Unknown",
            "description": "",
            "sizeMB": size_mb,
            "bundled": False,
            "cdnBase": f"{CDN_BASE}/stages/",
            "files": files,
        }

        stages.append(entry)
        print(f"    -> {entry['displayName']} by {entry['author']} ({size_mb}MB)")

    return stages


# =============================================================================
# Main
# =============================================================================

def load_existing_manifest(manifest_path):
    """Load existing manifest.json to preserve descriptions and version."""
    if not Path(manifest_path).exists():
        return {"version": 2, "characters": [], "stages": []}
    try:
        with open(manifest_path, "r", encoding="utf-8") as f:
            return json.load(f)
    except Exception as e:
        print(f"  WARNING: Failed to load existing manifest: {e}")
        return {"version": 2, "characters": [], "stages": []}


def preserve_overrides(existing, new_entries, entry_type):
    """Preserve 'description' from existing manifest entries."""
    existing_map = {}
    for e in existing.get(entry_type, []):
        existing_map[e.get("id", "")] = e

    for entry in new_entries:
        old = existing_map.get(entry["id"])
        if old:
            # Preserve description if it was manually set
            if old.get("description"):
                entry["description"] = old["description"]
            # Preserve displayName if it was manually overridden
            if old.get("displayName") and old["displayName"] != entry.get("id"):
                entry["displayName"] = old["displayName"]

    return new_entries


def print_mismatch_summary():
    """Print a summary of folder/.def mismatches."""
    if not MISMATCH_WARNINGS:
        return

    print()
    print("=" * 60)
    print("WARNING: FOLDER/.def NAME MISMATCHES")
    print("=" * 60)
    print(f"  Found {len(MISMATCH_WARNINGS)} character(s) with mismatched .def names.")
    print(f"  The engine looks for chars/<folder>/<folder>.def - these will CRASH:")
    print()
    for w in MISMATCH_WARNINGS:
        print(f"  - {w['char_id']}/")
        print(f"      has:  {w['def_filename']}")
        print(f"      needs: {w['expected']}")
        print()
    print("  FIX: Rename the .def file to match the folder name, then re-run this script.")
    print("  (Renaming the .def is safe - internal [Files] references don't")
    print("   depend on the .def filename.)")
    print("=" * 60)


def main():
    global MISMATCH_WARNINGS
    MISMATCH_WARNINGS = []  # Reset for each run

    parser = argparse.ArgumentParser(
        description="Auto-generate manifest.json for Assets"
    )
    parser.add_argument(
        "--repo",
        default=".",
        help="Path to the Assets repo (default: current directory)",
    )
    args = parser.parse_args()

    repo_path = Path(args.repo).resolve()
    chars_dir = repo_path / "chars"
    stages_dir = repo_path / "stages"
    manifest_path = repo_path / "manifest.json"

    print("=" * 60)
    print("Assets - Manifest Generator")
    print("=" * 60)
    print(f"Repo path: {repo_path}")
    print()

    # Load existing manifest for overrides
    print("Loading existing manifest...")
    existing = load_existing_manifest(manifest_path)
    print(f"  Existing: {len(existing.get('characters', []))} characters, "
          f"{len(existing.get('stages', []))} stages")
    print()

    # Scan characters
    print("Scanning characters...")
    characters = scan_characters(chars_dir)
    print(f"  Found {len(characters)} characters")
    print()

    # Scan stages
    print("Scanning stages...")
    stages = scan_stages(stages_dir)
    print(f"  Found {len(stages)} stages")
    print()

    # Preserve manual overrides (descriptions, displayNames)
    characters = preserve_overrides(existing, characters, "characters")
    stages = preserve_overrides(existing, stages, "stages")

    # Build new manifest
    new_manifest = {
        "version": existing.get("version", 2),
        "characters": characters,
    }
    if stages:
        new_manifest["stages"] = stages

    # Compare with existing
    old_json = json.dumps(existing, indent=2, sort_keys=False, ensure_ascii=False)
    new_json = json.dumps(new_manifest, indent=2, sort_keys=False, ensure_ascii=False)

    if old_json == new_json:
        print("OK: No changes - manifest.json is already up to date")
        # Still print mismatch warnings even if manifest unchanged
        if MISMATCH_WARNINGS:
            print_mismatch_summary()
            return 1
        return 0

    # Write new manifest
    print("Writing manifest.json...")
    with open(manifest_path, "w", encoding="utf-8") as f:
        json.dump(new_manifest, f, indent=2, ensure_ascii=False)
        f.write("\n")  # Trailing newline

    # Print summary of changes
    old_char_ids = {c["id"] for c in existing.get("characters", [])}
    new_char_ids = {c["id"] for c in characters}
    added_chars = new_char_ids - old_char_ids
    removed_chars = old_char_ids - new_char_ids

    old_stage_ids = {s["id"] for s in existing.get("stages", [])}
    new_stage_ids = {s["id"] for s in stages}
    added_stages = new_stage_ids - old_stage_ids
    removed_stages = old_stage_ids - new_stage_ids

    print()
    print("=" * 60)
    print("SUMMARY")
    print("=" * 60)
    if added_chars:
        print(f"  + Added characters: {sorted(added_chars)}")
    if removed_chars:
        print(f"  - Removed characters: {sorted(removed_chars)}")
    if added_stages:
        print(f"  + Added stages: {sorted(added_stages)}")
    if removed_stages:
        print(f"  - Removed stages: {sorted(removed_stages)}")
    if not (added_chars or removed_chars or added_stages or removed_stages):
        print("  (File contents updated - sizes, files, or metadata changed)")

    # Print folder/.def mismatch warnings
    print_mismatch_summary()

    print()
    print("OK: manifest.json updated")
    print()
    print("Next steps:")
    print("  1. Review:    git diff manifest.json")
    print("  2. Commit:    git add manifest.json && git commit -m \"update manifest\"")
    print("  3. Push:      git push")
    print("  4. Purge CDN: visit https://purge.jsdelivr.net/gh/"
          f"{GITHUB_USER}/{REPO_NAME}@{BRANCH}/manifest.json")

    # Exit with non-zero if there are mismatches (so CI/scripts can detect)
    if MISMATCH_WARNINGS:
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
