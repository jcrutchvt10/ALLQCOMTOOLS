@echo off

start %CMDER_ROOT%\vendor\cygwin\bin\xwin.exe -fullscreen -keyhook -engine 4 -refresh 30 -silent-dup-error -noreset -notrayicon -listen tcp  -nolisten inet6 -clipboard -ac -fp

busybox sleep 2
