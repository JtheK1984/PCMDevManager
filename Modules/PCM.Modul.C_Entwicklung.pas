unit PCM.Modul.C_Entwicklung;

interface

uses
  {$Region Uses}
  AnsiStrings,
  AbZipper,
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
  Winapi.Windows,
  cxProgressBar,
  cxImageComboBox,
  dxLayoutcxEditAdapters,
  cxDropDownEdit,
  cxMaskEdit,Vcl.FileCtrl,
  cxButtonEdit, dxTaskbarProgress, dxShellDialogs;

  {$EndRegion Uses}
type
  {$Region Types}
  TAppConfig = record
    bExists: Boolean;
    sUser: String;
    dtBackupTime: TTime;
    iBackupDay: Integer;
    iBackupRepeat: Integer;
  end;
  TBackupfile = record
    Filename: string;
  end;
  TBackupfiles = array of TBackupfile;

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
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxBarDockControl1: TdxBarDockControl;
    brmgr_MainBar1: TdxBar;
    btn_ConfigNew: TdxBarLargeButton;
    btn_ConfigCopy: TdxBarLargeButton;
    btn_ConfigSave: TdxBarLargeButton;
    btn_ConfigDelete: TdxBarLargeButton;
    btn_ConfigCreate: TdxBarLargeButton;
    qry_SourceAPP: TFDQuery;
    ds_SourceAPP: TDataSource;
    grpbx_Progress: TcxGroupBox;
    prgbr_CopyConfig: TcxProgressBar;
    prgbr_CopyFile: TcxProgressBar;
    prgbr_CopyProjekt: TcxProgressBar;
    lbl_Config: TcxLabel;
    lbl_File: TcxLabel;
    lbl_Projekt: TcxLabel;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    grd_Versions: TcxGrid;
    grdDBTblView_Versions: TcxGridDBTableView;
    grdDBTblView_VersionsName: TcxGridDBColumn;
    grdDBTblView_VersionsVersion: TcxGridDBColumn;
    grdDBTblView_VersionsArchitektur: TcxGridDBColumn;
    grdDBTblView_VersionsArchitektur1: TcxGridDBColumn;
    grdLvl_Versions: TcxGridLevel;
    pc_SourceCode: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    grd_Progs: TcxGrid;
    grdDBTblView_Progs: TcxGridDBTableView;
    grdDBTblView_ProgsRecId: TcxGridDBColumn;
    grdDBTblView_ProgsBackup: TcxGridDBColumn;
    grdDBTblView_ProgsProgram: TcxGridDBColumn;
    grdLVL_Progs: TcxGridLevel;
    qry_SourceDir: TFDQuery;
    ds_SourceDir: TDataSource;
    chkbx_Aktiv: TcxDBCheckBox;
    edt_Destination: TcxDBButtonEdit;
    edt_Files: TcxDBButtonEdit;
    edt_Name: TcxDBTextEdit;
    edt_Source: TcxDBButtonEdit;
    edt_Version: TcxDBMaskEdit;
    imgCmbbx_Architektur: TcxDBImageComboBox;
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    tpgb_Copy: TdxTaskbarProgress;
    md_FileExt: TdxMemData;
    md_FileExtFileExt: TStringField;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    edt_PathSetup: TcxDBButtonEdit;
    edt_PathExe: TcxDBButtonEdit;
    chkbx_PathExeApk: TcxDBCheckBox;
    edt_MSBuild: TcxDBButtonEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    chkbx_Copy: TcxDBCheckBox;
    odlg_Script: TdxOpenFileDialog;
    odlg_Files: TdxOpenFileDialog;
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
    procedure grdDBTblView_ProgsCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_CreateMSBUILDClick(Sender: TObject);
    procedure btn_CreateMSBUILDAllClick(Sender: TObject);
    procedure btn_ConfigNewClick(Sender: TObject);
    procedure btn_ConfigCopyClick(Sender: TObject);
    procedure btn_ConfigSaveClick(Sender: TObject);
    procedure btn_ConfigDeleteClick(Sender: TObject);
    procedure btn_ConfigCreateClick(Sender: TObject);
    procedure pc_SourceCodeTabChanged(Sender: TObject);
    procedure edt_SourcePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_SourcePropertiesEditValueChanged(Sender: TObject);
    procedure edt_DestinationPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_DestinationPropertiesEditValueChanged(Sender: TObject);
    procedure edt_FilesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_FilesPropertiesEditValueChanged(Sender: TObject);
    procedure chkbx_AktivClick(Sender: TObject);
    procedure edt_MSBuildPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_MSBuildPropertiesEditValueChanged(Sender: TObject);
    procedure cxDBCheckBox1Click(Sender: TObject);
    procedure edt_PathSetupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_PathSetupPropertiesEditValueChanged(Sender: TObject);
    procedure edt_PathExePropertiesEditValueChanged(Sender: TObject);
    procedure edt_PathExePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure chkbx_PathExeApkPropertiesEditValueChanged(Sender: TObject);
    procedure chkbx_CopyPropertiesEditValueChanged(Sender: TObject);
    procedure chkbx_CopyClick(Sender: TObject);
    procedure grdDBTblView_VersionsFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
  private
    { Private-Deklarationen }
    AppConfig: TAppConfig;
    iIDBackupSource: integer;
    bSetttingsChanged: Boolean;
    recFiles: TBackupfiles;
    function GetNotepad : string;

    procedure CreateMSBuild(AName,APath,AScript: String;A64,A32,AMobile,Alizenz,Alocalize: Boolean);
    procedure CreateResFile(APath,AFile,AMajor,AMinor,ARevision,ABuild,ADescription: String;A64Bit,A32Bit,AMobile: Boolean);
    procedure LoadFileExt(sNewFileExt: String);
    procedure SetButtons;
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Types}
var
  {$Region Var}
  frm_Dev: Tfrm_Dev;
  bCancelCopy : Boolean;
  {$EndRegion Var}
