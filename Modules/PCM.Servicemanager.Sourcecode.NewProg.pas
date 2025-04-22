unit PCM.Servicemanager.Sourcecode.NewProg;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, Vcl.ExtCtrls, cxImage,
  cxGroupBox, dxUIAClasses, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl;
  {$EndRegion Uses}
type
  {$Region Type}
  TfSourceBackup_NewConfig = class(TForm)
    btn_Abort: TcxButton;
    btn_Ok: TcxButton;
    edt_ConfigName: TcxTextEdit;
    img_Config: TcxImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    procedure btn_AbortClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure edt_ConfigNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute: String;
  end;
  {$EndRegion Type}
var
  fSourceBackup_NewConfig: TfSourceBackup_NewConfig;

implementation

{$R *.dfm}

uses
 PCM.Data;
////////////////////////////////////////////////////////////////////////////////
// Helper Functions                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Helper Functions}
function TfSourceBackup_NewConfig.Execute: String;
begin
  ShowModal;
  if ModalResult = mrOK then
    Result := edt_ConfigName.Text
  else
    Result := '';
end;
{$EndRegion Helper Functions}
////////////////////////////////////////////////////////////////////////////////
// Button Functions                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Button Functions}
procedure TfSourceBackup_NewConfig.btn_AbortClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;
procedure TfSourceBackup_NewConfig.btn_OkClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;
procedure TfSourceBackup_NewConfig.edt_ConfigNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = 13) and (Length(edt_ConfigName.Text) > 0) then
    btn_OkClick(Sender);
end;

{$EndRegion Button Functions}
end.
