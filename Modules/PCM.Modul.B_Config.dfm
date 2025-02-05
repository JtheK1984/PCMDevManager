object frm_Config: Tfrm_Config
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_user'
  ClientHeight = 922
  ClientWidth = 1195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 13
  object grpbx_right: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 922
    Width = 1195
    object pc_Options: TcxPageControl
      Left = 3
      Top = 3
      Width = 1189
      Height = 922
      Align = alTop
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = ts_RestConfig
      Properties.CustomButtons.Buttons = <>
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
      Properties.TabSlants.Kind = skCutCorner
      Properties.TabWidth = 200
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 1191
      ClientRectBottom = 916
      ClientRectLeft = 2
      ClientRectRight = 1183
      ClientRectTop = 27
      object ts_RestConfig: TcxTabSheet
        Caption = 'Restkonfiguration'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 24
        ExplicitWidth = 1191
        ExplicitHeight = 898
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1181
          Height = 63
          Align = dalTop
          BarManager = brmgr_main
        end
        object grpbx_RestConfig: TcxGroupBox
          Left = 0
          Top = 63
          Align = alTop
          Caption = 'Rest - Daten'
          TabOrder = 0
          ExplicitTop = 58
          ExplicitWidth = 1185
          Height = 199
          Width = 1181
          object lbl_Type: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 26
            Margins.Left = 7
            Margins.Top = 11
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Verbindungstyp:'
            Transparent = True
            ExplicitLeft = 2
            ExplicitTop = 29
            ExplicitWidth = 1187
          end
          object lbl_BaseUrl: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 70
            Margins.Left = 7
            Margins.Right = 7
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Base-Url:'
            Transparent = True
            ExplicitLeft = 16
            ExplicitTop = 52
            ExplicitWidth = 48
          end
          object lbl_Port: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 114
            Margins.Left = 7
            Margins.Right = 7
            Margins.Bottom = 0
            Align = alTop
            AutoSize = False
            Caption = 'Port:'
            Transparent = True
            ExplicitLeft = 16
            ExplicitTop = 95
            ExplicitWidth = 26
            Height = 17
            Width = 1161
          end
          object btn_MSSQLtest: TcxButton
            AlignWithMargins = True
            Left = 10
            Top = 158
            Width = 1161
            Height = 25
            Margins.Left = 7
            Margins.Right = 7
            Align = alTop
            Caption = 'Verbindung testen'
            TabOrder = 3
            OnClick = btn_MSSQLtestClick
            ExplicitLeft = 2
            ExplicitTop = 110
            ExplicitWidth = 1187
          end
          object cmbbx_Type: TcxDBImageComboBox
            AlignWithMargins = True
            Left = 10
            Top = 43
            Margins.Left = 7
            Margins.Top = 0
            Margins.Right = 7
            Align = alTop
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
            TabOrder = 0
            ExplicitLeft = 248
            ExplicitTop = 49
            ExplicitWidth = 121
            Width = 1161
          end
          object cmbbx_port: TcxDBImageComboBox
            AlignWithMargins = True
            Left = 10
            Top = 131
            Margins.Left = 7
            Margins.Top = 0
            Margins.Right = 7
            Align = alTop
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
            TabOrder = 2
            ExplicitLeft = -2
            ExplicitTop = 158
            ExplicitWidth = 1173
            Width = 1161
          end
          object edt_BaseUrl: TcxDBTextEdit
            AlignWithMargins = True
            Left = 10
            Top = 87
            Margins.Left = 7
            Margins.Top = 0
            Margins.Right = 7
            Align = alTop
            DataBinding.DataField = 'RestBaseUrl'
            DataBinding.DataSource = ds_Config
            TabOrder = 1
            ExplicitLeft = 536
            ExplicitTop = 88
            ExplicitWidth = 121
            Width = 1161
          end
        end
        object grpbx_authConfig: TcxGroupBox
          Left = 0
          Top = 262
          Align = alTop
          Caption = 'Rest - Basic-Auth'
          TabOrder = 2
          ExplicitTop = 257
          ExplicitWidth = 1185
          Height = 120
          Width = 1181
          object lbl_Benutzer: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 26
            Margins.Left = 7
            Margins.Top = 11
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Benutzer:'
            Transparent = True
            ExplicitLeft = 16
            ExplicitTop = 25
            ExplicitWidth = 51
          end
          object lbl_Passwort: TcxLabel
            AlignWithMargins = True
            Left = 10
            Top = 70
            Margins.Left = 7
            Margins.Right = 7
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Passwort:'
            Transparent = True
            ExplicitLeft = 11
            ExplicitTop = 73
            ExplicitWidth = 1173
          end
          object edt_Benutzer: TcxDBTextEdit
            AlignWithMargins = True
            Left = 10
            Top = 43
            Margins.Left = 7
            Margins.Top = 0
            Margins.Right = 7
            Align = alTop
            DataBinding.DataField = 'RestUser'
            DataBinding.DataSource = ds_Config
            TabOrder = 2
            ExplicitLeft = 536
            ExplicitTop = 88
            ExplicitWidth = 1173
            Width = 1161
          end
          object edt_Passwort: TcxDBTextEdit
            AlignWithMargins = True
            Left = 10
            Top = 87
            Margins.Left = 7
            Margins.Top = 0
            Margins.Right = 7
            Align = alTop
            DataBinding.DataField = 'RestPassword'
            DataBinding.DataSource = ds_Config
            Properties.EchoMode = eemPassword
            TabOrder = 3
            ExplicitLeft = 11
            ExplicitTop = 110
            ExplicitWidth = 1173
            Width = 1161
          end
        end
      end
      object ts_Helper: TcxTabSheet
        Caption = 'Hilfsprogramme'
        ImageIndex = 94
        ExplicitLeft = 0
        ExplicitTop = 24
        ExplicitWidth = 1191
        ExplicitHeight = 898
        object grpbx_Helper: TcxGroupBox
          Left = 0
          Top = 63
          Align = alClient
          Caption = 'Hilfsprogramme'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          ExplicitTop = 58
          ExplicitWidth = 1185
          ExplicitHeight = 840
          Height = 826
          Width = 1181
          object grd_Helper: TcxGrid
            Left = 3
            Top = 125
            Width = 1175
            Height = 692
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LockedStateImageOptions.Effect = lsieDark
            ExplicitLeft = 2
            ExplicitTop = 128
            ExplicitWidth = 1187
            ExplicitHeight = 710
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
          object grpbx_HelperDetail: TcxGroupBox
            Left = 3
            Top = 15
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 18
            ExplicitWidth = 1187
            Height = 110
            Width = 1175
            object cxGroupBox2: TcxGroupBox
              Left = 3
              Top = 3
              Align = alClient
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 998
              ExplicitHeight = 106
              Height = 104
              Width = 984
              object edt_Progname: TcxDBTextEdit
                AlignWithMargins = True
                Left = 8
                Top = 27
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Name'
                DataBinding.DataSource = ds_helpprogs
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                OnExit = btn_HelperprogSaveClick
                ExplicitLeft = 7
                ExplicitTop = 26
                ExplicitWidth = 984
                Width = 968
              end
              object edt_Progpfad: TcxDBButtonEdit
                AlignWithMargins = True
                Left = 8
                Top = 73
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Path'
                DataBinding.DataSource = ds_helpprogs
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = edt_progpfadPropertiesButtonClick
                TabOrder = 1
                ExplicitLeft = 7
                ExplicitTop = 72
                ExplicitWidth = 984
                Width = 968
              end
              object lbl_Progname: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Prgrammname:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 7
                ExplicitWidth = 984
              end
              object lbl_Progpfad: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 54
                Margins.Left = 5
                Margins.Top = 6
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Programmpfad:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 53
                ExplicitWidth = 984
              end
            end
            object cxGroupBox1: TcxGroupBox
              Left = 987
              Top = 3
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alRight
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 1
              ExplicitLeft = 1000
              ExplicitTop = 2
              ExplicitHeight = 106
              Height = 104
              Width = 185
              object img_ConfigHelpprogsLogo: TcxDBImage
                AlignWithMargins = True
                Left = 47
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                TabStop = False
                Align = alClient
                DataBinding.DataField = 'Logo'
                DataBinding.DataSource = ds_helpprogs
                Properties.GraphicClassName = 'TdxPNGImage'
                TabOrder = 0
                Transparent = True
                ExplicitLeft = 46
                ExplicitTop = 7
                ExplicitWidth = 132
                ExplicitHeight = 92
                Height = 88
                Width = 130
              end
              object lbl_helpprogsLogo: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Icon:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 7
                ExplicitHeight = 92
              end
            end
          end
        end
        object brdckCtrl_Main: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1181
          Height = 63
          Align = dalTop
          BarManager = brmgr_main
        end
      end
      object ts_Delphi: TcxTabSheet
        Caption = 'Delphi-Projekte'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 24
        ExplicitWidth = 1191
        ExplicitHeight = 898
        object brdckCtrl_Delphi: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1181
          Height = 63
          Align = dalTop
          BarManager = brmgr_main
        end
        object grpbx_Delphi: TcxGroupBox
          Left = 0
          Top = 63
          Align = alTop
          Caption = 'Delphi-Projekte'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          ExplicitTop = 58
          ExplicitWidth = 1185
          Height = 826
          Width = 1181
          object grd_Delphi: TcxGrid
            Left = 3
            Top = 278
            Width = 1175
            Height = 539
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LockedStateImageOptions.Effect = lsieDark
            ExplicitLeft = 2
            ExplicitTop = 281
            ExplicitWidth = 1187
            ExplicitHeight = 543
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
                DataBinding.IsNullValueType = True
                Width = 150
              end
              object grdDBTblViewCol_PfadDelphi: TcxGridDBColumn
                Caption = 'Projektpfad'
                DataBinding.FieldName = 'Path'
                DataBinding.IsNullValueType = True
                Width = 450
              end
              object grdDBTblViewCol_ScriptDelphi: TcxGridDBColumn
                DataBinding.FieldName = 'Script'
                DataBinding.IsNullValueType = True
                Width = 350
              end
              object grdDBTblView_DelphiBeschreibung: TcxGridDBColumn
                DataBinding.FieldName = 'Beschreibung'
                DataBinding.IsNullValueType = True
                Width = 200
              end
              object grdDBTblViewCol_LogoDelphi: TcxGridDBColumn
                DataBinding.FieldName = 'Logo'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxImageProperties'
                Properties.GraphicClassName = 'TdxPNGImage'
                Width = 60
              end
              object grdDBTblViewCol_64BitDelphi: TcxGridDBColumn
                Caption = '64-Bit'
                DataBinding.FieldName = '64Bit'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCheckBoxProperties'
                Width = 60
              end
              object grdDBTblViewCol_32BitDelphi: TcxGridDBColumn
                Caption = '32-Bit'
                DataBinding.FieldName = '32Bit'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCheckBoxProperties'
                Width = 60
              end
              object grdDBTblViewCol_MobileDelphi: TcxGridDBColumn
                DataBinding.FieldName = 'Mobile'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCheckBoxProperties'
                Width = 60
              end
              object grdDBTblViewCol_LizenzDelphi: TcxGridDBColumn
                DataBinding.FieldName = 'Lizenz'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCheckBoxProperties'
                Width = 60
              end
              object grdDBTblViewCol_LocalizeDelphi: TcxGridDBColumn
                DataBinding.FieldName = 'Localize'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCheckBoxProperties'
                Width = 60
              end
              object grdDBTblView_DelphiNUMBER: TcxGridDBColumn
                Caption = 'Nummer'
                DataBinding.FieldName = 'NUMBER'
                DataBinding.IsNullValueType = True
              end
              object grdDBTblView_DelphiCONCATMajorMinorOutputBuild: TcxGridDBColumn
                Caption = 'Version'
                DataBinding.FieldName = 'CONCAT(Major,'#39'.'#39',Minor,'#39'.'#39',Output,'#39'.'#39',Build)'
                DataBinding.IsNullValueType = True
                Width = 60
              end
            end
            object grdLvl_Delphi: TcxGridLevel
              GridView = grdDBTblView_Delphi
            end
          end
          object grpbx_DelphiDetail: TcxGroupBox
            Left = 3
            Top = 15
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 18
            ExplicitWidth = 1187
            Height = 263
            Width = 1175
            object grpbx_DelphiIcon: TcxGroupBox
              Left = 987
              Top = 3
              Align = alRight
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 0
              ExplicitLeft = 1000
              ExplicitTop = 2
              ExplicitHeight = 259
              Height = 257
              Width = 185
              object img_DelphiLogo: TcxDBImage
                AlignWithMargins = True
                Left = 47
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                TabStop = False
                Align = alClient
                DataBinding.DataField = 'Logo'
                DataBinding.DataSource = ds_Projects
                Properties.GraphicClassName = 'TdxPNGImage'
                Style.BorderStyle = ebsFlat
                TabOrder = 0
                Transparent = True
                ExplicitLeft = 46
                ExplicitTop = 7
                ExplicitWidth = 132
                ExplicitHeight = 245
                Height = 241
                Width = 130
              end
              object lbl_DelphiLogo: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Icon:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 7
                ExplicitHeight = 245
              end
            end
            object grpbx_DelphiDetails: TcxGroupBox
              Left = 3
              Top = 3
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 1
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 998
              ExplicitHeight = 259
              Height = 257
              Width = 984
              object lbl_ProjectMSBuild: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 100
                Margins.Left = 5
                Margins.Top = 6
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'MSBuild-Script:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 99
                ExplicitWidth = 984
              end
              object lbl_Projectname: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Projektname:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 7
                ExplicitWidth = 984
              end
              object lbl_Projectpath: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 54
                Margins.Left = 5
                Margins.Top = 6
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Projektpfad:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 53
                ExplicitWidth = 984
              end
              object edt_ProjectMSBuild: TcxDBButtonEdit
                AlignWithMargins = True
                Left = 8
                Top = 119
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Script'
                DataBinding.DataSource = ds_Projects
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = edt_ProjectMSBuildPropertiesButtonClick
                TabOrder = 2
                ExplicitLeft = 7
                ExplicitTop = 118
                ExplicitWidth = 984
                Width = 968
              end
              object edt_Projectname: TcxDBTextEdit
                AlignWithMargins = True
                Left = 8
                Top = 27
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Name'
                DataBinding.DataSource = ds_Projects
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                OnExit = btn_HelperprogSaveClick
                ExplicitLeft = 7
                ExplicitTop = 26
                ExplicitWidth = 984
                Width = 968
              end
              object edt_Projectpath: TcxDBButtonEdit
                AlignWithMargins = True
                Left = 8
                Top = 73
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Path'
                DataBinding.DataSource = ds_Projects
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = edt_ProjectpathPropertiesButtonClick
                TabOrder = 1
                ExplicitLeft = 7
                ExplicitTop = 72
                ExplicitWidth = 984
                Width = 968
              end
              object grpbx_Detaillbl: TcxGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 186
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                Align = alTop
                PanelStyle.Active = True
                Style.BorderStyle = ebsNone
                TabOrder = 10
                ExplicitLeft = 2
                ExplicitTop = 185
                ExplicitWidth = 994
                Height = 25
                Width = 978
                object lbl_Mobile: TcxLabel
                  AlignWithMargins = True
                  Left = 395
                  Top = 3
                  Margins.Left = 4
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = 'Mobile App:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                  ExplicitLeft = 394
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
                object lbl_Licence: TcxLabel
                  AlignWithMargins = True
                  Left = 590
                  Top = 3
                  Margins.Left = 4
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = 'Lizenziert:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                  ExplicitLeft = 589
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
                object lbl_Language: TcxLabel
                  AlignWithMargins = True
                  Left = 785
                  Top = 3
                  Margins.Left = 4
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = #220'bersetzen:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                  ExplicitLeft = 784
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
                object lbl_32Bit: TcxLabel
                  AlignWithMargins = True
                  Left = 200
                  Top = 3
                  Margins.Left = 4
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = '32-Bit:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                  ExplicitLeft = 199
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
                object lbl_64Bit: TcxLabel
                  AlignWithMargins = True
                  Left = 5
                  Top = 3
                  Margins.Left = 2
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = '64-Bit:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                  ExplicitLeft = 4
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
              end
              object grpbx_DetailChkbx: TcxGroupBox
                Left = 3
                Top = 211
                Margins.Left = 4
                Margins.Top = 0
                Margins.Right = 4
                Margins.Bottom = 0
                Align = alTop
                PanelStyle.Active = True
                Style.BorderStyle = ebsNone
                TabOrder = 4
                ExplicitLeft = 2
                ExplicitTop = 210
                ExplicitWidth = 994
                Height = 25
                Width = 978
                object chkbx_32Bit: TcxDBCheckBox
                  AlignWithMargins = True
                  Left = 200
                  Top = 3
                  Margins.Left = 4
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = '32-Bit Version'
                  DataBinding.DataField = '32Bit'
                  DataBinding.DataSource = ds_Projects
                  Style.TransparentBorder = False
                  TabOrder = 1
                  Transparent = True
                  ExplicitLeft = 199
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
                object chkbx_64Bit: TcxDBCheckBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 3
                  Margins.Left = 2
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = '64-Bit Version'
                  DataBinding.DataField = '64Bit'
                  DataBinding.DataSource = ds_Projects
                  Style.TransparentBorder = False
                  TabOrder = 0
                  Transparent = True
                  ExplicitLeft = 4
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
                object chkbx_Mobile: TcxDBCheckBox
                  AlignWithMargins = True
                  Left = 395
                  Top = 3
                  Margins.Left = 4
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = 'Mobile App Version'
                  DataBinding.DataField = 'Mobile'
                  DataBinding.DataSource = ds_Projects
                  Style.TransparentBorder = False
                  TabOrder = 2
                  Transparent = True
                  ExplicitLeft = 394
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
                object chkbx_Licence: TcxDBCheckBox
                  AlignWithMargins = True
                  Left = 589
                  Top = 6
                  Align = alLeft
                  AutoSize = False
                  Caption = 'Version ben'#246'tigt Lizenz'
                  DataBinding.DataField = 'Lizenz'
                  DataBinding.DataSource = ds_Projects
                  Style.TransparentBorder = False
                  TabOrder = 3
                  Transparent = True
                  ExplicitLeft = 588
                  ExplicitTop = 5
                  ExplicitHeight = 15
                  Height = 13
                  Width = 187
                end
                object chkbx_Language: TcxDBCheckBox
                  AlignWithMargins = True
                  Left = 785
                  Top = 3
                  Margins.Left = 6
                  Margins.Top = 0
                  Margins.Right = 4
                  Margins.Bottom = 0
                  Align = alLeft
                  AutoSize = False
                  Caption = 'Version wird '#252'bersetzt'
                  DataBinding.DataField = 'Localize'
                  DataBinding.DataSource = ds_Projects
                  Style.TransparentBorder = False
                  TabOrder = 4
                  Transparent = True
                  ExplicitLeft = 784
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Height = 19
                  Width = 187
                end
              end
              object cxGroupBox3: TcxGroupBox
                Left = 3
                Top = 236
                Margins.Left = 4
                Margins.Top = 0
                Margins.Right = 4
                Margins.Bottom = 0
                Align = alTop
                PanelStyle.Active = True
                Style.BorderStyle = ebsNone
                TabOrder = 5
                ExplicitLeft = 2
                ExplicitTop = 235
                ExplicitWidth = 994
                Height = 25
                Width = 978
                object cxLabel2: TcxLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 5
                  Margins.Left = 0
                  Margins.Top = 2
                  Margins.Right = 8
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = 'Major:'
                  Transparent = True
                  ExplicitLeft = 2
                  ExplicitTop = 4
                  ExplicitHeight = 17
                end
                object cxDBMaskEdit3: TcxDBMaskEdit
                  AlignWithMargins = True
                  Left = 46
                  Top = 3
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 122
                  Margins.Bottom = 0
                  Align = alLeft
                  DataBinding.DataField = 'Major'
                  DataBinding.DataSource = ds_Projects
                  TabOrder = 0
                  ExplicitLeft = 45
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Width = 30
                end
                object cxLabel3: TcxLabel
                  AlignWithMargins = True
                  Left = 588
                  Top = 5
                  Margins.Left = 0
                  Margins.Top = 2
                  Margins.Right = 8
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = 'Build:'
                  Transparent = True
                  ExplicitLeft = 587
                  ExplicitTop = 4
                  ExplicitHeight = 17
                end
                object cxLabel4: TcxLabel
                  AlignWithMargins = True
                  Left = 392
                  Top = 5
                  Margins.Left = 0
                  Margins.Top = 2
                  Margins.Right = 8
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = 'Revision:'
                  Transparent = True
                  ExplicitLeft = 391
                  ExplicitTop = 4
                  ExplicitHeight = 17
                end
                object cxLabel5: TcxLabel
                  AlignWithMargins = True
                  Left = 198
                  Top = 5
                  Margins.Left = 0
                  Margins.Top = 2
                  Margins.Right = 8
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = 'Minor:'
                  Transparent = True
                  ExplicitLeft = 197
                  ExplicitTop = 4
                  ExplicitHeight = 17
                end
                object cxDBMaskEdit2: TcxDBMaskEdit
                  AlignWithMargins = True
                  Left = 240
                  Top = 3
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 122
                  Margins.Bottom = 0
                  Align = alLeft
                  DataBinding.DataField = 'Minor'
                  DataBinding.DataSource = ds_Projects
                  TabOrder = 1
                  ExplicitLeft = 239
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Width = 30
                end
                object cxDBMaskEdit4: TcxDBMaskEdit
                  AlignWithMargins = True
                  Left = 448
                  Top = 3
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 110
                  Margins.Bottom = 0
                  Align = alLeft
                  DataBinding.DataField = 'Output'
                  DataBinding.DataSource = ds_Projects
                  TabOrder = 2
                  ExplicitLeft = 447
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Width = 30
                end
                object cxDBMaskEdit5: TcxDBMaskEdit
                  AlignWithMargins = True
                  Left = 626
                  Top = 3
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 110
                  Margins.Bottom = 0
                  Align = alLeft
                  DataBinding.DataField = 'Build'
                  DataBinding.DataSource = ds_Projects
                  TabOrder = 3
                  ExplicitLeft = 625
                  ExplicitTop = 2
                  ExplicitHeight = 21
                  Width = 30
                end
              end
              object cxLabel6: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 146
                Margins.Left = 5
                Margins.Top = 6
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Programmbeschreibung:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 145
                ExplicitWidth = 984
              end
              object cxDBTextEdit1: TcxDBTextEdit
                AlignWithMargins = True
                Left = 8
                Top = 165
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Beschreibung'
                DataBinding.DataSource = ds_Projects
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 3
                OnExit = btn_HelperprogSaveClick
                ExplicitLeft = 7
                ExplicitTop = 164
                ExplicitWidth = 984
                Width = 968
              end
            end
          end
        end
      end
      object ts_Git: TcxTabSheet
        Caption = 'GIT-Scripte'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 24
        ExplicitWidth = 1191
        ExplicitHeight = 898
        object grpbx_Git: TcxGroupBox
          Left = 0
          Top = 63
          Align = alClient
          Caption = 'GIT-Scripte'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          ExplicitTop = 58
          ExplicitWidth = 1185
          ExplicitHeight = 840
          Height = 826
          Width = 1181
          object grd_Git: TcxGrid
            Left = 3
            Top = 125
            Width = 1175
            Height = 692
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LockedStateImageOptions.Effect = lsieDark
            ExplicitLeft = 2
            ExplicitTop = 128
            ExplicitWidth = 1187
            ExplicitHeight = 710
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
          object grpbx_GitDetail: TcxGroupBox
            Left = 3
            Top = 15
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 18
            ExplicitWidth = 1187
            Height = 110
            Width = 1175
            object grpbx_GitIcon: TcxGroupBox
              Left = 987
              Top = 3
              Align = alRight
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 0
              ExplicitLeft = 1000
              ExplicitTop = 2
              ExplicitHeight = 106
              Height = 104
              Width = 185
              object img_GitLogo: TcxDBImage
                AlignWithMargins = True
                Left = 47
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                TabStop = False
                Align = alClient
                DataBinding.DataField = 'Logo'
                DataBinding.DataSource = ds_Scripts
                Properties.GraphicClassName = 'TdxPNGImage'
                TabOrder = 0
                Transparent = True
                ExplicitLeft = 46
                ExplicitTop = 7
                ExplicitWidth = 132
                ExplicitHeight = 92
                Height = 88
                Width = 130
              end
              object lbl_GitLogo: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alLeft
                Caption = 'Icon:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 7
                ExplicitHeight = 92
              end
            end
            object grpbx_GitDetails: TcxGroupBox
              Left = 3
              Top = 3
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 1
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 998
              ExplicitHeight = 106
              Height = 104
              Width = 984
              object edt_Scriptname: TcxDBTextEdit
                AlignWithMargins = True
                Left = 8
                Top = 27
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Name'
                DataBinding.DataSource = ds_Scripts
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                OnExit = btn_HelperprogSaveClick
                ExplicitLeft = 7
                ExplicitTop = 26
                ExplicitWidth = 984
                Width = 968
              end
              object edt_Scriptpath: TcxDBButtonEdit
                AlignWithMargins = True
                Left = 8
                Top = 73
                Margins.Left = 5
                Margins.Top = 2
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                DataBinding.DataField = 'Path'
                DataBinding.DataSource = ds_Scripts
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = edt_ScriptpathPropertiesButtonClick
                TabOrder = 1
                ExplicitLeft = 7
                ExplicitTop = 72
                ExplicitWidth = 984
                Width = 968
              end
              object lbl_Scriptname: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 8
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Scriptname:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 7
                ExplicitWidth = 984
              end
              object lbl_Scriptpath: TcxLabel
                AlignWithMargins = True
                Left = 8
                Top = 54
                Margins.Left = 5
                Margins.Top = 6
                Margins.Right = 5
                Margins.Bottom = 0
                Align = alTop
                Caption = 'Scriptpfad:'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                Transparent = True
                ExplicitLeft = 7
                ExplicitTop = 53
                ExplicitWidth = 984
              end
            end
          end
        end
        object brdckCtrl_Git: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1181
          Height = 63
          Align = dalTop
          BarManager = brmgr_main
        end
      end
      object ts_other: TcxTabSheet
        Caption = 'Pfad Webapps - Webapplikation'
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 24
        ExplicitWidth = 1191
        ExplicitHeight = 898
        object brdckCtrl_Other: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1181
          Height = 63
          Align = dalTop
          BarManager = brmgr_main
        end
        object grpbx_other: TcxGroupBox
          Left = 0
          Top = 63
          Align = alClient
          Caption = 'Pfad zu Webapps im Tomcatverzeicnis'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          ExplicitTop = 58
          ExplicitWidth = 1185
          ExplicitHeight = 840
          Height = 826
          Width = 1181
          object edt_other: TcxDBButtonEdit
            AlignWithMargins = True
            Left = 8
            Top = 45
            Margins.Left = 5
            Margins.Top = 2
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            DataBinding.DataField = 'Path'
            DataBinding.DataSource = ds_Config
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = edt_otherPropertiesButtonClick
            TabOrder = 0
            ExplicitLeft = 7
            ExplicitTop = 48
            ExplicitWidth = 1177
            Width = 1165
          end
          object lbl_other: TcxLabel
            AlignWithMargins = True
            Left = 14
            Top = 26
            Margins.Left = 11
            Margins.Top = 11
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Pfad:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
            ExplicitLeft = 13
            ExplicitTop = 29
            ExplicitWidth = 1176
          end
        end
      end
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
      
        'SELECT Name,Path,Script,Logo,64Bit,32Bit,Mobile, Lizenz, Localiz' +
        'e,Programm,Major,Minor,Output,Build,Beschreibung'
      ',CONCAT(Major,'#39'.'#39',Minor,'#39'.'#39',Output,'#39'.'#39',Build)'
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
    Active = True
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
