@echo off
rem
rem This file is generated
rem

rem C:\Qt\4.8.7\bin\qtvars.bat

echo Setting up a MinGW/Qt only environment...

set PATH=%PATH%;C:\Qt\4.8.7\bin

set QTDIR=C:\Qt\4.8.7
set QMAKESPEC=win32-g++-4.6

if not "%1"=="compile_debug" goto END
cd %QTDIR%
echo This will configure and compile qt in debug.
echo The release libraries will not be recompiled.
pause
configure -plugin-sql-sqlite -plugin-sql-odbc -qt-libpng -qt-libjpeg
cd %QTDIR%\src
qmake
mingw32-make debug
:END