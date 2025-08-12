unit PCM.Modul.E_Doku.Version;

interface

uses
  {$Region uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Soap.EncdDecd,
  cxGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, cxMemo, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxScrollBox, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxBar,
  cxClasses, cxDBEdit, cxButtonEdit, dxShellDialogs, SynEditHighlighter,
  SynHighlighterHtml, SynEdit, SynMemo, Vcl.ExtCtrls,system.UITypes,
  dxUIAClasses, dxCoreGraphics, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl, dxLayoutControlAdapters, cxImage, System.NetEncoding;
  {$EndRegion uses}
type
  {$Region Type}
  Tfrm_PCM_VersionDoku = class(TForm)
    brmgr_SQL: TdxBarManager;
    btn_Next: TdxBarLargeButton;
    btn_Prev: TdxBarLargeButton;
    btn_SQLCancel: TdxBarLargeButton;
    btn_SQLSave: TdxBarLargeButton;
    chkbx_leer: TcxCheckBox;
    chkbx_Newpage: TcxCheckBox;
    cmbbx_HeaderType: TcxComboBox;
    cmbbx_Prog: TcxComboBox;
    cmbbx_Sort: TcxComboBox;
    edt_Bez: TcxTextEdit;
    edt_bild: TcxButtonEdit;
    edt_Header: TcxTextEdit;
    edt_width: TcxMaskEdit;
    mem_content: TSynMemo;
    mem_statement: TSynMemo;
    odlg_Doc: TdxOpenFileDialog;
    qry_Allg: TFDQuery;
    synhl_Html: TSynHTMLSyn;
    tb_Main: TdxBar;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxImage1: TcxImage;
    cxButton1: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem14: TdxLayoutItem;
    cxButton2: TcxButton;
    procedure btn_SQLSaveClick(Sender: TObject);
    procedure btn_SQLCancelClick(Sender: TObject);
    procedure cmbbx_ProgPropertiesChange(Sender: TObject);
    procedure edt_bildPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_PrevClick(Sender: TObject);
    procedure btn_NextClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private-Deklarationen }
    bNew: boolean;
    FID: integer;
    sBild: String;
  public
    { Public-Deklarationen }
    procedure AssignImageFromBase64(Base64Str: string);
    procedure Execute(ANew: boolean;AID: integer;AProgram: string; ASort: Integer;ADescription,ADesc,AHeader,AContent,ABild,AHeadertype: String;ANewPage: boolean;AWidth: Double; ALeer: boolean);
  end;
  {$EndRegion Type}
var
  frm_PCM_VersionDoku: Tfrm_PCM_VersionDoku;
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,
  PCM.Helper,
  PCM.Devmanager.Strings;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Helperfunctions}
procedure Tfrm_PCM_VersionDoku.AssignImageFromBase64(Base64Str: string);
var
  Bytes: TBytes;
  Stream: TBytesStream;
begin
  Bytes := TNetEncoding.Base64.DecodeStringToBytes(Base64Str);
  Stream := TBytesStream.Create(Bytes);
  try
    cxImage1.Picture.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;
procedure Tfrm_PCM_VersionDoku.Execute(ANew: boolean;AID: integer;AProgram: string; ASort: Integer;ADescription,ADesc,AHeader,AContent,ABild,AHeadertype: String;ANewPage: boolean;AWidth: Double; ALeer: boolean);
begin
  FID:= AID;
  dm_PCM.qry_Work.SQL.Text:= 'SELECT Programm FROM lizenzgenerator_programme GROUP BY Programm ORDER BY Programm';
  dm_PCM.qry_Work.Open;
  cmbbx_Prog.Properties.Items.Clear;
  while not dm_PCM.qry_Work.Eof do
  begin
    cmbbx_Prog.Properties.Items.Add(StringReplace(dm_PCM.qry_Work.FieldByName('Programm').AsString,'-',' - ',[rfIgnoreCase,rfReplaceAll]));
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;


  bNew:= ANew;
  if ANew then
  begin
    btn_SQLSave.caption:= rs_PCMDevManager_BTNVerNew;
    cmbbx_Prog.ItemIndex:= -1;
    edt_width.EditValue:= 0;
  end
  else
  begin
    sBild:= dm_PCM.qry_Doku.FieldByName('BildBase64').AsString;
    chkbx_leer.Checked:= ALeer;
    chkbx_Newpage.Checked:= ANewPage;
    cmbbx_HeaderType.ItemIndex:=  cmbbx_HeaderType.Properties.Items.IndexOf(AHeadertype);
    cmbbx_Prog.ItemIndex:=  cmbbx_Prog.Properties.Items.IndexOf(AProgram);
    cmbbx_Sort.ItemIndex:= ASort-1;
    edt_Bez.Text:= ADesc;
    edt_bild.Text:= ABild;
    edt_Header.text:= AHeader;
    edt_width.EditValue:= AWidth;
    mem_Statement.text:= ADescription;
    mem_Content.text:= AContent;
    if sBild <> '' then
      AssignImageFromBase64(sBild)
    else
      cxButton2click(Self);
  end;
