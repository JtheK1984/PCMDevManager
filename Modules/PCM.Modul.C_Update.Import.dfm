object frm_PCM_Import: Tfrm_PCM_Import
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'PCM - Updategenerator: Import'
  ClientHeight = 138
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 138
    Width = 420
    object btn_import: TcxButton
      AlignWithMargins = True
      Left = 8
      Top = 57
      Width = 198
      Height = 25
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Importieren'
      Enabled = False
      OptionsImage.ImageIndex = 1
      TabOrder = 0
      WordWrap = True
      OnClick = btn_importClick
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 214
      Top = 57
      Width = 198
      Height = 25
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 1
      Align = alRight
      Caption = 'Abbre&chen'
      OptionsImage.ImageIndex = 0
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object lbl_Importfile: TcxLabel
      AlignWithMargins = True
      Left = 7
      Top = 7
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Pfad zur XML-Datei:'
      Transparent = True
    end
    object lbl_Status: TcxLabel
      AlignWithMargins = True
      Left = 7
      Top = 86
      Margins.Left = 5
      Margins.Right = 5
      Align = alBottom
      Caption = 'Status:'
      Transparent = True
    end
    object prgbr_Status: TcxProgressBar
      AlignWithMargins = True
      Left = 7
      Top = 108
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      TabOrder = 4
      Width = 406
    end
    object cxGroupBox2: TcxGroupBox
      Left = 2
      Top = 26
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 5
      Height = 31
      Width = 416
      object edt_Importfile: TcxTextEdit
        AlignWithMargins = True
        Left = 4
        Top = 2
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Properties.OnEditValueChanged = cxTextEdit1PropertiesEditValueChanged
        TabOrder = 0
        Width = 382
      end
      object cxButton1: TcxButton
        AlignWithMargins = True
        Left = 388
        Top = 3
        Width = 23
        Height = 23
        Margins.Left = 0
        Margins.Top = 1
        Align = alRight
        Caption = '&...'
        TabOrder = 1
        OnClick = cxButton1Click
      end
    end
  end
  object dxOpenFileDialog1: TdxOpenFileDialog
    Filter = 'XML-Dateien|*.xml'
    Left = 272
    Top = 96
  end
  object qry_allg: TFDQuery
    Connection = dm_PCM.con_PCM
    Left = 208
    Top = 144
  end
end
