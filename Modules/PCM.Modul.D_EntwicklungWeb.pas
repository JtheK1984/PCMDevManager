unit PCM.Modul.D_EntwicklungWeb;

interface

uses
  {$Region Uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.JSON, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxmdaset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxTextEdit, cxMemo, cxDBEdit, dxBarBuiltInMenu, dxBar,
  cxGroupBox, cxPC, System.ImageList, Vcl.ImgList, cxImageList, cxLabel, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer,REST.Client, REST.Authenticator.Basic,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Types,AnsiStrings,shellapi,
  cxSplitter, cxRichEdit, cxDBRichEdit,system.Generics.Collections, dxStatusBar,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxLocalization, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxScrollBox, cxScrollBar,
  dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Vcl.ToolWin, Vcl.ComCtrls, dxLayoutcxEditAdapters,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxImageComboBox, cxGeometry, cxVariants, dxCustomData, cxCustomCanvas,
  dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend, dxChartSimpleDiagram,
  dxChartXYDiagram, dxChartXYSeriesLineView, dxChartXYSeriesAreaView,
  dxChartMarkers, dxChartXYSeriesBarView, dxChartDBData, dxCoreClasses,
  PCM.Browser,dxChartControl,WebView2, uWVBrowserBase, uWVBrowser, dxUIAClasses,
  dxChartPalette;
  {$EndRegion Uses}
type
  {$Region Types}
  TATicket = Record
    iTicketnr: integer;
  end;
  TATickets = array of TATicket;
  TJTicket = record
    sID: String;
    sName: String;
    sKey: String;
  end;
  TJTickets = array of TJTicket;
  TJBoard = record
    sID: String;
    sName: String;
    sKey: String;
  end;
  TJBoards = array of TJBoard;
  Tfrm_Ticket = class(TForm)
    bmgr_main: TdxBarManager;
    brdckCtrl_Azure: TdxBarDockControl;
    tb_Azure: TdxBar;
    btn_AReadTickets: TdxBarLargeButton;
    imglst_32x32: TcxImageList;
    imglst_16x16: TcxImageList;
    ds_Azure: TDataSource;
    httpAuth_Azure: THTTPBasicAuthenticator;
    RESTClient_azure: TRESTClient;
    stbr_main: TdxStatusBar;
    RESTClient_azure_detail: TRESTClient;
    btn_ABoard: TdxBarLargeButton;
    qry_Azure: TFDQuery;
    qry_Prio: TFDQuery;
    ds_Prio: TDataSource;
    brdckCtrl_Jira: TdxBarDockControl;
    tb_Jira: TdxBar;
    btn_JReadTickets: TdxBarLargeButton;
    btn_JBoard: TdxBarLargeButton;
    qry_Tickets_priv: TFDQuery;
    ds_Tickets_priv: TDataSource;
    cmbbx_Desktop: TcxComboBox;
    Chatcrtl_Desktop: TdxChartControl;
    dxChartSimpleDiagram1: TdxChartSimpleDiagram;
    dxChartSimpleSeries1: TdxChartSimpleSeries;
    cmbbx_App: TcxComboBox;
    Chatcrtl_APP: TdxChartControl;
    dxChartSimpleDiagram2: TdxChartSimpleDiagram;
    dxChartSimpleSeries2: TdxChartSimpleSeries;
    grd_Jira: TcxGrid;
    grdDBTblView_Jira: TcxGridDBTableView;
    grdDBTblView_JiraID: TcxGridDBColumn;
    grdDBTblView_JiraEpic: TcxGridDBColumn;
    grdDBTblView_JiraTicketNr: TcxGridDBColumn;
    grdDBTblView_JiraBetreff: TcxGridDBColumn;
    grdDBTblView_JiraNr: TcxGridDBColumn;
    grdDBTblView_JiraApplikation: TcxGridDBColumn;
    grdDBTblView_JiraPrio: TcxGridDBColumn;
    grdDBTblView_JiraStichwort: TcxGridDBColumn;
    grdDBTblView_JiraStatus: TcxGridDBColumn;
    grdDBTblView_JiraType: TcxGridDBColumn;
    grdDBTblView_JiraFixVersion: TcxGridDBColumn;
    grdDBTblView_JiraBeschreibung: TcxGridDBColumn;
    grdDBTblView_JiraSprint: TcxGridDBColumn;
    grdDBTblView_JiraAssignee: TcxGridDBColumn;
    grdDBTblView_JiraBoard: TcxGridDBColumn;
    grdlvl_Jira: TcxGridLevel;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxRichEdit1: TcxRichEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    brdckCtrl_JiraBrowser: TdxBarDockControl;
    httpAuth_Jira: THTTPBasicAuthenticator;
    RESTClient_jira: TRESTClient;
    tb_JiraMax: TdxBar;
    btn_JMinMaxBrowserPriv: TdxBarLargeButton;
    btn_JFilter: TdxBarLargeButton;
    grd_Azure: TcxGrid;
    grd_tblView_Azure: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    grdlvl_Azure: TcxGridLevel;
    brdckCtrl_AzureMax: TdxBarDockControl;
    tb_AzureMax: TdxBar;
    btn_AMinMaxBrowserPriv: TdxBarLargeButton;
    brdckCtrl_Confluence: TdxBarDockControl;
    brdckCtrl_Swagger: TdxBarDockControl;
    brdckCtrl_PCMAPPS: TdxBarDockControl;
    tb_Confluence: TdxBar;
    btn_CMinMaxBrowserPriv: TdxBarLargeButton;
    tb_Swagger: TdxBar;
    btn_SMinMaxBrowserPriv: TdxBarLargeButton;
    btn_SAPI: TdxBarLargeButton;
    tb_PCMApps: TdxBar;
    btn_PMinMaxBrowserPriv: TdxBarLargeButton;
    btn_PWebsiteEdit: TdxBarLargeButton;
    btn_PWebsiteConfig: TdxBarLargeButton;
    btn_JDevtools: TdxBarLargeButton;
    btn_ADevTools: TdxBarLargeButton;
    btn_CDevTools: TdxBarLargeButton;
    btn_SDevTools: TdxBarLargeButton;
    btn_pDevtools: TdxBarLargeButton;
    btn_SSwaggerInit: TdxBarLargeButton;
    btn_PBoard: TdxBarLargeButton;
    btn_SReload: TdxBarLargeButton;
    btn_SCloseNotepad: TdxBarLargeButton;
    btn_SSwaggerUI: TdxBarLargeButton;
    brdckCtrl_AI: TdxBarDockControl;
    brdckCtrl_Github: TdxBarDockControl;
    tb_Github: TdxBar;
    tb_AI: TdxBar;
    btn_AIMinMaxBrowser: TdxBarLargeButton;
    btn_GitMinMaxBrowserPriv: TdxBarLargeButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    pc_tickets: TdxLayoutGroup;
    ts_Jira: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    pc_Jira: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    splt_J: TdxLayoutSplitterItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    ts_Azure: TdxLayoutGroup;
    itmbrdckCtrl_Azure: TdxLayoutItem;
    lagrp_AzureTab: TdxLayoutGroup;
    lagrp_AzureBrowser: TdxLayoutGroup;
    itmbrdckCtrl_AzureMax: TdxLayoutItem;
    splt_A: TdxLayoutSplitterItem;
    lagrp_AzureGrid: TdxLayoutGroup;
    itmgrd_Azure: TdxLayoutItem;
    ts_Confluence: TdxLayoutGroup;
    lagrp_Confluence: TdxLayoutGroup;
    itmbrdckCtrl_Confluence: TdxLayoutItem;
    ts_RESTAPI: TdxLayoutGroup;
    itmbrdckCtrl_Swagger: TdxLayoutItem;
    splt_sNp: TdxLayoutSplitterItem;
    splt_S: TdxLayoutSplitterItem;
    ts_PCMApps: TdxLayoutGroup;
    itmbrdckCtrl_PCMAPPS: TdxLayoutItem;
    splt_P: TdxLayoutSplitterItem;
    ts_Perplexity: TdxLayoutGroup;
    lagrp_Perplexity: TdxLayoutGroup;
    itmbrdckCtrl_AI: TdxLayoutItem;
    ts_Github: TdxLayoutGroup;
    lagrp_Github: TdxLayoutGroup;
    itmbrdckCtrl_Github: TdxLayoutItem;
    itmstbr_main: TdxLayoutItem;
    dxLayoutGroup54: TdxLayoutGroup;
    itmpnl_Github: TdxLayoutItem;
    pnl_Github: TcxGroupBox;
    itmpnl_AI: TdxLayoutItem;
    pnl_AI: TcxGroupBox;
    itmpnl_BrowserPCMApps: TdxLayoutItem;
    itmpnl_pDevTools: TdxLayoutItem;
    pnl_BrowserPCMApps: TcxGroupBox;
    pnl_pDevTools: TcxGroupBox;
    lagrp_RestAPI: TdxLayoutGroup;
    itmpnl_SNotepad: TdxLayoutItem;
    itmpnl_BrowserSwagger: TdxLayoutItem;
    itmpnl_SDevtools: TdxLayoutItem;
    lagrp_PCMAPPS: TdxLayoutGroup;
    pnl_ADevTools: TcxGroupBox;
    pnl_BrowserAzurePriv: TcxGroupBox;
    pnl_BrowserConfluence: TcxGroupBox;
    pnl_CDevTools: TcxGroupBox;
    pnl_SDevtools: TcxGroupBox;
    pnl_SNotepad: TcxGroupBox;
    pnl_BrowserSwagger: TcxGroupBox;
    itmpnl_BrowserConfluence: TdxLayoutItem;
    itmpnl_CDevTools: TdxLayoutItem;
    splt_C: TdxLayoutSplitterItem;
    lagrp_Azure: TdxLayoutGroup;
    itmpnl_BrowserAzurePriv: TdxLayoutItem;
    itmpnl_ADevTools: TdxLayoutItem;
    lagrp_Jira: TdxLayoutGroup;
    itmpnl_BrowserJiraPriv: TdxLayoutItem;
    itmpnl_JDevTools: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    grpbx_Ticketspriv: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    pnl_BrowserJiraPriv: TcxGroupBox;
    pnl_JDevTools: TcxGroupBox;
    dxLayoutGroup3: TdxLayoutGroup;
    RESTRequest1: TRESTRequest;
    procedure FormShow(Sender: TObject);
    procedure btn_AReadTicketsClick(Sender: TObject);
    procedure grdDBTblView_JiraBeschreibungGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;var AHintText: TCaption; var AIsHintMultiLine: Boolean;var AHintTextRect: TRect);
    procedure qry_Tickets_privAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btn_JBoardClick(Sender: TObject);
    procedure btn_JReadTicketsClick(Sender: TObject);
    procedure btn_JMinMaxBrowserPrivClick(Sender: TObject);
    procedure grdDBTblView_JiraCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_JFilterClick(Sender: TObject);
    procedure pc_TicketsChange(Sender: TObject);
    procedure btn_AMinMaxBrowserPrivClick(Sender: TObject);
    procedure btn_CMinMaxBrowserPrivClick(Sender: TObject);
    procedure btn_SMinMaxBrowserPrivClick(Sender: TObject);
    procedure btn_PMinMaxBrowserPrivClick(Sender: TObject);
    procedure btn_SAPIClick(Sender: TObject);
    procedure btn_PWebsiteEditClick(Sender: TObject);
    procedure btn_PWebsiteConfigClick(Sender: TObject);
    procedure btn_JDevtoolsClick(Sender: TObject);
    procedure pnl_JDevToolsResize(Sender: TObject);
    procedure btn_ADevToolsClick(Sender: TObject);
    procedure btn_CDevToolsClick(Sender: TObject);
    procedure btn_SDevToolsClick(Sender: TObject);
    procedure btn_SSwaggerInitClick(Sender: TObject);
    procedure pnl_ADevToolsResize(Sender: TObject);
    procedure pnl_CDevToolsResize(Sender: TObject);
    procedure btn_pDevtoolsClick(Sender: TObject);
    procedure btn_PBoardClick(Sender: TObject);
    procedure pnl_PDevtoolsResize(Sender: TObject);
    procedure pnl_SDevtoolsResize(Sender: TObject);
    procedure btn_SReloadClick(Sender: TObject);
    procedure btn_SCloseNotepadClick(Sender: TObject);
    procedure pnl_SNotepadResize(Sender: TObject);
    procedure btn_SSwaggerUIClick(Sender: TObject);
    procedure btn_AIMinMaxBrowserClick(Sender: TObject);
    procedure btn_GitMinMaxBrowserPrivClick(Sender: TObject);
    procedure btn_ABoardClick(Sender: TObject);
  private
    { Private-Deklarationen }
    AURL: String;
    FWebBrowser: TAbstractWebBrowser;
    sTicketNr_Ges: String;
    DevToolsRect: TRect;
    function GetNotepad: string;
    function RestRequest(ABaseUrl: String; ARestclient: TRestClient; ARequestBody: TJSONObject; AResource: String; AGETPOST: TRESTRequestMethod = rmPost): TJSONObject;
    procedure InitializeBrowser(AParent: TWinControl);
    procedure ShowDevToolsonPanel(AItem:TdxLayoutItem;APanel: TcxGroupBox; ASplitter: TdxLayoutSplitterItem);
    procedure ShowNotepadonPanel(AItem:TdxLayoutItem;APanel: TcxGroupBox; ASplitter: TdxLayoutSplitterItem);
  public
    { Public-Deklarationen }
    arTickets: TJTickets;
    arBoards: TJBoards;
    arATickets: TATickets;
    DevToolsHWND: HWND;
    NotepadHWND: HWND;
    procedure Loadjirastatus;
  end;
  {$EndRegion Types}