end;
{$EndRegion Helperfunctions}
////////////////////////////////////////////////////////////////////////////////
// Buttonfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_PCM_VersionDoku.cmbbx_ProgPropertiesChange(Sender: TObject);
begin
  if bnew then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'SELECT MAX(Sortierung) AS Maximal FROM doku_body';
    dm_PCM.qry_Work.Open;
    cmbbx_Sort.ItemIndex:= dm_PCM.qry_Work.FieldByName('Maximal').AsInteger;
    dm_PCM.qry_Work.Close;
  end;
end;
procedure Tfrm_PCM_VersionDoku.cxButton1Click(Sender: TObject);
  procedure EncodeImageFileToBase64(AFileName: string);
  var
    InputStream: TMemoryStream;
    OutputStream: TStringStream;
  begin
    InputStream := TMemoryStream.Create;
    OutputStream := TStringStream.Create('', TEncoding.ASCII); // ASCII is sufficient for Base64
    try
      // Load image data from file into stream (supports PNG, JPEG, BMP, etc.)
      InputStream.LoadFromFile(AFileName);

      // Rewind the stream position for encoding
      InputStream.Position := 0;

      // Encode to Base64, writing the encoded text to OutputStream
      TNetEncoding.Base64.Encode(InputStream, OutputStream);
      sBild := OutputStream.DataString;
    finally
      InputStream.Free;
      OutputStream.Free;
    end;
  end;


  procedure BitmapFromBase64(Base64Str: String);
  var
    Input: TStringStream;
    Output: TBytesStream;
    ABitmap: TBitmap;
  begin
    Input := TStringStream.Create(Base64Str, TEncoding.ASCII);
    try
      Output := TBytesStream.Create;
      try
        Soap.EncdDecd.DecodeStream(Input, Output);
        Output.Position := 0;
        ABitmap := TBitmap.Create;
        try
          ABitmap.LoadFromStream(Output);
          cxImage1.Picture.Assign(ABitmap);
          ABitmap.Free;
        except
          ABitmap.Free;
          raise;
        end;
      finally
        Output.Free;
      end;
    finally
      Input.Free;
    end;
  end;




//  procedure AssignImageFromBase64(Base64Str: string);
//  var
//    DecodedStream: TMemoryStream;
//  begin
//    DecodedStream := TMemoryStream.Create;
//    try
//      // Decode the Base64 string into the memory stream
//      TNetEncoding.Base64.Decode(Base64Str, DecodedStream);
//      DecodedStream.Position := 0; // reset position
//      // Load the image into the TcxImage
//      cxImage1.Picture.LoadFromStream(DecodedStream);
//    finally
//      DecodedStream.Free;
//    end;
//  end;
var
  sBildimage: string;
begin
  if odlg_Doc.Execute then
      sBildimage:= odlg_Doc.FileName;
  if sBildimage <> '' then
  begin
    EncodeImageFileToBase64(sBildimage);
    AssignImageFromBase64(sBild);
  end;
end;
procedure Tfrm_PCM_VersionDoku.cxButton2Click(Sender: TObject);
begin
  cxImage1.Picture:= nil;
end;
procedure Tfrm_PCM_VersionDoku.edt_bildPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if odlg_Doc.Execute then
    edt_bild.text:= odlg_Doc.FileName;
