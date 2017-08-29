@echo off

::cygwin version
::%WINOSROOT%\Cygwin\bin\bash.exe -i -c "/bin/emacs-w32.exe %*"
emacsclient-w32.exe -n %*

::windows version
::%WINOSROOT%\Emacs\bin\emacsclient.exe -n %*