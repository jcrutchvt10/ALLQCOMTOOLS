@echo off  

:: Pick right version
if "%PROCESSOR_ARCHITECTURE%"=="x86" (
    set arch=x86
) else (
    set arch=amd64
)
%HOME%\xbin\windows\mircosoft\dpinst\%arch%\dpinst.exe %*