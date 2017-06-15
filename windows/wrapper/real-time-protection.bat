:: batch get admin
::-------------------------------------
:: check for permissions
@echo off
"%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system" > nul 2>&1

:: If error flag set, we do not have admin.
if '%errorlevel%' neq '0' (
    ::echo requesting administrative privileges...
    goto UAC_PROMPT
) else (
    goto GOT_ADMIN
)

:UAC_PROMPT
    echo Set uac = CreateObject^("Shell.Application"^) > "%TMP%\get-admin.vbs"
    echo uac.ShellExecute "%~s0", "%1", "", "runas", 1 >> "%TMP%\get-admin.vbs"

    "%TMP%\get-admin.vbs"
    exit /B

:GOT_ADMIN
    if exist "%TMP%\get-admin.vbs" ( del "%TMP%\get-admin.vbs" )
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


if '%*'=='' call :help & exit /b
if '%1'=='on' (
  "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "Set-MpPreference -DisableRealtimeMonitoring 0"
) else if '%1'=='off' (
  "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "Set-MpPreference -DisableRealtimeMonitoring 1"
) else (
	call :help
)
exit /b

:help
echo Turn on/off Windows Defender real-time protection
echo.
echo on  : Set-MpPreference -DisableRealtimeMonitoring 0
echo off : Set-MpPreference -DisableRealtimeMonitoring 1