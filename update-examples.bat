@echo off
REM Update examples from instructor's repository
REM Run this when your instructor announces new content

REM ============================================================
REM INSTRUCTOR: Replace this URL with your template repository
<<<<<<< HEAD
set UPSTREAM_URL=https://github.com/INSTRUCTOR/REPO-NAME.git
=======
set UPSTREAM_URL=https://github.com/john-dempsey/web-development-template.git
>>>>>>> upstream/main
REM ============================================================

REM Check if upstream remote exists, add it if not
git remote | findstr /x "upstream" >nul
if %ERRORLEVEL% NEQ 0 (
    echo Adding instructor's repository as upstream remote...
    git remote add upstream %UPSTREAM_URL%
)

echo Fetching updates from instructor...
git fetch upstream

echo.
echo Merging updates...
<<<<<<< HEAD
git merge upstream/main -m "Update examples from instructor"
=======
git merge upstream/main --allow-unrelated-histories -m "Update examples from instructor"
>>>>>>> upstream/main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Done! Your repository is now up to date.
) else (
    echo.
    echo There were merge conflicts. Ask your instructor for help.
)

pause
