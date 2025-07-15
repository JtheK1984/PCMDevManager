object frm_Doku: Tfrm_Doku
  Left = 0
  Top = 0
  Caption = 'PCM - Updategenerator'
  ClientHeight = 600
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 600
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object grd_Version: TcxGrid
      Left = 10000
      Top = 10000
      Width = 905
      Height = 455
      TabOrder = 2
      Visible = False
      LookAndFeel.NativeStyle = False
      object tv_Version: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = tv_VersionCellDblClick
        DataController.DataSource = dm_PCM.ds_doku
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 10
        object tv_VersionBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          DataBinding.IsNullValueType = True
          Width = 300
        end
        object tv_VersionSortierung: TcxGridDBColumn
          DataBinding.FieldName = 'Sortierung'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
        end
        object tv_VersionProgram: TcxGridDBColumn
          DataBinding.FieldName = 'Program'
          DataBinding.IsNullValueType = True
          Visible = False
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object tv_Versionheader: TcxGridDBColumn
          Caption = #220'berschrift'
          DataBinding.FieldName = 'header'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object tv_Versionheadertype: TcxGridDBColumn
          Caption = #220'berschrift-Typ'
          DataBinding.FieldName = 'headertype'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object tv_VersionBild: TcxGridDBColumn
          DataBinding.FieldName = 'Bild'
          DataBinding.IsNullValueType = True
          Width = 600
        end
        object tv_VersionBreite: TcxGridDBColumn
          DataBinding.FieldName = 'Breite'
          DataBinding.IsNullValueType = True
          Width = 51
        end
        object tv_VersionNewPage: TcxGridDBColumn
          Caption = 'Neue Seite'
          DataBinding.FieldName = 'NewPage'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 80
        end
        object tv_VersionColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Leerzeile'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 80
        end
      end
      object grdLvl_Version: TcxGridLevel
        GridView = tv_Version
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 952
      Height = 63
      Align = dalNone
      BarManager = brmgr_Main
      Visible = False
    end
    object btn_DokuMainbottom: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000242494441
        5478DAB593CB6B135114C6BF998CB149AA99A2CDD384A238538D6834A6582A5A
        1F548C74ED46BA69232222F47FD14AEDC68A6BB108428BB8F0D9451656C53023
        5AA9B5369126934E924E4C33E3BDB72418D32E5C7808CC90B9BF73BE7BBE7338
        90F0274625CB32155816F9997266FA968A4D6257FFB06499A6424E813C65EDE5
        7D95F35F1A9508A5446331F0660DA9548A25C9CE8CA9CDF0082B72BC278EBC56
        C4A7F47B768E27DF94484F1FA2C19D88EC11211F3A0A5240E93C7F4D6AC06746
        C8BBA5C47BFB10703BA1174BB07BE95F96C2D5E587A3A7203A04AC1B65648B15
        643ECE329916B916854FF40F40B071D0AB36E86503EAEB2784B7648E56F05DBC
        4992900A8343A818BF90CD6928AD19D0DE4E5399E84D5C86512347B76D87C071
        987D38CEE0C2AB072A5797E9BD708325393C9884BDAD1DD97C01657D151EB71D
        35DE05A7CB0143D730F7E836BB3B8529C7D75DE0789BE2F0EEC3DCD4387402FA
        036174F8C2A8B6F9E0F604A01734BC9BBA83F6E001F03641114F0EB11EB5B8F0
        616105A525155DE7861194E34CDD62FA0DBECC4CC0159070302436B920345CF0
        11A9A461BA51C357733FE69F4E60BDBA46EF8A6FCF26092C23D2D5097FBB8085
        C50C73A1F223BDB50B85959F287F5758139DA4F291EEBDFFEE4265F9334B103D
        16FB7F2E707F8EAB67E03A99754BE94E24217A42C81556E954A243DC81DCD23C
        D28FC75865BA0375A629010D3AC25449AB0B7737E017934D3BD29280C6EEB357
        25B26F4AE8F495860B5476FE2F78CB041B0B9464F3419BC8E0E7F7365DF1DF3F
        EB7C93A1EABC6E0000000049454E44AE426082}
      TabOrder = 6
      Visible = False
      OnClick = btn_DokuMainbottomClick
    end
    object btn_DokuMaindown: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000001AB494441
        5478DADD92CB2F035114C6BF69ABDE54506FB19A9110A9502112EF10156B1BB1
        D18A8848FC2F4858A9588B44226161E1BDE882483477242C884417EDD4548D47
        E7BAF74A453DFE004E6E666EEE9CDF39DFFDCE007F3E24FE28F3CCCA949A0494
        B2652A775B73EA4FC9855DE332354DC2B2C0DE8AB6BFA24A6543B332A388ABA9
        091633814020208A84B617D454D82B9A34B7B811D162B8089E893C0BFB46EA5A
        DAE1AAC8435DA5034A7D23580352DC37297FC0DD5EB6A7C4DDD68EF2FC2CE8B1
        07D84BF8112552527EB5AB038E4C1B5E8D3842B127DC9D1F0B99945D8BC3AD5D
        FDB05925E82F56E87103EAE126E3A9223C281D9C61455887E1313C19CF088535
        3C3C1AD04EB6B84CB479466024586A5A3A6C9284E3B54501470F56552929B364
        605A146918F6C19E918350248AB87E0F67BE1D094B36B2B23361E81A4ED7E7C5
        DD39FC31856438FBA798CB94D47A7C7038AB108EDE733F50E0C845F8F60AC18D
        05D199BB9F32C6CFC1CDE34A6A7AC751A1B8C5D94DF00897DB4BEFF09E3F653A
        DF0AF028EA9990D9A44955E7288770BDE317B2235FE05F0BBC8FCE27FE0F6EA2
        80779755FCCF7803E8D0E0915AAA27200000000049454E44AE426082}
      TabOrder = 5
      Visible = False
      OnClick = btn_DokuMaindownClick
    end
    object btn_DokuMainUp: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000001B6494441
        5478DA636018F280119784985B96DAFFFFFF6E82D8FFFFFD537FB377D62D6CEA
        98B06BCE046BB6B2306330363464F8FFFFFF4D61C71435A20C8068FE7FD3DCC2
        9241579C974184F91F8388B41203C84041FB440C4350BC20EA9AA1065479D3C4
        CA81418C8399E1D6F34F0CAF3F7E61F8FAF52B03031B1BC38FA7574106A97F38
        BCE816860120CD40BFDE3474F061F8F7F71FC3A75F8C0CDF7FFE063B9183839D
        E1E3A74F0C3F7EFF61F870650FD8904F4797DE821B20EA920E76B6BA5B1C0323
        231303370F37C3FB0F1F196EEF9807365CCD239141584488E1D5DBCF0C9F81AE
        79B61728FEFFBFFAE7132B6E318A38A781FC7553D93B97819B939D4152848FE1
        DE83870C37364F67F8CFF05F1DA8101C88DAFE590CCA4ACA0C4FDE7E64F8F4F1
        2BC3CDD5AD207175664E45A337528EF10C2A6A1A0CF252220CD7AFDD60B8B165
        3ADCAF3F1E5D7CCB2EA3B3FCD5F593B92CC2CA0C067AFA0C6C3CFC0CDFD98419
        3EDE3993CB088A1E5008AB7B24036D6462B8B16D06D879C80105023CE6E1C000
        FE7753D32B1DE8712686AB9BA6802D018781A05D02D81B4001101743330C709B
        8680039A01E43960E2FA7E7E235675430C00005416CE3539D1B3B10000000049
        454E44AE426082}
      TabOrder = 4
      Visible = False
      OnClick = btn_DokuMainUpClick
    end
    object btn_DokuMainTop: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000234494441
        5478DAB5534D6B1351143D93D4496262A5CD24A135626D6A46F1A3468DF9026D
        A896A2821BC19D5A2A560BF919FE03A1D245168228B8F20311316E5450889452
        633353D166682AC48C261343D2B49DF1BD572D8544A80BEFEABDE19E33F7DC73
        1E87BF947B68DC6F18BA44CF86AE8BC5D4A4DCAACFD41A7C8381A3E1E3381A08
        C0300CC919BFEADF14C11AD89042E1080E7AB64130EB1076F48212769C1C6922
        E1365E5CA7AFFB49A7742C3A00B7D50CF9AB866FE59FA856AB00CFA39ECF5022
        B1F4EA8EDC4440C144AB141838077D5587D6E0505B5A66235AAD1694350DF5E5
        15943EBC6024DA9BBBF23A81EBD4181B5B1CBA048E33C1EEB0E347A98CFCF46B
        46EEED8FC12974A2A0565021D32CA69264B38658797B5FE684C16B5497E43B9B
        80DD664197D08ECFF33928E91496D41C23E03B77A22738085FAF0F0B6A195AB9
        0AE9C14DBA5CD16CDB7DA4D81DBF8C3EFF5EECEA1630FB310BE5FD1A381609C1
        E3F620379741E5BB0A9D6FC7E143FDE01DDB51E39D287F4A27DAE828F9545272
        6C198542142B532FD15015842351E2C256CCE78B7079FB5050247C49AF62A551
        27C249DFF349B60BB6838E1357980C5BD71E348A390463F1962ED4166660117A
        50516658B86A530FE5FFEBC2DCB32423F70F8FFCBB0BD9C713306088A4914579
        FFF9F1CDBB907D32B19EB8BA32AD5ABC07EE1566DF25DA9CBE261738FA4868CE
        C5E151F24713B24F6FB3F136C69596237491C45C97F69D19632E641EDD6A7681
        7CA0D726F09FB2072FB045838AFBEDC22F58E6680A1520C2DE0000000049454E
        44AE426082}
      TabOrder = 3
      Visible = False
      OnClick = btn_DokuMainTopClick
    end
    object grpbx_Browser: TcxGroupBox
      Left = 22
      Top = 49
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 0
      Height = 525
      Width = 952
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Dokumente'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #220'bersicht'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1232
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Version'
      CaptionOptions.Visible = False
      Control = grd_Version
      ControlOptions.OriginalHeight = 475
      ControlOptions.OriginalWidth = 1206
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_DokuMainTop'
      CaptionOptions.Visible = False
      Control = btn_DokuMainTop
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_DokuMainUp'
      CaptionOptions.Visible = False
      Control = btn_DokuMainUp
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_DokuMaindown'
      CaptionOptions.Visible = False
      Control = btn_DokuMaindown
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_DokuMainbottom'
      CaptionOptions.Visible = False
      Control = btn_DokuMainbottom
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grpbx_Browser
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object brmgr_Main: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'pm_Doku')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseFullReset = True
    UseSystemFont = True
    Left = 304
    Top = 312
    PixelsPerInch = 96
    object tb_main: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 652
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_VersionNew'
        end
        item
          Visible = True
          ItemName = 'btn_VersionCopy'
        end
        item
          Visible = True
          ItemName = 'btn_VersionChange'
        end
        item
          Visible = True
          ItemName = 'btn_VersionDelete'
        end
        item
          Visible = True
          ItemName = 'btn_VersionExportHTML'
        end
        item
          Visible = True
          ItemName = 'btn_VersionExportPDF'
        end
        item
          Visible = True
          ItemName = 'btn_VersionExportHTMLPDF'
        end
        item
          Visible = True
          ItemName = 'btn_VersionRefresh'
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
    object btn_VersionNew: TdxBarLargeButton
      Caption = '&Neue Version'
      Category = 0
      Enabled = False
      Hint = 'Neue Version'
      Visible = ivAlways
      OnClick = btn_VersionNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 150
    end
    object btn_VersionChange: TdxBarLargeButton
      Caption = 'Version &bearbeiten'
      Category = 0
      Enabled = False
      Hint = 'Version bearbeiten'
      Visible = ivAlways
      OnClick = btn_VersionChangeClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 150
    end
    object btn_VersionExportHTML: TdxBarLargeButton
      Caption = '&Doku HTML erzeugen'
      Category = 0
      Hint = 'Doku HTML erzeugen'
      Visible = ivAlways
      OnClick = btn_VersionExportHTMLClick
      AutoGrayScale = False
      LargeImageIndex = 111
      Width = 150
    end
    object btn_VersionCopy: TdxBarLargeButton
      Caption = 'Version &kopieren'
      Category = 0
      Enabled = False
      Hint = 'Version kopieren'
      Visible = ivAlways
      OnClick = btn_VersionCopyClick
      AutoGrayScale = False
      LargeImageIndex = 126
      Width = 150
    end
    object btn_VersionDelete: TdxBarLargeButton
      Caption = 'Version &l'#246'schen'
      Category = 0
      Hint = 'Version l'#246'schen'
      Visible = ivAlways
      OnClick = btn_VersionDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 150
    end
    object btn_VersionRefresh: TdxBarLargeButton
      Caption = '&Aktualisieren'
      Category = 0
      Hint = 'Aktualisieren'
      Visible = ivAlways
      OnClick = btn_VersionRefreshClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 150
    end
    object btn_VersionExportPDF: TdxBarLargeButton
      Caption = '&Doku DOC/PDF erzeugen'
      Category = 0
      Hint = 'Doku DOC/PDF erzeugen'
      Visible = ivAlways
      OnClick = btn_VersionExportPDFClick
      AutoGrayScale = False
      LargeImageIndex = 111
      Width = 150
    end
    object btn_VersionExportHTMLPDF: TdxBarLargeButton
      Caption = 'Alle Dokus erzeugen'
      Category = 0
      Hint = 'Alle Dokus erzeugen'
      Visible = ivAlways
      OnClick = btn_VersionExportHTMLPDFClick
      AutoGrayScale = False
      LargeImageIndex = 111
      Width = 150
    end
    object btn_Collapse: TdxBarButton
      Caption = 'Alle einklappen'
      Category = 1
      Visible = ivAlways
      OnClick = btn_CollapseClick
    end
    object btn_Expand: TdxBarButton
      Caption = 'Alle ausklappen'
      Category = 1
      Visible = ivAlways
      OnClick = btn_ExpandClick
    end
  end
  object imglst_16x16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 20447856
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D4507D8040F0D0D256928BB2D000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000002DD494441
          5478DA6D53EF4B5351187ECEBDF3DEB94D3733D4C402C995288CFE801034C384
          8ACD69B2452924EC83DFF54F092AFA30C220028BBE06423F5070F82195729A73
          193653C1706EF7EEC73D3D573631E8B0C3393BE77D9EF779DEF75C1595711318
          6A0716AE02DB1BC00AFE3342C0480790E802BE7F3B1B33008C469C4EEBFDD494
          7CE4F1C821608CC7E22CF83E1089699AF5BAAF4FC6745D8E020FED73D5CE7CCE
          E57A35393D2D7C7575E80E04B0B9B414EC2816534CF1C50E225BC4A7EB33B7FB
          FB856259B8D4D4845F994CA8DDB292E20670383539E96DE2A1797404AB584429
          9FC76C3C8E8C618C6B40E1BCA6CD0CF6F6C2344D148E8F51624C319BC5ECC646
          49BD026C6E2E2F0F77FBFD02BC2833C0512AA1EBF265EC24934197C3110EF5F4
          4094CB90B91C2C920BC62C6E6D212BE5C489CF302536324B341C86260444A100
          0701B6227BAF70CDEFEFC3E05AA08A04497680D873E0996A137C6545FDE57232
          BDB616EE6E6B83933E1D54A3EEEE42A4D35028D756A59274912A76A58C3D2598
          504BAD5679C5266151D2A954B8D3E7834A891A33D6D6D44077386051C9C7C343
          6C5B56EC71056CE394B3ADB2FF28CC945B5D85CED5A3EBA8773AE1D134D4D87D
          9512B580C9ADAC624E15D8AD6A10626680AD6CF67AE126C8CDEC6E92E8AA0A8D
          EB45C665F2F9E03520F5B9D2E21382087FF504F7D5D6A2D1E5829392597D1CD1
          BB42DF756E370A5454E6592BE37F9A663040920592A841E09E0F78795DD78597
          596A14E5C4739EC57ABBB78715FAF65309786690ACC8FB66762A532804F904D6
          C55D7ABAA5AA5A0365DA5E6DDF0ABDCE11F8DBB2C69DC041AB10EFEEB4B4A048
          A26316D39E39C3C09B5CAEA476F221FD91327CC1CECC59640BE758FD038259ED
          F83CB3D073622B9F8FB65185C97B83049FA8300B3C50D780654A491D48196AA2
          B47932733FCE3EC7ABD566C1D60352267E1846B485311FF8120FA51C7B02BC38
          6DE130101DE1BB8F9C7C78FF7E8995212680414E93335A3DFC0B67514D9735E6
          64140000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D4507D8040F0D0D241E2F8BBB000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC61050000026C494441
          5478DA95934D4C13511485CFBC99C7D49676A653DA468510103086BF82104537
          A2B1413115D1C450E34258B0D3955BDD890B59991835511274A168C2CAB50B0D
          2E00B1048D12085025D062FF286DE9B433CF420221C48472972FE73BF7E5DC7B
          81FD1527D5160C4A35424869104EEF9305A47ABEAFFA6A09F33E7633A581C6AC
          C785163E5F58AEA7372C7261FF959E762E4163305510313819F790BCE01ADAC0
          087B7EB9FB2217CA2E21CA82501359308D2DEE69602D839CD132EFDBBD6EA366
          4A214A82585F4B63EADD9F0013D21DDB0636174A3742DA6DA099F8178DAD75E5
          8E720961B2049D6AF00DFAD37C81DE1919C7C2A681E412EE329ECEE5BE3A8453
          A05BB0A54EE8B595289DCDE7EA10D07E83D872F0801F5955BF131ACB8E6C6888
          A5913F2F14D0BEAEDB9D9CE3A8F59A1C13DEE6DE7973332A39C2F5B779CF6025
          BB08664B63FAC33262F3C9D791F1F4B3AD26BCD1298C5CEA6D351B2D46382A15
          ACFC0D1D63542B450A3D67BB4E1E31150B583346B01A4CC2F7D23F1D25AA0701
          A83B0CE84DC1AE3B4D153CE26A14529988D5C594CB7E582969F2D42284250832
          87CF0F7EA9BAAE5D58F7E90B3B33E289531B0EFD8CB7F176DD61AF3643D71894
          2A33AAEACB9114A3A04E0E130373882D24EE47263243BB43E6330124C8417D38
          3C99EC90CB8C4A51A505841068621A34D7393413C78F37FED1F0B7CCAD9C9EED
          36D89C427212CB10897BECE9CC723C9046A1C300D14A412D02469FCCA830A27B
          63A2FFDB93ED3D887E5D9FE329F37C7AF83DC97406E99009BE57F3C8A4B447E1
          2F99A9BC0FC67AC270BDB45DD6BD1F5B98EC1267518C0379C35B55D464B8676B
          34249566D1BD97F61FD720E66F1B2C9D580000000049454E44AE426082}
      end>
  end
  object grdpmm_Doku: TcxGridPopupMenu
    Grid = grd_Version
    PopupMenus = <
      item
        GridView = tv_Version
        HitTypes = [gvhtGridTab, gvhtTab, gvhtCell, gvhtExpandButton, gvhtRecord, gvhtNavigator, gvhtPreview, gvhtColumnHeader, gvhtColumnHeaderFilterButton, gvhtFilter, gvhtFooter, gvhtFooterCell, gvhtGroupFooter, gvhtGroupFooterCell, gvhtGroupByBox, gvhtIndicator, gvhtIndicatorHeader, gvhtIndicatorBandHeader, gvhtRowIndicator, gvhtRowLevelIndent, gvhtBand, gvhtBandHeader, gvhtRowCaption, gvhtSeparator, gvhtGroupSummary, gvhtFindPanel]
        Index = 0
        PopupMenu = ppm_Doku
      end>
    Left = 407
    Top = 213
  end
  object ppm_Doku: TdxBarPopupMenu
    BarManager = brmgr_Main
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_Collapse'
      end
      item
        Visible = True
        ItemName = 'btn_Expand'
      end>
    UseOwnFont = False
    Left = 744
    Top = 296
    PixelsPerInch = 96
  end
end
