object frm_PCM_Import: Tfrm_PCM_Import
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'PCM - Updategenerator: Import'
  ClientHeight = 154
  ClientWidth = 444
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
    Width = 444
    Height = 154
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object btn_import: TcxButton
      AlignWithMargins = True
      Left = 12
      Top = 42
      Width = 207
      Height = 25
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 4
      Margins.Bottom = 1
      Caption = '&Importieren'
      OptionsImage.ImageIndex = 1
      TabOrder = 2
      WordWrap = True
      OnClick = btn_importClick
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 226
      Top = 42
      Width = 206
      Height = 25
      Margins.Left = 4
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 1
      Caption = 'Abbre&chen'
      OptionsImage.ImageIndex = 0
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object prgbr_Status: TcxProgressBar
      AlignWithMargins = True
      Left = 12
      Top = 95
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 5
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 420
    end
    object edt_Importfile: TcxTextEdit
      AlignWithMargins = True
      Left = 12
      Top = 12
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      Properties.OnEditValueChanged = cxTextEdit1PropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Height = 23
      Width = 390
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 409
      Top = 12
      Width = 23
      Height = 21
      Margins.Left = 0
      Margins.Top = 1
      Caption = '&...'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'edt_Importfile'
      CaptionOptions.Visible = False
      Control = edt_Importfile
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 378
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_import'
      CaptionOptions.Visible = False
      Control = btn_import
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 198
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 198
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Status:'
      CaptionOptions.Layout = clTop
      Control = prgbr_Status
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 404
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
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
