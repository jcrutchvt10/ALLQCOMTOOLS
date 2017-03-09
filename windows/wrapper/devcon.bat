@echo off  

:: Pick right version
if "%PROCESSOR_ARCHITECTURE%"=="x86" (
    set WIN_ARCH=i386
) else (
    set WIN_ARCH=amd64
)

%HOME%\xbin\windows\mircosoft\devcon\%WIN_ARCH%\devcon.exe %*