unit PCM.Ticket;

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
  PCM.Browser,dxChartControl,WebView2, uWVBrowserBase, uWVBrowser;
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
    pc_Tickets: TcxPageControl;
    ts_Azure: TcxTabSheet;
    brdckCtrl_Azure: TdxBarDockControl;
    pnl_main: TcxGroupBox;
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
    layoutlaflst: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    qry_Prio: TFDQuery;
    ds_Prio: TDataSource;
    ts_jira: TcxTabSheet;
    brdckCtrl_Jira: TdxBarDockControl;
    tb_Jira: TdxBar;
    btn_JReadTickets: TdxBarLargeButton;
    btn_JBoard: TdxBarLargeButton;
    qry_Tickets_priv: TFDQuery;
    ds_Tickets_priv: TDataSource;
    pc_Jira: TcxPageControl;
    ts_J: TcxTabSheet;
    pnl_BrowserJiraPriv: TcxGroupBox;
    ts_JDesktop: TcxTabSheet;
    cmbbx_Desktop: TcxComboBox;
    Chatcrtl_Desktop: TdxChartControl;
    dxChartSimpleDiagram1: TdxChartSimpleDiagram;
    dxChartSimpleSeries1: TdxChartSimpleSeries;
    ts_JApp: TcxTabSheet;
    cmbbx_App: TcxComboBox;
    Chatcrtl_APP: TdxChartControl;
    dxChartSimpleDiagram2: TdxChartSimpleDiagram;
    dxChartSimpleSeries2: TdxChartSimpleSeries;
    ts_JDetails: TcxTabSheet;
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
    split_Jira: TcxSplitter;
    dxLayoutControl2: TdxLayoutControl;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxRichEdit1: TcxRichEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    grpbx_Ticketspriv: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    brdckCtrl_JiraBrowser: TdxBarDockControl;
    httpAuth_Jira: THTTPBasicAuthenticator;
    RESTClient_jira: TRESTClient;
    tb_JiraMax: TdxBar;
    btn_JMinMaxBrowserPriv: TdxBarLargeButton;
    btn_JFilter: TdxBarLargeButton;
    pc_Azure: TcxPageControl;
    ts_A: TcxTabSheet;
    ts_ADetail: TcxTabSheet;
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
    pnl_BrowserAzurePriv: TcxGroupBox;
    dxBarDockControl2: TdxBarDockControl;
    bmgr_mainBar1: TdxBar;
    btn_AMinMaxBrowserPriv: TdxBarLargeButton;
    ts_Confluence: TcxTabSheet;
    ts_Swagger: TcxTabSheet;
    ts_PCMAPPS: TcxTabSheet;
    brdckCtrl_Confluence: TdxBarDockControl;
    brdckCtrl_Swagger: TdxBarDockControl;
    brdckCtrl_PCMAPPS: TdxBarDockControl;
    bmgr_mainBar2: TdxBar;
    btn_CMinMaxBrowserPriv: TdxBarLargeButton;
    tb_Swagger: TdxBar;
    btn_SMinMaxBrowserPriv: TdxBarLargeButton;
    btn_SAPI: TdxBarLargeButton;
    tb_PCMApps: TdxBar;
    btn_PMinMaxBrowserPriv: TdxBarLargeButton;
    btn_PWebsiteEdit: TdxBarLargeButton;
    pnl_BrowserConfluence: TcxGroupBox;
    pnl_BrowserSwagger: TcxGroupBox;
    pnl_BrowserPCMApps: TcxGroupBox;
    btn_PWebsiteConfig: TdxBarLargeButton;
    btn_JDevtools: TdxBarLargeButton;
    pnl_JDevTools: TcxGroupBox;
    splt_J: TcxSplitter;
    Memo1: TMemo;
    splt_P: TcxSplitter;
    pnl_PDevtools: TcxGroupBox;
    splt_A: TcxSplitter;
    pnl_ADevTools: TcxGroupBox;
    splt_C: TcxSplitter;
    pnl_CDevTools: TcxGroupBox;
    splt_S: TcxSplitter;
    pnl_SDevtools: TcxGroupBox;
    btn_ADevTools: TdxBarLargeButton;
    btn_CDevTools: TdxBarLargeButton;
    btn_SDevTools: TdxBarLargeButton;
    btn_pDevtools: TdxBarLargeButton;
    btn_SSwaggerInit: TdxBarLargeButton;
    btn_PBoard: TdxBarLargeButton;
    btn_SReload: TdxBarLargeButton;
    pnl_SNotepad: TcxGroupBox;
    splt_sNp: TcxSplitter;
    btn_SCloseNotepad: TdxBarLargeButton;
    btn_SSwaggerUI: TdxBarLargeButton;
    ts_AI: TcxTabSheet;
    pnl_AI: TcxGroupBox;
    procedure FormShow(Sender: TObject);
    procedure btn_AReadTicketsClick(Sender: TObject);
    procedure grdDBTblView_JiraBeschreibungGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;var AHintText: TCaption; var AIsHintMultiLine: Boolean;var AHintTextRect: TRect);
    procedure btn_ABoardClick(Sender: TObject);
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
    procedure WVBrowser1FrameNavigationCompleted(Sender: TObject;
      const aWebView: ICoreWebView2;
      const aArgs: ICoreWebView2NavigationCompletedEventArgs);
  private
    { Private-Deklarationen }
    AURL: String;
    FWebBrowser: TAbstractWebBrowser;
    sTicketNr_Ges: String;
    DevToolsRect: TRect;
    function GetNotepad: string;
    function RestRequest(ABaseUrl: String; ARestclient: TRestClient; ARequestBody: TJSONObject; AResource: String; AGETPOST: TRESTRequestMethod = rmPost): TJSONObject;
    procedure InitializeBrowser(AParent: TWinControl);
    procedure ShowDevToolsonPanel(APanel: TcxGroupBox; ASplitter: TcxSplitter);
    procedure ShowNotepadonPanel(APanel: TcxGroupBox; ASplitter: TcxSplitter);
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
  sPCMPassword = 'ATATT3xFfGF07HMGLsAvw7ShQHo_OHJYzLDS5lGKBGqiKF-LOamh0ZCt_jdYHDojFwIkZ47i5nOqliH7zl8vTrPL5BXZKF3yxjGIFSYqlZ3rrW_7fidxWtv_RxGvs9_G7D75BDdHBr7eJ00v_im-4ec_tEcLS5On_HqJ7kgiNtkw-QFow1j9x9c=F1F05D50';
  {$EndRegion Const}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Browser.FullScreen,
  PCM.Data,
  PCM.Helper,
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
procedure Tfrm_Ticket.ShowDevToolsonPanel(APanel: TcxGroupBox; ASplitter: TcxSplitter);
var
  WinHandle : HWND;
  Name: array[0..255] of Char;
  Buffer: array[0..255] of Char;
  s,s1:string;
  Style: DWORD;
