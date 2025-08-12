unit PCM.Modul.F_Update.Import;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxLabel, cxGroupBox, Vcl.Menus, cxProgressBar, Vcl.StdCtrls,
  cxButtons, dxShellDialogs, Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,  system.DateUtils,System.StrUtils, dxUIAClasses,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses,
  dxLayoutControl;
type
  TUpdateString = record
    iProgramm: Integer;
    sProgramm: String;
    dVersionDatum: TDate;
    iVersionMain: Integer;
    iVersionSub: Integer;
    sDescription: string;
    sStatement: String;
  end;
  TUpdateStrings = array of TUpdateString;
type
  Tfrm_PCM_Import = class(TForm)
    btn_import: TcxButton;
    cxButton2: TcxButton;
    dxOpenFileDialog1: TdxOpenFileDialog;
    qry_allg: TFDQuery;
    prgbr_Status: TcxProgressBar;
    edt_Importfile: TcxTextEdit;
    cxButton1: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    procedure cxButton2Click(Sender: TObject);
    procedure btn_importClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxTextEdit1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private-Deklarationen }
    function SetSQLStatementCombo(AStatement: String) : integer;
    function GetTable(AStatement:String) : String;
    function GetColumnName(AStatement: String; AIndex: integer) : String;
    function GetDBDataType(AStatement: String; AIndex: integer; ASpalte: String) : String;
  public
    { Public-Deklarationen }
  end;

var
  frm_PCM_Import: Tfrm_PCM_Import;

implementation

{$R *.dfm}

uses PCM.Data, PCM.Main, PCM.Modul.F_Update, PCM.Devmanager.Strings;
////////////////////////////////////////////////////////////////////////////////
// HELPER                                                                     //
////////////////////////////////////////////////////////////////////////////////
function Tfrm_PCM_Import.SetSQLStatementCombo(AStatement: String) : integer;
begin
  Result:= -1;
  if Pos('CREATE TABLE',AStatement) > 0 then
    Result:=0;
  if Pos('ALTER TABLE',AStatement) > 0 then
    Result:=1;
  if Pos('INSERT INTO',AStatement) > 0 then
    Result:=2;
  if Pos('UPDATE',AStatement) > 0 then
    Result:=3;
  if Pos('DELETE FROM',AStatement) > 0 then
    Result:=4;
end;
function Tfrm_PCM_Import.GetColumnName(AStatement: String; AIndex: integer): String;
var
  iPos,iCount: Integer;
  strLstField: TStringList;
  sTemp: String;
begin
  Result:= '';
  strLstField:= TStringList.Create;
  case Aindex of
  0:
    begin
      iPos:= Pos('(',AStatement);
      sTemp:= Copy(AStatement, iPos + 1 ,Length(AStatement) - iPos);
      iPos:= Pos('PRIMARY KEY',sTemp);
      sTemp:= Copy(sTemp, 1,iPos-3);
      strLstField.Delimiter:= ',';
      strLstField.StrictDelimiter:= true;
      strLstField.DelimitedText:= sTemp;
      for iCount := 0 to strLstField.Count - 1 do
      begin
        sTemp:=  strLstField.Strings[iCount];
        iPos:= Pos('`',sTemp);
        sTemp:= Copy(sTemp, iPos + 1 ,Length(sTemp) - iPos);
        iPos:= Pos('`',sTemp);
        sTemp:= Copy(sTemp, 1,iPos-1);
        Result := Result + ',' + sTemp;
      end;
      Result:= Copy(Result, 2,Length(Result)-1);
    end;
  1:
    begin
      iPos:= Pos('ADD COLUMN',AStatement);
      Result:= Copy(AStatement, iPos + Length('ADD COLUMN ')+1,Length(AStatement) - iPos);
      iPos:= Pos('`',Result);
      Result:= Copy(Result, 1,iPos-1);

    end;
  end;
  strLstField.Free;
