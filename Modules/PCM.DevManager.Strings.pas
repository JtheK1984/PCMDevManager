unit PCM.DevManager.Strings;

interface

uses
  {$Region uses}
  Classes,
  SysUtils,
  Windows;
  {$EndRegion uses}
// allgemein
resourcestring
  rs_general_BTN_Ok = '&Ok';
  rs_general_BTN_Cancel = '&Abbrechen';
  rs_general_BTN_Yes = '&Ja';
  rs_general_BTN_No = '&Nein';
  rs_General_Formload = 'Formular wird geladen';
  rs_PCM_Beschreibung = 'Beschreibung';
  rs_PCM_Prioritaet = 'Priorität';
  rs_PCM_Sortierung = 'Sortierung';
  rs_PCM_Modulliste_verstecken = 'Modulliste verstecken';
  rs_PCM_Modulliste_anzeigen = 'Modulliste anzeigen';
  rs_PCM_Benutzerverwaltung ='Benutzerverwaltung';
  rs_PCM_Konfiguration = 'Konfiguration';
  rs_PCM_Design = 'Design';
  rs_PCM_Systeminformation = 'Systeminformation';
  rs_PCM_Programminfo = 'Programminfo';
  rs_PCM_Handbuch = 'Handbuch';
  rs_PCM_Start = 'Programm gestartet';
  rs_PCM_Beenden = 'Programm beendet';
  rs_PCMBackup_Ordnerwaehlen = 'Zielverzeichnis für Backup auswählen';
  rs_PCMDevManager_Modul_DevPro = 'Entwicklung Projekte' ;
  rs_PCMDevManager_Modul_DevWeb = 'Entwicklung Web' ;
  rs_PCMDevManager_Modul_API = 'Rest-API Dokumentation' ;
  rs_PCMDevManager_Modul_Dokumentation = 'Dokumentation' ;
  rs_PCMDevManager_Modul_UpdateXML = 'Update XML' ;
  rs_PCMDevManager_MSGCHooseProgramm = 'Bitte Programm auswählen!';
  rs_PCMDevManager_MSGCHooseSort = 'Bitte Sortierung auswählen!';
  rs_PCMDevManager_MSGCHooseHeaderType = 'Bitte Überschrifttyp auswählen!';
  rs_PCMDevManager_MSGSetDesc = 'Bitte Bezeichnung eingeben!';
  rs_PCMDevManager_MSGChooseApp = 'Bitte Applikation wählen';
  rs_PCMDevManager_MSGDeleteEntry = 'Möchten Die den eintrag wirklich löschen?';
  rs_PCMDevManager_MSGCheckSQLCONSuc = 'Verbindungstest erfolgreich.';
  rs_PCMDevManager_MSGCheckSQLCONErr = 'Verbindungstest nicht erfolgreich.';
  rs_PCMDevManager_MSGNoMainScript = 'Kein Mainscript vorhanden';
  rs_PCMDevManager_BTNVerNew = 'Version anlegen';
  rs_PCMDevManager_BTNVerSav = 'Version &speichern';
  rs_PCMDevManager_BTNDevToolsEnable = 'Devtools einblenden';
  rs_PCMDevManager_BTNDevToolsDisable = 'Devtools ausblenden';
  rs_PCMDevManager_BTNShowDoneTicketsEnable = 'erledigte Tickets einblenden';
  rs_PCMDevManager_BTNShowDoneTicketsDisable = 'erledigte Tickets ausblenden';
  rs_PCMDevManager_CAPProjekte =  'Projekte / ';
  rs_PCMDevManager_CAPXML = 'XML wird eingelesen';
  rs_PCMDevManager_CAPDatabase = 'Datenbank: ';
  rs_PCMDevManager_CAPCompress = ' wird komprimiert';
  rs_PCMDevManager_CAPCopy = ' wird kopiert';
  rs_PCMDevManager_CAPSave = 'Speichere Konfigurationen';
  rs_PCMDevManager_CAPCodeSave = 'QuellCode-Sicherung:';
  rs_PCMDevManager_CAPCompressCopy = 'Komprimieren und ins Setupverzeichnis kopieren:';
  rs_PCMDevManager_COL_Architektur = 'Architektur';
  rs_PCMDevManager_COL_Licence = 'Lizenz';
  rs_PCMDevManager_COL_Stichwort = 'Stichwort';
  rs_PCMDevManager_COL_FixVersion = 'FixVersion';
  rs_PCMDevManager_COL_Zugewiesen = 'Zugewiesen';
  rs_PCMDevManager_COL_Breite = 'Breite';
  rs_PCMDevManager_COL_Leerzeile = 'Leerzeile';
  rs_PCMDevManager_WAIT_Scripts = 'Scripte werden erstellt';
  rs_PCMDevManager_WAIT_DokuHTM = 'Dokumentation HTM wird erstellt';
  rs_PCMDevManager_WAIT_DokuPDF = 'Dokumentation DOC wird erstellt';
  rs_PCMDevManager_WAIT_FileEnd = 'Dateiendungen werden geladen...';
  rs_PCMDevManager_WAIT_Doku = 'Dokumentation DOC: ';
  rs_PCMDevManager_WAIT_SavePDF = 'Dokumentation PDF speichern';
  rs_PCMDevManager_WAIT_SaveDOC = 'Dokumentation DOC speichern';
  rs_PCMDevManager_WAIT_Create = ' wird erstellt';
  rs_PCMDevManager_WAIT_CreateOther ='sonstige Script werden erstellt';
  rs_PCMDevManager_CMBBX_Alle = 'Alle';
  rs_PCMManager_Bild = 'Bild';
  rs_PCMManager_Betreff = 'Betreff';
  rs_PCMService_KeinQuellVerzeichnis1 = 'Es wurde kein Quell-Verzeichnis gewählt.';
  rs_PCMService_KeinQuellVerzeichnis2 = 'Damit Dateiendungen gewählt werden können, muss ein Quell-Verzeichnis angegeben werden';
	rs_PCMService_ZielVerzeichnisINNO = 'Bitte Verzeichnis für INNO-Setup wählen';
	rs_PCMService_QuellVerzeichnis = 'Bitte Quell-Verzeichnis wählen';
  rs_PCMService_ZielVerzeichnis = 'Bitte Ziel-Verzeichnis wählen';
  rs_DevManager_MSG_Projektexistiert = 'Projekt existiert schon';
