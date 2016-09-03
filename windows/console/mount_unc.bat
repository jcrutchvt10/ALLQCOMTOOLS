@echo off

if "%1"=="" (
	echo Useage:
	echo.
	echo     mount_unc.bat \\UNC_PATH
	exit /b 22
)

set UNC_PATH=%1
pushd %UNC_PATH%
