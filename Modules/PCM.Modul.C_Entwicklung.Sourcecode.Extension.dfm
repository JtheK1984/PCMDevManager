object fSourceBackup_FileExt: TfSourceBackup_FileExt
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Auswahl der Dateiendungen'
  ClientHeight = 481
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 384
    Height = 481
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitLeft = 32
    ExplicitTop = 136
    ExplicitWidth = 300
    ExplicitHeight = 250
    object grd_FileExt: TcxGrid
      Left = 66
      Top = 53
      Width = 308
      Height = 387
      TabOrder = 2
      object grdDBTblView_FileExt: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = grdDBTblView_FileExtCellClick
        OnEditKeyUp = grdDBTblView_FileExtEditKeyUp
        DataController.DataSource = dtsFileExt
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdDBTblView_FileExtRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object grdDBTblView_FileExtBackup: TcxGridDBColumn
          DataBinding.FieldName = 'Backup'
          Width = 50
        end
        object grdDBTblView_FileExtExtension: TcxGridDBColumn
          Caption = 'Dateiendung'
          DataBinding.FieldName = 'Extension'
          Width = 185
        end
      end
      object grdlvl_FileExt: TcxGridLevel
        GridView = grdDBTblView_FileExt
      end
    end
    object edt_Search: TcxTextEdit
      Left = 66
      Top = 28
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      TextHint = 'z.B. pas'
      OnEnter = edt_SearchEnter
      OnExit = edt_SearchExit
      OnKeyUp = edt_SearchKeyUp
      Width = 308
    end
    object btn_Abort: TcxButton
      Left = 91
      Top = 446
      Width = 75
      Height = 25
      Caption = 'Abbruch'
      TabOrder = 4
      OnClick = btn_AbortClick
    end
    object btn_Ok: TcxButton
      Left = 10
      Top = 446
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 3
      OnClick = btn_OkClick
    end
    object img_extension: TcxImage
      Left = 10
      Top = 10
      Cursor = crHandPoint
      AutoSize = True
      ParentShowHint = False
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F9870000000467414D410000AFC837058AE9000000
        1974455874536F6674776172650041646F626520496D616765526561647971C9
        653C000007FA494441546843EDD8095054F71D07F05D40258AE718548AA68104
        753C6A1528C8A1885C8110B471D4C6A3218E0762408D94432A7229876888424A
        32509A8845018146AB1154E83A724350230815311C0BBB20F75188DFFEFE8C9B
        21E1FF648B4C13667C339FD1FDCDEE8FEFEFBDB76FFFEF89008C69DCE258C22D
        8E25DCE258C22D8E25DCA290A3478F223C2C1427C24307FE5596FF513F949696
        520B640CEE371AB845212C4C41CE4D9416DE42515E96D2F26F5F875C26A51648
        1ADC6F34708B424E8487A1B44882F6962674777528A5ABB30DE5F70AD124ABA7
        163FF300EC08B03DFA9FDE1E7AA9FC5676B710B2865AF6DF5FC6006CCF2ABB7D
        FF7D3FEEDF29783980106E51C8CB015E0E3014B728E4E5002F07188A5B14A218
        A0B7A78B5E2ABFFDE206E8EC681BD8B3CAE8EBEBA501F2951E407442B444745A
        7C4DFDEF13BBC5AE620F91483481A81231F7FDBCA210B6AACCBF9D39B0B6617B
        5539F928CCA1C55C631DB5101E40BC57554D14213AA0F299BAD4AE481F1665FA
        10EF53ABA5E0CBC964A2C6FBDC90C2F3B0257113AD2AD9C28CED5165C91BEBE9
        B4EBA616B83EB89F82EA31F5A5A2F071E9B392B570B8C61E014D4E9893AE0591
        81388782DB136DA2CEFBEC90C230D81E7C111F911FFAA959A9AB88025F715539
        3D556A2E5986F49EEDF8A46D0366A6684364A25A41A143C9DB448F689021A7D1
        8F5EFC3F4DF09DBE581438254D33611E0E54D9E01E5C10DDB201AF26BFC6C23F
        A6B071643F71206F9049E4E71F60C286E9AAE37D67EE1A1FAE59639CB90C716D
        9BF010AE88A2F09A493A1059A8D751D004E243B690DF91D96402AFDF90C2F3D0
        269EE2AF15AA11F4AB3475C7E986F45A8DA8F0DECBA3E13967E138DFD95FCD8A
        D3854BB915AEF77D8032EC42846C3DB42E2C80D86C623DF5BB407CC976624AE6
        11B6F7B97F6748E17968539B1B3D1F469986987C40BB5A6DB186DDB3E6AABCF7
        2B4C5AAFA9AAE13177EFA4C079B5C657F47146BE0979FDAE28E8DF89130D4E98
        97B8182A165365D42789FC99BC4FCCC9AF093BF705FB738B42687B45336441EB
        8795767827D70CEAEE7365E3174DD940757699E3FE91696E3A8B343C5E4F9913
        BD003B4AAD70B9CB05B93D8790DDEB8270E93AE826FE166A16339B4462512AF5
        F0232CFC2A326C78865B14C21A6AECD649344B35C2B98E6D7090ACC664375DB9
        FAD219EC704F213F5CAB676C7F63FC8CFD7A7BA6F9CE971A5ED4C7C9BACDB8DD
        E38DEC8EC3B8D1B90F61B54ED03B67807196AF3EA1CFA51116FE03B29ABC4E86
        0DCF708B42BCBDBDE17C602734FD96E078D51F91DB1B06EB1B2698757029366E
        DD84C0007F84861C8757B00F0C3D6CA17DEA37D89AB716A9AD6EC8E90C4246EB
        1164B4BB23B4663D169E35C2446BAD16918AF82B0AEA4F76104578C123FA53DC
        A29063C14148B97016667F72844992118A7B6391D57E0AB634C49C832BE013E8
        09FF9840E8F9ADC28A73860879B419D99D8190B49DC0D5663F5C6D3D8863D5EB
        B0F84B534C5CFB5A2B85BF4C418F12167E0DD125EC482A159EE11685B0BD9B71
        350D1F7F711A73FD0CE0F7E03DD4F6DFC0E59600D87C6D8AD91E46D0F637C0C6
        2C4B24C8DD91D31189CC27E1B8D4E4874B4F0EE1F8A3F5581A6F8E29B66F7688
        5555AE52D020B29358124578EE924108B728242C3404D9D72FA3B8A8106BBCFE
        8055174C71AD2D14E55DFF444AA30FDEBDB91A9E777F4FA74A10B25ACEE092FC
        38D21AFD90DE7408410F9DB02CDE02D3AC16B653F8AF296820D945D612F643F5
        3F8767B845216C359A2BC9C0BF2B1F20F4AF67A0E36B8623E5F4E56C89C5BF9A
        E370A53918194FE874919F446A430092A48791DC781001954E581E6789D90E2B
        FA55D45433286830D94DACC89B642A61BF29DC15E7F3708B42D8000539372095
        D6A1808E8289FB6658275B20B1D1135764A7902E0D438A3408E7EB7D9150EB85
        847A37F85538C220D61ADA8E2BB16CF9F2460A798CEC213684AD71461C9EE116
        8528EE075A9E34A1BABA1A81D191D0F3B5A4D3661D92A547F0E5775E88FFCE03
        B18FF723AEC605DEDFDAC3F0735BCC75308789A909B66DDB5646415D080B3F9F
        4C23230ECF708B4206DFD0343737E3566E0E8CF6BC079B0B16887AEC8C98AA0F
        71E6E11E443D7286E77D3B18C5BC051D472BACD05F81BD2EBB4197E1620A6B4B
        1690E92F1A9EE116852806E8EA6C47777737AAAAAAE015168E453EF6D857628D
        88CAED08ABD88CFD77D6C238C61EBAF676303133C7FBDBB720382800B1B1B112
        0ABCF059F8712F1A9EE1168528066037F5FDFDFD90CBE5C8B87913C6CECEB039
        6F09DF07D670FD66158C3F75809EC33B74DAAC82BBBB3BBC3D3FC2D92FE22191
        48D8D567C6688567B84521830778FAF429BABABA50595909F72321D03FBC0E1B
        F30C601EE388056FBD0BE395E603E14F9E8C40D42711C8CECA444D4D4D3A051F
        3F5AE1196E51C8E001D8D6D7D707994C86ABD732B172EB0E18066DC112C74D30
        3636879B9B1B85A7CB69EA45A4A724A2BCEC2E1B386534C333DCA210C5008AC7
        2AEC28747474A0A2A202E1919FC2748D13565B580D0A9F8A3B77EEE07676066A
        6B1EB1F7B3DB4A6EEF91E21685280618FC58A5B7B7070D0D52E4E5E52121E12C
        22233F46747414D2D25251525282FAFA5A9416DD42A3B4865A0CDC17737B8F14
        B72884F758E5DBD27C14174870FDDA259C3F178FD8CFA2F0B7B8BFE01F171371
        2BEBDA40F802FACC708F55468A5B1422F458455AF718D55515B87FEF1B9414E7
        E36E69312A1FDC1F386DD89E1FEEB1CA8BE0169F43F1786408BAAC26D36F434A
        6767670AFBB2D2173CF9D9393FD88F1EAB8C066E712CE116C7126E71EC80E8BF
        CB29B60333E222FB0000000049454E44AE426082}
      ShowHint = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
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
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'img_extension'
      CaptionOptions.Visible = False
      Control = img_extension
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bitte w'#228'hlen Sie die zu sichernde Dateiendungen aus.'
      CaptionOptions.Layout = clTop
      Control = edt_Search
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 268
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_FileExt'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grd_FileExt
      ControlOptions.OriginalHeight = 377
      ControlOptions.OriginalWidth = 268
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'btn_Ok'
      CaptionOptions.Visible = False
      Control = btn_Ok
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'btn_Abort'
      CaptionOptions.Visible = False
      Control = btn_Abort
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object md_FileExtAll: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 232
    Top = 64
    object md_FileExtAllBackup: TBooleanField
      FieldName = 'Backup'
    end
    object md_FileExtAllExtension: TStringField
      FieldName = 'Extension'
      Size = 50
    end
    object md_FileExtAllNr: TIntegerField
      FieldName = 'Nr'
    end
  end
  object dtsFileExt: TDataSource
    DataSet = md_FileExt
    Left = 296
    Top = 64
  end
  object md_FileExt: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 232
    Top = 128
    object md_FileExtBackup: TBooleanField
      FieldName = 'Backup'
    end
    object md_FileExtExtension: TStringField
      DisplayWidth = 50
      FieldName = 'Extension'
      Size = 50
    end
    object md_FileExtNr: TIntegerField
      FieldName = 'Nr'
    end
  end
end
