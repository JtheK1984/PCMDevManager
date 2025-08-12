unit PCM.Modul.F_Update.Version;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, cxMemo, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxScrollBox, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  cxClasses, cxDBEdit, dxUIAClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters;

type
  Tfrm_PCM_Version = class(TForm)
    dtedt_Date: TcxDateEdit;
    edt_Version: TcxTextEdit;
    edt_Beschreibung: TcxTextEdit;
    mem_Statement: TcxMemo;
    qry_Allg: TFDQuery;
    cmbbx_SQLStatement: TcxComboBox;
    edt_Tablename: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cmbbx_Datatype: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    brmgr_SQL: TdxBarManager;
    tb_Main: TdxBar;
    btn_SQLSave: TdxBarLargeButton;
    btn_SQLCancel: TdxBarLargeButton;
    tb_Sql: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    btn_TableNew: TdxBarLargeButton;
    btn_TableSave: TdxBarLargeButton;
    btn_TableCancel: TdxBarLargeButton;
    btn_TableDelete: TdxBarLargeButton;
    edt_Nachkomma: TcxDBTextEdit;
    cxTextEdit3: TcxDBTextEdit;
    cxTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxBarDockControl2: TdxBarDockControl;
    grpbx_1date: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    grpbx_2Version: TdxLayoutItem;
    grpbx_3Beschreibung: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    grpbx_4SQL: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    grd_Columns: TcxGrid;
    grd_ColumnsDBTableView1: TcxGridDBTableView;
    grd_ColumnsLevel1: TcxGridLevel;
    grpbx_5Statement: TdxLayoutItem;
    procedure edt_TablenamePropertiesEditValueChanged(Sender: TObject);
    procedure btn_SQLSaveClick(Sender: TObject);
    procedure btn_SQLCancelClick(Sender: TObject);
  private
    { Private-Deklarationen }
    bNew: boolean;
    sStatement: string;
//    procedure SetPanelsVisible(AVisible: boolean);
  public
    { Public-Deklarationen }
    procedure Execute(ANew: boolean;AID: integer;AProgram: string;ADate: TDate;Aversion,ADesccription,AStatement,ATable: String);
  end;

var
  frm_PCM_Version: Tfrm_PCM_Version;

implementation

{$R *.dfm}

uses
  PCM.Data,
  PCM.Devmanager.Strings;
////////////////////////////////////////////////////////////////////////////////
// HELPER                                                                     //
////////////////////////////////////////////////////////////////////////////////
//procedure Tfrm_PCM_Version.SetPanelsVisible(AVisible: boolean);
//begin
//  grpbx_1date.visible:= AVisible;
//
//  grpbx_2Version.visible:= AVisible;
//
//  grpbx_3Beschreibung.visible:= AVisible;
//  grpbx_4SQL.visible:= AVisible;
//  grpbx_5Statement.visible:= AVisible;
//end;
////////////////////////////////////////////////////////////////////////////////
// MAIN                                                                     //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Version.btn_SQLSaveClick(Sender: TObject);
begin
    if bNew then
    begin
//      iMain: integer;
//      iSub: integer;
//
//      qry_Allg.SQL.Text:= 'Insert INTO manager_updateversion ' +
//                          '(Programm,VersionDate,VersionMain,VersionSub,Description,Statement) ' +
//                          'VALUES ' +
//                          '(:Programm,:VersionDate,:VersionMain,:VersionSub,:Description,:Statement)';
//      qry_Allg.ParamByName('Programm').AsInteger:=  Integer(cmbbx_Programm.properties.Items.Objects[cmbbx_Programm.ItemIndex]);
//      qry_Allg.ParamByName('VersionDatum').AsDate:= dtedt_Date.Date;
//      qry_Allg.ParamByName('VersionMain').AsInteger:= iMajor;
//      qry_Allg.ParamByName('VersionSub').AsInteger:= iMinor;
//      qry_Allg.ParamByName('Description').AsString:= sBeschreibung;
//      qry_Allg.ParamByName('Statement').asMemo:= StringReplace(sStatement, #9,'', [rfReplaceAll]);
    end
    else begin

    end
end;

procedure Tfrm_PCM_Version.btn_SQLCancelClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_PCM_Version.edt_TablenamePropertiesEditValueChanged(Sender: TObject);
begin
  if edt_Tablename.Text <> '' then
  begin
    case cmbbx_SQLStatement.itemindex of
    1:
      begin
//        cmbbx_Datatype.itemindex:=
//        ShowMEssage(GetDBDataType(sStatement,cmbbx_SQLStatement.ItemIndex));
      end;

    end;
  end;
end;

procedure Tfrm_PCM_Version.Execute(ANew: boolean;AID: integer;AProgram: string;ADate: TDate;Aversion,ADesccription,AStatement,ATable: String);
  function SetSQLStatementCombo(AStatement:String): string;
  begin
    Result:= '';
    if Pos('CREATE TABLE IF NOT EXISTS',AStatement) > 0 then
    begin
      Result:= 'CREATE TABLE IF NOT EXISTS';
      exit;
    end;
    if Pos('ALTER TABLE',AStatement) > 0 then
    begin
      Result:= 'ALTER TABLE';
      exit;
    end;
    if Pos('INSERT INTO',AStatement) > 0 then
    begin
      Result:= 'INSERT INTO';
      exit;
    end;
    if Pos('UPDATE',AStatement) > 0 then
    begin
      Result:= 'UPDATE';
      exit;
    end;
    if Pos('DELETE FROM',AStatement) > 0 then
    begin
      Result:= 'DELETE FROM';
      exit;
    end;
  end;
var
  dDate: TDate;
  sMain: string;
  sSub: string;
begin
  bNew:= ANew;
  sStatement:= AStatement;
  if ANew then
  begin
    dtedt_Date.date:= ADate;
    edt_Beschreibung.text:= '';
    mem_Statement.text:= '';
    btn_SQLSave.caption:= rs_PCMDevManager_BTNVerNew;
//    SetPanelsVisible(False);
  end
  else begin
    dtedt_Date.date:= ADate;
    edt_Version.text:= AVersion;
    edt_Beschreibung.text:= ADesccription;
    mem_Statement.text:= AStatement;
    cmbbx_SQLStatement.ItemIndex:=  cmbbx_SQLStatement.Properties.Items.IndexOf(SetSQLStatementCombo(AStatement));
    edt_Tablename.text:= ATable;
    qry_allg.SQL.Text:= 'SELECT VersionDate,VersionMain,Versionsub FROM update_updateversion ' +
                        'WHERE ID = (SELECT MAx(ID) FROM update_updateversion WHERE Programm = :Programm)';
    qry_Allg.ParamByName('Programm').asInteger:= 1;
    qry_Allg.open;
    dDate:= qry_Allg.FieldByName('VersionDate').AsDateTime;
    sMain:= qry_Allg.FieldByName('VersionMain').asString;
    sSub:= qry_Allg.FieldByName('VersionSub').asString;
    qry_Allg.Close;
    if dDate = Date() then
      edt_Version.Text:= sMain + '.' + sSub
    else
      edt_Version.Text:= sMain + '.' + IntToStr(StrToInt(sSub) + 1);
    btn_sqlSave.caption:= rs_PCMDevManager_BTNVerSav;
//    SetPanelsVisible(True);
  end;
end;

end.
