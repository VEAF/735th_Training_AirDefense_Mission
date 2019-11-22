@echo off
set MISSION_NAME=TR_AD
echo -
echo ----------------------------------------
echo extracting Training Air Defense Mission
echo ----------------------------------------

rem -- default options values
IF [%SEVENZIP%] == [] GOTO DefineDefaultSEVENZIP
goto DontDefineDefaultSEVENZIP
:DefineDefaultSEVENZIP
set SEVENZIP=7za
:DontDefineDefaultSEVENZIP
echo SEVENZIP = %SEVENZIP%
rem extracting MIZ files
pushd src\mission
"%SEVENZIP%" x -y ../../*.miz
del /f /q l10n\Default\*.lua
popd
del *.miz
