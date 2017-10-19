@echo off

for /f "delims=" %%a in ('%SYSTEMROOT%\system32\find /i ":" %1 ^| %SYSTEMROOT%\system32\findstr /i "^[a-z]:"') do (echo %%a)