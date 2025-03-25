@echo off

setlocal

git init
echo. > README.md
echo. > LICENSE

if not "%~1"=="" (
    git branch -M main
    git remote add origin %~1
)

endlocal
