@echo off

::cygwin version
::%WINIXROOT%\Cygwin\bin\bash.exe -i -c "/bin/emacs-w32.exe %*"
start "" emacs-w32.exe %*

::windows version
::start "" %WINIXROOT%\Emacs\bin\emacs.exe %*
