object frm_NewProject: Tfrm_NewProject
  Left = 0
  Top = 0
  Caption = 'PCM - DevManager: Neues Projekt'
  ClientHeight = 559
  ClientWidth = 962
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
    Width = 962
    Height = 559
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 956
    ExplicitHeight = 542
    object btn_Save: TcxButton
      Left = 12
      Top = 491
      Width = 100
      Height = 25
      Caption = 'Speichern'
      OptionsImage.ImageIndex = 27
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 15
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 119
      Top = 491
      Width = 100
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 16
      OnClick = btn_CancelClick
    end
    object edt_Projectname: TcxTextEdit
      Left = 160
      Top = 47
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 780
    end
    object edt_Description: TcxTextEdit
      Left = 160
      Top = 131
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 780
    end
    object edt_ProjectMSBuild: TcxButtonEdit
      Left = 160
      Top = 103
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_ProjectMSBuildPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 780
    end
    object edt_Projectpath: TcxButtonEdit
      Left = 160
      Top = 75
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_ProjectpathPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 780
    end
    object mem_Depencies: TcxMemo
      Left = 160
      Top = 159
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 170
      Width = 780
    end
    object mem_Components: TcxMemo
      Left = 160
      Top = 336
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 60
      Width = 780
    end
    object medt_Major: TcxMaskEdit
      Left = 160
      Top = 453
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 30
    end
    object medt_Build: TcxMaskEdit
      Left = 622
      Top = 453
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Width = 30
    end
    object medt_Revision: TcxMaskEdit
      Left = 468
      Top = 453
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 30
    end
    object medt_Minor: TcxMaskEdit
      Left = 314
      Top = 453
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 30
    end
    object chkbx_64Bit: TcxCheckBox
      Left = 22
      Top = 426
      AutoSize = False
      Caption = '64-Bit Version'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Transparent = True
      Height = 20
      Width = 178
    end
    object chkbx_Licence: TcxCheckBox
      Left = 577
      Top = 426
      AutoSize = False
      Caption = 'Version ben'#246'tigt Lizenz'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Transparent = True
      Height = 20
      Width = 178
    end
    object chkbx_Language: TcxCheckBox
      Left = 762
      Top = 426
      AutoSize = False
      Caption = 'Version wird '#252'bersetzt'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Transparent = True
      Height = 20
      Width = 178
    end
    object chkbx_Mobile: TcxCheckBox
      Left = 392
      Top = 426
      AutoSize = False
      Caption = 'Mobile App Version'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Transparent = True
      Height = 20
      Width = 178
    end
    object chkbx_32Bit: TcxCheckBox
      Left = 207
      Top = 426
      AutoSize = False
      Caption = '32-Bit Version'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Transparent = True
      Height = 20
      Width = 178
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
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
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Projektname:'
      Control = edt_Projectname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 614
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
      ControlOptions.OriginalWidth = 693
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
      ControlOptions.OriginalWidth = 693
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Programmbeschreibung:'
      Control = edt_Description
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 614
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
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'chkbx_32Bit'
      CaptionOptions.Visible = False
      Control = chkbx_32Bit
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'chkbx_Mobile'
      CaptionOptions.Visible = False
      Control = chkbx_Mobile
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'chkbx_Licence'
      CaptionOptions.Visible = False
      Control = chkbx_Licence
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'chkbx_Language'
      CaptionOptions.Visible = False
      Control = chkbx_Language
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Major:'
      CaptionOptions.Width = 112
      Control = medt_Major
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
      Control = medt_Minor
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
      Control = medt_Revision
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
      Control = medt_Build
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
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
      ItemIndex = 1
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
      ItemIndex = 1
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
      ItemIndex = 1
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = #220'bersetzen:'
      ItemIndex = 1
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
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup25
      CaptionOptions.Text = 'Abh'#228'ngigkeiten:'
      Control = mem_Depencies
      ControlOptions.OriginalHeight = 170
      ControlOptions.OriginalWidth = 614
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup25
      CaptionOptions.Text = 'Komponenten:'
      Control = mem_Components
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 614
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Save
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
      Control = btn_Cancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
