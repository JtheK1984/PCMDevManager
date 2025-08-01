unit PCM.Modul.G_Swagger;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxStatusBar,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxPC, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxContainer, cxGroupBox,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLabel, dxBar,inifiles,
  System.ImageList, Vcl.ImgList, cxImageList, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Authenticator.Basic,System.JSON,
  dxmdaset, system.NetEncoding,System.ZLib, cxRadioGroup,
  System.Net.HttpClient,
  System.Net.HttpClientComponent, System.Net.URLClient, Vcl.ComCtrls, cxListView,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdServerIOHandler, IdSSL, IdSSLOpenSSL, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, cxMemo, cxRichEdit, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxImageComboBox,
  dxLayoutControlAdapters, dxDockControl, dxDockPanel, cxScrollBox, Vcl.ExtCtrls,
  cxCalc, cxBlobEdit, cxCalendar, cxSpinEdit, dxUIAClasses;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Swagger = class(TForm)
    stbr_Rest: TdxStatusBar;
    imglst_32x32: TcxImageList;
    HTTPBasicAuthenticatorPCM: THTTPBasicAuthenticator;
    RESTClient: TRESTClient;
    qry_Config: TFDQuery;
    dxLayoutControl1: TdxLayoutControl;
    lagrp_Rest: TdxLayoutGroup;
    lagrp_PCMAPPCheckLogin: TdxLayoutGroup;
    lbl_CheckServer_Parameter: TdxLayoutLabeledItem;
    sepitm_CheckServer_Parameter: TdxLayoutSeparatorItem;
    lbl_CheckServer_ParameterDesc: TdxLayoutLabeledItem;
    lbl_CheckServer_Responses: TdxLayoutLabeledItem;
    sepitm_CheckServer_Response: TdxLayoutSeparatorItem;
    lbl_CheckServer_Code200: TdxLayoutLabeledItem;
    lbl_CheckServer_Code400_500: TdxLayoutLabeledItem;
    lbl_CheckServer_ExampleHeader: TdxLayoutLabeledItem;
    lbl_GetLogin_ExampleHeader: TdxLayoutLabeledItem;
    lbl_SetDeviceID_ParameterDesc: TdxLayoutLabeledItem;
    lbl_GetContacts_Parameter: TdxLayoutLabeledItem;
    itm_CheckServer_Execute: TdxLayoutItem;
    btn_Checkserver: TcxButton;
    rchedt_RequestURL: TcxRichEdit;
    rchedt_ResponseHeaders: TcxRichEdit;
    rchedt_ResponseBody: TcxRichEdit;
    sepitm_CheckServer_ParameterResponse: TdxLayoutSeparatorItem;
    itm_CheckServer_Example: TdxLayoutItem;
    mem_CheckServer_Example: TcxMemo;
    lagrp_PCMAPPGetContacts: TdxLayoutGroup;
    lagrp_PCMAPPSetContacts: TdxLayoutGroup;
    lagrp_PCMAPPSetDeviceID: TdxLayoutGroup;
    lagrp_PCMAPP_Checkserver: TdxLayoutGroup;
    imglst_28x80: TcxImageList;
    lagrp_PCMAPPGetCalendar: TdxLayoutGroup;
    lagrp_PCMAPPSetCalendar: TdxLayoutGroup;
    lagrp_PCMAPPGetPasswords: TdxLayoutGroup;
    lagrp_PCMAPPSetPasswords: TdxLayoutGroup;
    lagrp_PCMAPPGetSerials: TdxLayoutGroup;
    lagrp_PCMAPPSetSerials: TdxLayoutGroup;
    lagrp_PCMAPPGetReceipts: TdxLayoutGroup;
    lagrp_PCMAPPSetReceipts: TdxLayoutGroup;
    lagrp_PCMAPPGetExpenditure: TdxLayoutGroup;
    lbl_GetLogin_Parameter: TdxLayoutLabeledItem;
    lbl_GetLogin_Code400_500: TdxLayoutLabeledItem;
    lbl_GetLogin_ParameterDesc: TdxLayoutLabeledItem;
    lbl_GetLogin_Responses: TdxLayoutLabeledItem;
    lbl_GetLogin_Code200: TdxLayoutLabeledItem;
    lbl_SetDeviceID_Parameter: TdxLayoutLabeledItem;
    lbl_SetDeviceID_Responses: TdxLayoutLabeledItem;
    lbl_SetDeviceID_Code200: TdxLayoutLabeledItem;
    lbl_SetDeviceID_Code400_500: TdxLayoutLabeledItem;
    lbl_GetContacts_ParameterDesc: TdxLayoutLabeledItem;
    lbl_GetContacts_Params: TdxLayoutLabeledItem;
    lbl_GetContacts_Code200: TdxLayoutLabeledItem;
    lbl_GetContacts_Responses: TdxLayoutLabeledItem;
    lbl_GetContacts_ExampleHeader: TdxLayoutLabeledItem;
    lbl_SetDeviceID_ExampleHeader: TdxLayoutLabeledItem;
    sepitm_GetLogin_Parameter: TdxLayoutSeparatorItem;
    sepitm_GetLogin_Response: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    sepitm_GetLogin_ParameterResponse: TdxLayoutSeparatorItem;
    sepitm_GetContacts_Response: TdxLayoutSeparatorItem;
    dxLayoutItem1: TdxLayoutItem;
    itm_GetContcts_ExecuteDB: TdxLayoutItem;
    itm_GetContacts_Example: TdxLayoutItem;
    itm_GetContacts_Params: TdxLayoutItem;
    itm_SetDeviceID_Execute: TdxLayoutItem;
    itm_SetDeviceID_Example: TdxLayoutItem;
    itm_Getlogin_Execute: TdxLayoutItem;
    itm_GetLogin_Example: TdxLayoutItem;
    itm_Getlogin_ExecuteDB: TdxLayoutItem;
    btn_CheckLogin: TcxButton;
    btn_CheckLoginSQL: TcxButton;
    mem_GetLogin_Example: TcxMemo;
    lagrp_PCMAPPSetExpenditure: TdxLayoutGroup;
    itm_GetContcts_Execute: TdxLayoutItem;
    sepitm_SetDeviceID_Parameter: TdxLayoutSeparatorItem;
    sepitm_SetDeviceID_ParameterResponse: TdxLayoutSeparatorItem;
    sepitm_SetDeviceID_Response: TdxLayoutSeparatorItem;
    sepitm_GetContacts_Params: TdxLayoutSeparatorItem;
    sepitm_GetContacts_ParameterResponse: TdxLayoutSeparatorItem;
    mem_SetDeviceID_Example: TcxMemo;
    btn_SetDeviceID: TcxButton;
    edt_GetContacts_Parameter: TcxTextEdit;
    lbl_GetContacts_Code400_500: TdxLayoutLabeledItem;
    btn_GetContacts: TcxButton;
    btn_GetContactsSQL: TcxButton;
    mem_GetContacts_Example: TcxMemo;
    RestClientPCM: TRESTClient;
    RESTRequest1: TRESTRequest;
    lagrp_PCMAPPGetVouchers: TdxLayoutGroup;
    lagrp_PCMAPPSetVouchers: TdxLayoutGroup;
    lagrp_PCMAPPGetGiftCards: TdxLayoutGroup;
    lagrp_PCMAPPSetGiftCards: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    grpbx_ResponsepanelGroup_Root: TdxLayoutGroup;
    grpbx_Responsepanel: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    dxLayoutLabeledItem4: TdxLayoutLabeledItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutLabeledItem5: TdxLayoutLabeledItem;
    dxLayoutItem4: TdxLayoutItem;
    procedure btn_CheckserverClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btn_CheckLoginClick(Sender: TObject);
    procedure btn_CheckLoginSQLClick(Sender: TObject);
    procedure btn_SetDeviceIDClick(Sender: TObject);
    procedure btn_GetContactsClick(Sender: TObject);
    procedure btn_GetContactsSQLClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxLayoutGroup2Button0Click(Sender: TObject);
    procedure grpbx_ResponsepanelMouseLeave(Sender: TObject);
  private
    { Private-Deklarationen }
    freq, startTime, endTime: Int64;
    sText: String;
    FormattedJson: string;
    JSONResult: TJSONObject;
    procedure ResizeResponse;
  public
    { Public-Deklarationen }
    function GetRequest(ARequestBody: String; AResource: String; AGETPOST: TRESTRequestMethod = rmPOST ): TJSONObject;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Swagger: Tfrm_Swagger;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Restfunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Restfunctions}
