@echo off
REM ============================================================================
REM  update-manifest.bat - One-click manifest.json updater
REM ============================================================================
REM
REM  WHAT IT DOES:
REM    1. Runs update-manifest.py to scan chars/ and stages/ folders
REM    2. Updates manifest.json automatically with correct file lists and sizes
REM    3. Shows you what changed
REM    4. Asks if you want to commit and push to GitHub
REM
REM  HOW TO USE:
REM    - Double-click this file in Windows Explorer
REM    - Or run from command prompt: update-manifest.bat
REM
REM  REQUIREMENTS:
REM    - Python 3.6+ installed (https://python.org - check "Add to PATH")
REM    - Git installed (https://git-scm.com)
REM
REM  The script runs in the folder where this .bat file is located.
REM ============================================================================

setlocal enabledelayedexpansion
cd /d "%~dp0"

echo ============================================================================
echo  FightingGameEngine-DemoAssets - Manifest Updater
echo ============================================================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo  ERROR: Python is not installed or not in PATH.
    echo.
    echo  Please install Python 3.6+ from https://python.org
    echo  Make sure to check "Add Python to PATH" during installation.
    echo.
    pause
    exit /b 1
)

REM Check if we're in the right directory
if not exist "chars" (
    if not exist "stages" (
        echo  ERROR: This doesn't look like the FightingGameEngine-DemoAssets repo.
        echo  Expected to find a 'chars' or 'stages' folder.
        echo  Make sure this .bat file is in the root of the repo.
        echo.
        pause
        exit /b 1
    )
)

REM Check if update-manifest.py exists
if not exist "update-manifest.py" (
    echo  ERROR: update-manifest.py not found.
    echo  It should be in the same folder as this .bat file.
    echo.
    pause
    exit /b 1
)

echo  Scanning characters and stages...
echo  ----------------------------------------
python update-manifest.py --repo .
if errorlevel 1 (
    echo.
    echo  ERROR: Script failed. See messages above.
    echo.
    pause
    exit /b 1
)

echo.
echo  ----------------------------------------
echo  Manifest updated successfully!
echo.

REM Check if there are changes to commit
git diff --quiet manifest.json 2>nul
if errorlevel 1 (
    echo  Changes detected in manifest.json.
    echo.
    set /p "commit=Do you want to commit and push to GitHub? (y/n): "
    if /i "!commit!"=="y" (
        echo.
        echo  Staging manifest.json...
        git add manifest.json
        if errorlevel 1 (
            echo  ERROR: git add failed.
            pause
            exit /b 1
        )

        echo  Committing...
        git commit -m "Auto-update manifest.json"
        if errorlevel 1 (
            echo  ERROR: git commit failed.
            pause
            exit /b 1
        )

        echo  Pushing to GitHub...
        git push origin
        if errorlevel 1 (
            echo  ERROR: git push failed. You may need to:
            echo    - Check your GitHub credentials
            echo    - Or push manually: git push
            echo.
            pause
            exit /b 1
        )

        echo.
        echo  ========================================================================
        echo  SUCCESS! Manifest updated and pushed to GitHub.
        echo  ========================================================================
        echo.
        echo  jsDelivr CDN will update in 5-10 minutes.
        echo  To force-refresh, visit:
        echo  https://purge.jsdelivr.net/gh/nawaf-al-hussain/FightingGameEngine-DemoAssets@main/manifest.json
        echo.
    ) else (
        echo.
        echo  Skipped commit. You can commit manually later:
        echo    git add manifest.json
        echo    git commit -m "update manifest"
        echo    git push
        echo.
    )
) else (
    echo  No changes - manifest.json is already up to date.
    echo.
)

pause
