@echo off
echo -
echo ----------------------------------------
echo building Training Air Defense Mission
echo ----------------------------------------

rem -- prepare the folders
rd /s /q .\build  
mkdir .\build  
mkdir .\build\tempsrc  

set VERSION=caucasus

rem -- default options values
IF [%DEBUG_FLAG%] == [] GOTO DefineDefaultDEBUG_FLAG
goto DontDefineDefaultDEBUG_FLAG
:DefineDefaultDEBUG_FLAG
set DEBUG_FLAG=true
:DontDefineDefaultDEBUG_FLAG
echo DEBUG_FLAG = %DEBUG_FLAG%

IF [%MISSION_FILE_SUFFIX%] == [] GOTO DefineDefaultMISSION_FILE_SUFFIX
goto DontDefineDefaultMISSION_FILE_SUFFIX
:DefineDefaultMISSION_FILE_SUFFIX
set MISSION_FILE_SUFFIX=%date:~-4,4%%date:~-7,2%%date:~-10,2%
:DontDefineDefaultMISSION_FILE_SUFFIX
set MISSION_FILE=.\build\TR_AD_%VERSION%_%MISSION_FILE_SUFFIX%
echo MISSION_FILE = %MISSION_FILE%.miz

IF ["%SEVENZIP%"] == [] GOTO DefineDefaultSEVENZIP
goto DontDefineDefaultSEVENZIP
:DefineDefaultSEVENZIP
set SEVENZIP=7za
:DontDefineDefaultSEVENZIP
echo SEVENZIP = %SEVENZIP%

rem -- copy all the source mission files
xcopy /y /e src\%VERSION% .\build\tempsrc\ >nul 2>&1

rem -- copy all the community scripts
copy .\src\scripts\community\Moose.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\mist_4_3_74.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\WeatherMark.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\CTLD.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\autogft-1_12.lua .\build\tempsrc\l10n\Default  >nul 2>&1

rem -- copy all the common scripts
copy .\node_modules\@veaf\veaf-open-training-mission\dcsUnits.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veaf.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veaf_library.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafAssets.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafCarrierOperations.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafCasMission.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafGrass.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafMarkers.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafMove.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafNamedPoints.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafRadio.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafSecurity.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafSpawn.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafTransportMission.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\node_modules\@veaf\veaf-open-training-mission\veafUnits.lua .\build\tempsrc\l10n\Default  >nul 2>&1

rem -- copy all the mission-specific scripts
copy .\src\scripts\mission-specific\%VERSION%\*.lua .\build\tempsrc\l10n\Default  >nul 2>&1


rem -- set the debug flag to off
powershell -Command "(gc .\build\tempsrc\l10n\Default\veaf.lua) -replace 'veaf.Development = %DEBUG_FLAG%', 'veaf.Development = false' | sc .\build\tempsrc\l10n\Default\veaf.lua" >nul 2>&1
powershell -Command "(gc .\build\tempsrc\l10n\Default\veaf.lua) -replace 'veaf.SecurityDisabled = %SECURITY_FLAG%', 'veaf.SecurityDisabled = false' | sc .\build\tempsrc\l10n\Default\veaf.lua" >nul 2>&1

rem -- compile the mission
"%SEVENZIP%" a -r -tzip %MISSION_FILE%.miz .\build\tempsrc\* -mem=AES256 >nul 2>&1

rem -- cleanup
rd /s /q .\build\tempsrc  

rem -- done !
echo Built %MISSION_FILE%.miz
