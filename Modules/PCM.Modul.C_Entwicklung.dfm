object frm_Dev: Tfrm_Dev
  Left = 0
  Top = 0
  Caption = 'PCM - DEV - Workspace'
  ClientHeight = 600
  ClientWidth = 1280
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
  object lactrl_Main: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 600
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object grd_Helpprogs: TcxGrid
      Left = 28
      Top = 76
      Width = 1220
      Height = 140
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.NativeStyle = False
      object grdDBTblView_Helpprogs: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_HelpprogsCellDblClick
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
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewCol_HelpProgsProgname: TcxGridDBColumn
          Caption = 'Programmname'
          DataBinding.FieldName = 'Name'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblViewCol_HelpProgsProgpath: TcxGridDBColumn
          Caption = 'Programmpfad'
          DataBinding.FieldName = 'Path'
          DataBinding.IsNullValueType = True
          Width = 1140
        end
        object grdDBTblViewCol_HelpProgsImage: TcxGridDBColumn
          DataBinding.FieldName = 'Logo'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
          Width = 60
        end
      end
      object grdlvl_Helpprogs: TcxGridLevel
        GridView = grdDBTblView_Helpprogs
      end
    end
    object grd_Projects: TcxGrid
      Left = 28
      Top = 332
      Width = 1220
      Height = 95
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Projects: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_ProjectsCellDblClick
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
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewCol_ProjectsProgname: TcxGridDBColumn
          Caption = 'Programmname'
          DataBinding.FieldName = 'Name'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblViewCol_ProjectsProgpath: TcxGridDBColumn
          Caption = 'Programmpfad'
          DataBinding.FieldName = 'Path'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 450
        end
        object grdDBTblViewCol_ProjectsScript: TcxGridDBColumn
          DataBinding.FieldName = 'Script'
          DataBinding.IsNullValueType = True
          Width = 390
        end
        object grdDBTblViewCol_ProjectsImage: TcxGridDBColumn
          DataBinding.FieldName = 'Logo'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
          Width = 60
        end
        object grdDBTblViewCol_Projects64Bit: TcxGridDBColumn
          AlternateCaption = '60'
          Caption = '64-Bit'
          DataBinding.FieldName = '64Bit'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_Projects32Bit: TcxGridDBColumn
          Caption = '32-Bit'
          DataBinding.FieldName = '32Bit'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_ProjectsMobile: TcxGridDBColumn
          DataBinding.FieldName = 'Mobile'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_ProjectsLicence: TcxGridDBColumn
          DataBinding.FieldName = 'Lizenz'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
        object grdDBTblViewCol_ProjectsLocalize: TcxGridDBColumn
          DataBinding.FieldName = 'Localize'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 60
        end
      end
      object grdLvl_Projects: TcxGridLevel
        GridView = grdDBTblView_Projects
      end
    end
    object brdckCtrl_Projects: TdxBarDockControl
      Left = 28
      Top = 263
      Width = 1220
      Height = 63
      Align = dalNone
      BarManager = brmgr_Main
    end
    object grd_Scripts: TcxGrid
      Left = 28
      Top = 474
      Width = 1220
      Height = 94
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Scripts: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_ScriptsCellDblClick
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
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewCol_ScriptsProgname: TcxGridDBColumn
          Caption = 'Programmname'
          DataBinding.FieldName = 'Name'
          Width = 200
        end
        object grdDBTblViewCol_ScriptsProgpath: TcxGridDBColumn
          Caption = 'Programmpfad'
          DataBinding.FieldName = 'Path'
          Width = 1140
        end
        object grdDBTblViewCol_ScriptsImage: TcxGridDBColumn
          DataBinding.FieldName = 'Logo'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
          Width = 60
        end
      end
      object grdLvl_Scripts: TcxGridLevel
        GridView = grdDBTblView_Scripts
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1238
      Height = 63
      Align = dalNone
      BarManager = brmgr_Main
      Visible = False
    end
    object grd_Versions: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1220
      Height = 119
      TabOrder = 5
      Visible = False
      object grdDBTblView_Versions: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnFocusedRecordChanged = grdDBTblView_VersionsFocusedRecordChanged
        DataController.DataSource = ds_SourceAPP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdDBTblView_VersionsName: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          Width = 800
        end
        object grdDBTblView_VersionsVersion: TcxGridDBColumn
          DataBinding.FieldName = 'Version'
          Width = 100
        end
        object grdDBTblView_VersionsArchitektur: TcxGridDBColumn
          DataBinding.FieldName = 'Architektur'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = '64 Bit'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = '32 Bit'
              Value = 1
            end
            item
              Description = 'keine'
              Value = -1
            end>
          Width = 120
        end
        object grdDBTblView_VersionsArchitektur1: TcxGridDBColumn
          Caption = 'Architektur 2'
          DataBinding.FieldName = 'Architektur1'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'keine'
              ImageIndex = 0
              Value = -1
            end
            item
              Description = '64 Bit'
              Value = 0
            end
            item
              Description = '32 Bit'
              Value = 1
            end>
          Width = 120
        end
      end
      object grdLvl_Versions: TcxGridLevel
        GridView = grdDBTblView_Versions
      end
    end
    object grd_Progs: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1216
      Height = 251
      TabOrder = 20
      Visible = False
      object grdDBTblView_Progs: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = grdDBTblView_ProgsCellClick
        DataController.DataSource = ds_SourceDir
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdDBTblView_ProgsRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object grdDBTblView_ProgsBackup: TcxGridDBColumn
          DataBinding.FieldName = 'Backup'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 100
        end
        object grdDBTblView_ProgsProgram: TcxGridDBColumn
          Caption = 'Programm'
          DataBinding.FieldName = 'Program'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 860
        end
      end
      object grdLVL_Progs: TcxGridLevel
        GridView = grdDBTblView_Progs
      end
    end
    object chkbx_Aktiv: TcxDBCheckBox
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Aktiv'
      DataBinding.DataSource = ds_SourceAPP
      ParentBackground = False
      ParentColor = False
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.Color = clWindowFrame
      Style.HotTrack = False
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.Shadow = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleReadOnly.LookAndFeel.Kind = lfUltraFlat
      TabOrder = 11
      Transparent = True
      Visible = False
      OnClick = chkbx_AktivClick
      Height = 19
      Width = 15
    end
    object edt_Destination: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Destination'
      DataBinding.DataSource = ds_SourceAPP
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_DestinationPropertiesButtonClick
      Properties.OnEditValueChanged = edt_DestinationPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Visible = False
      Width = 534
    end
    object edt_Files: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'FileExt'
      DataBinding.DataSource = ds_SourceAPP
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_FilesPropertiesButtonClick
      Properties.OnEditValueChanged = edt_FilesPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Visible = False
      Width = 1053
    end
    object edt_Name: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = ds_SourceAPP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Visible = False
      Width = 1017
    end
    object edt_Source: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Source'
      DataBinding.DataSource = ds_SourceAPP
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_SourcePropertiesButtonClick
      Properties.OnEditValueChanged = edt_SourcePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Visible = False
      Width = 530
    end
    object edt_Version: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Version'
      DataBinding.DataSource = ds_SourceAPP
      Properties.EditMask = '!0.0;1;_'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Visible = False
      Width = 50
    end
    object imgCmbbx_Architektur: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Architektur'
      DataBinding.DataSource = ds_SourceAPP
      Properties.Items = <
        item
          Description = '64 Bit'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = '32 Bit'
          Value = 1
        end
        item
          Description = 'keine'
          Value = -1
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Visible = False
      Width = 518
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Architektur1'
      DataBinding.DataSource = ds_SourceAPP
      Properties.Items = <
        item
          Description = 'keine'
          ImageIndex = 0
          Value = -1
        end
        item
          Description = '64 Bit'
          Value = 0
        end
        item
          Description = '32 Bit'
          Value = 1
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Visible = False
      Width = 518
    end
    object edt_PathSetup: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PfadInno'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_PathSetupPropertiesButtonClick
      Properties.OnEditValueChanged = edt_PathSetupPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Visible = False
      Width = 1117
    end
    object edt_PathExe: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'DateiInno'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_PathExePropertiesButtonClick
      Properties.OnEditValueChanged = edt_PathExePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Visible = False
      Width = 906
    end
    object chkbx_PathExeApk: TcxDBCheckBox
      Left = 10000
      Top = 10000
      BiDiMode = bdRightToLeft
      Caption = 'EXE / APK komprimieren'
      DataBinding.DataField = 'Komprimieren'
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = chkbx_PathExeApkPropertiesEditValueChanged
      Style.Color = clWindowFrame
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Transparent = True
      Visible = False
    end
    object edt_MSBuild: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'MSBuild'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_MSBuildPropertiesButtonClick
      Properties.OnEditValueChanged = edt_MSBuildPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Visible = False
      Width = 930
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 10000
      Top = 10000
      BiDiMode = bdRightToLeft
      Caption = 'EXE / APK '#252'ber MSBuild erzeugen'
      DataBinding.DataField = 'CreateMSBUILD'
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.Color = clWindowFrame
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Transparent = True
      Visible = False
      OnClick = cxDBCheckBox1Click
    end
    object chkbx_Copy: TcxDBCheckBox
      Left = 10000
      Top = 10000
      BiDiMode = bdRightToLeft
      Caption = 'Kopieren'
      DataBinding.DataField = 'Kopieren'
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = chkbx_CopyPropertiesEditValueChanged
      Style.Color = clWindowFrame
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Transparent = True
      Visible = False
      OnClick = chkbx_CopyClick
    end
    object lagrp_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_Main: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Entwicklung'
      ShowBorder = False
      Index = 0
    end
    object laitm_gridHelpProgs: TdxLayoutItem
      Parent = lagrp_Helpprogs
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Helpprogs
      ControlOptions.OriginalHeight = 140
      ControlOptions.OriginalWidth = 823
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_Projects: TdxLayoutGroup
      Parent = lagrp_Main
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Projekte'
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object laitm_ToolbarScripts: TdxLayoutItem
      Parent = lagrp_Projects
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Projects
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 823
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_gridProjects: TdxLayoutItem
      Parent = lagrp_Projects
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Projects
      ControlOptions.OriginalHeight = 286
      ControlOptions.OriginalWidth = 823
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_Scripts: TdxLayoutGroup
      Parent = lagrp_Main
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Scripte'
      ButtonOptions.ShowExpandButton = True
      Index = 2
    end
    object laitm_gridScripts: TdxLayoutItem
      Parent = lagrp_Scripts
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Scripts
      ControlOptions.OriginalHeight = 220
      ControlOptions.OriginalWidth = 823
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_Helpprogs: TdxLayoutGroup
      Parent = lagrp_Main
      CaptionOptions.Text = 'Hilfsprogramme'
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lagrp_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Quellcodesicherung'
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1280
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Allgemein'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Versions
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 1171
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object pc_SourceCode: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = pc_SourceCodeTabChanged
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = pc_SourceCode
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Verzeichnis Konfiguration'
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = pc_SourceCode
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grundkonfiguration'
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Backup Quellcode'
      ItemIndex = 3
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Progs
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1167
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_Name
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Version:'
      Control = edt_Version
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pfad MSBuild:'
      Control = edt_MSBuild
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '2. Architektur:'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Architektur:'
      Control = imgCmbbx_Architektur
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Backup:'
      Control = chkbx_Aktiv
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 15
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dateien:'
      Control = edt_Files
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Zielpfad:'
      Control = edt_Destination
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Quellpfad:'
      Control = edt_Source
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = ' Komprimieren / Erzeugen / INNO-Setup'
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkbx_Copy
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkbx_PathExeApk
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pfad EXE / APK:'
      Control = edt_PathExe
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pfad Setup:'
      Control = edt_PathSetup
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 600
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object grpbx_Progress: TcxGroupBox
    Left = 437
    Top = 172
    BiDiMode = bdLeftToRight
    Caption = 'Status'
    ParentBiDiMode = False
    TabOrder = 1
    Visible = False
    Height = 124
    Width = 550
    object prgbr_CopyConfig: TcxProgressBar
      AlignWithMargins = True
      Left = 2
      Top = 55
      Margins.Left = 0
      Margins.Top = 9
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = False
      TabOrder = 0
      Height = 19
      Width = 546
    end
    object prgbr_CopyFile: TcxProgressBar
      AlignWithMargins = True
      Left = 2
      Top = 27
      Margins.Left = 0
      Margins.Top = 9
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = False
      TabOrder = 1
      Height = 19
      Width = 546
    end
    object prgbr_CopyProjekt: TcxProgressBar
      Left = 3
      Top = 118
      AutoSize = False
      TabOrder = 2
      Visible = False
      Height = 19
      Width = 546
    end
    object lbl_Config: TcxLabel
      AlignWithMargins = True
      Left = 2
      Top = 99
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'lbl_Config'
      ParentBiDiMode = False
      TabOrder = 3
      Transparent = True
      Height = 17
      Width = 546
    end
    object lbl_File: TcxLabel
      AlignWithMargins = True
      Left = 2
      Top = 79
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'lbl_File'
      ParentBiDiMode = False
      TabOrder = 4
      Transparent = True
      Height = 17
      Width = 546
    end
    object lbl_Projekt: TcxLabel
      Left = 2
      Top = 124
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'lbl_Projekt'
      ParentBiDiMode = False
      TabOrder = 5
      Transparent = True
      Height = 17
      Width = 546
    end
  end
  object imglst_16x16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 14680368
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
      end>
  end
  object qry_helpprogs: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, Name,Path,Logo From devmanager_helperprograms'
      'order by Name')
    Left = 39
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
      'Select * From devmanager_projects'
      'order by Path,Name')
    Left = 31
    Top = 303
  end
  object qry_Scripts: TFDQuery
    Active = True
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
  object brmgr_Main: TdxBarManager
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
    UseSystemFont = True
    Left = 408
    Top = 392
    PixelsPerInch = 96
    object tb_Projects: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_Projects
      DockedDockControl = brdckCtrl_Projects
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 859
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_EditMSBUILD'
        end
        item
          Visible = True
          ItemName = 'btn_EditDproj'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'btn_CreateMSBUILD'
        end
        item
          Visible = True
          ItemName = 'btn_CreateMSBUILDAll'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'btn_CreateRESFiles'
        end
        item
          Visible = True
          ItemName = 'btn_CreateRESFilesAll'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'btn_CreateHelpScripts'
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
    object brmgr_MainBar1: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1309
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ConfigNew'
        end
        item
          Visible = True
          ItemName = 'btn_ConfigCopy'
        end
        item
          Visible = True
          ItemName = 'btn_ConfigSave'
        end
        item
          Visible = True
          ItemName = 'btn_ConfigDelete'
        end
        item
          Visible = True
          ItemName = 'btn_ConfigCreate'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_CreateHelpScripts: TdxBarLargeButton
      Caption = 'Scripte erstellen'
      Category = 0
      Hint = 'Scripte erstellen'
      Visible = ivAlways
      OnClick = btn_CreateHelpScriptsClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 150
    end
    object btn_EditMSBUILD: TdxBarLargeButton
      Caption = 'MSBuild bearbeiten'
      Category = 0
      Hint = 'MSBuild bearbeiten'
      Visible = ivAlways
      OnClick = btn_EditMSBUILDClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_CreateRESFiles: TdxBarLargeButton
      Caption = 'Res-Files erstellen'
      Category = 0
      Hint = 'Res-Files erstellen'
      Visible = ivAlways
      OnClick = btn_CreateRESFilesClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_CreateRESFilesAll: TdxBarLargeButton
      Caption = 'Alle Res-Files erstellen'
      Category = 0
      Hint = 'Alle Res-Files erstellen'
      Visible = ivAlways
      OnClick = btn_CreateRESFilesAllClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_EditDproj: TdxBarLargeButton
      Caption = 'Dproj bearbeiten'
      Category = 0
      Hint = 'Dproj bearbeiten'
      Visible = ivAlways
      OnClick = btn_EditDprojClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
      SyncImageIndex = False
      ImageIndex = 125
    end
    object btn_CreateMSBUILD: TdxBarLargeButton
      Caption = 'MSBuild erstellen'
      Category = 0
      Hint = 'MSBuild erstellen'
      Visible = ivAlways
      OnClick = btn_CreateMSBUILDClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object btn_CreateMSBUILDAll: TdxBarLargeButton
      Caption = 'Alle MSBuild erstellen'
      Category = 0
      Hint = 'Alle MSBuild erstellen'
      Visible = ivAlways
      OnClick = btn_CreateMSBUILDAllClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Category = 0
      Enabled = False
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Category = 0
      Enabled = False
      Visible = ivAlways
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Category = 0
      Enabled = False
      Visible = ivAlways
    end
    object btn_ConfigNew: TdxBarLargeButton
      Caption = 'Neue Konfig.'
      Category = 0
      Hint = 'Neue Konfig.'
      Visible = ivAlways
      OnClick = btn_ConfigNewClick
      AutoGrayScale = False
      LargeImageIndex = 132
      Width = 125
    end
    object btn_ConfigCopy: TdxBarLargeButton
      Caption = 'Konfig kopieren'
      Category = 0
      Hint = 'Konfig kopieren'
      Visible = ivAlways
      OnClick = btn_ConfigCopyClick
      AutoGrayScale = False
      LargeImageIndex = 132
      Width = 125
    end
    object btn_ConfigSave: TdxBarLargeButton
      Caption = 'Konfig speichern'
      Category = 0
      Hint = 'Konfig speichern'
      Visible = ivAlways
      OnClick = btn_ConfigSaveClick
      AutoGrayScale = False
      LargeImageIndex = 133
      Width = 125
    end
    object btn_ConfigDelete: TdxBarLargeButton
      Caption = 'L'#246'schen'
      Category = 0
      Hint = 'L'#246'schen'
      Visible = ivAlways
      OnClick = btn_ConfigDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 134
      Width = 125
    end
    object btn_ConfigCreate: TdxBarLargeButton
      Caption = 'Backup erstellen'
      Category = 0
      Hint = 'Backup erstellen'
      Visible = ivAlways
      OnClick = btn_ConfigCreateClick
      AutoGrayScale = False
      LargeImageIndex = 122
      Width = 125
    end
  end
  object qry_SourceAPP: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * FROM service_config_quellcode_apps'
      'Order by Name')
    Left = 971
    Top = 264
  end
  object ds_SourceAPP: TDataSource
    DataSet = qry_SourceAPP
    Left = 923
    Top = 328
  end
  object qry_SourceDir: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * FROM service_config_quellcode_dir')
    Left = 995
    Top = 368
  end
  object ds_SourceDir: TDataSource
    DataSet = qry_SourceDir
    Left = 923
    Top = 376
  end
  object tpgb_Copy: TdxTaskbarProgress
    Position = 0
    Left = 155
    Top = 568
  end
  object md_FileExt: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 683
    Top = 248
    object md_FileExtFileExt: TStringField
      FieldName = 'FileExt'
      Size = 50
    end
  end
  object odlg_Script: TdxOpenFileDialog
    Filter = 'MSBUILD Scriptfile (*.bat)|*.bat'
    FilterIndex = 2
    Left = 275
    Top = 320
  end
  object odlg_Files: TdxOpenFileDialog
    Filter = 'Android Package (*.apk)|*.apk|Anwendung (*.exe)|*.exe'
    FilterIndex = 2
    Left = 275
    Top = 232
  end
end
