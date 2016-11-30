@echo off  

:: Pick right version
if "%PROCESSOR_ARCHITECTURE%"=="x86" (
    set arch=i386
) else (
    set arch=amd64
)

%HOME%\xbin\windows\mircosoft\devcon\%arch%\devcon.exe %*