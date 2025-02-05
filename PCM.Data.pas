unit PCM.Data;

interface

uses
  System.SysUtils, System.Classes, System.DateUtils, FireDAC.Phys.ADSDef,
  FireDAC.Stan.Intf,//ZMI.Common.Types,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.ADS, IPPeerClient, REST.Client, REST.Authenticator.Basic,
  Data.Bind.Components, Data.Bind.ObjectScope, System.JSON, REST.Types,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,vcl.dialogs, VCL.Forms, System.ImageList, Vcl.ImgList,
  Vcl.Controls, cxImageList, cxGraphics, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL;

type
  Tdm_PCM = class(TDataModule)
    con_PCM: TFDConnection;
    qry_Work: TFDQuery;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    imglst_16x16: TcxImageList;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    imglst_32x32: TcxImageList;
    qry_Chart: TFDQuery;
    ds_ChartApp: TDataSource;
    qry_Work1: TFDQuery;
    qry_Work2: TFDQuery;
    qry_ChartApp: TFDQuery;
    qry_ChartDesktop: TFDQuery;
    ds_ChartDesktop: TDataSource;
    ds_Chart: TDataSource;
    cxImageList1: TcxImageList;
    RestClientPCM: TRESTClient;
    HTTPBasicAuthenticatorPCM: THTTPBasicAuthenticator;
    RESTRequest1: TRESTRequest;
    ds_Versions: TDataSource;
    qry_Versions: TFDQuery;
    qry_Doku: TFDQuery;
    ds_doku: TDataSource;
    qry_Work_sub: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure con_PCMBeforeConnect(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    iModulTab: integer;
    bNewLiceneCheck: Boolean;
    bCLose: Boolean;
    bLogin: Boolean;
    bStyle: boolean;
    iIDBenutzerPCM: integer;
    iDBType: integer;
    sServer,sStyle,sDesign: String;
    slocale: string;
    bAutologin: boolean;
    sUSerAutologin: string;
    Firma, Nummer: string;
    bDemo: boolean;
    bAppTerm: boolean;
    dtGueltig,dtCurrDate: Tdate;
    iScale: double;
    // Recht
    iBenutzer: integer;
    iKonfiguration: integer;
    iDesign: integer;
    iLizenzenRecht: integer;
    sUser: STring;
    sPass: STring;
    sType: STring;
    sBaseurl: STring;
    sPort: STring;
    function GetRequest(ARequestBody: String; AResource: String; AGETPOST: TRESTRequestMethod = rmPOST ): TJSONObject;
  end;

var
  dm_PCM: Tdm_PCM;

const
  DB_MYSQL = 0;
  DB_MSSQL = 1;
  DB_ADS = 2;
  DB_FB = 3;
  PCM_Programmnummer =  4;
  PCM_Logname = 'PCMDEV';
  PCM_Connectionname =  'pcm_DEV';
  PCM_Alias = 'PCMDEV';
  user = 'Jens.Henske@outlook.com';
  pass = 'JensHenske1234';

resourcestring
  {$IFDEF WIN64}
  PCM_Programmname = 'PCM - DevManager 64-Bit';
  {$else}
  PCM_Programmname = 'PCM - DevManager 32-Bit';
  {$ENDIF}

implementation

uses
  PCM.Main;

{$R *.dfm}

function Tdm_PCM.GetRequest(ARequestBody: String; AResource: String; AGETPOST: TRESTRequestMethod = rmPOST ): TJSONObject;
var
  RestRequest: TRESTRequest;
begin
  HTTPBasicAuthenticatorPCM.Username:= sUser;
  HTTPBasicAuthenticatorPCM.Password:= sPass;
  RestClientPCM.BaseURL:= sType + sBaseurl +':' + sPort + '/PCM/sandbox-api/v1/';
  RESTClientPCM.ContentType.Empty;
  RestRequest := TRESTRequest.Create(nil);
  try
    RestRequest.Timeout:= 30000;
    RESTRequest.AcceptEncoding := 'gzip, deflate, br';
    RestRequest.Client := RestClientPCM;
    RestRequest.Method := AGETPOST;
    RestRequest.Resource := AResource;
//    rchedt_RequestURL.Text:= sType + sBaseurl +':' + sPort + '/PCM/sandbox-api/v1/' + AResource;
    if ARequestBody <> '' then
    begin
      RestRequest.Body.Add(TJSonObject.ParseJSONValue(ARequestBody) as TJSONObject);
    end;
    RestRequest.Execute;
    Result:= TJSonObject.ParseJSONValue(RestRequest.Response.JSONText) as TJSONObject;
  finally
    RestRequest.DisposeOf;
  end;
end;

procedure Tdm_PCM.DataModuleCreate(Sender: TObject);
begin
  iScale := Screen.PrimaryMonitor.PixelsPerInch /96;
end;
procedure Tdm_PCM.con_PCMBeforeConnect(Sender: TObject);
begin
  con_PCM.LoginPrompt := False;
  con_PCM.Params.Clear;
  case iDBType of
    DB_MYSQL:
    begin
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('User_Name=root');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Port=3307');
      con_PCM.Params.Add('DriverID=MySQL');
    end;
    DB_MSSQL:
    begin
      con_PCM.Params.Add('OSAuthent=No');
      con_PCM.Params.Add('User_Name=sa');
      con_PCM.Params.Add('Password=Nh2020+5');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('DriverID=MSSQL');
    end;
    DB_ADS:
     begin
      con_PCM.Params.Add('Alias=pcm');
      con_PCM.Params.Add('ServerTypes=REMOTE|LOCAL');
      con_PCM.Params.Add('User_Name=adssys');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('DriverID=ADS');
     end;
  end;
end;

end.
