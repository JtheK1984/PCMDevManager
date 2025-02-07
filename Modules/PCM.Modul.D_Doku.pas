unit PCM.Modul.D_Doku;

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
  FireDAC.DApt, FireDAC.Comp.DataSet, cxLocalization, cxDBLookupComboBox, cxMemo, cxDBEdit, cxPC, cxSplitter,
  dxDockControl, cxImageList, cxDropDownEdit, dxSparkline,
  cxBarEditItem, XMLIntf, XMLDoc,uWVLoader,PCM.Browser, Vcl.OleServer, WordXP,Soap.EncdDecd,
  Vcl.ExtCtrls, dxBarBuiltInMenu, cxCheckBox, Vcl.Menus, cxButtons,
  cxGridCustomPopupMenu, cxGridPopupMenu,System.NetEncoding,system.UITypes;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Doku = class(TForm)
    brmgr_Main: TdxBarManager;
    btn_Collapse: TdxBarButton;
    btn_DokuMainbottom: TcxButton;
    btn_DokuMaindown: TcxButton;
    btn_DokuMainTop: TcxButton;
    btn_DokuMainUp: TcxButton;
    btn_Expand: TdxBarButton;
    btn_VersionChange: TdxBarLargeButton;
    btn_VersionCopy: TdxBarLargeButton;
    btn_VersionDelete: TdxBarLargeButton;
    btn_VersionExportHTML: TdxBarLargeButton;
    btn_VersionNew: TdxBarLargeButton;
    btn_VersionRefresh: TdxBarLargeButton;
    dxBarDockControl1: TdxBarDockControl;
    grd_Version: TcxGrid;
    grdLvl_Version: TcxGridLevel;
    grdpmm_Doku: TcxGridPopupMenu;
    grpbx_Browser: TcxGroupBox;
    grpbx_Design: TcxGroupBox;
    grpbx_PostfachMainSort: TcxGroupBox;
    imglst_16x16: TcxImageList;
    pc_Kontakte_Kontakte: TcxPageControl;
    pc_main: TcxPageControl;
    ppm_Doku: TdxBarPopupMenu;
    tb_main: TdxBar;
    ts_Dokumentation: TcxTabSheet;
    ts_Dokumente: TcxTabSheet;
    ts_Uebersicht: TcxTabSheet;
    tv_Version: TcxGridDBTableView;
    tv_VersionBeschreibung: TcxGridDBColumn;
    tv_VersionBild: TcxGridDBColumn;
    tv_VersionBreite: TcxGridDBColumn;
    tv_VersionColumn1: TcxGridDBColumn;
    tv_Versionheader: TcxGridDBColumn;
    tv_Versionheadertype: TcxGridDBColumn;
    tv_VersionNewPage: TcxGridDBColumn;
    tv_VersionProgram: TcxGridDBColumn;
    tv_VersionSortierung: TcxGridDBColumn;
    btn_VersionExportPDF: TdxBarLargeButton;
    btn_VersionExportHTMLPDF: TdxBarLargeButton;
    procedure btn_CollapseClick(Sender: TObject);
    procedure btn_DokuMainbottomClick(Sender: TObject);
    procedure btn_DokuMaindownClick(Sender: TObject);
    procedure btn_DokuMainTopClick(Sender: TObject);
    procedure btn_DokuMainUpClick(Sender: TObject);
    procedure btn_ExpandClick(Sender: TObject);
    procedure btn_VersionChangeClick(Sender: TObject);
    procedure btn_VersionCopyClick(Sender: TObject);
    procedure btn_VersionDeleteClick(Sender: TObject);
    procedure btn_VersionExportHTMLClick(Sender: TObject);
    procedure btn_VersionNewClick(Sender: TObject);
    procedure btn_VersionRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tv_VersionCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_VersionExportPDFClick(Sender: TObject);
    procedure btn_VersionExportHTMLPDFClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
    function Base64FromBitmap(Bitmap: TImage): String;
    procedure CreateDokuHTM(AApplikation: String; AAll: boolean);
    procedure CreateDokuDOCPDF(AApplikation: String; AAll: boolean);
  public
    { Public-Deklarationen }
    iMaxSortierung: integer;
    FWebBrowser: TAbstractWebBrowser;
    sApplikationCur: String;
    procedure SortierungFirstLastMain(bUpDown: Boolean);
    procedure SortierungAendernMain(bUpDown: Boolean);
  end;
  {$EndRegion Type}
var
  frm_Doku: Tfrm_Doku;

const CR = #13;
      LF = #10;
      CRLF=CR+LF;

implementation

{$R *.dfm}

uses  PCM.Data,
      PCM.Functions,
      PCM.Functions.Synch.Wait,
      PCM.Modul.C_Update.Import,
      PCM.Modul.C_Update.Version,
      PCM.Modul.D_Doku.Programm,
      PCM.Modul.D_Doku.Version,
      PCM.Main;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Helperfunctions}
function Tfrm_Doku.Base64FromBitmap(Bitmap: TImage): String;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
    Bitmap.Picture.SaveToStream(Input);
    Input.Position := 0;
    Output := TStringStream.Create('', TEncoding.ASCII);
    try
      Soap.EncdDecd.EncodeStream(Input, Output);
      Result := Output.DataString;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;
procedure Tfrm_Doku.CreateDokuHTM(AApplikation: String; AAll: boolean);
var
  slDoku: TStringList;
  sbase64: string;
  sProgramm: string;
  bmPicture: TImage;
  fBreite: double;
  sBreite: String;
