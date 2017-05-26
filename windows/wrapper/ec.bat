@echo off

::cygwin version
::%WINIXROOT%\Cygwin\bin\bash.exe -i -c "/bin/emacs-w32.exe %*"
emacsclient-w32.exe -n %*

::windows version
::%WINIXROOT%\Emacs\bin\emacsclient.exe -n %*