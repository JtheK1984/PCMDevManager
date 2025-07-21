object frm_Config: Tfrm_Config
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_user'
  ClientHeight = 800
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 800
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object dxBarDockControl1: TdxBarDockControl
      Left = 19
      Top = 44
      Width = 1238
      Height = 63
      Align = dalNone
      BarManager = brmgr_main
    end
    object btn_MSSQLtest: TcxButton
      AlignWithMargins = True
      Left = 28
      Top = 220
      Width = 1220
      Height = 25
      Margins.Left = 7
      Margins.Right = 7
      Caption = 'Verbindung testen'
      TabOrder = 4
      OnClick = btn_MSSQLtestClick
    end
    object cmbbx_Type: TcxDBImageComboBox
      AlignWithMargins = True
      Left = 112
      Top = 145
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      DataBinding.DataField = 'RestType'
      DataBinding.DataSource = ds_Config
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'https://'
          Value = 1
        end
        item
          Description = 'http://'
          ImageIndex = 0
          Value = 0
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 1136
    end
    object cmbbx_port: TcxDBImageComboBox
      AlignWithMargins = True
      Left = 112
      Top = 195
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      DataBinding.DataField = 'RestPort'
      DataBinding.DataSource = ds_Config
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = '5443'
          Value = 1
        end
        item
          Description = '8081'
          ImageIndex = 0
          Value = 0
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 1136
    end
    object edt_BaseUrl: TcxDBTextEdit
      AlignWithMargins = True
      Left = 112
      Top = 170
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      DataBinding.DataField = 'RestBaseUrl'
      DataBinding.DataSource = ds_Config
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 1136
    end
    object edt_Benutzer: TcxDBTextEdit
      AlignWithMargins = True
      Left = 112
      Top = 292
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      AutoSize = False
      DataBinding.DataField = 'RestUser'
      DataBinding.DataSource = ds_Config
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 19
      Width = 1136
    end
    object edt_Passwort: TcxDBTextEdit
      AlignWithMargins = True
      Left = 112
      Top = 317
      Margins.Left = 7
      Margins.Top = 0
      Margins.Right = 7
      AutoSize = False
      DataBinding.DataField = 'RestPassword'
      DataBinding.DataSource = ds_Config
      Properties.EchoMode = eemPassword
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 19
      Width = 1136
    end
    object grd_Helper: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1220
      Height = 567
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Helper: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_helpprogs
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        Filtering.ColumnPopup.MultiSelect = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewCol_NameHelper: TcxGridDBColumn
          Caption = 'Programmname'
          DataBinding.FieldName = 'Name'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblViewCol_PfadHelper: TcxGridDBColumn
          Caption = 'Programmpfad'
          DataBinding.FieldName = 'Path'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 600
        end
        object grdDBTblViewCol_LogoHelper: TcxGridDBColumn
          DataBinding.FieldName = 'Logo'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
        end
      end
      object grdlvl_Helper: TcxGridLevel
        GridView = grdDBTblView_Helper
      end
    end
    object edt_Progname: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = ds_helpprogs
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Visible = False
      OnExit = btn_HelperprogSaveClick
      Width = 1055
    end
    object edt_Progpfad: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Path'
      DataBinding.DataSource = ds_helpprogs
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_progpfadPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Visible = False
      Width = 1055
    end
    object img_ConfigHelpprogsLogo: TcxDBImage
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabStop = False
      DataBinding.DataField = 'Logo'
      DataBinding.DataSource = ds_helpprogs
      Properties.GraphicClassName = 'TdxPNGImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Transparent = True
      Visible = False
      Height = 50
      Width = 50
    end
    object brdckCtrl_Main: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1238
      Height = 63
      Align = dalNone
      BarManager = brmgr_main
      Visible = False
    end
    object brdckCtrl_Delphi: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1238
      Height = 63
      Align = dalNone
      BarManager = brmgr_main
      Visible = False
    end
    object grd_Delphi: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1238
      Height = 202
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Delphi: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Projects
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        Filtering.ColumnPopup.MultiSelect = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewCol_NameDelphi: TcxGridDBColumn
          Caption = 'Projektname'
          DataBinding.FieldName = 'Name'
          Width = 150
        end
        object grdDBTblViewCol_PfadDelphi: TcxGridDBColumn
          Caption = 'Projektpfad'
          DataBinding.FieldName = 'Path'
          Width = 450
        end
        object grdDBTblViewCol_ScriptDelphi: TcxGridDBColumn
          DataBinding.FieldName = 'Script'
          Width = 350
        end
        object grdDBTblView_DelphiBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          Width = 200
        end
        object grdDBTblViewCol_LogoDelphi: TcxGridDBColumn
          DataBinding.FieldName = 'Logo'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
          Width = 60
        end
        object grdDBTblViewCol_64BitDelphi: TcxGridDBColumn
          Caption = '64-Bit'
          DataBinding.FieldName = '64Bit'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_32BitDelphi: TcxGridDBColumn
          Caption = '32-Bit'
          DataBinding.FieldName = '32Bit'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_MobileDelphi: TcxGridDBColumn
          DataBinding.FieldName = 'Mobile'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_LizenzDelphi: TcxGridDBColumn
          DataBinding.FieldName = 'Lizenz'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_LocalizeDelphi: TcxGridDBColumn
          DataBinding.FieldName = 'Localize'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblView_DelphiNUMBER: TcxGridDBColumn
          Caption = 'Nummer'
          DataBinding.FieldName = 'NUMBER'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForExpressionEditor = bFalse
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bFalse
        end
        object grdDBTblView_DelphiCONCATMajorMinorOutputBuild: TcxGridDBColumn
          Caption = 'Version'
          DataBinding.FieldName = 'CONCAT(Major,'#39'.'#39',Minor,'#39'.'#39',Output,'#39'.'#39',Build)'
          Width = 60
        end
      end
      object grdLvl_Delphi: TcxGridLevel
        GridView = grdDBTblView_Delphi
      end
    end
    object img_DelphiLogo: TcxDBImage
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabStop = False
      DataBinding.DataField = 'Logo'
      DataBinding.DataSource = ds_Projects
      Properties.GraphicClassName = 'TdxPNGImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Transparent = True
      Visible = False
      Height = 100
      Width = 100
    end
    object edt_ProjectMSBuild: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Script'
      DataBinding.DataSource = ds_Projects
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_ProjectMSBuildPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Visible = False
      Width = 963
    end
    object edt_Projectname: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = ds_Projects
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Visible = False
      OnExit = btn_HelperprogSaveClick
      Width = 963
    end
    object edt_Projectpath: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Path'
      DataBinding.DataSource = ds_Projects
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_ProjectpathPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Visible = False
      Width = 963
    end
    object chkbx_32Bit: TcxDBCheckBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = '32-Bit Version'
      DataBinding.DataField = '32Bit'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      Transparent = True
      Visible = False
      Height = 19
      Width = 239
    end
    object chkbx_64Bit: TcxDBCheckBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = '64-Bit Version'
      DataBinding.DataField = '64Bit'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Transparent = True
      Visible = False
      Height = 20
      Width = 239
    end
    object chkbx_Mobile: TcxDBCheckBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Mobile App Version'
      DataBinding.DataField = 'Mobile'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Transparent = True
      Visible = False
      Height = 19
      Width = 240
    end
    object chkbx_Licence: TcxDBCheckBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'Version ben'#246'tigt Lizenz'
      DataBinding.DataField = 'Lizenz'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      Transparent = True
      Visible = False
      Height = 13
      Width = 239
    end
    object chkbx_Language: TcxDBCheckBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Version wird '#252'bersetzt'
      DataBinding.DataField = 'Localize'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 24
      Transparent = True
      Visible = False
      Height = 19
      Width = 239
    end
    object cxDBMaskEdit3: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 122
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Major'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 25
      Visible = False
      Height = 21
      Width = 30
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 122
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Minor'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 26
      Visible = False
      Height = 21
      Width = 30
    end
    object cxDBMaskEdit4: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 110
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Output'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 27
      Visible = False
      Height = 21
      Width = 30
    end
    object cxDBMaskEdit5: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 110
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Build'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 28
      Visible = False
      Height = 21
      Width = 30
    end
    object cxDBTextEdit1: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Beschreibung'
      DataBinding.DataSource = ds_Projects
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Visible = False
      OnExit = btn_HelperprogSaveClick
      Width = 963
    end
    object grd_Git: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1238
      Height = 567
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Git: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Scripts
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        Filtering.ColumnPopup.MultiSelect = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewCol_NameGit: TcxGridDBColumn
          Caption = 'Scriptname'
          DataBinding.FieldName = 'Name'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object grdDBTblViewCol_PfadGit: TcxGridDBColumn
          Caption = 'Scriptpfad'
          DataBinding.FieldName = 'Path'
          DataBinding.IsNullValueType = True
          Width = 600
        end
        object grdDBTblViewCol_LogoGit: TcxGridDBColumn
          DataBinding.FieldName = 'Logo'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
        end
      end
      object grdLvl_Git: TcxGridLevel
        GridView = grdDBTblView_Git
      end
    end
    object img_GitLogo: TcxDBImage
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabStop = False
      DataBinding.DataField = 'Logo'
      DataBinding.DataSource = ds_Scripts
      Properties.GraphicClassName = 'TdxPNGImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 33
      Transparent = True
      Visible = False
      Height = 50
      Width = 130
    end
    object edt_Scriptname: TcxDBTextEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = ds_Scripts
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 31
      Visible = False
      OnExit = btn_HelperprogSaveClick
      Width = 992
    end
    object edt_Scriptpath: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Path'
      DataBinding.DataSource = ds_Scripts
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_ScriptpathPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 32
      Visible = False
      Width = 992
    end
    object brdckCtrl_Git: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1238
      Height = 63
      Align = dalNone
      BarManager = brmgr_main
      Visible = False
    end
    object brdckCtrl_Other: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1147
      Height = 63
      Align = dalNone
      BarManager = brmgr_main
      Visible = False
    end
    object edt_other: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Path'
      DataBinding.DataSource = ds_Config
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_otherPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 36
      Visible = False
      Height = 19
      Width = 1094
    end
    object cxDBMemo1: TcxDBMemo
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'DLL'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Visible = False
      Height = 170
      Width = 1099
    end
    object cxDBMemo2: TcxDBMemo
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Components'
      DataBinding.DataSource = ds_Projects
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Visible = False
      Height = 60
      Width = 1099
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
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Restkonfiguration'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Rest - Daten'
      ItemIndex = 3
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Verbindungstyp:'
      Control = cmbbx_Type
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1161
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Base-Url:'
      Control = edt_BaseUrl
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1161
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Port:'
      Control = cmbbx_port
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1161
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_MSSQLtest'
      CaptionOptions.Visible = False
      Control = btn_MSSQLtest
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 1161
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Rest - Basic-Auth'
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_Benutzer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1161
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwort:'
      Control = edt_Passwort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1161
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hilfsprogramme'
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Main'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Main
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hilfsprogramme'
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Prgrammname:'
      Control = edt_Progname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 968
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Programmpfad:'
      Control = edt_Progpfad
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 968
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Icon:'
      Control = img_ConfigHelpprogsLogo
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Helper'
      CaptionOptions.Visible = False
      Control = grd_Helper
      ControlOptions.OriginalHeight = 692
      ControlOptions.OriginalWidth = 1175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Delphi-Projekte'
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Delphi'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Delphi
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Delphi-Projekte'
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Projektname:'
      Control = edt_Projectname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 968
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Projektpfad:'
      Control = edt_Projectpath
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 968
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'MSBuild:'
      Control = edt_ProjectMSBuild
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 968
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Programmbeschreibung:'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 968
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'chkbx_64Bit'
      CaptionOptions.Visible = False
      Control = chkbx_64Bit
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 187
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'chkbx_32Bit'
      CaptionOptions.Visible = False
      Control = chkbx_32Bit
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 187
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'chkbx_Mobile'
      CaptionOptions.Visible = False
      Control = chkbx_Mobile
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 187
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'chkbx_Licence'
      CaptionOptions.Visible = False
      Control = chkbx_Licence
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 187
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'chkbx_Language'
      CaptionOptions.Visible = False
      Control = chkbx_Language
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 187
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Major:'
      CaptionOptions.Width = 112
      Control = cxDBMaskEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Minor:'
      CaptionOptions.Width = 112
      Control = cxDBMaskEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Revision:'
      CaptionOptions.Width = 112
      Control = cxDBMaskEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Build'
      CaptionOptions.Width = 112
      Control = cxDBMaskEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Icon:'
      Control = img_DelphiLogo
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Delphi'
      CaptionOptions.Visible = False
      Control = grd_Delphi
      ControlOptions.OriginalHeight = 539
      ControlOptions.OriginalWidth = 1175
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup33: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'GIT-Scripte'
      Index = 3
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup33
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Git'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Git
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup35: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'GIT-Scripte'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Scriptname:'
      Control = edt_Scriptname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1183
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Scriptpfad:'
      Control = edt_Scriptpath
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1183
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Icon:'
      Control = img_GitLogo
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Git'
      CaptionOptions.Visible = False
      Control = grd_Git
      ControlOptions.OriginalHeight = 692
      ControlOptions.OriginalWidth = 1175
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup42: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pfad Webapps - Webapplikation'
      Index = 4
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup42
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Other'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Other
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup44: TdxLayoutGroup
      Parent = dxLayoutGroup42
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pfad zu Webapps im Tomcatverzeicnis'
      Index = 1
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup44
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pfad:'
      Control = edt_other
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 1165
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '64-Bit:'
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '32-Bit:'
      Index = 0
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutLabeledItem3: TdxLayoutLabeledItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Mobile App:'
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Lizenziert:'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = #220'bersetzen:'
      ShowBorder = False
      Index = 4
    end
    object dxLayoutLabeledItem4: TdxLayoutLabeledItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Lizenzierung:'
      Index = 0
    end
    object dxLayoutLabeledItem5: TdxLayoutLabeledItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = #220'bersetzen:'
      Index = 0
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup33
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = dxLayoutGroup35
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup35
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup25
      CaptionOptions.Text = 'Abh'#228'ngigkeiten:'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 170
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup25
      CaptionOptions.Text = 'Komponenten:'
      Control = cxDBMemo2
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object brmgr_main: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'pm_Playlist'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 640
    Top = 400
    PixelsPerInch = 96
    object tb_helpprogs: TdxBar
      AllowCustomizing = False
      AllowReset = False
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = brdckCtrl_Main
      DockedDockControl = brdckCtrl_Main
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1138
      FloatTop = 2
      FloatClientWidth = 125
      FloatClientHeight = 270
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_HelperprogNew'
        end
        item
          Visible = True
          ItemName = 'btn_HelperprogSave'
        end
        item
          Visible = True
          ItemName = 'btn_HelperprogCancel'
        end
        item
          Visible = True
          ItemName = 'btn_HelperprogDelete'
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
    object tb_Projects: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_Delphi
      DockedDockControl = brdckCtrl_Delphi
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1207
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ProjectsNew'
        end
        item
          Visible = True
          ItemName = 'btn_ProjectsSave'
        end
        item
          Visible = True
          ItemName = 'btn_ProjectsCancel'
        end
        item
          Visible = True
          ItemName = 'btn_ProjectsDelete'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object tb_Scripts: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = brdckCtrl_Git
      DockedDockControl = brdckCtrl_Git
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1207
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ScriptNew'
        end
        item
          Visible = True
          ItemName = 'btn_ScriptSave'
        end
        item
          Visible = True
          ItemName = 'btn_ScriptCancel'
        end
        item
          Visible = True
          ItemName = 'btn_ScriptDelete'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object tb_other: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = brdckCtrl_Other
      DockedDockControl = brdckCtrl_Other
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1207
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_OtherSave'
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
    object tb_Rest: TdxBar
      Caption = 'Custom 5'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1207
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_RestSave'
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
    object btn_HelperprogNew: TdxBarLargeButton
      Caption = 'Programm a&nlegen'
      Category = 0
      Hint = 'Programm anlegen'
      Visible = ivAlways
      OnClick = btn_HelperprogNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_HelperprogDelete: TdxBarLargeButton
      Caption = 'Programm &l'#246'schen'
      Category = 0
      Hint = 'Programm l'#246'schen'
      Visible = ivAlways
      OnClick = btn_HelperprogDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_HelperprogCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_HelperprogCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_HelperprogSave: TdxBarLargeButton
      Caption = 'Programm &speichern'
      Category = 0
      Hint = 'Programm speichern'
      Visible = ivAlways
      OnClick = btn_HelperprogSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_ProjectsNew: TdxBarLargeButton
      Caption = 'Projekt a&nlegen'
      Category = 0
      Hint = 'Projekt anlegen'
      Visible = ivAlways
      OnClick = btn_ProjectsNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_ProjectsSave: TdxBarLargeButton
      Caption = 'Projekt &speichern'
      Category = 0
      Hint = 'Projekt speichern'
      Visible = ivAlways
      OnClick = btn_ProjectsSaveClick
      LargeImageIndex = 12
      Width = 125
    end
    object btn_ProjectsCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_ProjectsCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_ProjectsDelete: TdxBarLargeButton
      Caption = 'Projekt &l'#246'schen'
      Category = 0
      Hint = 'Projekt l'#246'schen'
      Visible = ivAlways
      OnClick = btn_ProjectsDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_ScriptNew: TdxBarLargeButton
      Caption = 'Script &anlegen'
      Category = 0
      Hint = 'Script anlegen'
      Visible = ivAlways
      OnClick = btn_ScriptNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_ScriptSave: TdxBarLargeButton
      Caption = 'Script &speichern'
      Category = 0
      Hint = 'Script speichern'
      Visible = ivAlways
      OnClick = btn_ScriptSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_ScriptCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_ScriptCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_ScriptDelete: TdxBarLargeButton
      Caption = 'Script &l'#246'schen'
      Category = 0
      Hint = 'Script l'#246'schen'
      Visible = ivAlways
      OnClick = btn_ScriptDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_OtherSave: TdxBarLargeButton
      Caption = 'Pfad &speichern'
      Category = 0
      Hint = 'Pfad speichern'
      Visible = ivAlways
      OnClick = btn_OtherSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_RestSave: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_RestSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
  end
  object qry_helpprogs: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, Name,Path,Logo From devmanager_helperprograms'
      'order by Name')
    Left = 31
    Top = 247
  end
  object ds_helpprogs: TDataSource
    DataSet = qry_helpprogs
    Left = 114
    Top = 247
  end
  object ds_Projects: TDataSource
    DataSet = qry_Projects
    Left = 114
    Top = 303
  end
  object qry_Projects: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT ID,Name,Path,Script,Logo,64Bit,32Bit,Mobile, Lizenz, Loca' +
        'lize,Programm,Major,Minor,Output,Build,Beschreibung'
      ',CONCAT(Major,'#39'.'#39',Minor,'#39'.'#39',Output,'#39'.'#39',Build),DLL, Components'
      'From devmanager_projects'
      'order by Path,Name')
    Left = 31
    Top = 303
  end
  object dlgOpen_Helperexe: TdxOpenFileDialog
    Filter = 'Applikationen|*.exe'
    Left = 192
    Top = 253
  end
  object dlgOpen_Project: TdxOpenFileDialog
    Filter = 'Delphi-Projekt|*.dproj'
    Left = 200
    Top = 317
  end
  object dlgOpen_Script: TdxOpenFileDialog
    Filter = 'Script|*.bat'
    Left = 272
    Top = 309
  end
  object qry_Scripts: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From devmanager_scripts'
      'order by Name')
    Left = 31
    Top = 359
  end
  object ds_Scripts: TDataSource
    DataSet = qry_Scripts
    Left = 114
    Top = 359
  end
  object dlgOpen_ScriptGit: TdxOpenFileDialog
    Filter = 'Script|*.bat'
    Left = 200
    Top = 373
  end
  object qry_Config: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From devmanager_config')
    Left = 23
    Top = 423
  end
  object ds_Config: TDataSource
    DataSet = qry_Config
    Left = 106
    Top = 423
  end
end
