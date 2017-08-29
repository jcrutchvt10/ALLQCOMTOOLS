@echo off

start %WINOSROOT%\Cygwin\bin\xwin.exe -multiwindow -silent-dup-error -noreset -notrayicon -nolisten inet6 -clipboard -ac -fp

busybox sleep 2