end;
function Tfrm_PCM_Import.GetDBDataType(AStatement: String; AIndex: integer; ASpalte: String): String;
var
  iPos: Integer;
  strlst_Columns: TStringlist;
  sTemp: String;
begin
  strlst_Columns:= TStringlist.Create;
  strlst_Columns.Delimiter:= ',';
  strlst_Columns.StrictDelimiter:= true;
  strlst_Columns.DelimitedText:= ASpalte;
  Result:= '';
  case Aindex of
  0:
    begin
      iPos:= Pos('(',AStatement);
      sTemp:= Copy(AStatement, iPos + 1 ,Length(AStatement) - iPos);
      iPos:= Pos('PRIMARY KEY',sTemp);
      Result:= Copy(sTemp, 1,iPos-2);
    end;
  1:
    begin
      iPos:= Pos('ADD COLUMN',AStatement);
      if iPos > 0 then
      begin
        Result:= Copy(AStatement, iPos + Length('ADD COLUMN ')+1,Length(AStatement) - iPos);
        iPos:= Pos('`',Result);
        Result:= Copy(Result, 1,iPos-1);
      end;
    end;
  end;
  strlst_Columns.Free;
end;
function Tfrm_PCM_Import.GetTable(AStatement:String) : String;
var
  iPos: Integer;
begin
  Result:= '';
  iPos:= Pos('`',AStatement);
  if iPos > 0 then
  begin
    Result:= Copy(AStatement, iPos + 1,Length(AStatement) - iPos);
    iPos:= Pos('`',Result);
    Result:= Copy(Result, 1,iPos-1);
  end;

end;
////////////////////////////////////////////////////////////////////////////////
// MAIN                                                                     //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Import.btn_importClick(Sender: TObject);
var
  Node_Programm,Node_Version,Node_Description: IXMLNode;
  XMLDoc :IXMLDocument;
  sProgram,sBeschreibung,sStatement,sTablename,sSpalte,sDataType,
  sFeld,sDatentyp,sDatentyp1,sDatentyp2,sStandartWert,sPrimaerschluessel,
  sline,sline1,sLeerwert: String;
  dDateVersion: TDate;
  iProgram,iMajor, iMinor, iSQLStatement, iArrayCount,iLastID,iCount,iPos,iLaenge,
  iVorkomma,iNachkomma: integer;
  arUpdate: TUpdateStrings;
  strLstDatatypes: TStringlist;
  wYear,wMonth,wDay: Word;
  sDateValue: String;
