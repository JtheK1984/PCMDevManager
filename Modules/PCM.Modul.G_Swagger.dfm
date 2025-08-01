object frm_Swagger: Tfrm_Swagger
  Left = 0
  Top = 0
  Caption = 'Test DB-Rest Query'
  ClientHeight = 743
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 1200
    Height = 743
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = imglst_28x80
    ExplicitWidth = 1194
    ExplicitHeight = 726
    object stbr_Rest: TdxStatusBar
      Left = 12
      Top = 871
      Width = 1159
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 400
          Text = 'Dauer der Abfrage DB:'
          Width = 400
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 400
          Text = 'Dauer der Abfrage Rest:'
          Width = 400
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          MinWidth = 400
          Text = 'Variante:'
          Width = 400
        end>
      PaintStyle = stpsUseLookAndFeel
    end
    object btn_Checkserver: TcxButton
      Left = 10000
      Top = 9113
      Width = 1101
      Height = 25
      Caption = 'Execute'
      TabOrder = 1
      Visible = False
      OnClick = btn_CheckserverClick
    end
    object mem_CheckServer_Example: TcxMemo
      Left = 10000
      Top = 9113
      Lines.Strings = (
        '{'
        '  "HasError": false,'
        '  "ErrorCode": 0,'
        '  "Errormessage": ""'
        '}')
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Visible = False
      Height = 81
      Width = 1046
    end
    object btn_CheckLogin: TcxButton
      Left = 10000
      Top = 9060
      Width = 1101
      Height = 25
      Caption = 'Rest - Execute'
      TabOrder = 3
      Visible = False
      OnClick = btn_CheckLoginClick
    end
    object btn_CheckLoginSQL: TcxButton
      Left = 10000
      Top = 9113
      Width = 1101
      Height = 25
      Caption = 'SQL - Execute'
      TabOrder = 4
      Visible = False
      OnClick = btn_CheckLoginSQLClick
    end
    object mem_GetLogin_Example: TcxMemo
      Left = 10000
      Top = 9113
      Lines.Strings = (
        '{'
        '  "HasError": false,'
        '  "ErrorCode": 0,'
        '  "ErrorMessage": "",'
        '  "ID_User": 1,'
        '  "User": "pcm",'
        '  "Password": "ec5c8103218f27aa6ecfd3f11e1a6b45",'
        '  "Login": ['
        '    {'
        '      "Allowed": true,'
        '      "ID_User": 1'
        '    }'
        '  ]'
        '}')
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Visible = False
      Height = 202
      Width = 1046
    end
    object mem_SetDeviceID_Example: TcxMemo
      Left = 10000
      Top = 9113
      Lines.Strings = (
        '{'
        '  "Device": ['
        '    {'
        '      "DeviceToken": "AbCdEfGhIjKlMnOpQrStUvWxY",'
        '      "DeviceID": "E56HGPERV4E1",'
        '      "DeviceType": 0,'
        '      "ID_Benutzer": 1'
        '    }'
        '  ]'
        '}')
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Visible = False
      Height = 149
      Width = 1046
    end
    object btn_SetDeviceID: TcxButton
      Left = 10000
      Top = 9113
      Width = 1101
      Height = 25
      Caption = 'Rest - Execute'
      TabOrder = 6
      Visible = False
      OnClick = btn_SetDeviceIDClick
    end
    object edt_GetContacts_Parameter: TcxTextEdit
      Left = 10000
      Top = 9220
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Text = '2'
      Visible = False
      Width = 1046
    end
    object btn_GetContacts: TcxButton
      Left = 10000
      Top = 9220
      Width = 1101
      Height = 25
      Caption = 'Rest - Execute'
      TabOrder = 9
      Visible = False
      OnClick = btn_GetContactsClick
    end
    object btn_GetContactsSQL: TcxButton
      Left = 10000
      Top = 9220
      Width = 1101
      Height = 25
      Caption = 'SQL - Execute'
      TabOrder = 10
      Visible = False
      OnClick = btn_GetContactsSQLClick
    end
    object mem_GetContacts_Example: TcxMemo
      Left = 10000
      Top = 9220
      Lines.Strings = (
        '{'
        '  "HasError": false,'
        '  "ErrorCode": 0,'
        '  "ErrorMessage": "",'
        '  "Contacts": ['
        '    {'
        '      "ID": 1,'
        '      "Salutation": "Herr",'
        '      "Name": "Max",'
        '      "Surname": "Mustermann",'
        '      "Street_private": "Musterstra'#223'e 1",'
        '      "Postalcode_private": "12345",'
        '      "Place_private": "Musterstadt",'
        '      "Phone_private": "01234/56789",'
        '      "Mobile_private": "01234/78901",'
        '      "Mail_private": "max.mustermann@muster.de",'
        '      "Web_private": "https://maxmustermann.de",'
        '      "Birthday": "01.01.1980",'
        '      "Gender": "m'#228'nnlich",'
        '      "Maritalstatus": "ledig",'
        '      "Nationality": "deutsch",'
        '      "Denomination": "Evangelisch",'
        '      "Company": "Musterfirma",'
        '      "Street_business": "Musterweg 1",'
        '      "Postalcode_business": "23456",'
        '      "Place_business": "Musterhausen",'
        '      "Phone_business": "09876/543210",'
        '      "Mobile_business": "09876/43210",'
        '      "Mail_business": "max.mustermann@musterfirma.com",'
        '      "Web_business": " https://musterfirma.de"'
        '    }'
        '  ]'
        '}')
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Visible = False
      Height = 160
      Width = 1046
    end
    object lagrp_Rest: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 600
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_PCMAPPCheckLogin: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 0
      CaptionOptions.Text = 'GetLogin: Userdaten ermitteln anhand Basic Auth'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Width = 1200
      AllowRemove = False
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemIndex = 10
      Index = 1
    end
    object lbl_CheckServer_Parameter: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = '[FONT=Consolas][B]Parameter[/B][/FONT]'
      Index = 0
    end
    object sepitm_CheckServer_Parameter: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object lbl_CheckServer_ParameterDesc: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = '[FONT=Consolas]Keine Parameter[/Font]'
      Index = 2
    end
    object lbl_CheckServer_Responses: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = '[FONT=Consolas][B]Responses[/B][/Font]'
      Index = 4
    end
    object sepitm_CheckServer_Response: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
    object lbl_CheckServer_Code200: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = 
        '[FONT=Consolas][B]200     Ok(ErrorCode beachten)[/B]'#13#10'          ' +
        '       '#13#10'        - 0: keine Fehler vorhanden'#13#10'        - 1: ung'#252'l' +
        'tige REST-API-Funktion'#13#10'        - 2: Benutzer nicht gefunden ode' +
        'r falsches Passwort'#13#10'        - 3: Keine Verbindung zur Datenbank' +
        #13#10'        - 4: Benutzer nicht berechtigt[/Font]'
      Index = 6
    end
    object lbl_CheckServer_Code400_500: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = 
        '[FONT=Consolas][B]400     ung'#252'ltiger oder fehlender Parameter'#13#10#13 +
        #10'401     nicht berechtigt'#13#10#13#10'403     verboten'#13#10#13#10'500     interne' +
        'r Serverfehler[/B][/FONT]'
      Index = 9
    end
    object lbl_CheckServer_ExampleHeader: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = '[FONT=Consolas][B]        Beispiel:[/B][/Font]'
      Index = 7
    end
    object lbl_GetLogin_ExampleHeader: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = '[FONT=Consolas][B]        Beispiel:[/B][/FONT]'
      Index = 7
    end
    object lbl_SetDeviceID_ParameterDesc: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = '[FONT=Consolas]Keine Parameter[/FONT]'
      Index = 2
    end
    object lbl_GetContacts_Parameter: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = '[FONT=Consolas][B]Parameter[/B][/FONT]'
      Index = 0
    end
    object itm_CheckServer_Execute: TdxLayoutItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Checkserver
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object sepitm_CheckServer_ParameterResponse: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object itm_CheckServer_Example: TdxLayoutItem
      Parent = lagrp_PCMAPP_Checkserver
      CaptionOptions.Text = '[FONT=Consolas]       [/FONT]'
      Control = mem_CheckServer_Example
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object lagrp_PCMAPPGetContacts: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetContacts: Kontakte ermitteln anhand Basic Auth'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemIndex = 5
      Index = 3
    end
    object lagrp_PCMAPPSetContacts: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetContacts: Kontakte f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 4
    end
    object lagrp_PCMAPPSetDeviceID: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetDeviceID: Token und DeviceID an Server schicken'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemIndex = 10
      Index = 2
    end
    object lagrp_PCMAPP_Checkserver: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 0
      CaptionOptions.Text = 'CheckServer: Serververbindung pr'#252'fen'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemIndex = 10
      Index = 0
    end
    object lagrp_PCMAPPGetCalendar: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetCalendar: Kalender ermitteln anhand Basic Auth'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 5
    end
    object lagrp_PCMAPPSetCalendar: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetCalendar: Kalender f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 6
    end
    object lagrp_PCMAPPGetPasswords: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetPasswords: Passw'#246'rter ermitteln anhand Basic Auth'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 7
    end
    object lagrp_PCMAPPSetPasswords: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetPasswords: Passw'#246'rter f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 8
    end
    object lagrp_PCMAPPGetSerials: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetSerials: Serials ermitteln anhand Basic Auth'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 9
    end
    object lagrp_PCMAPPSetSerials: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetSerials: Serials f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 10
    end
    object lagrp_PCMAPPGetReceipts: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetReceipts: Einnahmen ermitteln anhand Basic Auth'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 11
    end
    object lagrp_PCMAPPSetReceipts: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetReceipts: Einnahmen f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      ButtonOptions.ShowExpandButton = True
      Index = 12
    end
    object lagrp_PCMAPPGetExpenditure: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetExpenditure: Ausgaben ermitteln anhand Basic Auth'
      ButtonOptions.ShowExpandButton = True
      Index = 13
    end
    object lbl_GetLogin_Parameter: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = '[FONT=Consolas][B]Parameter[/B][/FONT]'
      Index = 0
    end
    object lbl_GetLogin_Code400_500: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = 
        '[FONT=Consolas][B]400     ung'#252'ltiger oder fehlender Parameter'#13#10#13 +
        #10'401     nicht berechtigt'#13#10#13#10'403     verboten'#13#10#13#10'500     interne' +
        'r Serverfehler[/B][/FONT]'
      Index = 9
    end
    object lbl_GetLogin_ParameterDesc: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = '[FONT=Consolas]Keine Parameter[/FONT]'
      Index = 2
    end
    object lbl_GetLogin_Responses: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = '[FONT=Consolas][B]Responses[/B][/FONT]'
      Index = 4
    end
    object lbl_GetLogin_Code200: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = 
        '[FONT=Consolas][B]200     Ok(ErrorCode beachten)[/B]'#13#10'          ' +
        '       '#13#10'        - 0: keine Fehler vorhanden'#13#10'        - 1: ung'#252'l' +
        'tige REST-API-Funktion'#13#10'        - 2: Benutzer nicht gefunden ode' +
        'r falsches Passwort'#13#10'        - 3: Keine Verbindung zur Datenbank' +
        #13#10'        - 4: Benutzer nicht berechtigt[/FONT]'
      Index = 6
    end
    object lbl_SetDeviceID_Parameter: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = '[FONT=Consolas][B]Parameter[/B][/FONT]'
      Index = 0
    end
    object lbl_SetDeviceID_Responses: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = '[FONT=Consolas][B]Responses[/B][/FONT]'
      Index = 4
    end
    object lbl_SetDeviceID_Code200: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = 
        '[FONT=Consolas][B]200     Ok(ErrorCode beachten)[/B]'#13#10'          ' +
        '       '#13#10'        - 0: keine Fehler vorhanden'#13#10'        - 1: ung'#252'l' +
        'tige REST-API-Funktion'#13#10'        - 2: Benutzer nicht gefunden ode' +
        'r falsches Passwort'#13#10'        - 3: Keine Verbindung zur Datenbank' +
        #13#10'        - 4: Benutzer nicht berechtigt[/FONT]'
      Index = 6
    end
    object lbl_SetDeviceID_Code400_500: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPSetDeviceID
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 
        '[FONT=Consolas][B]400     ung'#252'ltiger oder fehlender Parameter'#13#10#13 +
        #10'401     nicht berechtigt'#13#10#13#10'403     verboten'#13#10#13#10'500     interne' +
        'r Serverfehler[/B][/FONT]'
      Index = 9
    end
    object lbl_GetContacts_ParameterDesc: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = '[FONT=Consolas][B]Name    Description[/B][/FONT]'
      Index = 2
    end
    object lbl_GetContacts_Params: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = '[FONT=Consolas][B]ID_User Description[/B][/FONT]'
      Index = 4
    end
    object lbl_GetContacts_Code200: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 
        '[FONT=Consolas][B]200     Ok(ErrorCode beachten)[/B]'#13#10'          ' +
        '       '#13#10'        - 0: keine Fehler vorhanden'#13#10'        - 1: ung'#252'l' +
        'tige REST-API-Funktion'#13#10'        - 2: Benutzer nicht gefunden ode' +
        'r falsches Passwort'#13#10'        - 3: Keine Verbindung zur Datenbank' +
        #13#10'        - 4: Benutzer nicht berechtigt'#13#10'[/FONT]'
      Index = 9
    end
    object lbl_GetContacts_Responses: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = '[FONT=Consolas][B]Responses[/B][/FONT]'
      Index = 7
    end
    object lbl_GetContacts_ExampleHeader: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = '[FONT=Consolas][B]        Beispiel:[/B][/FONT]'
      Index = 10
    end
    object lbl_SetDeviceID_ExampleHeader: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = '[FONT=Consolas][B]        Beispiel:[/B][/FONT]'
      Index = 7
    end
    object sepitm_GetLogin_Parameter: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object sepitm_GetLogin_Response: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object sepitm_GetLogin_ParameterResponse: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object sepitm_GetContacts_Response: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 'Separator'
      Index = 8
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = stbr_Rest
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 1194
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_GetContcts_ExecuteDB: TdxLayoutItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_GetContactsSQL
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 1125
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object itm_GetContacts_Example: TdxLayoutItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = '[FONT=Consolas]       [/FONT]'
      Control = mem_GetContacts_Example
      ControlOptions.OriginalHeight = 160
      ControlOptions.OriginalWidth = 1070
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object itm_GetContacts_Params: TdxLayoutItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = '[FONT=Consolas][/FONT]integer'
      Control = edt_GetContacts_Parameter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_SetDeviceID_Execute: TdxLayoutItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_SetDeviceID
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 1145
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object itm_SetDeviceID_Example: TdxLayoutItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = '[FONT=Consolas]       [/FONT]'
      Control = mem_SetDeviceID_Example
      ControlOptions.OriginalHeight = 149
      ControlOptions.OriginalWidth = 1145
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object itm_Getlogin_Execute: TdxLayoutItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_CheckLogin
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 1145
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object itm_GetLogin_Example: TdxLayoutItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = '[FONT=Consolas]       [/FONT]'
      Control = mem_GetLogin_Example
      ControlOptions.OriginalHeight = 202
      ControlOptions.OriginalWidth = 1077
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object itm_Getlogin_ExecuteDB: TdxLayoutItem
      Parent = lagrp_PCMAPPCheckLogin
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_CheckLoginSQL
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 1145
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object lagrp_PCMAPPSetExpenditure: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetExpenditure: Ausgaben f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      Index = 14
    end
    object itm_GetContcts_Execute: TdxLayoutItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_GetContacts
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 1125
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object sepitm_SetDeviceID_Parameter: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object sepitm_SetDeviceID_ParameterResponse: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object sepitm_SetDeviceID_Response: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPSetDeviceID
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
    object sepitm_GetContacts_Params: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 'Separator'
      Index = 6
    end
    object sepitm_GetContacts_ParameterResponse: TdxLayoutSeparatorItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object lbl_GetContacts_Code400_500: TdxLayoutLabeledItem
      Parent = lagrp_PCMAPPGetContacts
      CaptionOptions.Text = 
        '[FONT=Consolas][B]400     ung'#252'ltiger oder fehlender Parameter'#13#10#13 +
        #10'401     nicht berechtigt'#13#10#13#10'403     verboten'#13#10#13#10'500     interne' +
        'r Serverfehler[/B][/FONT]'
      Index = 12
    end
    object lagrp_PCMAPPGetVouchers: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetVouchers: Belege ermitteln anhand Basic Auth'
      Index = 15
    end
    object lagrp_PCMAPPSetVouchers: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetVouchers: Belege f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      Index = 16
    end
    object lagrp_PCMAPPGetGiftCards: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'GetGiftCards: Gutscheine ermitteln anhand Basic Auth'
      Index = 17
    end
    object lagrp_PCMAPPSetGiftCards: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'SetGiftCards: Gutscheine f'#252'r Benutzer anlegen / '#228'ndern / l'#246'schen'
      Index = 18
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahCenter
      AlignVert = avClient
      CaptionOptions.Text = 'APP REST-API: PCM - Time'
      Index = 1
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = lagrp_Rest
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahCenter
      AlignVert = avClient
      CaptionOptions.Text = 'APP REST-API: PCM - APP'
      ItemIndex = 3
      Index = 0
    end
  end
  object grpbx_Responsepanel: TdxLayoutControl
    Left = 152
    Top = 96
    Width = 644
    Height = 453
    TabOrder = 1
    Visible = False
    AutoSize = True
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    OnMouseLeave = grpbx_ResponsepanelMouseLeave
    object rchedt_RequestURL: TcxRichEdit
      AlignWithMargins = True
      Left = 14
      Top = 59
      ParentFont = False
      Lines.Strings = (
        'cxRichEdit2')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 20
      Width = 986
    end
    object rchedt_ResponseHeaders: TcxRichEdit
      AlignWithMargins = True
      Left = 62
      Top = 681
      Margins.Left = 54
      ParentFont = False
      Lines.Strings = (
        'access-control-allow-headers: '
        
          'append,delete,entries,foreach,get,has,keys,set,values,Authorizat' +
          'ion '
        ' access-control-allow-methods: POST,GET,OPTIONS,DELETE,PUT '
        ' access-control-allow-origin: * '
        ' access-control-expose-headers: * '
        ' connection: close '
        ' content-length: 310486 '
        ' content-type: application/json; charset=utf-8 '
        ' date: Fri,24 Jan 2025 10:57:56 GMT '
        
          ' pragma: dssession=674681.563051.308762,dssessionexpires=1200000' +
          ' ')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 135
      Width = 938
    end
    object rchedt_ResponseBody: TcxRichEdit
      AlignWithMargins = True
      Left = 62
      Top = 152
      Margins.Left = 54
      ParentFont = False
      Lines.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '23'
        '2'
        '22'
        '2'
        '2'
        '3'
        '2'
        '3'
        '23'
        '23'
        '23'
        '23'
        '2'
        '32'
        '32'
        '32'
        '323'
        '23'
        '213'
        '232323'
        '2'
        '32'
        '3'
        '23'
        '23'
        '2'
        '32'
        '32'
        '3'
        '2323'
        '23'
        '2'
        '32'
        '3'
        '23'
        '23'
        '23'
        '2'
        '32'
        '323'
        '32'
        '32'
        '3'
        '99999')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 500
      Width = 938
    end
    object grpbx_ResponsepanelGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = grpbx_ResponsepanelGroup_Root
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Response'
      ItemIndex = 1
      Index = 0
      Buttons = <
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2243
            6C656172486561646572416E64466F6F7465722220786D6C6E733D2268747470
            3A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C
            696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E
            6B2220783D223070782220793D22307078222076696577426F783D2230203020
            333220333222207374796C653D22656E61626C652D6261636B67726F756E643A
            6E6577203020302033322033323B2220786D6C3A73706163653D227072657365
            727665223E262331333B262331303B3C7374796C6520747970653D2274657874
            2F637373223E2E5265647B66696C6C3A234431314331433B7D3C2F7374796C65
            3E0D0A3C7061746820636C6173733D225265642220643D224D32372C34483543
            342E352C342C342C342E352C342C3576323263302C302E352C302E352C312C31
            2C3168323263302E352C302C312D302E352C312D3156354332382C342E352C32
            372E352C342C32372C347A204D32322C32306C2D322C326C2D342D346C2D342C
            3420202623393B6C2D322D326C342D346C2D342D346C322D326C342C346C342D
            346C322C326C2D342C344C32322C32307A222F3E0D0A3C2F7376673E0D0A}
          Height = 32
          Width = 32
          OnClick = dxLayoutGroup2Button0Click
        end>
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = rchedt_RequestURL
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 986
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '[FONT=Consolas]Request URL[/FONT]'
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '[FONT=Consolas]      [/FONT]'
      Control = rchedt_ResponseBody
      ControlOptions.OriginalHeight = 500
      ControlOptions.OriginalWidth = 935
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '[FONT=Consolas]Server response[/FONT]'
      Index = 2
    end
    object dxLayoutLabeledItem3: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '[FONT=Consolas][B]Code   Details[/B][/FONT]'
      Index = 3
    end
    object dxLayoutLabeledItem4: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '[FONT=Consolas]200    Response body[/FONT]'
      Index = 4
    end
    object dxLayoutLabeledItem5: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '[FONT=Consolas]       Response headers[/FONT]'
      Index = 6
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '[FONT=Consolas]      [/FONT]'
      Control = rchedt_ResponseHeaders
      ControlOptions.OriginalHeight = 135
      ControlOptions.OriginalWidth = 935
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  object imglst_32x32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 1573623
    ImageInfo = <
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000004000000070000
          0004000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000007000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000800000018000000220000
          0016000000070000000100000000000000000000000000000000000000000000
          00000000000000000000000000010000000600000015000000230000001B0000
          000A000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000080000001E1009015B2617049C0804
          00520000001E0000000800000001000000000000000000000000000000000000
          0000000000000000000100000006000000190A05004D281603A30F0801670000
          00280000000B0000000200000000000000000000000000000000000000000000
          00000000000000000001000000080000001E130C0264513108F575480CFF3F27
          07E00704005A0000001E00000008000000010000000000000000000000000000
          000000000001000000060000001A0B060050422705E8714408FF4A2A04F51009
          0071000000290000000B00000002000000000000000000000000000000000000
          000000000001000000080000001E140C0264503009F5A0681DFFF3A84BFF8653
          11FF3F2707E00704015A0000001E000000080000000100000000000000000000
          0001000000060000001A0B060150422805E8865310FFF8AD4EFF996219FF492A
          05F510090071000000290000000B000000020000000000000000000000000000
          00000000000400000019140C0264523208F5A1681DFFF7B158FFFDBE6FFFECA6
          4AFF8A5613FF402807E00705015A0000001E0000000800000001000000010000
          00060000001A0B060150452905E8895511FFF3AC52FFFDBF70FFF6AC50FF9961
          19FF4A2C06F5110A007100000024000000070000000100000000000000000000
          000000000007140C025256360CF5A46A1FFFEFA84BFFF0AC54FFF3B361FFF8B9
          69FFEBA549FF8C5814FF442808E00805015A0000001E00000008000000080000
          001A0C070150482B06E88A5713FFECA74EFFF9BA6BFFF2B15EFFEFAB54FFEFA5
          46FF9A611AFF4D2F07F5100A0164000000140000000100000000000000000000
          000000000003362007A2865312FFEAAC5DFFE7AA59FFE5A147FFE9A54EFFEEAD
          5BFFF3B463FFE7A146FF8C5915FF442908E00805015A000000220000001E0C07
          0150492C07E88D5813FFE8A349FFF4B564FFECAB5AFFE8A44DFFE49F44FFE29C
          3FFFE29A3DFF79490DFF2C1B03A50000001C0000000000000000000000000000
          0000000000010E08012D4F330BE799631CFFE2A95EFFE3A657FFE09D44FFE3A1
          4AFFE8A855FFEEAF5EFFE29D44FF8E5915FF452B0AE00805015D0A0701584A2E
          0AE88E5915FFE2A046FFEDB05FFFE8A854FFE3A049FFDF9A41FFDC973BFFD994
          38FF8C5713FF472A06E70A070144000000070000000000000000000000000000
          000000000000000000010F0A022E4F320BE79A651CFFDDA55CFFDEA255FFDB98
          41FFDE9A45FFE3A24FFFE8A959FFDD9940FF8E5A15FF452A09E0492D0AE8915B
          15FFDE9A42FFE9AA5AFFE3A24FFFDD9A44FFDA953DFFD79237FFD48F34FF8D59
          15FF482B08E70B06014600000007000000000000000000000000000000000000
          00000000000000000000000000010F0A022E50330BE797621BFFDAA25AFFDA9F
          53FFD6933CFFD9943EFFDE9A46FFE1A351FFD8933BFF8C5A16FF8F5B16FFD892
          3BFFE3A351FFDC9A46FFD9943EFFD58F37FFD28D33FFD08A31FF8F5B16FF4A2C
          08E70C0701460000000700000000000000000000000000000000000000000000
          0000000000000000000000000000000000010F0A022E52340CE798621BFFD6A0
          59FFD69C52FFD18F39FFD39039FFD89640FFDD9C49FFCF8C37FFCE8C37FFDC9C
          49FFD79640FFD38F39FFCF8C34FFCD8932FFC9862EFF905C17FF4C2F0AE70C07
          0146000000070000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010F0A022E54340CE79864
          1BFFD29E58FFD2984FFFCC8834FFCE8A33FFD38E39FFD79440FFD79440FFD38E
          39FFCE8A33FFCA8630FFC8822CFFC5832CFF925D17FF4C300BE70C0701460000
          0007000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000011009022F5535
          0DE79A641CFFCC9855FFCC934EFFC4802AFFC8832FFFCD8833FFCD8833FFC883
          2FFFC47F2BFFC17D29FFBE7F29FF955F18FF4E320CE70D070246000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000070E08
          023F55360EE899621BFFC08B47FFB87725FFBC7827FFC07A2AFFC07B2AFFBC78
          27FFB87726FFB57826FF945F19FF4F320DE80C07025400000010000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000060000001A0D08
          025056370FE898621BFFAC7023FFAD7124FFB07124FFB57124FFB57124FFB071
          24FFAC7124FFAB7123FF935E19FF52330EE80B07026000000021000000090000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000060000001A0E090250593A
          0FE89D651CFFB07329FFAA6E24FFA46B22FFA36B22FFA56B22FFA56B22FFA36B
          22FFA36B22FFA96D23FFAC7026FF966019FF53360FE80C070260000000210000
          0009000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000060000001A0E0903505D3B10E89E66
          1DFFB07632FFAD742EFFA46B25FF9E6620FF9A661FFF9A661FFF9A661FFF9A66
          1FFF9E6620FFA46B25FFAF7630FFA9702BFF97611AFF56370FE80C0702600000
          0021000000090000000100000000000000000000000000000000000000000000
          00000000000000000001000000060000001A0E0A03505F3E11E8A0671EFFAA73
          32FFAE7737FFA56E2BFF9C6524FF97611EFF92601DFF93601DFFA07337FF9E71
          37FF9A6421FF9E6726FFA8712EFFB17A3BFFA36B28FF97621AFF56380FE80C08
          0260000000210000000900000001000000000000000000000000000000000000
          00000000000100000006000000190F0A0350603E11E8A0681EFFA36F30FFA673
          35FF9D692AFF976327FF935E20FF8E5B1BFF8D5C1BFF9B651CFF98631EFFA47E
          4CFFA1743FFF986428FF986427FF9F6B2CFFA77538FF9B6829FF97611AFF5739
          0FE80C0802600000002100000008000000010000000000000000000000000000
          00000000000300000016100A034F624214E8A36A1FFF9B6A2FFF9D6E33FF9563
          29FF8F5E24FF8B591EFF87561AFF865619FF9F681FFF5B3C11E7553711E09A64
          1DFFA27E50FF9E7645FF93642BFF915E25FF96652AFFA07136FF936328FF9661
          1AFF583A0FE80D0802600000001E000000060000000000000000000000000000
          000000000007100B0341634214E8A56C21FF95662DFF95662EFF8E5F26FF895A
          21FF85561EFF80511AFF7E4F17FFA16A20FF5F3F12E70E0903460C0802285A3A
          11DE9A641EFFA07E55FF9B774AFF906432FF8B5B24FF906028FF996B34FF8E5F
          28FF97621AFF5B3B11E80D090255000000110000000100000000000000000000
          000000000004432C0FA1A97021FF976F40FFA27D51FF946B3BFF8D6434FF8860
          30FF835B2BFF7E5523FFA26B21FF613F14E70F0A034600000007000000010D09
          02235B3B11DE9B651EFFA08059FF997851FF8C6537FF845924FF895C27FF9366
          31FF835822FF9C661DFF3A260AA80000001C0000000100000000000000000000
          0000000000011C120543754F19F5A46C24FF8D6E4AFF96754EFF906E46FF8966
          40FF815E32FFA46C20FF634215E7100A03460000000700000000000000000000
          00000D0902235C3B11DE9F671FFF9E815FFF987A58FF8A663CFF7E5425FF7249
          18FF9A641DFF6E4714F5180E04570000000B0000000000000000000000000000
          000000000000000000011F14064977501AF5A46E25FF886F4FFF8E7555FF8467
          43FFA56D22FF664416E7100A0346000000070000000000000000000000000000
          0000000000000E0902235E3D12DEA06820FF9D8363FF967E5FFF7B5E39FF9A64
          1DFF704A14F51A11055C0000000C000000000000000000000000000000000000
          00000000000000000000000000012015064978511BF5A56F27FF816948FFA76E
          23FF674417E7100A034600000007000000000000000000000000000000000000
          000000000000000000000E0902235F3D13DEA16A20FF927B5CFF9D6924FF724B
          16F51B11055C0000000C00000000000000000000000000000000000000000000
          000000000000000000000000000000000001201506497A521BF5AE7325FF6A47
          18E7110B03450000000700000000000000000000000000000000000000000000
          00000000000000000000000000000E090223603F13DEA26A20FF744D17F51B11
          055C0000000C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000011D14073F462E0F9B110B
          0339000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F0902213D270D8F191105490000
          000A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00030000000C0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000D000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000C000000310000003D0000003D0000003D0000003D0000003D0000003D0000
          003D0000003D0000003D0000003D0000003D0000003D0000003D0000003D0000
          003D0000003D0000003D0000003D0000003D0000003D00000032000000120000
          0002000000000000000000000000000000000000000000000000000000000000
          000F817A70FF817A70FF80796FFF7E786FFF7E776FFF7D766EFF7C766EFF7C75
          6DFF7B756DFF7A746CFF7A736CFF79736CFF77726BFF77716BFF76716AFF7670
          6AFF767069FF746F69FF746F68FF736D68FF726D68FF726C67FF000000350000
          0002000000000000000000000000000000000000000000000000000000000000
          000F817A71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C76
          6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77726BFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF726D68FF000000360000
          0003000000000000000000000000000000000000000000000000000000000000
          000F827B71FFFFFFFFFFFBF5EEFFFBF6F0FFFBF5F0FFFBF6EFFFFFFFFFFF7D76
          6EFFFFFFFFFFFBF6F0FFFBF7F2FFFBF7F3FFFCF8F4FFFFFFFFFF78726BFFFFFF
          FFFFFCF9F5FFFCF9F6FFFCFAF7FFFDFAF8FFFFFFFFFF736D68FF000000360000
          0003000000000000000000000000000000000000000000000000000000000000
          000F847C72FFFFFFFFFFFBF4EEFFFBF5EEFFFBF5EFFFFBF6F0FFFFFFFFFF7E77
          6FFFFFFFFFFFFBF6F1FFFBF6F1FFFBF6F2FFFBF7F3FFFFFFFFFF7A736CFFFFFF
          FFFFFCF8F4FFFCF8F5FFFCF9F5FFFCF9F6FFFFFFFFFF746F68FF000000370000
          0003000000000000000000000000000000000000000000000000000000000000
          000F847D73FFFFFFFFFFFBF4EEFFFBF4EEFFFBF5EEFFFBF5EFFFFFFFFFFF7F78
          6FFFFFFFFFFFFCF6F1FFFBF6F1FFFBF6F1FFFBF7F2FFFFFFFFFF7A746CFFFFFF
          FFFFFCF8F3FFFCF8F4FFFCF8F5FFFCF9F6FFFFFFFFFF756F69FF0000003E0000
          00120000000F0000000F0000000F0000000D0000000400000000000000000000
          000F857E73FFFFFFFFFFFAF3ECFFFBF4EEFFFBF4EEFFFBF5EEFFFFFFFFFF817A
          70FFFFFFFFFFFAF5EEFFFBF5F0FFFBF5F0FFFBF6F0FFFFFFFFFF7B756DFFFFFF
          FFFFFBF7F2FFFCF7F3FFFCF8F4FFFCF8F3FFFFFFFFFF76706AFF000000560000
          003E0000003D0000003D0000003D000000320000001200000002000000000000
          000F867E73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF817A
          70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C766DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76716AFF605B56FF6964
          5FFF746F68FF736D68FF726D68FF726C67FF0000003500000002000000000000
          000F877F74FF867E73FF857E73FF847D73FF847D72FF837B72FF827B71FF817A
          71FF817A70FF817A70FF80796FFF7F786FFF7D776FFF7D766EFF7D766EFF7C76
          6DFF7B756DFF7A746CFF7A736CFF79736CFF78726BFF77726BFFBBBBBBFFE6E6
          E6FFFFFFFFFFFFFFFFFFFFFFFFFF726D68FF0000003600000003000000000000
          000F887F74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF827B
          71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D766EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78726BFFB9B7B3FFE3E1
          DEFFFCFAF7FFFDFAF8FFFFFFFFFF736D68FF0000003600000003000000000000
          000F888075FFFFFFFFFFFAF2EBFFFAF3EDFFFAF4EDFFFAF3EDFFFFFFFFFF837C
          72FFFFFFFFFFFAF2ECFFFAF4EFFFFAF4EEFFFAF5EEFFFFFFFFFF7D776FFFFFFF
          FFFFFCF7F0FFFCF7F2FFFCF7F3FFFCF8F4FFFFFFFFFF79736CFFB9B6B3FFE3E0
          DDFFFCF9F5FFFCF9F6FFFFFFFFFF746F68FF0000003600000003000000000000
          000F8B8176FFFFFFFFFFFAF3ECFFFAF3ECFFFAF3EDFFF9F3EDFFFFFFFFFF847D
          73FFFFFFFFFFFAF4EDFFFAF3EDFFFAF3EDFFFAF4EEFFFFFFFFFF7F786FFFFFFF
          FFFFFBF6F1FFFCF6F1FFFCF7F1FFFCF7F2FFFFFFFFFF7A746CFFB9B6B3FFE3E0
          DCFFFCF8F5FFFCF9F6FFFFFFFFFF756F69FF0000003600000003000000000000
          000F8C8276FFFFFFFFFFFAF3ECFFFAF3ECFFFAF4ECFFF9F3ECFFFFFFFFFF857D
          73FFFFFFFFFFFAF4EDFFFAF3ECFFFAF3ECFFFAF4EDFFFFFFFFFF80796FFFFFFF
          FFFFFBF5F0FFFCF6F1FFFCF6F1FFFCF7F2FFFFFFFFFF7A746CFFB8B5B2FFE3DF
          DBFFFCF8F4FFFCF8F3FFFFFFFFFF76706AFF0000003600000003000000000000
          000F8F8478FFFFFFFFFFFAF2E9FFFAF3ECFFFAF3ECFFF9F0E6FFFFFFFFFF867E
          73FFFFFFFFFFFAF4ECFFF9F2E9FFF9F2EBFFFAF2ECFFFFFFFFFF817A70FFFFFF
          FFFFFBF6EEFFFBF6F0FFFBF6F1FFFCF6F1FFFFFFFFFF7C766DFFBBBBBBFFE6E6
          E6FFFFFFFFFFFFFFFFFFFFFFFFFF76716AFF0000003600000003000000000000
          000F8F8579FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF877F
          74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF827A71FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D766EFF5A574FFF6E69
          61FF7A736CFF79736CFF78726BFF77726BFF0000003600000003000000000000
          000F90867AFF8F8579FF8F8478FF8C8376FF8C8276FF8A8175FF888075FF887F
          74FF877F74FF877F74FF857D73FF847D73FF847C72FF837C72FF827B71FF827A
          71FF817A70FF807970FF80796FFF7E776FFF7D776FFF7D766EFFBBBBBBFFE6E6
          E6FFFFFFFFFFFFFFFFFFFFFFFFFF78726BFF0000003600000003000000000000
          000F92887AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8880
          75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF837C72FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E776FFFB9B5B0FFE3DF
          DAFFFCF7F3FFFCF8F4FFFFFFFFFF79736CFF0000003600000003000000000000
          000F93887BFFFFFFFFFFFAF1E9FFFAF2EBFFF9F1E9FFF8EEE4FFFFFFFFFF8A81
          75FFFFFFFFFFFAF1EAFFF9F1E9FFF9F1E8FFF9F3EBFFFFFFFFFF847D72FFFFFF
          FFFFFBF5EEFFFBF5EFFFFBF5F0FFFBF6EFFFFFFFFFFF7E786FFFB8B4B1FFE3DE
          D9FFFCF7F1FFFCF7F2FFFFFFFFFF7A746CFF0000003600000003000000000000
          000F958A7CFFFFFFFFFFFAF3EAFFF9F1E8FFF8EEE4FFF8EFE5FFFFFFFFFF8C83
          76FFFFFFFFFFF8F1E7FFF8F0E7FFF9F0E8FFFAF2EBFFFFFFFFFF857D73FFFFFF
          FFFFFAF5EEFFFBF5EFFFFBF5EFFFFBF5F0FFFFFFFFFF80796FFFB8B3B0FFE3DE
          D9FFFCF6F1FFFCF7F2FFFFFFFFFF7A746CFF0000003600000003000000000000
          000F968C7DFFFFFFFFFFFAF3ECFFF8EFE5FFF8EEE4FFF8F0E8FFFFFFFFFF8D84
          77FFFFFFFFFFF8EFE5FFF8F0E7FFF8F0E7FFFAF2EBFFFFFFFFFF857E73FFFFFF
          FFFFFBF4EEFFFBF5EEFFFBF5EFFFFBF5EFFFFFFFFFFF817A70FFB8B4AFFFE2DE
          D8FFFBF6F1FFFCF6F1FFFFFFFFFF7C766DFF0000003600000003000000000000
          000F998D7EFFFFFFFFFFFBF4EBFFF8EEE3FFF8EEE3FFFAF2EAFFFFFFFFFF8F85
          79FFFFFFFFFFF8EDE3FFF8EFE6FFF8EFE5FFF9F2E9FFFFFFFFFF877F74FFFFFF
          FFFFFBF3EDFFFBF4EEFFFBF4EFFFFBF5EEFFFFFFFFFF827A71FFBBBBBBFFE6E6
          E6FFFFFFFFFFFFFFFFFFFFFFFFFF7D766EFF0000003600000003000000000000
          000C9A8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9187
          7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF887F74FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF827B71FF69635BFF736D
          65FF80796FFF7E776FFF7D776FFF7D766EFF0000003600000003000000000000
          00039B8F80FF9A8F7FFF998E7EFF978C7DFF968B7DFF94897BFF93887BFF9288
          7AFF91877AFF908679FF8E8478FF8D8377FF8B8176FF8A8175FF888075FF887F
          74FF877F74FF867E73FF857E73FF847D73FF847D72FF837C72FFE6E6E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E776FFF0000003600000003000000000000
          000000000000000000000000000000000000000000010000001093887BFFFFFF
          FFFFFAF1E9FFFAF2EBFFF9F1E9FFF8EEE4FFFFFFFFFF8A8175FFFFFFFFFFFAF1
          EAFFF9F1E9FFF9F1E8FFF9F3EBFFFFFFFFFF847D72FFFFFFFFFFFBF5EEFFFBF5
          EFFFFBF5F0FFFBF6EFFFFFFFFFFF7E786FFF0000003600000003000000000000
          000000000000000000000000000000000000000000000000000F958A7CFFFFFF
          FFFFFAF3EAFFF9F1E8FFF8EEE4FFF8EFE5FFFFFFFFFF8C8376FFFFFFFFFFF8F1
          E7FFF8F0E7FFF9F0E8FFFAF2EBFFFFFFFFFF857D73FFFFFFFFFFFAF5EEFFFBF5
          EFFFFBF5EFFFFBF5F0FFFFFFFFFF80796FFF0000003600000003000000000000
          000000000000000000000000000000000000000000000000000F968C7DFFFFFF
          FFFFFAF3ECFFF8EFE5FFF8EEE4FFF8F0E8FFFFFFFFFF8D8477FFFFFFFFFFF8EF
          E5FFF8F0E7FFF8F0E7FFFAF2EBFFFFFFFFFF857E73FFFFFFFFFFFBF4EEFFFBF5
          EEFFFBF5EFFFFBF5EFFFFFFFFFFF817A70FF0000003600000003000000000000
          000000000000000000000000000000000000000000000000000F998D7EFFFFFF
          FFFFFBF4EBFFF8EEE3FFF8EEE3FFFAF2EAFFFFFFFFFF8F8579FFFFFFFFFFF8ED
          E3FFF8EFE6FFF8EFE5FFF9F2E9FFFFFFFFFF877F74FFFFFFFFFFFBF3EDFFFBF4
          EEFFFBF4EFFFFBF5EEFFFFFFFFFF827A71FF0000003600000002000000000000
          000000000000000000000000000000000000000000000000000C9A8E7FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91877AFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF887F74FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF827B71FF0000003300000002000000000000
          00000000000000000000000000000000000000000000000000039B8F80FF9A8F
          7FFF998E7EFF978C7DFF968B7DFF94897BFF93887BFF92887AFF91877AFF9086
          79FF8E8478FF8D8377FF8B8176FF8A8175FF888075FF887F74FF877F74FF867E
          73FF857E73FF847D73FF847D72FF837C72FF0000002800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0006000000140000000C00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004000000180000003B000000620000
          0084000000910000006F0000002A000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000300000015000000380000005F00000082181818A73B3B3BC45C5C5CDD8C8C
          8CF6616161FE131313D700000083000000380000000700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000012000000340000005C0000
          0080151515A5393939C4595959DD868686F6A6A6A6FFC4C4C4FFDDDDDEFFF2F2
          F2FF858585FF2A2A2AFF1E1E1EE903030395000000460000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000001000000031000000590000007E141414A4343434C2545454DB7B7B
          7BF49E9E9EFFBEBEBEFFD8D8D9FFC0BFBEFF9E9C9AFF74716FFF46413DFFF3F3
          F3FF838383FF343434FF3D3D3DFF292929F30A0A0AA600000056000000130000
          00000000000000000000000000000000000000000000000000000000001D0000
          0079131313A3313131C2525252DB797979F49A9A9AFFB5B5B6FFD2D1D2FFC6C5
          C5FFB0AFADFFBABABAFF524F4EFF42413EFF272726FF060402FF898887FFF0F1
          F1FF878785FF2F2F2FFF434243FF4A4A4AFF333333FA121212B9000000650000
          001D000000010000000000000000000000000000000000000000383736767C7C
          7CEA949494FFB0B0B0FFCCCDCDFFBCBBBBFF9C9C98FF7A7774FF534F4BFF4946
          43FF56524FFFB9B9B9FF070807FF3F3F40FF727171FFACACAAFFD6D5D3FFD9D9
          D7FFDBDBD9FF717372FF3F3F3EFF4C4C4CFF575757FF434343FE202020CB0000
          0075000000280000000200000000000000000000000000000000595654D3DEDE
          DEFF8B8A8AFF7E7C7BFF464442FF3D3A38FF565352FF242321FF434241FF7473
          73FF888888FFC7C6C5FFBEBDBAFFBDBBB9FFBAB9B7FFC4C3C1FFC8C7C4FFD3D4
          D0FFC4C5C3FF999F9DFF919899FF535454FF565555FF626262FF4F4F4FFF2727
          25DC0202028600000036000000050000000000000000000000005D5B58DAC6C6
          C6FF222323FF2D2C2CFF474748FF6F6F6EFF868685FFB4B3B1FFD4D0CBFFDAD5
          CEFFE9E3DAFFDFD9D0FFD9D3C9FFD4CDC5FFD3CEC6FFD8D3CCFFE1DDD8FFE7E5
          E0FFC9C3BCFF8A8883FF848A88FF8E9594FF686A68FF606060FF676766FF5354
          50FF2D2B2BEA05050597000000450000000A0000000000000000656361E2D4D5
          D4FFAAA9A8FFBFBFBEFFCED0CFFFC7C8C7FFCECCC5FFD8D1C5FFDCD5CBFFDCD5
          CDFFD8D2CAFFD4D0C8FFCBC6C1FFC3BDB4FFBEB7ACFFBEB4A7FFBAAE9DFFA497
          85FF908472FF918476FF857D75FF807E7AFF7E8280FF727472FF656464FF6361
          60FF575552FF333330F40C0B0AA90000005500000011000000006B6661E7BAB7
          B0FFC0BCB6FFC1C1C0FFC4C5C4FFBCBDBAFFC8C0B6FFCDC6BDFFD2CBC3FFCDC6
          BDFFBFB7ACFFADA397FF9F9486FF948A7CFF8E8375FF8D8476FF8E8376FF9689
          7BFF908577FF83796CFF796D60FF857E75FF6D6B68FF7C7F7CFF7A7C78FF6463
          60FF5E5C58FF595751FF383731FB141210BB00000063000000107A7470EBBBB6
          B1FEBFBDB9FEC5C6C5FFBFC1BEFFB2AFA7FFC0B3A4FFC5B9A7FFB4A58FFFA797
          83FF988A77FF837666FF655C51FF645D54FF776D62FF887D70FF968C7EFFA399
          8AFFA79C8CFFAB9F8EFF998D7DFF827667FF827A6EFF727370FF7D7E7AFF9294
          8CFF6A6863FF5B5852FF59564DFF3D3A33FF1C1A17CA000000317F7B75F6BCB6
          AEFEC1B9ACFEBFB6A9FEC1B5A8FFB1A596FFC5B8A5FFAB9B83FFAA9A82FFA898
          7FFFA4947BFF918471FF948D84FF918E89FF807C77FF85817CFF9D9892FFC7BE
          B3FFB9AE9FFFB5A997FFB5A896FF9E9482FF867B6BFF9D9384FF545250FF5E5E
          5DFF7B7A76FF706D65FF56534BFF565248FF474036FE1D1A168D44413E76837E
          79F5ADA69DFEC2B9ABFEC0B8ADFFB8AFA5FFB8AB9AFFA2927DFFA0917CFF9E8D
          78FF9A8B75FFBAB5B0FFE3E1DDFFB1ACA6FFA19E9BFF8B8681FF959694FF827D
          78FFD6CCBFFFC2B5A4FFBFB29FFFBEAF9CFFA99D8AFF665F56FF8A8172FF726E
          67FF5E5F5FFF5C5B5AFF757064FF555047FF5B5446FF2B261ECA000000000F0F
          0D18504E4C8E838079F5A49D94FEC2BAAFFEBEB6ACFFADA292FF928472FF887B
          6AFF7D7160FF928A7EFFC5C1BCFFAEABA7FFC3C2C0FF9C9996FF9C9C9AFFA29A
          91FF9D9283FFA4998BFFB0A493FFC4B5A3FF989285FF6A665EFF8A867DFFA69D
          90FF988E84FF595959FF6E6C67FF8E8779FF655D4DFF39332BD6000000000000
          000000000000100E0E1A5755539688857DF9A69F96FEC6BFB5FEBFB8AFFFB6AF
          A5FFBAB4ACFFB3ADA7FFABA69EFFA7A29BFFB1AEA9FFB5B3AFFFD3D1CFFFD1CD
          C8FFCDC7BFFFC6C2B9FF9C9B92FF85827DFF7A7770FFABA69EFFBEB8B1FFB3AE
          A4FFBCB4A8FFB1A798FF7F7B76FFBAB2A8FFC5B8A5FF534E45E1000000000000
          0000000000000000000000000000131312205854519A8A867DF9ACA69DFEC8C1
          B9FFC6C0B9FFC7C2BBFFB3ADA7FF78746BFF635D52FF857A6CFFA99D8CFFBDB4
          A8FFC7C5C0FFCFCDCBFFD9D6D3FFB3B1ACFF8C8783FFA49F97FFC5BFB6FFBDB6
          ACFFB8B0A6FFB6AEA3FFB7AD9EFFDACFC1FFD7CBBAFF6C655AEE000000000000
          00000000000000000000000000000000000000000000161515245F5E5AA38F88
          82FBAEA79DFECCC5BDFECDC7C1FFD1CCC7FFCDC2B2FFC7B8A3FFBCAD97FFA998
          80FF8B8172FF797169FFABA59DFFB8B4B1FFC7C3BCFFD1CCC5FFC6C0B8FFC0B9
          AFFFB9B2A7FFC0B7A9FFD5C7B7FFD2C5B1FFD8CAB8FE756C61FA000000000000
          0000000000000000000000000000000000000000000000000000000000001817
          16295E5955A6918A85FBB6AFA6FED4CCC6FFC7C0B6FFA7987FFF988469FFA08C
          71FFA18F74FFB5A68FFFC7BCADFFD1CAC1FFB7AFA5FFD3CBBEFFC7BEB2FFBAAF
          A2FEB1A89BFEA89E90FE9A9287FE8D867FF16D6860CC45423E7F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001D1D1C2F65615FB0948E86FDBAB2AAFEDFD9D2FFCEC5B8FFB1A0
          89FFA69780FFA39583FFABA296FEA29A91FE968E86FB7C7670DB625E57B54D4A
          448E3937346824211F42100E0D1B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F1D1C3364605CB1948D87FC7D7770ED6964
          5EC95754509C433F3D762D2B2850171615290303030600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0D300EAF7C0AD3000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000839494441
          5478DACD57EB6F5B6719FF9D8B2FC7D75C1DC769DA94A65DDB95C1065F46E103
          1248637CDEFE02FA11503554A44A5C04126C82A1AA809090264DD52842484880
          104C63121265682C30A18EB28AA489B3C4717C897DECE373BFF03CEFB19D546B
          1AF80496DFBCB68F7D9EE77D7E97E709F03F7E480FFAF0E6CD9B33BA617C228C
          A40F45A17FDAF3B190D652A5643A33A5CA8A2249523A8A003F08ED300803DBB1
          3A9669ED220CB702595A4514FDBD67F76E7DFBEAD5E67F95C04B2FBDFCECC031
          3F3F3733F7B1CAC23179627A06B942115A260B8A0B0E1A8621ED122DDA25FA79
          14BFF77C1F86D147A7D341ABD940B55A0DFFB5BAFA06D4C4F51F3DFFB59F1F99
          C0CB376E7CB7542A3FF7E4C58F23954AC3745CF40736DD3C02C5A5382182200E
          CAC103FE3CA42B143C4008FA03C811C24886C43F5065580313AFBFFE7B346A5B
          D7BEFFC2D72F3F2801759C899CF8E2273FF56934DB5D740D8B4E1AA16F39E89B
          36020A2EF3A9E9CE5C85830F911E3F871744B2C3D7B22CE3A34F5EC46F7FF5CB
          2FD0DB8727B0D1D0D57AAB8B623A01C376E0043E14AA4F5E4BC2211238AE0F97
          769F21A025F661603E7140A1A5382AFD8EAA1204E27B7BED167ADDB67C1804E3
          046459C256538791D7F081F2243482C0A3809EE7C176684F078473BC98077E10
          D1F2B9F8F43E3EBBEB7A68D4EBA8AEDFC342A582279E781CBB5B9B8771FDFE04
          F84BCC295143C884A542B000994C125A3AC4EDB52DE2844995706979621F50A5
          2CCB86D1EBA1DB69416F3661E86DEC11099FFACCD3F0DC0B70899CF2E1F1F713
          F07DD7976445DDC731CE3B0C03961B3C2AE98038619826ED362C0A6EF3721C78
          B6C9E9A33859443E9F01290895C513E0C80125104651705802636CCA79AD35D8
          6B404DA6A8125C8188094E584682903E2510831EE3CE2B1CEE8CB5489482F904
          994BD56178B8A41353B3A4AA64FBC804642D539E2B6670ED3B2FA0B653137253
          A920CC64814DC410C50B428AD158A2217B4118096EF089234A4692147A2F61AA
          340B55554B4742B0DBD621E7A7F18DAF5CC16E6D07375EF9294E9E3C81A51327
          A06533D8AC6E8065EF12096D3AA12B48EAC1A7D71155475115A4924564E6E631
          532A637EF138712785ADF5350CFAC6D11CE093E942FF214E9D3E83E72E2FD38D
          7DE8BD2E4CF282147C747B7DA1FB8882666405D31359288922D2E93472B93CD2
          5A1AB669E0EE3FEEE0AEA9C33EB904A3DF170AFBCF5430241F9FD27262B9C9C9
          0CB26A1A4B8F9C238C033874726636AB809DD2766CB07F181B9BE8EDB5117844
          545DC7F9F36763E7BC1FE9C313706DDB906439272016B846B1E5B20228708FAA
          601A26B9A32D2A62DAB6808213F02D13BE63C6FAA1672E9F27454C8B3EA2500F
          715C71F1E124FCF0F231987A93B04C51068AA8C888E9BC465F94388214C5BBE8
          4E71A25C2DEA8C420D0141C74AF068952AC73047A6746402F71ADDDCD2FC0CAE
          BFF83C36DFAB22914810BE09A102D1F90E3481681C7B28C79102D821FD9898B2
          AC42529328168BE8753A992321B01D0FFD20896F7EF52ADEFDE71DBCF2939FE1
          ECD933642A0B44B0024C724196167B95AC50C7A3A5C84AFC9A7093E9752AADA1
          509C40B9B280A5E553C8177258796B4554E4681212F0EC743B54DAC71EFF083E
          48CB256CB76B35EC7575ACDF7D47381FB925226E3894484ED3480939689512B2
          D92CD2998C6844CD461D77FEFA17E2420E36DDF3214E7C408654555908411A6A
          9D4B4AF63A3D87DCC40C329325317C7884B3CD4A104DCA85490174BD8BC6C686
          E87C86DE11F89C3A7D1A292D2B5A7ACCA9231298C824FAC4D8C2488A185A2CB7
          60667C63AF473058E8B10A2C8B16AB8092A06BBE6D503FB0117AD69824011D42
          CBE590A124894F8321DFC2434998232771BA0DD15265551DDAAD44449330EE94
          12F797B8EF4BC34C590D312963C9F21C10D262977448A2B3D49832844FA15098
          40A592B90FF683095477F7A4F38F9EC3ABBFF905FE74EB16D842120995B08E1B
          D3C8A810A334EC0BA303472230934DA8808C8A9B5A81A053E85ABB45F2D68A15
          CD7126A7A6A63889C4FB20202EE36EB5814B972E6167B38A1F5EBF26CC64F1D8
          22F21313B0433E7EAC02361785AA94488622A9B44A75C8A645D955BA569A9FC7
          22A9A7D76E608D861399FA8496D5CA0927540CC789666767C366B3C97004FB09
          28F189765A3DCC1D3B892F5FB982C0B5B15E5DC7E6660DEBF736C4401249B228
          397B4496A6E50229213745D3733E8B6CBEC08E8AEDADF7B0F2E73F52C3B28907
          E48674BC642A3D13799EAB4AD2C0F30C7358FDFD04FC300A24A1318872DA1EFB
          BE8F4C710E671E9DC1E2F22362F6625BF60539A91718364D45167492697D6D9D
          4ABD0B7B30A03B472851579C5F382E1412847E4415CB4B89443269398A1745E3
          D96B9C40B3B6BD6E9AC6B2969E1657C468CDFF7CF8A198823AD45207D4037A54
          05EE05169DD472792A72850A7CEE09AE3FE404254A0986C37961AFDDDE219ED0
          241FB9BE1A3ABA94F4100FF2FB24ECF4BA57FEF0DAEF88438EC09747F040CCFF
          C1D07287133046D90DCF20FA402498CF4B8C60A20B4AE8F775BCFDE61BFE4EBD
          76D335EDBA6339ADC8B274349BF6A8026387B8BDF2E6BB4B171E7BBBB6BAFA14
          F5776D7AB624BEC1251F990E4FC9EC0BFC5F102F6ECB3C7A0554099A29C5FCC0
          D35048FB0E4DC3B7FFF656A7D9DE7BB1B6557DD530CC0DC933EADD6E97A793B1
          37BFCF259FF9DE65ED8255F912E9E87373E5F2F1C9991211A9406025C87C7806
          1890655B30C8944C1A481D3224C7D0A1D33CD969ECA055DF466BB75E4F24D55F
          EBBDFE8DC1C0AEC1D63BBAAEB31979A3931F9AC0C1C7B77EF0E3339D46F3B396
          E35CA44A9C4BA8A972242B79B2E3043BA0619B7EBFDF37C87E9BCEC058F38CFE
          8A6D5AAFED6EAFBDD3EBF5EC61C0E0410EF87FF3F83728F553728D4ADE540000
          000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0E162E558A1766000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000007A4494441
          5478DAAD57797013D719FFADB45ADD962F64B0E50B64730873C56073143C6E42
          435232FC11C6C140870205428243D201DACCA423D2844E684913D2A4330DE528
          47881D8289133A252DF1256C99C3185B36B846C846B26CC9B26E5BAB95B45D11
          33F53894CAC037F366E7EDBEDFF7FBEDFBDEFBBEF7083C41DBA0D5C64F0C11AF
          F178448944AE981A61D988D3E968B1DB1D074F1CFAE43837841D8B219E14F9CE
          B7DE5E2822882F0A0A17A5CA1393C10419D00C034A28424D6D0D5B5FAF2BD79D
          D79402DAC8681CFF4990EFDAF5E63CA14874717EC1E2A443478EA1FCF85FE99B
          1DEDD5777B4C0D35F575F173E7CD8F1789A51A7992C161EC686D1A8D251F975C
          ABD552619EF054DEACB9B24F4F96C37CD7F4B5D56EDCD6DA7CD912FDAE595D24
          ABAAAA6CFCD9864D9AEEAECEADDCAB8F46E3798F2B20425125850505B9A72BBF
          82D3D6FB555BBA7295C3ECB0DCFF6EA8A8F6C5CB6587C3816164A6A74D1F8B7F
          9C1920CACACAB683A6F7051886E835F7307D4EF7367C5B171E3B509594289249
          848884433F58738F2460FBF6EDEA48247228232363A94AA522FC8E3EAC7EEE69
          D27EFB9FEFC97FBC444C52E2102922F562BEF7988D7EDAED0BA224188AA0E5DA
          65F3E30AE0AD5FBFBE8CC7E3BD53505020CDCDCDC5D1A3475153D78077DF7A95
          58942E5B9F3D251B62B914DD16E74BBA4BFFFEB5D763393FAB70655EE59767D0
          6334568D7538AE5D505A5ABA3F3535756F4E4E0EA5542A2110089090AC44A0AF
          019B9F0962A22A017113D2205108A18C8B202F8B92BA233973FABD14517FA961
          C82F08AF735B2CAE471540717F5E5E5C5C2C2449120909090885C270D8ACD858
          E48724311101269BFBCB6E387A22E09371B0F31742775384F317FE1E6109FECB
          6D3517BE7BE410A8D56A054DD332A3D1086E061015110830605D57209B29013D
          2C43F9B76DC85ABA0D1449407FDB0F87E5129649AB118E279913C7BEA97890DF
          9805AC58B1C2D37CBDD9EE1B1A56F674774705C1E3F14242F9219227A3F5463F
          0E9F6BC522FB3158AC03B0F41AD9E3BBE4447A8A00C77EDF2E940142CE8DF707
          8B2A16F2175EDA986A75FBCFBFB36FBFF2C38F3F4166D66474767622400710E1
          89219408404D54226F661E242221A4220166A5726111935C4A0EC0EF89400CB1
          E441BEFF9F0062D38E37364E5026B5CD5FBABCD83614061B6250B2762D3A3A3A
          B8421241A7550A8A5BF5F94F89B0608E1CD75BBBE01BE8C4DA6713093915E604
          AAB9FE702F0B2234AE10141569C9ACE9AE2FD332D43FCD2F5C4828645290E100
          4494000C976A64F149686F37201416C2D01681262F80B2174358B3440E32C203
          4BFBC1A72438F391170EC6DDA8036D1D9780CCDCC13D53A6E6AD9C9B5F80CC14
          059C0336646667E25A5B273EFBA292BDC1B994C7C5113E9F1FAF340DE0B3832F
          203E391D32198D704884007F2E2A0F74E0747965884F521F2044B3310958BD7A
          35C58A12DE13CB13772C2828449284E462E8412EB7E8DEFEC34174DFEEEA4E9D
          A8DC3AE01878D1E9726D325BAC444A021FC6E606C8C462DC31C860BBEB83EEEC
          3998037E77888F2DB5216FDDFF8CF1E8CEE6CD3B54369FEF6B55C6E4D99B7FBE
          0EAE410794CA6418BBEF62FF813F463CCEC1BF88D9E13D7ABDDE131D9F95A52E
          2279FE39BB37CE787FC39A7CC2D862C1AF5E3BEB0AF36567875C744BD0153A55
          079FFD618BECDE0C6CDCBD5B2E0913EF82A05E2959F13C2F236D121C0E077AFB
          6CF8EDBE7D2C97C68DC130B3E54663F5C5D16093A9ABFAC06F8A9E5DBC7401C1
          974870B9AE8B4B6DE49FAB4CFD6F224623376D7A3D914F433F7BC102F5FC39B3
          E11D1A82D33B8C4B0D97D8AE9B1DFFE085893D437653C7D5AB5799B1E08FB545
          328142F28B198545B87BE1309A0D565A9513F72798DCB1F2836422CCDEFCFC1F
          A9676934B0BB3CA8BDDC8C469DCE2911B2BF3C77E2C8918781B95DB9A178A63A
          91365FC5E5EA2E0E4F971F6FEAEB8D993D2A60465ECE964C950A2DAD6D385571
          8675B99D558442F17273C5E9873AD26AC113B0C1B2595333704777018DCD3636
          180E7D301EF27B02F4D70CD5353AFD333D26938365899DEDD774276302FAE63D
          3F798A3CC763EEC44DBD19669BAFE6F356E7B5710B2069E74ABF3D908600656F
          3754FB6201BDBE5025EEBF69DB3F7D593AFA6FDD86EE8A8705137A7FBCE451E3
          555454046B6BABEE1862248FDA20C1ACCF9F31695AE6EC62583A5D1814F2C3F9
          1BB6656857A64A62F571DF1EE5584ECC9924FCDBE6ADCB27F03180BE3B6EACD9
          B98A27E2F99E1BE0B66A71915A9CF7D4AAA6C6C6C6502CCEC67D2A2E9D97B85C
          932D9F1E9F2444677D33D234E988E7EAC292A204BCB1FB271366AAD2F60EEA2F
          EC182D7884676CBB9704C77D2865C3E19DCB162B095F5F3B8CD7FD585EC855BC
          A00D4D9F5B70FD8A15344583A4FCFDF8BEFEF3F1DF6C1BAD0591318D1D97802D
          0BE5D31224E47255CA104CCD1E4CCC9423E87583F1B6407FDDCE25A2FE5B8224
          F2F0C946532D377CD208493414C191C68C1132BE1950A9158AE4D414DCBE2381
          B9AD1F03835E48A57CA44F030AE68B600D670CFFEED39AA611723FBE3F010546
          5A7044CCA3DF0DBFBBE1B168D41374D5171D593D0E26B5D5E4BD5AFB2F578AB5
          4BC2D3E424E396C999586FE8AD61D97B64D182E51C790646C89FE8ED388AE52F
          49964F9689A8571552D13A1FC9EABF31F47EC8BD8F5E40FA47C8830F22BE6FFF
          01109D4DBBC9DE23FC0000000049454E44AE426082}
      end>
  end
  object HTTPBasicAuthenticatorPCM: THTTPBasicAuthenticator
    Username = 'pcm'
    Password = 'pcm'
    Left = 840
    Top = 21
  end
  object RESTClient: TRESTClient
    Authenticator = HTTPBasicAuthenticatorPCM
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <>
    SecureProtocols = [TLS1]
    SynchronizedEvents = False
    Left = 984
    Top = 13
  end
  object qry_Config: TFDQuery
    Connection = dm_PCM.con_PCM
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      'SELECT * FROM devmanager_config  '
      ''
      '')
    Left = 392
    Top = 264
  end
  object imglst_28x80: TcxImageList
    SourceDPI = 96
    Height = 28
    Width = 80
    FormatVersion = 1
    DesignInfo = 24642128
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000500000001C0803000000C155C8
          88000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          0162504C544562B1FF64B6FF69C4FF62B2FF61AFFE59ABFE00AFFE61AFFD3FA7
          FE56A7FE35A6FE61A4FDD6FAFFFFFFFFC2AFFE00A4FE61AFFFE6FFFFF5EBFE2C
          9FFEA8EBFFE6E1FE61D2FFF5FFFFD6D2FE61AFFBE5FFFFF5E9FD259EFEA8E9FE
          E5DFFE31A6FE59AAFEFFF0F4579DE4579DF4E4FFFFFFF2FF47A9FEFFFFFBBE9D
          E4289DFC65B6FF559DE0A3E6FDF4E6F01DA0FF64B1FE61A4FE61D2FEFFF9F89D
          9AF539BAFF66ACF15BC8F8F4F9F89E99F52AB4FFFFFFFCC0AFFE05A6FE61B2FF
          56A9FF3DA9FF61A6FE61DFFDF4E7F81CA8FF61ACF259A0F260AFFE00AFFF55A7
          FE3CA7FE61DFFCFFF1FD39A8FE61E1FFFFFFFED5D1FE61A4FF61D0FAF4FFFFFF
          F9FDA3A7FE50A6FE579DE800A2FF63B0FE61B0FF58A6F7D4F9FF61AAED48A9FE
          62A6FB5DCAF8FFF0F823A8FF65A4E9599DF0D3F9FF009AF666B4FFFFF1FB45A8
          FE65BBFF5499E0579DED00BCFF63B6F45B9DE4319AF565B4FF64B2FF63B5FF63
          AFFE63B6FF000000E7A725220000007674524E53FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000162A947000000097048597300000EC300000EC301C7
          6FA8640000016A49444154484BEDD6F74FC2501007F002A7A87052274B1CC77E
          B8B7208A5B71E3C43D712B8EFEFFE6A525C426BC1F6C7FD3EF0FCDF572FD24BD
          3479951445B29816495124C56A03D362B32A9264A2076093248BBE672C967FD0
          70C46015BF5403D8B5FB1AA8D5AABAF2D0CF884007381111EB5D76B98117888D
          4DCD6A812D954401E86875AB0F7B5C5E9F5AF9DB021AD8DEA11FD722003B9DD8
          45140C6138E2F545634444719620EAC61EA2DE3EFDB896CA60FF807B7068988D
          8C8E8D4F787DC914EF4D429A4D05D03FCD2A7902303383B3739081F985C5A5D2
          2B7B5C00CB01F4AFE887CB1180595C5DCBAC73A75E0337368D805BDBB99DDDBD
          2C222653DA0EF70F0E0D80F9A3630CC30905431C5477780A0640F9EC3CA76EEE
          E2B2B4C370C40008F9ABEB1B448CC66E0B25F0EEDE0808F98747227A7A2EC82F
          AFFC2B247A2B02A413147FD78F96230241FE608CB14F00F98B178C157937CD04
          9E18FC4DFE2468FA316AFA416FF6AFC83729F252E7D28207B30000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000500000001C0803000000C155C8
          88000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          01CE504C544549CE924AD3944CE79D49CE9149CC903EC98400CC9049C8802EC9
          8B3CCA8D49CC7D41CA8B9BF2F8FFFFFFFFFFEDB8CC9049C67649E3E2F4FFFFFF
          F7D449C872FFFCE297C98A00CC7D41CAC2D0FCFF3CC8829BEFF731C87949ECED
          49CC7349CCD4E2FFFF99CA8B39CAC2CFFBFFFFFFECB7CC90F3EDBA42B78142B7
          BACEFAFFFFFFF7CFE39042B7CEE1FFFFF3F2C200C98B49C88349ECECFFF4CEFF
          FFF8D0E39007CB863BB779CED78142B78700D2934ACC90F3EFC149CCC1CFE190
          00B9854DD5954BD2954BCE5744D7DEF3FFFF1AC97E49DFE0E2EC9049CC8C44B7
          8142B78400C7924ACD914AD1944BD2823FCBC000CC924BD293FFFADF93C4869B
          F0F7F3EFC014C98B49CD803EC6BB00CD7E3EC6BD00C9903FCAC0FFFADE90B37F
          0ACA8312C88A3FC9BF00CC914AD27E2FB46FB6F4FF00C8902AB78400D69449C8
          8148E8EBFFF5D300C7873EC98500B66CF3F1C21DC88B15CA8C4BD2944BD19249
          CE7549C6D0F4F2C2FFF4D098EDF749CC914AC96A44E4EBFFFFEBB6BF8C00D091
          49C97D48DDDFCEDD8E49CE944BBD5B42D7DE49CD924AC25543D7DECED78400C2
          924ACD903FCAC249CF933BBC7100BC894BCF9149CF954CC86C43B7810EBA874D
          D6944BC86C00C8954BCE904AD17D4BD09100000058C902660000009A74524E53
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CBB085630000
          00097048597300000EC300000EC301C76FA864000001CA49444154484B639839
          9381916A8061E64C86994CCC2C5403CC4C331918A8681E0B0B33030323BA1865
          8071D4408A010E035921141B0B0B0B3B88C101E682989C6C2C5CDC5055206974
          80DD40561E5E10E0E36763111014E2E5E515066916013145C5C42524C1B26069
          0C80DD40296998161959B866397905104B5451491922A6A24A8A816AEAEA1A9A
          5ADAF20A20968E2EAF9EBE8121AF91BA8EAEB189A91948CA5CDDC2D20A5D231E
          03AD59586C94B56C0D798DECEC1D1C9D9CF9F85D5C9D79DDDC3D3CBDBC7D7CFD
          94B56CFD03B09887DB4030080C0AE60D096561090BD754518D88D404FB3D8A85
          852B5A59CB360A5D1718E0353026364E9AD73A9E85852B415945353129398597
          97D7D824952C03D5D4D5D5D3D2333279B3B241F1EBACA2CA96C3920B0ACDBC7C
          B20CB42E282C2C62292ED1E52D65619157E02DD367E5E12D65712F0739992C03
          E3418C8ACA2A486856D7D4D6D53B83585A0D511418C8D2D8D40C32C6C822DDAA
          A5B5CD999757ABBDA39385AB8B4403BB7BD47BFB20CCFE0913D5D5D5274DB662
          61699C32515DDD73EA3416968AE9669E5E9DE8BAC000BB812CDD8550F358585A
          0A0B0B0B67C0990160732A7C203426C06120F960441A48F56A94EA153DB59B22
          00253676D8B69A57CE0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000500000001C0803000000C155C8
          88000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          011D504C5445FFA42CFFA82BFFB525FFA42FFCA130FC9600FBA130FC9100FC9C
          18FCA100FC9C00FDE7F2FFFFFFFFFFDEFEA130FB9100FCCBC9FFF9C9FD9C18FC
          A1AFFC9C8BFEF9FFFCE5F2FCCAC9FDFFFFFFF8C9FC9B15FCA1AEFCFFFFFFFFDD
          FC9B8BFBF8FFFDA130FDE38BE2912BE2918BF7F8FFFFFFF2FCCB30FFA700EF8B
          00F7C22BE2912DF4A831FFA130FDE58DFCA18DFBCA30FDA131FFA732FFA800FD
          9C88FF9831FFA831FFF8C8F69400FC9B88FC9130EC8300FB9800DE8B10FFAD32
          FE9100FC9815FF9804FFA832FFA731FCA200FC9FAEFBFFFFFEDB30F89B15FCA1
          31FC9800F7EEFFFDE38CF79500FFA633F47F00EFE3F2FAD52BD97D00FFA530FD
          A532FB8A00DD8A00FFA934FC8A00E18B32FFA730E2912CE99331FFA230FFA430
          000000C37537050000005F74524E53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00939A5F2C000000097048597300000EC30000
          0EC301C76FA8640000013D49444154484BEDD6694FC2301807F08E3D542BDDBC
          85A930A84EF0C08907DE473DF156F03EFAFD3F86D96146965012D677FA7FB327
          CF9EFED22C4B5A2404D294050981444A0765D1530221851E808E9016EF258BF6
          0F268E0C4C070F0C7DD08F0108002603E13BDC3ED81E0998CE502F8639384487
          473019A5863936EEF7A861761265E0C4EFE26CCE9A0432359DC7053BE8E57131
          3E1E460E96189B9975E622B05CF11AF36C6171293E1E460E5601966DC78DC095
          DAEA9AEDB8EB1B9DBC2EA09FFA660416816CD98EBB1D9F8DD21DACEFECAA034B
          8CB1BDFD836CCE3A5403568F383F364F4ECFE83940865A176652D0FFB71B9757
          C1D7BCBE5103C2EDDDBDE73D3C360148A167B0F5C49E9B41F9F2CA18636FEFDE
          76CB958FCFAFF86C1409082D1E7A5EC939FFF6CB468D4B3C29D853FE24A8FC18
          557ED0ABBE8AFC00D2A446B17ACF81E90000000049454E44AE426082}
      end>
  end
  object RestClientPCM: TRESTClient
    Authenticator = HTTPBasicAuthenticatorPCM
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://pcmapps.ddns.net:5443/PCM/api/v1/Checkserver'
    ContentType = 'application/json'
    Params = <>
    SecureProtocols = [TLS12]
    ConnectTimeout = 0
    ReadTimeout = 0
    SynchronizedEvents = False
    Left = 240
    Top = 88
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RestClientPCM
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'Accept-Encoding'
        Options = [poDoNotEncode]
        Value = 'gzip, deflate, br'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'Accept'
        Options = [poDoNotEncode]
        Value = '*/*'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'body56B5D192E5544996ADE9A06511B960DE'
        Value = '{'#13#10'    "ID_User": 2'#13#10'} '#13#10
        ContentTypeStr = 'application/json'
      end>
    ConnectTimeout = 0
    ReadTimeout = 0
    SynchronizedEvents = False
    Left = 256
    Top = 176
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = ANSI_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -12
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      PixelsPerInch = 96
    end
  end
end