end;
procedure Tfrm_PCM_VersionDoku.btn_NextClick(Sender: TObject);
begin

  btn_SQLSaveClick(btn_Next);
  dm_PCM.qry_Doku.Next;
  sBild:= dm_PCM.qry_Doku.FieldByName('BildBase64').AsString;
  cmbbx_Prog.ItemIndex:= cmbbx_Prog.Properties.Items.IndexOf(dm_PCM.qry_Doku.FieldByName('Program').asString);
  cmbbx_Sort.ItemIndex:= dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger-1;
  edt_Bez.Text:= dm_PCM.qry_Doku.FieldByName('Beschreibung').AsString;
  mem_Statement.text:= dm_PCM.qry_Doku.FieldByName('Body').AsString;
  edt_Header.text:= dm_PCM.qry_Doku.FieldByName('header').asString;
  mem_Content.text:= dm_PCM.qry_Doku.FieldByName('content').AsString;
  edt_bild.Text:= dm_PCM.qry_Doku.FieldByName('Bild').AsString;
  cmbbx_HeaderType.ItemIndex:=  cmbbx_HeaderType.Properties.Items.IndexOf(dm_PCM.qry_Doku.FieldByName('Headertype').AsString);
  chkbx_NewPage.Checked:= dm_PCM.qry_Doku.FieldByName('Newpage').AsBoolean;
  edt_width.EditValue:= dm_PCM.qry_Doku.FieldByName('Breite').AsFloat;
  chkbx_Leer.Checked:= dm_PCM.qry_Doku.FieldByName('leerzeile').AsBoolean;
  FID:= dm_PCM.qry_Doku.FieldByName('ID').asInteger;
  if sBild <> '' then
    AssignImageFromBase64(sBild)
  else
    cxButton2click(Sender);
end;
procedure Tfrm_PCM_VersionDoku.btn_PrevClick(Sender: TObject);
begin
  btn_SQLSaveClick(btn_Prev);
  dm_PCM.qry_Doku.Prior;
  sBild:= dm_PCM.qry_Doku.FieldByName('BildBase64').AsString;
  cmbbx_Prog.ItemIndex:= cmbbx_Prog.Properties.Items.IndexOf(dm_PCM.qry_Doku.FieldByName('Program').asString);
  cmbbx_Sort.ItemIndex:= dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger-1;
  edt_Bez.Text:= dm_PCM.qry_Doku.FieldByName('Beschreibung').AsString;
  mem_Statement.text:= dm_PCM.qry_Doku.FieldByName('Body').AsString;
  edt_Header.text:= dm_PCM.qry_Doku.FieldByName('header').asString;
  mem_Content.text:= dm_PCM.qry_Doku.FieldByName('content').AsString;
  edt_bild.Text:= dm_PCM.qry_Doku.FieldByName('Bild').AsString;
  cmbbx_HeaderType.ItemIndex:=  cmbbx_HeaderType.Properties.Items.IndexOf(dm_PCM.qry_Doku.FieldByName('Headertype').AsString);
  chkbx_NewPage.Checked:= dm_PCM.qry_Doku.FieldByName('Newpage').AsBoolean;
  edt_width.EditValue:= dm_PCM.qry_Doku.FieldByName('Breite').AsFloat;
  chkbx_Leer.Checked:= dm_PCM.qry_Doku.FieldByName('leerzeile').AsBoolean;
  FID:= dm_PCM.qry_Doku.FieldByName('ID').asInteger;
  if sBild <> '' then
    AssignImageFromBase64(sBild)
  else
    cxButton2click(Sender);

