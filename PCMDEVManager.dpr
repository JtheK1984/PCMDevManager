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
  PCM.Modul.D_EntwicklungWeb in 'Modules\PCM.Modul.D_EntwicklungWeb.pas' {frm_Ticket},
  PCM.Modul.C_Entwicklung in 'Modules\PCM.Modul.C_Entwicklung.pas' {frm_Dev},
  PCM.Modul.B_Config in 'Modules\PCM.Modul.B_Config.pas' {frm_Config},
  PCM.Helper,
  PCM.splash in 'PCM.splash.pas' {SplashScreen},
  PCM.Modul.G_Swagger in 'Modules\PCM.Modul.G_Swagger.pas' {frm_Swagger},
  PCM.Modul.F_Update.Import in 'Modules\PCM.Modul.F_Update.Import.pas',
  PCM.Modul.F_Update in 'Modules\PCM.Modul.F_Update.pas',
  PCM.Modul.F_Update.Version in 'Modules\PCM.Modul.F_Update.Version.pas',
  PCM.Modul.E_Doku in 'Modules\PCM.Modul.E_Doku.pas',
  PCM.Modul.E_Doku.Programm in 'Modules\PCM.Modul.E_Doku.Programm.pas',
  PCM.Modul.E_Doku.Version in 'Modules\PCM.Modul.E_Doku.Version.pas',
  PCMDEVManager.dxSettings in 'PCMDEVManager.dxSettings.pas',
  PCM.Modul.C_Entwicklung.Sourcecode.NewProg in 'Modules\PCM.Modul.C_Entwicklung.Sourcecode.NewProg.pas' {fSourceBackup_NewConfig},
  PCM.Modul.C_Entwicklung.Sourcecode.Extension in 'Modules\PCM.Modul.C_Entwicklung.Sourcecode.Extension.pas' {fSourceBackup_FileExt},
  PCM.Modul.C_Entwicklung.NewProject in 'Modules\PCM.Modul.C_Entwicklung.NewProject.pas' {frm_NewProject};

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
  
  slocale: String;

begin
  Checkinis;
  ifini:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  slocale:=ifini.ReadString('PCMDevManager','Language','de');
  ifini.Free;
  GlobalWebView2Loader                := TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  Application.Initialize;
  {$IFDEF WIN64}
  Application.Title:= 'PCM - Devmanager 64-Bit';
  {$else}
  Application.Title:= 'PCM - Devmanager 32-Bit';
  {$ENDIF}
  TNtTranslator.SetNew(slocale,[],'de');												 
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_PCM, dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.CreateForm(Tfrm_NewProject, frm_NewProject);
  Application.Run;
end.
