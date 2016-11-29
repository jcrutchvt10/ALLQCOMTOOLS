@echo off

if '%*'=='' call :help & exit /b
wmic process where caption="%1" get caption,commandline /value

exit /b

:help
echo Use to get process commandline values
echo.
echo %~nx0 "process name"