end;
procedure Tfrm_PCM_VersionDoku.btn_SQLCancelClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_PCM_VersionDoku.btn_SQLSaveClick(Sender: TObject);
begin
  if cmbbx_Prog.ItemIndex = -1 then
  begin
    SetMessageDialog(2,rs_PCMDevManager_MSGCHooseProgramm,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    exit;
  end;
  if cmbbx_Sort.ItemIndex = -1 then
  begin
    SetMessageDialog(2,rs_PCMDevManager_MSGCHooseSort,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    exit;
  end;
  if edt_Bez.Text = '' then
  begin
    SetMessageDialog(2,rs_PCMDevManager_MSGSetDesc,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    exit;
  end;

  if bNew then
  begin
    qry_Allg.SQL.Text:= 'Insert INTO doku_body ' +
                        '(Beschreibung,Program,body,Sortierung,header,headertype,content,bild,newpage,Breite,Leerzeile;BildBase64) VALUES (:Beschreibung,:Program,:body,:Sortierung,:header,:headertype,:content,:bild,:newpage,:Breite,:Leerzeile,:BildBase64)';
    qry_Allg.ParamByName('Beschreibung').asString:=  edt_Bez.text;
    qry_Allg.ParamByName('Program').AsString:=  cmbbx_Prog.Properties.Items[cmbbx_Prog.ItemIndex];
    qry_Allg.ParamByName('body').AsString:=  mem_Statement.Text;
    qry_Allg.ParamByName('Sortierung').asInteger:= cmbbx_Sort.ItemIndex + 1;
    qry_Allg.ParamByName('header').asString:=  edt_header.text;
    qry_Allg.ParamByName('content').AsString:= mem_content.Text;
    qry_Allg.ParamByName('Bild').asString:= edt_bild.Text;
    qry_Allg.ParamByName('headertype').asString:= cmbbx_HeaderType.Properties.Items[cmbbx_HeaderType.ItemIndex];
    if chkbx_Newpage.checked then
      qry_Allg.ParamByName('newpage').asString:= 'True'
    else
      qry_Allg.ParamByName('newpage').asString:= 'False';
    qry_Allg.ParamByName('Breite').asFloat:= edt_width.EditingValue;

    if chkbx_leer.checked then
      qry_Allg.ParamByName('Leerzeile').asString:= 'True'
    else
      qry_Allg.ParamByName('Leerzeile').asString:= 'False';
    qry_Allg.ParamByName('BildBase64').AsMemo:= sbild;

    qry_Allg.ExecSQL;
  end
  else begin
    qry_Allg.SQL.Text:= 'Update doku_body ' +
                        'Set Beschreibung = :Beschreibung, ' +
                        'Program= :Program, ' +
                        'body= :body, ' +
                        'Sortierung= :Sortierung, ' +
                        'header=:header, ' +
                        'headertype=:headertype, ' +
                        'content= :content, ' +
                        'Bild= :Bild, ' +
                        'newpage= :newpage, ' +
                        'Breite= :Breite, ' +
                        'Leerzeile= :Leerzeile, ' +
                        'BildBase64= :BildBase64 ' +
                        'WHERE ID = :ID';
    qry_Allg.ParamByName('Beschreibung').asString:=  edt_Bez.text;
    qry_Allg.ParamByName('Program').AsString:=  cmbbx_Prog.Properties.Items[cmbbx_Prog.ItemIndex];
    qry_Allg.ParamByName('body').AsString:=  mem_Statement.Text;
    qry_Allg.ParamByName('Sortierung').asInteger:= cmbbx_Sort.ItemIndex + 1;
    qry_Allg.ParamByName('header').asString:=  edt_header.text;
    qry_Allg.ParamByName('content').AsString:= mem_content.Text;
    qry_Allg.ParamByName('Bild').asString:= edt_bild.Text;
    qry_Allg.ParamByName('headertype').asString:= cmbbx_HeaderType.Properties.Items[cmbbx_HeaderType.ItemIndex];
    if chkbx_Newpage.checked then
      qry_Allg.ParamByName('newpage').asString:= 'True'
    else
      qry_Allg.ParamByName('newpage').asString:= 'False';
    qry_Allg.ParamByName('Breite').asFloat:= edt_width.EditingValue;
    if chkbx_leer.checked then
      qry_Allg.ParamByName('Leerzeile').asString:= 'True'
    else
      qry_Allg.ParamByName('Leerzeile').asString:= 'False';
    qry_Allg.ParamByName('ID').asInteger:= FID;
    qry_Allg.ParamByName('BildBase64').AsMemo:= sbild;
    qry_Allg.ExecSQL;

  end;
  dm_PCM.qry_Doku.Refresh;
  if (Sender as TdxBarLargeButton).Caption = rs_PCMDevManager_BTNVerSav then
  begin
    Close;
  end;
end;
{$EndRegion Buttonfunktionen}
end.
