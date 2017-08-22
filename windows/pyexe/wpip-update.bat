@echo off 

%~dp0\wpip.bat freeze --local | busybox  grep -v '^\-e' | busybox cut -d = -f 1 | gow-xargs -n1 %~dp0\wpip.bat install -U