const
  CEXM_CANCEL = WM_USER + 1;
  CEXM_CONTINUE = WM_USER + 2;
  CEXM_MAXBYTES = WM_USER + 3;

implementation

uses
  {$Region uses}
  PCM.Main,
  PCM.Data,
  PCM.Strings,
  PCM.Servicemanager.Sourcecode.Extension,
  PCM.Servicemanager.Sourcecode.NewProg,
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
procedure Tfrm_Dev.LoadFileExt(sNewFileExt: String);
var
  strlstFileExt: TStringList;
  iTemp: Integer;
begin
  if not md_FileExt.Active then
  md_FileExt.Open;
  strlstFileExt := TStringList.Create;
  try
    md_FileExt.First;
    while not md_FileExt.Eof do
      md_FileExt.Delete;
    strlstFileExt.Delimiter := ',';
    strlstFileExt.DelimitedText := sNewFileExt;
    for iTemp := 0 to strlstFileExt.Count - 1 do
    begin
      md_FileExt.Append;
      md_FileExt.FieldByName('FileExt').AsString := strlstFileExt.Strings[iTemp];
      md_FileExt.Post;
    end;
  finally
    strlstFileExt.Free;
  end;
end;
procedure Tfrm_Dev.SetButtons;
begin
  btn_ConfigSave.Enabled := qry_SourceAPP.State in [dsInsert, dsEdit];
  btn_ConfigDelete.Enabled := (not qry_SourceAPP.Eof) and not (qry_SourceAPP.State in [dsInsert, dsEdit]);

end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Entwicklung                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region Entwicklung}
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
{$EndRegion Entwicklung}
////////////////////////////////////////////////////////////////////////////////
// quellcode                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region quellcode}
procedure Tfrm_Dev.cxDBCheckBox1Click(Sender: TObject);
var
  iIndex: Integer;
begin
  iIndex := qry_SourceAPP.FieldByName('BackupNr').AsInteger;
  if iIndex > 0 then
  begin
    bSetttingsChanged := True;
  end;
end;
procedure Tfrm_Dev.chkbx_AktivClick(Sender: TObject);
var
  iIndex: Integer;
begin
  iIndex := qry_SourceAPP.FieldByName('BackupNr').AsInteger;
  if iIndex > 0 then
  begin
    bSetttingsChanged := True;
  end;
end;
procedure Tfrm_Dev.chkbx_CopyClick(Sender: TObject);
var
  iIndex: Integer;
begin
  iIndex := qry_SourceAPP.FieldByName('BackupNr').AsInteger;
  if iIndex > 0 then
  begin
//    Inc(iIndex, -1);
    bSetttingsChanged := True;
    //arrBackupConfig[iIndex].bCopy := cxCheckBox2.Checked;
  end;
end;
procedure Tfrm_Dev.chkbx_CopyPropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.chkbx_PathExeApkPropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.edt_DestinationPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sDir: String;
begin
  qry_SourceAPP.Edit;
  if SelectDirectory(rs_PCMService_ZielVerzeichnis, '', sDir) then
  begin
    edt_Destination.Text := sDir;
  end;
end;
procedure Tfrm_Dev.edt_DestinationPropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.edt_FilesPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);

var
  sNewFileExt: String;
begin
  if edt_Source.Text = '' then
    MessageDlg(rs_PCMService_KeinQuellVerzeichnis1 + slinebreak + rs_PCMService_KeinQuellVerzeichnis2,TMsgDlgType.mtInformation,[mbOk],0)
  else
  begin
    Application.CreateForm(TfSourceBackup_FileExt, fSourceBackup_FileExt);
    sNewFileExt := fSourceBackup_FileExt.Execute(edt_Source.Text, md_FileExt);
    fSourceBackup_FileExt.Free;

    if (sNewFileExt <> edt_Files.Text) and (sNewFileExt <> '') then
    begin
      //arrBackupConfig[qry_SourceAPP.FieldByName('BackupNr').AsInteger - 1].sFileExt := sNewFileExt;
      LoadFileExt(sNewFileExt);
      qry_SourceAPP.Edit;
      edt_Files.text:= sNewFileExt;
    end;
  end;
