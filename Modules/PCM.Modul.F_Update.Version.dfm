object frm_PCM_Version: Tfrm_PCM_Version
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'PCM - Updategenerator: Version'
  ClientHeight = 700
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 900
    Height = 700
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 906
    object dtedt_Date: TcxDateEdit
      AlignWithMargins = True
      Left = 103
      Top = 92
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 775
    end
    object edt_Version: TcxTextEdit
      AlignWithMargins = True
      Left = 103
      Top = 120
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 775
    end
    object edt_Beschreibung: TcxTextEdit
      AlignWithMargins = True
      Left = 103
      Top = 148
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 775
    end
    object cmbbx_SQLStatement: TcxComboBox
      AlignWithMargins = True
      Left = 103
      Top = 176
      Hint = 'Bitte SQL-Statement w'#228'hlen'
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Properties.Items.Strings = (
        'CREATE TABLE IF NOT EXISTS'
        'ALTER TABLE'
        'INSERT INTO'
        'UPDATE'
        'DELETE FROM')
      Style.HotTrack = False
      Style.TextColor = clWindow
      Style.TransparentBorder = False
      StyleDisabled.TextColor = clBtnHighlight
      TabOrder = 4
      Width = 775
    end
    object edt_Tablename: TcxTextEdit
      AlignWithMargins = True
      Left = 103
      Top = 204
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Properties.OnEditValueChanged = edt_TablenamePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TextColor = clWindow
      Style.TransparentBorder = False
      StyleDisabled.TextColor = clBtnHighlight
      TabOrder = 5
      Width = 775
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 22
      Top = 232
      Width = 856
      Height = 63
      Align = dalNone
      BarManager = brmgr_SQL
    end
    object cxTextEdit1: TcxTextEdit
      AlignWithMargins = True
      Left = 103
      Top = 302
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Style.HotTrack = False
      Style.TransparentBorder = False
      StyleDisabled.TextColor = clBtnHighlight
      TabOrder = 7
      Text = 'cxTextEdit1'
      Width = 775
    end
    object cxCheckBox1: TcxCheckBox
      AlignWithMargins = True
      Left = 786
      Top = 330
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Default NULL'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Transparent = True
    end
    object dxBarDockControl2: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 876
      Height = 63
      Align = dalNone
      BarManager = brmgr_SQL
    end
    object cmbbx_Datatype: TcxComboBox
      AlignWithMargins = True
      Left = 103
      Top = 330
      Hint = 'Bitte SQL-Statement w'#228'hlen'
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Properties.Items.Strings = (
        'int'
        'double'
        'char'
        'varchar'
        'date'
        'datetime'
        'time'
        'set'
        'enum')
      Style.HotTrack = False
      Style.TextColor = clWindow
      Style.TransparentBorder = False
      StyleDisabled.TextColor = clBtnHighlight
      TabOrder = 8
      Height = 21
      Width = 375
    end
    object cxCheckBox2: TcxCheckBox
      AlignWithMargins = True
      Left = 715
      Top = 330
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Autoinc'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Transparent = True
    end
    object edt_Nachkomma: TcxDBTextEdit
      AlignWithMargins = True
      Left = 668
      Top = 330
      Hint = 'Anzahl Nachkommastellen'
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      StyleDisabled.TextColor = clBtnHighlight
      TabOrder = 11
      Height = 21
      Width = 40
    end
    object cxTextEdit3: TcxDBTextEdit
      AlignWithMargins = True
      Left = 596
      Top = 330
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      StyleDisabled.TextColor = clBtnHighlight
      TabOrder = 10
      Height = 21
      Width = 40
    end
    object cxTextEdit2: TcxDBTextEdit
      AlignWithMargins = True
      Left = 526
      Top = 330
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      StyleDisabled.TextColor = clBtnHighlight
      TabOrder = 9
      Height = 21
      Width = 40
    end
    object mem_Statement: TcxMemo
      AlignWithMargins = True
      Left = 103
      Top = 531
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Height = 147
      Width = 775
    end
    object grd_Columns: TcxGrid
      Left = 22
      Top = 358
      Width = 856
      Height = 166
      TabOrder = 14
      object grd_ColumnsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object grd_ColumnsLevel1: TcxGridLevel
        GridView = grd_ColumnsDBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1000
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpbx_1date: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Datum:'
      Control = dtedt_Date
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 799
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 1
    end
    object grpbx_2Version: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Version:'
      Control = edt_Version
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 799
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpbx_3Beschreibung: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beschreibung:'
      Control = edt_Beschreibung
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 492
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = grpbx_4SQL
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'SQL:'
      Control = cmbbx_SQLStatement
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 799
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpbx_4SQL: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = grpbx_4SQL
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Tabelle:'
      Control = edt_Tablename
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 799
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = grpbx_4SQL
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 896
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = grpbx_4SQL
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Column:'
      Control = cxTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 495
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = grpbx_4SQL
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Datentyp:'
      Control = cmbbx_Datatype
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Gr'#246#223'e:'
      Control = cxTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'VK:'
      Control = cxTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'NK:'
      Control = edt_Nachkomma
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxCheckBox2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxCheckBox1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = grpbx_4SQL
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Columns
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 589
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object grpbx_5Statement: TdxLayoutItem
      Parent = grpbx_4SQL
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Statement:'
      Control = mem_Statement
      ControlOptions.OriginalHeight = 147
      ControlOptions.OriginalWidth = 494
      ControlOptions.ShowBorder = False
      Index = 6
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
    object tb_Main: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
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
    object tb_Sql: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 774
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_TableNew'
        end
        item
          Visible = True
          ItemName = 'btn_TableSave'
        end
        item
          Visible = True
          ItemName = 'btn_TableCancel'
        end
        item
          Visible = True
          ItemName = 'btn_TableDelete'
        end>
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
      Caption = 'Version speichern'
      Category = 0
      Hint = 'Version speichern'
      Visible = ivAlways
      OnClick = btn_SQLSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_SQLCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_SQLCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_TableNew: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_TableSave: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_TableCancel: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_TableDelete: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
  end
end