begin
  ASplitter.Visible:= true;
  APanel.Visible:= true;
  FWebBrowser.ShowDevTools(true);
  WinHandle := GetTopWindow(GetDesktopWindow);
  while WinHandle <> 0 do // go thru the window list
  begin
    GetClassName(WinHandle, @Name[0], 255);
    GetWindowText(WindowHandle, Buffer, Length(Buffer));
    s:=string(Name);
    s1:=string(Buffer);
    memo1.Lines.Add(s + ' - ' + s1 );
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
procedure Tfrm_Ticket.ShowNotepadonPanel(APanel: TcxGroupBox; ASplitter: TcxSplitter);
var
  WinHandle : HWND;
  Name: array[0..255] of Char;
  Buffer: array[0..255] of Char;
  s,s1:string;
  Style: DWORD;
begin
  ASplitter.Visible:= true;
  APanel.Visible:= true;
  WinHandle := GetTopWindow(GetDesktopWindow);
  while WinHandle <> 0 do // go thru the window list
  begin
    GetClassName(WinHandle, @Name[0], 255);
    GetWindowText(WindowHandle, Buffer, Length(Buffer));
    s:=string(Name);
    s1:=string(Buffer);
    memo1.Lines.Add(s + ' - ' + s1 );
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
procedure Tfrm_Ticket.WVBrowser1FrameNavigationCompleted(Sender: TObject; const aWebView: ICoreWebView2; const aArgs: ICoreWebView2NavigationCompletedEventArgs);
begin

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
  if not pnl_JDevTools.Visible then
  begin
    btn_JDevtools.Caption:= 'Devtools ausblenden';
    ShowDevToolsonPanel(pnl_JDevTools,splt_J);
  end
  else begin
    btn_JDevtools.Caption:= 'Devtools einblenden';
    pnl_JDevTools.Visible:= false;
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
    btn_JFilter.Caption:= 'erledigte Tickets einblenden';
    qry_Tickets_priv.Filter:=   'Status <> ''Fertig''';
    qry_Tickets_priv.Filtered:= true;
  end
  else begin
    btn_JFilter.Tag := 0;
    btn_JFilter.LargeImageIndex:= 38;
    btn_JFilter.Caption:= 'erledigte Tickets ausblenden';
    qry_Tickets_priv.Filtered:= false;
  end;
