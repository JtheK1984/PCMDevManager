unit PCM.Modul.E_Doku.Programm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGroupBox, dxBar, Vcl.Menus, Vcl.StdCtrls, cxButtons, System.UITypes,
  dxUIAClasses, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_DokuCreate = class(TForm)
    cmbbx_Prog: TcxComboBox;
    btn_Cancel: TcxButton;
    btn_Save: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure cmbbx_ProgKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private-Deklarationen }
    FShowModal : boolean;
  public
    { Public-Deklarationen }
    function Execute(AModal: boolean; out Applikation: string): Boolean;
  end;
  {$EndRegion Type}
var
  frm_DokuCreate: Tfrm_DokuCreate;

implementation

{$R *.dfm}

uses  PCM.Data,
      PCM.Modul.E_Doku, PCM.Strings;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Helperfunctions}
function Tfrm_DokuCreate.Execute(AModal: boolean; out Applikation: string): Boolean;
begin
  result:= false;
  dm_PCM.qry_Work.SQL.Text:= 'SELECT Programm FROM lizenzgenerator_programme GROUP BY Programm ORDER BY Programm';
  dm_PCM.qry_Work.Open;
  cmbbx_Prog.Properties.Items.Clear;
  cmbbx_Prog.Properties.Items.Add(rs_PCMDevManager_CMBBX_Alle);
  while not dm_PCM.qry_Work.Eof do
  begin
    cmbbx_Prog.Properties.Items.Add(StringReplace(dm_PCM.qry_Work.FieldByName('Programm').AsString,'-',' - ',[rfIgnoreCase,rfReplaceAll]));
    dm_PCM.qry_Work.Next;
  end;
  cmbbx_Prog.ItemIndex:= 0;
  if frm_Doku.sApplikationCur <> '' then
    cmbbx_Prog.ItemIndex:= cmbbx_Prog.Properties.Items.IndexOf(frm_Doku.sApplikationCur);
  dm_PCM.qry_Work.Close;
  FShowModal := AModal;
  if FShowModal then
  begin
    ShowModal;
    if ModalResult = mrOK then
    begin
      if cmbbx_Prog.ItemIndex <> -1 then
      begin
        Applikation := cmbbx_Prog.Properties.Items[cmbbx_Prog.ItemIndex];
      end
      else
      begin
        MessageDlg(rs_PCMDevManager_MSGChooseApp,mtWarning,[mbOk],0);
        exit;
      end;
      result:= true;
    end;
  end;
end;
{$EndRegion Helperfunctions}
////////////////////////////////////////////////////////////////////////////////
// Buttonfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_DokuCreate.btn_SaveClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;
procedure Tfrm_DokuCreate.cmbbx_ProgKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) and (cmbbx_Prog.ItemIndex > -1) then
    btn_SaveClick(Sender);
end;

procedure Tfrm_DokuCreate.btn_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;
{$EndRegion Buttonfunktionen}
end.