end;
procedure Tfrm_Dev.edt_FilesPropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.edt_MSBuildPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  qry_SourceAPP.Edit;
  if odlg_Script.Execute then
  begin
    edt_PathExe.Text := odlg_Script.FileName;
  end;
end;
procedure Tfrm_Dev.edt_MSBuildPropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.edt_PathExePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  qry_SourceAPP.Edit;
  if odlg_Files.Execute then
  begin
    edt_PathExe.Text := odlg_Files.FileName;
  end;
end;
procedure Tfrm_Dev.edt_PathExePropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.edt_PathSetupPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sDir: String;
begin
  qry_SourceAPP.Edit;
  if SelectDirectory(rs_PCMService_ZielVerzeichnisINNO, '', sDir) then
  begin
    edt_PathSetup.Text := sDir;
  end;
end;
procedure Tfrm_Dev.edt_PathSetupPropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.edt_SourcePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sDir: String;
begin
  qry_SourceAPP.Edit;
  if SelectDirectory(rs_PCMService_QuellVerzeichnis, '', sDir) then
  begin
    edt_Source.Text := sDir;
  end;
end;
procedure Tfrm_Dev.edt_SourcePropertiesEditValueChanged(Sender: TObject);
begin
  btn_ConfigSaveClick(Sender);
end;
procedure Tfrm_Dev.pc_SourceCodeTabChanged(Sender: TObject);
  procedure FindAllFolders(var FileList: TStrings; RootFolder, Mask: string; Recurse: Boolean);
  var
    SRResult: system.SysUtils.TSearchRec;
  begin
    RootFolder := RootFolder + '\';
    if FindFirst(RootFolder + '*.*', faAnyFile, SRResult) = 0 then
      try
        repeat
          if SRResult.Attr and faDirectory = faDirectory then
            if (SRResult.Name <> '.') and (SRResult.Name <> '..') then
            begin
              if Recurse then
                FindAllFolders(FileList, RootFolder + SRResult.Name, Mask, Recurse);
              FileList.Add(SRResult.Name);
            end;
        until FindNext(SRResult) <> 0;
      finally
        system.SysUtils.FindClose(SRResult);
      end;
  end;
  procedure LoadDirectories(iIndex: Integer);
  var
    lstFolders: TStrings;
    iID, itemp:Integer;
  begin
    iID:= qry_SourceAPP.FieldByName('ID').AsInteger;
    if iIndex > 0 then
    begin
  //    Inc(iIndex, -1);
      lstFolders := TStringList.Create;
      try
        FindAllFolders(lstFolders, edt_Source.Text, '*.*', false);
        qry_SourceDir.Close;
        qry_SourceDir.SQL.Text:= 'SELECT * FROM service_config_quellcode_dir WHERE ID_Service_Config_apps = :ID_Service_Config_apps' ;
        qry_SourceDir.ParamByName('ID_Service_Config_apps').asinteger:= iID;
        qry_SourceDir.open;

        for iTemp := 0 to lstFolders.Count - 1 do
        begin
          if not qry_SourceDir.Locate('Program', lstFolders.Strings[iTemp], []) then
          begin
            dm_PCM.qry_work.SQL.Text:= 'INSERT INTO service_config_quellcode_dir (Program,Backup,ID_Service_Config_apps) Values (' +
                             ':Program,:Backup,:ID_Service_Config_apps)';
            dm_PCM.qry_work.ParamByName('Program').AsString := lstFolders.Strings[iTemp];
            dm_PCM.qry_work.ParamByName('Backup').AsBoolean:= False;
            dm_PCM.qry_work.ParamByName('ID_Service_Config_apps').asinteger:= iID;
            dm_PCM.qry_work.ExecSQL;
          end;
        end;
//        qry_SourceDir.Refresh;
        qry_SourceDir.Close;
        qry_SourceDir.SQL.Text:= 'SELECT * FROM service_config_quellcode_dir WHERE ID_Service_Config_apps = :ID_Service_Config_apps' ;
        qry_SourceDir.ParamByName('ID_Service_Config_apps').asinteger:= iID;
        qry_SourceDir.open;
      finally
        lstFolders.Free;
      end;
    end;
  end;
begin
  if pc_SourceCode.ItemIndex = 1 then
  begin
    try
      LoadDirectories(qry_SourceAPP.FieldByName('ID').AsInteger);
    except
    end;
  end;
end;
procedure Tfrm_Dev.btn_ConfigCopyClick(Sender: TObject);
var
  iIDNew: Integer;