function Tfrm_Swagger.GetRequest(ARequestBody: String; AResource: String; AGETPOST: TRESTRequestMethod = rmPOST ): TJSONObject;
var
  RestRequest: TRESTRequest;
begin
  HTTPBasicAuthenticatorPCM.Username:= dm_pcm.sUser;
  HTTPBasicAuthenticatorPCM.Password:= dm_pcm.sPass;
  RestClientPCM.BaseURL:= dm_pcm.sType + dm_pcm.sBaseurl +':' + dm_pcm.sPort + '/PCM/sandbox-api/v1/';
  RESTClientPCM.ContentType.Empty;
  RestRequest := TRESTRequest.Create(nil);
  try
    RestRequest.Timeout:= 30000;
    RESTRequest.AcceptEncoding := 'gzip, deflate, br';
    RestRequest.Client := RestClientPCM;
    RestRequest.Method := AGETPOST;
    RestRequest.Resource := AResource;
    rchedt_RequestURL.Text:= dm_pcm.sType + dm_pcm.sBaseurl +':' + dm_pcm.sPort + '/PCM/sandbox-api/v1/' + AResource;
    if ARequestBody <> '' then
    begin
      RestRequest.Body.Add(TJSonObject.ParseJSONValue(ARequestBody) as TJSONObject);
    end;
    RestRequest.Execute;
    Result:= TJSonObject.ParseJSONValue(RestRequest.Response.JSONText) as TJSONObject;
  finally
    RestRequest.Free;
  end;
