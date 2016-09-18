@echo off

::cygwin version
::%WINIXROOT%\Cygwin\bin\bash.exe -i -c "/bin/emacs-w32.exe %*"

::windows version
if not '%1'=='--help' (
	set PATH=%WINIXROOT%\Emacs\bin;%PATH%;
	start "" %WINIXROOT%\Emacs\bin\emacs.exe %*
) else (
	%WINIXROOT%\Emacs\bin\emacs.exe --help
	echo.
	echo.
	echo chown.exe -R huangxiaolu .emacs.d\
)
