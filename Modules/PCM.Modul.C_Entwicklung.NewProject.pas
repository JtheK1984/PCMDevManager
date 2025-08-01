unit PCM.Modul.C_Entwicklung.NewProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,FileCtrl, Shellapi,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxClasses, cxMemo, cxDBEdit, cxCheckBox, System.IOUtils,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxImage, dxLayoutControl, dxCoreGraphics;

type
  Tfrm_NewProject = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutLabeledItem4: TdxLayoutLabeledItem;
    dxLayoutLabeledItem5: TdxLayoutLabeledItem;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    btn_Save: TcxButton;
    btn_Cancel: TcxButton;
    edt_Projectname: TcxTextEdit;
    edt_Description: TcxTextEdit;
    edt_ProjectMSBuild: TcxButtonEdit;
    edt_Projectpath: TcxButtonEdit;
    mem_Depencies: TcxMemo;
    mem_Components: TcxMemo;
    medt_Major: TcxMaskEdit;
    medt_Build: TcxMaskEdit;
    medt_Revision: TcxMaskEdit;
    medt_Minor: TcxMaskEdit;
    chkbx_64Bit: TcxCheckBox;
    chkbx_Licence: TcxCheckBox;
    chkbx_Language: TcxCheckBox;
    chkbx_Mobile: TcxCheckBox;
    chkbx_32Bit: TcxCheckBox;
    procedure btn_CancelClick(Sender: TObject);
    procedure edt_ProjectpathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edt_ProjectMSBuildPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_SaveClick(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure CopyFunctions;
    procedure CreateDpr;
    procedure CreateDproj;
    procedure CreateMain;
    procedure CreateData;
    procedure CreateSplash;
    procedure CreateMSBuild;
    procedure CreateRes;
    procedure CreatePrepare;
    procedure CreateReadMe;
  public
    { Public-Deklarationen }
  end;

var
  frm_NewProject: Tfrm_NewProject;

implementation

{$R *.dfm}

uses
  PCM.data,
  PCM.Functions.Synch.Wait,
  PCM.Strings,
  PCM.Modul.C_Entwicklung;




procedure Tfrm_NewProject.CopyFunctions;
  procedure CopyDirectory(const FromDir, ToDir: string);
  var
    OpStruct: TSHFileOpStruct;
    FromDirP, ToDirP: string;
  begin
    FromDirP := IncludeTrailingPathDelimiter(FromDir) + #0;
    ToDirP := IncludeTrailingPathDelimiter(ToDir) + #0;
    FillChar(OpStruct, SizeOf(OpStruct), 0);
    with OpStruct do
    begin
      Wnd := 0;
      wFunc := FO_COPY;
      pFrom := PChar(FromDirP);
      pTo := PChar(ToDirP);
      fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION or FOF_SILENT;
    end;
    SHFileOperation(OpStruct);
  end;
begin
  dm_pcm.qry_Work.SQL.Text:= 'SELECT Path From devmanager_projects WHERE NAME = ''PCMFunctions''';
  dm_pcm.qry_Work.Open;
  if dm_pcm.qry_Work.RecordCount > 0 then
  begin
    CopyDirectory(ExtractFilePath(dm_pcm.qry_Work.FieldByName('Path').asString), ExtractFilePath(edt_Projectpath.text) + 'PCM-Functions');
  end;
  dm_pcm.qry_Work.Close;
end;

procedure Tfrm_NewProject.CreateDpr;
var
  SL: TStringList;
begin
  SL := TStringList.Create;
  try
    SL.Add('program ' +  edt_Projectname.text + ';');
    SL.Add('');
    SL.Add('uses');
    SL.Add('  inifiles,');
    SL.Add('  NtTranslator,');
    SL.Add('  Vcl.Forms,');
    SL.Add('  uWVLoader,');
    SL.Add('  Windows,');
    SL.Add('  PCM.Helper,');
    SL.Add('  System.SysUtils,');
    SL.Add('  PCM.Main in ''PCM.Main.pas'' {frm_PCM_Main},');
    SL.Add('  PCM.Data in ''PCM.Data.pas'' {dm_PCM: TDataModule},');
    SL.Add('  PCM.splash in ''PCM.splash.pas'' {SplashScreen},');
    SL.Add('  PCMTest.dxSettings in ''PCMTest.dxSettings.pas'';');
    SL.Add('');
    SL.Add('{$R *.res}');
    SL.Add('');
    SL.Add('{$IFDEF WIN64}');
    SL.Add('  {$R ''Versioninfo64.res''}');
    SL.Add('{$else}');
    SL.Add('  {$R ''Versioninfo32.res''}');
    SL.Add('{$ENDIF}');
    SL.Add('');
    SL.Add('{$SetPEOptFlags IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}');
    SL.Add('{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP or IMAGE_FILE_LARGE_ADDRESS_AWARE}');
    SL.Add('');
    SL.Add('var');
    SL.Add('  ifini: TIniFile;');
    SL.Add('  slocale: String;');
    SL.Add('');
    SL.Add('begin');
    SL.Add('  Checkinis;');
    SL.Add('  ifini:=TIniFile.create(GetEnvironmentVariable(''LOCALAPPDATA'') + ''\PCM\PCM.ini'');');
    SL.Add('  slocale:=ifini.ReadString('''+ edt_Projectname.text +''',''Language'',''de'');');
    SL.Add('  ifini.Free;');
    SL.Add('  GlobalWebView2Loader                := TWVLoader.Create(nil);');
    SL.Add('  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable(''LOCALAPPDATA'') + ''\PCM\CustomCache'';');
    SL.Add('  GlobalWebView2Loader.StartWebView2;');
    SL.Add('  Application.Initialize;');
    SL.Add('  {$IFDEF WIN64}');
    SL.Add('  Application.Title:= ''' + edt_Projectname.text + '64-Bit' + ''';');
    SL.Add('  {$else}');
    SL.Add('  Application.Title:= ''' + edt_Projectname.text + '32-Bit' + ''';');
    SL.Add('  {$ENDIF}');
    SL.Add('  TNtTranslator.SetNew(slocale,[],''de'');');
    SL.Add('  Application.MainFormOnTaskbar := True;');
    SL.Add('  Application.CreateForm(Tdm_PCM, dm_PCM);');
    SL.Add('  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);');
    SL.Add('  Application.Run;');
    SL.Add('end.');
    SL.WriteBOM := False; // Prevent BOM writing
    SL.SaveToFile(ExtractFilePath(edt_Projectpath.Text) + edt_Projectname.text + '.dpr', TEncoding.UTF8);
  finally
    SL.Free;
  end;
end;
procedure Tfrm_NewProject.CreateDproj;
begin

end;
procedure Tfrm_NewProject.CreateMain;
begin

end;
procedure Tfrm_NewProject.CreateData;
begin

end;
procedure Tfrm_NewProject.CreateSplash;
begin

end;
procedure Tfrm_NewProject.CreateMSBuild;
begin

end;
procedure Tfrm_NewProject.CreateRes;
begin

end;
procedure Tfrm_NewProject.CreatePrepare;
begin

end;
procedure Tfrm_NewProject.CreateReadMe;
begin

end;

procedure Tfrm_NewProject.btn_CancelClick(Sender: TObject);
begin
  frm_Dev.qry_projects.cancel;
  Close;
end;

procedure Tfrm_NewProject.btn_SaveClick(Sender: TObject);
var
  iANzahl: integer;
begin
  dm_PCM.qry_Work.SQL.Text:= 'SELECT Count(*) as Anzahl From devmanager_projects WHERE NAME = :Name';
  dm_PCM.qry_Work.ParamByName('Name').asString:= edt_Projectname.text;
  dm_PCM.qry_Work.open;
  iAnzahl := dm_PCM.qry_Work.FieldByName('Anzahl').asInteger;
  dm_PCM.qry_Work.Close;
  if iANzahl = 0 then
  begin
    ShowWaitForm(TForm(Self), PWideChar(rs_General_Formload), 11,417, 65);
    WaitFormSetText('Projektordner erstellen');
    System.IOUtils.TDirectory.CreateDirectory(ExtractFilePath(edt_Projectpath.text));
    WaitFormStep;

    WaitFormSetText('PCM-Functions kopieren');
    CopyFunctions;
    WaitFormStep;

    WaitFormSetText('DPR erstellen');
    CreateDpr;
    WaitFormStep;

    WaitFormSetText('DPROJ erstellen');
    CreateDproj;
    WaitFormStep;

    WaitFormSetText('PCM.Main erstellen');
    CreateMain;
    WaitFormStep;

    WaitFormSetText('PCM.Data erstellen');
    CreateData;
    WaitFormStep;

    WaitFormSetText('PCM.Splash erstellen');
    CreateSplash;
    WaitFormStep;

    WaitFormSetText('MSBuild erstellen');
    CreateMSBuild;
    WaitFormStep;

    WaitFormSetText('Ressourcen erstellen');
    CreateRes;
    WaitFormStep;

    WaitFormSetText('PrepareCopy erstellen');
    CreatePrepare;
    WaitFormStep;

    WaitFormSetText('Readme erstellen');
    CreateReadMe;
    WaitFormStep;
    CloseWaitForm;
  end
  else begin
    MessageDlg('Projekt existiert schon',TMsgDlgType.mtWarning,[mbOk],0);
  end;
end;

procedure Tfrm_NewProject.edt_ProjectMSBuildPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  directory: String;
begin
  if SelectDirectory(rs_PCMBackup_Ordnerwaehlen, '' ,directory) then
  begin
    edt_ProjectMSBuild.Text:= IncludeTrailingPathDelimiter(directory) + 'MSBuild ' + edt_Projectname.text + '.bat';
  end
end;

procedure Tfrm_NewProject.edt_ProjectpathPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  directory: String;
begin
  if SelectDirectory(rs_PCMBackup_Ordnerwaehlen, '' ,directory) then
  begin
    edt_Projectpath.Text:= IncludeTrailingPathDelimiter(directory)  + edt_Projectname.text + '\' + edt_Projectname.text + '.dproj';
  end
end;

end.
