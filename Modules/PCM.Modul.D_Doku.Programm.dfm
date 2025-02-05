object frm_DokuCreate: Tfrm_DokuCreate
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'PCM-Update/Doku: Doku erstellen'
  ClientHeight = 103
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object grpbx_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 103
    Width = 425
    object cmbbx_Prog: TcxComboBox
      AlignWithMargins = True
      Left = 7
      Top = 36
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 0
      Text = 'cmbbx_Prog'
      Width = 411
    end
    object lbl_Programm: TcxLabel
      AlignWithMargins = True
      Left = 7
      Top = 7
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Bitte Programm w'#228'hlen'
      Transparent = True
    end
    object btn_Save: TcxButton
      Left = 8
      Top = 68
      Width = 200
      Height = 25
      Caption = #220'bernehmen'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      OnClick = btn_SaveClick
    end
    object btn_Cancel: TcxButton
      Left = 216
      Top = 68
      Width = 200
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 3
      OnClick = btn_CancelClick
    end
  end
end
