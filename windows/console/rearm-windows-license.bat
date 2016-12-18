@echo off

::slmgr.vbs -rilc

::reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform" /v "SkipRearm" /t reg_dword /d "1" /f

slmgr.vbs /rearm
