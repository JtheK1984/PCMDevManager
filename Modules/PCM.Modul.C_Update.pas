unit PCM.Modul.C_Update;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, cxGroupBox, System.Win.ComObj, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxBar, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxClasses, System.ImageList, Vcl.ImgList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, cxLocalization,
  cxDBLookupComboBox, cxMemo, cxDBEdit, cxPC, cxSplitter,
  dxDockControl, cxImageList, cxDropDownEdit, dxSparkline,
  cxBarEditItem, XMLIntf, XMLDoc, dxBarBuiltInMenu, dxUIAClasses,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControl;


type
  Tfrm_Update = class(TForm)
    brmgr_Main: TdxBarManager;
    tb_main: TdxBar;
    tv_Version: TcxGridDBTableView;
    grdLvl_Version: TcxGridLevel;
    grd_Version: TcxGrid;
    btn_VersionNew: TdxBarLargeButton;
    btn_VersionImport: TdxBarLargeButton;
    btn_VersionChange: TdxBarLargeButton;
    btn_VersionExport: TdxBarLargeButton;
    tv_VersionProgramm: TcxGridDBColumn;
    tv_VersionDescription: TcxGridDBColumn;
    tv_VersionStatement: TcxGridDBColumn;
    tv_VersionVERSIONDate: TcxGridDBColumn;
    tv_VersionVersion: TcxGridDBColumn;
    mem_Statement: TcxDBMemo;
    imglst_16x16: TcxImageList;
    dxBarDockControl1: TdxBarDockControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure btn_VersionImportClick(Sender: TObject);
    procedure btn_VersionNewClick(Sender: TObject);
    procedure btn_VersionChangeClick(Sender: TObject);
    procedure btn_VersionExportClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frm_Update: Tfrm_Update;

implementation

{$R *.dfm}

uses PCM.Data, PCM.Functions, PCM.Modul.C_Update.Import, PCM.Modul.C_Update.Version;

procedure Tfrm_Update.btn_VersionChangeClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Version, frm_PCM_Version);
  frm_PCM_Version.Execute(false,
                          dm_PCM.qry_Versions.FieldByName('ID').AsInteger,
                          dm_PCM.qry_Versions.FieldByName('Program').asString,
                          dm_PCM.qry_Versions.FieldByName('VersionDate').AsDateTime,
                          dm_PCM.qry_Versions.FieldByName('Version').AsString,
                          dm_PCM.qry_Versions.FieldByName('Description').AsString,
                          dm_PCM.qry_Versions.FieldByName('Statement').AsString,
                          dm_PCM.qry_Versions.FieldByName('Table_Update').AsString);
  frm_PCM_Version.Show;
end;
procedure Tfrm_Update.btn_VersionExportClick(Sender: TObject);
var
  MyStringList: TStringList;
begin
  MyStringList := TStringList.Create;
  try
    MyStringList.Add('<?xml version="1.0" encoding="ISO-8859-1"?>');
    MyStringList.Add('<?DOCTYPE PCMANAGERUPDATE SYSTEM "PCMANAGERUPDATE.dtd"?>');
    MyStringList.Add('<?xml-stylesheet type="text/xsl" href="PCMANAGERUPDATE.xsl"?>');
    MyStringList.Add('<PCMANAGERUPDATE>');
    MyStringList.Add('	<database name="PCM_MANAGER"><!-- PC_Manager-Datenbank -->');
//    dm_PCM.qry_Work.SQL.Text:=






    MyStringList.Add('	</database>');
    MyStringList.Add('</PCMANAGERUPDATE>');
    MyStringList.SaveToFile('file.xml', TEncoding.GetEncoding(28591));
  finally
    MyStringList.Free;
  end;
end;
procedure Tfrm_Update.btn_VersionImportClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Import, frm_PCM_Import);
  frm_PCM_Import.Show;
end;
procedure Tfrm_Update.btn_VersionNewClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Version, frm_PCM_Version);
  frm_PCM_Version.Execute(True,0,'PCM-Manager',Date(),'','','','');
  frm_PCM_Version.Show;
end;
procedure Tfrm_Update.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Update.FormShow(Sender: TObject);
  procedure Opendata;
  begin
    dm_pcm.qry_versions.open;
  end;
begin
  Opendata;
  if dm_PCM.qry_Versions.RecordCount > 0 then
  begin
    btn_VersionNew.Enabled:= true;
    btn_VersionChange.Enabled:= true;
  end;
end;

end.
