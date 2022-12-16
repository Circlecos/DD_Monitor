@echo off
RMDIR /S /Q dist
RMDIR /S /Q build
pyinstaller --clean --noconfirm DDMonitor.spec
mkdir dist\DDMonitor\logs
copy utils\config_default.json dist\DDMonitor\utils\config.json

rem remove useless dll
rem del /F /Q dist\DDMonitor\Qt5DBus.dll
rem del /F /Q dist\DDMonitor\Qt5Network.dll
rem del /F /Q dist\DDMonitor\Qt5Qml.dll
rem del /F /Q dist\DDMonitor\Qt5QmlModels.dll
rem del /F /Q dist\DDMonitor\Qt5Quick.dll
rem del /F /Q dist\DDMonitor\Qt5Svg.dll
rem del /F /Q dist\DDMonitor\Qt5WebSockets.dll
rem
rem del /F /Q dist\DDMonitor\libEGL.dll
rem del /F /Q dist\DDMonitor\libGLESv2.dll
rem
rem del /F /Q dist\DDMonitor\opengl32sw.dll
rem del /F /Q dist\DDMonitor\ucrtbase.dll
rem
rem del /F /Q dist\DDMonitor\pyexpat.pyd
rem del /F /Q dist\DDMonitor\_decimal.pyd
rem del /F /Q dist\DDMonitor\_multiprocessing.pyd
rem
rem rem Remove dir
rem RMDIR /S /Q dist\DDMonitor\PyQt5\Qt\translations
rem RMDIR /S /Q dist\DDMonitor\Include
