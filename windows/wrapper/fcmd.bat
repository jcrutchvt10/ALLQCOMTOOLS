@echo off  

if '%1'=='' start %WINOSROOT%\FreeCommander\FreeCommander.exe & exit /b
if '%1'=='.' (
    start %WINOSROOT%\FreeCommander\FreeCommander.exe /T %CD%
) else (
	start %WINOSROOT%\FreeCommander\FreeCommander.exe %*
)
