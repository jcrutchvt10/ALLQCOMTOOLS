@echo off  

:: Pick right version
if "%PROCESSOR_ARCHITECTURE%"=="x86" (
    set WIN_ARCH=32
) else (
    set WIN_ARCH=64
)

start "" "%WINIXROOT%\7plus-Taskbar-Numberer\%WIN_ARCH%\7+ Taskbar Numberer.exe" -hidetray -hidewnd -v3
