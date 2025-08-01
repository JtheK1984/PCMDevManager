unit PCM.Modul.C_Entwicklung.Sourcecode.Extension;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxCheckListBox, dxGDIPlusClasses, Vcl.ExtCtrls, DB,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxmdaset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, dxDateRanges,
  dxScrollbarAnnotations, cxGroupBox, cxImage, dxUIAClasses, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters, dxLayoutControlAdapters;
  {$EndRegion Uses}
type
  {$Region type}
  TfSourceBackup_FileExt = class(TForm)
    btn_Ok: TcxButton;
    btn_Abort: TcxButton;
    dtsFileExt: TDataSource;
    edt_Search: TcxTextEdit;
    grd_FileExt: TcxGrid;
    grdDBTblView_FileExt: TcxGridDBTableView;
    grdDBTblView_FileExtBackup: TcxGridDBColumn;
    grdDBTblView_FileExtExtension: TcxGridDBColumn;
    grdDBTblView_FileExtRecId: TcxGridDBColumn;
    grdlvl_FileExt: TcxGridLevel;
    img_extension: TcxImage;
    md_FileExt: TdxMemData;
    md_FileExtAllNr: TIntegerField;
    md_FileExtBackup: TBooleanField;
    md_FileExtExtension: TStringField;
    md_FileExtNr: TIntegerField;
    md_FileExtAll: TdxMemData;
    md_FileExtAllBackup: TBooleanField;
    md_FileExtAllExtension: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    procedure btn_AbortClick(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure edt_SearchEnter(Sender: TObject);
    procedure edt_SearchExit(Sender: TObject);
    procedure edt_SearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grdDBTblView_FileExtCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdDBTblView_FileExtEditKeyUp(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
  private
    { Private-Deklarationen }
    sFolder: String;
    dsFileExt: TDataSet;
    procedure FindAllFiles(var FileList: TStrings; RootFolder: string; Mask: string = '*.*'; Recurse: Boolean = True);
    procedure MarkBackup;
  public
    { Public-Deklarationen }
    function Execute(AFolder: String; AdsFileExt: TDataSet): String;
  end;
  {$EndRegion type}
var
  fSourceBackup_FileExt: TfSourceBackup_FileExt;

implementation

{$R *.dfm}

uses PCM.Main,PCM.Data,PCM.Functions.Synch.Wait, PCM.Strings;

////////////////////////////////////////////////////////////////////////////////
// Helper Functions                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Helper Functions}
function TfSourceBackup_FileExt.Execute(AFolder: String; AdsFileExt: TDataSet): String;
var
  lstNewFileExt: TStringList;
begin
  sFolder := AFolder;
  dsFileExt := ADSFileExt;
  ShowModal;

  if ModalResult = mrOK then
  begin
    // Alles OK
    lstNewFileExt := TStringList.Create;
    try
      md_FileExtAll.First;
      grdDBTblView_FileExt.DataController.DataSource := nil;
      while not md_FileExtAll.Eof do
      begin
        if md_FileExtAll.FieldByName('Backup').AsBoolean then
          lstNewFileExt.Add(md_FileExtAll.FieldByName('Extension').AsString);
        md_FileExtAll.Next;
      end;

      if lstNewFileExt.Count > 0 then
        Result := lstNewFileExt.CommaText
      else
        Result := '';

    finally
      lstNewFileExt.Free;
    end;
  end
  else
    Result := '';

  md_FileExtAll.Close;
end;
procedure TfSourceBackup_FileExt.FindAllFiles(var FileList: TStrings;RootFolder, Mask: string; Recurse: Boolean);
var
  SR: TSearchRec;
begin
  RootFolder := IncludeTrailingPathDelimiter(RootFolder);

  if Recurse then
    if FindFirst(RootFolder + '*.*', faAnyFile, SR) = 0 then
    try
      repeat
        if SR.Attr and faDirectory = faDirectory then
          if (SR.Name <> '.') and (SR.Name <> '..') then
            FindAllFiles(FileList, RootFolder + SR.Name, Mask, Recurse);
      until FindNext(SR) <> 0;
    finally
      FindClose(SR);
    end;
  if FindFirst(RootFolder + Mask, faAnyFile, SR) = 0 then
  try
    repeat
      if SR.Attr and faDirectory <> faDirectory then
      begin
        FileList.Add(RootFolder + SR.Name);
      end;
    until FindNext(SR) <> 0;
  finally
    FindClose(SR);
  end;
end;
procedure TfSourceBackup_FileExt.MarkBackup;
begin
  md_FileExt.Edit;
  md_FileExt.FieldByName('Backup').AsBoolean := not md_FileExt.FieldByName('Backup').AsBoolean;
  md_FileExt.Post;
  if md_FileExtAll.Locate('Nr', md_FileExt.FieldByName('Nr').AsInteger, []) then
  begin
    md_FileExtAll.Edit;
    md_FileExtAll.FieldByName('Backup').AsBoolean := not md_FileExtAll.FieldByName('Backup').AsBoolean;
    md_FileExtAll.Post;
  end;
  edt_Search.SetFocus;
end;
{$EndRegion Helper Functions}
////////////////////////////////////////////////////////////////////////////////
// Button Functions                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Button Functions}
procedure TfSourceBackup_FileExt.btn_AbortClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;
procedure TfSourceBackup_FileExt.btn_OkClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;
procedure TfSourceBackup_FileExt.edt_SearchEnter(Sender: TObject);
begin
  if edt_Search.Text = 'z.B. pas' then
  begin
    edt_Search.OnKeyUp := nil;
    edt_Search.Text := '';
    edt_Search.OnKeyUp := edt_SearchKeyUp;
  end;

end;
procedure TfSourceBackup_FileExt.edt_SearchExit(Sender: TObject);
begin
  if edt_Search.Text = '' then
  begin
    edt_Search.OnKeyUp := nil;
    edt_Search.Text := 'z.B. pas';
    edt_Search.OnKeyUp := edt_SearchKeyUp;
  end;
end;
procedure TfSourceBackup_FileExt.edt_SearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  grdDBTblView_FileExt.DataController.DataSource := nil;
  edt_Search.OnKeyUp := nil;
  try
    if Key <> 13 then
    begin
      while not md_FileExt.Eof do
        md_FileExt.Delete;

      if Length(edt_Search.Text) > 0 then
      begin
        md_FileExtAll.First;
        while not md_FileExtAll.Eof do
        begin
          if Pos(edt_Search.Text, md_FileExtAll.FieldByName('Extension').AsString) > 0 then
          begin
            md_FileExt.Append;
            md_FileExt.FieldByName('Nr').AsInteger := md_FileExtAll.FieldByName('Nr').AsInteger;
            md_FileExt.FieldByName('Backup').AsString := md_FileExtAll.FieldByName('Backup').AsString;
            md_FileExt.FieldByName('Extension').AsString := md_FileExtAll.FieldByName('Extension').AsString;
            md_FileExt.Post;
          end;

          md_FileExtAll.Next;
        end;
      end
      else
      begin
        md_FileExt.LoadFromDataSet(md_FileExtAll);
      end;
    end
    else
    begin
      // Enter gedrückt
      grd_FileExt.SetFocus;
      grdDBTblView_FileExt.DataController.ClearSelection;
      grdDBTblView_FileExt.DataController.SelectRows(grdDBTblView_FileExt.DataController.FocusedRowIndex,
      grdDBTblView_FileExt.DataController.FocusedRowIndex);

      MarkBackup;
    end;
  finally
    md_FileExt.First;
    grdDBTblView_FileExt.DataController.DataSource := dtsFileExt;
    edt_Search.OnKeyUp := edt_SearchKeyUp;
  end;
end;
procedure TfSourceBackup_FileExt.grdDBTblView_FileExtCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if Assigned(grdDBTblView_FileExtBackup) then
  begin
    if (ACellViewInfo.Item.Index = grdDBTblView_FileExtBackup.Index) then
    begin
      MarkBackup;
    end;
  end;
  AHandled := true;
end;
procedure TfSourceBackup_FileExt.grdDBTblView_FileExtEditKeyUp(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key in [13, 32] then
  begin
    grd_FileExt.SetFocus;
    grdDBTblView_FileExt.DataController.ClearSelection;
    grdDBTblView_FileExt.DataController.SelectRows(grdDBTblView_FileExt.DataController.FocusedRowIndex,
    grdDBTblView_FileExt.DataController.FocusedRowIndex);
    MarkBackup;
  end;
end;
{$EndRegion Button Functions}
////////////////////////////////////////////////////////////////////////////////
// Form Functions                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure TfSourceBackup_FileExt.FormShow(Sender: TObject);
  procedure LoadingExtensions;
  var
    iTemp: Integer;
    lstFiles: TStrings;
    lstFileExt: TStringList;
    sFileExt: String;
  begin
    if not md_FileExtAll.Active then
      md_FileExtAll.Open;

    while not md_FileExtAll.Eof do
      md_FileExtAll.Delete;

    lstFiles := TStringList.Create;
    try
      FindAllFiles(lstFiles, sFolder);

      lstFileExt := TStringList.Create;
      try
        lstFileExt.Duplicates := dupIgnore;
        lstFileExt.Sorted := True;

        for iTemp := 0 to lstFiles.Count - 1 do
        begin
          sFileExt := ExtractFileExt(lstFiles.Strings[iTemp]);
          if Length(sFileExt) > 0 then
          begin
            if Copy(sFileExt, 1, 2) = '.~' then
              sFileExt := '.~*';
            sFileExt := LowerCase('*' + sFileExt);
            lstFileExt.Add(sFileExt);
          end;
        end;

        grdDBTblView_FileExt.DataController.DataSource := nil;
        WaitFormSetNewCount(lstFiles.Count);
        for iTemp := 0 to lstFileExt.Count - 1 do
        begin
          md_FileExtAll.Append;
          md_FileExtAll.FieldByName('Nr').AsInteger := iTemp;
          md_FileExtAll.FieldByName('Backup').AsBoolean := dsFileExt.Locate('FileExt', lstFileExt.Strings[iTemp], []);
          md_FileExtAll.FieldByName('Extension').AsString := lstFileExt.Strings[iTemp];
          md_FileExtAll.Post;
          WaitFormStep;
        end;
        md_FileExtAll.First;

        md_FileExt.LoadFromDataSet(md_FileExtAll);
        md_FileExt.First;
        grdDBTblView_FileExt.DataController.DataSource := dtsFileExt;
      finally
        lstFileExt.Free;
      end;
    finally
      lstFiles.Free;
    end;
//    edt_Search.SetFocus;
    Application.ProcessMessages;
  end;
begin
//  grpbx_Loading.Top := Round((fSourceBackup_FileExt.Height / 2) - (grpbx_Loading.Height / 2));
//  grpbx_Loading.Align := alClient;
//  grpbx_Loading.Visible := true;
  Application.ProcessMessages;
  ShowWaitForm(TForm(Self), PWideChar(rs_PCMDevManager_WAIT_FileEnd), 1,417, 65);
  LoadingExtensions;
  CloseWaitForm;
end;
{$EndRegion Formfunctions}
end.
