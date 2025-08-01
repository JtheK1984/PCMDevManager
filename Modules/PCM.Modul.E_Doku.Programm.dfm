object frm_DokuCreate: Tfrm_DokuCreate
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PCM-Update/Doku: Doku erstellen'
  ClientHeight = 124
  ClientWidth = 439
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
    Width = 439
    Height = 124
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 433
    ExplicitHeight = 107
    object cmbbx_Prog: TcxComboBox
      AlignWithMargins = True
      Left = 12
      Top = 33
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Text = 'cmbbx_Prog'
      OnKeyUp = cmbbx_ProgKeyUp
      Width = 415
    end
    object btn_Save: TcxButton
      Left = 12
      Top = 61
      Width = 204
      Height = 25
      Caption = #220'bernehmen'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 1
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 223
      Top = 61
      Width = 204
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      OnClick = btn_CancelClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bitte Programm w'#228'hlen'
      CaptionOptions.Layout = clTop
      Control = cmbbx_Prog
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 409
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Save'
      CaptionOptions.Visible = False
      Control = btn_Save
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Cancel'
      CaptionOptions.Visible = False
      Control = btn_Cancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
  end
end