end;
procedure Tfrm_Ticket.btn_JMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Browser_FullScreen, frm_Browser_FullScreen);
  if pnl_JDevTools.Visible then
  begin
    if frm_Browser_FullScreen.Execute(True,'Jira - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_JDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_JDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_Browser_FullScreen.Execute(True,'Jira - PCM',Aurl);
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
        RestRequest.Body.Add(joLogin);
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
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsMemo:= ADesc;
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
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsMemo:= ADesc;
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
  dm_PCM.qry_Work.SQL.Text:= 'Delete From manager_tickets where nr not in (' + sTicketNr_ges + ')';
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
      pc_Jira.ActivePageIndex:= 0;
    end;
  end;
end;
procedure Tfrm_Ticket.qry_Tickets_privAfterScroll(DataSet: TDataSet);
var
  slBeschreibung: TStringlist;
  i: Integer;
begin
  grpbx_Ticketspriv.CaptionOptions.Text:= 'Projekte / ' + qry_Tickets_priv.FieldByName('Epic').asString + ' / ' + qry_Tickets_priv.FieldByName('Ticket_nr').asString;
  dxLayoutItem21.CaptionOptions.Text:=qry_Tickets_priv.FieldByName('Betreff').asString;
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
        RestRequest.Body.Add(joLogin);
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
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsMemo:= ADesc;
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
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsMemo:= ADesc;
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
  jarIssues,
//  jarComponent,
  jarFixVersion: TJSONArray;
//  joFields1,joLand, joUHD,  joTester2, joTester,joReporter,
  joMelder, joAssignee,joComponent,joFixVersion,jopriority,josprint,joStatus,joIssuetype, joParent,joFields,joBody, joResult: TJSONObject;
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
  sTicketNr_Ges:= '';
  Screen.Cursor := crHourGlass;
  API_Auth_Jira('https://pcm-software.atlassian.net/rest/auth/1/session',sPCMUser,sPCMPassword);
  Application.ProcessMessages;
  sJText:='{"fields": ["summary","status","issuetype","components","parent","customfield_10036","customfield_10020","priority",'+
    '"fixVersions","labels","assignee","reporter","versions","description"],'+
    '"jql": "assignee = ''jens.henske@outlook.com'' and status in (10000,10001,10003,10011,10007) ORDER BY issue ASC","startAt": 0, "maxResults": 100 }';

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
  dm_PCM.qry_Work.SQL.Text:= 'Delete From manager_tickets where nr not in (' + sTicketNr_ges + ')';
  try
    dm_PCM.qry_Work.ExecSQL;
  except
  end;
  qry_Tickets_priv.refresh;
  LoadJiraStatus;
  qry_Tickets_priv.AfterScroll:= qry_Tickets_privAfterScroll;
  Screen.Cursor := crDefault;

  AURL:= 'https://3e0h2cz1k1ji0ttu.myfritz.net:2443/PCM-DEV/PCM/_boards/board/t/PCM-Team/Issues';
  FWebBrowser.Navigate(AURL);

end;
procedure Tfrm_Ticket.btn_ADevToolsClick(Sender: TObject);
begin
  if not pnl_ADevTools.Visible then
  begin
    btn_ADevtools.Caption:= 'Devtools ausblenden';
    ShowDevToolsonPanel(pnl_ADevTools,splt_A);
  end
  else begin
    btn_ADevtools.Caption:= 'Devtools einblenden';
    pnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_AMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Browser_FullScreen, frm_Browser_FullScreen);
  if pnl_ADevTools.Visible then
  begin
    if frm_Browser_FullScreen.Execute(True,'Azure - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_ADevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_ADevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_Browser_FullScreen.Execute(True,'Azure - PCM',Aurl);
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
    for i := 0 to jArray.Size - 1 do
    begin
      joResult := TJSONObject.ParseJSONValue(jArray.Get(i).ToString) as TJSONObject;
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
      RestRequest('https://pcmapps.ddns.net:2443/PCM-DEV/PCM/_apis/wit',RESTClient_azure,nil, '/workitems/' + IntToStr(arATickets[i].iTicketnr) +'?api-version=7.0',TRESTRequestMethod.rmDELETE);
    end;
  end;
  procedure SynchWithJira;
  begin
    dm_PCM.qry_Work.SQL.Text:= 'SELECT * FROM manager_tickets_priv';
    dm_PCM.qry_Work.Open;
    while not dm_PCM.qry_Work.Eof do
    begin

    end;
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
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsMemo:= ADesc;
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
      dm_PCM.qry_Work.ParamByName('Beschreibung').AsMemo:= ADesc;
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
  for i := 0 to jArray.Size - 1 do
  begin
    joResult := TJSONObject.ParseJSONValue(jArray.Get(i).ToString) as TJSONObject;
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
//      if sType <> 'Epic' then
//      begin
//        try
//          joResultDetail.TryGetValue<TJSonArray>('relations',jaCustom);
//          if jaCustom <> nil then
//          begin
//          if jaCustom.Size >= 0 then
//          begin
//
//            for i1 := 0 to jaCustom.Size - 1 do
//              begin
//                joFields2 := TJSONObject.ParseJSONValue(jaCustom.Get(i1).ToString) as TJSONObject;
//                joFields2.TryGetValue<String>('url',sEpic);
//              end;
//            end;
//          end;
//        except
//        end;
//      end;
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
  if not pnl_CDevTools.Visible then
  begin
    btn_CDevtools.Caption:= 'Devtools ausblenden';
    ShowDevToolsonPanel(pnl_CDevTools,splt_C);
  end
  else begin
    btn_CDevtools.Caption:= 'Devtools einblenden';
    pnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_CMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Browser_FullScreen, frm_Browser_FullScreen);
  if pnl_CDevTools.Visible then
  begin
    if frm_Browser_FullScreen.Execute(True,'Confluence - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_CDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_CDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_Browser_FullScreen.Execute(True,'Confluence - PCM',Aurl);
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
  if not pnl_SDevTools.Visible then
  begin
    btn_SDevtools.Caption:= 'Devtools ausblenden';
    ShowDevToolsonPanel(pnl_sDevTools,splt_s);
  end
  else begin
    btn_SDevtools.Caption:= 'Devtools einblenden';
    pnl_SDevTools.Visible:= false;
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
    ShowNotepadonPanel(pnl_SNotepad,splt_SNp);
  end
end;
procedure Tfrm_Ticket.btn_SMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Browser_FullScreen, frm_Browser_FullScreen);
  if pnl_SDevTools.Visible then
  begin
    if frm_Browser_FullScreen.Execute(True,'Swagger - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_sDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_sDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_Browser_FullScreen.Execute(True,'Swagger - PCM',Aurl);
  end;
end;
procedure Tfrm_Ticket.btn_SCloseNotepadClick(Sender: TObject);
begin
  if NotepadHWND <> 0 then
  begin
    SendMessage(NotepadHWND,WM_Close,0,0);
    pnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
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
    ShowNotepadonPanel(pnl_SNotepad,splt_SNp);
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
    ShowNotepadonPanel(pnl_SNotepad,splt_SNp);
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
  if not pnl_pDevTools.Visible then
  begin
    btn_pDevtools.Caption:= 'Devtools ausblenden';
    ShowDevToolsonPanel(pnl_pDevTools,splt_p);
  end
  else begin
    btn_pDevtools.Caption:= 'Devtools einblenden';
    pnl_pDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
end;
procedure Tfrm_Ticket.btn_PMinMaxBrowserPrivClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Browser_FullScreen, frm_Browser_FullScreen);
  if pnl_SDevTools.Visible then
  begin
    if frm_Browser_FullScreen.Execute(True,'Homepage - PCM',Aurl,true,DevToolsHWND) then
    begin
      GetWindowRect(pnl_PDevtools.Handle, DevToolsRect);
      Winapi.Windows.SetParent(DevToolsHWND, pnl_PDevtools.Handle);
      SetWindowPos(DevToolsHWND, 0, -8, -31,DevToolsRect.Right - DevToolsRect.Left +16,DevToolsRect.Bottom - DevToolsRect.Top + 39,SWP_NOZORDER);
    end;
  end
  else begin
    frm_Browser_FullScreen.Execute(True,'Homepage - PCM',Aurl);
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
  if pc_tickets.Properties.ActivePage = ts_azure then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserAzurePriv);
    AURL:= 'http:/192.168.178.10:82/PCM-DEV/PCM/_boards/board/t/PCM-Team/Issues';
    FWebBrowser.Navigate(AURL);

    btn_JDevtools.Caption:= 'Devtools einblenden';
    pnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_CDevtools.Caption:= 'Devtools einblenden';
    pnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= 'Devtools einblenden';
    pnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    btn_PDevtools.Caption:= 'Devtools einblenden';
    pnl_PDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    pnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
  if pc_tickets.Properties.ActivePage = ts_jira then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserJiraPriv);
    AURL:= 'https://pcm-software.atlassian.net/jira/software/projects/PCM/boards/1';
    FWebBrowser.Navigate(AURL);
    btn_ADevtools.Caption:= 'Devtools einblenden';
    pnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= 'Devtools einblenden';
    pnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= 'Devtools einblenden';
    pnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    btn_PDevtools.Caption:= 'Devtools einblenden';
    pnl_PDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    pnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
  if pc_tickets.Properties.ActivePage = ts_Confluence  then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserConfluence);
    AURL:= 'https://pcm-software.atlassian.net/wiki';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= 'Devtools einblenden';
    pnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= 'Devtools einblenden';
    pnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_SDevtools.Caption:= 'Devtools einblenden';
    pnl_SDevTools.Visible:= false;
    splt_S.Visible:= false;
    btn_PDevtools.Caption:= 'Devtools einblenden';
    pnl_PDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
    if NotepadHWND <> 0 then
    begin
      SendMessage(NotepadHWND,WM_Close,0,0);
    end;
    pnl_SNotepad.Visible:= false;
    splt_SNp.Visible:= false;
  end;
  if pc_tickets.Properties.ActivePage = ts_Swagger  then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserSwagger);
    AURL:= 'https://pcmapps.ddns.net:8443';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= 'Devtools einblenden';
    pnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= 'Devtools einblenden';
    pnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= 'Devtools einblenden';
    pnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_PDevtools.Caption:= 'Devtools einblenden';
    pnl_PDevTools.Visible:= false;
    splt_p.Visible:= false;
    if DevToolsHWND <> 0 then
      SendMessage(DevToolsHWND,WM_Close,0,0);
  end;
  if pc_tickets.Properties.ActivePage = ts_PCMAPPS  then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_BrowserPCMApps);
    AURL:= 'https://pcm-apps.de/Home';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= 'Devtools einblenden';
    pnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= 'Devtools einblenden';
    pnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= 'Devtools einblenden';
    pnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= 'Devtools einblenden';
    pnl_SDevTools.Visible:= false;
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
  if pc_tickets.Properties.ActivePage = ts_AI  then
  begin
    FreeAndNil(FWebBrowser);
    GlobalWebView2Loader.Destroy;
    GlobalWebView2Loader:= TWVLoader.Create(nil);
    GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
    GlobalWebView2Loader.StartWebView2;
    InitializeBrowser(pnl_AI);
    AURL:= 'https://www.perplexity.ai/';
    FWebBrowser.Navigate(AURL);
    btn_JDevtools.Caption:= 'Devtools einblenden';
    pnl_JDevTools.Visible:= false;
    splt_J.Visible:= false;
    btn_ADevtools.Caption:= 'Devtools einblenden';
    pnl_ADevTools.Visible:= false;
    splt_A.Visible:= false;
    btn_CDevtools.Caption:= 'Devtools einblenden';
    pnl_CDevTools.Visible:= false;
    splt_C.Visible:= false;
    btn_SDevtools.Caption:= 'Devtools einblenden';
    pnl_SDevTools.Visible:= false;
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
  Loadjirastatus;
end;
{$EndRegion}
end.
