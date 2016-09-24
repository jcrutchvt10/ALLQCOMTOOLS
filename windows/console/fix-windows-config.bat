@echo off


copy /y %HOME%\xcfg\windows\Cmder.init.bat %CMDER_ROOT%\
copy /y %HOME%\xcfg\windows\Cmder.aliases.rc %CMDER_ROOT%\
copy /y %HOME%\xcfg\windows\ConEmu.xml %CMDER_ROOT%\config\
copy /y %HOME%\xcfg\windows\cmder.lua %CMDER_ROOT%\config\

copy /y %HOME%\xcfg\windows\Ditto.Settings %WINIXROOT%\Ditto\Ditto.Settings

copy /y %HOME%\xcfg\windows\Everything.ini %WINIXROOT%\Everything\Everything.ini

copy /y %HOME%\xcfg\windows\FreeCommander.fav.ini %WINIXROOT%\FreeCommander\SETTINGS\FreeCommander.fav.ini
copy /y %HOME%\xcfg\windows\FreeCommander.ini %WINIXROOT%\FreeCommander\SETTINGS\FreeCommander.ini
copy /y %HOME%\xcfg\windows\FreeCommander.shc %WINIXROOT%\FreeCommander\SETTINGS\FreeCommander.shc

copy /y %HOME%\xcfg\windows\MacType.ini %WINIXROOT%\MacType\MacType.ini /y
copy /y %HOME%\xcfg\windows\MacType.Winix.ini %WINIXROOT%\MacType\ini\Winix.ini

copy /y %HOME%\xcfg\windows\Listary.Preferences.json %WINIXROOT%\Listary\UserData\Preferences.json

copy /y %HOME%\xcfg\windows\MobaXterm.ini %WINIXROOT%\MobaXterm

copy /y "%HOME%\xcfg\windows\Notepad++.config.xml" "%WINIXROOT%\Notepad++\config.xml"
copy /y "%HOME%\xcfg\windows\Notepad++.stylers.xml" "%WINIXROOT%\Notepad++\stylers.xml"

copy /y %HOME%\xcfg\windows\RocketDock.Settings.ini %WINIXROOT%\RocketDock\Settings.ini
copy /y %HOME%\xcfg\windows\XLaunchPad.items.xml %WINIXROOT%\XLaunchPad\AppData\Shortcuts\items.xml
copy /y %HOME%\xcfg\windows\XLaunchPad.Settings.ini %WINIXROOT%\XLaunchPad\AppData\Settings.ini
