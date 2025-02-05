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
  PCM.Helper,
  PCM.splash in 'PCM.splash.pas' {SplashScreen},
  PCM.Swagger in 'Modules\PCM.Swagger.pas' {frm_Swagger},
  PCM.Modul.C_Update.Import in 'Modules\PCM.Modul.C_Update.Import.pas',
  PCM.Modul.C_Update in 'Modules\PCM.Modul.C_Update.pas',
  PCM.Modul.C_Update.Version in 'Modules\PCM.Modul.C_Update.Version.pas',
  PCM.Modul.D_Doku in 'Modules\PCM.Modul.D_Doku.pas',
  PCM.Modul.D_Doku.Programm in 'Modules\PCM.Modul.D_Doku.Programm.pas',
  PCM.Modul.D_Doku.Version in 'Modules\PCM.Modul.D_Doku.Version.pas';

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
  Application.CreateForm(Tdm_PCM, dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.Run;
end.
