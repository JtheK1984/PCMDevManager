unit PCM.Modul.C_Entwicklung.NewProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,FileCtrl,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, dxLayoutContainer, cxClasses, cxMemo, cxDBEdit, cxCheckBox,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxImage, dxLayoutControl;

type
  Tfrm_NewProject = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    img_DelphiLogo: TcxDBImage;
    edt_ProjectMSBuild: TcxDBButtonEdit;
    edt_Projectname: TcxDBTextEdit;
    edt_Projectpath: TcxDBButtonEdit;
    chkbx_32Bit: TcxDBCheckBox;
    chkbx_64Bit: TcxDBCheckBox;
    chkbx_Mobile: TcxDBCheckBox;
    chkbx_Licence: TcxDBCheckBox;
    chkbx_Language: TcxDBCheckBox;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit4: TcxDBMaskEdit;
    cxDBMaskEdit5: TcxDBMaskEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
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
    dxLayoutItem28: TdxLayoutItem;
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
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure edt_ProjectpathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frm_NewProject: Tfrm_NewProject;

implementation

{$R *.dfm}

uses
  PCM.data,
  PCM.Strings,
  PCM.Modul.C_Entwicklung;
procedure Tfrm_NewProject.cxButton2Click(Sender: TObject);
begin
  frm_Dev.qry_projects.cancel;
  Close;
end;

procedure Tfrm_NewProject.edt_ProjectpathPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  directory: String;
begin
  if SelectDirectory(rs_PCMBackup_Ordnerwaehlen, '' ,directory) then
  begin
    edt_Projectpath.text := IncludeTrailingPathDelimiter(directory);
  end
end;

end.
