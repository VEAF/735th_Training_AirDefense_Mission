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
del *.miz