type
  {$Region type}
  TResourceStringID = Pointer;

  TResOriginalStrings = class(TStringList)
  public
    constructor Create;
  end;
  {$EndRegion type}
var
  {$Region var}
  FResOriginalStrings: TResOriginalStrings = nil;
  FResStrings: TStringList = nil;
  FUseResCache: Boolean = true;
  {$EndRegion var}
Const
  {$Region const}
  SetNone = 0;
  SetRead = 1;
  SetReadWrite = 2;
  SetComplete = 3;
  {$EndRegion const}
// Deklarationen
{$Region Deklarationen}
procedure initNewLanguage(locale: LCID);
procedure CreateResStringLists;
procedure DestroyResStringLists;
procedure ClearResourceStrings;
function GetResourceString(AResString: TResourceStringID): string;
{$EndRegion Deklarationen}
implementation
// Deklarationen
{$Region Prozeduren}
constructor TResOriginalStrings.Create;
begin
  inherited Create;
  CaseSensitive := True;
end;
procedure ClearResourceStrings;
begin
  if FResStrings <> nil then
    FResStrings.Clear;
  if FResOriginalStrings <> nil then
    FResOriginalStrings.Clear;
end;
procedure CreateResStringLists;
begin
  FResOriginalStrings := TResOriginalStrings.Create;
  FResStrings := TStringList.Create;
end;
procedure DestroyResStringLists;
begin
  FreeAndNil(FResOriginalStrings);
  FreeAndNil(FResStrings);
end;
function GetResOriginalStringIndex(AResString: TResourceStringID): Integer;
begin
  Result := FResOriginalStrings.IndexOfObject(TObject(AResString));
end;
procedure SetResourceString(AResString: TResourceStringID; const Value: string);
var
  AIndex: Integer;
begin
  AIndex := GetResOriginalStringIndex(AResString);
  if AIndex <> -1 then
    FResStrings[AIndex] := Value
  else
  begin
    FResOriginalStrings.AddObject(LoadResString(AResString), TObject(AResString));
    FResStrings.Add(Value);
  end;
end;
function GetResourceString(AResString: TResourceStringID): string;
var
  AIndex: Integer;
begin
  if FUseResCache then
  begin
    AIndex := GetResOriginalStringIndex(AResString);
    if AIndex <> -1 then
    begin
      Result := FResStrings[AIndex]
    end
    else
    begin
      Result := LoadResString(AResString);
      SetResourceString(AResString, Result);
    end;
  end
  else
    Result := LoadResString(AResString);
end;
procedure initNewLanguage(locale: LCID);
begin
  ClearResourceStrings;
end;
{$EndRegion Prozeduren}
initialization
  CreateResStringLists;
finalization
  DestroyResStringLists;
end.