begin
  if qry_SourceAPP.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.sql.text:= 'Insert into service_config_quellcode_apps (Name,ID_service_config_quellcode,' +
                     'Source,Destination,Version,FileExt,Aktiv,PfadInno,DateiInno,Komprimieren,Kopieren,Architektur,Architektur1,MSBuild,CreateMSBUILD) ' +
                     'Values (:Name,:ID_service_config_quellcode,:Source,:Destination,:Version,' +
                     ':FileExt,:Aktiv,:PfadInno,:DateiInno,:Komprimieren,:Kopieren,:Architektur,:Architektur1,:MSBuild,:CreateMSBUILD)';
    dm_PCM.qry_work.ParamByName('Name').asSTring:= 'NEU: ' + qry_SourceAPP.FieldByName('Name').AsString;
    dm_PCM.qry_work.ParamByName('ID_service_config_quellcode').asInteger:= iIDBackupSource;
    dm_PCM.qry_work.ParamByName('Source').asString:= qry_SourceAPP.FieldByName('Source').AsString;
    dm_PCM.qry_work.ParamByName('Destination').asString:= qry_SourceAPP.FieldByName('Destination').AsString;
    dm_PCM.qry_work.ParamByName('Version').asString:= qry_SourceAPP.FieldByName('Version').AsString;
    dm_PCM.qry_work.ParamByName('FileExt').asString:= qry_SourceAPP.FieldByName('FileExt').AsString;
    dm_PCM.qry_work.ParamByName('Aktiv').asInteger:= qry_SourceAPP.FieldByName('Aktiv').AsInteger;
    dm_PCM.qry_work.ParamByName('PfadInno').asString:= qry_SourceAPP.FieldByName('PfadInno').AsString;
    dm_PCM.qry_work.ParamByName('DateiInno').asString:= qry_SourceAPP.FieldByName('DateiInno').AsString;
    dm_PCM.qry_work.ParamByName('Komprimieren').asInteger:= qry_SourceAPP.FieldByName('Komprimieren').AsInteger;
    dm_PCM.qry_work.ParamByName('Kopieren').asInteger:= qry_SourceAPP.FieldByName('Kopieren').AsInteger;
    dm_PCM.qry_work.ParamByName('Architektur').asInteger:= qry_SourceAPP.FieldByName('Architektur').AsInteger;
    dm_PCM.qry_work.ParamByName('Architektur1').asInteger:= qry_SourceAPP.FieldByName('Architektur1').AsInteger;
    dm_PCM.qry_work.ParamByName('MSBuild').asString:= qry_SourceAPP.FieldByName('MSBuild').AsString;
    dm_PCM.qry_work.ParamByName('CreateMSBUILD').asInteger:= qry_SourceAPP.FieldByName('CreateMSBUILD').AsInteger;
    dm_PCM.qry_work.ExecSQL;
    qry_SourceAPP.Refresh;
    dm_PCM.qry_work.SQL.Text:= 'SELECT Last_Insert_ID() as ID' ;
    dm_PCM.qry_work.open;
    iIDNew:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.close;
    qry_SourceAPP.Locate('ID',iIDNew,[]);
    edt_Name.SetFocus;
  end;

