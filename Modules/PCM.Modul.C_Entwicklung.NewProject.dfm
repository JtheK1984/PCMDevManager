object frm_NewProject: Tfrm_NewProject
  Left = 0
  Top = 0
  Caption = 'PCM - DevManager: Neues Projekt'
  ClientHeight = 540
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 813
    Height = 540
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitLeft = -656
    ExplicitTop = -359
    ExplicitWidth = 1280
    ExplicitHeight = 800
    object img_DelphiLogo: TcxDBImage
      AlignWithMargins = True
      Left = 691
      Top = 47
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabStop = False
      DataBinding.DataField = 'Logo'
      Properties.GraphicClassName = 'TdxPNGImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Transparent = True
      Height = 100
      Width = 100
    end
    object edt_ProjectMSBuild: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 160
      Top = 101
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Script'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 492
    end
    object edt_Projectname: TcxDBTextEdit
      AlignWithMargins = True
      Left = 160
      Top = 47
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Name'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 492
    end
    object edt_Projectpath: TcxDBButtonEdit
      AlignWithMargins = True
      Left = 160
      Top = 73
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Path'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_ProjectpathPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 492
    end
    object chkbx_32Bit: TcxDBCheckBox
      AlignWithMargins = True
      Left = 177
      Top = 422
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = '32-Bit Version'
      DataBinding.DataField = '32Bit'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Transparent = True
      Height = 19
      Width = 148
    end
    object chkbx_64Bit: TcxDBCheckBox
      AlignWithMargins = True
      Left = 22
      Top = 422
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = '64-Bit Version'
      DataBinding.DataField = '64Bit'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Transparent = True
      Height = 20
      Width = 148
    end
    object chkbx_Mobile: TcxDBCheckBox
      AlignWithMargins = True
      Left = 332
      Top = 422
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Mobile App Version'
      DataBinding.DataField = 'Mobile'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Transparent = True
      Height = 19
      Width = 149
    end
    object chkbx_Licence: TcxDBCheckBox
      AlignWithMargins = True
      Left = 488
      Top = 422
      AutoSize = False
      Caption = 'Version ben'#246'tigt Lizenz'
      DataBinding.DataField = 'Lizenz'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Transparent = True
      Height = 13
      Width = 148
    end
    object chkbx_Language: TcxDBCheckBox
      AlignWithMargins = True
      Left = 643
      Top = 422
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Version wird '#252'bersetzt'
      DataBinding.DataField = 'Localize'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Transparent = True
      Height = 19
      Width = 148
    end
    object cxDBMaskEdit3: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 160
      Top = 449
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 122
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Major'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Height = 21
      Width = 30
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 314
      Top = 449
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 122
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Minor'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Height = 21
      Width = 30
    end
    object cxDBMaskEdit4: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 468
      Top = 449
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 110
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Output'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Height = 21
      Width = 30
    end
    object cxDBMaskEdit5: TcxDBMaskEdit
      AlignWithMargins = True
      Left = 622
      Top = 449
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 110
      Margins.Bottom = 0
      AutoSize = False
      DataBinding.DataField = 'Build'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Height = 21
      Width = 30
    end
    object cxDBTextEdit1: TcxDBTextEdit
      AlignWithMargins = True
      Left = 160
      Top = 129
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 5
      Margins.Bottom = 0
      DataBinding.DataField = 'Beschreibung'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 492
    end
    object cxDBMemo1: TcxDBMemo
      Left = 160
      Top = 155
      DataBinding.DataField = 'DLL'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 170
      Width = 631
    end
    object cxDBMemo2: TcxDBMemo
      Left = 160
      Top = 332
      DataBinding.DataField = 'Components'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 60
      Width = 631
    end
    object cxButton1: TcxButton
      Left = 12
      Top = 487
      Width = 100
      Height = 25
      Caption = 'Speichern'
      OptionsImage.ImageIndex = 27
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 16
    end
    object cxButton2: TcxButton
      Left = 119
      Top = 487
      Width = 100
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 17
      OnClick = cxButton2Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Neues Projekt'
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Neues Projekt'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
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
      ControlOptions.OriginalHeight = 21
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
      ControlOptions.OriginalHeight = 21
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
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
