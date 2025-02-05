unit PCM.Entwicklung;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.JSON, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxmdaset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMemo, cxDBEdit, dxBarBuiltInMenu, dxBar,
  cxGroupBox, cxPC, System.ImageList, Vcl.ImgList, cxImageList, cxLabel, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer,REST.Client, REST.Authenticator.Basic,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Types,AnsiStrings,shellapi,
  cxSplitter, cxRichEdit, cxDBRichEdit,system.Generics.Collections, dxStatusBar,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLocalization, cxImage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Winapi.WebView2, Winapi.ActiveX, Vcl.Edge,System.UITypes, cxCheckBox;

type
  Tfrm_Dev = class(TForm)
    pnl_main: TcxGroupBox;
    imglst_16x16: TcxImageList;
    qry_helpprogs: TFDQuery;
    ds_helpprogs: TDataSource;
    ds_Projects: TDataSource;
    qry_Projects: TFDQuery;
    qry_Scripts: TFDQuery;
    ds_Scripts: TDataSource;
    dxBarManager1: TdxBarManager;
    tb_Projects: TdxBar;
    btn_MainScriptEdit: TdxBarLargeButton;
    btn_SubScriptEdit: TdxBarLargeButton;
    cxGroupBox1: TcxGroupBox;
    grd_Sender: TcxGrid;
    grdDBTblView_Sender: TcxGridDBTableView;
    grdDBTblView_SenderSender: TcxGridDBColumn;
    grdDBTblView_SenderAdresse: TcxGridDBColumn;
    grdDBTblView_SenderLogo: TcxGridDBColumn;
    grdlvl_Sender: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView1Script: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarDockControl1: TdxBarDockControl;
    cxGroupBox3: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView1DBColumn64Bit: TcxGridDBColumn;
    cxGridDBTableView1DBColumn32Bit: TcxGridDBColumn;
    cxGridDBTableView1Mobile: TcxGridDBColumn;
    cxGridDBTableView1Lizenz: TcxGridDBColumn;
    cxGridDBTableView1Localize: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_MainScriptEditClick(Sender: TObject);
    procedure grdDBTblView_SenderCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_SubScriptEditClick(Sender: TObject);
  private
    { Private-Deklarationen }
    function GetNotepad : string;
  public
    { Public-Deklarationen }
  end;

var
  frm_Dev: Tfrm_Dev;

implementation

uses
  PCM.Data,
  PCM.Helper,
  PCM.Functions.Synch.Wait;

{$R *.dfm}

function Tfrm_Dev.GetNotepad: string;
begin
  Result:= '';
  dm_PCM.qry_Work.SQL.Text:= 'Select Path From devmanager_helperprograms Where Name = ''Notepad++''';
  dm_PCM.qry_work.Open;
  Result:= dm_PCM.qry_work.FieldByName('Path').AsString;
  dm_PCM.qry_work.Close;
end;
procedure Tfrm_Dev.FormShow(Sender: TObject);
  procedure opendata;
  begin
    qry_helpprogs.Open;
    qry_Projects.Open;
    qry_Scripts.Open;
  end;
begin
  opendata;
end;
procedure Tfrm_Dev.grdDBTblView_SenderCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ShellExecute(Application.Handle,'open',PChar(qry_helpprogs.FieldByName('Path').asString),nil, nil, SW_NORMAL);
end;
procedure Tfrm_Dev.cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  iColIndex: integer;
begin
  iColIndex := Sender.Controller.FocusedItemIndex;
  case iColIndex of
  0,1:
    begin
      ShellExecute(Application.Handle,'open',PChar(qry_Projects.FieldByName('Path').asString),nil, nil, SW_NORMAL);
    end;
  2:
    begin
      if qry_Projects.FieldByName('Script').asString <> '' then
      begin
        ShellExecute(Application.Handle,'open',PChar(qry_Projects.FieldByName('Script').asString),nil, nil, SW_NORMAL);
      end
      else begin
        MessageDlg('Kein Mainscript vorhanden', mtWarning, [mbOk], 0);
      end;
    end;
  end;