end;
procedure Tfrm_Dev.btn_ConfigCreateClick(Sender: TObject);
var
  iTemp: Integer;
  sFileFrom, sFileTo, sDatum, sUhrzeit: String;
  wJahr, wMonat, wTag: Word;
  wStd, wMin, wSec, wMSec: Word;

  function AddZeros(sValue: String; iCount: Integer = 2): String;
  var
   sResult: String;
  begin
    if Length(sValue) < iCount then
    begin
      sResult := sValue;
      while Length(sResult) < iCount do
        sResult := '0' + sResult;
    end
    else
    begin
      sResult := Copy(sValue, 1, iCount);
    end;
    Result := sResult;
  end;
  function CopyFileProgress(TotalFileSize, TotalBytesTransferred, StreamSize, StreamBytesTransferred: LARGE_INTEGER; dwStreamNumber, dwCallbackReason,  hSourceFile, hDestinationFile: DWORD; lpData: Pointer): DWORD; stdcall;
  begin
    if bCancelCopy = True then
    begin
      SendMessage(THandle(lpData), CEXM_CANCEL, 0, 0);
      result := PROGRESS_CANCEL;
      exit;
    end;
    case dwCallbackReason of
      CALLBACK_CHUNK_FINISHED:
        begin
          SendMessage(THandle(lpData), CEXM_CONTINUE, TotalBytesTransferred.LowPart, TotalBytesTransferred.HighPart);
          result := PROGRESS_CONTINUE;
        end;
      CALLBACK_STREAM_SWITCH:
        begin
          SendMessage(THandle(lpData), CEXM_MAXBYTES, TotalFileSize.LowPart, TotalFileSize.HighPart);
          result := PROGRESS_CONTINUE;
        end;
    else
      result := PROGRESS_CONTINUE;
    end;
  end;
  procedure RunAndWaitShell(Executable, Parameter, Directory: STRING; ShowParameter: INTEGER);
  var
    Info: TShellExecuteInfo;
    pInfo: PShellExecuteInfo;
    exitCode: DWord;
  begin
    pInfo := @Info;
    with Info do
    begin
      cbSize := SizeOf(Info);
      fMask := SEE_MASK_NOCLOSEPROCESS;
      wnd   := application.Handle;
      lpVerb := NIL;
      lpFile := PChar(Executable);
      lpParameters := PChar(Parameter + #0);
      lpDirectory := PChar(Directory);
      nShow       := ShowParameter;
      hInstApp    := 0;
    end;
    ShellExecuteEx(pInfo);
    repeat
      exitCode := WaitForSingleObject(Info.hProcess, 500);
      Application.ProcessMessages;
    until (exitCode <> WAIT_TIMEOUT);
  end;
  procedure CopyFileSelf(bcompress,bCopy: Integer; sPath,sFile: String);
  var
    sPackerPath: String;
  begin
    grpbx_Progress.Visible := True;
    if (bCompress = 1) and (sPath <> '') and (sfile <> '') then
    begin
      system.Sysutils.ForceDirectories(sPath);
      sPackerPath := ExtractFilePath(ParamStr(0)) + 'Upx\upx.exe';

      if Length(sPackerPath) > 0 then
      begin
        if FileExists(sPackerPath) then
        begin
          lbl_File.caption := ExtractFileName(sfile) + ' wird komprimiert';
          lbl_Config.Caption:= '';
          lbl_Projekt.Caption:= '';
          RunAndWaitShell(sPackerPath, '"' + sfile + '"', ExtractFilePath(sPackerPath), SW_HIDE);
        end;
      end;
    end;
    bCancelCopy := False;
    if (bCopy = 1) and (sPath <> '') and (sfile <> '') then
    begin
      lbl_File.caption := ExtractFileName(sfile) + ' wird kopiert';
      CopyFileEx(PChar(sfile), PChar(sPath + '\' +  ExtractFileName(sfile)), @CopyFileProgress, Pointer(Handle), nil, 0);
    end;
  end;
  procedure FindAllFiles(var FileList: TBackupfiles ;RootFolder, Mask: string; Recurse: Boolean);
  var
    SR: TSearchRec;
    sFilename: string;
  begin
    RootFolder := IncludeTrailingPathDelimiter(RootFolder);

    if Recurse then
      if FindFirst(RootFolder + '*.*', faAnyFile, SR) = 0 then
      try
        repeat
          if SR.Attr and faDirectory = faDirectory then
            if (SR.Name <> '.') and (SR.Name <> '..')  then
              FindAllFiles(FileList, RootFolder + SR.Name, Mask, Recurse);
        until FindNext(SR) <> 0;
      finally
        system.sysutils.FindClose(SR);
      end;
    if FindFirst(RootFolder + Mask, faAnyFile, SR) = 0 then
    try
      repeat
        if SR.Attr and faDirectory <> faDirectory then
        begin
          Application.ProcessMessages;
          SetLength(FileList,Length(FileList) + 1);
          sFilename:= StringReplace(RootFolder,sFileFrom,'',[rfReplaceAll,rfIgnoreCase]) + sr.Name;
          FileList[High(FileList)].FileName:= Copy(sFilename,2,Length(sFilename));
//          FileList.Filename:= RootFolder + SR.Name;
        end;
      until FindNext(SR) <> 0;
    finally
      system.sysutils.FindClose(SR);
    end;
  end;
  procedure Zippen(sFrom, sTo,sExt: String);
  var
    strlstFileExt: TStringList;
    iTemp: Integer;
    Component: TAbZipper;
  begin
    try
      strlstFileExt := TStringList.Create;
      try
        Screen.Cursor := crAppStart;
        strlstFileExt.Delimiter := ',';
        strlstFileExt.DelimitedText := sExt;
        if FileExists(sTo) then
          DeleteFile(PChar(sTo));
        SetLength(recFiles,0);
        for iTemp := 0 to strlstFileExt.Count - 1 do
        begin
          FindAllFiles(recFiles,sFrom,strlstFileExt.Strings[iTemp],true);
//          Component.AddFiles('PCM.Data.pas',1);
//          Component.AddFiles('Helper\PCM.ServerMethods.pas',1);
//          Component.AddFiles(strlstFileExt.Strings[iTemp],1);
        end;

        Component:= TAbZipper.Create(Self);
        Component.FileName := sTo;
        Component.BaseDirectory:= sFrom;
        for iTemp := 0 to High(recFiles) do
        begin
          Component.AddFiles(recFiles[iTemp].FileName,1);
        end;
        Component.Save;
        Component.Free;
      finally
        strlstFileExt.Free;
        Screen.Cursor := crDefault;
      end;
    except
      ON EX: Exception DO
      BEGIN
      END;
    end;
  end;
  procedure EnableControls(Enable: Boolean);
  begin
    // PageControls
    pc_SourceCode.Enabled := Enable;
//    pc_SourceCodeBackup.Enabled := Enable;
    // Toolbar
    btn_ConfigSave.Enabled := Enable;
    btn_ConfigNew.Enabled := Enable;
    btn_ConfigCreate.Enabled := Enable;
    // Menu Felder
    grd_Versions.Enabled := Enable;
    // Grundeinstellungen
    edt_Name.Enabled := Enable;
    edt_Version.Enabled := Enable;
    edt_Source.Enabled := Enable;
    edt_Destination.Enabled := Enable;
    edt_Files.Enabled := Enable;
    // Verzeichnis konfiguration
    grd_Progs.Enabled := Enable;
    Application.ProcessMessages;
  end;
  procedure ShowProgress(iMax: Integer);
  begin
    lbl_Config.Caption := '';
    lbl_Projekt.Caption := '';

    grpbx_Progress.Top := Round((frm_PCM_Main.ClientHeight / 2) - (grpbx_Progress.Height / 2));
    grpbx_Progress.Left := Round((frm_PCM_Main.ClientWidth / 2) - (grpbx_Progress.Width / 2));
    grpbx_Progress.Visible := True;

    prgbr_CopyConfig.Properties.Min := 0;
    prgbr_CopyConfig.Properties.Max := iMax;
    prgbr_CopyConfig.Position := 0;

    tpgb_Copy.LinkedComponent := prgbr_CopyConfig;
    tpgb_Copy.State := tbpsNormal;
    tpgb_Copy.Active := True;

    prgbr_CopyProjekt.Properties.Min := 0;
    prgbr_CopyProjekt.Properties.Max := 1;
    prgbr_CopyProjekt.Position := 0;

    Application.ProcessMessages;
  end;
  procedure HideProgress;
  begin
    tpgb_Copy.LinkedComponent := nil;
    grpbx_Progress.Visible := False;
    Application.ProcessMessages;
  end;
begin
  // Backup erstellen
  ShowProgress(qry_SourceAPP.RecordCount + 1);
  try
    lbl_Config.Caption := 'Speichere Konfigurationen';
    btn_ConfigSaveClick(nil);
    prgbr_CopyFile.Properties.Min:= 0;
    prgbr_CopyFile.Properties.Max:= 2;
    prgbr_CopyFile.Position:= 0;
    prgbr_CopyConfig.Properties.Min:= 0;
    prgbr_CopyConfig.Properties.Max:= qry_SourceAPP.RecordCount;
    prgbr_CopyConfig.Position:= 0;
    EnableControls(False);
    Lbl_file.Caption:= 'QuellCode-Sicherung:';
    try
      dm_PCM.qry_work_Sub.SQL.Text:= 'SELECT * FROM service_config_quellcode_apps Order by Name';
      dm_PCM.qry_work_Sub.open;
      while not dm_PCM.qry_work_Sub.Eof do
      begin
        prgbr_CopyConfig.Position:= prgbr_CopyConfig.Position + 1;
        Application.ProcessMessages;
        lbl_Config.Caption := dm_PCM.qry_work_Sub.FieldByName('Name').AsString;
        if dm_PCM.qry_work_Sub.FieldByName('Aktiv').AsInteger = 1 then
        begin

          dm_PCM.qry_work.SQL.Text:= 'SELECT * FROM service_config_quellcode_dir Where Backup = 1 and ID_Service_Config_apps = :ID';
          dm_PCM.qry_work.ParamByName('ID').AsInteger:= dm_PCM.qry_work_Sub.FieldByName('ID').AsInteger;
          dm_PCM.qry_work.open;
          prgbr_CopyProjekt.Properties.Min:= 0;
          prgbr_CopyProjekt.Properties.Max:= dm_PCM.qry_work.RecordCount;
          prgbr_CopyProjekt.Position:= 0;
          for iTemp := 1 to dm_PCM.qry_work.RecordCount do
          begin
            lbl_Projekt.Caption := dm_PCM.qry_work.FieldByName('Program').AsString;
            prgbr_CopyProjekt.Position:= prgbr_CopyProjekt.Position + 1;
            Application.ProcessMessages;
            DecodeDate(NOW, wJahr, wMonat, wTag);
            DecodeTime(NOW, wStd, wMin, wSec, wMSec);
            sDatum := Copy(IntToStr(wJahr), 3, 2) + AddZeros(IntToStr(wMonat)) + AddZeros(IntToStr(wTag));
            sUhrzeit := AddZeros(IntToStr(wStd)) + AddZeros(IntToStr(wMin))+ AddZeros(IntToStr(wSec));

            sFileTo := dm_PCM.qry_work_Sub.FieldByName('Destination').AsString;
            sFileTo := StringReplace(sFileTo, '%USER%', AppConfig.sUser, [rfReplaceAll]);
            sFileTo := StringReplace(sFileTo, '%DATUM%', sDatum, [rfReplaceAll]);
            sFileTo := StringReplace(sFileTo, '%UHRZEIT%', sUhrzeit, [rfReplaceAll]);
            sFileTo := StringReplace(sFileTo, '%VERSION%',  StringReplace(dm_PCM.qry_work_Sub.FieldByName('Version').AsString, '.', '', [rfReplaceAll]),[rfReplaceAll]);
            if Copy(sFileTo, Length(sFileTo), 1) <> '\' then
              sFileTo := sFileTo + '\';
            System.SysUtils.ForceDirectories(sFileTo);

            sFileTo := sFileTo + dm_PCM.qry_work.FieldByName('Program').AsString + '.zip';

            sFileFrom := dm_PCM.qry_work_Sub.FieldByName('Source').AsString;
            if Copy(sFileFrom, Length(sFileFrom), 1) <> '\' then
              sFileFrom := sFileFrom + '\';
            sFileFrom := sFileFrom + dm_PCM.qry_work.FieldByName('Program').AsString;
            if dm_PCM.qry_work.FieldByName('Backup').AsInteger = 1 then
            begin
              Zippen(sFileFrom, sFileTo, dm_PCM.qry_work_Sub.FieldByName('FileExt').asString);
            end;
            Application.ProcessMessages;
            dm_PCM.qry_work.Next
          end;
          dm_PCM.qry_work.Close;
        end;
        Application.ProcessMessages;
        dm_PCM.qry_work_Sub.Next;
      end;
      dm_PCM.qry_work_Sub.Close;
    finally
      EnableControls(True);
    end;
    Application.Processmessages;
    prgbr_CopyFile.Position:= 1;
    Lbl_file.Caption:= 'Komprimieren und ins Setupverzeichniss kopieren:';
    EnableControls(False);
    try
      dm_PCM.qry_work_Sub.SQL.Text:= 'SELECT * FROM service_config_quellcode_apps Order by Name';
      dm_PCM.qry_work_Sub.open;
      prgbr_CopyConfig.Properties.Min:= 0;
      prgbr_CopyConfig.Properties.Max:= dm_PCM.qry_work_Sub.RecordCount;
      prgbr_CopyConfig.Position:= 0;
      while not dm_PCM.qry_work_Sub.Eof do
      begin
        prgbr_CopyConfig.Position:= prgbr_CopyConfig.Position + 1;
        lbl_Config.Caption := dm_PCM.qry_work_Sub.FieldByName('Name').AsString;
        Application.ProcessMessages;
        CopyFileSelf(dm_PCM.qry_work_Sub.FieldByName('Komprimieren').AsInteger,dm_PCM.qry_work_Sub.FieldByName('Kopieren').AsInteger,dm_PCM.qry_work_Sub.FieldByName('PfadInno').asString,dm_PCM.qry_work_Sub.FieldByName('DateiInno').asString);
        dm_PCM.qry_work_Sub.Next;
      end;
      prgbr_CopyConfig.Position:= 0;
      dm_PCM.qry_work_Sub.close;
    finally
      EnableControls(True);
      prgbr_CopyFile.Position:= 2;
    end;
  finally
    HideProgress;
  end;
end;
procedure Tfrm_Dev.btn_ConfigDeleteClick(Sender: TObject);
begin
  if qry_SourceAPP.FieldByName('ID').AsInteger > 0 then
    qry_SourceAPP.Delete;
end;
procedure Tfrm_Dev.btn_ConfigNewClick(Sender: TObject);
var
  sNewConfig: String;
  iIDNew: Integer;
begin
  Application.CreateForm(TfSourceBackup_NewConfig, fSourceBackup_NewConfig);
  sNewConfig := fSourceBackup_NewConfig.Execute;
  fSourceBackup_NewConfig.Free;
  dm_PCM.qry_work.sql.text:= 'Insert into service_config_quellcode_apps (Name,ID_service_config_quellcode,' +
                     'Source,Destination,Version,FileExt,Aktiv,PfadInno,DateiInno,Komprimieren,Kopieren,Architektur,Architektur1,MSBuild,CreateMSBUILD) ' +
                     'Values (:Name,:ID_service_config_quellcode,:Source,:Destination,:Version,' +
                     ':FileExt,:Aktiv,:PfadInno,:DateiInno,:Komprimieren,:Kopieren,:Architektur,:Architektur1,:MSBuild,:CreateMSBUILD)';
  dm_PCM.qry_work.ParamByName('Name').asSTring:= sNewConfig;
  dm_PCM.qry_work.ParamByName('ID_service_config_quellcode').asInteger:= iIDBackupSource;
  dm_PCM.qry_work.ParamByName('Source').asString:= '';
  dm_PCM.qry_work.ParamByName('Destination').asString:= '';
  dm_PCM.qry_work.ParamByName('Version').asString:= '';
  dm_PCM.qry_work.ParamByName('FileExt').asString:= '';
  dm_PCM.qry_work.ParamByName('Aktiv').asInteger:= 0;
  dm_PCM.qry_work.ParamByName('PfadInno').asString:= '';
  dm_PCM.qry_work.ParamByName('DateiInno').asString:= '';
  dm_PCM.qry_work.ParamByName('Komprimieren').asInteger:= 0;
  dm_PCM.qry_work.ParamByName('Kopieren').asInteger:= 0;
  dm_PCM.qry_work.ParamByName('Architektur').asInteger:= 0;
  dm_PCM.qry_work.ParamByName('Architektur1').asInteger:= -1;
  dm_PCM.qry_work.ParamByName('MSBuild').asString:= '';
  dm_PCM.qry_work.ParamByName('CreateMSBUILD').asInteger:= 0;
  dm_PCM.qry_work.ExecSQL;
  qry_SourceAPP.Refresh;
  dm_PCM.qry_work.SQL.Text:= 'SELECT Last_Insert_ID() as ID' ;
  dm_PCM.qry_work.open;
  iIDNew:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.close;
  qry_SourceAPP.Locate('ID',iIDNew,[]);
  edt_Name.SetFocus;
end;
procedure Tfrm_Dev.btn_ConfigSaveClick(Sender: TObject);
begin
  if qry_SourceAPP.State in [dsInsert, dsEdit] then
  begin
    edt_Name.PostEditValue;
    edt_Source.PostEditValue;
    edt_Destination.PostEditValue;
    edt_Source.PostEditValue;
    edt_Files.PostEditValue;
    edt_PathSetup.PostEditValue;
    edt_PathExe.PostEditValue;
    qry_SourceAPP.Post;
  end;
end;
procedure Tfrm_Dev.grdDBTblView_ProgsCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  bNewValue: Boolean;
begin
  if Assigned(grdDBTblView_ProgsBackup) then
    if (ACellViewInfo.Item.Index = grdDBTblView_ProgsBackup.Index) then
    begin
      if qry_SourceDir.FieldByName('Backup').asInteger = 1 then
        bNewValue := False
      else
        bNewValue := True;
      dm_PCM.qry_work.SQL.Text:= 'Update service_Config_quellcode_dir Set Backup = :Backup WHERE ID = :ID';
      dm_PCM.qry_work.ParamByName('Backup').AsInteger:= ord(bNewValue);
      dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_SourceDir.FieldByName('ID').AsInteger;
      dm_PCM.qry_work.ExecSQL;
      qry_SourceDir.Refresh;
      bSetttingsChanged := True;
    end;
end;
procedure Tfrm_Dev.grdDBTblView_VersionsFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  pc_SourceCode.ItemIndex := 0;
  LoadFileExt(qry_SourceAPP.FieldByName('FileExt').AsString);
end;
{$EndRegion quellcode}
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
    qry_SourceAPP.Open;
    qry_SourceDir.Open;
  end;
  procedure LoadValues;
  begin
    dm_PCM.qry_work.SQL.Text:= 'SELECT ID FROM Service_config_Quellcode WHERE ID_Benutzer = :ID_Benutzer';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;;
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.Eof then
    begin
      dm_PCM.qry_work.Close;
      dm_PCM.qry_work.SQL.Text:= 'INSERT INTO SERVICE_CONFIG_QUELLCODE (User,BackupTime,BackupDay,BackupRepeat,ID_Benutzer) ' +
                       'VALUES(:User,:BackupTime,:BackupDay,:BackupRepeat,:ID_Benutzer)';
      dm_PCM.qry_work.ParamByName('User').AsString:= '';
      dm_PCM.qry_work.ParamByName('BackupTime').AsTime:= EncodeTime(13, 0, 0, 0);
      dm_PCM.qry_work.ParamByName('BackupDay').AsInteger:= 4;
      dm_PCM.qry_work.ParamByName('BackupRepeat').AsInteger:= 1;
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;;
      dm_PCM.qry_work.ExecSQL;
    end;
    dm_PCM.qry_work.SQL.Text:= 'SELECT ID,User,BackupTime,BackupDay,BackupRepeat from Service_config_quellcode WHERE ID_Benutzer = :ID_Benutzer';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;;
    dm_PCM.qry_work.open;
    AppConfig.sUser := dm_PCM.qry_work.FieldByName('User').AsString;
    if AppConfig.sUser = '' then
      AppConfig.bExists := False;
    AppConfig.dtBackupTime := dm_PCM.qry_work.FieldByName('BackupTime').AsDateTime;
    AppConfig.iBackupDay := dm_PCM.qry_work.FieldByName('BackupDay').Asinteger;
    AppConfig.iBackupRepeat := dm_PCM.qry_work.FieldByName('BackupRepeat').Asinteger;
    dm_PCM.qry_work.Close;
  end;
begin
  opendata;
  SetButtons;
  grdDBTblView_Versions.OnFocusedRecordChanged := nil;
  LoadValues;
  qry_SourceAPP.First;
  LoadFileExt(qry_SourceAPP.FieldByName('FileExt').AsString);
  grdDBTblView_Versions.OnFocusedRecordChanged := grdDBTblView_VersionsFocusedRecordChanged;
  dm_PCM.qry_work.SQL.Text:= 'Select ID From service_config_quellcode ';//Where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_work.open;
  iIDBackupSource:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.Close;
end;
{$EndRegion Formfunktionen}
end.




