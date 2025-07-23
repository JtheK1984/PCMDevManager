echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v Win32\Release\PCMDevManager.exe "e:\Inno\Setupfiles\Programme\PCMDevManager"
copy /y /v Win64\Release\PCMDevManager.exe "e:\Inno\Setupfiles\Programme\PCMDevManager_x64"

copy /y /v Win32\Release\PCMDevManager.DE "e:\Inno\Setupfiles\Programme\PCMDevManager"
copy /y /v Win32\Release\PCMDevManager.EN "e:\Inno\Setupfiles\Programme\PCMDevManager"
copy /y /v Win64\Release\PCMDevManager.DE "e:\Inno\Setupfiles\Programme\PCMDevManager_x64"
copy /y /v Win64\Release\PCMDevManager.EN "e:\Inno\Setupfiles\Programme\PCMDevManager_x64"