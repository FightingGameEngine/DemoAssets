#!/usr/bin/env python3
"""
update-manifest.py — Auto-generate manifest.json for FightingGameEngine-Assets

USAGE:
    python3 update-manifest.py [--repo /path/to/FightingGameEngine-Assets]

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

WORKFLOW:
    1. Clone FightingGameEngine-Assets to your desktop
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
    - Files that don't exist on disk are still included (they may be
      downloaded later), but a warning is printed.

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

# =============================================================================
# .def file parser
# =============================================================================

def parse_def_file(def_path, char_folder):
    """
    Parse a MUGEN .def file and extract metadata + file references.
    
    Returns dict with keys:
        - name: from [Info] name
        - displayname: from [Info] displayname (falls back to name)
        - author: from [Info] author
        - files: list of all filenames referenced in [Files] section
                (INCLUDING the .def file itself)
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
                # Find the closing quote — everything after it is a comment
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
    
    # Clean up author field (extra safety — quotes already stripped during parse)
    result["author"] = result["author"].strip()
    
    # Deduplicate files while preserving order
    seen = set()
    unique_files = []
    for f in result["files"]:
        if f not in seen:
            seen.add(f)
            unique_files.append(f)
    result["files"] = unique_files
    
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
    
    # Multiple .def files — prefer one matching folder name
    folder_name = Path(folder).name
    for f in def_files:
        if f.stem.lower() == folder_name.lower():
            return str(f)
    
    # Fallback: use the first .def
    return str(def_files[0])


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
        
        parsed = parse_def_file(def_path, char_folder)
        if not parsed:
            print(f"    WARNING: Failed to parse .def, skipping")
            continue
        
        size_mb = compute_size_mb(char_folder, parsed["files"])
        
        # Build cdnBase with URL-encoding
        encoded_id = url_encode_path(char_id)
        cdn_base = f"{CDN_BASE}/chars/{encoded_id}/"
        
        # Check for missing files
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
        print(f"    → {entry['displayName']} by {entry['author']} ({size_mb}MB, {len(parsed['files'])} files)")
    
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
        print(f"    → {entry['displayName']} by {entry['author']} ({size_mb}MB)")
    
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


def main():
    parser = argparse.ArgumentParser(
        description="Auto-generate manifest.json for FightingGameEngine-Assets"
    )
    parser.add_argument(
        "--repo",
        default=".",
        help="Path to the FightingGameEngine-Assets repo (default: current directory)",
    )
    args = parser.parse_args()
    
    repo_path = Path(args.repo).resolve()
    chars_dir = repo_path / "chars"
    stages_dir = repo_path / "stages"
    manifest_path = repo_path / "manifest.json"
    
    print("=" * 60)
    print("FightingGameEngine-Assets — Manifest Generator")
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
        print("✓ No changes — manifest.json is already up to date")
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
        print("  (File contents updated — sizes, files, or metadata changed)")
    
    print()
    print("✓ manifest.json updated")
    print()
    print("Next steps:")
    print("  1. Review:    git diff manifest.json")
    print("  2. Commit:    git add manifest.json && git commit -m \"update manifest\"")
    print("  3. Push:      git push")
    print("  4. Purge CDN: visit https://purge.jsdelivr.net/gh/"
          f"{GITHUB_USER}/{REPO_NAME}@{BRANCH}/manifest.json")
    
    return 0


if __name__ == "__main__":
    sys.exit(main())