end;
procedure Tfrm_Swagger.grpbx_ResponsepanelMouseLeave(Sender: TObject);
  function GetComponentNameAtMousePosition: string;
  var
    m_Control: TWinControl;
  begin
    m_Control := FindVCLWindow(Mouse.CursorPos);
    if Assigned(m_Control) then
      Result := m_Control.Name
    else
      Result := '';
  end;
var
  m_CompName: string;
begin
  m_CompName := GetComponentNameAtMousePosition;
  if (m_CompName <> '') and (m_CompName <> 'rchedt_RequestURL') and (m_CompName <> 'rchedt_ResponseBody') and (m_CompName <> 'rchedt_ResponseHeaders') then
    grpbx_Responsepanel.Visible:= false;
end;

{$EndRegion Restfunctions}
////////////////////////////////////////////////////////////////////////////////
// OtherFunctions                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region OtherFunctions}
procedure Tfrm_Swagger.dxLayoutGroup2Button0Click(Sender: TObject);
begin
  grpbx_Responsepanel.Visible:= false;
end;
procedure Tfrm_Swagger.ResizeResponse;
begin
  var iTotalHeight := rchedt_ResponseBody.Lines.Count * 16;
  if iTotalHeight > 400 then
  begin
    iTotalHeight:= 400;
    rchedt_ResponseBody.Properties.ScrollBars:= ssVertical;
  end;
  rchedt_ResponseBody.Height := iTotalHeight;
  grpbx_Responsepanel.Left:=  Round((frm_Swagger.Width - grpbx_Responsepanel.Width) /2);
  grpbx_Responsepanel.Top:=  Round((frm_Swagger.Height - grpbx_Responsepanel.Height) /2);
