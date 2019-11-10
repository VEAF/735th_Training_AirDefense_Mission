set SEVENZIP=C:\Program Files\7-Zip\7z.exe
rem - if set to true then the mission will not log anything lower than INFO
set DEBUG_FLAG=false
set MISSION_FILE_SUFFIX=%date:~-4,4%%date:~-7,2%%date:~-10,2%

@echo off
echo -
echo ------------------------------
echo extracting Caucasus
echo ------------------------------

rem extracting MIZ files
pushd src\caucasus
"%SEVENZIP%" x -y ../../*.miz
del /f /q l10n\Default\*.lua
popd
