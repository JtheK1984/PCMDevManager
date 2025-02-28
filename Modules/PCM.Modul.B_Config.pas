unit PCM.Modul.B_Config;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxBar, cxClasses, System.ImageList,
  Vcl.ImgList, cxImageList, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, cxRadioGroup, cxCheckBox, cxTextEdit, cxLabel,
  cxButtons, dxGDIPlusClasses, cxImage, cxGroupBox, cxPC,inifiles, Vcl.Themes,system.UITypes,
  cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,PCM.Functions,
  Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection,
  cxButtonEdit, dxShellDialogs,Vcl.FileCtrl, system.json, Rest.Types,
  cxImageComboBox, dxUIAClasses, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutControl;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Config = class(TForm)
    brdckCtrl_Main: TdxBarDockControl;
    brmgr_main: TdxBarManager;
    btn_HelperprogCancel: TdxBarLargeButton;
    btn_HelperprogDelete: TdxBarLargeButton;
    btn_HelperprogNew: TdxBarLargeButton;
    btn_HelperprogSave: TdxBarLargeButton;
    ds_helpprogs: TDataSource;
    ds_Projects: TDataSource;
    edt_Progname: TcxDBTextEdit;
    grd_Helper: TcxGrid;
    grdDBTblView_Helper: TcxGridDBTableView;
    grdDBTblViewCol_PfadHelper: TcxGridDBColumn;
    grdDBTblViewCol_LogoHelper: TcxGridDBColumn;
    grdDBTblViewCol_NameHelper: TcxGridDBColumn;
    grdlvl_Helper: TcxGridLevel;
    qry_helpprogs: TFDQuery;
    qry_Projects: TFDQuery;
    tb_helpprogs: TdxBar;
    edt_Progpfad: TcxDBButtonEdit;
    dlgOpen_Helperexe: TdxOpenFileDialog;
    brdckCtrl_Delphi: TdxBarDockControl;
    tb_Projects: TdxBar;
    btn_ProjectsNew: TdxBarLargeButton;
    btn_ProjectsSave: TdxBarLargeButton;
    btn_ProjectsCancel: TdxBarLargeButton;
    btn_ProjectsDelete: TdxBarLargeButton;
    grd_Delphi: TcxGrid;
    grdDBTblView_Delphi: TcxGridDBTableView;
    grdDBTblViewCol_NameDelphi: TcxGridDBColumn;
    grdDBTblViewCol_PfadDelphi: TcxGridDBColumn;
    grdDBTblViewCol_LogoDelphi: TcxGridDBColumn;
    grdLvl_Delphi: TcxGridLevel;
    edt_Projectname: TcxDBTextEdit;
    edt_Projectpath: TcxDBButtonEdit;
    edt_ProjectMSBuild: TcxDBButtonEdit;
    grd_Git: TcxGrid;
    grdDBTblView_Git: TcxGridDBTableView;
    grdDBTblViewCol_NameGit: TcxGridDBColumn;
    grdDBTblViewCol_PfadGit: TcxGridDBColumn;
    grdDBTblViewCol_LogoGit: TcxGridDBColumn;
    grdLvl_Git: TcxGridLevel;
    edt_Scriptname: TcxDBTextEdit;
    img_GitLogo: TcxDBImage;
    edt_Scriptpath: TcxDBButtonEdit;
    brdckCtrl_Git: TdxBarDockControl;
    tb_Scripts: TdxBar;
    btn_ScriptNew: TdxBarLargeButton;
    btn_ScriptSave: TdxBarLargeButton;
    btn_ScriptCancel: TdxBarLargeButton;
    btn_ScriptDelete: TdxBarLargeButton;
    dlgOpen_Project: TdxOpenFileDialog;
    dlgOpen_Script: TdxOpenFileDialog;
    grdDBTblViewCol_ScriptDelphi: TcxGridDBColumn;
    qry_Scripts: TFDQuery;
    ds_Scripts: TDataSource;
    dlgOpen_ScriptGit: TdxOpenFileDialog;
    brdckCtrl_Other: TdxBarDockControl;
    tb_other: TdxBar;
    btn_OtherSave: TdxBarLargeButton;
    edt_other: TcxDBButtonEdit;
    qry_Config: TFDQuery;
    ds_Config: TDataSource;
    grdDBTblViewCol_64BitDelphi: TcxGridDBColumn;
    grdDBTblViewCol_32BitDelphi: TcxGridDBColumn;
    chkbx_64Bit: TcxDBCheckBox;
    chkbx_32Bit: TcxDBCheckBox;
    grdDBTblViewCol_MobileDelphi: TcxGridDBColumn;
    chkbx_Mobile: TcxDBCheckBox;
    grdDBTblViewCol_LizenzDelphi: TcxGridDBColumn;
    chkbx_Licence: TcxDBCheckBox;
    grdDBTblViewCol_LocalizeDelphi: TcxGridDBColumn;
    chkbx_Language: TcxDBCheckBox;
    img_DelphiLogo: TcxDBImage;
    img_ConfigHelpprogsLogo: TcxDBImage;
    grdDBTblView_DelphiNUMBER: TcxGridDBColumn;
    grdDBTblView_DelphiCONCATMajorMinorOutputBuild: TcxGridDBColumn;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit4: TcxDBMaskEdit;
    cxDBMaskEdit5: TcxDBMaskEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    grdDBTblView_DelphiBeschreibung: TcxGridDBColumn;
    dxBarDockControl1: TdxBarDockControl;
    tb_Rest: TdxBar;
    btn_RestSave: TdxBarLargeButton;
    btn_MSSQLtest: TcxButton;
    cmbbx_Type: TcxDBImageComboBox;
    cmbbx_port: TcxDBImageComboBox;
    edt_BaseUrl: TcxDBTextEdit;
    edt_Benutzer: TcxDBTextEdit;
    edt_Passwort: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
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
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutGroup35: TdxLayoutGroup;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutGroup42: TdxLayoutGroup;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutGroup44: TdxLayoutGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
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
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    procedure btn_HelperprogCancelClick(Sender: TObject);
    procedure btn_HelperprogDeleteClick(Sender: TObject);
    procedure btn_HelperprogNewClick(Sender: TObject);
    procedure btn_HelperprogSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_progpfadPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_ProjectsNewClick(Sender: TObject);
    procedure btn_ProjectsSaveClick(Sender: TObject);
    procedure btn_ProjectsCancelClick(Sender: TObject);
    procedure btn_ProjectsDeleteClick(Sender: TObject);
    procedure edt_ProjectpathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edt_ProjectMSBuildPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_ScriptNewClick(Sender: TObject);
    procedure btn_ScriptSaveClick(Sender: TObject);
    procedure btn_ScriptCancelClick(Sender: TObject);
    procedure btn_ScriptDeleteClick(Sender: TObject);
    procedure edt_ScriptpathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormActivate(Sender: TObject);
    procedure edt_otherPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_OtherSaveClick(Sender: TObject);
    procedure btn_MSSQLtestClick(Sender: TObject);
    procedure btn_RestSaveClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  frm_Config: Tfrm_Config;