var
  {$Region var}
  frm_Ticket: Tfrm_Ticket;
  {$EndRegion var}
const
  {$Region Const}
  sPCMUser = 'Jens.Henske@outlook.com';
//  sPCMPassword = 'ATATT3xFfGF0iQrrgHOsh9mn_iGaM42eML00AmuvQ2wG7T9eStdE6Xz76hm1uao3bKe_ec3VQft0ZmK_JgeZbzs11EcqIqQk-O3N-eBEWaY1jrDNcOhGSTXNdWoy0A1uGysseED-N6zoDjQ64GlZHiEhVag7FVVZuUE0QNk8IIZAohNZrHEzBrI=44DFC1E6';
  sPCMPassword = 'ATATT3xFfGF07HMGLsAvw7ShQHo_OHJYzLDS5lGKBGqiKF-LOamh0ZCt_jdYHDojFwIkZ47i5nOqliH7zl8vTrPL5BXZKF3yxjGIFSYqlZ3rrW_7fidxWtv_RxGvs9_G7D75BDdHBr7eJ00v_im-4ec_tEcLS5On_HqJ7kgiNtkw-QFow1j9x9c=F1F05D50';
  {$EndRegion Const}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Browser.FullScreen,
  PCM.Data,
  PCM.Helper,
  PCM.Strings,
  PCM.Functions.Synch.Wait,
  uwvLoader;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_Ticket.RestRequest(ABaseUrl: String; ArestClient: TRestClient; ARequestBody: TJSONObject; AResource: String; AGETPOST: TRESTRequestMethod = rmPost): TJSONObject;
var
  RestRequest: TRESTRequest;
  sTest: String;
  joResult: TJSONObject;
  RESTResponseJira : TRESTResponse;
begin
  ArestClient.BaseURL := ABaseURl;
  RestRequest := TRESTRequest.Create(nil);
  try
    RestRequest.Client := ArestClient;
    RestRequest.Method := AGETPOST;
    RestRequest.Resource := AResource;
    RestRequest.Timeout := 600000;
    if ARequestBody <> nil then
    begin
      RestRequest.Body.Add(ARequestBody);
    end;
    RestRequest.Execute;
    joResult := TJSONObject.ParseJSONValue(RestRequest.Response.JSONText) as TJSONObject;
    if Pos('?destroy=true&api-version=7.0',AResource) = 0 then
    begin
      sTest:= joResult.ToString;
      Result := joResult;
    end
    else begin
      RESTResponseJira := TRESTResponse.Create(nil);
      RestRequest.Response := RESTResponseJira;
      if (RESTResponseJira.StatusCode = 204) or (RESTResponseJira.StatusCode =  404) then
        joResult:= nil;

      Result:=joResult;
      RESTResponseJira.Free;
    end;
  finally
    RestRequest.Free;
  end;
end;
function Tfrm_Ticket.GetNotepad: string;
begin
  Result:= '';
  dm_PCM.qry_Work.SQL.Text:= 'Select Path From devmanager_helperprograms Where Name = ''Notepad++''';
  dm_PCM.qry_work.Open;
  Result:= dm_PCM.qry_work.FieldByName('Path').AsString;
  dm_PCM.qry_work.Close;
end;
procedure Tfrm_Ticket.InitializeBrowser(AParent: TWinControl);
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
  AURL:= 'https://pcm-software.atlassian.net/jira/software/projects/PCM/boards/1';
  FWebBrowser.Navigate(AURL)
end;
procedure Tfrm_Ticket.Loadjirastatus;
begin
  dm_PCM.qry_Work.SQL.Text:= 'Select DISTINCT(Sprint) as Sprint FROM manager_tickets_priv where Board = ''PCM Desktopapp'' and Sprint <> '''' ORDER BY Sprint asc';
  dm_PCM.qry_Work.open;
  while not dm_PCM.qry_Work.eof do
  begin
    cmbbx_Desktop.Properties.Items.Add(dm_PCM.qry_Work.FieldByName('Sprint').AsString);
    dm_PCM.qry_Work.next;
    try
      cmbbx_Desktop.ItemIndex:= 0;
    except
    end;
  end;
  dm_PCM.qry_Work.Close;
  if cmbbx_Desktop.ItemIndex > -1 then
  begin
    dm_Pcm.qry_ChartDesktop.sql.Text:= 'SELECT ''offen'',COUNT(*)  AS  Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and (STATUS = ''Offen'' or Status =''Zu erledigen'' or Status = ''Input Queue'') AND Board = ''PCM Desktopapp'' ' +
                               'Union ALL '+
                               'SELECT ''In Arbeit'',COUNT(*)  AS Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and STATUS = ''In Arbeit'' AND Board = ''PCM Desktopapp'' ' +
                               'Union ALL '+
                               'SELECT ''Testung'',COUNT(*)  AS Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and STATUS = ''QM'' AND Board = ''PCM Desktopapp'' ' +
                               'Union ALL '+
                               'SELECT ''Bug occured'',COUNT(*)  AS Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and STATUS = ''Bug occured''  AND Board = ''PCM Desktopapp''';
    dm_Pcm.qry_ChartDesktop.ParamByName('Sprint').AsString:= cmbbx_Desktop.Properties.Items[cmbbx_Desktop.ItemIndex];
    dm_Pcm.qry_ChartDesktop.open;
  end;

  dm_PCM.qry_Work.SQL.Text:= 'Select DISTINCT(Sprint) as Sprint FROM manager_tickets_priv where Board = ''PCM MobileApp'' and Sprint <> '''' ORDER BY Sprint asc';
  dm_PCM.qry_Work.open;
  while not dm_PCM.qry_Work.eof do
  begin
    cmbbx_App.Properties.Items.Add(dm_PCM.qry_Work.FieldByName('Sprint').AsString);
    dm_PCM.qry_Work.next;
    try
      cmbbx_App.ItemIndex:= 0;
    except
    end;
  end;
  dm_PCM.qry_Work.Close;
  if cmbbx_App.ItemIndex > -1 then
  begin
    dm_Pcm.qry_ChartApp.sql.Text:= 'SELECT ''offen'',COUNT(*)  AS  Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and (STATUS = ''Offen'' or Status =''Zu erledigen'' or Status = ''Input Queue'') AND Board = ''PCM MobileApp'' ' +
                               'Union ALL '+
                               'SELECT ''In Arbeit'',COUNT(*)  AS Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and STATUS = ''In Arbeit'' AND Board = ''PCM MobileApp'' ' +
                               'Union ALL '+
                               'SELECT ''Testung'',COUNT(*)  AS Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and STATUS = ''QM'' AND Board = ''PCM MobileApp'' ' +
                               'Union ALL '+
                               'SELECT ''Bug occured'',COUNT(*)  AS Wert FROM manager_tickets_priv WHERE Sprint = :Sprint and STATUS = ''Bug occured''  AND Board = ''PCM MobileApp''';
    dm_Pcm.qry_ChartApp.ParamByName('Sprint').AsString:= cmbbx_App.Properties.Items[cmbbx_App.ItemIndex];
    dm_Pcm.qry_ChartApp.open;
  end;
