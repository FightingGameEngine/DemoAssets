#!/usr/bin/env bash
# ============================================================================
#  update-manifest.sh — One-click manifest.json updater (macOS/Linux)
# ============================================================================
#
#  WHAT IT DOES:
#    1. Runs update-manifest.py to scan chars/ and stages/ folders
#    2. Updates manifest.json automatically with correct file lists and sizes
#    3. Shows you what changed
#    4. Asks if you want to commit and push to GitHub
#
#  HOW TO USE:
#    - Double-click this file in Finder (macOS) — may need to chmod +x first
#    - Or run from terminal: ./update-manifest.sh
#
#  REQUIREMENTS:
#    - Python 3.6+ (pre-installed on macOS/Linux, or install from python.org)
#    - Git (pre-installed on macOS/Linux, or install from git-scm.com)
#
#  The script runs in the folder where this .sh file is located.
# ============================================================================

set -e
cd "$(dirname "$0")"

echo "============================================================================"
echo " FightingGameEngine-Assets — Manifest Updater"
echo "============================================================================"
echo ""

# Check if Python is installed
if ! command -v python3 &>/dev/null; then
    if ! command -v python &>/dev/null; then
        echo " ERROR: Python is not installed or not in PATH."
        echo ""
        echo " Please install Python 3.6+ from https://python.org"
        echo ""
        read -p "Press Enter to exit..."
        exit 1
    fi
    PYTHON=python
else
    PYTHON=python3
fi

# Check if we're in the right directory
if [ ! -d "chars" ] && [ ! -d "stages" ]; then
    echo " ERROR: This doesn't look like the FightingGameEngine-Assets repo."
    echo " Expected to find a 'chars' or 'stages' folder."
    echo " Make sure this .sh file is in the root of the repo."
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

# Check if update-manifest.py exists
if [ ! -f "update-manifest.py" ]; then
    echo " ERROR: update-manifest.py not found."
    echo " It should be in the same folder as this .sh file."
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi

echo " Scanning characters and stages..."
echo " ----------------------------------------"
"$PYTHON" update-manifest.py --repo .
echo ""
echo " ----------------------------------------"
echo " Manifest updated successfully!"
echo ""

# Check if there are changes to commit
if ! git diff --quiet manifest.json 2>/dev/null; then
    echo " Changes detected in manifest.json."
    echo ""
    read -p "Do you want to commit and push to GitHub? (y/n): " commit
    if [[ "$commit" =~ ^[Yy]$ ]]; then
        echo ""
        echo " Staging manifest.json..."
        git add manifest.json

        echo " Committing..."
        git commit -m "Auto-update manifest.json"

        echo " Pushing to GitHub..."
        git push origin || {
            echo " ERROR: git push failed. You may need to:"
            echo "   - Check your GitHub credentials"
            echo "   - Or push manually: git push"
            echo ""
            read -p "Press Enter to exit..."
            exit 1
        }

        echo ""
        echo " ========================================================================"
        echo " SUCCESS! Manifest updated and pushed to GitHub."
        echo " ========================================================================"
        echo ""
        echo " jsDelivr CDN will update in 5-10 minutes."
        echo " To force-refresh, visit:"
        echo " https://purge.jsdelivr.net/gh/nawaf-al-hussain/FightingGameEngine-Assets@main/manifest.json"
        echo ""
    else
        echo ""
        echo " Skipped commit. You can commit manually later:"
        echo "   git add manifest.json"
        echo "   git commit -m \"update manifest\""
        echo "   git push"
        echo ""
    fi
else
    echo " No changes — manifest.json is already up to date."
    echo ""
fi

read -p "Press Enter to exit..."
