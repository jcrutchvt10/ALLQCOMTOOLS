@echo off

if '%*'=='' call :help & exit /b
if '%1'=='1' (
	::all, adb, sockets, packets, rwx, usb, sync, sysdeps, transport, jdwp
    set ADB_TRACE=all
) else if '%1'=='0' (
	set ADB_TRACE=
)
exit /b

:help
echo ADB debug switch
echo.
echo 1  : on
echo 0  : off