implementation

{$R *.dfm}

uses PCM.Main, PCM.Data;

////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_Config.btn_HelperprogCancelClick(Sender: TObject);
begin
  qry_helpprogs.Cancel;
end;
procedure Tfrm_Config.btn_HelperprogDeleteClick(Sender: TObject);
begin
  if qry_helpprogs.FieldByName('ID').AsInteger > 0 then
  begin
    qry_helpprogs.Delete;
  end;
end;
procedure Tfrm_Config.btn_HelperprogNewClick(Sender: TObject);
begin
  if qry_helpprogs.State in [dsInsert, dsedit] then
    qry_helpprogs.Post;
  qry_helpprogs.Append;
  qry_helpprogs.Insert;
  edt_Progname.SetFocus;
end;
procedure Tfrm_Config.btn_HelperprogSaveClick(Sender: TObject);
begin
  if qry_helpprogs.State in [dsInsert, dsEdit] then
  begin
    edt_Progname.PostEditValue;
    edt_Progpfad.PostEditValue;
    qry_helpprogs.Post;
  end;
end;
procedure Tfrm_Config.btn_MSSQLtestClick(Sender: TObject);
var
  bHasError: boolean;
  JSONResult: TJSONObject;
begin
  try
    dm_PCM.sType:= cmbbx_Type.EditingText;
    dm_PCM.sBaseurl:= edt_BaseUrl.text;
    dm_PCM.sPort:= cmbbx_Port.EditingText;
    JSONResult := dm_PCM.GetRequest('', 'Checkserver',rmget) as TJSONObject;
    bHasError:= StrToBool(JSONResult.GetValue<TJSONBool>('HasError').ToString);
    if not bHasError then
    begin
      MessageDlg('Verbindungstest erfolgreich.',mtInformation,[mbOk],0);
    end
    else begin
      MessageDlg('Verbindungstest nicht erfolgreich.',mtInformation,[mbOk],0);
    end;
  except
    MessageDlg('Verbindungstest nicht erfolgreich.',mtInformation,[mbOk],0);
  end;
