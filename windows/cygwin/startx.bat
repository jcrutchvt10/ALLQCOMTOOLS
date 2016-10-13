@echo off

::Shell script
::export DISPLAY=:0.0
::
::xwin -multiwindow -silent-dup-error -noreset -notrayicon -nolisten inet6 -clipboard -ac -fp &
::sleep 2
::xrdb ~/.Xresources

start %WINIXROOT%\Cygwin\bin\xwin.exe -multiwindow -silent-dup-error -noreset -notrayicon -nolisten inet6 -clipboard -ac -fp

busybox sleep 2
::xrdb ~/.Xresources
