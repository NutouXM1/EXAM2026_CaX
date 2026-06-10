@echo off
REM commit-by-function.bat
REM Run this from the repository root to stage and commit your page in functional chunks.
cd /d "%~dp0"
git status --short
echo.
echo NOTE: This script will use interactive patch staging for the new file.
echo You will be prompted by git add -p for each step.
echo.
git add -N HTML/index.html
echo STEP 1: Stage product page shell and Bootstrap layout
git add -p HTML/index.html
git commit -m "Add page shell and Bootstrap layout for product management UI"
echo.
echo STEP 2: Stage header and navbar branding
git add -p HTML/index.html
git commit -m "Add header and navbar branding for product list page"
echo.
echo STEP 3: Stage product entry form fields
git add -p HTML/index.html
git commit -m "Add product entry form with name, category, price, and stock status fields"
echo.
echo STEP 4: Stage form actions
git add -p HTML/index.html
git commit -m "Add form action buttons for submit and reset"
echo.
echo STEP 5: Stage product listing table structure
git add -p HTML/index.html
git commit -m "Add product listing table structure and initial sample row"
echo.
echo STEP 6: Stage CSS imports and custom stylesheet reference
git add -p HTML/index.html
git commit -m "Add Bootstrap CSS imports and custom stylesheet link"
echo.
echo STEP 7: Stage JS imports and app script reference
git add -p HTML/index.html
git commit -m "Add Bootstrap JS imports and app script reference"
echo.
echo STEP 8: Stage responsive layout containers and card styling
git add -p HTML/index.html
git commit -m "Add responsive main layout containers and card styling"
echo.
git status --short
echo.
echo Finished. Review the commits with "git log --oneline".
pause