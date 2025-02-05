object frm_PCM_VersionDoku: Tfrm_PCM_VersionDoku
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PCM-Update/Doku: Version'
  ClientHeight = 659
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  TextHeight = 15
  object grpbx_Design: TcxGroupBox
    Left = 0
    Top = 58
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 601
    Width = 746
    object grpbx_6Statement: TcxGroupBox
      Left = 2
      Top = 177
      Align = alClient
      Caption = 'HTM'
      TabOrder = 5
      Height = 182
      Width = 742
      object lbl_Statement: TcxLabel
        AlignWithMargins = True
        Left = 7
        Top = 22
        Margins.Left = 5
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alTop
        AutoSize = False
        Caption = 'Statement:'
        Transparent = True
        Height = 19
        Width = 733
      end
      object mem_statement: TSynMemo
        Left = 2
        Top = 43
        Width = 738
        Height = 137
        SingleLineMode = False
        Align = alClient
        Constraints.MinWidth = 20
        Color = clWindowFrame
        ActiveLineColor = clGrayText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 0
        CodeFolding.GutterShapeSize = 11
        CodeFolding.CollapsedLineColor = clGrayText
        CodeFolding.FolderBarLinesColor = clGrayText
        CodeFolding.IndentGuidesColor = clGray
        CodeFolding.IndentGuides = True
        CodeFolding.ShowCollapsedLine = True
        CodeFolding.ShowHintMark = True
        UseCodeFolding = False
        BorderStyle = bsNone
        Gutter.AutoSize = True
        Gutter.Color = clGrayText
        Gutter.BorderColor = clGrayText
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWhite
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Terminal'
        Gutter.Font.Style = []
        Gutter.LeftOffset = 2
        Gutter.ShowLineNumbers = True
        Highlighter = synhl_Html
        Options = [eoAutoIndent, eoAutoSizeMaxScrollWidth, eoDropFiles, eoGroupUndo, eoHideShowScrollbars, eoKeepCaretX, eoShowScrollHint, eoShowSpecialChars, eoTabIndent]
        RightEdge = 0
        SelectedColor.Background = 13737321
        TabWidth = 3
        WantTabs = True
        FontSmoothing = fsmNone
        RemovedKeystrokes = <
          item
            Command = ecDeleteWord
            ShortCut = 16468
          end>
        AddedKeystrokes = <
          item
            Command = ecDeleteWord
            ShortCut = 16430
          end
          item
            Command = ecUpperCaseBlock
            ShortCut = 16469
          end
          item
            Command = ecLowerCaseBlock
            ShortCut = 16460
          end>
      end
    end
    object grpbx_2Sort: TcxGroupBox
      Left = 2
      Top = 37
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 1
      Height = 35
      Width = 742
      object grpbx_Sort: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 31
        Width = 738
        object lbl_Sort: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 6
          Margins.Top = 4
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
          AutoSize = False
          Caption = 'Sortierung:'
          Transparent = True
          Height = 19
          Width = 100
        end
        object cmbbx_Sort: TcxComboBox
          AlignWithMargins = True
          Left = 113
          Top = 2
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '57'
            '58'
            '59'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '68'
            '69'
            '70'
            '71'
            '72'
            '73'
            '74'
            '75'
            '76'
            '77'
            '78'
            '79'
            '80'
            '81'
            '82'
            '83'
            '84'
            '85'
            '86'
            '87'
            '88'
            '89'
            '90'
            '91'
            '92'
            '93'
            '94'
            '95'
            '96'
            '97'
            '98'
            '99'
            '100'
            '101'
            '102'
            '103'
            '104'
            '105'
            '106'
            '107'
            '108'
            '109'
            '110'
            '111'
            '112'
            '113'
            '114'
            '115'
            '116'
            '117'
            '118'
            '119'
            '120'
            '121'
            '122'
            '123'
            '124'
            '125'
            '126'
            '127'
            '128'
            '129'
            '130'
            '131'
            '132'
            '133'
            '134'
            '135'
            '136'
            '137'
            '138'
            '139'
            '140'
            '141'
            '142'
            '143'
            '144'
            '145'
            '146'
            '147'
            '148'
            '149'
            '150'
            '151'
            '152'
            '153'
            '154'
            '155'
            '156'
            '157'
            '158'
            '159'
            '160'
            '161'
            '162'
            '163'
            '164'
            '165'
            '166'
            '167'
            '168'
            '169'
            '170'
            '171'
            '172'
            '173'
            '174'
            '175'
            '176'
            '177'
            '178'
            '179'
            '180'
            '181'
            '182'
            '183'
            '184'
            '185'
            '186'
            '187'
            '188'
            '189'
            '190'
            '191'
            '192'
            '193'
            '194'
            '195'
            '196'
            '197'
            '198'
            '199'
            '200')
          TabOrder = 0
          Width = 623
        end
      end
    end
    object grpbx_1Prog: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 0
      Height = 35
      Width = 742
      object grpbx_Prog: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 31
        Width = 738
        object lbl_Prog: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 6
          Margins.Top = 4
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
          AutoSize = False
          Caption = 'Programm:'
          Transparent = True
          Height = 19
          Width = 100
        end
        object cmbbx_Prog: TcxComboBox
          AlignWithMargins = True
          Left = 113
          Top = 2
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.OnChange = cmbbx_ProgPropertiesChange
          TabOrder = 0
          Width = 623
        end
      end
    end
    object grpbx_3Desc: TcxGroupBox
      Left = 2
      Top = 72
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 2
      Height = 35
      Width = 742
      object grpbx_Desc: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 31
        Width = 738
        object lbl_Bez: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 6
          Margins.Top = 4
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
          AutoSize = False
          Caption = 'Beschreibung:'
          Transparent = True
          Height = 19
          Width = 100
        end
        object edt_Bez: TcxTextEdit
          AlignWithMargins = True
          Left = 113
          Top = 2
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          TabOrder = 0
          Width = 623
        end
      end
    end
    object grpbx_7Content: TcxGroupBox
      Left = 2
      Top = 359
      Align = alBottom
      Caption = 'DOC / PDF'
      TabOrder = 6
      Height = 240
      Width = 742
      object lbl_content: TcxLabel
        AlignWithMargins = True
        Left = 7
        Top = 84
        Margins.Left = 5
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alTop
        AutoSize = False
        Caption = 'Statement:'
        Transparent = True
        Height = 19
        Width = 733
      end
      object grpbx_Header: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 20
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 31
        Width = 738
        object lbl_Header: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = #220'berschrift:'
          Transparent = True
          Height = 23
          Width = 100
        end
        object edt_Header: TcxTextEdit
          AlignWithMargins = True
          Left = 113
          Top = 2
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          TabOrder = 0
          Width = 623
        end
      end
      object grpbx_HeaderType: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 51
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 31
        Width = 738
        object lbl_HeaderType: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = #220'berschrift-Typ:'
          Transparent = True
          Height = 23
          Width = 100
        end
        object cmbbx_HeaderType: TcxComboBox
          AlignWithMargins = True
          Left = 113
          Top = 2
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.Items.Strings = (
            ''
            #220'berschrift 1'
            #220'berschrift 2'
            #220'berschrift 3'
            #220'berschrift 4'
            'Standard')
          TabOrder = 0
          Width = 623
        end
      end
      object mem_content: TSynMemo
        Left = 2
        Top = 105
        Width = 738
        Height = 133
        SingleLineMode = False
        Align = alClient
        Constraints.MinWidth = 20
        Color = clWindowFrame
        ActiveLineColor = clGrayText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        TabOrder = 2
        CodeFolding.GutterShapeSize = 11
        CodeFolding.CollapsedLineColor = clGrayText
        CodeFolding.FolderBarLinesColor = clGrayText
        CodeFolding.IndentGuidesColor = clGray
        CodeFolding.IndentGuides = True
        CodeFolding.ShowCollapsedLine = True
        CodeFolding.ShowHintMark = True
        UseCodeFolding = False
        BorderStyle = bsNone
        Gutter.AutoSize = True
        Gutter.Color = clGrayText
        Gutter.BorderColor = clGrayText
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWhite
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Terminal'
        Gutter.Font.Style = []
        Gutter.LeftOffset = 2
        Gutter.Visible = False
        Gutter.Width = 0
        Options = [eoAutoIndent, eoAutoSizeMaxScrollWidth, eoDropFiles, eoGroupUndo, eoHideShowScrollbars, eoKeepCaretX, eoShowScrollHint, eoTabIndent]
        RightEdge = 0
        SelectedColor.Background = 13737321
        TabWidth = 3
        WantTabs = True
        FontSmoothing = fsmNone
        RemovedKeystrokes = <
          item
            Command = ecDeleteWord
            ShortCut = 16468
          end>
        AddedKeystrokes = <
          item
            Command = ecDeleteWord
            ShortCut = 16430
          end
          item
            Command = ecUpperCaseBlock
            ShortCut = 16469
          end
          item
            Command = ecLowerCaseBlock
            ShortCut = 16460
          end>
      end
    end
    object grpbx_4Bild: TcxGroupBox
      Left = 2
      Top = 107
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 3
      Height = 35
      Width = 742
      object grpbx_Bild: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 31
        Width = 738
        object lbl_Bild: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 6
          Margins.Top = 4
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
          AutoSize = False
          Caption = 'Bild:'
          Transparent = True
          Height = 19
          Width = 100
        end
        object edt_bild: TcxButtonEdit
          AlignWithMargins = True
          Left = 113
          Top = 2
          Margins.Left = 8
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = edt_bildPropertiesButtonClick
          TabOrder = 0
          Width = 419
        end
        object lbl_width: TcxLabel
          AlignWithMargins = True
          Left = 535
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alRight
          AutoSize = False
          Caption = 'Breite in cm:'
          Transparent = True
          Height = 23
          Width = 80
        end
        object edt_width: TcxMaskEdit
          Left = 615
          Top = 2
          Align = alRight
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d+,\d\d'
          TabOrder = 1
          Text = '1'
          Width = 121
        end
      end
    end
    object grpbx_5Page: TcxGroupBox
      Left = 2
      Top = 142
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 4
      Height = 35
      Width = 742
      object chkbx_leer: TcxCheckBox
        AlignWithMargins = True
        Left = 201
        Top = 2
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BiDiMode = bdLeftToRight
        Caption = 'Leerzeile'
        ParentBiDiMode = False
        Style.TransparentBorder = False
        TabOrder = 1
        Transparent = True
      end
      object chkbx_Newpage: TcxCheckBox
        AlignWithMargins = True
        Left = 115
        Top = 2
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BiDiMode = bdLeftToRight
        Caption = 'Neue Seite'
        ParentBiDiMode = False
        Style.TransparentBorder = False
        TabOrder = 0
        Transparent = True
      end
      object lbl_pages: TcxLabel
        AlignWithMargins = True
        Left = 5
        Top = 6
        Margins.Top = 4
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alLeft
        AutoSize = False
        Caption = 'Seiteneinstellung:'
        Transparent = True
        Height = 23
        Width = 100
      end
    end
  end
  object qry_Allg: TFDQuery
    Connection = dm_PCM.con_PCM
    Left = 451
    Top = 71
  end
  object brmgr_SQL: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 384
    Top = 400
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      58
      0)
    object tb_Main: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 774
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SQLSave'
        end
        item
          Visible = True
          ItemName = 'btn_SQLCancel'
        end
        item
          Visible = True
          ItemName = 'btn_Prev'
        end
        item
          Visible = True
          ItemName = 'btn_Next'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_SQLSave: TdxBarLargeButton
      Caption = 'Version &speichern'
      Category = 0
      Hint = 'Version speichern'
      Visible = ivAlways
      OnClick = btn_SQLSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 130
    end
    object btn_SQLCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_SQLCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 130
    end
    object btn_Prev: TdxBarLargeButton
      Caption = '&vorheriger Datensatz'
      Category = 0
      Hint = 'vorheriger Datensatz'
      Visible = ivAlways
      OnClick = btn_PrevClick
      AutoGrayScale = False
      LargeImageIndex = 25
      Width = 130
    end
    object btn_Next: TdxBarLargeButton
      Caption = '&n'#228'chster Datensatz'
      Category = 0
      Hint = 'n'#228'chster Datensatz'
      Visible = ivAlways
      OnClick = btn_NextClick
      AutoGrayScale = False
      LargeImageIndex = 26
      Width = 130
    end
  end
  object odlg_Doc: TdxOpenFileDialog
    Left = 304
    Top = 216
  end
  object synhl_Html: TSynHTMLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    IdentifierAttri.Foreground = 9829869
    KeyAttri.Foreground = 8437759
    SymbolAttri.Foreground = 8437759
    ValueAttri.Foreground = 10921727
    Left = 368
    Top = 336
  end
end
