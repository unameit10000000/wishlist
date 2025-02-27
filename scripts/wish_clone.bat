@echo off
setlocal enabledelayedexpansion

:: Set Original Gist details
set OLD_GIST_URL=https://gist.github.com/unameit10000000/a660a242dcbef241f7b04e507d7c8431
set OLD_GIST_ID=a660a242dcbef241f7b04e507d7c8431

:: Set GitHub credentials - REPLACE THESE with your actual values
set GITHUB_USERNAME=<your-username> 
set GITHUB_TOKEN=<your-access-token>

:: Create a timestamp for directory and filename
set "hr=%time:~0,2%"
if "%hr:~0,1%"==" " set "hr=0%hr:~1,1%"
set TIMESTAMP=%date:~-4,4%%date:~-7,2%%date:~-10,2%_%hr%%time:~3,2%%time:~6,2%
set NEW_FILENAME=_wish-%TIMESTAMP%.md
set CLONE_DIR=gist-%OLD_GIST_ID%-%TIMESTAMP%

:: Clone the original Gist
echo Cloning the original Gist...
git clone %OLD_GIST_URL% %CLONE_DIR%
cd %CLONE_DIR% || exit /b

:: Find and rename only the _wish.md file
if exist _wish.md (
    echo Found _wish.md - renaming to %NEW_FILENAME%
    ren "_wish.md" %NEW_FILENAME%
) else (
    echo Warning: _wish.md file not found.
)

:: Check if renaming was successful
if not exist %NEW_FILENAME% (
    echo Error: Failed to rename file.
    exit /b 1
)

:: Remove Git history
echo Removing Git history...
rd /s /q .git
git init
git branch -M main

:: Create a new Gist via API
echo Creating a new Gist via API...
echo Note: If you see authentication errors, make sure to update GITHUB_USERNAME and GITHUB_TOKEN with your actual credentials

:: Create a temporary JSON file for the request
echo {"description": "Cloned from gist %OLD_GIST_ID% using 'wish_clone'.", "public": false, "files": {"%NEW_FILENAME%": {"content": "Duplicated Gist"}}} > gist_request.json

:: Use curl to create the Gist
curl -X POST -H "Authorization: token %GITHUB_TOKEN%" -H "Content-Type: application/json" --data @gist_request.json https://api.github.com/gists > response.json

:: Extract the Gist ID from the response
for /f "tokens=2 delims=:," %%a in ('findstr "\"id\":" response.json') do (
    set NEW_GIST_ID=%%a
    set NEW_GIST_ID=!NEW_GIST_ID:"=!
    set NEW_GIST_ID=!NEW_GIST_ID: =!
    goto :found_id
)
:found_id

echo New Gist ID: %NEW_GIST_ID%

:: Clean up temporary files
del gist_request.json
del response.json

:: Commit and push
git add .
git commit -m "Cloned from gist %OLD_GIST_ID% using 'wish_clone'."
git remote add origin https://gist.github.com/%NEW_GIST_ID%.git
git push -u origin main -f

echo Gist duplicated successfully!
echo New URL: https://gist.github.com/%NEW_GIST_ID%
pause