end;
procedure Tfrm_Dev.cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ShellExecute(Application.Handle,'open',PChar(qry_Scripts.FieldByName('Path').asString),nil, nil, SW_NORMAL);
end;
procedure Tfrm_Dev.btn_MainScriptEditClick(Sender: TObject);
  procedure CreateOverMsBuild(APath,AScript,AName: String);
  var
    slIni: TStringlist;
    sPath: String;
  begin
    if not FileExists(AScript) then
    begin
      sPath:= StringReplace(APath,'\' + AName + '\' + AName + '.dproj', '',[rfIgnorecase,rfReplaceall]);
      slIni:= TSTringlist.Create;
      slIni.Add('echo "Starte Build ' + AName +'"');
      slIni.Add('cd ' + sPath);
      slIni.Add('Call ' + spath + '\' + AName + '\MSBuild.bat > ' + spath + '\Setuplogs\MSBUILD_' + AName + '.log');
      slIni.SaveToFile(AScript);
      slini.Free;
    end;
  end;
  procedure CreateMSBuild(AName,APath,AScript: String;A64,A32,AMobile,Alizenz,Alocalize: Boolean);
  var
    slIni: TStringlist;
    sNewPath: String;
    sNewPathApp: string;
    sNewPathexe: string;
    sSaveScript: String;
    sNewPathDoc: String;
    sNewName32,sNewName64: String;
  begin
    if (not A32) and (not A64)  then
    begin
      exit;
    end;
    sSaveScript:= StringReplace(AScript,'MSBuild ' + AName + '.bat', AName + '\' + 'MSBuild.bat',[rfIgnorecase,rfReplaceall]);
    if not FileExists(sSaveScript) then
    begin
      sNewName32:= AName;
      sNewName64:= AName;
      if AName = 'PCMBackup' then
      begin
        sNewName32:= 'PCMService\PCMBackup';
        sNewName64:= 'PCMService_x64\PCMBackup';
      end;
      if AName = 'PCMBackupService' then
      begin
        sNewName32:= 'PCMService\PCMBackup';
        sNewName64:= 'PCMService_x64\PCMBackup';
      end;

      if AName = 'PCMServiceManager' then
      begin
        sNewName32:= 'PCMService';
        sNewName64:= 'PCMService_x64';
      end;
      slIni:= TSTringlist.Create;
      // Mobilebuild
      {$Region MobileBuild}
      if (AMobile) then
      begin
        slIni.Add('call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"');
        slIni.Add('echo "Build erstellen"');
        sNewPath:=  ReplaceStr(APath,'\','/');
        // Build
        {$Region Build}
        if A32 then
        begin
          slIni.Add('msbuild ' + sNewPath + ' /t:Clean;Build /p:config=Release /p:platform=Win32');
          slIni.Add('msbuild ' + sNewPath + ' /p:config=Debug /p:platform=Android /t:Clean;Make;Deploy');
        end;
        if A64 then
        begin
          slIni.Add('msbuild ' + sNewPath + ' /t:Clean;Build /p:config=Release /p:platform=Win64');
          slIni.Add('msbuild ' + sNewPath + ' /p:config=Debug /p:platform=Android64 /t:Clean;Make;Deploy');
        end;
        {$EndRegion Build}
        // Copy
        {$Region Copy}
        if A32 then
        begin
          slIni.Add('');
          slIni.Add('echo "Kopiere Datei ins Setupverzeichnis 32-Bit"');
          sNewPathApp:= ReplaceStr(APath,Aname + '.dproj','Android\Debug\' + AName + '\bin\' + AName + '.apk');
          sNewPathexe:= ReplaceStr(APath,Aname + '.dproj','Win32\Release\' + AName + '.exe');
          slIni.Add('copy /y /v ' + sNewPathApp + ' "e:\Inno\Setupfiles\Programme\' + AName +'"');
          slIni.Add('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'"');
        end;
        if A64 then
        begin
          slIni.Add('');
          slIni.Add('echo "Kopiere Datei ins Setupverzeichnis 64-Bit"');
          sNewPathApp:= ReplaceStr(APath,Aname + '.dproj','Android64\Debug\' + Aname + '\bin\' + AName + '.apk');
          sNewPathexe:= ReplaceStr(APath,Aname + '.dproj','Win64\Release\' + AName + '.exe');
          slIni.Add('copy /y /v ' + sNewPathApp + ' "e:\Inno\Setupfiles\Programme\' + AName +'_x64"');
          slIni.Add('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'_x64"');
        end;
        {$EndRegion Copy}
      end
      {$EndRegion MobileBuild}
      // Desktopbuild
      {$Region DesktopBuild}
      else begin
        slIni.Add('call "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin\rsvars.bat"');
        slIni.Add('echo "Build erstellen"');
        sNewPath:=  ReplaceStr(APath,'\','/');
        // Build
        {$Region Build}
        if A32 then
        begin
          if not A64  then
          begin
            if not Alocalize then
            begin
              slIni.Add('msbuild ' + sNewPath + ' /t:Clean;Build;CompressWin32 /p:config=Release /p:platform=Win32');
            end
            else begin
              slIni.Add('msbuild ' + sNewPath + ' /t:Clean;Build;Localize;CompressWin32 /p:config=Release /p:platform=Win32');
            end;
          end
          else begin
            slIni.Add('msbuild ' + sNewPath + ' /t:Clean;Build;CompressWin32 /p:config=Release /p:platform=Win32');
          end;
        end;
        if A64 then
        begin
          if not Alocalize then
          begin
            slIni.Add('msbuild ' + sNewPath + ' /t:Clean;Build;CompressWin64 /p:config=Release /p:platform=Win64');
          end
          else begin
            slIni.Add('msbuild ' + sNewPath + ' /t:Clean;Build;Localize;CompressWin64 /p:config=Release /p:platform=Win64');
          end;
        end;
        {$EndRegion Build}
        // Copy
        {$Region Copy}
        if A32 then
        begin
          slIni.Add('');
          slIni.Add('echo "Kopiere Datei ins Setupverzeichnis 32-Bit"');
          sNewPathexe:= StringReplace(APath,Aname + '.dproj','Win32\Release\' + sNewName32 + '.exe',[rfIgnorecase,rfReplaceAll]);
          slIni.Add('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'"');
          if not A64 then
          begin
            slIni.Add(StringReplace('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'"','exe','DE',[rfIgnorecase,rfReplaceAll]));
            slIni.Add(StringReplace('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'"','exe','EN',[rfIgnorecase,rfReplaceAll]));
          end;
        end;
        if A64 then
        begin
          slIni.Add('');
          slIni.Add('echo "Kopiere Datei ins Setupverzeichnis 64-Bit"');
          sNewPathexe:= StringReplace(APath,Aname + '.dproj','Win64\Release\' + AName + '.exe',[rfIgnorecase,rfReplaceAll]);
          if (AName = 'PCMBackup') or (AName = 'PCMBackupService') or (AName = 'PCMServiceManager') then
          begin
            slIni.Add('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + sNewName64 +'"');
            slIni.Add(StringReplace('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + sNewName64 +'"','exe','DE',[rfIgnorecase,rfReplaceAll]));
            slIni.Add(StringReplace('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + sNewName64 +'"','exe','EN',[rfIgnorecase,rfReplaceAll]));
          end
          else begin
            slIni.Add('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'_x64"');
            slIni.Add(StringReplace('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'_x64"','exe','DE',[rfIgnorecase,rfReplaceAll]));
            slIni.Add(StringReplace('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'_x64"','exe','EN',[rfIgnorecase,rfReplaceAll]));
          end;
        end;
        slIni.Add('');
        slIni.Add('echo "Kopiere Doku ins Setupverzeichnis"');
        sNewPathDoc:= StringReplace(APath,Aname + '.dproj','' + AName + '.exe',[rfIgnorecase,rfReplaceAll]);
        slIni.Add(StringReplace('copy /y /v ' + sNewPathDoc + ' "e:\Inno\Setupfiles\Programme\' + sNewName32 +'"','exe','docx',[rfIgnorecase,rfReplaceAll]));
        slIni.Add(StringReplace('copy /y /v ' + sNewPathDoc + ' "e:\Inno\Setupfiles\Programme\' + sNewName32 +'"','exe','pdf',[rfIgnorecase,rfReplaceAll]));
        slIni.Add(StringReplace('copy /y /v ' + sNewPathDoc + ' "e:\Inno\Setupfiles\Programme\' + sNewName32 +'"','exe','htm',[rfIgnorecase,rfReplaceAll]));

        if ALizenz then
        begin
          slIni.Add('');
          slIni.Add('echo "Demolizenz erstellen"');
          if not A64  then
          begin
            slIni.Add('call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /' + ReplaceStr(AName,'PCM','PCM-') + ' /1.6 /E:\Inno\Setupfiles\Programme\' + AName);
          end
          else begin
            if (AName = 'PCMBackup') or (AName = 'PCMBackupService') or (AName = 'PCMServiceManager') then
            begin
              slIni.Add('call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /' + ReplaceStr(AName,'PCM','PCM-') + ' /1.6 /E:\Inno\Setupfiles\Programme\' + sNewName32 );
            end
            else begin
              slIni.Add('call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /' + ReplaceStr(AName,'PCM','PCM-') + ' /1.6 /E:\Inno\Setupfiles\Programme\' + AName + '_x64');
            end;
          end;
        end;
        {$EndRegion Copy}
      end;
      {$EndRegion DesktopBuild}
      slIni.SaveToFile(sSaveScript);
      slini.Free;
    end;
    CreateOverMsBuild(APath,AScript,AName);
  end;
  procedure CreateVersionH(AName,APath: String; AMajor,AMinor,ARevision, ABuild: Integer);
  var
    sScript: String;
    slVersion: TStringlist;
  begin
    sScript:= ExtractFilepath(APath) + 'version.H';
    if (not FileExists(sScript)) then
    begin
      slVersion:= TStringlist.Create;
      slVersion.Add('#define VERSION_MAJOR ' + IntToStr(AMajor));
      slVersion.Add('#define VERSION_MINOR ' + IntToStr(AMinor));
      slVersion.Add('#define VERSION_BUILD ' + IntToStr(ABuild));
      slVersion.Add('#define VERSION_REVISION ' + IntToStr(ARevision));
      slVersion.Add('#define STRINGIFY(x) #x');
      slVersion.Add('#define VERSION_STRING(a,b,c,d) STRINGIFY(a) "." STRINGIFY(b) "." STRINGIFY(c) "." STRINGIFY(d)');
      slVersion.Add('#define VERSION_STRING_FULL VERSION_STRING(VERSION_MAJOR,VERSION_MINOR,VERSION_BUILD,VERSION_REVISION)');
      slVersion.SaveToFile(sScript);
      slVersion.Free;
    end;
  end;
  procedure CreateVersionRC(AName,APath,ABeschreibung: String; A64, A32: boolean; AMajor,AMinor,ARevision, ABuild: Integer);
  var
    sScript32: String;
    sScript64: String;
    slVersioninfo: TSTringlist;
  begin
    sScript32:= ExtractFilepath(APath) + 'versioninfo32.rc';
    sScript64:= ExtractFilepath(APath) + 'versioninfo64.rc';
    if (A64) and (not FileExists(sScript64)) then
    begin
      slVersioninfo:= TStringlist.Create;
      slVersioninfo.Add('#define VERSION_MAJOR ' + IntToStr(AMajor));
      slVersioninfo.Add('#define VERSION_MINOR ' + IntToStr(AMinor));
      slVersioninfo.Add('#define VERSION_BUILD ' + IntToStr(ABuild));
      slVersioninfo.Add('#define VERSION_REVISION ' + IntToStr(ARevision));
      slVersioninfo.Add('');
      slVersioninfo.Add('#define STRINGIFY(x) #x');
      slVersioninfo.Add('#define VERSION_STRING(a,b,c,d) STRINGIFY(a) "." STRINGIFY(b) "." STRINGIFY(c) "." STRINGIFY(d)');
      slVersioninfo.Add('#define VERSION_STRING_FULL VERSION_STRING(VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD)');
      slVersioninfo.Add('#define VERSION_STRING1(a,b) STRINGIFY(a) "." STRINGIFY(b)');
      slVersioninfo.Add('#define VERSION_STRING_SMALL VERSION_STRING1(VERSION_MAJOR,VERSION_MINOR)');
      slVersioninfo.Add('1 VERSIONINFO');
      slVersioninfo.Add('FILEVERSION VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD');
      slVersioninfo.Add('PRODUCTVERSION VERSION_MAJOR,VERSION_MINOR');
      slVersioninfo.Add('FILEFLAGSMASK 0x3fL');
      slVersioninfo.Add('FILEFLAGS 0x0L');
      slVersioninfo.Add('FILEOS 0x4L');
      slVersioninfo.Add('FILETYPE 0x1L');
      slVersioninfo.Add('FILESUBTYPE 0x0L');
      slVersioninfo.Add('BEGIN');
      slVersioninfo.Add('  BLOCK "StringFileInfo"');
      slVersioninfo.Add('  BEGIN');
      slVersioninfo.Add('    BLOCK "040704B0"');
      slVersioninfo.Add('    BEGIN');
      slVersioninfo.Add('      VALUE "FileDescription", "' + ABeschreibung + '\0"');
      slVersioninfo.Add('      VALUE "FileVersion", VERSION_STRING_FULL "\0"');
      slVersioninfo.Add('      VALUE "InternalName", "' + AName + '.exe\0"');
      slVersioninfo.Add('      VALUE "LegalCopyright", "PCM (Jens Henske)\0"');
      slVersioninfo.Add('      VALUE "ProductName", "' + AName + ' 64-Bit\0"');
      slVersioninfo.Add('      VALUE "ProductVersion",VERSION_STRING_SMALL "\0"');
      slVersioninfo.Add('      VALUE "CompanyName", "PCM\0"');
      slVersioninfo.Add('      VALUE "OriginalFilename", "' + AName + '.exe (64-Bit)\0"');
      slVersioninfo.Add('      VALUE "Comments", "\0"');
      slVersioninfo.Add('    END');
      slVersioninfo.Add('  END');
      slVersioninfo.Add('');
      slVersioninfo.Add('  BLOCK "VarFileInfo"');
      slVersioninfo.Add('  BEGIN');
      slVersioninfo.Add('    VALUE "Translation", 0x0407,1200');
      slVersioninfo.Add('  END');
      slVersioninfo.Add('END');
      slVersioninfo.SaveToFile(sScript64);
      slVersioninfo.Free;
    end;
    if (A32) and (not FileExists(sScript32)) then
    begin
      slVersioninfo:= TStringlist.Create;
      slVersioninfo.Add('#define VERSION_MAJOR ' + IntToStr(AMajor));
      slVersioninfo.Add('#define VERSION_MINOR ' + IntToStr(AMinor));
      slVersioninfo.Add('#define VERSION_BUILD ' + IntToStr(ABuild));
      slVersioninfo.Add('#define VERSION_REVISION ' + IntToStr(ARevision));
      slVersioninfo.Add('');
      slVersioninfo.Add('#define STRINGIFY(x) #x');
      slVersioninfo.Add('#define VERSION_STRING(a,b,c,d) STRINGIFY(a) "." STRINGIFY(b) "." STRINGIFY(c) "." STRINGIFY(d)');
      slVersioninfo.Add('#define VERSION_STRING_FULL VERSION_STRING(VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD)');
      slVersioninfo.Add('#define VERSION_STRING1(a,b) STRINGIFY(a) "." STRINGIFY(b)');
      slVersioninfo.Add('#define VERSION_STRING_SMALL VERSION_STRING1(VERSION_MAJOR,VERSION_MINOR)');
      slVersioninfo.Add('1 VERSIONINFO');
      slVersioninfo.Add('FILEVERSION VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD');
      slVersioninfo.Add('PRODUCTVERSION VERSION_MAJOR,VERSION_MINOR');
      slVersioninfo.Add('FILEFLAGSMASK 0x3fL');
      slVersioninfo.Add('FILEFLAGS 0x0L');
      slVersioninfo.Add('FILEOS 0x4L');
      slVersioninfo.Add('FILETYPE 0x1L');
      slVersioninfo.Add('FILESUBTYPE 0x0L');
      slVersioninfo.Add('BEGIN');
      slVersioninfo.Add('  BLOCK "StringFileInfo"');
      slVersioninfo.Add('  BEGIN');
      slVersioninfo.Add('    BLOCK "040704B0"');
      slVersioninfo.Add('    BEGIN');
      slVersioninfo.Add('      VALUE "FileDescription", "' + ABeschreibung + '\0"');
      slVersioninfo.Add('      VALUE "FileVersion", VERSION_STRING_FULL "\0"');
      slVersioninfo.Add('      VALUE "InternalName", "' + AName + '.exe\0"');
      slVersioninfo.Add('      VALUE "LegalCopyright", "PCM (Jens Henske)\0"');
      slVersioninfo.Add('      VALUE "ProductName", "' + AName + ' 32-Bit\0"');
      slVersioninfo.Add('      VALUE "ProductVersion",VERSION_STRING_SMALL "\0"');
      slVersioninfo.Add('      VALUE "CompanyName", "PCM\0"');
      slVersioninfo.Add('      VALUE "OriginalFilename", "' + AName + '.exe (32-Bit)\0"');
      slVersioninfo.Add('      VALUE "Comments", "\0"');
      slVersioninfo.Add('    END');
      slVersioninfo.Add('  END');
      slVersioninfo.Add('');
      slVersioninfo.Add('  BLOCK "VarFileInfo"');
      slVersioninfo.Add('  BEGIN');
      slVersioninfo.Add('    VALUE "Translation", 0x0407,1200');
      slVersioninfo.Add('  END');
      slVersioninfo.Add('END');
      slVersioninfo.SaveToFile(sScript32);
      slVersioninfo.Free;
    end;
  end;
var
  i: integer;
  slClearDCU: TStringlist;
  slGitMainPull: TStringlist;
  slGitMainPush: TStringlist;
  slGitSubPull: TStringlist;
  slGitSubPush: TStringlist;
  slMSBuildPCMAll:  TStringlist;
  sBasePath: String;
begin
  // MS Build Scripte
  qry_projects.First;
  ShowWaitForm(TForm(Self), PWideChar('Script werden erstellt'), qry_projects.Recordcount * 2,417, 65);
  for I := 0 to qry_projects.Recordcount -1 do
  begin
    WaitFormSetText('Script ' + qry_projects.FieldByName('Name').AsString + ' wird erstellt');
    WaitFormStep;
    CreateMSBuild(qry_projects.FieldByName('Name').AsString,
                  qry_projects.FieldByName('Path').AsString,
                  qry_projects.FieldByName('Script').AsString,
                  qry_projects.FieldByName('64Bit').AsBoolean,
                  qry_projects.FieldByName('32Bit').AsBoolean,
                  qry_projects.FieldByName('Mobile').AsBoolean,
                  qry_projects.FieldByName('Lizenz').AsBoolean,
                  qry_projects.FieldByName('Localize').AsBoolean);
    CreateVersionH(qry_projects.FieldByName('Name').AsString,
                  qry_projects.FieldByName('Path').AsString,
                  qry_projects.FieldByName('Major').asInteger,
                  qry_projects.FieldByName('Minor').asInteger,
                  qry_projects.FieldByName('Output').asInteger,
                  qry_projects.FieldByName('Build').asInteger);
    CreateVersionRC(qry_projects.FieldByName('Name').AsString,
                  qry_projects.FieldByName('Path').AsString,
                  qry_projects.FieldByName('Beschreibung').AsString,
                  qry_projects.FieldByName('64Bit').AsBoolean,
                  qry_projects.FieldByName('32Bit').AsBoolean,
                  qry_projects.FieldByName('Major').asInteger,
                  qry_projects.FieldByName('Minor').asInteger,
                  qry_projects.FieldByName('Output').asInteger,
                  qry_projects.FieldByName('Build').asInteger);


    qry_projects.Next;
  end;
  // Sonstige Scripte löschen
  qry_Scripts.First;
  for I := 0 to qry_Scripts.Recordcount -1 do
  begin
    if FileExists(qry_Scripts.FieldByName('Path').AsString) then
      DeleteFile(qry_Scripts.FieldByName('Path').AsString);
    qry_Scripts.Next;
  end;
  // Sonstige Scripte

  sBasePath:= 'E:\Projekte\Windows\';
  qry_projects.First;
  WaitFormSetText('sonstige Script werden erstellt');
  slClearDCU:= TSTringlist.Create;
  slGitMainPull:= TSTringlist.Create;
  slGitMainPush:= TSTringlist.Create;
  slGitSubPull:= TSTringlist.Create;
  slGitSubPush:= TSTringlist.Create;
  slMSBuildPCMAll:= TSTringlist.Create;
  // Clear DCU
  slClearDCU.Add('@echo off');
  // Git Main Pull
  slGitMainPull.Add('@echo off');
  // Git Main Push
  slGitMainPush.Add('@echo off');
  // Git Sub Pull
  slGitSubPull.Add('@echo off');
  // Git Sub Push
  slGitSubPush.Add('@echo off');
  // MSBUILD PCMALL
  slMSBuildPCMAll.Add('@echo off');
  for I := 0 to qry_projects.Recordcount -1 do
  begin
    WaitFormStep;
    if qry_Projects.FieldByName('Mobile').AsBoolean then
    begin
      sBasePath:= 'E:\Projekte\Mobile';
    end
    else begin
      sBasePath:= 'E:\Projekte\Windows';
    end;
    // Clear DCU
    {$Region Clear DCU}
    slClearDCU.Add('rem ' + qry_projects.FieldByName('Name').AsString);
    slClearDCU.Add('cd ' + sBasePath);
    slClearDCU.Add('echo "Delete DCU ' + qry_projects.FieldByName('Name').AsString + '"');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\DCU32 /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\DCU64 /f /q /a');
    slClearDCU.Add('echo "Delete Exe ' + qry_projects.FieldByName('Name').AsString + '"');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win64\Release\' + qry_projects.FieldByName('Name').AsString + '.exe /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win32\Release\' + qry_projects.FieldByName('Name').AsString + '.exe /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win64\Debug\' + qry_projects.FieldByName('Name').AsString + '.exe /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win32\Debug\' + qry_projects.FieldByName('Name').AsString + '.exe /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win64\Release\WebView2Loader.dll /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win32\Release\WebView2Loader.dll /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win64\Debug\WebView2Loader.dll /f /q /a');
    slClearDCU.Add('del ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Win32\Debug\WebView2Loader.dll /f /q /a');
    slClearDCU.Add('echo "Delete __History ' + qry_projects.FieldByName('Name').AsString + '"');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\__history /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\helper\__history /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Module\__history /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Modules\__history /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions\__history /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions\WebView2\__history /q /s');
    slClearDCU.Add('echo "Delete __Recovery ' + qry_projects.FieldByName('Name').AsString + '"');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\__recovery /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Module\__recovery /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\Modules\__recovery /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\helper\__recovery /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions\__recovery /q /s');
    slClearDCU.Add('rmdir ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions\WebView2\__recovery /q /s');
    slClearDCU.Add('echo "Delete Logs ' + qry_projects.FieldByName('Name').AsString + '"');
    slClearDCU.Add('del ' + sBasePath + '\Setuplogs\MSBUILD_'  + qry_projects.FieldByName('Name').AsString + '.log /f /q /a');

    {$EndRegion Clear DCU}
    // Git Main Pull
    {$Region Git Main Pull}
    slGitMainPull.Add('rem ' + qry_projects.FieldByName('Name').AsString);
    slGitMainPull.Add('echo "Git Pull ' + qry_projects.FieldByName('Name').AsString + '"');
    slGitMainPull.Add('cd "' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '"');
    slGitMainPull.Add('git pull');
    {$EndRegion Git Main Pull}
    // Git Main Push
    {$Region Git Main Push}
    slGitMainPush.Add('rem ' + qry_projects.FieldByName('Name').AsString);
    slGitMainPush.Add('echo "Git Push ' + qry_projects.FieldByName('Name').AsString + '"');
    slGitMainPush.Add('cd "' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '"');
    slGitMainPush.Add('git commit -am ''autopush''');
    slGitMainPush.Add('git push origin');
    {$EndRegion Git Main Push}
    // Git Sub Pull
    {$Region Git Sub Pull}
    if qry_projects.FieldByName('Name').AsString = 'PCMFunctions' then
    begin
      slGitSubPull.Add('rem ' + qry_projects.FieldByName('Name').AsString);
      slGitSubPull.Add('echo "Git Pull ' + qry_projects.FieldByName('Name').AsString + '"');
      slGitSubPull.Add('cd "' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '"');
      slGitSubPull.Add('git pull');
    end
    else begin
      slGitSubPull.Add('rem ' + qry_projects.FieldByName('Name').AsString);
      slGitSubPull.Add('echo "Git Pull ' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions"');
      slGitSubPull.Add('cd "' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions"');
      slGitSubPull.Add('git pull');
    end;
    {$EndRegion Git Sub Pull}
    // Git Sub Push
    {$Region Git Sub Push}
    if qry_projects.FieldByName('Name').AsString = 'PCMFunctions' then
    begin
      slGitSubPush.Add('rem ' + qry_projects.FieldByName('Name').AsString);
      slGitSubPush.Add('echo "Git Push ' + qry_projects.FieldByName('Name').AsString + '"');
      slGitSubPush.Add('cd "' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '"');
      slGitSubPush.Add('git commit -am ''autopush''');
      slGitSubPush.Add('git push origin');
    end
    else begin
      slGitSubPush.Add('rem ' + qry_projects.FieldByName('Name').AsString);
      slGitSubPush.Add('echo "Git Push ' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions"');
      slGitSubPush.Add('cd "' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\PCM-Functions"');
      slGitSubPush.Add('git commit -am ''autopush''');
      slGitSubPush.Add('git push origin');
    end;
    {$EndRegion Git Sub Push}
    // MSBUILD PCMALL
    {$Region MSBUILD PCMALL}
    if (qry_Projects.FieldByName('64Bit').AsBoolean) or (qry_Projects.FieldByName('32Bit').AsBoolean) then
    begin
      slMSBuildPCMAll.Add('echo "Starte Build ' + qry_projects.FieldByName('Name').AsString + '"');
      slMSBuildPCMAll.Add('cd ' + sBasePath);
      slMSBuildPCMAll.Add('Call ' + sBasePath + '\' + qry_projects.FieldByName('Name').AsString + '\MSBuild.bat > ' + sBasePath + '\Setuplogs\MSBUILD_' + qry_projects.FieldByName('Name').AsString + '.log');
    end;
    {$EndRegion MSBUILD PCMALL}
    qry_projects.Next;
  end;
  // Clear DCU
  slClearDCU.Add('pause');
  slClearDCU.SaveToFile(sBasePath + '\' + 'Clear DCU.bat');
  slClearDCU.Free;
  // Git Main Pull
  slGitMainPull.Add('pause');
  slGitMainPull.SaveToFile(sBasePath + '\' + 'Git Main Pull.bat');
  slGitMainPull.Free;
  // Git Main Push
  slGitMainPush.Add('pause');
  slGitMainPush.SaveToFile(sBasePath + '\' + 'Git Main Push.bat');
  slGitMainPush.Free;
  // Git Sub Pull
  slGitSubPull.Add('pause');
  slGitSubPull.SaveToFile(sBasePath + '\' + 'Git Sub Pull.bat');
  slGitSubPull.Free;
  // Git Sub Push
  slGitSubPush.Add('pause');
  slGitSubPush.SaveToFile(sBasePath + '\' + 'Git Sub Push.bat');
  slGitSubPush.Free;
  // MSBUILD PCMALL
//  slMSBuildPCMAll.add('Call "C:\Program Files (x86)\Inno Setup 6\iscc.exe" "E:\Inno\PCManager.iss"');
  slMSBuildPCMAll.Add('pause');
  slMSBuildPCMAll.SaveToFile(sBasePath + '\' + 'MSBuild PCMAll.bat');
  slMSBuildPCMAll.Free;
  CloseWaitForm;
end;

procedure Tfrm_Dev.btn_SubScriptEditClick(Sender: TObject);
var
  sPath,sPathSub: String;
begin
  sPath:= GetNotepad;
  sPathSub:= StringReplace(qry_Projects.FieldByName('Path').asString,qry_Projects.FieldByName('name').asString + '.dproj','MsBuild.bat',[rfreplaceall]);
  if (sPath <> '') and FileExists(sPathSub) then
  begin
    shellexecute(0,'open',Pchar(sPath),PChar('"' + sPathSub + '"'),nil,SW_SHOWDEFAULT);
  end
  else begin
    MessageDlg('Kein Mainscript vorhanden', mtWarning, [mbOk], 0);
  end;
end;
procedure Tfrm_Dev.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;

end.

