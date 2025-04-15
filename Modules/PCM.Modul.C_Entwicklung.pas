unit PCM.Modul.C_Entwicklung;

interface

uses
  {$Region Uses}
  AnsiStrings,
  cxCheckBox,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBData,
  cxDBEdit,
  cxDBRichEdit,
  cxEdit,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridCustomPopupMenu,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridPopupMenu,
  cxGridTableView,
  cxGroupBox,
  cxImage,
  cxImageList,
  cxInplaceContainer,
  cxLabel,
  cxLocalization,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMemo,
  cxNavigator,
  cxPC,
  cxRichEdit,
  cxSplitter,
  cxStyles,
  cxTextEdit,
  cxTL,
  cxTLdxBarBuiltInMenu,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  Data.DB,
  dxBar,
  dxBarBuiltInMenu,
  dxDateRanges,
  dxLayoutContainer,
  dxLayoutControl,
  dxmdaset,
  dxScrollbarAnnotations,
  dxStatusBar,
  dxUIAClasses,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  REST.Authenticator.Basic,
  REST.Client,
  REST.Types,
  shellapi,
  System.Classes,
  system.Generics.Collections,
  System.ImageList,
  System.JSON,
  System.SysUtils,
  System.UITypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.StdCtrls,
  Winapi.ActiveX,
  Winapi.Messages,
  Winapi.WebView2,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region Types}
  Tfrm_Dev = class(TForm)
    brdckCtrl_Projects: TdxBarDockControl;
    brmgr_Main: TdxBarManager;
    btn_CreateRESFilesAll: TdxBarLargeButton;
    btn_EditDproj: TdxBarLargeButton;
    btn_CreateHelpScripts: TdxBarLargeButton;
    btn_EditMSBUILD: TdxBarLargeButton;
    btn_CreateRESFiles: TdxBarLargeButton;
    ds_helpprogs: TDataSource;
    ds_Projects: TDataSource;
    ds_Scripts: TDataSource;
    grd_Helpprogs: TcxGrid;
    grd_Projects: TcxGrid;
    grd_Scripts: TcxGrid;
    grdDBTblView_Helpprogs: TcxGridDBTableView;
    grdDBTblView_Projects: TcxGridDBTableView;
    grdDBTblView_Scripts: TcxGridDBTableView;
    grdDBTblViewCol_HelpProgsImage: TcxGridDBColumn;
    grdDBTblViewCol_HelpProgsProgname: TcxGridDBColumn;
    grdDBTblViewCol_HelpProgsProgpath: TcxGridDBColumn;
    grdDBTblViewCol_Projects32Bit: TcxGridDBColumn;
    grdDBTblViewCol_Projects64Bit: TcxGridDBColumn;
    grdDBTblViewCol_ProjectsImage: TcxGridDBColumn;
    grdDBTblViewCol_ProjectsLicence: TcxGridDBColumn;
    grdDBTblViewCol_ProjectsLocalize: TcxGridDBColumn;
    grdDBTblViewCol_ProjectsMobile: TcxGridDBColumn;
    grdDBTblViewCol_ProjectsProgname: TcxGridDBColumn;
    grdDBTblViewCol_ProjectsProgpath: TcxGridDBColumn;
    grdDBTblViewCol_ProjectsScript: TcxGridDBColumn;
    grdDBTblViewCol_ScriptsImage: TcxGridDBColumn;
    grdDBTblViewCol_ScriptsProgname: TcxGridDBColumn;
    grdDBTblViewCol_ScriptsProgpath: TcxGridDBColumn;
    grdlvl_Helpprogs: TcxGridLevel;
    grdLvl_Projects: TcxGridLevel;
    grdLvl_Scripts: TcxGridLevel;
    imglst_16x16: TcxImageList;
    lactrl_Main: TdxLayoutControl;
    lagrp_Helpprogs: TdxLayoutGroup;
    lagrp_Main: TdxLayoutGroup;
    lagrp_Projects: TdxLayoutGroup;
    lagrp_Root: TdxLayoutGroup;
    lagrp_Scripts: TdxLayoutGroup;
    laitm_gridHelpProgs: TdxLayoutItem;
    laitm_gridProjects: TdxLayoutItem;
    laitm_gridScripts: TdxLayoutItem;
    laitm_ToolbarScripts: TdxLayoutItem;
    qry_helpprogs: TFDQuery;
    qry_Projects: TFDQuery;
    qry_Scripts: TFDQuery;
    tb_Projects: TdxBar;
    btn_CreateMSBUILD: TdxBarLargeButton;
    btn_CreateMSBUILDAll: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_CreateHelpScriptsClick(Sender: TObject);
    procedure btn_EditMSBUILDClick(Sender: TObject);
    procedure btn_CreateRESFilesClick(Sender: TObject);
    procedure btn_CreateRESFilesAllClick(Sender: TObject);
    procedure btn_EditDprojClick(Sender: TObject);
    procedure grdDBTblView_HelpprogsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdDBTblView_ProjectsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdDBTblView_ScriptsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_CreateMSBUILDClick(Sender: TObject);
    procedure btn_CreateMSBUILDAllClick(Sender: TObject);
  private
    { Private-Deklarationen }
    function GetNotepad : string;
    procedure CreateMSBuild(AName,APath,AScript: String;A64,A32,AMobile,Alizenz,Alocalize: Boolean);
    procedure CreateResFile(APath,AFile,AMajor,AMinor,ARevision,ABuild,ADescription: String;A64Bit,A32Bit,AMobile: Boolean);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Types}
