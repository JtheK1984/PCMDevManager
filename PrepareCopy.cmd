echo "Kopiere Datei ins Setupverzeichnis"
copy /y /v Win32\Release\PCMBenutzerverwaltung.exe "e:\Inno\Setupfiles\Programme\PCMBenutzerverwaltung"
copy /y /v Win64\Release\PCMBenutzerverwaltung.exe "e:\Inno\Setupfiles\Programme\PCMBenutzerverwaltung_x64"

copy /y /v Win64\Release\PCMBenutzerverwaltung.DE "e:\Inno\Setupfiles\Programme\PCMBenutzerverwaltung_x64"
copy /y /v Win64\Release\PCMBenutzerverwaltung.EN "e:\Inno\Setupfiles\Programme\PCMBenutzerverwaltung_x64"

copy /y /v PCMBenutzerverwaltung.pdf "e:\Inno\Setupfiles\Programme\PCMBenutzerverwaltung"
copy /y /v PCMBenutzerverwaltung.docx "e:\Inno\Setupfiles\Programme\PCMBenutzerverwaltung"
copy /y /v PCMBenutzerverwaltung.htm "e:\Inno\Setupfiles\Programme\PCMBenutzerverwaltung"
