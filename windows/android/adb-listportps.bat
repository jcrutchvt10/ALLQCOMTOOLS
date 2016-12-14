@echo off

setlocal

for /f "tokens=5" %%i in ('netstat -ano ^| findstr "5037"  ^| findstr "LISTENING"') do (set PID=%%i)

tasklist | findstr %PID%

endlocal
