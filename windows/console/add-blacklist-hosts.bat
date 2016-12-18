@echo off

echo.    >> %SYSTEMROOT%\system32\drivers\etc\hosts

echo   0.0.0.0     dldir1.qq.com   >> %SYSTEMROOT%\system32\drivers\etc\hosts
echo   0.0.0.0     dldir2.qq.com   >> %SYSTEMROOT%\system32\drivers\etc\hosts
echo   0.0.0.0     dlied6.qq.com   >> %SYSTEMROOT%\system32\drivers\etc\hosts

ipconfig /flushdns
ipconfig /displaydns