end;
{$EndRegion OtherFunctions}
////////////////////////////////////////////////////////////////////////////////
// RequestFunctions                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region RequestFunctions}
procedure Tfrm_Swagger.btn_CheckserverClick(Sender: TObject);
begin
  QueryPerformanceFrequency(freq);
  QueryPerformanceCounter(startTime);
  JSONResult := GetRequest('', 'Checkserver',rmget) as TJSONObject;
  FormattedJson := JSONResult.Format;
  rchedt_ResponseBody.Lines.Text := FormattedJson;
  QueryPerformanceCounter(endTime);
  sText:= 'Die Rest-Abfrage benötigte ' + IntToStr((endTime - startTime) * 1000 div freq) + ' ms';
  stbr_Rest.Panels[1].Text:= sTExt;
  ResizeResponse;
  grpbx_Responsepanel.Visible:= true;
end;
procedure Tfrm_Swagger.btn_CheckLoginClick(Sender: TObject);
begin
  QueryPerformanceFrequency(freq);
  QueryPerformanceCounter(startTime);
  JSONResult := GetRequest('', 'CheckLogin',rmget) as TJSONObject;
  FormattedJson := JSONResult.Format;
  rchedt_ResponseBody.Lines.Text := FormattedJson;
  QueryPerformanceCounter(endTime);
  sText:= 'Die Abfrage benötigte ' + IntToStr((endTime - startTime) * 1000 div freq) + ' ms';
  stbr_Rest.Panels[1].Text:= sTExt;
  ResizeResponse;
  grpbx_Responsepanel.Visible:= true;
end;
procedure Tfrm_Swagger.btn_SetDeviceIDClick(Sender: TObject);
begin
  QueryPerformanceFrequency(freq);
  QueryPerformanceCounter(startTime);
  JSONResult := GetRequest(mem_SetDeviceID_Example.Text, 'SetDeviceID',rmput) as TJSONObject;
  FormattedJson := JSONResult.Format;
  rchedt_ResponseBody.Lines.Text := FormattedJson;
  QueryPerformanceCounter(endTime);
  sText:= 'Die Abfrage benötigte ' + IntToStr((endTime - startTime) * 1000 div freq) + ' ms';
  stbr_Rest.Panels[1].Text:= sTExt;
  ResizeResponse;
  grpbx_Responsepanel.Visible:= true;
end;
procedure Tfrm_Swagger.btn_GetContactsClick(Sender: TObject);
begin
  QueryPerformanceFrequency(freq);
  QueryPerformanceCounter(startTime);
  JSONResult := GetRequest('', 'GetContacts?ID_User=' + edt_GetContacts_Parameter.Text ,rmpost) as TJSONObject;
  FormattedJson := JSONResult.Format;
  rchedt_ResponseBody.Lines.Text := FormattedJson;
  QueryPerformanceCounter(endTime);
  sText:= 'Die Abfrage benötigte ' + IntToStr((endTime - startTime) * 1000 div freq) + ' ms';
  stbr_Rest.Panels[1].Text:= sTExt;
  ResizeResponse;
  grpbx_Responsepanel.Visible:= true;
end;
{$EndRegion RequestFunctions}
////////////////////////////////////////////////////////////////////////////////
// DatabaseFunctions                                                          //
////////////////////////////////////////////////////////////////////////////////
{$Region DatabaseFunctions}
procedure Tfrm_Swagger.btn_CheckLoginSQLClick(Sender: TObject);
var
  qry_Work: TFDQuery;
begin
  qry_Work:= TFDQuery.Create(nil);
  qry_Work.Connection:= dm_PCm.con_PCM;
  qry_Work.FetchOptions.Mode:= fmall;
  qry_Work.FetchOptions.RecordCountMode:= cmtotal;
  qry_Work.SQL.Text := 'SELECT ID, Benutzer, Passwort, Startseite FROM Benutzer WHERE Benutzer =:Username AND Passwort=:Password';
  qry_Work.ParamByName('Username').AsString := dm_pcm.sUser;
  qry_Work.ParamByName('Password').AsString := dm_pcm.sPass;
  QueryPerformanceFrequency(freq);
  QueryPerformanceCounter(startTime);
  qry_Work.Open;
  QueryPerformanceCounter(endTime);
  sText:= 'Die Datenbank-Abfrage benötigte ' + IntToStr((endTime - startTime) * 1000 div freq) + ' ms' + ', Datensätze: ' + IntToStr(qry_Work.RecordCount);
  stbr_Rest.Panels[0].Text:= sTExt;
  qry_Work.Close;
  FreeAndNil(qry_Work);