begin
  dxLayoutItem5.Caption:= rs_PCMDevManager_CAPXML;
  qry_Allg.SQL.text:= 'Delete From update_updateversion';
  qry_Allg.ExecSQL;
  qry_Allg.SQL.text:= 'Delete From update_updateversion_fields';
  qry_Allg.ExecSQL;
  XMLDoc:=newXMLDocument;
  XMLDoc.LoadFromFile(edt_Importfile.Text);
  XMLDoc.Active:=True;
  Node_Programm := XMLDoc.DocumentElement.ChildNodes['database'];
  while Assigned(Node_Programm) do
  begin
    sProgram:= VarToStr(Node_Programm.Attributes['name']);
    if sProgram <> '' then
    begin
      Node_Version := Node_Programm.ChildNodes['version'];
      while Assigned(Node_Version) do
      begin
        sDateValue:= VarToStr(Node_Version.Attributes['date']);
        wYear:= StrToInt(Copy(sDateValue,7,4));
        wMonth:= StrToInt(Copy(sDateValue,4,2));
        wDay:= StrToInt(Copy(sDateValue,1,2));


        dDateVersion:= EncodeDate(wYear,wMonth,wDay);
        iMajor:= StrToInt(VarToStr(Node_Version.Attributes['major']));
        iMinor:= StrToInt(VarToStr(Node_Version.Attributes['minor']));
        Node_Description := Node_Version.ChildNodes['description'];
        while Assigned(Node_Description) do
        begin
          if node_Description.NodeName = 'description' then
          begin
            sBeschreibung:= VarToStr(Node_Description.NodeValue);
          end
          else
          begin
            sStatement:= VarToStr(Node_Description.NodeValue);
            iProgram:= 1;
            SetLength(arUpdate,Length(arUpdate) + 1);
            arUpdate[High(arUpdate)].iProgramm:= iProgram;
            arUpdate[High(arUpdate)].sProgramm:= sProgram;
            arUpdate[High(arUpdate)].dVersionDatum:= dDateVersion;
            arUpdate[High(arUpdate)].iVersionMain:= iMajor;
            arUpdate[High(arUpdate)].iVersionSub:= iMinor;
            arUpdate[High(arUpdate)].sDescription:= sBeschreibung;
            arUpdate[High(arUpdate)].sStatement:= StringReplace(sStatement, #9,'', [rfReplaceAll]);;


          end;
          Node_Description:= Node_Description.NextSibling;
        end;
        Node_Version := Node_Version.NextSibling;
      end;

    end;
    Node_Programm := Node_Programm.NextSibling;
  end;
  prgbr_Status.Properties.Min:= 0;
  prgbr_Status.Properties.Max:= High(arUpdate);
  prgbr_Status.Position:= 0;
  for iArrayCount := 0 to High(arUpdate) do
  begin
    prgbr_Status.Position:= prgbr_Status.Position + 1;
    dxLayoutItem5.caption:= rs_PCMDevManager_CAPDatabase + arUpdate[iArrayCount].sProgramm + '     Version: ' + IntToStr(arUpdate[iArrayCount].iVersionMain) + '.' + IntToStr(arUpdate[iArrayCount].iVersionSub);


    iSQLStatement:= SetSQLStatementCombo(arUpdate[iArrayCount].sStatement);
    sTablename:= GetTable(arUpdate[iArrayCount].sStatement);
    sSpalte:= GetColumnName(arUpdate[iArrayCount].sStatement,iSQLStatement);
    sPrimaerschluessel:= '';
    iPos := Pos('PRIMARY KEY',arUpdate[iArrayCount].sStatement);
    if iPos > 0 then
    begin
      sLine:= Copy(arUpdate[iArrayCount].sStatement,iPos,Length(arUpdate[iArrayCount].sStatement));
      iPos := Pos('`',sLine);
      sLine:= Copy(sLine,iPos  + 1,Length(sLine));
      iPos := Pos('`',sLine);
      sPrimaerschluessel:= Copy(sLine,1,iPos- 1);
    end;
    if sSpalte <> '' then
      sDataType:= GetDBDataType(arUpdate[iArrayCount].sStatement,iSQLStatement,sSpalte);

    Application.ProcessMessages;
    qry_Allg.SQL.text:= 'INSERT INTO update_updateversion ' +
                        '(Programm, VersionDate, VersionMain, VersionSub, Description, Statement, StatementType, `Table`, Primaerschluessel) VALUES' +
                        '(:Programm,:VersionDatum,:VersionMain,:VersionSub,:Description,:Statement, :StatementType, :Table, :Primaerschluessel)';
    qry_Allg.ParamByName('Programm').AsInteger:= arUpdate[iArrayCount].iProgramm;
    qry_Allg.ParamByName('VersionDatum').AsDate:= arUpdate[iArrayCount].dVersionDatum;
    qry_Allg.ParamByName('VersionMain').AsInteger:= arUpdate[iArrayCount].iVersionMain;
    qry_Allg.ParamByName('VersionSub').AsInteger:= arUpdate[iArrayCount].iVersionSub;
    qry_Allg.ParamByName('Description').AsString:= arUpdate[iArrayCount].sDescription;
    qry_Allg.ParamByName('Statement').AsString:= arUpdate[iArrayCount].sStatement ;
    qry_Allg.ParamByName('StatementType').AsInteger:= iSQLStatement;
    qry_Allg.ParamByName('Table').AsString:= sTablename;
    qry_Allg.ParamByName('Primaerschluessel').AsString:=  sPrimaerschluessel;
    qry_Allg.ExecSQL;
    if sDataType <> '' then
    begin
      qry_Allg.SQL.Text:= 'SELECT ID FROM update_updateversion ' +
                        'WHERE Programm = :Programm' +
                        ' and VersionDate = :VersionDatum ' +
                        ' and VersionMain = :VersionMain ' +
                        ' and VersionSub = :VersionSub ' +
                        ' and Description = :Description ' +
                        ' and Statement = :Statement ' +
                        ' and StatementType = :StatementType ' +
                        ' and `Table` = :Table';
      qry_Allg.ParamByName('Programm').AsInteger:= arUpdate[iArrayCount].iProgramm;
      qry_Allg.ParamByName('VersionDatum').AsDate:= arUpdate[iArrayCount].dVersionDatum;
      qry_Allg.ParamByName('VersionMain').AsInteger:= arUpdate[iArrayCount].iVersionMain;
      qry_Allg.ParamByName('VersionSub').AsInteger:= arUpdate[iArrayCount].iVersionSub;
      qry_Allg.ParamByName('Description').AsString:= arUpdate[iArrayCount].sDescription;
      qry_Allg.ParamByName('Statement').AsString:= arUpdate[iArrayCount].sStatement ;
      qry_Allg.ParamByName('StatementType').AsInteger:= iSQLStatement;
      qry_Allg.ParamByName('Table').AsString:= sTablename;

      qry_Allg.open;
      iLastID:= qry_Allg.FieldByName('ID').AsInteger;
      qry_Allg.Close;
      strLstDatatypes:= TStringlist.Create;
      strLstDatatypes.Delimiter:= ',';
      strLstDatatypes.StrictDelimiter:= true;
      strLstDatatypes.DelimitedText:= sDataType;
      for iCount := 0 to strLstDatatypes.Count - 1 do
      begin
        sLine:= strLstDatatypes.Strings[iCount];
        if Pos('enum(''True''',sLine) > 0 then
        begin
          sline1:= sline;
          continue;
        end;
        if Pos('enum(''False''',sLine) > 0 then
        begin
          sline1:= sline;
          continue;
        end;
        if (Pos('''False'') DEFAULT',sline) > 0 ) or (Pos('''True'') DEFAULT',sline) > 0 ) then
          sline := sline1 + ',' +  sline;
        iPos := Pos('`',sline);
        sLine:= Copy(sline, iPos + 1,Length(sLine));
        sFeld:= Copy(sline,1 , Pos('`',sline)-1);
        iPos := Pos('`',sline);
        sLine:= Copy(sline, iPos+2,Length(sLine));
        iPos := Pos(' ',sline);
        sDatentyp:= Copy(sline, 1,iPos-1);
        iPos := Pos('(',sDatentyp);
        sDatentyp1 := Copy(sDatentyp,1,iPos-1);
        iLaenge:=0;
        iVorkomma:=0;
        iNachkomma:=0;
        if sDatentyp1 = '' then
          sDatentyp1:= sDatentyp;
//            ShowMessage('sDatentyp1: ' + sDatentyp1 + ' sDatentyp: ' + sDatentyp);
//        if Pos('double',sDatentyp1) > 1 or Pos('enum',sDatentyp1)  then

        case AnsiIndexStr(sDatentyp1, ['bit','varchar', 'char','binary', 'varbinary','float','double','decimal','enum','set']) of
        0,1,2,3,4:
          begin
            iPos := Pos('(',sDatentyp);
            sDatentyp2:= Copy(sDatentyp,iPos + 1,Length(sDatentyp));
            iPos := Pos(')',sDatentyp2);
            sDatentyp2:= Copy(sDatentyp2,1,iPos - 1);
            iLaenge:= StrToInt(sDatentyp2);
          end;
        5,6,7,8,9:
          begin
            iPos := Pos('(',sDatentyp);
            sDatentyp2:= Copy(sDatentyp,iPos + 1,Length(sDatentyp));
            iPos := Pos(')',sDatentyp2);
            sDatentyp1:= Copy(sDatentyp2,1,iPos - 1);
          end;
        end;
        iPos := Pos(' ',sline);
        sLine:= Copy(sline, iPos+1,Length(sLine));
        iPos := Pos('NOT NULL',sline);
        if iPos > 0 then
        begin
          sLeerwert:= 'False';
          sStandartWert:= Copy(sline, Length('NOT NULL')+2,Length(sLine));
        end
        else begin
          iPos := Pos('NULL',sline);
          if iPos > 0 then
          begin
            sLeerwert:= 'True';
            iPos := Pos(' ',sline);
            sLine:= Copy(sline, iPos+1,Length(sLine));
//            iPos := Pos(' ',sline);
            sStandartWert:= Copy(sline, 1 + Length('DEFAULT') +1,Length(sLine));
          end;
        end;
        if Pos('DEFAULT ''''',sline) > 0 then
        begin
          sLeerwert:= 'True';
          sStandartWert:= '''''';
        end;
        if Pos('DEFAULT ''False''',sline) > 0 then
        begin
          sLeerwert:= 'True';
          sStandartWert:= '''False''';
        end;
        if Pos('DEFAULT ''True''',sline) > 0 then
        begin
          sLeerwert:= 'True';
          sStandartWert:= '''True''';
        end;
        if Pos('DEFAULT ',sStandartWert) > 0 then
          sStandartWert:= StringReplace(sStandartWert,'DEFAULT ','',[rfIgnoreCase,rfReplaceAll]);

        qry_Allg.SQL.text:= 'INSERT INTO update_updateversion_fields ' +
                        '(Feldname, Datentyp, Laenge, Vorkomma, Nachkomma, NichtLeer, StandartWert, ID_manager_Updateversion_fields) VALUES' +
                        '(:Feldname,:Datentyp,:Laenge,:Vorkomma,:Nachkomma,:NichtLeer, :StandartWert, :ID_manager_Updateversion_fields )';
        qry_Allg.ParamByName('Feldname').AsString:= sFeld;
        if sDatentyp1 <> '' then
          qry_Allg.ParamByName('Datentyp').AsString:= sDatentyp1
        else
          qry_Allg.ParamByName('Datentyp').AsString:= sDatentyp;
        qry_Allg.ParamByName('Laenge').AsInteger:= iLaenge;
        qry_Allg.ParamByName('Vorkomma').AsInteger:= iVorkomma;
        qry_Allg.ParamByName('Nachkomma').AsInteger:= iNachkomma;
        qry_Allg.ParamByName('NichtLeer').asString:= sLeerwert ;
        qry_Allg.ParamByName('StandartWert').asString:= sStandartWert;
        qry_Allg.ParamByName('ID_manager_Updateversion_fields').AsInteger:= iLastID;
        qry_Allg.ExecSQL;
        sStandartWert:= '';
      end;
      strLstDatatypes.Free;
    end;
  end;

  dm_PCM.qry_Versions.refresh;
  if dm_PCM.qry_Versions.RecordCount > 0 then
  begin
    frm_Update.btn_VersionNew.Enabled:= true;
    frm_Update.btn_VersionChange.Enabled:= true;
  end
  else begin
    frm_Update.btn_VersionNew.Enabled:= false;
    frm_Update.btn_VersionChange.Enabled:= false;
  end;
  Close;
end;

procedure Tfrm_PCM_Import.cxButton1Click(Sender: TObject);
begin
  if dxOpenFileDialog1.Execute(handle) then
    edt_Importfile.Text:= dxOpenFileDialog1.FileName;
end;

procedure Tfrm_PCM_Import.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_PCM_Import.cxTextEdit1PropertiesEditValueChanged(
  Sender: TObject);
begin
  if edt_Importfile.Text <> '' then
  begin
    btn_import.Enabled:= true;
    btn_import.SetFocus;
  end
  else
    btn_import.Enabled:= false;
end;

end.

