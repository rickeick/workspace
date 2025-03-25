@echo off

setlocal

if "%~1"=="" (
    echo Mensagem não passada!
) else (
    git commit -m "%~1"
    if "%~2"=="-u" (
        git push -u origin main
    ) else (
        git push origin main
    )
)

endlocal
