object frm_PCM_Version: Tfrm_PCM_Version
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'PCM - Updategenerator: Version'
  ClientHeight = 659
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object sclbx_SQL: TcxScrollBox
    Left = 0
    Top = 58
    Width = 746
    Height = 601
    Align = alClient
    AutoScroll = False
    BorderStyle = cxcbsNone
    HorzScrollBar.Range = 0
    TabOrder = 0
    VertScrollBar.Range = 800
    object grpbx_1Date: TcxGroupBox
      Left = 0
      Top = 0
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 0
      Height = 35
      Width = 729
      object grpbx_2Date_Detail: TcxGroupBox
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
        Width = 725
        object lbl_Date: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Datum:'
          Transparent = True
          Height = 23
          Width = 90
        end
        object dtedt_Date: TcxDateEdit
          AlignWithMargins = True
          Left = 95
          Top = 2
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 628
        end
      end
    end
    object grpbx_2Version: TcxGroupBox
      Left = 0
      Top = 35
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 1
      Height = 35
      Width = 729
      object grpbx_3Version_Detail: TcxGroupBox
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
        Width = 725
        object edt_Version: TcxTextEdit
          AlignWithMargins = True
          Left = 95
          Top = 2
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 628
        end
        object lbl_Version: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Version:'
          Transparent = True
          Height = 23
          Width = 90
        end
      end
    end
    object grpbx_3Beschreibung: TcxGroupBox
      Left = 0
      Top = 70
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 2
      Height = 35
      Width = 729
      object grpbx_4Beschreibung_Detail: TcxGroupBox
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
        Width = 725
        object edt_Beschreibung: TcxTextEdit
          AlignWithMargins = True
          Left = 95
          Top = 2
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          TabOrder = 0
          Width = 628
        end
        object lbl_Beschreibung: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Beschreibung:'
          Transparent = True
          Height = 23
          Width = 90
        end
      end
    end
    object grpbx_4SQL: TcxGroupBox
      Left = 0
      Top = 105
      Align = alClient
      PanelStyle.Active = True
      TabOrder = 3
      Height = 544
      Width = 729
      object grpbx_4SQL_Detail_1: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 29
        Width = 725
        object cmbbx_SQLStatement: TcxComboBox
          AlignWithMargins = True
          Left = 95
          Top = 2
          Hint = 'Bitte SQL-Statement w'#228'hlen'
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.Items.Strings = (
            'CREATE TABLE IF NOT EXISTS'
            'ALTER TABLE'
            'INSERT INTO'
            'UPDATE'
            'DELETE FROM')
          Properties.OnChange = cmbbx_SQLStatementPropertiesChange
          Style.TextColor = clWindow
          Style.TransparentBorder = True
          StyleDisabled.TextColor = clBtnHighlight
          TabOrder = 0
          Width = 628
        end
        object cxLabel2: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'SQL:'
          Transparent = True
          Height = 21
          Width = 90
        end
      end
      object grpbx_4SQL_Detail_2: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 31
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Visible = False
        Height = 29
        Width = 725
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 5
          Top = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Tabelle:'
          Transparent = True
          Height = 21
          Width = 90
        end
        object edt_Tablename: TcxTextEdit
          AlignWithMargins = True
          Left = 95
          Top = 2
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Properties.OnEditValueChanged = edt_TablenamePropertiesEditValueChanged
          Style.TextColor = clWindow
          Style.TransparentBorder = True
          StyleDisabled.TextColor = clBtnHighlight
          TabOrder = 0
          Width = 628
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 2
        Top = 60
        Width = 725
        Height = 58
        Align = dalTop
        BarManager = brmgr_SQL
      end
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 118
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 3
        Visible = False
        Height = 29
        Width = 725
        object cxLabel3: TcxLabel
          AlignWithMargins = True
          Left = 2
          Top = 4
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Column:'
          Transparent = True
          Height = 21
          Width = 90
        end
        object cxTextEdit1: TcxTextEdit
          AlignWithMargins = True
          Left = 92
          Top = 2
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          StyleDisabled.TextColor = clBtnHighlight
          TabOrder = 1
          Text = 'cxTextEdit1'
          Width = 631
        end
      end
      object cxGroupBox1: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 147
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 4
        Height = 29
        Width = 725
        object cmbbx_Datatype: TcxComboBox
          AlignWithMargins = True
          Left = 92
          Top = 2
          Hint = 'Bitte SQL-Statement w'#228'hlen'
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
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
          Properties.OnChange = cmbbx_SQLStatementPropertiesChange
          Style.TextColor = clWindow
          Style.TransparentBorder = True
          StyleDisabled.TextColor = clBtnHighlight
          TabOrder = 0
          Width = 100
        end
        object lbl_Datatype: TcxLabel
          AlignWithMargins = True
          Left = 2
          Top = 4
          Margins.Left = 0
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Datentyp:'
          Transparent = True
          Height = 21
          Width = 90
        end
        object cxLabel5: TcxLabel
          AlignWithMargins = True
          Left = 196
          Top = 4
          Margins.Left = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'Gr'#246#223'e:'
          Transparent = True
          Height = 21
          Width = 45
        end
        object cxLabel6: TcxLabel
          AlignWithMargins = True
          Left = 275
          Top = 4
          Margins.Left = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'VK:'
          Transparent = True
          Height = 21
          Width = 25
        end
        object lbl_Nachkomma: TcxLabel
          AlignWithMargins = True
          Left = 334
          Top = 4
          Hint = 'Anzahl Nachkommastellen'
          Margins.Left = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 2
          Align = alLeft
          AutoSize = False
          Caption = 'NK:'
          Transparent = True
          Height = 21
          Width = 25
        end
        object cxCheckBox1: TcxCheckBox
          AlignWithMargins = True
          Left = 459
          Top = 2
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Default NULL'
          Style.TransparentBorder = False
          TabOrder = 8
          Transparent = True
        end
        object cxCheckBox2: TcxCheckBox
          AlignWithMargins = True
          Left = 393
          Top = 2
          Margins.Left = 4
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = 'Autoinc'
          Style.TransparentBorder = False
          TabOrder = 9
          Transparent = True
        end
        object edt_Nachkomma: TcxDBTextEdit
          AlignWithMargins = True
          Left = 359
          Top = 2
          Hint = 'Anzahl Nachkommastellen'
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          StyleDisabled.TextColor = clBtnHighlight
          TabOrder = 7
          Width = 30
        end
        object cxTextEdit3: TcxDBTextEdit
          AlignWithMargins = True
          Left = 300
          Top = 2
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          StyleDisabled.TextColor = clBtnHighlight
          TabOrder = 5
          Width = 30
        end
        object cxTextEdit2: TcxDBTextEdit
          AlignWithMargins = True
          Left = 241
          Top = 2
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          StyleDisabled.TextColor = clBtnHighlight
          TabOrder = 3
          Width = 30
        end
      end
      object grd_Columns: TcxGrid
        Left = 2
        Top = 176
        Width = 725
        Height = 366
        Align = alClient
        TabOrder = 5
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
    end
    object grpbx_5Statement: TcxGroupBox
      Left = 0
      Top = 649
      Align = alBottom
      PanelStyle.Active = True
      TabOrder = 4
      Height = 151
      Width = 729
      object lbl_Statement: TcxLabel
        AlignWithMargins = True
        Left = 7
        Top = 4
        Margins.Left = 5
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        AutoSize = False
        Caption = 'Statement:'
        Transparent = True
        Height = 143
        Width = 90
      end
      object mem_Statement: TcxMemo
        AlignWithMargins = True
        Left = 97
        Top = 2
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Properties.ScrollBars = ssVertical
        TabOrder = 0
        Height = 147
        Width = 630
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
