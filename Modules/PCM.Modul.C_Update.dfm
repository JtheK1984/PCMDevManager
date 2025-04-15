object frm_Update: Tfrm_Update
  Left = 0
  Top = 0
  Caption = 'PCM - Updategenerator'
  ClientHeight = 614
  ClientWidth = 1254
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
    Width = 1254
    Height = 614
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object grd_Version: TcxGrid
      Left = 12
      Top = 82
      Width = 235
      Height = 520
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      object tv_Version: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dm_PCM.ds_Versions
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object tv_VersionProgramm: TcxGridDBColumn
          DataBinding.FieldName = 'Program'
          DataBinding.IsNullValueType = True
          Visible = False
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soAscending
        end
        object tv_VersionVERSIONDate: TcxGridDBColumn
          Caption = 'Datum'
          DataBinding.FieldName = 'VERSIONDate'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
        end
        object tv_VersionVersion: TcxGridDBColumn
          DataBinding.FieldName = 'Version'
          DataBinding.IsNullValueType = True
          SortIndex = 2
          SortOrder = soAscending
        end
        object tv_VersionDescription: TcxGridDBColumn
          Caption = 'Beschreibung'
          DataBinding.FieldName = 'Description'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object tv_VersionStatement: TcxGridDBColumn
          DataBinding.FieldName = 'Statement'
          DataBinding.IsNullValueType = True
          Width = 400
        end
      end
      object grdLvl_Version: TcxGridLevel
        GridView = tv_Version
      end
    end
    object mem_Statement: TcxDBMemo
      Left = 266
      Top = 82
      DataBinding.DataField = 'Statement'
      DataBinding.DataSource = dm_PCM.ds_Versions
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 520
      Width = 976
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 1230
      Height = 63
      Align = dalNone
      BarManager = brmgr_Main
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Update XML'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1240
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Version'
      CaptionOptions.Visible = False
      Control = grd_Version
      ControlOptions.OriginalHeight = 510
      ControlOptions.OriginalWidth = 235
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutGroup1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      AllowCloseOnClick = True
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'mem_Statement'
      CaptionOptions.Visible = False
      Control = mem_Statement
      ControlOptions.OriginalHeight = 510
      ControlOptions.OriginalWidth = 1000
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
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
          ItemName = 'btn_VersionChange'
        end
        item
          Visible = True
          ItemName = 'btn_VersionImport'
        end
        item
          Visible = True
          ItemName = 'btn_VersionExport'
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
    end
    object btn_VersionImport: TdxBarLargeButton
      Caption = 'XML&Importieren'
      Category = 0
      Hint = 'XMLImportieren'
      Visible = ivAlways
      OnClick = btn_VersionImportClick
      AutoGrayScale = False
      LargeImageIndex = 122
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
    end
    object btn_VersionExport: TdxBarLargeButton
      Caption = '&XML erzeugen'
      Category = 0
      Hint = 'XML erzeugen'
      Visible = ivAlways
      OnClick = btn_VersionExportClick
      AutoGrayScale = False
      LargeImageIndex = 111
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
end
