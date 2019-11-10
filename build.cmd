set SEVENZIP=C:\Program Files\7-Zip\7z.exe
rem - if set to true then the mission will not log anything lower than INFO
set DEBUG_FLAG=false
set MISSION_FILE_SUFFIX=%date:~-4,4%%date:~-7,2%%date:~-10,2%


rem @echo off
echo -
echo ----------------------------------------
echo building Training Air Defense Mission
echo ----------------------------------------

rem -- prepare the folders
rd /s /q .\build
mkdir .\build
mkdir .\build\tempsrc


@echo off
echo -
echo ------------------------------
echo building caucasus
echo ------------------------------

set VERSION=caucasus

set MISSION_FILE=.\build\TR_AD_%VERSION%_%MISSION_FILE_SUFFIX%
echo MISSION_FILE = %MISSION_FILE%.miz

rem -- copy all the source mission files
xcopy /y /e src\%VERSION% .\build\tempsrc\ >nul 2>&1

rem -- copy all the community scripts
copy .\src\scripts\community\Moose.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\mist_4_3_74.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\WeatherMark.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\CTLD.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\community\autogft-1_12.lua .\build\tempsrc\l10n\Default  >nul 2>&1

rem -- copy all the common scripts
copy .\src\scripts\veaf\dcsUnits.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veaf.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veaf_library.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafAssets.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafCarrierOperations.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafCasMission.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafGrass.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafMarkers.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafMove.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafNamedPoints.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafRadio.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafSpawn.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafTransportMission.lua .\build\tempsrc\l10n\Default  >nul 2>&1
copy .\src\scripts\veaf\veafUnits.lua .\build\tempsrc\l10n\Default  >nul 2>&1

rem -- copy all the mission-specific scripts
copy .\src\scripts\mission-specific\%VERSION%\*.lua .\build\tempsrc\l10n\Default  >nul 2>&1


rem -- set the debug flag to off
powershell -Command "(gc .\build\tempsrc\l10n\Default\veaf.lua) -replace 'veaf.Development = %DEBUG_FLAG%', 'veaf.Development = false' | sc .\build\tempsrc\l10n\Default\veaf.lua" >nul 2>&1

rem -- compile the mission
"%SEVENZIP%" a -r -tzip %MISSION_FILE%.miz .\build\tempsrc\* -mem=AES256 >nul 2>&1

rem -- delete temporary folder
rd /s /q .\build\tempsrc

rem -- done !
echo Built %MISSION_FILE%.miz
