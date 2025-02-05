call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"
echo "Build erstellen"
msbuild E:/Projekte/Windows/PCMDevmanager/PCMDEVManager.dproj /t:Clean;Build;CompressWin32 /p:config=Release /p:platform=Win32
msbuild E:/Projekte/Windows/PCMDevmanager/PCMDEVManager.dproj /t:Clean;Build;CompressWin64 /p:config=Release /p:platform=Win64

echo "Kopiere Datei ins Setupverzeichnis 32-Bit"
copy /y /v E:\Projekte\Windows\PCMDevmanager\Win32\Release\PCMDEVManager.exe "e:\Inno\Setupfiles\Programme\PCMDEVManager"

echo "Kopiere Datei ins Setupverzeichnis 64-Bit"
copy /y /v E:\Projekte\Windows\PCMDevmanager\Win64\Release\PCMDEVManager.exe "e:\Inno\Setupfiles\Programme\PCMDEVManager_x64"
copy /y /v E:\Projekte\Windows\PCMDevmanager\Win64\Release\PCMDEVManager.DE "e:\Inno\Setupfiles\Programme\PCMDEVManager_x64"
copy /y /v E:\Projekte\Windows\PCMDevmanager\Win64\Release\PCMDEVManager.EN "e:\Inno\Setupfiles\Programme\PCMDEVManager_x64"