end;
procedure Tfrm_Ticket.ShowDevToolsonPanel(AItem:TdxLayoutItem;APanel: TcxGroupBox; ASplitter: TdxLayoutSplitterItem);
var
  WinHandle : HWND;
  Name: array[0..255] of Char;
  Buffer: array[0..255] of Char;
  s,s1:string;
  Style: DWORD;
begin
  ASplitter.Visible:= true;
  AItem.Visible:= true;
  FWebBrowser.ShowDevTools(true);
  WinHandle := GetTopWindow(GetDesktopWindow);
  while WinHandle <> 0 do // go thru the window list
  begin
    GetClassName(WinHandle, @Name[0], 255);
    GetWindowText(WindowHandle, Buffer, Length(Buffer));
    s:=string(Name);
    s1:=string(Buffer);
//    memo1.Lines.Add(s + ' - ' + s1 );
    if (CompareText(string(Name), 'Chrome_WidgetWin_1') = 0) and (CompareText(string(Buffer), 'PCM - DEV - Workspace') = 0) then
    begin // IEFrame found
        DevToolsHWND := WinHandle;
        // Remove border
        Style := GetWindowLong(DevToolsHWND, GWL_STYLE);
        Style := Style and not (WS_CAPTION or WS_THICKFRAME or WS_SYSMENU or WS_MINIMIZEBOX or WS_MAXIMIZEBOX);
        SetWindowLong(DevToolsHWND, GWL_STYLE, Style);
        GetWindowRect(APanel.Handle, DevToolsRect);
        // Set the parent of the DevTools window to our panel
        Winapi.Windows.SetParent(DevToolsHWND, APanel.Handle);
        // Resize and position the DevTools window to fill our panel
        SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
        Exit;
    end;
    WinHandle := GetNextWindow(WinHandle, GW_HWNDNEXT);
  end;
end;
procedure Tfrm_Ticket.ShowNotepadonPanel(AItem:TdxLayoutItem;APanel: TcxGroupBox; ASplitter: TdxLayoutSplitterItem);
var
  WinHandle : HWND;
  Name: array[0..255] of Char;
  Buffer: array[0..255] of Char;
  s,s1:string;
  Style: DWORD;
begin
  ASplitter.Visible:= true;
  AItem.Visible:= true;
  WinHandle := GetTopWindow(GetDesktopWindow);
  while WinHandle <> 0 do // go thru the window list
  begin
    GetClassName(WinHandle, @Name[0], 255);
    GetWindowText(WindowHandle, Buffer, Length(Buffer));
    s:=string(Name);
    s1:=string(Buffer);
//    memo1.Lines.Add(s + ' - ' + s1 );
    if (CompareText(string(Name), 'Notepad++') = 0) and (CompareText(string(Buffer), 'PCM - DEV - Workspace') = 0) then
    begin // IEFrame found
        NotepadHWND := WinHandle;
        // Remove border
        Style := GetWindowLong(NotepadHWND, GWL_STYLE);
        Style := Style and not (WS_CAPTION or WS_THICKFRAME or WS_SYSMENU or WS_MINIMIZEBOX or WS_MAXIMIZEBOX);
        SetWindowLong(NotepadHWND, GWL_STYLE, Style);
        GetWindowRect(APanel.Handle, DevToolsRect);
        // Set the parent of the DevTools window to our panel
        Winapi.Windows.SetParent(NotepadHWND, APanel.Handle);
        // Resize and position the DevTools window to fill our panel
        SetWindowPos(NotepadHWND, 0, 0, 0,DevToolsRect.Right - DevToolsRect.Left ,DevToolsRect.Bottom - DevToolsRect.Top ,SWP_NOZORDER);
        Exit;
    end;
    WinHandle := GetNextWindow(WinHandle, GW_HWNDNEXT);
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
// JIRA
procedure Tfrm_Ticket.btn_JBoardClick(Sender: TObject);
begin
  AURL:= 'https://pcm-software.atlassian.net/jira/software/projects/PCM/boards/1';
  FWebBrowser.Navigate(AURL);
end;
procedure Tfrm_Ticket.btn_JDevtoolsClick(Sender: TObject);
begin
  if not itmpnl_JDevTools.Visible then
  begin
    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsDisable;
    ShowDevToolsonPanel(itmpnl_JDevTools,pnl_JDevTools,splt_J);
  end
  else begin
    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_JFilterClick(Sender: TObject);
begin
  if btn_JFilter.Tag = 0 then
  begin
    btn_JFilter.Tag := 1;
    btn_JFilter.LargeImageIndex:= 46;
    btn_JFilter.Caption:= rs_PCMDevManager_BTNShowDoneTicketsEnable;
    qry_Tickets_priv.Filter:=   'Status <> ''Fertig''';
    qry_Tickets_priv.Filtered:= true;
  end
  else begin
    btn_JFilter.Tag := 0;
    btn_JFilter.LargeImageIndex:= 38;
    btn_JFilter.Caption:= rs_PCMDevManager_BTNShowDoneTicketsDisable;
    qry_Tickets_priv.Filtered:= false;
  end;
