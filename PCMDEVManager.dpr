program PCMDEVManager;


uses
  inifiles,
  NtTranslator,
  System.SysUtils,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  uWVLoader,
  Windows,
  PCM.Ticket in 'Modules\PCM.Ticket.pas' {frm_Ticket},
  PCM.Entwicklung in 'Modules\PCM.Entwicklung.pas' {frm_Dev},
  PCM.Modul.B_Config in 'Modules\PCM.Modul.B_Config.pas' {frm_Config},
  PCM.Helper;

{$R *.res}

{$IFDEF WIN64}
  {$R 'Versioninfo64.res'}
{$else}
  {$R 'Versioninfo32.res'}
{$ENDIF}

{$SetPEOptFlags IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}
{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP or IMAGE_FILE_LARGE_ADDRESS_AWARE}


var
  ifini: TIniFile;
  sStyle: String;
  slocale: String;

begin
  Checkinis;
  ifini:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:=ifini.ReadString('PCMDEV','Style','Windows');
  slocale:=ifini.ReadString('PCMDEV','Language','de');
  ifini.Free;
  GlobalWebView2Loader                := TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  Application.Initialize;
  TStyleManager.TrySetStyle(sStyle);
  {$IFDEF WIN64}
  Application.Title:= 'PCM - Devmanager 64-Bit';
  TNtTranslator.SetNew(slocale,[],'de');
  {$else}
  Application.Title:= 'PCM - Devmanager 32-Bit';
  {$ENDIF}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.CreateForm(Tdm_PCM, dm_PCM);
  Application.CreateForm(Tfrm_Ticket, frm_Ticket);
  Application.CreateForm(Tfrm_Dev, frm_Dev);
  Application.ShowMainForm:= False;
  Application.ShowMainForm := true;
  Application.Run;
end.