end;
procedure Tfrm_Swagger.btn_GetContactsSQLClick(Sender: TObject);
var
  qry_Work: TFDQuery;
begin
  qry_Work:= TFDQuery.Create(nil);
  qry_Work.Connection:= dm_pcm.con_PCM;
  qry_Work.FetchOptions.Mode:= fmall;
  qry_Work.FetchOptions.RecordCountMode:= cmtotal;
  qry_Work.SQL.Text := 'SELECT kon.ID as Kontakte_ID ,a.Bezeichnung AS Anrede, kon.Vorname,kon.Nachname,' +
                       'kon.Strasse_Privat,kon.PLZ_Privat,kon.Ort_Privat,'+
                       'kon.Telefon_Privat,kon.Handy_Privat, kon.E_mail_Privat,'+
                       'kon.Geburtsdatum, g.Bezeichnung as Geschlecht,'+
                       'f.Bezeichnung as Familienstand, s.Bezeichnung as Staatsangehoerigkeit,'+
                       'k.Bezeichnung as Konfession,kon.Firma,kon.Strasse_Ges,kon.PLZ_Ges,'+
                       'kon.Ort_Ges,kon.Telefon_Ges,kon.Handy_Ges,kon.E_mail_Ges,Internet_Privat,internet_ges '+
                       'FROM manager_kontakte kon '+
                       'LEFT OUTER JOIN manager_Anrede a ON a.ID = kon.ID_Anrede '+
                       'LEFT OUTER JOIN manager_Geschlecht g ON g.ID = kon.ID_GEschlecht '+
                       'LEFT OUTER JOIN manager_Familienstand f ON f.ID = kon.ID_Familienstand '+
                       'LEFT OUTER JOIN manager_Staatsangehoerigkeit s ON s.ID = kon.ID_Staatsangehoerigkeit '+
                       'LEFT OUTER JOIN manager_Konfession k ON k.ID = kon.ID_Konfession Where kon.ID_Benutzer = :ID_Benutzer';
  qry_Work.ParamByName('ID_Benutzer').AsInteger := StrToInt(edt_GetContacts_Parameter.Text);
  QueryPerformanceFrequency(freq);
  QueryPerformanceCounter(startTime);
  qry_Work.Open;
  QueryPerformanceCounter(endTime);
  sText:= 'Die Datenbank-Abfrage benötigte ' + IntToStr((endTime - startTime) * 1000 div freq) + ' ms' + ', Datensätze: ' + IntToStr(qry_Work.RecordCount);
  stbr_Rest.Panels[0].Text:= sTExt;
  qry_Work.Close;
  FreeAndNil(qry_Work);
end;
{$EndRegion DatabaseFunctions}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunctions}
procedure Tfrm_Swagger.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;

procedure Tfrm_Swagger.FormResize(Sender: TObject);
begin
  ResizeResponse;
end;
procedure Tfrm_Swagger.FormShow(Sender: TObject);
begin
  qry_Config.Open;
  case qry_Config.FieldByName('Resttype').AsInteger of
  0: dm_PCM.sType:= 'http://';
  1: dm_PCM.sType:= 'https://';
  end;

  dm_PCM.sBaseurl:= qry_Config.FieldByName('RestBaseUrl').AsString;
  case qry_Config.FieldByName('Restport').AsInteger of
  0: dm_PCM.sPort:= '8081';
  1: dm_PCM.sPort:= '5443';
  end;
  dm_PCM.sUser:= qry_Config.FieldByName('RestUser').AsString;
  dm_PCM.sPass:= qry_Config.FieldByName('RestPassword').AsString;
end;

{$EndRegion FormFunctions}
end.