end;
procedure Tfrm_Ticket.btn_JMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Browser_FullScreen, frm_PCM_Browser_FullScreen);
  if itmpnl_JDevTools.Visible then
  begin
    if frm_PCM_Browser_FullScreen.Execute(True,'Jira - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_JDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_JDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_PCM_Browser_FullScreen.Execute(True,'Jira - PCM',Aurl);
  end;
end;
procedure Tfrm_Ticket.btn_JReadTicketsClick(Sender: TObject);
  function API_Auth_Jira(ABaseUrl,AUser,APassword: String; AMethod: TRESTRequestMethod = rmPost): TJSONObject;
  var
    RestRequest: TRESTRequest;
    joLogin: TJSONObject;
  begin
    RESTClient_Jira.BaseURL := ABaseUrl;
    HTTPAuth_Jira.Password := APassword;
    httpAuth_Jira.Username := AUser;
    joLogin := TJSONObject.Create;
    joLogin.AddPair(TJSONPair.Create('username', AUser));
    joLogin.AddPair(TJSONPair.Create('password', APassword));
    RestRequest := TRESTRequest.Create(nil);
    try
      RestRequest.Client := RESTClient_Jira;
      RestRequest.Method := rmGet;
      RestRequest.Timeout := 600000;
      if joLogin <> nil then
      begin
//        RestRequest.Body.Add(joLogin);
      end;
      RestRequest.Execute;
      result := TJSONObject.ParseJSONValue(RestRequest.Response.JSONText) as TJSONObject;
    finally
      RestRequest.Free;
    end;
  end;
  function RestRequest(ABaseUrl: String; ArestClient: TRestClient; ARequestBody: TJSONObject; AResource: String; AGETPOST: TRESTRequestMethod = rmPost): TJSONObject;
  var
    RestRequest: TRESTRequest;
    sTest: String;
    joResult: TJSONObject;
  begin
    ArestClient.BaseURL := ABaseURl;
    RestRequest := TRESTRequest.Create(nil);
    try
      RestRequest.Client := ArestClient;
      RestRequest.Method := AGETPOST;
      RestRequest.Resource := AResource;
      RestRequest.Timeout := 600000;
      if ARequestBody <> nil then
      begin
        RestRequest.Body.Add(ARequestBody);
      end;
      RestRequest.Execute;
      joResult := TJSONObject.ParseJSONValue(RestRequest.Response.JSONText) as TJSONObject;
      sTest:= joResult.ToString;
      Result := joResult;
    finally
      RestRequest.Free;
    end;
  end;
  procedure WriteInDB(ATicketInt: Integer;ATicket,AStatus,ABetreff,AType,AEpic,ASprint,APrio,AFixVersion,AApp,ALabel,Adesc,AAssignee,AReporter,ATester,Atester2,AMelder,AStorypoint,AUHD,ALand,AKDNR,ABetrifft: String);
  var
    iID,iCounter,iCounterEpic,iIDEpic,iIDPrio: Integer;
  begin
    ADesc:= StringReplace(ADesc,'{panel:bgColor=#ffebe6}'#$A,'',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'{panel:bgColor=#fffae6}'#$A,'',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'{panel:bgColor=#deebff}'#$A,'',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'{panel:bgColor=#eae6ff}'#$A,'',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'{panel:bgColor=#e3fcef}'#$A,'',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'{panel}'#$A,'',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'{panel}','',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'Dev:'#$A,'Dev:',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'Abhängigkeiten:'#$A,'Abhängigkeiten:',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'QM:'#$A,'QM:',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'Notiz:'#$A,'Notiz:',[rfReplaceAll,rfIgnoreCase]);
    ADesc:= StringReplace(ADesc,'Ready:'#$A,'Ready:',[rfReplaceAll,rfIgnoreCase]);

    if (AEpic <> '') and (AEpic <> 'kein Epic') then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl From  manager_tickets_priv Where Ticket_Nr = :Ticket_Nr';
      dm_PCM.qry_Work.ParamByName('Ticket_Nr').asString:= AEpic;
      dm_PCM.qry_Work.open;
      iCounterEpic:= dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
      dm_PCM.qry_Work.Close;
      if iCounterEpic > 0 then
      begin
        dm_PCM.qry_Work.SQL.Text:= 'Select ID From  manager_tickets_priv Where Ticket_Nr = :Ticket_Nr';
        dm_PCM.qry_Work.ParamByName('Ticket_Nr').asString:= AEpic;
        dm_PCM.qry_Work.open;
        iIDEpic:= dm_PCM.qry_Work.FieldByName('ID').AsInteger;
        dm_PCM.qry_Work.Close;
      end
      else begin
        iIDEpic:= 0;
      end;
    end
    else begin
      iIDEpic:= 0;
    end;
    dm_PCM.qry_Work.SQL.Text:= 'Select ID From  manager_tickets_priority Where Bezeichnung = :Bezeichnung';
    dm_PCM.qry_Work.ParamByName('Bezeichnung').asString:= APrio;
    dm_PCM.qry_Work.open;
    iIDPrio:= dm_PCM.qry_Work.FieldByName('ID').AsInteger;
    dm_PCM.qry_Work.Close;



    dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl From manager_tickets_priv Where Ticket_Nr = :Ticket_Nr';
    dm_PCM.qry_Work.ParamByName('Ticket_Nr').asString:= ATicket;
    dm_PCM.qry_Work.open;
    iCounter:= dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_Work.Close;
    if AType = 'Neue Funktion' then
      AType := 'Issue';
    if iCounter = 0 then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Insert into manager_tickets_priv ' +
                                 ' (Ticket_Nr,Nr,STATUS,ID_tickets_priority,Epic,Board,Betreff,Stichwort,TYPE,App,FixVersion,Beschreibung,ID_Ticket,Sprint,Assignee,Reporter,Tester,Tester2,Melder,UHD,Land,KDNR,BetrifftVerison) ' +
                                 'Values' +
                                 ' (:Ticket_Nr,:Nr,:STATUS,:ID_tickets_priority,:Epic,:Board,:Betreff,:Stichwort,:TYPE,:App,:FixVersion,:Beschreibung,:ID_Ticket,:Sprint,:Zugewiesen,:Reporter,:Tester,:Tester2,:Melder,:UHD,:Land,:KDNR,:BetrifftVerison)';
      dm_PCM.qry_Work.ParamByName('Ticket_Nr').AsString:= ATicket;
      dm_PCM.qry_Work.ParamByName('Nr').AsInteger:= ATicketInt;
      dm_PCM.qry_Work.ParamByName('ID_Ticket').AsInteger:= iIDEpic;
      dm_PCM.qry_Work.ParamByName('STATUS').AsString:= AStatus;
      dm_PCM.qry_Work.ParamByName('ID_tickets_priority').asInteger:= iIDPrio;
      dm_PCM.qry_Work.ParamByName('Epic').AsString:= AEpic;
      dm_PCM.qry_Work.ParamByName('Betreff').AsString:= ABetreff;
      dm_PCM.qry_Work.ParamByName('TYPE').AsString:= AType;
      dm_PCM.qry_Work.ParamByName('Sprint').AsString:= ASprint;
      dm_PCM.qry_Work.ParamByName('FixVersion').AsString:= AFixVersion;
      dm_PCM.qry_Work.ParamByName('App').AsString:= AApp;
      dm_PCM.qry_Work.ParamByName('Stichwort').AsString:= ALabel;
      dm_PCM.qry_Work.ParamByName('Beschreibung').asString:= ADesc;
      dm_PCM.qry_Work.ParamByName('Zugewiesen').AsString:= AAssignee;
      dm_PCM.qry_Work.ParamByName('Board').AsString:= AKDNR;
      dm_PCM.qry_Work.ParamByName('Reporter').AsString:= AReporter;
      dm_PCM.qry_Work.ParamByName('Tester').AsString:= ATester;
      dm_PCM.qry_Work.ParamByName('Tester2').AsString:= ATester2;
      dm_PCM.qry_Work.ParamByName('Melder').AsString:= AMelder;
      dm_PCM.qry_Work.ParamByName('UHD').AsString:= AUHD;
      dm_PCM.qry_Work.ParamByName('Land').AsString:= ALand;
      dm_PCM.qry_Work.ParamByName('KDNR').AsString:= AKDNR;
      dm_PCM.qry_Work.ParamByName('BetrifftVerison').AsString:= ABetrifft;
      dm_PCM.qry_Work.ExecSQL;
    end
    else
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Select ID From manager_tickets_priv Where Ticket_Nr = :Ticket_Nr';
      dm_PCM.qry_Work.ParamByName('Ticket_Nr').AsString:= ATicket;
      dm_PCM.qry_Work.open;
      iID:= dm_PCM.qry_Work.FieldByName('ID').AsInteger;
      dm_PCM.qry_Work.Close;
      dm_PCM.qry_Work.SQL.Text:= 'Update manager_tickets_priv ' +
      ' Set Ticket_Nr = :Ticket_Nr,' +
      'Nr = :Nr,'  +
      'ID_Ticket = :ID_Ticket, ' +
      'STATUS = :STATUS,' +
      'Betreff = :Betreff,' +
      'Epic = :Epic, ' +
      'ID_tickets_priority = :ID_tickets_priority, ' +
      'TYPE = :TYPE, ' +
      'Sprint = :Sprint, ' +

      'FixVersion = :FixVersion, ' +
      'App = :App, ' +
      'Stichwort = :Stichwort, ' +
      'Beschreibung = :Beschreibung, ' +
      'Assignee = :Zugewiesen, ' +
      'Tester = :Tester, ' +
      'Tester2 = :Tester2, ' +
      'Board = :Board, ' +
      'Reporter = :Reporter, '   +
      'Melder = :Melder, ' +
      'UHD = :UHD, ' +
      'Land = :Land, ' +
      'KDNR = :KDNR,' +
      'BetrifftVerison = :BetrifftVerison ' +
      'Where ID = :ID';
      dm_PCM.qry_Work.ParamByName('Ticket_Nr').AsString:= ATicket;
      dm_PCM.qry_Work.ParamByName('Nr').AsInteger:= ATicketInt;
      dm_PCM.qry_Work.ParamByName('ID_Ticket').AsInteger:= iIDEpic;
      dm_PCM.qry_Work.ParamByName('STATUS').AsString:= AStatus;
      dm_PCM.qry_Work.ParamByName('ID_tickets_priority').asInteger:= iIDPrio;
      dm_PCM.qry_Work.ParamByName('Epic').AsString:= AEpic;
      dm_PCM.qry_Work.ParamByName('Betreff').AsString:= ABetreff;
      dm_PCM.qry_Work.ParamByName('TYPE').AsString:= AType;
      dm_PCM.qry_Work.ParamByName('Sprint').AsString:= ASprint;
      dm_PCM.qry_Work.ParamByName('FixVersion').AsString:= AFixVersion;
      dm_PCM.qry_Work.ParamByName('App').AsString:= AApp;
      dm_PCM.qry_Work.ParamByName('Stichwort').AsString:= ALabel;
      dm_PCM.qry_Work.ParamByName('Beschreibung').asString:= ADesc;
      dm_PCM.qry_Work.ParamByName('Zugewiesen').AsString:= AAssignee;
      dm_PCM.qry_Work.ParamByName('Board').AsString:= AKDNR;
      dm_PCM.qry_Work.ParamByName('Reporter').AsString:= AReporter;
      dm_PCM.qry_Work.ParamByName('Tester').AsString:= ATester;
      dm_PCM.qry_Work.ParamByName('Tester2').AsString:= ATester2;
      dm_PCM.qry_Work.ParamByName('Melder').AsString:= AMelder;
      dm_PCM.qry_Work.ParamByName('UHD').AsString:= AUHD;
      dm_PCM.qry_Work.ParamByName('Land').AsString:= ALand;
      dm_PCM.qry_Work.ParamByName('KDNR').AsString:= AKDNR;
      dm_PCM.qry_Work.ParamByName('BetrifftVerison').AsString:= ABetrifft;
      dm_PCM.qry_Work.ParamByName('ID').AsInteger:= iID;
      dm_PCM.qry_Work.ExecSQL;
    end;
    qry_Tickets_priv.refresh;
  end;
var
  jarIssues,//jarComponent,
  jarFixVersion: TJSONArray;
//  joFields1,
//  joLand,
//  joUHD,
  joMelder,
//  joTester2, joTester,joReporter,
  joAssignee,
//  joComponent,
  joFixVersion,jopriority,josprint,joStatus,joIssuetype, joParent,joFields,joBody, joResult: TJSONObject;
//  jaLand,
  jaCustom1,  jaSprint: TJSONArray;
//  sBetrifftV1,
  sBetrifftV,
//  sVersion,
  sKDNR,
//  sLand1,
  sLand, sUHD, sDesc,sStorypoint, sMelder,sTester2, sTester,
//  sactive,
  sReporter,
//  sApp1,
  sSprintstate,sAssi,sname,sApp,sFixVersion,sPrio, sEpic,sType, sBetreff,sStatus, sSprint, sTicket: String;
  i,i1, iTicket: integer;
  sJText,sJsonString: string;
begin
  qry_Tickets_priv.AfterScroll:= nil;
  dm_PCM.qry_Work.SQL.Text:= 'DELETE FROM manager_tickets_priv';
  dm_PCM.qry_Work.ExecSQL;
  sTicketNr_Ges:= '';
  Screen.Cursor := crHourGlass;
  API_Auth_Jira('https://pcm-software.atlassian.net/rest/auth/1/session',sPCMUser,sPCMPassword);
  Application.ProcessMessages;
  sJText:='{"fields": ["summary","status","issuetype","components","parent","customfield_10036","customfield_10020","priority",'+
    '"fixVersions","labels","assignee","reporter","versions","description"],'+
    '"jql": "assignee = ''jens.henske@outlook.com''' +
//    ' and status in (10000,10001,10003,10011,10007) ' +
    ' ORDER BY issue ASC","startAt": 0, "maxResults": 100 }';

  joBody := TJSONObject.ParseJSONValue(sJText) as TJSONObject;
  joResult := RestRequest('https://pcm-software.atlassian.net/rest',RESTClient_jira,joBody, '/api/2/search');
  joResult.TryGetValue<TJSONArray>('issues', jarIssues);
  for i := 0 to jarIssues.Count - 1 do
  begin
    joResult := TJSONObject.ParseJSONValue(jarIssues.Items[i].ToString) as TJSONObject;
    // Ticketnummer
    Application.ProcessMessages;
    if (joResult.GetValue('key').Null) OR (not joResult.TryGetValue<String>('key', sTicket)) then
      sTicket:= '';
    iTicket:= StrToInt(StringReplace(StringReplace(sTicket,'APP-','',[rfReplaceAll, rfIgnoreCase]),'PCM-','',[rfReplaceAll, rfIgnoreCase]));
    sTicketNr_Ges:= sTicketNr_Ges + ',' + StringReplace(StringReplace(sTicket,'APP-','',[rfReplaceAll, rfIgnoreCase]),'PCM-','',[rfReplaceAll, rfIgnoreCase]);
    // Summary
    Application.ProcessMessages;
    joResult.TryGetValue<TJSONObject>('fields', joFields);
    if (joFields.GetValue('summary').null) or (not joFields.TryGetValue<String>('summary', sBetreff)) then
      sBetreff:= '';
    // Status
    Application.ProcessMessages;
    joFields.TryGetValue<TJSONObject>('status', joStatus);
    if (joStatus.GetValue('name').null) or (not joStatus.TryGetValue<String>('name', sStatus)) then
      sStatus := '';
    // Tickettyp
    Application.ProcessMessages;
    joFields.TryGetValue<TJSONObject>('issuetype',joIssuetype);
    if (joFields.GetValue('summary').null) or (not joIssuetype.TryGetValue<String>('name', sType)) then
      sType := '';
    // EPIC
    Application.ProcessMessages;
    joParent:= nil;
    joFields.TryGetValue<TJSONObject>('parent',joParent);
    sEpic:='';
    if joParent <> nil then
      joParent.TryGetValue<String>('key', sEpic)
    else
      sEpic:= 'kein Epic';
    if (sType = 'Epic') or (sEpic = '') then
      sEpic:= 'Ohne';
    // Priorität
    Application.ProcessMessages;
    joFields.TryGetValue<TJSONObject>('priority',jopriority);
    if jopriority <> nil  then
      jopriority.TryGetValue<String>('name', sPrio)
    else
      sPrio:= '';
    // LösungsVersion
    Application.ProcessMessages;
    sFixVersion:= '';
    joFields.TryGetValue<TJSonArray>('fixVersions',jarFixVersion);
    for i1 := 0 to jarFixVersion.Count - 1 do
    begin
      joFixVersion := TJSONObject.ParseJSONValue(jarFixVersion.Items[i1].ToString) as TJSONObject;
      joFixVersion.TryGetValue<String>('name',sFixVersion);
    end;
    // Stichwort
    Application.ProcessMessages;
    joFields.TryGetValue<TJSonArray>('labels',jaCustom1);
    sname:= '';
    for i1 := 0 to jaCustom1.Count - 1 do
    begin
      sname:= sname + ';' + StringReplace(jaCustom1.Items[i1].ToString,'"','',[rfreplaceall]);
    end;
    if sname = ''  then
      sname := 'kein Wert'
    else
      sname := Copy(sname, 2, Length(sname));
    // Beschreibung
    Application.ProcessMessages;
    joFields.TryGetValue<String>('description', sDesc);
    // Zugewiesen
    Application.ProcessMessages;
    joFields.TryGetValue<TJSONObject>('assignee',joAssignee);
    joAssignee.TryGetValue<String>('displayName', sAssi);
//  Länderversion
    Application.ProcessMessages;
    sLand:= '';
    if (not joFields.GetValue('customfield_10036').null) then
    begin
      joFields.TryGetValue<TJSONObject>('customfield_10036',joMelder);
      if joMelder <> nil then
        joMelder.TryGetValue<String>('value', sLand);
    end;
    // Sprint
    sSprint:= '';
    sSprintstate:= '';
    sJsonString:=joFields.ToString;
    sJsonString:= StringReplace(sJsonString,'"customfield_10020":null','"customfield_10020":[]',[rfreplaceall,rfIgnorecase]);
    joFields:=TJSONObject.ParseJSONValue(sJsonString) as TJSONObject;
    joFields.TryGetValue<TJSonArray>('customfield_10020',jaSprint);
    for i1 := 0 to jaSprint.Count - 1 do
    begin
       joSprint := TJSONObject.ParseJSONValue(jaSprint.Items[i1].ToString) as TJSONObject;
       joSprint.TryGetValue<String>('state',sSprintstate);
       if sSprintstate = 'active' then
         joSprint.TryGetValue<String>('name',sSprint);
    end;
    Application.ProcessMessages;
    stbr_main.Panels[1].Text:= 'Tickets ' + IntToStr(i + 1) + ' von ' + IntToStr(jarIssues.Count) + ' wird eingelesen';
    stbr_main.Panels[2].Text:= 'aktuelles Tickets: ' + sTicket + ' - ' + sBetreff;
    if Pos('APP',sTicket) > 0 then
      sKDNR:= 'PCM MobileApp'
    else
      sKDNR:= 'PCM Desktopapp';
    WriteInDB(iTicket,sTicket,sStatus,sBetreff,sType,sEpic,sSprint,sPrio,sFixVersion,sApp,sName,sdesc,Sassi,sReporter,sTester,sTester2,sMelder,sStorypoint,sUHD,sLand,sKDNR,sBetrifftV);
  end;
  sTicketNr_ges:= Copy(sTicketNr_ges, 2, Length(sTicketNr_ges));
  dm_PCM.qry_Work.SQL.Text:= 'Delete From manager_tickets_priv where nr not in (' + sTicketNr_ges + ')';
  try
    dm_PCM.qry_Work.ExecSQL;
  except
  end;
  qry_Tickets_priv.refresh;
  LoadJiraStatus;
  qry_Tickets_priv.AfterScroll:= qry_Tickets_privAfterScroll;
  Screen.Cursor := crDefault;
end;
procedure Tfrm_Ticket.pnl_JDevToolsResize(Sender: TObject);
begin
  GetWindowRect(pnl_JDevTools.Handle, DevToolsRect);
  SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
end;
procedure Tfrm_Ticket.grdDBTblView_JiraBeschreibungGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;  var AHintText: TCaption; var AIsHintMultiLine: Boolean;  var AHintTextRect: TRect);
begin
  AHintText:= ACellViewInfo.GridRecord.Values[11];
end;
procedure Tfrm_Ticket.grdDBTblView_JiraCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Jira.GetHitTest(grd_Jira.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Tickets_priv.FieldByName('Ticket_Nr').AsString <> '' then
    begin
      AURL:= 'https://pcm-software.atlassian.net/browse/' + qry_Tickets_priv.FieldByName('Ticket_Nr').AsString;
      FWebBrowser.Navigate('https://pcm-software.atlassian.net/browse/' + qry_Tickets_priv.FieldByName('Ticket_Nr').AsString);
      pc_Jira.ItemIndex:= 0;
    end;
  end;
end;
procedure Tfrm_Ticket.qry_Tickets_privAfterScroll(DataSet: TDataSet);
var
  slBeschreibung: TStringlist;
  i: Integer;
begin
  grpbx_Ticketspriv.CaptionOptions.Text:= rs_PCMDevManager_CAPProjekte + qry_Tickets_priv.FieldByName('Epic').asString + ' / ' + qry_Tickets_priv.FieldByName('Ticket_nr').asString;
  dxLayoutLabeledItem1.CaptionOptions.Text:=qry_Tickets_priv.FieldByName('Betreff').asString;
  dm_PCm.qry_work.SQL.Text:= 'SELECT Beschreibung FROM manager_tickets_priv Where Ticket_nr = :Ticket_nr';
  dm_PCm.qry_work.ParamByName('Ticket_nr').AsString:= qry_Tickets_priv.FieldByName('Ticket_nr').asString;
  dm_PCm.qry_work.OPen;
  slBeschreibung:= TStringlist.Create;
  slBeschreibung.Text:= dm_PCm.qry_work.FieldByname('Beschreibung').AsString;
  dm_PCm.qry_work.Close;
  cxRichEdit1.Clear;
  cxRichEdit1.Height:= Round(slBeschreibung.Count * 14 * dm_PCM.iScale);
  for i := 0 to slBeschreibung.Count - 1 do
  begin
    cxRichEdit1.Lines.Add(slBeschreibung.Strings[i]);
  end;
end;
// Azure
procedure Tfrm_Ticket.btn_ABoardClick(Sender: TObject);
begin
  AURL:= 'https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_boards/board/t/PCM-Team/Issues';
  FWebBrowser.Navigate(AURL);
end;

procedure Tfrm_Ticket.btn_ADevToolsClick(Sender: TObject);
begin
  if not itmpnl_ADevTools.Visible then
  begin
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsDisable;
    ShowDevToolsonPanel(itmpnl_ADevTools,pnl_ADevTools,splt_A);
  end
  else begin
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_AIMinMaxBrowserClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Browser_FullScreen, frm_PCM_Browser_FullScreen);
  if itmpnl_SDevTools.Visible then
  begin
    if frm_PCM_Browser_FullScreen.Execute(True,'Perplexity AI',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_PDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_PDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_PCM_Browser_FullScreen.Execute(True,'Perplexity AI',Aurl);
  end;
end;
procedure Tfrm_Ticket.btn_AMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Browser_FullScreen, frm_PCM_Browser_FullScreen);
  if itmpnl_ADevTools.Visible then
  begin
    if frm_PCM_Browser_FullScreen.Execute(True,'Azure - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_ADevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_ADevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_PCM_Browser_FullScreen.Execute(True,'Azure - PCM',Aurl);
  end;


end;
procedure Tfrm_Ticket.btn_AReadTicketsClick(Sender: TObject);
  procedure DeleteWorkItems(joBody, joResult,joResultDetail,joResultTickets,joFields,joFields1,joFields2:TJSONObject;sJText: string; jArray: TJSONArray);
  var
    i,iTicket: integer;
  begin
    SetLength(arATickets,0);
    sJText:= '{"query": "Select [System.Id], [System.Title], [System.State] From WorkItems "}';
    joBody := TJSONObject.ParseJSONValue(sJText) as TJSONObject;
    joResult := RestRequest('https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_apis/wit',RESTClient_azure,joBody, '/wiql?api-version=7.0');
    joResult.TryGetValue<TJSONArray>('workItems', jArray);
    for i := 0 to jArray.Count - 1 do
    begin
      joResult := TJSONObject.ParseJSONValue(jArray.Items[i].ToString) as TJSONObject;
      if (joResult.GetValue('id').Null) OR (not joResult.TryGetValue<Integer>('id', iTicket)) then
        iTicket:= 0;
      if iTicket > 0 then
      begin
        SetLength(arATickets,Length(arATickets) + 1);
        arATickets[High(arATickets)].iTicketnr:= iTicket;
      end;
    end;
    for i := 0 to High(arATickets) do
    begin
      RestRequest('https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_apis/wit',RESTClient_azure,nil, '/workitems/' + IntToStr(arATickets[i].iTicketnr) +'?destroy=true&api-version=7.0',TRESTRequestMethod.rmDELETE);
    end;
  end;
  procedure SynchWithJira;
  var
    RESTClientJira: TRESTClient;
    RESTRequestJira: TRESTRequest;
    RESTResponseJira: TRESTResponse;
    JsonPatchJira: TJSONArray;
    JsonObjJira: TJSONObject;
  begin
    dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM manager_tickets_priv';
    dm_PCM.qry_Work.FetchOptions.Mode:= fmAll;
    dm_PCM.qry_Work.FetchOptions.RecordCountMode:= cmTotal;

    dm_PCM.qry_Work.Open;
    ShowWaitForm(TForm(Self), PWideChar('Tickets erstellen'), dm_PCM.qry_Work.Recordcount ,417, 65);
    while not dm_PCM.qry_Work.Eof do
    begin
      RESTClientJira := TRESTClient.Create(nil);
      RESTRequestJira := TRESTRequest.Create(nil);
      RESTResponseJira := TRESTResponse.Create(nil);
      try
        WaitFormSetText('Ticket: ' + dm_PCM.qry_Work.FieldByName('Ticket_nr').asString + ' wird angelegt');
        RESTClientJira.BaseURL := 'https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_apis/wit';
        RESTRequestJira.Client := RESTClientJira;
        RESTRequestJira.Response := RESTResponseJira;

        // API endpoint for creating a work item
        RESTRequestJira.Resource := 'workitems/$' + dm_PCM.qry_Work.FieldByName('Type').asString + '?api-version=7.0';
        RESTRequestJira.Method := rmPOST;
        RESTRequestJira.Accept := 'application/json';
        RESTClientJira.ContentType := 'application/json-patch+json';

        // Prepare JSON Patch body
        JsonPatchJira := TJSONArray.Create;

        JsonObjJira := TJSONObject.Create;
        JsonObjJira.AddPair('op', 'add');
        JsonObjJira.AddPair('path', '/fields/System.Title');
        JsonObjJira.AddPair('value', dm_PCM.qry_Work.FieldByName('Betreff').asString);
        JsonPatchJira.AddElement(JsonObjJira);

        JsonObjJira := TJSONObject.Create;
        JsonObjJira.AddPair('op', 'add');
        JsonObjJira.AddPair('path', '/fields/System.Description');
        JsonObjJira.AddPair('value', dm_PCM.qry_Work.FieldByName('Beschreibung').asString);
        JsonPatchJira.AddElement(JsonObjJira);

        JsonObjJira := TJSONObject.Create;
        JsonObjJira.AddPair('op', 'add');
        JsonObjJira.AddPair('path', '/fields/System.State');
        if dm_PCM.qry_Work.FieldByName('Status').AsString = 'Zu erledigen' then
          JsonObjJira.AddPair('value', 'TO DO');
        if dm_PCM.qry_Work.FieldByName('Status').AsString = 'In Arbeit' then
          JsonObjJira.AddPair('value', 'IN PROGRESS');
        if dm_PCM.qry_Work.FieldByName('Status').AsString = 'QM' then
          JsonObjJira.AddPair('value', 'TESTUNG');
        if dm_PCM.qry_Work.FieldByName('Status').AsString = 'Bug occured' then
          JsonObjJira.AddPair('value', 'BUG OCCURED');
        if dm_PCM.qry_Work.FieldByName('Status').AsString = 'Fertig' then
          JsonObjJira.AddPair('value', 'DONE');
        JsonPatchJira.AddElement(JsonObjJira);




        JsonObjJira := TJSONObject.Create;
        JsonObjJira.AddPair('op', 'add');
        JsonObjJira.AddPair('path', '/fields/Custom.Applikation');
        JsonObjJira.AddPair('value', dm_PCM.qry_Work.FieldByName('Land').asString);
        JsonPatchJira.AddElement(JsonObjJira);

        JsonObjJira := TJSONObject.Create;
        JsonObjJira.AddPair('op', 'add');
        JsonObjJira.AddPair('path', '/fields/Custom.JiraTicket');
        JsonObjJira.AddPair('value', dm_PCM.qry_Work.FieldByName('Ticket_nr').asString);
        JsonPatchJira.AddElement(JsonObjJira);

        JsonObjJira := TJSONObject.Create;
        JsonObjJira.AddPair('op', 'add');
        JsonObjJira.AddPair('path', '/fields/System.AssignedTo');
        JsonObjJira.AddPair('value', 'Jens Henske');
        JsonPatchJira.AddElement(JsonObjJira);

        RESTRequestJira.Body.ClearBody;
        RESTRequestJira.Body.Add(JsonPatchJira.ToString, 'application/json-patch+json');
        RESTClientJira.Authenticator:= httpAuth_Azure;
        RESTRequestJira.Execute;
        Waitformstep;
        if RESTResponseJira.StatusCode <> 200 then
          ShowMessage(Format('Failed to create work item. Status: %d, Message: %s', [RESTResponseJira.StatusCode, RESTResponseJira.Content]));
      finally
        JsonPatchJira.Free;
        RESTClientJira.Free;
        RESTRequestJira.Free;
        RESTResponseJira.Free;
      end;
      dm_PCM.qry_Work.Next;
    end;
    CloseWaitForm;
    dm_PCM.qry_Work.FetchOptions.Mode:= fmOnDemand;
    dm_PCM.qry_Work.FetchOptions.RecordCountMode:= cmVisible;
    dm_PCM.qry_Work.Close;
  end;
  procedure WriteInDB(ATicketInt: Integer;ATicket,AStatus,ABetreff,AType,AEpic,ASprint,APrio,AFixVersion,AApp,ALabel,Adesc,AAssignee,AName,AFaellig: String);
  var
    iID,iCounter: Integer;
  begin
//    qry_azure.AfterScroll:= nil;
    dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl From manager_azure_priv Where Nr = :Ticket_Nr';
    dm_PCM.qry_Work.ParamByName('Ticket_Nr').AsInteger:= ATicketInt;


    dm_PCM.qry_Work.open;
    iCounter:= dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_Work.Close;
    if iCounter = 0 then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Insert into manager_azure_priv (Ticket_Nr,Nr,STATUS,Betreff,TYPE,Epic,Sprint,Prio,FixVersion,App,Stichwort,Beschreibung,Zugewiesen,Board,Faellig) Values (:Ticket_Nr,:Nr,:STATUS,:Betreff,:TYPE,:Epic,:Sprint,:Prio,:FixVersion,:App,:Stichwort,:Beschreibung,:Zugewiesen,:Board,:Faellig)';
      dm_PCM.qry_Work.ParamByName('Ticket_Nr').AsString:= ATicket;
      dm_PCM.qry_Work.ParamByName('Nr').AsInteger:= ATicketInt;
      dm_PCM.qry_Work.ParamByName('STATUS').AsString:= AStatus;
      dm_PCM.qry_Work.ParamByName('Betreff').AsString:= ABetreff;
      dm_PCM.qry_Work.ParamByName('TYPE').AsString:= AType;
      dm_PCM.qry_Work.ParamByName('Epic').AsString:= AEpic;
      dm_PCM.qry_Work.ParamByName('Sprint').AsString:= ASprint;
      dm_PCM.qry_Work.ParamByName('Prio').AsString:= Aprio;
      dm_PCM.qry_Work.ParamByName('FixVersion').AsString:= AFixVersion;
      dm_PCM.qry_Work.ParamByName('App').AsString:= AApp;
      dm_PCM.qry_Work.ParamByName('Stichwort').AsString:= ALabel;
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsString:= ADesc;
      dm_PCM.qry_Work.ParamByName('Zugewiesen').AsString:= AAssignee;
      dm_PCM.qry_Work.ParamByName('Board').AsString:= AName;
      dm_PCM.qry_Work.ParamByName('Faellig').AsString:= AFaellig;
      dm_PCM.qry_Work.ExecSQL;
    end
    else
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Select ID From manager_azure_priv Where Nr = :Ticket_Nr';
      dm_PCM.qry_Work.ParamByName('Ticket_Nr').asInteger:= ATicketInt;



      dm_PCM.qry_Work.open;
      iID:= dm_PCM.qry_Work.FieldByName('ID').AsInteger;
      dm_PCM.qry_Work.Close;
      dm_PCM.qry_Work.SQL.Text:= 'Update manager_azure_priv' +
      ' Set Ticket_Nr = :Ticket_Nr,' +
      'Nr = :Nr,'  +
      'STATUS = :STATUS,' +
      'Betreff = :Betreff,' +
      'TYPE = :TYPE, ' +
      'Epic = :Epic, ' +
      'Sprint = :Sprint, ' +
      'Prio = :Prio, ' +
      'FixVersion = :FixVersion, ' +
      'App = :App, ' +
      'Stichwort = :Stichwort, ' +
      'Beschreibung = :Beschreibung, ' +
      'Zugewiesen = :Zugewiesen, ' +
      'Faellig = :Faellig, ' +
      'Board = :Board ' +
      'Where ID = :ID';
      dm_PCM.qry_Work.ParamByName('Ticket_Nr').AsString:= ATicket;
      dm_PCM.qry_Work.ParamByName('Nr').AsInteger:= ATicketInt;
      dm_PCM.qry_Work.ParamByName('STATUS').AsString:= AStatus;
      dm_PCM.qry_Work.ParamByName('Betreff').AsString:= ABetreff;
      dm_PCM.qry_Work.ParamByName('TYPE').AsString:= AType;
      dm_PCM.qry_Work.ParamByName('Epic').AsString:= AEpic;
      dm_PCM.qry_Work.ParamByName('Sprint').AsString:= ASprint;
      dm_PCM.qry_Work.ParamByName('Prio').AsString:= Aprio;
      dm_PCM.qry_Work.ParamByName('FixVersion').AsString:= AFixVersion;
      dm_PCM.qry_Work.ParamByName('App').AsString:= AApp;
      dm_PCM.qry_Work.ParamByName('Stichwort').AsString:= ALabel;
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsString:= ADesc;
      dm_PCM.qry_Work.ParamByName('Zugewiesen').AsString:= AAssignee;
      dm_PCM.qry_Work.ParamByName('Board').AsString:= AName;
      dm_PCM.qry_Work.ParamByName('Faellig').AsString:= AFaellig;
      dm_PCM.qry_Work.ParamByName('ID').AsInteger:= iID;
      dm_PCM.qry_Work.ExecSQL;
    end;
    qry_Azure.Refresh;
  end;
var
  joBody, joResult,joResultDetail,joResultTickets: TJSONObject;
  joFields,joFields1,joFields2: TJSONObject;
  jArray: TJSONArray;
//  ,jaCustom: TJSONArray;
  sJText: String;
//  sID: String;
  i,
//  i1,
  iPOS,iTicket: integer;
//  iTicket1: integer;
  sTicket: String;
  sBetreff,sStatus,sType,sEpic,sSprint,sPrio,sFixVersion,sApp,Sassi,sname,sdesc: string;
//  slValues: TStringlist;
  sJsonString: string;
begin
  joBody:= nil;
  joResult:= nil;
  joResultDetail:= nil;
  joResultTickets:= nil;
  joFields:= nil;
  joFields1:= nil;
  joFields2:= nil;
  DeleteWorkItems(joBody, joResult,joResultDetail,joResultTickets,joFields,joFields1,joFields2,sJText,jArray);
  SynchWithJira;
  dm_PCM.qry_Work.SQL.Text:= 'DELETE FROM manager_azure_priv';
  dm_PCM.qry_Work.ExecSQL;
  sSprint:= '';
  sFixVersion:= '';
  sApp:= '';
  Screen.Cursor := crHourGlass;
  SetLength(arBoards,0);
  SetLength(arTickets,0);
  sJText:= '{"query": "Select [System.Id], [System.Title], [System.State] From WorkItems "}';
  joBody := TJSONObject.ParseJSONValue(sJText) as TJSONObject;
  joResult := RestRequest('https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_apis/wit',RESTClient_azure,joBody, '/wiql?api-version=7.0');
  joResult.TryGetValue<TJSONArray>('workItems', jArray);
  for i := 0 to jArray.Count - 1 do
  begin
    joResult := TJSONObject.ParseJSONValue(jArray.Items[i].ToString) as TJSONObject;
    if (joResult.GetValue('id').Null) OR (not joResult.TryGetValue<Integer>('id', iTicket)) then
      iTicket:= 0;
    if iTicket > 0 then
    begin
      joResultDetail := RestRequest('https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_apis/wit',RESTClient_azure_detail,nil, '/workitems/'+IntToStr(iTicket) +'?api-version=7.0&$expand=relations',rmget);
      joResultDetail.TryGetValue<TJSONObject>('fields',joFields1);
      sJsonString:=StringReplace(joFields1.ToString,'System.','',[rfreplaceall]);
      sJsonString:=StringReplace(sJsonString,'Microsoft.VSTS.Common.','',[rfreplaceall]);
      sJsonString:=StringReplace(sJsonString,'WEF_78887E810F404DC4A8618875F0BDA493_Kanban.','',[rfreplaceall]);
      joFields1:=TJSONObject.ParseJSONValue(sJsonString) as TJSONObject;

      joFields1.TryGetValue<String>('Title', sBetreff);
      iPOS:=Pos(' ',sBetreff);
      if iPOS > 0 then
      begin
        sTicket:= Copy(sBetreff,1,iPos-1);
        sBetreff:= Copy(sBetreff,iPos+1,Length(sBetreff));

      end;
      joFields1.TryGetValue<String>('BoardColumn', sStatus);
      joFields1.TryGetValue<String>('WorkItemType',sType);
      joFields1.TryGetValue<String>('Priority',sPrio);
      joFields1.TryGetValue<String>('Tags',sName);
      Sassi:='Jens Henske';
      joFields1.TryGetValue<String>('Description',sdesc);
      sDesc:= StringReplace(sDesc,'<div>','',[rfreplaceall]);
      sDesc:= StringReplace(sDesc,'</div>',slinebreak,[rfreplaceall]);
      WriteInDB(iTicket,sTicket,sStatus,sBetreff,sType,sEpic,sSprint,sPrio,sFixVersion,sApp,sName,sdesc,Sassi,'PCM','');
    end;
  end;
  qry_Azure.Refresh;
  Screen.Cursor := crDefault;
end;
procedure Tfrm_Ticket.pnl_ADevToolsResize(Sender: TObject);
begin
  GetWindowRect(pnl_aDevTools.Handle, DevToolsRect);
  SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
end;
// Confluence
procedure Tfrm_Ticket.btn_CDevToolsClick(Sender: TObject);
begin
  if not itmpnl_CDevTools.Visible then
  begin
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsDisable;
    ShowDevToolsonPanel(itmpnl_CDevTools,pnl_CDevTools,splt_C);
  end
  else begin
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_CMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Browser_FullScreen, frm_PCM_Browser_FullScreen);
  if itmpnl_CDevTools.Visible then
  begin
    if frm_PCM_Browser_FullScreen.Execute(True,'Confluence - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_CDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_CDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_PCM_Browser_FullScreen.Execute(True,'Confluence - PCM',Aurl);
  end;
end;
procedure Tfrm_Ticket.btn_GitMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Browser_FullScreen, frm_PCM_Browser_FullScreen);
  if itmpnl_CDevTools.Visible then
  begin
    if frm_PCM_Browser_FullScreen.Execute(True,'Github',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_CDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_CDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_PCM_Browser_FullScreen.Execute(True,'Github',Aurl);
  end;
end;

procedure Tfrm_Ticket.pnl_CDevToolsResize(Sender: TObject);
begin
  GetWindowRect(pnl_CDevTools.Handle, DevToolsRect);
  SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
end;
// Swagger
procedure Tfrm_Ticket.btn_SDevToolsClick(Sender: TObject);
begin
  if not itmpnl_SDevTools.Visible then
  begin
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsDisable;
    ShowDevToolsonPanel(itmpnl_sDevTools,pnl_sDevTools,splt_s);
  end
  else begin
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_SAPIClick(Sender: TObject);
var
  sPath,sPath1: String;
begin
  sPath:= GetNotepad;
  dm_pcm.qry_Work.SQL.text:= 'SELECT path from devmanager_config';
  dm_pcm.qry_Work.open;
  spath1:= dm_pcm.qry_Work.FieldByName('Path').AsString + '\api.json';
  dm_pcm.qry_Work.Close;
  if (sPath <> '') and (spath1 <> '') then
  begin
    if NotepadHWND <> 0 then
      SendMessage(NotepadHWND,WM_CLOSE,0,0);
    shellexecute(0,'open',Pchar(sPath),PChar('"' + spath1 + '"'),nil,SW_SHOWDEFAULT);
    sleep(2500);
    ShowNotepadonPanel(itmpnl_SNotepad,pnl_SNotepad,splt_SNp);
  end
end;
procedure Tfrm_Ticket.btn_SMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Browser_FullScreen, frm_PCM_Browser_FullScreen);
  if itmpnl_SDevTools.Visible then
  begin
    if frm_PCM_Browser_FullScreen.Execute(True,'Swagger - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_sDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_sDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_PCM_Browser_FullScreen.Execute(True,'Swagger - PCM',Aurl);
  end;
end;
procedure Tfrm_Ticket.btn_SCloseNotepadClick(Sender: TObject);
begin
  if NotepadHWND <> 0 then
  begin
    SendMessage(NotepadHWND,WM_Close,0,0);
  end;
  itmpnl_SNotepad.Visible:= false;
  splt_SNp.Visible:= false;
end;
procedure Tfrm_Ticket.pnl_SDevtoolsResize(Sender: TObject);
begin
  GetWindowRect(pnl_SDevTools.Handle, DevToolsRect);
  SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
end;
procedure Tfrm_Ticket.pnl_SNotepadResize(Sender: TObject);
var
  DevToolsRect: TRect;
begin
  GetWindowRect(pnl_SNotepad.Handle, DevToolsRect);
  SetWindowPos(NotepadHWND, 0, 0, 0,DevToolsRect.Right - DevToolsRect.Left ,DevToolsRect.Bottom - DevToolsRect.Top ,SWP_NOZORDER);
end;
procedure Tfrm_Ticket.btn_SReloadClick(Sender: TObject);
begin
  FWebBrowser.Reload;
end;
procedure Tfrm_Ticket.btn_SSwaggerInitClick(Sender: TObject);
var
  sPath,sPath1: String;
begin
  sPath:= GetNotepad;
  dm_pcm.qry_Work.SQL.text:= 'SELECT path from devmanager_config';
  dm_pcm.qry_Work.open;
  spath1:= dm_pcm.qry_Work.FieldByName('Path').AsString + '\swagger-initializer.js';
  dm_pcm.qry_Work.Close;
  if (sPath <> '') and (spath1 <> '') then
  begin
    if NotepadHWND <> 0 then
      SendMessage(NotepadHWND,WM_CLOSE,0,0);
    shellexecute(0,'open',Pchar(sPath),PChar('"' + spath1 + '"'),nil,SW_SHOWDEFAULT);
    sleep(2500);
    ShowNotepadonPanel(itmpnl_SNotepad,pnl_SNotepad,splt_SNp);
  end
end;
procedure Tfrm_Ticket.btn_SSwaggerUIClick(Sender: TObject);
var
  sPath,sPath1: String;
begin
  sPath:= GetNotepad;
  dm_pcm.qry_Work.SQL.text:= 'SELECT path from devmanager_config';
  dm_pcm.qry_Work.open;
  spath1:= dm_pcm.qry_Work.FieldByName('Path').AsString + '\swagger-ui-bundle.js';
  dm_pcm.qry_Work.Close;
  if (sPath <> '') and (spath1 <> '') then
  begin
    if NotepadHWND <> 0 then
      SendMessage(NotepadHWND,WM_CLOSE,0,0);
    shellexecute(0,'open',Pchar(sPath),PChar('"' + spath1 + '"'),nil,SW_SHOWDEFAULT);
    sleep(2500);
    ShowNotepadonPanel(itmpnl_SNotepad,pnl_SNotepad,splt_SNp);
  end
end;

// PCMAPPS
procedure Tfrm_Ticket.btn_PBoardClick(Sender: TObject);
begin
  AURL:= 'https://pcm-apps.de/Home';
  FWebBrowser.Navigate(AURL);
end;
procedure Tfrm_Ticket.btn_pDevtoolsClick(Sender: TObject);
begin
  if not itmpnl_pDevTools.Visible then
  begin
    btn_pDevtools.Caption:= rs_PCMDevManager_BTNDevToolsDisable;
    ShowDevToolsonPanel(itmpnl_pDevTools, pnl_pDevTools,splt_p);
  end
  else begin
    btn_pDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_pDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_PMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Browser_FullScreen, frm_PCM_Browser_FullScreen);
  if itmpnl_SDevTools.Visible then
  begin
    if frm_PCM_Browser_FullScreen.Execute(True,'Homepage - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_PDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_PDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_PCM_Browser_FullScreen.Execute(True,'Homepage - PCM',Aurl);
  end;
end;
procedure Tfrm_Ticket.pnl_PDevtoolsResize(Sender: TObject);
begin
  GetWindowRect(pnl_PDevTools.Handle, DevToolsRect);
  SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
end;
procedure Tfrm_Ticket.btn_PWebsiteEditClick(Sender: TObject);
begin
  AURL:= 'https://homepagedesigner.telekom.de/.cm4all/controlpanel/index/?txnid=bKPOqqv2AJTfh6IqEDWHQgxx';
  FWebBrowser.Navigate(AURL);
end;
procedure Tfrm_Ticket.btn_PWebsiteConfigClick(Sender: TObject);
begin
  AURL:= 'https://homepagecenter.telekom.de/startseite';
  FWebBrowser.Navigate(AURL);
end;
procedure Tfrm_Ticket.pc_TicketsChange(Sender: TObject);
begin
  if pc_tickets.itemindex = 1 then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserAzurePriv);
//    AURL:= 'http:/192.168.178.10:82/PCM-DEV/PCM/_boards/board/t/PCM-Team/Issues';
      AURL:= 'https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_boards/board/t/PCM-Team/Issues';
    FWebBrowser.Navigate(AURL);

    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    btn_PDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_pDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    itmpnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
  if pc_tickets.Itemindex = 0 then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserJiraPriv);
    AURL:= 'https://pcm-software.atlassian.net/jira/software/projects/PCM/boards/1';
    FWebBrowser.Navigate(AURL);
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    btn_PDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_pDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    itmpnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
  if pc_tickets.Itemindex = 2  then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserConfluence);
    AURL:= 'https://pcm-software.atlassian.net/wiki';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    btn_PDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_pDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    itmpnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
  if pc_tickets.Itemindex = 3  then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserSwagger);
    AURL:= 'https://pcmapps.ddns.net:8443';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_PDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_pDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
  if pc_tickets.ItemIndex = 4 then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserPCMApps);
    AURL:= 'https://pcm-apps.de/Home';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    itmpnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
  if pc_tickets.itemindex = 5 then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_AI);
    AURL:= 'https://www.perplexity.ai/';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    itmpnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;

  if pc_tickets.ItemIndex = 6 then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_Github);
    AURL:= 'https://github.com/JtheK1984?tab=repositories&q=&type=&language=&sort=name';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= rs_PCMDevManager_BTNDevToolsEnable;
    itmpnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    pnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;