end;
procedure Tfrm_Config.edt_otherPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  Dir: string;
begin
  Dir := '';
  if SelectDirectory('Select a directory', '', Dir) then
  begin
    edt_other.EditingText :=  Dir;
  end
end;
procedure Tfrm_Config.edt_progpfadPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if dlgOpen_Helperexe.Execute then
    edt_ProgPfad.EditingText:= dlgOpen_Helperexe.FileName;
end;
procedure Tfrm_Config.btn_ProjectsCancelClick(Sender: TObject);
begin
  qry_Projects.Cancel;
end;
procedure Tfrm_Config.btn_ProjectsDeleteClick(Sender: TObject);
begin
  if qry_Projects.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Projects.Delete;
  end;
end;
procedure Tfrm_Config.btn_ProjectsNewClick(Sender: TObject);
begin
   if qry_Projects.State in [dsInsert, dsedit] then
    qry_Projects.Post;
  qry_Projects.Append;
  qry_Projects.Insert;
  edt_Projectname.SetFocus;
end;
procedure Tfrm_Config.btn_ProjectsSaveClick(Sender: TObject);
begin
  if qry_Projects.State in [dsInsert, dsEdit] then
  begin
    edt_Projectname.PostEditValue;
    edt_Projectpath.PostEditValue;
    edt_ProjectMSBuild.PostEditValue;
    qry_Projects.Post;
  end;
  qry_Projects.refresh;
end;
procedure Tfrm_Config.btn_RestSaveClick(Sender: TObject);
begin
  if qry_Config.State in [dsInsert, dsEdit] then
  begin
    qry_Config.Post;
  end;
end;
procedure Tfrm_Config.edt_ProjectpathPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if dlgOpen_Project.Execute then
    edt_projectpath.EditingText:= dlgOpen_Project.FileName;
end;
procedure Tfrm_Config.edt_ProjectMSBuildPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if dlgOpen_Script.Execute then
    edt_ProjectMSBuild.EditingText:= dlgOpen_Script.FileName;
end;
procedure Tfrm_Config.btn_ScriptCancelClick(Sender: TObject);
begin
  qry_Scripts.Cancel;
end;
procedure Tfrm_Config.btn_ScriptDeleteClick(Sender: TObject);
begin
  if qry_Scripts.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Scripts.Delete;
  end;
end;
procedure Tfrm_Config.btn_ScriptNewClick(Sender: TObject);
begin
   if qry_Scripts.State in [dsInsert, dsedit] then
    qry_Scripts.Post;
  qry_Scripts.Append;
  qry_Scripts.Insert;
  edt_sCRIPTname.SetFocus;
end;
procedure Tfrm_Config.btn_ScriptSaveClick(Sender: TObject);
begin
  if qry_Scripts.State in [dsInsert, dsEdit] then
  begin
    edt_Scriptname.PostEditValue;
    edt_Scriptpath.PostEditValue;
    qry_Scripts.Post;
  end;
end;
procedure Tfrm_Config.btn_OtherSaveClick(Sender: TObject);
var
  iCount: integer;
begin
  dm_pcm.qry_Work.SQL.Text:= 'SELECT Count(*) as Anzahl From devmanager_config';
  dm_pcm.qry_Work.Open;
  iCount:= dm_pcm.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_pcm.qry_Work.Close;
  if iCount > 0 then
  begin
    if qry_Config.State in [dsInsert, dsEdit] then
    begin
      edt_other.PostEditValue;
      qry_Config.Post;
    end;

  end
  else begin
    if qry_Config.State in [dsInsert, dsedit] then
//      qry_Config.Post;
//    qry_Config.Append;
//    qry_Config.Insert;
    edt_other.PostEditValue;
    qry_Config.Post;
  end;
  qry_Config.Refresh;
end;
procedure Tfrm_Config.edt_ScriptpathPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if dlgOpen_Scriptgit.Execute then
    edt_Scriptpath.EditingText:= dlgOpen_Scriptgit.FileName;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_Config.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;

procedure Tfrm_Config.FormShow(Sender: TObject);
  procedure opendata;
  begin
    qry_helpprogs.Open;
    qry_Projects.Open;
    qry_Scripts.Open;
    qry_config.Open;
  end;
begin
  opendata;
end;
{$EndRegion Formfunktionen}

end.

