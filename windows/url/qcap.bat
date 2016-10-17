@echo off  

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\MozillaPlugins\@java.com/JavaPlugin" /f >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\MozillaPlugins\@java.com/JavaPlugin" /f >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\MozillaPlugins\@java.com/JavaPlugin" /v "Path" /t REG_SZ /d "%WINIXROOT%\Java\jre\bin\plugin2\npjp2.dll" /f >nul

start D:\MyFirefox\MyFirefox.exe https://cap.qti.qualcomm.com/default.aspx
