@echo off

if '%1'=='c' (
	assoc .py=Python.File
	ftype Python.File="%CYGWIN_ROOT%\bin\python2.7.exe" "%%1" %%*
	reg add "HKEY_CLASSES_ROOT\Python.File\DefaultIcon" /ve /t REG_SZ /d "%CYGWIN_ROOT%\Cygwin-Terminal.ico,0" /f >nul
) else if '%1'=='w' (
	assoc .py=Python.File
	ftype Python.File="%WINOSROOT%\Python\python.exe" "%%1" %%*
	reg add "HKEY_CLASSES_ROOT\Python.File\DefaultIcon" /ve /t REG_SZ /d "%WINOSROOT%\Python\DLLs\py.ico" /f >nul
) else (
	echo use w/c to switch Win32-Python / Cygwin-Python
	assoc .py
	ftype Python.File
)
