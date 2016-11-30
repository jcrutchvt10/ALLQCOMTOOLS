@echo off  

::--clean             Clean PyInstaller cache and remove temporary files
::                    before building.
::
::--win-private-assemblies
::                    Any Shared Assemblies bundled into the application
::                    will be changed into Private Assemblies. This means
::                    the exact versions of these assemblies will always be
::                    used, and any newer versions installed on user
::                    machines at the system level will be ignored.
::
::-F, --onefile       Create a one-file bundled executable.

%WINIXROOT%\Python\Scripts\pyinstaller.exe --clean --win-private-assemblies -F %*