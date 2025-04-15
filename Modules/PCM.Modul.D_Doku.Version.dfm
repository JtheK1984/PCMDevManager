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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 63
    Width = 746
    Height = 596
    Align = alClient
    TabOrder = 4
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitTop = 58
    ExplicitWidth = 740
    ExplicitHeight = 584
    object mem_statement: TSynMemo
      Left = 26
      Top = 344
      Width = 694
      Height = 54
      SingleLineMode = False
      Constraints.MinWidth = 20
      Color = clWindowFrame
      ActiveLineColor = clGrayText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      TabOrder = 7
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
    object cmbbx_Sort: TcxComboBox
      AlignWithMargins = True
      Left = 124
      Top = 81
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 23
      Width = 597
    end
    object cmbbx_Prog: TcxComboBox
      AlignWithMargins = True
      Left = 124
      Top = 25
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Properties.OnChange = cmbbx_ProgPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Height = 23
      Width = 597
    end
    object edt_Bez: TcxTextEdit
      AlignWithMargins = True
      Left = 124
      Top = 137
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 23
      Width = 597
    end
    object edt_Header: TcxTextEdit
      AlignWithMargins = True
      Left = 124
      Top = 453
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Height = 23
      Width = 597
    end
    object cmbbx_HeaderType: TcxComboBox
      AlignWithMargins = True
      Left = 124
      Top = 483
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Properties.Items.Strings = (
        ''
        #220'berschrift 1'
        #220'berschrift 2'
        #220'berschrift 3'
        #220'berschrift 4'
        'Standard')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Height = 23
      Width = 597
    end
    object mem_content: TSynMemo
      Left = 26
      Top = 535
      Width = 694
      Height = 35
      SingleLineMode = False
      Constraints.MinWidth = 20
      Color = clWindowFrame
      ActiveLineColor = clGrayText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      TabOrder = 10
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
    object edt_bild: TcxButtonEdit
      AlignWithMargins = True
      Left = 124
      Top = 193
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_bildPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 23
      Width = 397
    end
    object edt_width: TcxMaskEdit
      Left = 600
      Top = 193
      AutoSize = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+,\d\d'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Text = '1'
      Height = 23
      Width = 121
    end
    object chkbx_leer: TcxCheckBox
      AlignWithMargins = True
      Left = 209
      Top = 249
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Leerzeile'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Transparent = True
      Height = 19
      Width = 67
    end
    object chkbx_Newpage: TcxCheckBox
      AlignWithMargins = True
      Left = 124
      Top = 249
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Neue Seite'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Transparent = True
      Height = 19
      Width = 78
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Programm:'
      Control = cmbbx_Prog
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sortierung:'
      Control = cmbbx_Sort
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beschreibung:'
      Control = edt_Bez
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bild:'
      Control = edt_bild
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 413
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Breite in cm:'
      Control = edt_width
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Seiteneinstellung:'
      Control = chkbx_Newpage
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'chkbx_leer'
      CaptionOptions.Visible = False
      Control = chkbx_leer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'HTM'
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Statement:'
      CaptionOptions.Layout = clTop
      Control = mem_statement
      ControlOptions.OriginalHeight = 126
      ControlOptions.OriginalWidth = 677
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'DOC / PDF'
      ItemIndex = 1
      Index = 6
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = #220'berschrift:'
      Control = edt_Header
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = #220'berschrift-Typ:'
      Control = cmbbx_HeaderType
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 617
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Statement:'
      CaptionOptions.Layout = clTop
      Control = mem_content
      ControlOptions.OriginalHeight = 129
      ControlOptions.OriginalWidth = 734
      Index = 2
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 6
      ShowBorder = False
      Index = 0
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
    LookAndFeel.NativeStyle = False
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
      63
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
