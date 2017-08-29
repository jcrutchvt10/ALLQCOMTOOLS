@echo on

copy /y %HOME%\xcfg\windows\Cmder.init.bat %CMDER_ROOT%\
copy /y %HOME%\xcfg\windows\Cmder.aliases.rc %CMDER_ROOT%\
copy /y %HOME%\xcfg\windows\ConEmu.xml %CMDER_ROOT%\config\
copy /y %HOME%\xcfg\windows\Cmder.config.settings %CMDER_ROOT%\config\settings
copy /y %HOME%\xcfg\windows\clink.lua %CMDER_ROOT%\vendor\

copy /y %HOME%\xcfg\windows\Ditto.Settings %WINOSROOT%\Ditto\Ditto.Settings

copy /y %HOME%\xcfg\windows\Everything.ini %WINOSROOT%\Everything\Everything.ini

copy /y %HOME%\xcfg\windows\FreeCommander.fav.ini %WINOSROOT%\FreeCommander\SETTINGS\FreeCommander.fav.ini
copy /y %HOME%\xcfg\windows\FreeCommander.ini %WINOSROOT%\FreeCommander\SETTINGS\FreeCommander.ini
copy /y %HOME%\xcfg\windows\FreeCommander.shc %WINOSROOT%\FreeCommander\SETTINGS\FreeCommander.shc

::copy /y %HOME%\xcfg\windows\MacType.ini %WINOSROOT%\MacType\MacType.ini /y
::copy /y %HOME%\xcfg\windows\MacType.Winix.ini %WINOSROOT%\MacType\ini\Winix.ini

copy /y %HOME%\xcfg\windows\Listary.Preferences.json %WINOSROOT%\Listary\UserData\Preferences.json

copy /y %HOME%\xcfg\windows\MobaXterm.ini %WINOSROOT%\MobaXterm

copy /y "%HOME%\xcfg\windows\Notepad++.config.xml" "%WINOSROOT%\Notepad++\config.xml"
copy /y "%HOME%\xcfg\windows\Notepad++.stylers.xml" "%WINOSROOT%\Notepad++\stylers.xml"

copy /y %HOME%\xcfg\windows\RocketDock.Settings.ini %WINOSROOT%\RocketDock\Settings.ini
copy /y %HOME%\xcfg\windows\XLaunchPad.items.xml %WINOSROOT%\XLaunchPad\AppData\Shortcuts\items.xml
copy /y %HOME%\xcfg\windows\XLaunchPad.Settings.ini %WINOSROOT%\XLaunchPad\AppData\Settings.ini
