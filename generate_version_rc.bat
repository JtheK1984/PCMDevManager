@echo off
setlocal
rem Generate a version.rc file
set VERSION_MAJOR=1
set VERSION_MINOR=0
set VERSION_BUILD=%RANDOM%
set VERSION_FILE=version.rc
 
(echo VS_VERSION_INFO VERSIONINFO) > %VERSION_FILE%
(echo FILEVERSION %VERSION_MAJOR%,%VERSION_MINOR%,0,%VERSION_BUILD%) >> %VERSION_FILE%
(echo PRODUCTVERSION %VERSION_MAJOR%,%VERSION_MINOR%,0,%VERSION_BUILD%) >> %VERSION_FILE%
(echo {) >> %VERSION_FILE%
(echo BLOCK "StringFileInfo") >> %VERSION_FILE%
(echo {) >> %VERSION_FILE%
(echo BLOCK "040904E4") >> %VERSION_FILE%
(echo {) >> %VERSION_FILE%
(echo VALUE "FileVersion", "%VERSION_MAJOR%, %VERSION_MINOR%, 0, %VERSION_BUILD%") >> %VERSION_FILE%
(echo VALUE "ProductVersion", "%VERSION_MAJOR%, %VERSION_MINOR%, 0, %VERSION_BUILD%") >> %VERSION_FILE%
(echo }) >> %VERSION_FILE%
(echo }) >> %VERSION_FILE%
(echo BLOCK "VarFileInfo") >> %VERSION_FILE%
(echo {) >> %VERSION_FILE%
(echo VALUE "Translation", 0x0409, 1252) >> %VERSION_FILE%
(echo }) >> %VERSION_FILE%
(echo }) >> %VERSION_FILE%
 
endlocal