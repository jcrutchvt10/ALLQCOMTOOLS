@echo off

:%~dp0\winpty.exe cmder.bat
start "" %~dp0\fatty.exe %~dp0\winpty.exe cmder.bat