end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_Ticket.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Ticket.FormShow(Sender: TObject);
begin
  qry_Azure.Open;
  qry_Prio.Open;
  qry_Tickets_priv.Open;

  if GlobalWebView2Loader.Initialized then
    GlobalWebView2Loader.Destroy;
  GlobalWebView2Loader:= TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  InitializeBrowser(pnl_BrowserJiraPriv);
  grdDBTblView_JiraBetreff.Caption:=  rs_PCMManager_Betreff;
  grdDBTblView_JiraStichwort.Caption:= rs_PCMDevManager_COL_Stichwort;
  grdDBTblView_JiraBeschreibung.Caption:= rs_PCM_Beschreibung;
  grdDBTblView_JiraFixVersion.Caption:= rs_PCMDevManager_COL_FixVersion;
  cxGridDBColumn5.Caption:= rs_PCMManager_Betreff;
  cxGridDBColumn9.Caption:= rs_PCM_Prioritaet;
  cxGridDBColumn12.Caption:= rs_PCMDevManager_COL_Stichwort;
  cxGridDBColumn13.Caption:= rs_PCM_Beschreibung;
  cxGridDBColumn14.Caption:= rs_PCMDevManager_COL_Zugewiesen;
  Loadjirastatus;
end;
{$EndRegion}
end.
