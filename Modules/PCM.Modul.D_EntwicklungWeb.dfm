object frm_Ticket: Tfrm_Ticket
  Left = 0
  Top = 0
  Caption = 'PCM - DEV - Workspace'
  ClientHeight = 700
  ClientWidth = 1400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1400
    Height = 700
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = imglst_16x16
    object brdckCtrl_Jira: TdxBarDockControl
      Left = 19
      Top = 45
      Width = 1358
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
    end
    object brdckCtrl_JiraBrowser: TdxBarDockControl
      Left = 28
      Top = 148
      Width = 1336
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
    end
    object cmbbx_Desktop: TcxComboBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Visible = False
      Width = 1336
    end
    object Chatcrtl_Desktop: TdxChartControl
      Left = 10000
      Top = 10000
      Width = 1336
      Height = 491
      BorderStyle = cxcbsNone
      Legend.Title.Visible = False
      Titles = <>
      Visible = False
      object dxChartSimpleDiagram1: TdxChartSimpleDiagram
        Title.Visible = False
        Layout = Horizontal
        object dxChartSimpleSeries1: TdxChartSimpleSeries
          Caption = 'Wert'
          DataBindingType = 'DB'
          DataBinding.DataSource = dm_PCM.ds_ChartDesktop
          DataBinding.ArgumentField.FieldName = 'offen'
          DataBinding.ValueField.FieldName = 'Wert'
          ViewType = 'Pie'
          View.SweepDirection = Counterclockwise
          View.ValueLabels.LineLength = 10.000000000000000000
          View.ValueLabels.Visible = True
          View.ValueLabels.Position = Outside
          SortBy = Value
          ColorSchemeIndex = 0
        end
      end
    end
    object cmbbx_App: TcxComboBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Visible = False
      Width = 1064
    end
    object Chatcrtl_APP: TdxChartControl
      Left = 10000
      Top = 10000
      Width = 1064
      Height = 547
      BorderStyle = cxcbsNone
      Legend.Title.Visible = False
      Titles = <>
      Visible = False
      object dxChartSimpleDiagram2: TdxChartSimpleDiagram
        Title.Visible = False
        Layout = Horizontal
        object dxChartSimpleSeries2: TdxChartSimpleSeries
          Caption = 'Wert'
          DataBindingType = 'DB'
          DataBinding.DataSource = dm_PCM.ds_ChartApp
          DataBinding.ArgumentField.FieldName = 'offen'
          DataBinding.ValueField.FieldName = 'Wert'
          ViewType = 'Pie'
          View.SweepDirection = Counterclockwise
          View.ValueLabels.LineLength = 10.000000000000000000
          View.ValueLabels.Visible = True
          View.ValueLabels.Position = Outside
          SortBy = Value
          ColorSchemeIndex = 0
        end
      end
    end
    object grd_Jira: TcxGrid
      Left = 10000
      Top = 10000
      Width = 836
      Height = 200
      TabOrder = 9
      Visible = False
      object grdDBTblView_Jira: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_JiraCellDblClick
        DataController.DataSource = ds_Tickets_priv
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        object grdDBTblView_JiraID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_JiraEpic: TcxGridDBColumn
          DataBinding.FieldName = 'Epic'
          DataBinding.IsNullValueType = True
          Width = 70
        end
        object grdDBTblView_JiraTicketNr: TcxGridDBColumn
          Caption = 'Ticket-Nr.'
          DataBinding.FieldName = 'Ticket_Nr'
          DataBinding.IsNullValueType = True
          Width = 70
        end
        object grdDBTblView_JiraBetreff: TcxGridDBColumn
          DataBinding.FieldName = 'Betreff'
          DataBinding.IsNullValueType = True
          Width = 400
        end
        object grdDBTblView_JiraNr: TcxGridDBColumn
          DataBinding.FieldName = 'Nr'
          DataBinding.IsNullValueType = True
          Visible = False
          SortIndex = 0
          SortOrder = soAscending
          VisibleForCustomization = False
        end
        object grdDBTblView_JiraApplikation: TcxGridDBColumn
          Caption = 'Applikation'
          DataBinding.FieldName = 'Land'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_JiraPrio: TcxGridDBColumn
          Caption = 'Priorit'#228't'
          DataBinding.FieldName = 'ID_tickets_priority'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'Blocker'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Kritisch'
              ImageIndex = 1
              Value = 2
            end
            item
              Description = 'Schwerwiegend'
              ImageIndex = 2
              Value = 3
            end
            item
              Description = 'Geringf'#252'gig'
              ImageIndex = 3
              Value = 4
            end
            item
              Description = 'Unwesentlich'
              ImageIndex = 4
              Value = 5
            end
            item
              Description = 'Low'
              ImageIndex = 5
              Value = 9
            end
            item
              Description = 'Medium'
              ImageIndex = 6
              Value = 10
            end
            item
              Description = 'High'
              ImageIndex = 7
              Value = 11
            end>
          Width = 120
        end
        object grdDBTblView_JiraStichwort: TcxGridDBColumn
          DataBinding.FieldName = 'Stichwort'
          DataBinding.IsNullValueType = True
          Width = 80
        end
        object grdDBTblView_JiraStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          DataBinding.IsNullValueType = True
          Width = 70
        end
        object grdDBTblView_JiraType: TcxGridDBColumn
          DataBinding.FieldName = 'Type'
          DataBinding.IsNullValueType = True
          Width = 80
        end
        object grdDBTblView_JiraFixVersion: TcxGridDBColumn
          DataBinding.FieldName = 'FixVersion'
          DataBinding.IsNullValueType = True
          Width = 80
        end
        object grdDBTblView_JiraBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          DataBinding.IsNullValueType = True
          OnGetCellHint = grdDBTblView_JiraBeschreibungGetCellHint
          Width = 100
        end
        object grdDBTblView_JiraSprint: TcxGridDBColumn
          DataBinding.FieldName = 'Sprint'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_JiraAssignee: TcxGridDBColumn
          DataBinding.FieldName = 'Assignee'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_JiraBoard: TcxGridDBColumn
          Caption = 'Board'
          DataBinding.FieldName = 'KDNR'
          DataBinding.IsNullValueType = True
          Width = 100
        end
      end
      object grdlvl_Jira: TcxGridLevel
        GridView = grdDBTblView_Jira
      end
    end
    object cxDBImageComboBox2: TcxDBImageComboBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 8
      Margins.Top = 1
      Margins.Right = 8
      Margins.Bottom = 1
      AutoSize = False
      DataBinding.DataField = 'ID_tickets_priority'
      DataBinding.DataSource = ds_Tickets_priv
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Blocker'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Kritisch'
          ImageIndex = 1
          Value = 2
        end
        item
          Description = 'Schwerwiegend'
          ImageIndex = 2
          Value = 3
        end
        item
          Description = 'Geringf'#252'gig'
          ImageIndex = 3
          Value = 4
        end
        item
          Description = 'Unwesentlich'
          ImageIndex = 4
          Value = 5
        end
        item
          Description = 'Low'
          ImageIndex = 5
          Value = 9
        end
        item
          Description = 'Medium'
          ImageIndex = 6
          Value = 10
        end
        item
          Description = 'High'
          ImageIndex = 7
          Value = 11
        end>
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Visible = False
      Height = 19
      Width = 304
    end
    object cxDBTextEdit18: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 8
      Margins.Top = 1
      Margins.Right = 8
      Margins.Bottom = 1
      DataBinding.DataField = 'Land'
      DataBinding.DataSource = ds_Tickets_priv
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Visible = False
      Width = 304
    end
    object cxDBTextEdit19: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 8
      Margins.Top = 1
      Margins.Right = 8
      Margins.Bottom = 1
      DataBinding.DataField = 'Sprint'
      DataBinding.DataSource = ds_Tickets_priv
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Visible = False
      Width = 304
    end
    object cxDBTextEdit21: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 8
      Margins.Top = 1
      Margins.Right = 8
      Margins.Bottom = 1
      DataBinding.DataField = 'Stichwort'
      DataBinding.DataSource = ds_Tickets_priv
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Visible = False
      Width = 304
    end
    object cxRichEdit1: TcxRichEdit
      Left = 10000
      Top = 10000
      Properties.AutoURLDetect = True
      Properties.ReadOnly = True
      Lines.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = False
      StyleDisabled.BorderStyle = ebsNone
      StyleFocused.BorderStyle = ebsNone
      StyleHot.BorderStyle = ebsNone
      TabOrder = 14
      Visible = False
      Height = 14
      Width = 365
    end
    object cxDBTextEdit22: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 8
      Margins.Top = 1
      Margins.Right = 8
      Margins.Bottom = 1
      DataBinding.DataField = 'FixVersion'
      DataBinding.DataSource = ds_Tickets_priv
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Visible = False
      Width = 346
    end
    object cxDBTextEdit23: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 8
      Margins.Top = 1
      Margins.Right = 8
      Margins.Bottom = 1
      DataBinding.DataField = 'Assignee'
      DataBinding.DataSource = ds_Tickets_priv
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Visible = False
      Width = 346
    end
    object brdckCtrl_Azure: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1358
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
      Visible = False
    end
    object brdckCtrl_AzureMax: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1336
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
      Visible = False
    end
    object grd_Azure: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1336
      Height = 516
      TabOrder = 21
      Visible = False
      object grd_tblView_Azure: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Azure
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Ticket-Nr.'
          DataBinding.FieldName = 'Nr'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 70
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Ticket Jira'
          DataBinding.FieldName = 'Ticket_Nr'
          DataBinding.IsNullValueType = True
          Width = 70
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          DataBinding.IsNullValueType = True
          Width = 80
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'Betreff'
          DataBinding.IsNullValueType = True
          Width = 350
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'Type'
          DataBinding.IsNullValueType = True
          Width = 60
        end
        object cxGridDBColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'Epic'
          DataBinding.IsNullValueType = True
          Width = 60
        end
        object cxGridDBColumn9: TcxGridDBColumn
          Caption = 'Priorit'#228't'
          DataBinding.FieldName = 'Prio'
          DataBinding.IsNullValueType = True
        end
        object cxGridDBColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'Stichwort'
          DataBinding.IsNullValueType = True
          Width = 70
        end
        object cxGridDBColumn13: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxMemoProperties'
          Width = 90
        end
        object cxGridDBColumn14: TcxGridDBColumn
          DataBinding.FieldName = 'Zugewiesen'
          DataBinding.IsNullValueType = True
          Width = 80
        end
        object cxGridDBColumn15: TcxGridDBColumn
          DataBinding.FieldName = 'Board'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 100
        end
      end
      object grdlvl_Azure: TcxGridLevel
        GridView = grd_tblView_Azure
      end
    end
    object brdckCtrl_Confluence: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1358
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
      Visible = False
    end
    object brdckCtrl_Swagger: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1358
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
      Visible = False
    end
    object brdckCtrl_PCMAPPS: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1358
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
      Visible = False
    end
    object brdckCtrl_AI: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1358
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
      Visible = False
    end
    object brdckCtrl_Github: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1358
      Height = 63
      Align = dalNone
      BarManager = bmgr_main
      Visible = False
    end
    object stbr_main: TdxStatusBar
      Left = 28
      Top = 644
      Width = 1336
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'Board:'
          Width = 300
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'aktuelles Board:'
          Width = 300
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'Tickets:'
          Width = 300
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Text = 'aktuelles Ticket:'
          Width = 300
        end>
      PaintStyle = stpsUseLookAndFeel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnl_Github: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 35
      Visible = False
      Height = 563
      Width = 1358
    end
    object pnl_AI: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 33
      Visible = False
      Height = 563
      Width = 1358
    end
    object pnl_BrowserPCMApps: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 30
      Visible = False
      Height = 272
      Width = 1358
    end
    object pnl_pDevTools: TcxGroupBox
      Left = 10000
      Top = 10000
      Caption = 'PCMApps'
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 31
      Visible = False
      OnResize = pnl_PDevtoolsResize
      Height = 271
      Width = 1358
    end
    object pnl_ADevTools: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 20
      Visible = False
      OnResize = pnl_ADevToolsResize
      Height = 213
      Width = 1336
    end
    object pnl_BrowserAzurePriv: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 19
      Visible = False
      Height = 214
      Width = 1336
    end
    object pnl_BrowserConfluence: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 23
      Visible = False
      Height = 272
      Width = 1358
    end
    object pnl_CDevTools: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 24
      Visible = False
      OnResize = pnl_CDevToolsResize
      Height = 271
      Width = 1358
    end
    object pnl_SDevtools: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 28
      Visible = False
      OnResize = pnl_SDevtoolsResize
      Height = 174
      Width = 1358
    end
    object pnl_SNotepad: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 27
      Visible = False
      OnResize = pnl_SNotepadResize
      Height = 175
      Width = 1358
    end
    object pnl_BrowserSwagger: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 26
      Visible = False
      Height = 174
      Width = 1358
    end
    object pnl_BrowserJiraPriv: TcxGroupBox
      Left = 28
      Top = 217
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 201
      Width = 1336
    end
    object pnl_JDevTools: TcxGroupBox
      Left = 28
      Top = 438
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 3
      OnResize = pnl_JDevToolsResize
      Height = 200
      Width = 1336
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object pc_tickets: TdxLayoutGroup
      Parent = dxLayoutGroup54
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = pc_TicketsChange
      Index = 0
    end
    object ts_Jira: TdxLayoutGroup
      Parent = pc_tickets
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 19
      CaptionOptions.Text = 'Jira - Tickets'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Jira'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Jira
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1126
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object pc_Jira: TdxLayoutGroup
      Parent = lagrp_Jira
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = pc_Jira
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Jira-Browser'
      ItemIndex = 4
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_JiraBrowser'
      CaptionOptions.Visible = False
      Control = brdckCtrl_JiraBrowser
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt_J: TdxLayoutSplitterItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = pc_Jira
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #220'bersicht Desktop Board'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cmbbx_Desktop'
      CaptionOptions.Visible = False
      Control = cmbbx_Desktop
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1106
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Chatcrtl_Desktop'
      CaptionOptions.Visible = False
      Control = Chatcrtl_Desktop
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1118
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = pc_Jira
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #220'bersicht Mobile Board'
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cmbbx_App'
      CaptionOptions.Visible = False
      Control = cmbbx_App
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1106
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Chatcrtl_APP'
      CaptionOptions.Visible = False
      Control = Chatcrtl_APP
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1118
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = pc_Jira
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Details'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'grd_Jira'
      CaptionOptions.Visible = False
      Control = grd_Jira
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 1118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object ts_Azure: TdxLayoutGroup
      Parent = pc_tickets
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 20
      CaptionOptions.Text = 'Azure - Tickets'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itmbrdckCtrl_Azure: TdxLayoutItem
      Parent = lagrp_Azure
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Azure'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Azure
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1126
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_AzureTab: TdxLayoutGroup
      Parent = lagrp_Azure
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object lagrp_AzureBrowser: TdxLayoutGroup
      Parent = lagrp_AzureTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Azure-Browser'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object itmbrdckCtrl_AzureMax: TdxLayoutItem
      Parent = lagrp_AzureBrowser
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_AzureMax'
      CaptionOptions.Visible = False
      Control = brdckCtrl_AzureMax
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt_A: TdxLayoutSplitterItem
      Parent = lagrp_AzureBrowser
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object lagrp_AzureGrid: TdxLayoutGroup
      Parent = lagrp_AzureTab
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Details'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object itmgrd_Azure: TdxLayoutItem
      Parent = lagrp_AzureGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Azure'
      CaptionOptions.Visible = False
      Control = grd_Azure
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 1118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object ts_Confluence: TdxLayoutGroup
      Parent = pc_tickets
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 22
      CaptionOptions.Text = 'Confluence'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lagrp_Confluence: TdxLayoutGroup
      Parent = ts_Confluence
      AlignHorz = ahClient
      AlignVert = avClient
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object itmbrdckCtrl_Confluence: TdxLayoutItem
      Parent = lagrp_Confluence
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Confluence'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Confluence
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object ts_RESTAPI: TdxLayoutGroup
      Parent = pc_tickets
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 23
      CaptionOptions.Text = 'PCM - RestAPI'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object itmbrdckCtrl_Swagger: TdxLayoutItem
      Parent = lagrp_RestAPI
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Swagger'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Swagger
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt_sNp: TdxLayoutSplitterItem
      Parent = lagrp_RestAPI
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object splt_S: TdxLayoutSplitterItem
      Parent = lagrp_RestAPI
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 4
    end
    object ts_PCMApps: TdxLayoutGroup
      Parent = pc_tickets
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'PCM-APPS'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object itmbrdckCtrl_PCMAPPS: TdxLayoutItem
      Parent = lagrp_PCMAPPS
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_PCMAPPS'
      CaptionOptions.Visible = False
      Control = brdckCtrl_PCMAPPS
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object splt_P: TdxLayoutSplitterItem
      Parent = lagrp_PCMAPPS
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 2
    end
    object ts_Perplexity: TdxLayoutGroup
      Parent = pc_tickets
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 24
      CaptionOptions.Text = 'Perplexity AI'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lagrp_Perplexity: TdxLayoutGroup
      Parent = ts_Perplexity
      AlignHorz = ahClient
      AlignVert = avClient
      ShowBorder = False
      Index = 0
    end
    object itmbrdckCtrl_AI: TdxLayoutItem
      Parent = lagrp_Perplexity
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_AI'
      CaptionOptions.Visible = False
      Control = brdckCtrl_AI
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object ts_Github: TdxLayoutGroup
      Parent = pc_tickets
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 25
      CaptionOptions.Text = 'Github'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object lagrp_Github: TdxLayoutGroup
      Parent = ts_Github
      AlignHorz = ahClient
      AlignVert = avClient
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object itmbrdckCtrl_Github: TdxLayoutItem
      Parent = lagrp_Github
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Github'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Github
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itmstbr_main: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'stbr_main'
      CaptionOptions.Visible = False
      Control = stbr_main
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 1134
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup54: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object itmpnl_Github: TdxLayoutItem
      Parent = lagrp_Github
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_Github
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmpnl_AI: TdxLayoutItem
      Parent = lagrp_Perplexity
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_AI
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmpnl_BrowserPCMApps: TdxLayoutItem
      Parent = lagrp_PCMAPPS
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_BrowserPCMApps
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmpnl_pDevTools: TdxLayoutItem
      Parent = lagrp_PCMAPPS
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_pDevTools
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_RestAPI: TdxLayoutGroup
      Parent = ts_RESTAPI
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object itmpnl_SNotepad: TdxLayoutItem
      Parent = lagrp_RestAPI
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_SNotepad
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itmpnl_BrowserSwagger: TdxLayoutItem
      Parent = lagrp_RestAPI
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_BrowserSwagger
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmpnl_SDevtools: TdxLayoutItem
      Parent = lagrp_RestAPI
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_SDevtools
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lagrp_PCMAPPS: TdxLayoutGroup
      Parent = ts_PCMApps
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object itmpnl_BrowserConfluence: TdxLayoutItem
      Parent = lagrp_Confluence
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_BrowserConfluence
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmpnl_CDevTools: TdxLayoutItem
      Parent = lagrp_Confluence
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_CDevTools
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object splt_C: TdxLayoutSplitterItem
      Parent = lagrp_Confluence
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 2
    end
    object lagrp_Azure: TdxLayoutGroup
      Parent = ts_Azure
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object itmpnl_BrowserAzurePriv: TdxLayoutItem
      Parent = lagrp_AzureBrowser
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_BrowserAzurePriv
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmpnl_ADevTools: TdxLayoutItem
      Parent = lagrp_AzureBrowser
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_ADevTools
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1188
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_Jira: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object itmpnl_BrowserJiraPriv: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_BrowserJiraPriv
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1047
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmpnl_JDevTools: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_JDevTools
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 2294
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object grpbx_Ticketspriv: TdxLayoutGroup
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Ticketdetails'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 6
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Details'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = grpbx_Ticketspriv
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'Label'
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = grpbx_Ticketspriv
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'Prorit'#228't:'
      Control = cxDBImageComboBox2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 525
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = grpbx_Ticketspriv
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'Applikation:'
      Control = cxDBTextEdit18
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 525
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = grpbx_Ticketspriv
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'Stichwort'
      Control = cxDBTextEdit21
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 532
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = grpbx_Ticketspriv
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'Sprint:'
      Control = cxDBTextEdit19
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 549
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = grpbx_Ticketspriv
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'Beschreibung:'
      Index = 5
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = grpbx_Ticketspriv
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxRichEdit1
      ControlOptions.OriginalHeight = 14
      ControlOptions.OriginalWidth = 582
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'L'#246'sungsversion:'
      Control = cxDBTextEdit22
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 299
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Bottom = 4
      Offsets.Top = 4
      CaptionOptions.Text = 'Autor:'
      Control = cxDBTextEdit23
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 346
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = ts_Jira
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
  end
  object bmgr_main: TdxBarManager
    AllowReset = False
    AutoDockColor = False
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
    DockColor = clBtnFace
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 592
    Top = 264
    PixelsPerInch = 96
    object tb_Azure: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_Azure
      DockedDockControl = brdckCtrl_Azure
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1234
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AReadTickets'
        end
        item
          Visible = True
          ItemName = 'btn_ABoard'
        end
        item
          Visible = True
          ItemName = 'btn_ADevTools'
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
    object tb_Jira: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = brdckCtrl_Jira
      DockedDockControl = brdckCtrl_Jira
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_JReadTickets'
        end
        item
          Visible = True
          ItemName = 'btn_JBoard'
        end
        item
          Visible = True
          ItemName = 'btn_JFilter'
        end
        item
          Visible = True
          ItemName = 'btn_JDevtools'
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
    object tb_JiraMax: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = brdckCtrl_JiraBrowser
      DockedDockControl = brdckCtrl_JiraBrowser
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_JMinMaxBrowserPriv'
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
    object tb_AzureMax: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = brdckCtrl_AzureMax
      DockedDockControl = brdckCtrl_AzureMax
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AMinMaxBrowserPriv'
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
    object tb_Confluence: TdxBar
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockControl = brdckCtrl_Confluence
      DockedDockControl = brdckCtrl_Confluence
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CMinMaxBrowserPriv'
        end
        item
          Visible = True
          ItemName = 'btn_CDevTools'
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
    object tb_Swagger: TdxBar
      Caption = 'Custom 6'
      CaptionButtons = <>
      DockControl = brdckCtrl_Swagger
      DockedDockControl = brdckCtrl_Swagger
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SMinMaxBrowserPriv'
        end
        item
          Visible = True
          ItemName = 'btn_SReload'
        end
        item
          Visible = True
          ItemName = 'btn_SAPI'
        end
        item
          Visible = True
          ItemName = 'btn_SSwaggerInit'
        end
        item
          Visible = True
          ItemName = 'btn_SSwaggerUI'
        end
        item
          Visible = True
          ItemName = 'btn_SCloseNotepad'
        end
        item
          Visible = True
          ItemName = 'btn_SDevTools'
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
    object tb_PCMApps: TdxBar
      Caption = 'Custom 7'
      CaptionButtons = <>
      DockControl = brdckCtrl_PCMAPPS
      DockedDockControl = brdckCtrl_PCMAPPS
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PMinMaxBrowserPriv'
        end
        item
          Visible = True
          ItemName = 'btn_PBoard'
        end
        item
          Visible = True
          ItemName = 'btn_PWebsiteEdit'
        end
        item
          Visible = True
          ItemName = 'btn_PWebsiteConfig'
        end
        item
          Visible = True
          ItemName = 'btn_pDevtools'
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
    object tb_Github: TdxBar
      Caption = 'Custom 8'
      CaptionButtons = <>
      DockControl = brdckCtrl_Github
      DockedDockControl = brdckCtrl_Github
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1168
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_GitMinMaxBrowserPriv'
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
    object tb_AI: TdxBar
      Caption = 'Custom 9'
      CaptionButtons = <>
      DockControl = brdckCtrl_AI
      DockedDockControl = brdckCtrl_AI
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1168
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AIMinMaxBrowser'
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
    object btn_AReadTickets: TdxBarLargeButton
      Caption = 'Synchronisieren'
      Category = 0
      Hint = 'Synchronisieren'
      Visible = ivAlways
      OnClick = btn_AReadTicketsClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 125
      SyncImageIndex = False
      ImageIndex = 0
    end
    object btn_ABoard: TdxBarLargeButton
      Caption = 'Azure-Board'
      Category = 0
      Hint = 'Azure-Board'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000B744558745469746C6500486F6D653B1E746438000000
        EB49444154785EEDD3BD0DC230104771A2CCC508D067010660842813F0215121
        216006188079686811E6288C907CE445E793D2B8788D25FBFF6B3C09218CDA17
        D0759DA5EA93E19E0BA0968ED28E110CB08C9FA5F089110CC818D711B3F61A7E
        2380715C47F801787C231D3484001EF9001EAFA45A43CCDBCB3422CC001E8F40
        463060F8F83AFD768C2040E63823089039CE08A90280C7382300C0E32E081DC0
        E39E080D7082714FC456032CA45704C0B80511014FA9D10011B192C29F8140C1
        DDBDD4E037EC03DC6FCBBE00A07FC3A40848CE0702B43793732BA0000A007207
        9872011480770018AF027803B71C994C215DB42C0000000049454E44AE426082}
      OnClick = btn_ABoardClick
      AutoGrayScale = False
      Width = 125
    end
    object btn_JReadTickets: TdxBarLargeButton
      Caption = 'Aktualisieren'
      Category = 0
      Hint = 'Aktualisieren'
      Visible = ivAlways
      OnClick = btn_JReadTicketsClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 125
    end
    object btn_JBoard: TdxBarLargeButton
      Caption = 'Jira-Board'
      Category = 0
      Hint = 'Jira-Board'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000B744558745469746C6500486F6D653B1E746438000000
        EB49444154785EEDD3BD0DC230104771A2CCC508D067010660842813F0215121
        216006188079686811E6288C907CE445E793D2B8788D25FBFF6B3C09218CDA17
        D0759DA5EA93E19E0BA0968ED28E110CB08C9FA5F089110CC818D711B3F61A7E
        2380715C47F801787C231D3484001EF9001EAFA45A43CCDBCB3422CC001E8F40
        463060F8F83AFD768C2040E63823089039CE08A90280C7382300C0E32E081DC0
        E39E080D7082714FC456032CA45704C0B80511014FA9D10011B192C29F8140C1
        DDBDD4E037EC03DC6FCBBE00A07FC3A40848CE0702B43793732BA0000A007207
        9872011480770018AF027803B71C994C215DB42C0000000049454E44AE426082}
      OnClick = btn_JBoardClick
      AutoGrayScale = False
      LargeImageIndex = 83
      Width = 125
    end
    object btn_JMinMaxBrowserPriv: TdxBarLargeButton
      Caption = 'Maximieren'
      Category = 0
      Hint = 'Maximieren'
      Visible = ivAlways
      AllowAllUp = True
      OnClick = btn_JMinMaxBrowserPrivClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
    end
    object btn_JFilter: TdxBarLargeButton
      Caption = 'erledigte Tickets ausblenden'
      Category = 0
      Hint = 'erledigte Tickets ausblenden'
      Visible = ivAlways
      OnClick = btn_JFilterClick
      AutoGrayScale = False
      LargeImageIndex = 38
    end
    object btn_AMinMaxBrowserPriv: TdxBarLargeButton
      Caption = 'Maximieren'
      Category = 0
      Hint = 'Maximieren'
      Visible = ivAlways
      OnClick = btn_AMinMaxBrowserPrivClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
    end
    object btn_CMinMaxBrowserPriv: TdxBarLargeButton
      Caption = 'Maximieren'
      Category = 0
      Hint = 'Maximieren'
      Visible = ivAlways
      OnClick = btn_CMinMaxBrowserPrivClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
    end
    object btn_SMinMaxBrowserPriv: TdxBarLargeButton
      Caption = 'Maximieren'
      Category = 0
      Hint = 'Maximieren'
      Visible = ivAlways
      OnClick = btn_SMinMaxBrowserPrivClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
    end
    object btn_SAPI: TdxBarLargeButton
      Caption = 'API'
      Category = 0
      Hint = 'API'
      Visible = ivAlways
      OnClick = btn_SAPIClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_PMinMaxBrowserPriv: TdxBarLargeButton
      Caption = 'Maximieren'
      Category = 0
      Hint = 'Maximieren'
      Visible = ivAlways
      OnClick = btn_PMinMaxBrowserPrivClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
    end
    object btn_PWebsiteEdit: TdxBarLargeButton
      Caption = 'Webseite bearbeiten'
      Category = 0
      Hint = 'Webseite bearbeiten'
      Visible = ivAlways
      OnClick = btn_PWebsiteEditClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_PWebsiteConfig: TdxBarLargeButton
      Caption = 'Webseite verwalten'
      Category = 0
      Hint = 'Webseite verwalten'
      Visible = ivAlways
      OnClick = btn_PWebsiteConfigClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_JDevtools: TdxBarLargeButton
      Align = iaRight
      Caption = 'Devtools anzeigen'
      Category = 0
      Hint = 'Devtools anzeigen'
      Visible = ivAlways
      OnClick = btn_JDevtoolsClick
      AutoGrayScale = False
      LargeImageIndex = 130
      Width = 125
    end
    object btn_ADevTools: TdxBarLargeButton
      Align = iaRight
      Caption = 'Devtools anzeigen'
      Category = 0
      Hint = 'Devtools anzeigen'
      Visible = ivAlways
      OnClick = btn_ADevToolsClick
      AutoGrayScale = False
      LargeImageIndex = 130
      Width = 125
    end
    object btn_CDevTools: TdxBarLargeButton
      Align = iaRight
      Caption = 'Devtools anzeigen'
      Category = 0
      Hint = 'Devtools anzeigen'
      Visible = ivAlways
      OnClick = btn_CDevToolsClick
      AutoGrayScale = False
      LargeImageIndex = 130
      Width = 125
    end
    object btn_SDevTools: TdxBarLargeButton
      Align = iaRight
      Caption = 'Devtools anzeigen'
      Category = 0
      Hint = 'Devtools anzeigen'
      Visible = ivAlways
      OnClick = btn_SDevToolsClick
      AutoGrayScale = False
      LargeImageIndex = 130
      Width = 125
    end
    object btn_pDevtools: TdxBarLargeButton
      Align = iaRight
      Caption = 'Devtools anzeigen'
      Category = 0
      Hint = 'Devtools anzeigen'
      Visible = ivAlways
      OnClick = btn_pDevtoolsClick
      AutoGrayScale = False
      LargeImageIndex = 130
      Width = 125
    end
    object btn_SSwaggerInit: TdxBarLargeButton
      Caption = 'swagger-initializer'
      Category = 0
      Hint = 'swagger-initializer'
      Visible = ivAlways
      OnClick = btn_SSwaggerInitClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_PBoard: TdxBarLargeButton
      Caption = 'Homepage'
      Category = 0
      Hint = 'Homepage'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000B744558745469746C6500486F6D653B1E746438000000
        EB49444154785EEDD3BD0DC230104771A2CCC508D067010660842813F0215121
        216006188079686811E6288C907CE445E793D2B8788D25FBFF6B3C09218CDA17
        D0759DA5EA93E19E0BA0968ED28E110CB08C9FA5F089110CC818D711B3F61A7E
        2380715C47F801787C231D3484001EF9001EAFA45A43CCDBCB3422CC001E8F40
        463060F8F83AFD768C2040E63823089039CE08A90280C7382300C0E32E081DC0
        E39E080D7082714FC456032CA45704C0B80511014FA9D10011B192C29F8140C1
        DDBDD4E037EC03DC6FCBBE00A07FC3A40848CE0702B43793732BA0000A007207
        9872011480770018AF027803B71C994C215DB42C0000000049454E44AE426082}
      OnClick = btn_PBoardClick
      AutoGrayScale = False
      LargeImageIndex = 83
      Width = 125
    end
    object btn_SReload: TdxBarLargeButton
      Caption = 'Neu Laden'
      Category = 0
      Hint = 'Neu Laden'
      Visible = ivAlways
      OnClick = btn_SReloadClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 125
    end
    object btn_SCloseNotepad: TdxBarLargeButton
      Align = iaRight
      Caption = 'Notepad++ schlie'#223'en'
      Category = 0
      Hint = 'Notepad++ schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_SCloseNotepadClick
      AutoGrayScale = False
      LargeImageIndex = 131
      Width = 125
    end
    object btn_SSwaggerUI: TdxBarLargeButton
      Caption = 'swagger-ui-bundle'
      Category = 0
      Hint = 'swagger-ui-bundle'
      Visible = ivAlways
      OnClick = btn_SSwaggerUIClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_AIMinMaxBrowser: TdxBarLargeButton
      Caption = 'Maximieren'
      Category = 0
      Hint = 'Maximieren'
      Visible = ivAlways
      OnClick = btn_AIMinMaxBrowserClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
    end
    object btn_GitMinMaxBrowserPriv: TdxBarLargeButton
      Caption = 'Maximieren'
      Category = 0
      Hint = 'Maximieren'
      Visible = ivAlways
      OnClick = btn_GitMinMaxBrowserPrivClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
    end
  end
  object imglst_32x32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 34603488
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000B1100000B11017F645F9100000388494441545847ED9759
          48545118C7BF73474DCD6931644A252229122B8B5E6CA1CD441FED4125824CCA
          668A4408318DA00D5AE62D51430882DE2A82A04027EB21212A082DB7B432CCAD
          0C0B73297396DBFF9C7B3275EEE875A4A1077F70EE39DF77CFF2BFF7EC8CFCE1
          784D30B9462E92EAB9411569CDD2EB178A8C6746E976271A4F41EA3915D4656A
          4EFFF04F80401DC6C38C708B0A1B4AA8A8254CB867C8CCBBC0F6D082AFCF4438
          4B4C8924B305B5F0EF602F111F22FBDA7A2DA3318C0BB03A92883C39A4D25E7C
          7D94F0F186C70408C720317682ECEBAE4BC7B44C2DC0561D49AA3B9D5435078D
          6E8567627E2F0112C66E1233E5D395847EE9F1A6B835983CAE287D0156C74634
          988D863310474BAF37BE04085807FCD914125643CE9165A86B39EA5A8D17F148
          C7238E43889E28C05A958597B9C8B8035690E69C022F01EC071E9DF84F6F906E
          C29FA8457D79089B50271FB05EFC1560AD3A8D8175415A461824C5D441119626
          C4AF60BF46832DA404F5D0A535232247514B38B947DBD1B8366674D004581DA9
          E8EBCA31DB0BC6FBB21D6F9B90AE43BA1E5FFD964CC13D54B6CB29B2E871B279
          11FA19657C7723C3B48A258FFB1932C5C256E1FA8AF803DE34CAC61AD0D83B0A
          89E8A5922D6E5EC83086041CA9AC46863D9AC57AF10BB7D1B594F7C29E2D0604
          60F4C8C6359C983E9F653A204C9E3F1803AA49A60382DE040E287302E604FC0F
          02C406F2073E05B11A060E8514650396DA5CAC82F720A61B3B57B87C1710266E
          3EC71E9BC9ED2AC6C9871F3E5AF1BA0371274217D29F20B20F4BF5772ADFFD8B
          679F16437BC1646C8EA5E4F13C45A195D22361A3780C20F0CD8A2FD7DD623B36
          5B3E62F9E6222190BE20DD4F97E38760139D6A9B47CEE136D415236C1DF4B75F
          9B2311229EA0E042E9D167EC4022868E07894124BE214088F86B7D70EF83BD00
          41171FFB3FB05665A0F06D69E933E591CC08ACD677C98AB43BA8F8BCB4FE01EC
          3EBA30796AE915696730F0EE4A8BE34241EDB8351B182BA5F025E9FCD43CFDBF
          634187F1D02E1B8C7589030B53F261608CB09FC23F13985240F6F579742E0663
          06A6704E87CD91208E6D8C0D50E8E238BA9AA44DC3A38F565144542AFCB83B10
          2E2EEA7CE1D7850D21DF415C5AC6FF518302387C5012D929283491CA76F2E938
          91C2464C5B3515818BD98C78DC319C61AA2A59B8B6BD908E318C0BE0D8AA0F60
          E57C40E5C97CAAF9A6B0710504E0F6ACE29E4161687C3F1AC7F17C3244BF01E6
          19114483CDA79F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000055D494441545847A5576B
          685C45149EC77D6C76370FF346B18658F14FA55093203E4BE9831651A9A00862
          0BA27F148A166B360AA2624B5BB41014FD518BFD25D5164190228484A696B686
          2A4A6DFF14044DDBA4C43E92ECDDBD3B2FCF997B37DD6D9B4D36FB2D8733F7CE
          DC996FCE99EFDCBB94D480959FE47ECE6B6F3D214B9886299266B96F597CB924
          38545C889BD5437332AB532FD5442045E551464C7C553D0C44AE2602CF746C39
          5AC7C2934BA7B0A4E49563CDEE891593A2694418AFB5DAC90C6CBFA6082086DF
          ED3CDBEC5C5D9F64F973846A9B906A225273048AF8E1C6F77CCF571B5F0E94F7
          BC21EC01458C6330C946D769C23B8C613C1E3A078C404502BD3B2796E575A247
          1BAE288C945212212431601A4CC8029820AAA048AE205410CC84AD4C78A984DB
          2814F79A12E462F7CAC6F37FCF769F16DABFFBD6C51624D0B7F3FA0BD3267908
          D8DB6BA335914A11058BA349F4404A0A61C92924836D302D354952A5BADB6637
          ABAEC73F53D2B9DF4E528205CF4082866799A1B065881E8CA6D4210EF708777C
          C25DF0AE1B5BDC76D0FBC4F11284C2BDACE1FC6AD6E98645B49967AB15098C66
          3ACEB9549E3025C78A422E1C87C36240C62E8A1E0C3C076F0DDA2E78E672C28C
          1342AD28CC77302B124034F3990F81447C152122111170C1D05B431231116C63
          5F36D43780C079360F8305098CF4B78FA4F9CC364E4599BC9004E71089520231
          09F42C269165AE4C717988111D3F598E0509204E675A069B7876B3CF0A174057
          F1DD121276D168E1521248AEBE2EE99FD8913EECCF53312BAAE0567C73F11C3F
          70A86B435EEAC7A8619DF0B801909CA44F0602B42F512102A40A6A8855E18960
          EBC4FE070FAEDB7B79F915D1389457FE7D581E70612BC34776678F405B6B0355
          0C52AD611294944653E8515210FE4872DA08119A8230D0C9E1F9B0F3D2E8C7C1
          C6B7DFCC2ABE5D81F434C8540AA80F301E6B05D7D9AD97BFE83E881BD8F0E9F8
          BD53F9A6C19C719F53C6010240E4A15D6190974E1D32021644599D17751D1111
          D8C609C1E3FDA84FE103A4C5048797F5F6FC1B68F72D03CF6BB837571BC05C39
          B3F59FC12E4BA088A7764DF50624B95153BA9C395AFE8801C11F670C74CE2187
          70BA318F60DCB631B7D1E9F620AF68566630FE3FC57C4AE1E58E7517CE0483B8
          444A8824EAC27CB7E258A6756C2C93FCE84C7FDD2BAC9E05FB391371179C4A98
          94A3CE618248DF78C8905424311AB7D1181AE7DAA3FA8A4D2A00378273603FCA
          D0F3FCA8631EB0D14CDB503D0DBFC637591196843DDDD149B63BB28B46ED3212
          AECB7D161C2F95998D04BC7B22926E7CF7CEB032EC6BFDE38D34CB7F07A19C13
          D94D12B0500512BEE77AC776B48DFA449E29AF1330078C615E65A5DBDECF5F7F
          223C33907EB1894DBF5647C3BF1C8AA55B03090224A2D28B8BD9D4CCB571771C
          CF829D23ED04DB3D2AB58685E1610B7494DF49FD375146EFD440F3FED50D4756
          B57BD30FA7687613D3C12666C2758D4EFE1D1FEA7A7924C0E341048FF8A5BFE5
          58A31B6CF16921C47787FD14B03D9509C45C2B63EDDEA99EF15CFD588875A228
          51EB15E12A3F34F965D7BA782859B37372D53553FF8130EE5A4868128AF1AB7F
          BE7FD781B8FB36544E500CA5416A900F9BD3B9DD47D12846A088E1818EDF7E7F
          2FF9EC3DFEE48A263EFDB46F6687E2AE3B62511158BDE75ADF15913E2D41EE58
          E9B0586195C40F1222C3A18BFB3AE622502D161501A6C24B10FC69646B9501C6
          781409177C2D581481E14CE7382863AC789C90002E8EE1C734D482451140A468
          B0CFA1F0AD1B5F17EB04BEF76BC1A2099CCCB4FCD4C07383ACE4C3242A54B7D7
          FA6AB06802885399866D0D3CBF1BFE94DA6B24C218AD2CF405501501C4AF99C6
          FE763EFD68030F0E26B8BC4E197E322F1584FC0F348849762E2D5E2800000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0D1F310B061F83000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000005F8494441
          5478DAAD564B6C554518FE66CEB9F7DC574B41EA8347151015114517E0239AE0
          C2055163445D08C68495B270E3CA84851BA33B090BA246D913A30B1323EC8828
          124A784878588A504A296DA1F7D1FB388F39337E336D8DC65CBC729D667A4E7B
          CE99F9E6FBBEFF9B1168D3B66DDBF6B852EA4363CC1D5AEB90BDCA7F57782DF3
          5A9552D6D234ADB257841065FE5D89A26886EF57F6EFDF5FE13B1A1D34BFDD83
          818181D7366C78F2E5C5FDFD68B59A68361B085B2DDEB778DF441CC77F5E3931
          C23074CFEAF53AB66EDD6A366EDC78617878F8B1DDBB7787B7052093099AB5B1
          23B8727A0A37C312FA17DF8DDC827BD0D3D78F8577E611045908BB4CAD6074CA
          AB861402B9ACC4C8C888D8B56BD7030454E22BB70720D5BA15474DF406311696
          1AC82447B164E22C965526D15419D4E20C472E41C912225144C21EA188FAFD6F
          A252A9C0F77D0C0D0D4DDFB60476458044A319C2CF0259BF17E7FC4DB872FD00
          5E599F2049410666605045A6670092EC88EA307E1001E80BD0179D58A03D0018
          13C74982C15317D1DBD383756B9641A54D788107E4393801185EF26BDF41B0FA
          758B18F00CD26F4F3A6F7001A61300B2DD835618D66205AC1AE8C77DEC83A77E
          471427D09E0759CC42E67D04F76EE2E46F104C0C677A8B4B29C71E7B4795D016
          409AD25CA4328A42CB06562D5F8C94BCB7B407AF4000C50C32773DC129885292
          1599E17D0667CF9E731EE8B4B505100481A6113977EAC0C42AA5045C644642F6
          104021A0044DB865D3094E025E9364B63C9907DD49C0DA2EC74A9252CD89A533
          56C4C18D4700F9800C04D0CD1F3967D3CD0F4126840590B83CE0FBE5AE005817
          A7AC6F21257E3E31825CE03364B83231E7013220B235A8A94FA05B270035C68A
          FF951F7AAE0449407749E89A954048AC5BC93A4F66030794007D79F8A195C770
          F13738F15EE888BE114BE0C9A5608477EC81B6003CE94D47A935A3A6CA06310D
          A82847E3460DE5D30DFA2D40B6A708C9B224F3F0581546264E8D3909AA5D0188
          9348E7847606B4364BE9C0848EAF8F4E63EC6015A991AC31B2901A6876A2835C
          B8920AAC9C2FC38E68680B40D8756B1BC91C9C37824C3843926A3DA50846B820
          9A7B79F617CD693DF35F5A7B06E2782634CA46004B9D2CC898B11C61869531D1
          64361358810CB116FE9C5F9572F03CE124A03F6A5D018888206FA3555B8A356A
          376F62E98AF5B879FE0A1ACA434C7F4C73568F062840C1B372845C7D0EF37B41
          DC0980B67C15F279AE422061123EB3793B96AC7E0A26B813957A8289B2428613
          0B3D6BCC1A59292712F5D49A57B8EAB020BA02C0419A2E0949EDA1EFF7D20634
          E0CC0CC6A635BE3C18E19BC1105168E05322617D42231AEE84B60A6C18F1FB46
          57009A14D26EB976855686F18B83743829B731D02B314E85BF3A1CE3C0D90493
          15ED64AA869EF3C01C80B01300B7A802C70263D86DFC2E90A2CA359A51A037EF
          713736CEA0D799C4578734FA72060FB18BBBE6BEEFF63CC0CD2836A9322A4985
          98F53926AF0D83874F14F3DC1BF4EC16607F592036B6A7EB0AFD983561D7127C
          FEF9670D217DADA8BD4D43433F443C20900002F0FEDE0B1E4A04D5D3D7EB72C0
          1E5209A2D51503B6D94453B186EF19278765954AA0C409959E5D39E6A432C643
          90F5DCBDFDAEFB23997DE8676DCA78CD56E27643CD92D0A4BA9823302DDDCEE8
          24B03F049461493001E6017464C25BE6E6F8C8B941CFF311D9C388B2BA6A64FB
          56E09117DEC37DEB9EC3C2BE22F299167B827CD6860FABC1E879163AF2C02D19
          1052BD5B57C523A57C235FADC74E823343173178C99855ABB788B5CFBE8FFEDE
          0C4CFD326E5C3E8AC9191F976A6AEE44DD59F36EF5F0FC85AB130FAF59391D86
          F166C6BCCB9BB18919FC72F8A78FD7AE5DB773FCDAE8D0EF23A3AD5A142CCAF6
          3F5A88BD4562FCDA559C3973C64AB0AF5C2E1FFF37001D39E5ED6D5BBEAB4DFC
          F692C7783F746C0CAD38D959ABC71FFD759C3D7BF63C78ECD8B1A7A7A6A6369C
          3C7972687474F453CC55EA6D4B30DF82C8DFAEBC05C7A59A5C6E0348EB7FE036
          3B76EC386F4963DFDB31FFF81713CEB72FBEDE7723972FBC95FA7D8AC1648F66
          9DED34FF777BF1F9F5AF1672F203DE2EFABFC6FC0382147FA4ED8B221F000000
          0049454E44AE426082}
      end>
  end
  object imglst_16x16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 39322080
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000B1300000B1301009A9C180000017E49444154384F8D53B1
          4A034110DDDD3B8E9053840423C1C24A5269632501A34720AD856025A4D3D22F
          B0B0F603FC00C1422C250449084188D8DA0482448860A15869136EF77CB3BB39
          02C92579F098D9D99DB7B33B0C2F97F7791445CCF33C56AB3D466C4104C11E17
          42302DA09462CD663BCA66334B6118BAD89F25C473B9D5DF5EEF2D2C958A8291
          00451D471CC37C580E66F09373DEF6FD740E3E63954AA00510BC85A19B17A2E3
          3807B04C20952C415AFB037E1B773E20108394A9923ED48FE052B9B3A0CF8F0B
          68A0233BF8D4738854B17C37D1644C08102072086EA04D57369488A90278C635
          F8854A2E6D28111302487CC6CD0F52CA1B2C33269A8C697FB085E43BB82B6017
          6255CB13885F20A6E8DC08E302A37EFA60CAB86C1D82A796675853774639FA3C
          16BA1B84896A806524EE5A16C16D1B8F21A43415A1BC7B983E48AD233B8DB437
          C0D9463A9D7A856F860903C45BAD2795CFAFA586C3210D532230B8BC50D8FCEB
          745E140D533CCEAEEBB27ABD11BF671ECC380BF60F53EE9AF4F3D8CD85000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C767676935D5E
          5F9D4D4947B198672DFB8D5E25FB403C399A191A1A4400000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFD2D2D2FFCBCC
          CCFFB9B7B8FCA67841F0795123D85958588B2A2B2B4300000000000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFCBCBCBFFC6C6
          C6FF619761FF736632FF83511FF8331C00830000000800000000000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFBCBCBCFF868F
          70FF4F7E37FFB46F25FFA97126FF5D7941FF123E259100000000000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF908E8EFF8C6F
          45FFCE7224FFF1914AFFB39B52FF2D9B4CFF3A6635E50500000E000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF6C5E55FF7690
          61FFBBB273FFFBC793FFD5B67DFF5E9D55FF3B6931E50500000E000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF482400FF4F66
          36FF89BE8BFFE2BA87FFCCA769FF2DA559FF134C259D00000000000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF5C3F08FF5B37
          02FF72683CFFA58E5DFF7A9054FF447952FF3537336900000000000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C767676935656
          567A1A1A1A390000000200000000000000000000000000000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFD2D2D2FFD2D2
          D2FFC7C7C7F86B6B6BA100000013000000000000000000000000000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFCBCBCBFFCECE
          CEFFD2D2D2FFD1D1D1FF61616196000000000000000000000000000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFBCBCBCFFCACA
          CAFFCDCDCDFFCFCFCFFFA9A9A9E3040404140000000000000000000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF929191FFA4A5
          A5FFA5A5A5FF9E9E9FFF8B8B8BD50404040E0000000000000000000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF6F645BFF837C
          77FF858382FF717171FF2E2F307B000000000000000000000000000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF482400FF4B2C
          00FF594434FF70655EFF5B5550CC3E3D3C770C0C0C1A00000000000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF5C3F08FF583A
          03FF513100FF472200FF482B0FFF6D6159FF3837376200000000000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C7575749A8581
          7DBFA89E94E4A59886FD887963FC554D41DC2B28238505050410000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFB4B0ABFFDED5
          CAFFE0D6CBFFBEB19FFFAD9E89FF978B7AFF8E8476FF312E2973000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFADA9A3FFD9D1
          C7FFDED4C9FFBFB19EFFA89882FF918573FFA39789FF3E3A3481000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFA39F99FFD8D1
          C7FFDFD8CEFFBDB09FFFAB9B86FF978B79FFA79D8EFF3E3A347F000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF908C86FFE0D9
          D0FFE9E1D9FFBFB1A1FFA99984FF928675FFA69B8EFF3F3B357F000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF7D7369FFD9D2
          CAFFE6E0D9FFBEB09EFFA39179FF897B6BFFB1A699FF423E3880000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF715C44FFEAE3
          DCFFEFE8DFFFDBD0C0FFD0C3B2FFC0B4A4FFB8AE9FFF413B3581000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF675023FFA59B
          89FFC3BAAFFFC9C1B6FFC8BFB5FFC3BAAEFF908980D316151233000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C757575934843
          3EA1261D10991D110283150D0355000000000000000000000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFF756755FF4C26
          00FF613300FF6B430FFF543200F20000206E01082F7F04082267000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFF683E00FF9B7D
          63FFB39679FFA96E15FF6D493AFF41488EFF303496FF242A7EFF000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFA0835EFF92A1
          ADFFA1CDE6FF968675FF504C81FB98B9DBFF6882C0FF1D2C68BE000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF76868EFF72B5
          D4FF6DB5D7FF6A818DFF619AACF271BBE0FF56B9D1FF153D4372000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF56676DFF91C7
          E2FF77A3BAFF19485AFF65A3B8F07ECBE7FF77D4E4FF1E404671000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF433829FF5F7E
          94FF5C7990FF4B5560FF5A8B94EE80D8E6FF90DCE7FF0D242945000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF5B3E08FF5346
          27FF4B4634FF432004FF49371FFF678888FF425D609900000002000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C757576944A4A
          508C3E5D7CCE375466E700374889000000070000000000000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFABB8BEFF5D99
          BFFF5BB2DDFF67A5BAFF5BBBD0FF0C6372AB0000000300000000000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFC3C3C3FF95BB
          C8FF6DB7D9FF7C9CAEFF6E9AA0DA67CFE1FF0A6574A900000004000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFBCBCBCFFC8C8
          C8FF93B7C4FF6EA8C7FF7C7C89EA497A82B483BDC8FF504E57B4000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF929191FFA4A5
          A5FFA4A4A4FF81A7B6FF6AA5C2FC59829FE49BA5B7FF505285D2000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF6F645BFF837C
          77FF858382FF5B6D78FF67B6D1FD2D53678B54A5CAFC10243872000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF482400FF4B2C
          00FF594434FF596B73FF64B4D1FF4E6E7DC057ADCFFF18384670000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF5C3F08FF583A
          03FF513100FF452100FF4B6D75FF64ADC6FF4D7C8BC900000108000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C767676935656
          567A1A1A1A390000000200000000000000000000000000000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFD2D2D2FFD2D2
          D2FFC7C7C7F86B6B6BA100000013000000000000000000000000000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFCBCBCBFFCECE
          CEFFD2D2D2FFD1D1D1FF61616196000000000000000000000000000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFBCBCBCFFCACA
          CAFFCDCDCDFFCFCFCFFFA9A9A9E3040404140000000000000000000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF929191FFA4A5
          A5FFA5A5A5FF9E9E9FFF8B8B8BD50404040E0000000000000000000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF6F645BFF837C
          77FF858382FF717171FF2E2F307B000000000000000000000000000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF482400FF4B2C
          00FF594434FF70655EFF5B5550CC3E3D3C770C0C0C1A00000000000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF5C3F08FF583A
          03FF513100FF472200FF482B0FFF6D6159FF3837376200000000000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C536B5AB2288E
          41FB195528C80000002E00000000000000000000000000000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFF659A70FF58E1
          7BFF60EB84FF30984AF9001701840000000C0000000000000000000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFF649872FF49D3
          6CFF5AEA80FF49DA6EFF2CAB4DFF0C531FCC0000004600000000000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFF61926FFF32B8
          55FF37BF5BFF30B452FF2BAE4DFF239D43FF17752FFF01120559000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF4F7D5BFF29A1
          48FF2E9F4BFF32994CFF3F9654FF3C9452FF22823AFF0019065C000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF3B6840FF3E99
          55FF569A68FF5C9A6CFF48965BFF1E6A31CF001B074B00000000000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF2B5319FF5C9E
          6CFF67A175FF429755FF396D43E53A3C387E0C0C0C1A00000000000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF4C5518FF3F9E
          53FF3D8239FF3A3407FF482B0FFF6D6159FF3837376200000000000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C5F5F75AC2929
          81DC171752A30000020F00000000000000000000000000000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFF7E7EB6FF5252
          DDFF3C3CC9FF44446BC603031540111167B40B0B45850000020D000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFACACC0FF7474
          CAFF4A4ABDFF6F6FA0FF4B4B7DC75252DDFF3C3CC8FF04042D6A000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFBCBCBCFFCACA
          CAFF6969ABFF6F6FA3FF9797A6E748489DCB4A4ABDFF05053983000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF929191FFA4A5
          A5FF6767A7FF5C5C93FF8B8B8BD50404040E141456941010448B000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF6F645BFF837C
          77FF64639DFF43439BFF25253A950000000021215E8716164F8C000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF482400FF4B2C
          00FF625560FF6162C6FF3D3CB8FE23238AE42D2D8CDE16164D85000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF5C3F08FF583A
          03FF513100FF492810FF422F41FF494592FF1F1F8AFC00002570000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C90887CC78278
          6BBD655A4D9C564C4181574D4180584D4180574D418052493E7A000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFC59A6AFFCF94
          49FFD4954AFFCD9147FFCC9047FFD49448FFCE9043FFC29667FF000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFBF9768FFCB90
          40FFCE9141FFC78938FFC58836FFCB8C38FFC7872FFFBB9162FF000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFC1996AFFCD94
          48FFD09345FFCA8F41FFC68939FFCC8D3AFFC88832FFBC9163FF000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FFC69C6BFFD39A
          50FFD79B4DFFCF9445FFCE9243FFD3923BFFCD8C32FFC19463FF000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFFC29B6CFFD199
          4EFFD39A4DFFCA8F3EFFC88B37FFCE913BFFC88828FFBC9060FF000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FFB89A77FFC5A1
          78FFCDA982FFCBAA88FFC7A583FFCCA67EFFC49D72FFB59576FF000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF756340FF7767
          48FF77674AFF75624EFF766756FF878279FF6B6A67B148474573000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C767676935E5F
          5F9C4C4947AF98672CFB8D5E24FB3F3B38981819194100000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFD1D1D1FFC5C5
          C4FFB2B2B1FCA97C45F17E562ADA646261A03433335700000001000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFF98958FFF4642
          35FF454636FF494739FF424334FA2D321EE13B3D2BF229261F74000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFF87847CFF2E30
          2BFF202B26FF022317FF002A12FF002F0EFF1A341AFF2A282081000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF75706AFF362D
          31FF2C4430FF1E4224FF142719FF062911FF1F301CFF2D2A2380000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF675C52FF3095
          41FF288C3EFF1A6229FF06040DFF000C00FF1F2912FF302D2680000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF583F28FF4994
          4BFF457245FF43323BFF413F39FF454642FF2D3046FF332F2B80000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF685531FF9083
          76FF978D81FF9C9487FF9C9487FFA19B92FF706B90FF34303079000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C767676935E5F
          5F9C4C4947AF98672CFB8D5E24FB3F3B38981819194100000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFD1D1D1FFC5C5
          C4FFB2B2B1FCA97C45F17E562ADA646261A03433335700000001000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFF98958FFF4642
          35FF454636FF494739FF424334FA2D321EE13B3D2BF229261F74000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFF87847CFF2E30
          2BFF202B26FF022317FF002A12FF002F0EFF1A341AFF2A282081000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF75706AFF362D
          31FF2C4430FF1E4224FF142719FF062911FF1F301CFF2D2A2380000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF675C52FF3095
          41FF288C3EFF1A6229FF06040DFF000C00FF1F2912FF302D2680000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF583F28FF4994
          4BFF457245FF43323BFF413F39FF454642FF2D3046FF332F2B80000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF685531FF9083
          76FF978D81FF9C9487FF9C9487FFA19B92FF706B90FF34303079000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C767676935E5F
          5F9C4C4947AF98672CFB8D5E24FB3F3B38981819194100000000000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFD1D1D1FFC5C5
          C4FFB2B2B1FCA97C45F17E562ADA646261A03433335700000001000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFF98958FFF4642
          35FF454636FF494739FF424334FA2D321EE13B3D2BF229261F74000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFF87847CFF2E30
          2BFF202B26FF022317FF002A12FF002F0EFF1A341AFF2A282081000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF75706AFF362D
          31FF2C4430FF1E4224FF142719FF062911FF1F301CFF2D2A2380000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF675C52FF3095
          41FF288C3EFF1A6229FF06040DFF000C00FF1F2912FF302D2680000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF583F28FF4994
          4BFF457245FF43323BFF413F39FF454642FF2D3046FF332F2B80000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF685531FF9083
          76FF978D81FF9C9487FF9C9487FFA19B92FF706B90FF34303079000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C7575749A8581
          7DBFA89E94E4A59886FD887963FC554D41DC2B28238505050410000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFB4B0ABFFDED5
          CAFFE0D6CBFFBEB19FFFAD9E89FF978B7AFF8E8476FF312E2973000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFADA9A3FFD9D1
          C7FFDED4C9FFBFB19EFFA89882FF918573FFA39789FF3E3A3481000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFA39F99FFD8D1
          C7FFDFD8CEFFBDB09FFFAB9B86FF978B79FFA79D8EFF3E3A347F000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF908C86FFE0D9
          D0FFE9E1D9FFBFB1A1FFA99984FF928675FFA69B8EFF3F3B357F000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF7D7369FFD9D2
          CAFFE6E0D9FFBEB09EFFA39179FF897B6BFFB1A699FF423E3880000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF715C44FFEAE3
          DCFFEFE8DFFFDBD0C0FFD0C3B2FFC0B4A4FFB8AE9FFF413B3581000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF675023FFA59B
          89FFC3BAAFFFC9C1B6FFC8BFB5FFC3BAAEFF908980D316151233000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B1F414141646F6F6F8C767676935656
          567A171717531E3D48C6244757A48A857DD46C635AC900000008000000000000
          000000000000000000023D3D3D6EA7A7A7E6C8C8C8FFCECECEFFD0D0D0FFA9A5
          A1FFBDB5B1FEA2B3BBFF47B9D0FF8DB5C0FF988F87F006040210000000000000
          00000000000034343467ACACACFFA5A5A5FF9F9F9FFFBBBBBBFFCBCBCBFFBFBD
          BCFFD3D1E4FFE7DEDCFFA3C5CAFF53CDE1FF5693A0F008050012000000000000
          00000000000A717171CC9E9E9EFF7D7E7EFF616162FF8E8E8EFFBCBCBCFFBAB6
          B1FFCDC8D6FFE4D8D4FFE4D5CBFFA2C6CCFF7CBDCAFF504E57B4000000000000
          00000101010D5E5E5ED5ACACACFF93908EFF77706BFF888684FF929191FFA6A3
          9DFFCCC7D5FFE5DBD7FFE7D9CDFFE9E0D9FFB2B1B7FF4A4F83CF000000000000
          0000000000003D3D3D7AB8B8B7FF716559FF3E1300FF55402FFF6F645BFF9690
          87FFCCC8D5FFE8E1DEFFEBE0D8FFEFE7E1FF96918DF000000018000000000000
          00000000000018181821B4B3B3F264513BFF4C2C00FF4D2E00FF482400FF7C6A
          4FFFD7D4D9FFE5E0DDFFE4E0DBFFD8D4D1FF8C8882F40000000F000000000000
          00000000000036363645B9B7B4FC67522FFF5A3E00FF5D4108FF5C3F08FF6B56
          31FF948E86FF89847BFF79736AFF6F6964FF575452B201010003000000000000
          00000000000059595A71B4B0A6FF735C10FF70570FFF6C5208FF6B5008FF684D
          0AFF624509FF593B07FF492500FF756B65F92424243900000000000000000000
          00000000000072737392B2AC9DFF7C6300FF8C7528FF917A2CFF846C1BFF775C
          08FF6F5308FF644808FF563700FF817A71EB1011111600000000000000000000
          0000000001049F9F9FC3C0BAACFF927E3CFF958114FFA49130FF968124FF917A
          24FF887021FF72580AFF69511EFF807C72CD0607070800000000000000000000
          0000000000014C4C4C609E9D9DC3CECCC6F8C9C4B2FFB8AD82FF988430FFA08B
          19FF96811FFF836A11FF816D44FF73716E9F0000000000000000000000000000
          00000000000000000000000000032B2B2C3479797A85C5C5C4D5E0DED7FFCAC4
          AFFFAB9E72FF897426FF918154FF62615F7D0000000000000000000000000000
          000000000000000000000000000000000000000000000A0A0A0B444445488F90
          919ACBCBCAE5D0CDC5FFC6C2B7FF484848570000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121216505051626A6B6C7F101010130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000B1300000B1301009A9C180000017049444154384FA5D24B
          2B6E511CC7F1ED76DC4B2E294A275E0251A25C4A660606DE80D721C9C8996042
          316540CEE0D4E92453323378CC18890C904BC8E5795CBEDFFD5842FB3913BFFA
          B45AFFBDF77FAFBDD68EBE9BBCBAB1F410631B9EE20A355CE3CFE944D15E5CF9
          4F6CF0C0F8233B7DCF195691A2C97C5CC9917C7C7DD8DCA00073BC6020AEE488
          0D9262D3639C6292268D169392AB4103BAF11BFB684562DC8317C647ACE1DC22
          B17109DCD042FCC35F14C3F84C9AFDB90C0D96E3721475C087EF7009AF95A21A
          95F074DC9B3298D1F009DEDC8C1DD4630B292CE00433D8C434B651F3A6353470
          7CC63A7EC1531841173A71802518AF8564420393410B06E132FD3FEE718B5E4C
          C1BA27E309A59D8706FE85E518463BFAE0127B508B7EFC84ABF284DCD02364C2
          26EE62054D883BC3A68E7E9A2BB982FF872FF5745CD9626860FCB60B78F1635C
          D93847369B9D7E8EDD36E029F8CD15F081C0B90D0F91185750C458959D2626C3
          DB5D5942A2E81547EF6200F42090DC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000B1300000B1301009A9C180000024D49444154384F8D52CD
          6B134114FFCD64B3F924B5B6366815857A10147A9234B660053F29428F52D083
          8208A5FA0778F50FF0D09B07C14331205468296A235AF59282D68B87823D6994
          5A499A90349B999D1DDF6EB6496A24F883B76F67DE7BBF795F2C3775DD1C3043
          8B002E9034A0011E60DFC2D1D074727676016329763512454D93E12FF05E23D8
          4BFA74E3D802F91EE160CFB6666626F121A7176A3B8830E65B5BE0C4E9D2DA8D
          633BE89AC1A498CCAF5D12AB9384FBBA0B98C919CBFCBE777712EF733AAA89B6
          0DFF262017B75CAB2620EAD2155358F2E9F7DB774632D9378EEFE5A16B0652DA
          B02CE149DD122129EC4BBEA989AE048CEADD15FA5056BAC3FF3F7AD006E2F0FF
          9AD843A02B5538C56D38DBA50ED1A532D4FA8674FDB2D9B7DA15CE69D0EB376E
          0ED0ACBE4039FDD189CB081F1F7253855676A3DD01C3EBA89602E6E0E195E8B1
          A3CB741B711CE763201098F732D0B6023F9844EFC415B060909C25E2274F213C
          44649605A32781443A0DBB58385B5C79F7A0945BBDAF6DFB515DEBFD7E09345C
          D3841612A5F9E7903F7E626B6E0ED5B5CFD8F9B486D2D20B9473AB282F2E918F
          20776F929A3234786B2B1AFD61E1B0B707EED12D25961E416CF40CE4E6A667E3
          910812A914383DA8283BEE50016E9CB73914A5EB023C1E47FFD435700A50E532
          EC4201CCA05E50A90E6540E9BBECEE7BE0279E3C2E3895EA2DDED7F790194161
          0C1EC2BE73E3082612DE6B95E5D7105F37101B1E462079003D63A35E9F0806ED
          07C3C5F3E3CD2A94522FED5A4D93D6D465AD84D0B252F1B443F5ECB129F52A9F
          CF9B7F00B2C0259947DC87E10000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          0009704859730000162400001624019B15C6140000020A49444154384FA5524D
          48545114FEEE7BF39CE7A8A4925310946005390B051745842D5A5820E4C256ED
          8A7E88566DB245AB08DCB99302A14D411B8B16164D3F1868E040308416928B98
          74A889F9C96AE6BD77DFBDB773DF1B49C6172DFCE0E3BBE7DC77BEF3CE790FDB
          05AB6B80FE3BDF8F93F412AD20F1F75ED595133F662F77CD86E126032ABE4B72
          318CFE8B2932B9A00F81C1C0BDCA51C9FDF9861782521B8DA3A04E642F75BD36
          779E9E39E9557F5F95AE7BC829FF8057598756E93860CC80F405C87C2B5DFEAE
          909EC8B0E4E8B362C1919DA024AAC418997381765B21D19D8469B7E957099B6E
          8252F2DAEAE4E109C3F78598BEB21FA3079B91BED58733BD2D98BE9E42C5A32E
          8276A6A78A20D34A304A058EE62603C3C776A1A7BB03C383BB615974FB958349
          0925885A1B49798D184578BF5CC4C8500FE616BEE0C8C01E3C7CBC442D24D6F3
          4518B6A0C7229649751A06124066B10C1A054F5EAD92FA98CF968056D0026548
          BE9582F281419BA9622F566A387F73018F96AB3877E32D663F7BB06999C19CFF
          A0160D33BE6F64C5FD996FCDE53E1DB0DC02726B7930EF1B9443141E94FB0BB2
          5A82AC951B3923D69E67022373EFD94123917C13FAD6E735E360A61D9E23A024
          1FE28BB7D3860E44AD34C79A76DC67F176B07867C8580BF9D17514957C40C52F
          75EDC6281AA6951A3B456D5394A60D44FEC63ECDF5812F8D3FA5B3FE3CDB05F0
          07F24E108F76DEF1930000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA864000002ED49444154384F5D933B
          6C14571885BF7BF7C98E67F17BC312EF86478A68E5570498C812054220A5A2A1
          09954B4841D022AA246594C605054196912851D2841414A014A130814451E220
          B09030C6DE180376766DB3F6CEEEECCCCD3FB34E7038D2D5FC9A7BCF39F7FE0F
          C55B78303878503E63B24671DD9CA9D540EB05158F4F19C7B9363037F76B7870
          0BFF0908318952E378DE193333A324468F8E12C966319E87F7E409A65231FED3
          A7570C1487C10978A1C016F9076AB5E3A4D3D8A74F13EDEE26BE6B175D478E50
          BE7B179D4C92C8645895787562E29673E7CEC90322A20381D0D9718EE3FB58A7
          4E913F770EAB50C0EEEFC77342233A0F1DC2CAE7898A8129974F240A85F1901A
          BEB9D9BC4F32A9DEBD7A15B7B24AE7E111AABFFD82BD7F1FD5D959ACE183784D
          8FC5C9495E5F28A24558F2222F6124B8C198A9D75564CF1E76E4F258992E98FE
          99745B0CE536B0737DE8BF6659FEFA0B6A5F0A7960302087E6013772B6A7E72B
          8932BB2F5DC25B5AC4567554670FECFD00BA7A6167076C5449677BF1DA6DAAF7
          1EA2528940204042634C8E540ADF75B13BDA303A0AB9F721B9033637E0F1742B
          3E7C0CEBC311D4E2DC1637449F965A13C9BF4754B2EC2FBF407574432C062F17
          51CF9FA1FAF6A1EC9D98E7F3E8A683DE9B454CB7F81095C30BDEC27C7B636599
          362BD9DA94A5E61FE3575F53B97983DACC439C477FD2A8D4316979D61B819226
          1A9D32D224EEDA3A9E16E7B5BF91AA60063E42A72C82D25626AEB3F94A429DFA
          9FBB60AA55C646E3BECA66D53B172F60F99B920F704B25D136D2179FB07EF37B
          16CE1721BB7F5BEF1296B1D589434397C5F5AC713D496412CB8EE36DB8A8DA0A
          5D93D789168658FAFC3396BFFB11DD990E2801BEE99F9EFEB4D589C61489446E
          AB440CD7C428573CD69A11D69D36CA37BE9503D2A103C3A89597E171C12D5972
          A56D170AE701C68D3167E4DBFAEF1962ED717A3F3ECACA4FF7A82FAD1A15D157
          64A728EE6F86693BC29CFC3BCE52677C835F7A515299EE29958A5FEBFFFD8F6D
          E30CFF0096AA24BB28E08F850000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA864000001BD49444154384F632004
          D49BFFFE576FFE871DB7FEFE0F55861B6836FFC1AE198AA1CA7003FBEEE73A6A
          5834C23054197EB0EAFF2A66FDB65F9BB45B7EDFD66AF9F914AF011AADBFFEAB
          B7FCF9AF54FFFDBF4CE9FBFFA239CFFFF326DFFBCF1E75E53F63E0D9FFBA197B
          FDF01AA0D7FCFD004C52A9EEE77FE9D20FFF454086A4DCFFCF1E7DFDBF6CE4F1
          4CD5163C068000D0997005CAF5BFFECB947D841BC21A7A320C3960A15A30815D
          EF172FF38EAF734DDABFCE51AEFFF95F16688868EE8BFF12C937E3DD7A5FAAC0
          A29741BBF5FB3735204711E85C29A073418A78531EFC678FB9F19F21E4E27FE1
          80C3ABD5814E5669F8FD5FB6FCD37FD9BC7BF1503B184CDABFD531D8B7BF7181
          3907E46719A8217CA90FFE73C6DE0406DCC90DEA2D10DB40866894BD841B0007
          C66D5F56C2E21A1670A2B92FC18670C75CD9A9DFF2FD0CCC12DD868F98068040
          7DFD2A3693968F9EAAF59F5DD4EABE430D79F15F20F9F66E90BC4EF3B71F6ACD
          FFFFEB36BFC36E0032D06CF9FD5FB1F607D81089DC47600340C0B5FBB9A271FD
          5339281737D06AFDFE11E45C9021F2456FE106100D2CDBDF7AC3C244B9F62BE9
          06808059FBC70E90015ACD3F774185B000060600B28558E64470338600000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000012549444154384F63C00B
          32767643596482F46D47194ACEFF67287CC40915211264ECB26048DBFE8A216D
          DB7FB001A51781F8720A54160F48DB3101AC0919C30D00E2E20B0F19EAFF3331
          945CB26428BBDCC1507CE90A54E3F61A0C8D10FC89A1E4C24A86D24B5E0CF5F7
          39C06A8B2FBD821B08C20C29DB64C08A53B6BF061A349721759B3D43E82A66B0
          626CA0F8D253540360B665EDE7812AC10F701A90B69B1FAA043F188406A46CFF
          0A3620771B1F54097E8061000CA4ED6803C6C22C86D49DF1C014A80534901D2A
          830A701A0002695B3F20BC04C5A084547CFE2F302DDC6328BBB406A8E9236E03
          40009B01C81A50F0A54D505D48207FBF005863E64E63A0970EE036E052315407
          1690B63D9421F70422502B2E2931945DDC09D75C7CD51C22C1C0000041230BD2
          312265F90000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000025349444154384F85535D
          68926118FDEE2BBA08EAB27FFCB988BA285A37FDD0E8874C4705494574D1EDDA
          9651772D84404C7D5DB3D44A7393E9D6645B0E756CDA5AAD86AEB9BBB2A488A8
          41D06DADA69E9EE79D5FE170F5C0C18FEF7B9FE379CE735E65696D6BB4AFD037
          89533AA3F0E94CEE14436B125E7EC7DFAAC7EA97CEE832698DEEB7D484BA308A
          029FA91EAF2D8D515CAEDB54075A93BBADDAB658CCCA1FD61C7662FD31810D04
          F557C5DA232E6C3D2EFE12A94A782E0DC9DE6810F086C610E879027F775AE25E
          384348C3D795C6037AAF6F724339700B7A49200AD21336872461C7C9DBE8EA9B
          40C3E94E345F8FC062EDC36E7A365CF4C32A86904CE7F1F1D357D83AE3500E3A
          A40AEE25F9C2A7120422E3387329886B37FB7195606E0EA0B53D8A1011B73B06
          F132F706F3F3BF70C1129223F1761462A235B9B1FD44078244E0F425497E063E
          1AC1E14D6032FB1AE1FE675076DA101B9E0257C7FD1494BD76688D22290958CE
          26F2A0FBD1043CC15104A3E384A7F0D2ECA94C1EDF7FFC442EFF0EE57245120C
          25B35076D9409B4B2A2C835D3ED7FA1003892C4632B334EF0C7A075F20323029
          CD9B9E2D6261A18452A92C092A950AC2F467CA7EBB579AC8A6B0E38F5339F4C4
          9E234A8DC3A3AF90189B91B25DFEA4248AC5A7507CFF45927C9EFB060DF7F22A
          B61844618FD9831672BFED46541AD752053F5FA18D58ACBDD877F60E1ACFDF45
          F1C31CE223D3054AC162B439141C92D5879C58B50C561236934FEB8EBAE4AA1B
          CC9EDA48733C65C2FE030E11ADB036CA6AC948F38559D2F407FFBA4C6AA9D799
          B7C37B9658F63A2BCA6F014EF094AEBC7EB60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000002064944415478DA9552D14B9351143FE77EB2254DE740D910421F247C
          9981A021C42C05A5207C709A413E242A098A0EEDC57F20AA07271216428FA668
          A90F62810FEA43596888480A8A0591E1869B0F22B1C977FAED333FB6E9A01D38
          F79E7BEFEF9C7BCEF91DA67FC2DEAFB799E8409F2CFD422904984A6C77A04F65
          B23464DCC5968C7BEB2E22D9846927E60966F647DFB83FC53B6B8D6B56DC7F86
          790DBA0BBB3F3A56326E04B03EF8D64722CFE3F002C01C828DC05E865E129167
          C0342464C4FC8E6D0FB76DBAC82ACE5713F215394385B15A70BE0C9B9230EF39
          AB75B71AD7F3C699D2921002947376DB77AB52CA8BE8DD0854F6BFDE28C97BF8
          AAE0AD9993AB37ACA27F8EEF22908F893D68EFE9DBB9B4E410D53D3A78913F6E
          B2902CB95D7BB7E0D8C24A5D4776366215816318BF2EE1EBA1C0A073C76C6412
          55450075413D003A10C0A23475A494064AE57564D4BD786E36CE0CCBFD8D2621
          79899FED49291B55A0221DCB02A81B88FC0ACCD262959801329BB7BC804DA4C1
          C0726CD898D514E660A708CEB1F175A4C7A22137D9DEFEE303EAADB9E0F1087A
          02CD49E1BCA9EB52C68E8E9FD348A72E9E2E64348A46F6A33E749F2A406D3B7A
          506B146CE2C4171ABEE2E753DA7E3701F0048042005658D32A02FEBC93046A3B
          F76E20500F3EAB27630AA93838E40A9A2C387DC15C6C8FA133FB03791F5315ED
          EC092223CA01662E76FE0B3BD5B7899A4CEF880000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000002704944415478DA6364A01030A20B4CDAECC3FAE4CDF5C0DFFFBE04FE
          FBF74D9E81E13F031323F7431666CEF592822AEB8B02F6FCC66940D5221DBDAF
          BFEECEF9F3F7BB29139AD1FFFE3330B030B19EE6645348E988BF7D09C380AA45
          DA7A5F7FDEDBFBF7DF7711116E1F86F7DF8F0235BD07CB31310A3208725933BC
          F9B285819989F50D37BBBA6B5BDC950B7003FA377AB03E7C7DECE8B75F9F4C53
          1CF63288F04B324CDB19CAF0FDF755B0019C2CDA0C991EAB18DE7E7AC93067BF
          1303272BD769692153EBB2E083BFC10694CE570CFBFEEBFE4A361645868AA023
          0C6B0EF7335C7ADAC3C0CA0C71DDEFBF0C0CBA52450CA176C50C1DEBEC197EFD
          B9C3C0C9A61CD99D787705D880C239E2CB7FFD7D19C1CA2CC95019749A61CEAE
          12863B6F5630B02119A0241CC690EADE0734C092E1D7DFC70CEC2C92ABFA929F
          87830DC89FCD7EECD7DF9F9631D6DB1944F9A5190E5F5D0BB4810F68D337B02F
          D9983980DEF9CC60A31DC4F0F6E37386C5473D8062EC2726A6FEB4443120D67A
          07D0FF5248067C07BB808D8593E1FBAF4F6003DE7D7AC1B0E8883BAA018573C4
          805E7805F48214D00BA788F48204D00B2F205E285BA01AF1EDD7EDE56CCCB040
          EC0306622F4A20EA0003310C2510158181781F1288FD1BDC581FBE0145E31744
          34EE0046E31F48347200A3310B188DEF80D138FB801303172BCF1909017DAB8A
          90A3BFE109A97CA18A1E302AF7FEFBFF1798907C19DE7F0325A4774809C986E1
          CDD7CD4036D35B1E760D97B6B86B1750522208542C54051A726FCE9F7F7F7125
          E533C054980A4B85583353DF0617D6171F1E04FFF9FB35F0EFFF2F720CFFFF03
          932FCF236626AEF5627C326B4B830FE1CE4CE40000719B1F20372212C2000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          53000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00F3504C54450101010000000505050404048A8A8A7979797C7C7C7A7A7A5555
          55A4A4A4A8A8A8CFCFCF777777868686818181616161C2C2C2CECECEA7A7A771
          7171ADADADBDBDBDB8B8B8B6B6B6535353BBBBBBABABABCCCCCCBABABAAEAEAE
          F5F5F5F8F8F8B3B3B3ACACAC2B2B2BC1C1C13636369B9B9BD5D5D5D4D4D49999
          99141414373737C0C0C02525252C2C2C939393848484A5A5A59191912626262D
          2D2D8383832727271E1E1EC7C7C7CACACA5B5B5BB0B0B05E5E5ECBCBCBC6C6C6
          151515636363B9B9B9D1D1D15F5F5F626262020202A2A2A29595958787878585
          859A9A9AC3C3C3A1A1A19C9C9C9F9F9F0C0C0C2A2A2A0F0F0FF4A31814000000
          097048597300000EC300000EC301C76FA8640000001874455874536F66747761
          7265005061696E742E4E455420352E312E32FBBC03B6000000B6655849664949
          2A000800000005001A010500010000004A0000001B0105000100000052000000
          28010300010000000200000031010200100000005A0000006987040001000000
          6A00000000000000600000000100000060000000010000005061696E742E4E45
          5420352E312E3200030000900700040000003032333001A00300010000000100
          000005A004000100000094000000000000000200010002000400000052393800
          02000700040000003031303000000000E9D5F638CADA6C7A000000B549444154
          28534DCF870E82400C06E0FB0F37E24411C52D6E71E1DE8A1BC7FB3F8DE14063
          D326775F9AB425841002426095F5B682021484033807E072C3E385CF6FB53108
          F04121148E441D00627131919452B20DA0E98C92CDE50B225F648252B942D56A
          ADDE68B6DA0C3A3234BFD0EDF5A10C180C255D84A0430C492306E3C974867900
          8BE56ACD009BED42E577DA7E7BB0C71838AE4EE7CBF57687E12C66AAB8E87898
          BF639E40E905BCBF7F0370F22B7F617C007FB811C1C9EB91030000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000001874455874536F667477
          617265005061696E742E4E455420352E312E32FBBC03B6000000B66558496649
          492A000800000005001A010500010000004A0000001B01050001000000520000
          0028010300010000000200000031010200100000005A00000069870400010000
          006A00000000000000600000000100000060000000010000005061696E742E4E
          455420352E312E3200030000900700040000003032333001A003000100000001
          00000005A0040001000000940000000000000002000100020004000000523938
          0002000700040000003031303000000000E9D5F638CADA6C7A0000029C494441
          54384F7592CF6B134114C7BFD9ECCE6E6693D95F26D96E59524ADAD04D233934
          428B615B94D2D6D626487BF05FF12E78D583E0A195DA8352C18388A0A0072982
          1611BC880DB68788BD146A9B92C0D2590FBA210DF403C33CDE9BEFFBC13CA08F
          89898929D334D72CCBDA638C85AAAA86BAAEEF2593C935CFF3A6FADFC7236379
          7939D16EB71F1D1C1C3C1045515014E5A9A228F729A5CF28A5BF63B1D8CCE1E1
          E11DCBB286AAD5EADB46A31174B3D46AB584EBBA1F28A5C7B95C6EA91BE8636C
          6C6C49D7F563DBB6B7E7E6E66837E0BAEE1AA5F4B8542A5DF67D3F794ED5C3EA
          EA6A727A7ABAAC69DA1FC7711E0340AC52A94C351A8D6DC6D8A2AAAABBCD66F3
          932CCBAF1863EF5AAD569E102212427E743A9D4ABBDDBE6D59D6754288DE6C36
          5FE772B92A2CCB5A4BA7D35F01607474F48A2449218050108410C0393B1E8F87
          C3C3C3F300C018FB6CDBF6862049D23542C80B000882609A730E0088EE5E9B73
          0ECEF90C0010429EC762B19B608C85AEEBD60040D3B49DA8EA45475194060064
          B3D91BF1783C1438E7100401FF3B90BA652F80732EAEACAC0891461045713F08
          821200E8BADEE817F4934C26F7B7B6B678188645C7714E04CEF9FB4EA7530300
          4992EE298A72DA2F8A9065F98C107217005AADD62DCEF94B148BC529C658383E
          3E5E078042A150CE64320F29A53FA3B953A9D42FDBB6BBAB9CCFE79754550D0B
          85421500E038CEBA699A27BEEF7B51B5743AFD264A6018C64EE49F9C9C1CD575
          FD6860606023F26161618166B3D96D4DD38E3DCFBB59AFD7954422B1D7B30787
          E572F9D2C8C8C83C63ECC8308C8FBEEFABDD0400303B3B4B3399CC7A2A950A75
          5DFF2208C269CFF705A6697E638C854343439B8B8B8B17AE3B8AC5E255DBB69F
          1886F15D96E533555543DBB677070707373DCFFB37730F7F015CEDD2F76004C8
          880000000049454E44AE426082}
      end>
  end
  object ds_Azure: TDataSource
    DataSet = qry_Azure
    Left = 352
    Top = 136
  end
  object httpAuth_Azure: THTTPBasicAuthenticator
    Username = 'Jens.Henske@outlook.com'
    Password = 'JensHenske1984'
    Left = 640
    Top = 528
  end
  object RESTClient_azure: TRESTClient
    Authenticator = httpAuth_Azure
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://pcmapps.ddns.net:2443/PCM-DEV/PCM-Desktop/_apis/wit'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    SynchronizedEvents = False
    Left = 640
    Top = 584
  end
  object RESTClient_azure_detail: TRESTClient
    Authenticator = httpAuth_Azure
    BaseURL = 
      'https://3e0h2cz1k1ji0ttu.myfritz.net:2443/PCM-DEV/PCM-Desktop/_a' +
      'pis/wit'
    Params = <>
    SynchronizedEvents = False
    Left = 728
    Top = 640
  end
  object qry_Azure: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * FROM manager_azure_priv'
      '')
    Left = 320
    Top = 96
  end
  object qry_Prio: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * FROM manager_tickets_priority'
      '')
    Left = 512
    Top = 96
  end
  object ds_Prio: TDataSource
    DataSet = qry_Prio
    Left = 608
    Top = 128
  end
  object qry_Tickets_priv: TFDQuery
    AfterScroll = qry_Tickets_privAfterScroll
    Filter = 'Status = '#39'Fertig'#39
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_tickets_priv')
    Left = 192
    Top = 600
  end
  object ds_Tickets_priv: TDataSource
    DataSet = qry_Tickets_priv
    Left = 272
    Top = 600
  end
  object httpAuth_Jira: THTTPBasicAuthenticator
    Username = 'Jens.Henske@outlook.com'
    Password = 
      'ATATT3xFfGF0tVpc1MPdKU2d1603BU3gMBJJmOuwcsnC3Q2lLS9rW4bY_pZU5W2K' +
      'QCCTQh_z_SEJ88szd3KTfFmsrQwriV9uqVhxaBbWfxIBIQ2lAFzdPV0Nfm99p6F1' +
      'FgFmjnyx5jJlioraphhrMOFkH_4XOQ6oZNKovYtsk04-Y72oNOzzvSA=C0E898E3'
    Left = 728
    Top = 528
  end
  object RESTClient_jira: TRESTClient
    Authenticator = httpAuth_Jira
    BaseURL = 'http://'#39'https://pcm-software.atlassian.net/rest'
    Params = <>
    SynchronizedEvents = False
    Left = 728
    Top = 584
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvAcceptCharset]
    AcceptCharset = 'utf-8, *;q=0.8'
    Client = RESTClient_azure
    Method = rmPOST
    Params = <>
    Resource = 'wiql?api-version=7.0'
    SynchronizedEvents = False
    Left = 936
    Top = 544
  end
end
