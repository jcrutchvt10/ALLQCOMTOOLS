@echo off

setlocal

set PATH=%WINIXROOT%\Emacs\bin;%PATH%

busybox ps | busybox grep emacs > nul
if '%ERRORLEVEL%' NEQ '0' (
	 start "" %WINIXROOT%\Emacs\bin\emacs.exe
	 busybox rm %HOME%\.emacs.d\server\server > nul
	 busybox sleep 3
)

::windows version
if not '%1'=='--help' (
	%WINIXROOT%\Emacs\bin\emacsclient.exe -n %*
) else (
	%WINIXROOT%\Emacs\bin\emacsclient.exe --help
	echo.
	echo.
	echo chown.exe -R huangxiaolu .emacs.d\
)

endlocal
