# FightingGameEngine-Assets — Character Adding Guide

This repo hosts downloadable characters for the Fighting Game Engine.
Characters are served via jsDelivr CDN (free, global) and downloaded
on-demand when players select them in the game.

## Quick Start

1. Create a folder under `chars/` with your character's name
2. Upload all character files (.def, .cns, .cmd, .air, .sff, .snd, .act)
3. Add an entry to `manifest.json` (see below)
4. Commit and push — jsDelivr auto-updates within minutes

## Pre-Upload Checklist

Before adding a character, verify these things:

### 1. SFF Version — MUST be v1

The engine has known palette bugs with SFF v2 files (characters turn
black when jumping/attacking). **Only SFF v1 characters work correctly.**

**How to check:**
- Open the .sff file in a hex editor (or use the Python script below)
- Bytes 12-15 should be `00 01 00 01` (SFF v1)
- If bytes are `00 00 00 02`, it's SFF v2 — **convert to v1 first**

**How to convert SFF v2 to v1:**
1. Download Fighter Factory (https://fighterfactory.virtualltek.com/) (free)
2. Open the .sff file
3. File -> Save As -> select "SFF v1" format
4. Save and upload the converted file

**Python check script:**
```python
import struct
with open("character.sff", "rb") as f:
    data = f.read(16)
    ver = f"{data[12]}.{data[13]}.{data[14]}.{data[15]}"
    if data[13] == 1 and data[15] == 1:
        print(f"SFF v1 - compatible")
    elif data[13] == 0 and data[15] == 2:
        print(f"SFF v2 - CONVERT TO v1 (will turn black)")
    else:
        print(f"Unknown version: {ver}")
```

### 2. localcoord — Character size control

localcoord controls how large the character appears on screen. This is now
FULLY SUPPORTED — you can add or change localcoord to make characters smaller.

- `localcoord = 320, 240` — Default, characters appear full-size (like Songoku/Vegeta)
- `localcoord = 640, 480` — Characters appear at 50% size (smaller, like Ikemen Go)
- `localcoord = 1280, 720` — Characters appear at 25% size (very small)
- **No localcoord line** — Defaults to 320,240 (full-size)

**To make a character smaller:** Add `localcoord = 640, 480` to the `[Info]`
section of the character's .def file. The engine handles all scaling
automatically — positions, velocities, hitboxes, effects, and attacks all
scale correctly.

**You CAN change localcoord** on existing characters — it no longer crashes
the engine. Attacks, throws, and special moves all work correctly with any
localcoord value. The character's .cns state files do NOT need to be modified.

### 3. File Size — Keep under 50MB per file

- jsDelivr has a **50MB file limit** per file
- Files over 50MB (like Spider-Man.sff at 54MB) fall back to GitHub raw
  (slower but works)
- For best performance, keep individual files under 50MB
- Total character size can be any size (downloaded as multiple files)

### 4. .cmd Files — jsDelivr blocks them

- jsDelivr blocks `.cmd` files with HTTP 403 (security policy)
- The download manager automatically falls back to GitHub raw for .cmd files
- No action needed — this is handled automatically

### 5. Required Files

Every character must have at minimum:
- `.def` file (character definition — lists all other files)
- `.cns` file (constants and states)
- `.cmd` file (command definitions — moves and AI)
- `.air` file (animation definitions)
- `.sff` file (sprite graphics)
- `.snd` file (sound effects) — optional but recommended
- `common1.cns` file (common states — walking, jumping, etc.)
- `.act` files (palettes — at least one)

Check the .def file's `[Files]` section to see which files are referenced.
All referenced files must be included.

### 6. Folder Name

- The folder name becomes the character ID
- Must match the folder name used in the `manifest.json` entry
- Avoid spaces if possible (use underscores or hyphens)
- If using spaces, URL-encode them in `cdnBase` (e.g., `%20`)

## Adding a Character to manifest.json

Open `manifest.json` and add a new entry to the `characters` array:

```json
{
  "id": "YourCharName",
  "displayName": "Display Name",
  "author": "Author Name",
  "description": "Short description shown in character select.",
  "sizeMB": 25,
  "bundled": false,
  "cdnBase": "https://cdn.jsdelivr.net/gh/nawaf-al-hussain/FightingGameEngine-Assets@main/chars/YourCharName/",
  "files": [
    "YourCharName.def",
    "YourCharName.cns",
    "YourCharName.cmd",
    "YourCharName.air",
    "YourCharName.sff",
    "YourCharName.snd",
    "common1.cns",
    "palette1.act"
  ]
}
```

### Field Reference

| Field | Description |
|-------|-------------|
| `id` | Character ID. Must match the folder name under `chars/`. Used as the WASM filesystem path. |
| `displayName` | Name shown on the character select screen. |
| `author` | Character author credit. |
| `description` | Short description shown on the character card. |
| `sizeMB` | Approximate total size in MB (for display only). Sum all file sizes. |
| `bundled` | Must be `false` for downloadable characters. |
| `cdnBase` | Base URL for downloading files. Must end with `/`. Use `%20` for spaces in folder names. |
| `files` | Array of all filenames to download. Must include ALL files the character needs (check .def [Files] section). |

### Important Notes

- **List ALL files**: The `files` array must include every file the character
  needs. Check the .def file's `[Files]` section — every file referenced there
  must be in the array. Missing files = character won't load.
- **Palette files**: Include all .act files listed in the .def (pal1, pal2, etc.)
- **Subdirectory files**: If palettes are in a subfolder (e.g., `ACT/pal1.act`),
  include the path in the filename: `"ACT/pal1.act"`.
- **URL encoding**: If the folder name has spaces, use `%20` in `cdnBase`.
- **Don't include**: `desktop.ini`, `readme.txt`, `movelist.dat` — these are
  not needed by the engine and waste download time.

## CDN Details

Characters are served via two CDNs:

1. **jsDelivr** (primary): `https://cdn.jsdelivr.net/gh/nawaf-al-hussain/FightingGameEngine-Assets@main/`
   - Fast, global CDN
   - 50MB file size limit
   - Blocks .cmd files (403) — automatic fallback to GitHub raw
   - Caches for up to 7 days

2. **GitHub raw** (fallback): `https://raw.githubusercontent.com/nawaf-al-hussain/FightingGameEngine-Assets/main/`
   - No file size limit
   - Serves all file types
   - Slightly slower than jsDelivr
   - Used automatically when jsDelivr returns 403

After pushing changes, jsDelivr takes ~5-10 minutes to update its cache.
To force-refresh, visit:
`https://purge.jsdelivr.net/gh/nawaf-al-hussain/FightingGameEngine-Assets@main/manifest.json`

## Current Characters

| ID | Display Name | Author | Size | SFF | localcoord | Status |
|----|-------------|--------|------|-----|------------|--------|
| Goku_UI | Ultra Instinct Goku | Mikel8888 | 46MB | v2 | 320,240 | Needs SFF v2→v1 conversion |
| Any char | Any character | Any | Any | v1 | 640,480 | Works perfectly (smaller size) |
| Spider-Man_SR | Spider-Man | FEX | 65MB | v1 | 320,240 | Issues reported |
| Goku Ultra Instinto Extreme Butoden | Goku Ultra Instinto | Mr 4x3l | 38MB | v1 | 640,480 | Works perfectly |
| !Nightwing-o | Nightwing | Jmaxximus & O Ilusionista | 31MB | v1 | 640,480 | Should work |

Characters marked "v2" need SFF v2 to v1 conversion (use Fighter Factory).

## Bundled Characters (in game.data)

These are always available — no download needed:

| ID | Display Name | Author | Size |
|----|-------------|--------|------|
| Songoku | Songoku | Dolmexica | 4MB |
| Vegeta | Vegeta | CHOUJIN | 4MB |
| robin_tt | Robin | Pulloff | 14MB |

## Automated Manifest Update (Recommended)

This repo includes one-click scripts that auto-generate `manifest.json` from your `chars/` and `stages/` folders.

### Files Included

| File | Platform | How to Use |
|------|----------|------------|
| `update-manifest.bat` | Windows | Double-click the file in Explorer |
| `update-manifest.sh` | macOS/Linux | Double-click in Finder, or run `./update-manifest.sh` in Terminal |
| `update-manifest.py` | All (backend) | Called by the .bat/.sh scripts; can also be run directly |

### What the Scripts Do

1. Scan `chars/` for character folders with `.def` files
2. Parse each `.def` to extract `displayName`, `author`, and ALL file references (sprite, anim, sound, cmd, cns, stcommon, st, st1-N, pal1-N)
3. Scan `stages/` for `.def` files (pairs with `.sff` of same name)
4. Compute `sizeMB` from actual file sizes on disk
5. Preserve manually-written `description` fields from existing `manifest.json`
6. URL-encode spaces in `cdnBase` (e.g., `%20`)
7. Include the `.def` file itself in the files list
8. Ask if you want to commit and push to GitHub

### Workflow

1. Add/remove character folders in `chars/` and stage files in `stages/` (using GitHub Desktop or any git client)
2. Double-click `update-manifest.bat` (Windows) or `update-manifest.sh` (Mac/Linux)
3. Review the changes shown in the console
4. Type `y` when asked to commit and push
5. jsDelivr CDN updates in 5-10 minutes (or visit the purge URL shown)

### Requirements

- **Python 3.6+** — Install from https://python.org (Windows: check "Add Python to PATH" during install; macOS/Linux: usually pre-installed)
- **Git** — Install from https://git-scm.com (must be in PATH)

### Running Manually

If you prefer the command line:
```bash
# Any platform
python3 update-manifest.py

# Then review and commit
git diff manifest.json
git add manifest.json
git commit -m "update manifest"
git push
```

The script only modifies `manifest.json` — it never touches character files.