var
  {$Region Var}
  frm_Dev: Tfrm_Dev;
  {$EndRegion Var}
implementation

uses
  {$Region uses}
  PCM.Data,
  PCM.Functions.Synch.Wait,
  PCM.Helper;
  {$EndRegion uses}
{$R *.dfm}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_Dev.GetNotepad: string;
begin
  Result:= '';
  dm_PCM.qry_Work.SQL.Text:= 'Select Path From devmanager_helperprograms Where Name = ''Notepad++''';
  dm_PCM.qry_work.Open;
  Result:= dm_PCM.qry_work.FieldByName('Path').AsString;
  dm_PCM.qry_work.Close;
end;
procedure Tfrm_Dev.CreateMSBuild(AName,APath,AScript: String;A64,A32,AMobile,Alizenz,Alocalize: Boolean);
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
      sNewPath:=  StringReplace(APath,'\','/',[rfIgnoreCase,rfReplaceAll]);
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
        sNewPathApp:= StringReplace(APath,Aname + '.dproj','Android\Debug\' + AName + '\bin\' + AName + '.apk',[rfIgnoreCase,rfReplaceAll]);
        sNewPathexe:= StringReplace(APath,Aname + '.dproj','Win32\Release\' + AName + '.exe',[rfIgnoreCase,rfReplaceAll]);
        slIni.Add('copy /y /v ' + sNewPathApp + ' "e:\Inno\Setupfiles\Programme\' + AName +'"');
        slIni.Add('copy /y /v ' + sNewPathexe + ' "e:\Inno\Setupfiles\Programme\' + AName +'"');
      end;
      if A64 then
      begin
        slIni.Add('');
        slIni.Add('echo "Kopiere Datei ins Setupverzeichnis 64-Bit"');
        sNewPathApp:= StringReplace(APath,Aname + '.dproj','Android64\Debug\' + Aname + '\bin\' + AName + '.apk',[rfIgnoreCase,rfReplaceAll]);
        sNewPathexe:= StringReplace(APath,Aname + '.dproj','Win64\Release\' + AName + '.exe',[rfIgnoreCase,rfReplaceAll]);
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
      sNewPath:=  StringReplace(APath,'\','/',[rfIgnorecase,rfReplaceAll]);
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
          slIni.Add('call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /' + StringReplace(AName,'PCM','PCM-',[rfIgnorecase,rfReplaceAll]) + ' /1.6 /E:\Inno\Setupfiles\Programme\' + AName);
        end
        else begin
          if (AName = 'PCMBackup') or (AName = 'PCMBackupService') or (AName = 'PCMServiceManager') then
          begin
            slIni.Add('call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /' + StringReplace(AName,'PCM','PCM-',[rfIgnorecase,rfReplaceAll]) + ' /1.6 /E:\Inno\Setupfiles\Programme\' + sNewName32 );
          end
          else begin
            slIni.Add('call "E:\Inno\Setupfiles\Programme\PCMLizenzgenerator\PCMLizenzgenerator.exe" /' + StringReplace(AName,'PCM','PCM-',[rfIgnorecase,rfReplaceAll]) + ' /1.6 /E:\Inno\Setupfiles\Programme\' + AName + '_x64');
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
procedure Tfrm_Dev.CreateResFile(APath,AFile,AMajor,AMinor,ARevision,ABuild,ADescription: String;A64Bit,A32Bit,AMobile: Boolean);
  procedure CreateVersionH(APath, AMajor,AMinor,ARevision, ABuild: String);
  var
    sScript: String;
    slVersion: TStringlist;
  begin
    sScript:= ExtractFilepath(APath) + 'version.H';
    if (not FileExists(sScript)) then
    begin
      slVersion:= TStringlist.Create;
      slVersion.Add('#define VERSION_MAJOR ' + AMajor);
      slVersion.Add('#define VERSION_MINOR ' + AMinor);
      slVersion.Add('#define VERSION_BUILD ' + ABuild);
      slVersion.Add('#define VERSION_REVISION ' + ARevision);
      slVersion.Add('#define STRINGIFY(x) #x');
      slVersion.Add('#define VERSION_STRING(a,b,c,d) STRINGIFY(a) "." STRINGIFY(b) "." STRINGIFY(c) "." STRINGIFY(d)');
      slVersion.Add('#define VERSION_STRING_FULL VERSION_STRING(VERSION_MAJOR,VERSION_MINOR,VERSION_BUILD,VERSION_REVISION)');
      slVersion.SaveToFile(sScript);
      slVersion.Free;
    end;
  end;
var
  slVersionH: TStringList;
  sFileWithoutExt: String;
begin
  CreateVersionH(APath,AMajor,AMinor,ABuild,ARevision);
  sFileWithoutExt:= StringReplace(AFile,'.exe','',[rfReplaceAll,rfIgnoreCase]);
  sFileWithoutExt:= StringReplace(sFileWithoutExt,'PCM','PCM-',[rfReplaceAll,rfIgnoreCase]);
  if (A64Bit) and (not Amobile) then
  begin
    slVersionH := TStringList.Create;
    try
      slVersionH.Add('#define VERSION_MAJOR ' + AMajor);
      slVersionH.Add('#define VERSION_MINOR ' + AMinor);
      slVersionH.Add('#define VERSION_BUILD ' + ARevision);
      slVersionH.Add('#define VERSION_REVISION ' + ABuild);
      slVersionH.Add('');
      slVersionH.Add('#define STRINGIFY(x) #x');
      slVersionH.Add('#define VERSION_STRING(a,b,c,d) STRINGIFY(a) "." STRINGIFY(b) "." STRINGIFY(c) "." STRINGIFY(d)');
      slVersionH.Add('#define VERSION_STRING_FULL VERSION_STRING(VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD)');
      slVersionH.Add('#define VERSION_STRING1(a,b) STRINGIFY(a) "." STRINGIFY(b)');
      slVersionH.Add('#define VERSION_STRING_SMALL VERSION_STRING1(VERSION_MAJOR,VERSION_MINOR)');
      slVersionH.Add('1 VERSIONINFO');
      slVersionH.Add('FILEVERSION VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD');
      slVersionH.Add('PRODUCTVERSION VERSION_MAJOR,VERSION_MINOR');
      slVersionH.Add('FILEFLAGSMASK 0x3fL');
      slVersionH.Add('FILEFLAGS 0x0L');
      slVersionH.Add('FILEOS 0x4L');
      slVersionH.Add('FILETYPE 0x1L');
      slVersionH.Add('FILESUBTYPE 0x0L');
      slVersionH.Add('BEGIN');
      slVersionH.Add('  BLOCK "StringFileInfo"');
      slVersionH.Add('  BEGIN');
      slVersionH.Add('    BLOCK "040704B0"');
      slVersionH.Add('    BEGIN');
      slVersionH.Add('      VALUE "FileDescription", "' + ADescription + '\0"');
      slVersionH.Add('      VALUE "FileVersion", VERSION_STRING_FULL "\0"');
      slVersionH.Add('      VALUE "InternalName", "'+ AFile +'\0"');
      slVersionH.Add('      VALUE "LegalCopyright", "PCM (Jens Henske)\0"');
      slVersionH.Add('      VALUE "ProductName", "' + sFileWithoutExt + ' 64-Bit\0"');
      slVersionH.Add('      VALUE "ProductVersion",VERSION_STRING_SMALL "\0"');
      slVersionH.Add('      VALUE "CompanyName", "PCM\0"');
      slVersionH.Add('      VALUE "OriginalFilename", "'+ AFile +' (64-Bit)\0"');
      slVersionH.Add('      VALUE "Comments", "\0"');
      slVersionH.Add('    END');
      slVersionH.Add('  END');
      slVersionH.Add('');
      slVersionH.Add('  BLOCK "VarFileInfo"');
      slVersionH.Add('  BEGIN');
      slVersionH.Add('    VALUE "Translation", 0x0407,1200');
      slVersionH.Add('  END');
      slVersionH.Add('END');
      slVersionH.SaveToFile(Apath + 'versioninfo64.rc');
    finally
      slVersionH.Free;
    end;
  end;
  if (A32Bit) and (not Amobile) then
  begin
    slVersionH := TStringList.Create;
    try
      slVersionH.Add('#define VERSION_MAJOR ' + AMajor);
      slVersionH.Add('#define VERSION_MINOR ' + AMinor);
      slVersionH.Add('#define VERSION_BUILD ' + ARevision);
      slVersionH.Add('#define VERSION_REVISION ' + ABuild);
      slVersionH.Add('');
      slVersionH.Add('#define STRINGIFY(x) #x');
      slVersionH.Add('#define VERSION_STRING(a,b,c,d) STRINGIFY(a) "." STRINGIFY(b) "." STRINGIFY(c) "." STRINGIFY(d)');
      slVersionH.Add('#define VERSION_STRING_FULL VERSION_STRING(VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD)');
      slVersionH.Add('#define VERSION_STRING1(a,b) STRINGIFY(a) "." STRINGIFY(b)');
      slVersionH.Add('#define VERSION_STRING_SMALL VERSION_STRING1(VERSION_MAJOR,VERSION_MINOR)');
      slVersionH.Add('1 VERSIONINFO');
      slVersionH.Add('FILEVERSION VERSION_MAJOR,VERSION_MINOR,VERSION_REVISION,VERSION_BUILD');
      slVersionH.Add('PRODUCTVERSION VERSION_MAJOR,VERSION_MINOR');
      slVersionH.Add('FILEFLAGSMASK 0x3fL');
      slVersionH.Add('FILEFLAGS 0x0L');
      slVersionH.Add('FILEOS 0x4L');
      slVersionH.Add('FILETYPE 0x1L');
      slVersionH.Add('FILESUBTYPE 0x0L');
      slVersionH.Add('BEGIN');
      slVersionH.Add('  BLOCK "StringFileInfo"');
      slVersionH.Add('  BEGIN');
      slVersionH.Add('    BLOCK "040704B0"');
      slVersionH.Add('    BEGIN');
      slVersionH.Add('      VALUE "FileDescription", "' + ADescription + '\0"');
      slVersionH.Add('      VALUE "FileVersion", VERSION_STRING_FULL "\0"');
      slVersionH.Add('      VALUE "InternalName", "' + sFileWithoutExt + '.exe \0"');
      slVersionH.Add('      VALUE "LegalCopyright", "PCM (Jens Henske)\0"');
      slVersionH.Add('      VALUE "ProductName", "' + AFile + ' 32-Bit\0"');
      slVersionH.Add('      VALUE "ProductVersion",VERSION_STRING_SMALL "\0"');
      slVersionH.Add('      VALUE "CompanyName", "PCM\0"');
      slVersionH.Add('      VALUE "OriginalFilename", "' + AFile + '.exe (32-Bit)\0"');
      slVersionH.Add('      VALUE "Comments", "\0"');
      slVersionH.Add('    END');
      slVersionH.Add('  END');
      slVersionH.Add('');
      slVersionH.Add('  BLOCK "VarFileInfo"');
      slVersionH.Add('  BEGIN');
      slVersionH.Add('    VALUE "Translation", 0x0407,1200');
      slVersionH.Add('  END');
      slVersionH.Add('END');
      slVersionH.SaveToFile(Apath + 'versioninfo32.rc');
    finally
      slVersionH.Free;
    end;
  end;
end;


{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttonfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_Dev.btn_CreateMSBUILDClick(Sender: TObject);
begin
  if qry_projects.FieldByName('Script').AsString <> '' then
  begin
    CreateMSBuild(qry_projects.FieldByName('Name').AsString,
                  qry_projects.FieldByName('Path').AsString,
                  qry_projects.FieldByName('Script').AsString,
                  qry_projects.FieldByName('64Bit').AsBoolean,
                  qry_projects.FieldByName('32Bit').AsBoolean,
                  qry_projects.FieldByName('Mobile').AsBoolean,
                  qry_projects.FieldByName('Lizenz').AsBoolean,
                  qry_projects.FieldByName('Localize').AsBoolean);
  end;
end;
procedure Tfrm_Dev.btn_CreateMSBUILDAllClick(Sender: TObject);
begin
  qry_projects.First;
  ShowWaitForm(TForm(Self), PWideChar('Script werden erstellt'), qry_projects.Recordcount * 2,417, 65);
  while not qry_projects.eof do
  begin
    WaitFormSetText('Script ' + qry_projects.FieldByName('Name').AsString + ' wird erstellt');
    WaitFormStep;
    if qry_projects.FieldByName('Script').AsString <> '' then
    begin
      CreateMSBuild(qry_projects.FieldByName('Name').AsString,
                    qry_projects.FieldByName('Path').AsString,
                    qry_projects.FieldByName('Script').AsString,
                    qry_projects.FieldByName('64Bit').AsBoolean,
                    qry_projects.FieldByName('32Bit').AsBoolean,
                    qry_projects.FieldByName('Mobile').AsBoolean,
                    qry_projects.FieldByName('Lizenz').AsBoolean,
                    qry_projects.FieldByName('Localize').AsBoolean);
    end;
    qry_projects.Next;
  end;
  CloseWaitForm;
end;
procedure Tfrm_Dev.btn_CreateRESFilesClick(Sender: TObject);
Var
  sPath: String;
  sFile: String;
  sFileWithoutExt: String;
  slVersionH: TStringList;
begin
  if qry_Projects.FieldByName('ID').AsInteger > 0 then
  begin
    sPath:= StringReplace(qry_Projects.FieldByName('Path').AsString,qry_Projects.FieldByName('Name').AsString + '.dproj','',[rfReplaceAll,rfIgnoreCase]);
    sFile:= StringReplace(qry_Projects.FieldByName('Name').AsString,'.dproj','.exe',[rfReplaceAll,rfIgnoreCase]);
    CreateResFile(sPath,
                  sFile,
                  qry_Projects.FieldByName('Major').AsString,
                  qry_Projects.FieldByName('Minor').AsString,
                  qry_Projects.FieldByName('Build').AsString,
                  qry_Projects.FieldByName('Output').AsString,
                  qry_Projects.FieldByName('Beschreibung').AsString,
                  qry_Projects.FieldByName('64Bit').AsBoolean,
                  qry_Projects.FieldByName('32Bit').AsBoolean,
                  qry_Projects.FieldByName('mobile').AsBoolean);
  end;
end;
procedure Tfrm_Dev.btn_CreateRESFilesAllClick(Sender: TObject);
Var
  sPath: String;
  sFile: String;
  sFileWithoutExt: String;
  slVersionH: TStringList;
begin
  qry_Projects.First;
  ShowWaitForm(TForm(Self), PWideChar('Script werden erstellt'), qry_projects.Recordcount,417, 65);
  while not qry_Projects.eof do
  begin
    if qry_Projects.FieldByName('ID').AsInteger > 0 then
    begin
      sPath:= StringReplace(qry_Projects.FieldByName('Path').AsString,qry_Projects.FieldByName('Name').AsString + '.dproj','',[rfReplaceAll,rfIgnoreCase]);
      sFile:= StringReplace(qry_Projects.FieldByName('Name').AsString,'.dproj','.exe',[rfReplaceAll,rfIgnoreCase]);
      WaitFormSetText('Ressourcefile ' + sFile + ' wird erstellt');
      WaitFormStep;
      CreateResFile(sPath,
                    sFile,
                    qry_Projects.FieldByName('Major').AsString,
                    qry_Projects.FieldByName('Minor').AsString,
                    qry_Projects.FieldByName('Build').AsString,
                    qry_Projects.FieldByName('Output').AsString,
                    qry_Projects.FieldByName('Beschreibung').AsString,
                    qry_Projects.FieldByName('64Bit').AsBoolean,
                    qry_Projects.FieldByName('32Bit').AsBoolean,
                    qry_Projects.FieldByName('mobile').AsBoolean);
    end;
    qry_Projects.Next;
  end;
  CloseWaitForm;
end;
procedure Tfrm_Dev.btn_CreateHelpScriptsClick(Sender: TObject);
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
  try
    // Sonstige Scripte löschen
    qry_Scripts.First;
    for I := 0 to qry_Scripts.Recordcount -1 do
    begin
      if FileExists(qry_Scripts.FieldByName('Path').AsString) then
        DeleteFile(PChar(qry_Scripts.FieldByName('Path').AsString));
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
  except
    CloseWaitForm;
  end;
  CloseWaitForm;
end;
procedure Tfrm_Dev.btn_EditDprojClick(Sender: TObject);
var
  sPath: String;
  sPathSub: String;
begin
  sPath:= GetNotepad;
  sPathSub:= qry_Projects.FieldByName('Path').asString;
  if (sPath <> '') and FileExists(sPathSub) then
  begin
    shellexecute(0,'open',Pchar(sPath),PChar('"' + sPathSub + '"'),nil,SW_SHOWDEFAULT);
  end
  else begin
    MessageDlg('Kein Mainscript vorhanden', mtWarning, [mbOk], 0);
  end;

end;
procedure Tfrm_Dev.btn_EditMSBUILDClick(Sender: TObject);
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
procedure Tfrm_Dev.grdDBTblView_HelpprogsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ShellExecute(Application.Handle,'open',PChar(qry_helpprogs.FieldByName('Path').asString),nil, nil, SW_NORMAL);
end;
procedure Tfrm_Dev.grdDBTblView_ProjectsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
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
procedure Tfrm_Dev.grdDBTblView_ScriptsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ShellExecute(Application.Handle,'open',PChar(qry_Scripts.FieldByName('Path').asString),nil, nil, SW_NORMAL);
end;
{$EndRegion Buttonfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_Dev.FormActivate(Sender: TObject);
begin
  FormShow(Self);
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
{$EndRegion Formfunktionen}
end.