begin
  if AAll then
  begin
    dm_PCM.qry_work_Sub.SQL.Text:= 'SELECT Programm FROM lizenzgenerator_programme GROUP BY Programm ORDER BY Programm';
    dm_PCM.qry_work_Sub.open;
    while not dm_PCM.qry_work_Sub.Eof do
    begin
      sProgramm:= StringReplace(dm_PCM.qry_work_Sub.FieldByName('Programm').AsString,'-',' - ',[rfIgnoreCase,rfReplaceAll]);
      slDoku := TStringList.Create;
      try
        dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_header';
        dm_PCM.qry_Work.open;
        slDoku.Text:= StringReplace(dm_PCM.qry_Work.FieldByname('Header').AsString,'{PROGRAM}',sProgramm,[rfIgnoreCase,rfReplaceAll]);
        dm_PCM.qry_Work.Close;

        dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_body Where program = :Program order by Sortierung asc';
        dm_PCM.qry_Work.ParamByName('Program').AsString:= sProgramm;
        dm_PCM.qry_Work.open;
        while not dm_PCM.qry_Work.eof do
        begin
          if dm_PCM.qry_Work.FieldByname('bild').AsString = '' then
          begin
            slDoku.Text:= slDoku.Text + dm_PCM.qry_Work.FieldByname('body').AsString;
          end
          else begin
            bmPicture:= TImage.Create(Self);
            bmPicture.Picture.LoadFromFile(dm_PCM.qry_Work.FieldByname('bild').AsString);
            sbase64 := StringReplace(Base64FromBitmap(bmPicture),CRLF,'',[rfReplaceAll]);
            slDoku.Text:= slDoku.Text + StringReplace(dm_PCM.qry_Work.FieldByname('body').AsString,'{BILD}',sbase64,[rfIgnoreCase,rfReplaceAll]);
            fBreite:= dm_PCM.qry_Work.FieldByname('Breite').AsFloat;
            if fBreite = 0 then
            begin
              sBreite:= '100%';
            end
            else begin
              sBreite:= IntToStr(Trunc((fBreite / 15.98) * 100)) + '%';
            end;
            slDoku.Text:= StringReplace(slDoku.Text,'{WIDTH}',sBreite,[rfIgnoreCase,rfReplaceAll]);
          end;
          dm_PCM.qry_Work.Next;
        end;
        dm_PCM.qry_Work.Close;
        dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_footer';
        dm_PCM.qry_Work.open;
        slDoku.Text:= slDoku.Text + dm_PCM.qry_Work.FieldByname('footer').AsString;
        dm_PCM.qry_Work.Close;
        slDoku.SaveToFile(ExtractFilePath(Paramstr(0)) + '\Doku\' + StringReplace(sProgramm,' - ','',[rfIgnoreCase,rfReplaceAll]) + '.htm');
      finally
        slDoku.Free;
      end;
      dm_PCM.qry_work_Sub.Next;
    end;
    dm_PCM.qry_work_Sub.Close;
  end
  else begin
    slDoku := TStringList.Create;
    try
      dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_header';
      dm_PCM.qry_Work.open;
      slDoku.Text:= StringReplace(dm_PCM.qry_Work.FieldByname('Header').AsString,'{PROGRAM}',AApplikation,[rfIgnoreCase,rfReplaceAll]);
      dm_PCM.qry_Work.Close;

      dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_body Where program = :Program order by Sortierung asc';
      dm_PCM.qry_Work.ParamByName('Program').AsString:= AApplikation;
      dm_PCM.qry_Work.open;
      while not dm_PCM.qry_Work.eof do
      begin
        if dm_PCM.qry_Work.FieldByname('bild').AsString = '' then
        begin
          slDoku.Text:= slDoku.Text + dm_PCM.qry_Work.FieldByname('body').AsString;
        end
        else begin
          bmPicture:= TImage.Create(Self);
          bmPicture.Picture.LoadFromFile(dm_PCM.qry_Work.FieldByname('bild').AsString);
          sbase64 := StringReplace(Base64FromBitmap(bmPicture),CRLF,'',[rfReplaceAll]);
          slDoku.Text:= slDoku.Text + StringReplace(dm_PCM.qry_Work.FieldByname('body').AsString,'{BILD}',sbase64,[rfIgnoreCase,rfReplaceAll]);
          fBreite:= dm_PCM.qry_Work.FieldByname('Breite').AsFloat;
          if fBreite = 0 then
          begin
            sBreite:= '100%';
          end
          else begin
            sBreite:= IntToStr(Trunc((fBreite / 15.98) * 100)) + '%';
          end;
          slDoku.Text:= StringReplace(slDoku.Text,'{WIDTH}',sBreite,[rfIgnoreCase,rfReplaceAll]);
        end;
        dm_PCM.qry_Work.Next;
      end;
      dm_PCM.qry_Work.Close;
      dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_footer';
      dm_PCM.qry_Work.open;
      slDoku.Text:= slDoku.Text + dm_PCM.qry_Work.FieldByname('footer').AsString;
      dm_PCM.qry_Work.Close;
      slDoku.SaveToFile(ExtractFilePath(Paramstr(0)) + '\Doku\' +  StringReplace(AApplikation,' - ','',[rfIgnoreCase,rfReplaceAll]) + '.htm');
    finally
      slDoku.Free;
    end;
  end;
end;
procedure Tfrm_Doku.CreateDokuDOCPDF(AApplikation: String; AAll: boolean);
var
  WordApp: OleVariant;
  WordDoc: OleVariant;
  Table: Variant;
  OriginalWidth,OriginalHeight,AspectRatio: OleVariant;
  vBookmark,wdGoToTableOfContents : OleVariant;
  InsertRange,InlineShapes: OleVariant;
  iSize: integer;
  sProgramm: string;
begin
  if AAll then
  begin
    dm_PCM.qry_work_Sub.SQL.Text:= 'SELECT Programm FROM lizenzgenerator_programme GROUP BY Programm ORDER BY Programm';
    dm_PCM.qry_work_Sub.open;
    while not dm_PCM.qry_work_Sub.Eof do
    begin
      sProgramm:= StringReplace(dm_PCM.qry_work_Sub.FieldByName('Programm').AsString,'-',' - ',[rfIgnoreCase,rfReplaceAll]);
      WordApp := CreateOleObject('Word.Application');
      WaitFormSetText('Dokumentation DOC wird erstellt');
      WriteLog(PCM_Logname,'Dokument wird geöffnet',0);
      WordDoc := WordApp.Documents.Open(ExtractFilePath(Paramstr(0)) + 'PCMVorlage.docx');

      WriteLog(PCM_Logname,'Dokument ' + ExtractFilePath(Paramstr(0)) + 'PCMVorlage.docx' + ' geöffnet',0);
      Sleep(100);
      WordApp.Visible := False;
      WordApp.DisplayAlerts := False;
      try
        vBookmark:='AppName';
        WordApp.Selection.Goto(wdGotoBookmark, Unassigned, Unassigned, vBookmark);
        WordApp.Selection.TypeText(AApplikation);
        WordApp.Selection.GoTo(wdGoToTableOfContents, wdGoToLast);
        WordApp.Selection.EndKey(wdStory);
        WordApp.Selection.InsertBreak(wdPageBreak);
        {$Region Database}
        dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_body Where program = :Program and headertype <> '''' order by Sortierung asc';
        dm_PCM.qry_Work.ParamByName('Program').AsString:= AApplikation;
        dm_PCM.qry_Work.open;
        while not dm_PCM.qry_Work.eof do
        begin
          // Überschrift
          WaitFormSetText('Dokumentation DOC: ' + dm_PCM.qry_Work.FieldByname('header').AsString);
          WriteLog(PCM_Logname,'Schreibe Header ' + dm_PCM.qry_Work.FieldByname('header').AsString ,0);
          Application.ProcessMessages;
          if dm_PCM.qry_Work.FieldByname('header').AsString <> '' then
          begin
            InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
            if dm_PCM.qry_Work.FieldByname('newpage').AsBoolean then
            begin
              InsertRange.InsertBreak(wdPageBreak);
            end;
            InsertRange.Text := dm_PCM.qry_Work.FieldByname('header').AsString + #13#10; // CRLF for a new paragraph
            InsertRange.Style:= dm_PCM.qry_Work.FieldByname('headertype').AsString;
          end;
          if dm_PCM.qry_Work.FieldByname('header').AsString = '2. Systemvoraussetzungen' then
          begin
            {$Region Table}
            InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
            InsertRange.Style:= 'Standard';
            Table := WordDoc.Tables.Add(Range := InsertRange, NumRows := 10, NumColumns := 2);
            // Tabelle Verbinden
            Table.Cell(1, 1).Merge(Table.Cell(1, 2));
            Table.Cell(1, 1).Range.Text := 'Systemvoraussetzungen';
            // Font and Background color
            Table.Cell(1, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(1, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(1, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(1, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(1, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(1, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(1, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(1, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(1, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(1, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(1, 1).width:= 453 ;
            // Font and Background color
            Table.Cell(2, 1).Range.Text := 'Betriebssystem:';
            Table.Cell(2, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(2, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(2, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(2, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(2, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(2, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(2, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(2, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(2, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(2, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(2, 1).width:= 113;
            // Font and Background color
            Table.Cell(2, 2).Range.Text := 'Windows 8, Windows 10, Windows 11';
            Table.Cell(2, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(2, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(2, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(2, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(2, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(2, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(2, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(2, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(2, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(2, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(2, 2).width:= 340;
            // Font and Background color
            Table.Cell(3, 1).Range.Text := 'Prozessor:';
            Table.Cell(3, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(3, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(3, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(3, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(3, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(3, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(3, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(3, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(3, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(3, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(3, 1).width:= 113;
            // Font and Background color
            Table.Cell(3, 2).Range.Text := 'Prozessor mit 1 GHz oder höher';
            Table.Cell(3, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(3, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(3, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(3, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(3, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(3, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(3, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(3, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(3, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(3, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(3, 2).width:= 340;
            // Font and Background color
            Table.Cell(4, 1).Range.Text := 'Arbeitsspeicher:';
            Table.Cell(4, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(4, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(4, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(4, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(4, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(4, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(4, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(4, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(4, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(4, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(4, 1).width:= 113;
            // Font and Background color
            Table.Cell(4, 2).Range.Text := '2 Gigabyte';
            Table.Cell(4, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(4, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(4, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(4, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(4, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(4, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(4, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(4, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(4, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(4, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(4, 2).width:= 340;
            // Font and Background color
            Table.Cell(5, 1).Range.Text := 'Festplattenspeicher:';
            Table.Cell(5, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(5, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(5, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(5, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(5, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(5, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(5, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(5, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(5, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(5, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(5, 1).width:= 113;
            // Font and Background color
            Table.Cell(5, 2).Range.Text := 'ca. 1 Gigabyte';
            Table.Cell(5, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(5, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(5, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(5, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(5, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(5, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(5, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(5, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(5, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(5, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(5, 2).width:= 340;
            // Font and Background color
            Table.Cell(6, 1).Range.Text := 'Grafikkarte:';
            Table.Cell(6, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(6, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(6, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(6, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(6, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(6, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(6, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(6, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(6, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(6, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(6, 1).width:= 113;
            // Font and Background color
            Table.Cell(6, 2).Range.Text := 'DirectX 9 oder höher';
            Table.Cell(6, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(6, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(6, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(6, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(6, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(6, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(6, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(6, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(6, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(6, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(6, 2).width:= 340;
            // Font and Background color
            Table.Cell(7, 1).Range.Text := 'Display:';
            Table.Cell(7, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(7, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(7, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(7, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(7, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(7, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(7, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(7, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(7, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(7, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(7, 1).width:= 113;
            // Font and Background color
            Table.Cell(7, 2).Range.Text := '1280 x 800';
            Table.Cell(7, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(7, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(7, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(7, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(7, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(7, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(7, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(7, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(7, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(7, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(7, 2).width:= 340;
            // Font and Background color
            Table.Cell(8, 1).Range.Text := 'Internetverbindung:';
            Table.Cell(8, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(8, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(8, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(8, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(8, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(8, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(8, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(8, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(8, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(8, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(8, 1).width:= 113;
            // Font and Background color
            Table.Cell(8, 2).Range.Text := 'Für die Aufrufe über die REST-API';
            Table.Cell(8, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(8, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(8, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(8, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(8, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(8, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(8, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(8, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(8, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(8, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(8, 2).width:= 340;
            // Font and Background color
            Table.Cell(9, 1).Range.Text := 'Portfreigaben:';
            Table.Cell(9, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(9, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(9, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(9, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(9, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(9, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(9, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(9, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(9, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(9, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(9, 1).width:= 113;
            // Font and Background color
            Table.Cell(9, 2).Range.Text := '55700 TCP ausgehend';
            Table.Cell(9, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(9, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(9, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(9, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(9, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(9, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(9, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(9, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(9, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(9, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(9, 2).width:= 340;
            // Font and Background color
            Table.Cell(10, 1).Range.Text := 'SQL-Server:';
            Table.Cell(10, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(10, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            // Border
            Table.Cell(10, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(10, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(10, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(10, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(10, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(10, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(10, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(10, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(10, 1).width:= 113;
            // Font and Background color
            Table.Cell(10, 2).Range.Text := 'MYSQL 5.x für 32-Bit' + #13#10 + 'MYSQL 8.x für 64-Bit';
            Table.Cell(10, 2).Range.Font.Color:= wdColorWhite;
            Table.Cell(10, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
            // Border
            Table.Cell(10, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
            Table.Cell(10, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
            Table.Cell(10, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
            Table.Cell(10, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
            // Boarder Color
            Table.Cell(10, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
            Table.Cell(10, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
            Table.Cell(10, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
            Table.Cell(10, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
            Table.Cell(10, 2).width:= 340;
            InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
            InsertRange.Style:= 'Standard';
            InsertRange.Text:= #13#10;
            {$EndRegion Table}
          end
          else begin
            if dm_PCM.qry_Work.FieldByname('header').AsString = '4. Hinweis' then
            begin
              {$Region Hinweis}
              InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
              InsertRange.Style:= 'Standard';
              Table := WordDoc.Tables.Add(Range := InsertRange, NumRows := 2, NumColumns := 2);
              // Tabelle Verbinden
              Table.Cell(1, 1).Merge(Table.Cell(1, 2));
              Table.Cell(1, 1).Range.Text := 'Hinweis';
              // Font and Background color
              Table.Cell(1, 1).Range.Font.Color:= wdColorWhite;
              Table.Cell(1, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
              Table.Cell(1, 1).width:= 453;
              // Font and Background color
              InlineShapes:= Table.Cell(2, 1).Range.InlineShapes.AddPicture(dm_PCM.qry_Work.FieldByname('bild').AsString, False, True);
              Table.Cell(2, 1).width:= 48;
              Table.Cell(2, 2).Range.Text := 'Der Benutzer PCM ist der standardmäßig eingerichtete Benutzer. Er besitzt alle Rechte in der PCM – Software.';
              Table.Cell(2, 2).width:= 405;
              OriginalWidth := InlineShapes.width;
              OriginalHeight := InlineShapes.Height;
              AspectRatio := OriginalHeight / OriginalWidth;
              InlineShapes.Width := 46;
              InlineShapes.Height := 46 * AspectRatio;
              {$EndRegion Hinweis}
            end
            else begin
              // Text
              if dm_PCM.qry_Work.FieldByname('content').AsString <> '' then
              begin
                {$Region Content}
                InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
                if (dm_PCM.qry_Work.FieldByname('newpage').AsBoolean) and (dm_PCM.qry_Work.FieldByname('header').AsString ='') then
                begin
                  InsertRange.InsertBreak(wdPageBreak);
                end;
                InsertRange.Text := dm_PCM.qry_Work.FieldByname('content').AsString + #13#10;
                InsertRange.Style:= 'Standard';
                {$EndRegion Content}
              end;
              if dm_PCM.qry_Work.FieldByname('bild').AsString <> '' then
              begin
                // Image
                {$Region Bild}
                InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
                InsertRange.Style:= 'Standard';
                InsertRange.Text :=  #13#10;
                InsertRange.ParagraphFormat.Alignment := 1;
                if (dm_PCM.qry_Work.FieldByname('newpage').AsBoolean) and (dm_PCM.qry_Work.FieldByname('header').AsString ='') and (dm_PCM.qry_Work.FieldByname('content').AsString ='') then
                begin
                  InsertRange.InsertBreak(wdPageBreak);
                end;
                InlineShapes:= WordDoc.InlineShapes.AddPicture(dm_PCM.qry_Work.FieldByname('bild').AsString, False, True, InsertRange);
                InlineShapes.Select;
                OriginalWidth := InlineShapes.width;
                OriginalHeight := InlineShapes.Height;
                AspectRatio := OriginalHeight / OriginalWidth;
                if dm_PCM.qry_Work.FieldByName('Breite').AsFloat > 0 then
                begin
                  iSize := Trunc(dm_PCM.qry_Work.FieldByName('Breite').AsFloat * 27.2215269);
                  InlineShapes.Width := iSize;
                  InlineShapes.Height := iSize * AspectRatio;
                end
                else begin
                  InlineShapes.Width := 453;
                  InlineShapes.Height := 453 * AspectRatio;
                end;
                InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
                InsertRange.Style:= 'Standard';
                if dm_PCM.qry_Work.FieldByName('Leerzeile').AsBoolean then
                  InsertRange.Text := #13#10;
                {$EndRegion Bild}
              end;
            end;
          end;
          dm_PCM.qry_Work.Next;
        end;
        dm_PCM.qry_Work.Close;
        {$EndRegion Database}
        WriteLog(PCM_Logname,'Dokumentation Inhaltsverzeichnis aktualisieren',0);
        WordApp.Selection.WholeStory;
        WordApp.Selection.Fields.Update;
        WriteLog(PCM_Logname,'Dokumentation PDF speichern: ' + ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(sProgramm,' - ','',[rfIgnoreCase,rfReplaceAll]) ,0);
        WaitFormSetText('Dokumentation PDF speichern');
        WordApp.ActiveDocument.SaveAs2(ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(sProgramm,' - ','',[rfIgnoreCase,rfReplaceAll]),17);
        WaitFormSetText('Dokumentation Doc speichern');
        WriteLog(PCM_Logname,'Dokumentation Doc speichern' + ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(sProgramm,' - ','',[rfIgnoreCase,rfReplaceAll]),0);
        WordApp.ActiveDocument.SaveAs(ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(sProgramm,' - ','',[rfIgnoreCase,rfReplaceAll])  +'.docx');
        if not VarIsNull(WordApp) then
        begin
          WordApp.Quit;
          WordApp := Unassigned;
        end;
      except
        if not VarIsNull(WordApp) then
        begin
          WordApp.Quit;
          WordApp := Unassigned;
        end;
      end;
      dm_PCM.qry_work_Sub.Next;
    end;
  end
  else begin
    WordApp := CreateOleObject('Word.Application');
    WaitFormSetText('Dokumentation DOC wird erstellt');
    WriteLog(PCM_Logname,'Dokument wird geöffnet',0);
    WordDoc := WordApp.Documents.Open(ExtractFilePath(Paramstr(0)) + 'PCMVorlage.docx');

    WriteLog(PCM_Logname,'Dokument ' + ExtractFilePath(Paramstr(0)) + 'PCMVorlage.docx' + ' geöffnet',0);
    Sleep(100);
    WordApp.Visible := False;
    WordApp.DisplayAlerts := False;
    try
      vBookmark:='AppName';
      WordApp.Selection.Goto(wdGotoBookmark, Unassigned, Unassigned, vBookmark);
      WordApp.Selection.TypeText(AApplikation);
      WordApp.Selection.GoTo(wdGoToTableOfContents, wdGoToLast);
      WordApp.Selection.EndKey(wdStory);
      WordApp.Selection.InsertBreak(wdPageBreak);
      {$Region Database}
      dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM doku_body Where program = :Program and headertype <> '''' order by Sortierung asc';
      dm_PCM.qry_Work.ParamByName('Program').AsString:= AApplikation;
      dm_PCM.qry_Work.open;
      while not dm_PCM.qry_Work.eof do
      begin
        // Überschrift
        WaitFormSetText('Dokumentation DOC: ' + dm_PCM.qry_Work.FieldByname('header').AsString);
        WriteLog(PCM_Logname,'Schreibe Header ' + dm_PCM.qry_Work.FieldByname('header').AsString ,0);
        Application.ProcessMessages;
        if dm_PCM.qry_Work.FieldByname('header').AsString <> '' then
        begin
          InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
          if dm_PCM.qry_Work.FieldByname('newpage').AsBoolean then
          begin
            InsertRange.InsertBreak(wdPageBreak);
          end;
          InsertRange.Text := dm_PCM.qry_Work.FieldByname('header').AsString + #13#10; // CRLF for a new paragraph
          InsertRange.Style:= dm_PCM.qry_Work.FieldByname('headertype').AsString;
        end;
        if dm_PCM.qry_Work.FieldByname('header').AsString = '2. Systemvoraussetzungen' then
        begin
          {$Region Table}
          InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
          InsertRange.Style:= 'Standard';
          Table := WordDoc.Tables.Add(Range := InsertRange, NumRows := 10, NumColumns := 2);
          // Tabelle Verbinden
          Table.Cell(1, 1).Merge(Table.Cell(1, 2));
          Table.Cell(1, 1).Range.Text := 'Systemvoraussetzungen';
          // Font and Background color
          Table.Cell(1, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(1, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(1, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(1, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(1, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(1, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(1, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(1, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(1, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(1, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(1, 1).width:= 453 ;
          // Font and Background color
          Table.Cell(2, 1).Range.Text := 'Betriebssystem:';
          Table.Cell(2, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(2, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(2, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(2, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(2, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(2, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(2, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(2, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(2, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(2, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(2, 1).width:= 113;
          // Font and Background color
          Table.Cell(2, 2).Range.Text := 'Windows 8, Windows 10, Windows 11';
          Table.Cell(2, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(2, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(2, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(2, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(2, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(2, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(2, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(2, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(2, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(2, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(2, 2).width:= 340;
          // Font and Background color
          Table.Cell(3, 1).Range.Text := 'Prozessor:';
          Table.Cell(3, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(3, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(3, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(3, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(3, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(3, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(3, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(3, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(3, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(3, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(3, 1).width:= 113;
          // Font and Background color
          Table.Cell(3, 2).Range.Text := 'Prozessor mit 1 GHz oder höher';
          Table.Cell(3, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(3, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(3, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(3, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(3, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(3, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(3, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(3, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(3, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(3, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(3, 2).width:= 340;
          // Font and Background color
          Table.Cell(4, 1).Range.Text := 'Arbeitsspeicher:';
          Table.Cell(4, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(4, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(4, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(4, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(4, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(4, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(4, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(4, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(4, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(4, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(4, 1).width:= 113;
          // Font and Background color
          Table.Cell(4, 2).Range.Text := '2 Gigabyte';
          Table.Cell(4, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(4, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(4, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(4, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(4, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(4, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(4, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(4, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(4, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(4, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(4, 2).width:= 340;
          // Font and Background color
          Table.Cell(5, 1).Range.Text := 'Festplattenspeicher:';
          Table.Cell(5, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(5, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(5, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(5, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(5, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(5, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(5, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(5, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(5, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(5, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(5, 1).width:= 113;
          // Font and Background color
          Table.Cell(5, 2).Range.Text := 'ca. 1 Gigabyte';
          Table.Cell(5, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(5, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(5, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(5, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(5, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(5, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(5, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(5, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(5, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(5, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(5, 2).width:= 340;
          // Font and Background color
          Table.Cell(6, 1).Range.Text := 'Grafikkarte:';
          Table.Cell(6, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(6, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(6, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(6, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(6, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(6, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(6, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(6, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(6, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(6, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(6, 1).width:= 113;
          // Font and Background color
          Table.Cell(6, 2).Range.Text := 'DirectX 9 oder höher';
          Table.Cell(6, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(6, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(6, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(6, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(6, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(6, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(6, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(6, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(6, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(6, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(6, 2).width:= 340;
          // Font and Background color
          Table.Cell(7, 1).Range.Text := 'Display:';
          Table.Cell(7, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(7, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(7, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(7, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(7, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(7, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(7, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(7, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(7, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(7, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(7, 1).width:= 113;
          // Font and Background color
          Table.Cell(7, 2).Range.Text := '1280 x 800';
          Table.Cell(7, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(7, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(7, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(7, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(7, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(7, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(7, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(7, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(7, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(7, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(7, 2).width:= 340;
          // Font and Background color
          Table.Cell(8, 1).Range.Text := 'Internetverbindung:';
          Table.Cell(8, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(8, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(8, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(8, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(8, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(8, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(8, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(8, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(8, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(8, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(8, 1).width:= 113;
          // Font and Background color
          Table.Cell(8, 2).Range.Text := 'Für die Aufrufe über die REST-API';
          Table.Cell(8, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(8, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(8, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(8, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(8, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(8, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(8, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(8, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(8, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(8, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(8, 2).width:= 340;
          // Font and Background color
          Table.Cell(9, 1).Range.Text := 'Portfreigaben:';
          Table.Cell(9, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(9, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(9, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(9, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(9, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(9, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(9, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(9, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(9, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(9, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(9, 1).width:= 113;
          // Font and Background color
          Table.Cell(9, 2).Range.Text := '55700 TCP ausgehend';
          Table.Cell(9, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(9, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(9, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(9, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(9, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(9, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(9, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(9, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(9, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(9, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(9, 2).width:= 340;
          // Font and Background color
          Table.Cell(10, 1).Range.Text := 'SQL-Server:';
          Table.Cell(10, 1).Range.Font.Color:= wdColorWhite;
          Table.Cell(10, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
          // Border
          Table.Cell(10, 1).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(10, 1).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(10, 1).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(10, 1).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(10, 1).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(10, 1).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(10, 1).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(10, 1).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(10, 1).width:= 113;
          // Font and Background color
          Table.Cell(10, 2).Range.Text := 'MYSQL 5.x für 32-Bit' + #13#10 + 'MYSQL 8.x für 64-Bit';
          Table.Cell(10, 2).Range.Font.Color:= wdColorWhite;
          Table.Cell(10, 2).Shading.BackgroundPatternColor := RGB(119, 136, 153);
          // Border
          Table.Cell(10, 2).Borders.Item(wdBorderRight).LineStyle := wdLineStyleSingle;
          Table.Cell(10, 2).Borders.Item(wdBorderLeft).LineStyle := wdLineStyleSingle;
          Table.Cell(10, 2).Borders.Item(wdBorderTop).LineStyle := wdLineStyleSingle;
          Table.Cell(10, 2).Borders.Item(wdBorderBottom).LineStyle := wdLineStyleSingle;
          // Boarder Color
          Table.Cell(10, 2).Borders.Item(wdBorderRight).Color := wdColorWhite;
          Table.Cell(10, 2).Borders.Item(wdBorderLeft).Color := wdColorWhite;
          Table.Cell(10, 2).Borders.Item(wdBorderTop).Color := wdColorWhite;
          Table.Cell(10, 2).Borders.Item(wdBorderBottom).Color := wdColorWhite;
          Table.Cell(10, 2).width:= 340;
          InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
          InsertRange.Style:= 'Standard';
          InsertRange.Text:= #13#10;
          {$EndRegion Table}
        end
        else begin
          if dm_PCM.qry_Work.FieldByname('header').AsString = '4. Hinweis' then
          begin
            {$Region Hinweis}
            InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
            InsertRange.Style:= 'Standard';
            Table := WordDoc.Tables.Add(Range := InsertRange, NumRows := 2, NumColumns := 2);
            // Tabelle Verbinden
            Table.Cell(1, 1).Merge(Table.Cell(1, 2));
            Table.Cell(1, 1).Range.Text := 'Hinweis';
            // Font and Background color
            Table.Cell(1, 1).Range.Font.Color:= wdColorWhite;
            Table.Cell(1, 1).Shading.BackgroundPatternColor := RGB(51, 75, 106);
            Table.Cell(1, 1).width:= 453;
            // Font and Background color
            InlineShapes:= Table.Cell(2, 1).Range.InlineShapes.AddPicture(dm_PCM.qry_Work.FieldByname('bild').AsString, False, True);
            Table.Cell(2, 1).width:= 48;
            Table.Cell(2, 2).Range.Text := 'Der Benutzer PCM ist der standardmäßig eingerichtete Benutzer. Er besitzt alle Rechte in der PCM – Software.';
            Table.Cell(2, 2).width:= 405;
            OriginalWidth := InlineShapes.width;
            OriginalHeight := InlineShapes.Height;
            AspectRatio := OriginalHeight / OriginalWidth;
            InlineShapes.Width := 46;
            InlineShapes.Height := 46 * AspectRatio;
            {$EndRegion Hinweis}
          end
          else begin
            // Text
            if dm_PCM.qry_Work.FieldByname('content').AsString <> '' then
            begin
              {$Region Content}
              InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
              if (dm_PCM.qry_Work.FieldByname('newpage').AsBoolean) and (dm_PCM.qry_Work.FieldByname('header').AsString ='') then
              begin
                InsertRange.InsertBreak(wdPageBreak);
              end;
              InsertRange.Text := dm_PCM.qry_Work.FieldByname('content').AsString + #13#10;
              InsertRange.Style:= 'Standard';
              {$EndRegion Content}
            end;
            if dm_PCM.qry_Work.FieldByname('bild').AsString <> '' then
            begin
              // Image
              {$Region Bild}
              InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
              InsertRange.Style:= 'Standard';
              InsertRange.Text :=  #13#10;
              InsertRange.ParagraphFormat.Alignment := 1;
              if (dm_PCM.qry_Work.FieldByname('newpage').AsBoolean) and (dm_PCM.qry_Work.FieldByname('header').AsString ='') and (dm_PCM.qry_Work.FieldByname('content').AsString ='') then
              begin
                InsertRange.InsertBreak(wdPageBreak);
              end;
              InlineShapes:= WordDoc.InlineShapes.AddPicture(dm_PCM.qry_Work.FieldByname('bild').AsString, False, True, InsertRange);
              InlineShapes.Select;
              OriginalWidth := InlineShapes.width;
              OriginalHeight := InlineShapes.Height;
              AspectRatio := OriginalHeight / OriginalWidth;
              if dm_PCM.qry_Work.FieldByName('Breite').AsFloat > 0 then
              begin
                iSize := Trunc(dm_PCM.qry_Work.FieldByName('Breite').AsFloat * 27.2215269);
                InlineShapes.Width := iSize;
                InlineShapes.Height := iSize * AspectRatio;
              end
              else begin
                InlineShapes.Width := 453;
                InlineShapes.Height := 453 * AspectRatio;
              end;
              InsertRange := WordDoc.Range(WordDoc.Content.End - 1, WordDoc.Content.End - 1);
              InsertRange.Style:= 'Standard';
              if dm_PCM.qry_Work.FieldByName('Leerzeile').AsBoolean then
                InsertRange.Text := #13#10;
              {$EndRegion Bild}
            end;
          end;
        end;
        dm_PCM.qry_Work.Next;
      end;
      dm_PCM.qry_Work.Close;
      {$EndRegion Database}
      WriteLog(PCM_Logname,'Dokumentation Inhaltsverzeichnis aktualisieren',0);
      WordApp.Selection.WholeStory;
      WordApp.Selection.Fields.Update;
      WriteLog(PCM_Logname,'Dokumentation PDF speichern: ' + ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(AApplikation,' - ','',[rfIgnoreCase,rfReplaceAll]) ,0);
      WaitFormSetText('Dokumentation PDF speichern');
      WordApp.ActiveDocument.SaveAs2(ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(AApplikation,' - ','',[rfIgnoreCase,rfReplaceAll]),17);
      WaitFormSetText('Dokumentation Doc speichern');
      WriteLog(PCM_Logname,'Dokumentation Doc speichern' + ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(AApplikation,' - ','',[rfIgnoreCase,rfReplaceAll]),0);
      WordApp.ActiveDocument.SaveAs(ExtractFilePath(Paramstr(0)) + 'Doku\'+ StringReplace(AApplikation,' - ','',[rfIgnoreCase,rfReplaceAll])  +'.docx');
      if not VarIsNull(WordApp) then
      begin
        WordApp.Quit;
        WordApp := Unassigned;
      end;
    except
      if not VarIsNull(WordApp) then
      begin
        WordApp.Quit;
        WordApp := Unassigned;
      end;
    end;
  end;
end;
procedure Tfrm_Doku.SortierungAendernMain(bUpDown: Boolean);
var
  iTemp, iTemp2, iTempID, iTempID2: Integer;
begin
  dm_PCM.qry_Work.SQL.Text := 'UPDATE doku_body SET Sortierung = :Sort WHERE ID = :ID';

  iTemp := dm_PCM.qry_Doku.FieldByName('Sortierung').AsInteger;
  iTempID := dm_PCM.qry_Doku.FieldByName('ID').AsInteger;

  if bUpDown then
    iTemp2 := iTemp - 1
  else
    iTemp2 := iTemp + 1;

  if dm_PCM.qry_Doku.Locate('Sortierung', iTemp2, []) then
  begin
    dm_PCM.qry_Doku.Edit;
    dm_PCM.qry_Doku.FieldByName('Sortierung').AsInteger := iTemp;
    iTempID2 := dm_PCM.qry_Doku.FieldByName('ID').AsInteger;
    dm_PCM.qry_Doku.Post;

    dm_PCM.qry_Doku.Locate('ID', iTempID, []);
    dm_PCM.qry_Doku.Edit;
    dm_PCM.qry_Doku.FieldByName('Sortierung').AsInteger := iTemp2;
    dm_PCM.qry_Doku.Post;

    dm_PCM.qry_Work.ParamByName('Sort').AsInteger := iTemp;
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := iTempID2;
    dm_PCM.qry_Work.ExecSQL;

    dm_PCM.qry_Work.ParamByName('Sort').AsInteger := iTemp2;
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := iTempID;
    dm_PCM.qry_Work.ExecSQL;
  end;
end;
procedure Tfrm_Doku.SortierungFirstLastMain(bUpDown: Boolean);
var
  iTemp, iTempID, iTempSchleife, iTempEnde: integer;
begin
  iTemp := dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger;
  iTempID := dm_PCM.qry_Doku.FieldByName('ID').asInteger;
  iMaxSortierung := dm_PCM.qry_Doku.RecordCount;
  if bUpDown then
  begin
    dm_PCM.qry_Work.SQL.text :=  'UPDATE manager_email_postfach SET Sortierung = Sortierung + 1 WHERE ID = :ID AND Typ = 0 AND Sortierung < :Sort';
    iTempEnde := 1;
  end
  else
  begin
    dm_PCM.qry_Work.SQL.text :=  'UPDATE manager_email_postfach SET Sortierung = Sortierung + 1 WHERE ID = :ID AND Typ = 0 AND Sortierung < :Sort';
    iTempEnde := iMaxSortierung;
  end;

  iTempSchleife := iTemp;
  if bUpDown then
  begin
    while iTempSchleife > iTempEnde do
    begin
      Dec(iTempSchleife);
      if dm_PCM.qry_Doku.Locate('Sortierung', iTempSchleife, []) then
      begin
        dm_PCM.qry_Doku.Edit;
        dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger :=  dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger + 1;
        dm_PCM.qry_Doku.Post;
      end;
    end;
  end
  else
  begin
    while iTempSchleife < iTempEnde do
    begin
      Inc(iTempSchleife);
      if dm_PCM.qry_Doku.Locate('Sortierung', iTempSchleife, []) then
      begin
        dm_PCM.qry_Doku.Edit;
        dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger := dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger - 1;
        dm_PCM.qry_Doku.Post;
      end;
    end;
  end;

  dm_PCM.qry_Doku.Edit;
  dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger := iTempEnde;
  dm_PCM.qry_Doku.Post;

  dm_PCM.qry_Work.ParamByName('Sort').asInteger := iTemp;
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_PCM.qry_Doku.FieldByName('ID').AsInteger;
  dm_PCM.qry_Work.ExecSQL;

  dm_PCM.qry_Work.SQL.text := 'UPDATE manager_email_postfach SET Sortierung = :Sort WHERE Typ = 0 AND ID = :ID';
  dm_PCM.qry_Work.ParamByName('Sort').asInteger := iTempEnde;
  dm_PCM.qry_Work.ParamByName('ID').asInteger := iTempID;
  dm_PCM.qry_Work.ExecSQL;
  dm_PCM.qry_Doku.Refresh;
end;
{$EndRegion Helperfunctions}
////////////////////////////////////////////////////////////////////////////////
// Buttonfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_Doku.btn_CollapseClick(Sender: TObject);
begin
  tv_version.ViewData.Collapse(True);
end;
procedure Tfrm_Doku.btn_DokuMainbottomClick(Sender: TObject);
begin
  SortierungFirstLastMain(false);
end;
procedure Tfrm_Doku.btn_DokuMaindownClick(Sender: TObject);
begin
  SortierungAendernMain(false);
end;
procedure Tfrm_Doku.btn_DokuMainTopClick(Sender: TObject);
begin
  SortierungFirstLastMain(true);
end;
procedure Tfrm_Doku.btn_DokuMainUpClick(Sender: TObject);
begin
  SortierungAendernMain(true);
end;
procedure Tfrm_Doku.btn_ExpandClick(Sender: TObject);
begin
  tv_version.ViewData.Expand(True);
end;
procedure Tfrm_Doku.btn_VersionChangeClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_VersionDoku, frm_PCM_VersionDoku);
  frm_PCM_VersionDoku.Execute(false,
                          dm_PCM.qry_Doku.FieldByName('ID').AsInteger,
                          dm_PCM.qry_Doku.FieldByName('Program').asString,
                          dm_PCM.qry_Doku.FieldByName('Sortierung').asInteger,
                          dm_PCM.qry_Doku.FieldByName('Body').AsString,
                          dm_PCM.qry_Doku.FieldByName('Beschreibung').AsString,
                          dm_PCM.qry_Doku.FieldByName('header').asString,
                          dm_PCM.qry_Doku.FieldByName('content').AsString,
                          dm_PCM.qry_Doku.FieldByName('Bild').AsString,
                          dm_PCM.qry_Doku.FieldByName('Headertype').AsString,
                          dm_PCM.qry_Doku.FieldByName('Newpage').AsBoolean,
                          dm_PCM.qry_Doku.FieldByName('Breite').AsFloat,
                          dm_PCM.qry_Doku.FieldByName('Leerzeile').AsBoolean);
  frm_PCM_VersionDoku.Show;
end;
procedure Tfrm_Doku.btn_VersionCopyClick(Sender: TObject);
var
  iMax: integer;
  sApplikation: String;
begin
  if dm_PCM.qry_Doku.FieldByName('Program').AsString <> '' then
    sApplikationCur:=dm_PCM.qry_Doku.FieldByName('Program').AsString;
  Application.CreateForm(Tfrm_DokuCreate, frm_DokuCreate);
  if frm_DokuCreate.Execute(True,sApplikation) then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Select IFNULL(Max(Sortierung) + 1,1) as Maximal From doku_body Where Program = :Program';
    dm_PCM.qry_Work.ParamByName('Program').AsString:= sApplikation;
    dm_PCM.qry_Work.open;
    iMax:= dm_PCM.qry_Work.FieldByname('Maximal').AsInteger;
    dm_PCM.qry_Work.Close;
    dm_PCM.qry_Work.SQL.Text:= 'Insert into doku_body ' +
                               '(Beschreibung,Program,Sortierung,body,header,headertype,content,Bild,NewPage,Breite) ' +
                               'Values ' +
                               '(:Beschreibung,:Program,:Sortierung,:body,:header,:headertype,:content,:Bild,:NewPage,:Breite)';
    dm_PCM.qry_Work.ParamByName('Beschreibung').asString:= dm_PCM.qry_Doku.FieldByName('Beschreibung').AsString;
    dm_PCM.qry_Work.ParamByName('Program').asString:= sApplikation;
    dm_PCM.qry_Work.ParamByName('Sortierung').asinteger:= iMax;
    dm_PCM.qry_Work.ParamByName('Body').asString:= dm_PCM.qry_Doku.FieldByName('Body').AsString;
    dm_PCM.qry_Work.ParamByName('header').asString:= dm_PCM.qry_Doku.FieldByName('header').asString;
    dm_PCM.qry_Work.ParamByName('Headertype').asString:= dm_PCM.qry_Doku.FieldByName('Headertype').AsString;
    dm_PCM.qry_Work.ParamByName('content').asString:= dm_PCM.qry_Doku.FieldByName('content').AsString;
    dm_PCM.qry_Work.ParamByName('Bild').asString:= dm_PCM.qry_Doku.FieldByName('Bild').AsString;
    dm_PCM.qry_Work.ParamByName('Newpage').asString:= dm_PCM.qry_Doku.FieldByName('Newpage').AsString;
    dm_PCM.qry_Work.ParamByName('Breite').AsFloat:= dm_PCM.qry_Doku.FieldByName('Breite').AsFloat;
    dm_PCM.qry_Work.execsql;
    dm_PCM.qry_Doku.Refresh;
  end;
end;
procedure Tfrm_Doku.btn_VersionDeleteClick(Sender: TObject);
var
  iButton: integer;
begin

  if dm_PCM.qry_Doku.FieldByName('ID').AsInteger > 0 then
  begin
    iButton:=  MessageDlg('Möchten Die den eintrag wirklich löschen?', TMsgDlgType.mtWarning,[mbYes,mbno],0);
    if iButton = 6 then
       dm_PCM.qry_Doku.Delete;
  end;
end;
procedure Tfrm_Doku.btn_VersionExportHTMLClick(Sender: TObject);
var
  sApplikation: String;
begin
  if dm_PCM.qry_Doku.FieldByName('Program').AsString <> '' then
    sApplikationCur:=dm_PCM.qry_Doku.FieldByName('Program').AsString;
  Application.CreateForm(Tfrm_DokuCreate, frm_DokuCreate);
  if frm_DokuCreate.Execute(True,sApplikation) then
  begin
    ShowWaitForm(TForm(Self), PWideChar('Dokumentation HTM wird erstellt'), 1,417, 65);
    try
      CreateDokuHTM(sApplikation,sApplikation = 'Alle');
      WaitFormStep;
      CloseWaitForm;
    except
      CloseWaitForm;
    end;
  end;
end;
procedure Tfrm_Doku.btn_VersionExportHTMLPDFClick(Sender: TObject);
var
  sApplikation: String;
begin
  if dm_PCM.qry_Doku.FieldByName('Program').AsString <> '' then
    sApplikationCur:=dm_PCM.qry_Doku.FieldByName('Program').AsString;
  Application.CreateForm(Tfrm_DokuCreate, frm_DokuCreate);
  if frm_DokuCreate.Execute(True,sApplikation) then
  begin
    ShowWaitForm(TForm(Self), PWideChar('Dokumentation HTM wird erstellt'), 2,417,65);
    try
      CreateDokuHTM(sApplikation,sApplikation = 'Alle');
      WaitFormStep;
      WaitFormSetText('Dokumentation DOC wird erstellt');
      CreateDokuDOCPDF(sApplikation,sApplikation = 'Alle');
      WaitFormStep;
      CloseWaitForm;
    except
      CloseWaitForm;
    end;
  end;
end;
procedure Tfrm_Doku.btn_VersionExportPDFClick(Sender: TObject);
var
  sApplikation: String;
begin
  if dm_PCM.qry_Doku.FieldByName('Program').AsString <> '' then
    sApplikationCur:=dm_PCM.qry_Doku.FieldByName('Program').AsString;
  Application.CreateForm(Tfrm_DokuCreate, frm_DokuCreate);
  if frm_DokuCreate.Execute(True,sApplikation) then
  begin
    ShowWaitForm(TForm(Self), PWideChar('Dokumentation DOC wird erstellt'), 1,417,65);
    try
      WaitFormSetText('Dokumentation DOC wird erstellt');
      CreateDokuDOCPDF(sApplikation,sApplikation = 'Alle');
      WaitFormStep;
      CloseWaitForm;
    except
      CloseWaitForm;
    end;
  end;
end;
procedure Tfrm_Doku.btn_VersionNewClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_VersionDoku, frm_PCM_VersionDoku);
  frm_PCM_VersionDoku.Execute(True,0,'',0,'','','','','','',False,0,False);
  frm_PCM_VersionDoku.Show;
end;
procedure Tfrm_Doku.btn_VersionRefreshClick(Sender: TObject);
begin
  dm_PCM.qry_Doku.Refresh;
end;
procedure Tfrm_Doku.tv_VersionCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btn_VersionChangeClick(Self);
end;
{$EndRegion Buttonfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_Doku.FormActivate(Sender: TObject);
begin
  FormSHow(Self);
end;
procedure Tfrm_Doku.FormShow(Sender: TObject);
  procedure Opendata;
  begin
    dm_pcm.qry_Doku.Open;
    tv_version.ViewData.Expand(True);
  end;
  procedure InitializeBrowser(AParent: TWinControl);
  begin
    if not Assigned(FWebBrowser) then
    begin
      FWebBrowser := TWebBrowserFactory.CreateWebBrowser(Self);
      FWebBrowser.Parent := AParent;
      FWebBrowser.Align := alClient;
      FWebBrowser.OnBeforeNavigate := nil;
    end
    else
    begin
      FreeAndNil(FWebBrowser);
      FWebBrowser := TWebBrowserFactory.CreateWebBrowser(Self);
      FWebBrowser.Parent := AParent;
      FWebBrowser.Align := alClient;
      FWebBrowser.OnBeforeNavigate := nil;
    end;
    FWebBrowser.Navigate(ExtractFilePath(ParamStr(0)) + '\PCM.htm');
  end;
begin
  Opendata;
  FreeAndNil(FWebBrowser);
  GlobalWebView2Loader.Destroy;
  GlobalWebView2Loader:= TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := ExtractFileDir(Application.ExeName) + '\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  InitializeBrowser(grpbx_Browser);
  if dm_PCM.qry_Versions.RecordCount > 0 then
  begin
    btn_VersionNew.Enabled:= true;
    btn_VersionCopy.Enabled:= true;
    btn_VersionChange.Enabled:= true;
  end;
end;
{$EndRegion Formfunktionen}
end.
