object frmEnvioXML: TfrmEnvioXML
  Left = 0
  Top = 0
  Caption = 'Envio de XMLs'
  ClientHeight = 729
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1350
    Height = 132
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeAccent = rcsaOrange
    ColorSchemeName = 'Colorful'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Menu'
      Groups = <
        item
          Caption = ''
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 132
    Width = 1350
    Height = 597
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object grdSaida: TcxGrid
      Left = 13
      Top = 169
      Width = 492
      Height = 415
      TabOrder = 1
      object grdSaidaView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsNF
        DataController.KeyFieldNames = 'infnfe_chave'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'Sem notas fiscais'
        OptionsView.ColumnAutoWidth = True
        Styles.Content = frmNFe.Linha
        Styles.ContentEven = frmNFe.Linha2
        Styles.ContentOdd = frmNFe.Linha
        object grdSaidaViewide_mod: TcxGridDBColumn
          Caption = 'MODELO'
          DataBinding.FieldName = 'ide_mod'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 74
        end
        object grdSaidaViewide_serie: TcxGridDBColumn
          Caption = 'S'#201'RIE'
          DataBinding.FieldName = 'ide_serie'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 53
        end
        object grdSaidaViewide_nnf: TcxGridDBColumn
          Caption = 'N'#218'MERO'
          DataBinding.FieldName = 'ide_nnf'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 82
        end
        object grdSaidaViewide_dhemi: TcxGridDBColumn
          Caption = 'DATA'
          DataBinding.FieldName = 'ide_dhemi'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 152
        end
        object grdSaidaViewtotal_icmstot_vnf: TcxGridDBColumn
          Caption = 'VALOR'
          DataBinding.FieldName = 'total_icmstot_vnf'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 129
        end
      end
      object grdSaidaLevel1: TcxGridLevel
        GridView = grdSaidaView
      end
    end
    object grdEntrada: TcxGrid
      Left = 513
      Top = 169
      Width = 376
      Height = 415
      TabOrder = 2
      object grdEntradaView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsNFentrada
        DataController.KeyFieldNames = 'infnfe_chave'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'Sem notas fiscais'
        OptionsView.ColumnAutoWidth = True
        Styles.Content = frmNFe.Linha
        Styles.ContentEven = frmNFe.Linha2
        Styles.ContentOdd = frmNFe.Linha
        object grdEntradaViewide_nnf: TcxGridDBColumn
          Caption = 'N'#218'MERO'
          DataBinding.FieldName = 'ide_nnf'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 70
        end
        object grdEntradaViewide_dhemi: TcxGridDBColumn
          Caption = 'DATA'
          DataBinding.FieldName = 'ide_dhemi'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 69
        end
        object grdEntradaViewtotal_icmstot_vnf: TcxGridDBColumn
          Caption = 'VALOR'
          DataBinding.FieldName = 'total_icmstot_vnf'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 48
        end
      end
      object grdEntradaLevel1: TcxGridLevel
        GridView = grdEntradaView
      end
    end
    object edtDatas: TcxDateNavigator
      Left = 13
      Top = 13
      Width = 1324
      Height = 125
      BorderStyle = cxcbsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      SelectPeriod = False
      ShowDatesContainingEventsInBold = False
      StartOfWeek = swMonday
      TabOrder = 0
      OnSelectionChanged = edtDatasSelectionChanged
    end
    object lblRecebido: TcxLabel
      Left = 912
      Top = 198
      Caption = 'Total recebido no per'#237'odo:'
      Style.HotTrack = False
      Transparent = True
    end
    object lblEmitido: TcxLabel
      Left = 912
      Top = 169
      Caption = 'Total emitido no per'#237'odo:'
      Style.HotTrack = False
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Notas de Sa'#237'da'
      CaptionOptions.Layout = clTop
      Control = grdSaida
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 492
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Notas de Entrada'
      CaptionOptions.Layout = clTop
      Control = grdEntrada
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 376
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      Control = edtDatas
      ControlOptions.OriginalHeight = 125
      ControlOptions.OriginalWidth = 1350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = lblRecebido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = lblEmitido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.AlignVert = tavCenter
      CaptionOptions.Text = 'Total de emiss'#227'o e recebimentos'
      ButtonOptions.Buttons = <>
      Index = 2
    end
  end
  object dxBarManager1: TdxBarManager
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 568
    Top = 8
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1031
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Salvar em ZIP'
      Category = 0
      Hint = 'Salvar em ZIP'
      Visible = ivAlways
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000013744558745469746C650050726F6A6563743B46696C653B3DFB8D82
        0000068B49444154785E9D575B8C1CC5153D553D8F7DCCECDA5EEF1A073B3610
        1B4C1E42324A6CC51626C6466088C40F24841F100F59912222C5C2083E1609F2
        F8022982C892235B4622C90782204522516230EF3560630B470B8E9D5D63F6E9
        9D65771EFDAAAA9B9A527517DD11A3152D9DA9EAAEEE7B4F9D3A7DBB861111F2
        07632CED6AF0A77FF9B381EB37ADBBC723DAADA458A584BC2EF4C35351184ED7
        EBCD7FBDFAE1E80B878F9EAC018835A406B561637704EB3C06FED75FEFDD3ED0
        D7FD976A7F65A8B7BF0F8542015DBD65D4A6A6E02F7C81854B5F60626CF2E29B
        273EBDEFC007632300024BA463F6845CA10309AE51F482D6E1C12BFA873E1F1B
        C79977A7D1AC37303F338FDE6A178A458E6F7C7315AEB872D99A4F4EAB3F02D8
        A2A12CE457E5B66D4A803B12603902E5DAE4F4BAFA2A86F7FE3982FFD6EAF706
        91F8FCE8F8FCBF6FB8BCBAA9CCB07ADDD8CC911FDE7815C2566B2D80AA86B049
        4436A981CC9360136F1D7A8D73BE23BD66A5217B3E767A142B87BA71F6E3715C
        77E336374E000361F4F849AC1828E03FA353D872EB4E33403605818CD4D05898
        AF1FFBDE9D8FEEB2C41C81F17FFC9E06365C8352B59A219C46C9AB463628A8E3
        BD44941ABA393783775FF833F63CF55237804843A54B3077EE3496AF5D89E6EC
        072E06B3716D9F9146B1026285541DCAF9D529C7C040A6E58CC0648042A982D6
        6203003CE48E82DF68A23135097F66025E89038C834822882213B8BB5C04D7CE
        2FF4288C2C6CC65C38004A0826492D0C09D7607D6914DF5D5E03F7624C5CB898
        9AFE77078EE291877E0473216C05A8CF4EA139336D662A84C0A5D945EDF62614
        91767B0F56AF1940CFA0C42C0DE081BBAE47FE882281582A8858228C057C5FA0
        B6E0A3D118C43B1FFD0DDF5976117E901A1B71289C02611062F6FC59A860C15C
        68F9116A351FDBF7EE070838F2C8AFA0221F83A2041A22434A29648CAA12FF32
        66A4974478FBC4387E7ECF56FC3DD885F7DE7F195E573521C01FFFC56E958856
        989C9C3F76EECCDC0DC5B207A5086118A3B2BC07976F5C03B93882A6A67EE2C3
        CF70D95C09743381C8262696CACF3D6E7AA45BC94D1F61149BF16DDFBF0AAFCB
        DB71FEC2E224709CE7EB0EBFEFF03B777B3C0415BBE1D71B089A2D345B914E7E
        12A2761A51284032D21086A033BEEB131138E71A0CCC332A200C0C01781EC78E
        AD1BB1F9B69FAE7E70DFC17D99DA634F644FB984D5DF5A83B962A4990B4CCCFB
        183DF60AE2A953904261C5B27E0C0D56314164936B506E190043823106528420
        8C6012B44981E3A6ED9B20A5DA17C707E5A167EE7FC2966B554864ACF65510F4
        76A15C96989CA9E3B9E137CDCC86565650E92DA3ABBB08520AE4923A22706438
        63606066297517058F19653C8FB067E7B7A1A4DC2FE23FD0F3CFEE1D0640E6B5
        90B104375A4A781EB07EED72F457CA0842816A6F09158D7672A56C7A6236731B
        CCBD8230C9D1F6539F7EFEE1E117A112D56CB1DAB9ED6A5C7BED8647013CA921
        CD7AC4B1441485888530C18B05AE67DE9B79DF63A94C0B9BCC1991525F29A5C0
        3D86EEAE12EEBEE30768B40263462908422AC442420F43AA99B4281905E258C1
        6F04884205C601865C91510017D684965032EA08C1480E30948B1EBCBE2E542B
        65435C2B6C080821C18D780A9635330A48D126D040AB1E9860B0EBC6581B046A
        B7B180A2C403C8BD0D560198E88648A9E819F98BE44196344CA1522878809294
        10700A846DB942011799650A8D2CC7E6C184809B3C434A232D0F0C6473182372
        9E7E338A1E334B9521208442E887109174B373CB60661247C23E4820E53E3C8E
        09A06CEBECE19687330EE2CA9051840C01234DE847260990CEC80526738F6E93
        C84E06428671E6534A2E88E973C68C49A5CA2E81086339DB5C6C0CB695C84534
        8D240DA14092D26094FF5E13DC75C71D39AF9A62452A6BC2E6B985E83129E8B7
        1EC38A847D5E01F409482B2751360D29A71BC0D271962F54F657E514F0FF74BE
        FE22805735CA1ACE31EEF07066BE77F816759C32E45C5F01D6B8AE3450DE0BD6
        9C8AB20422BB596CE636A8F9CD6BC54A975F5B1063194FD8A9DBC4CC9C93E36C
        CDEC02938634C81E790245A50884DC97309D2ADC35963192DB4326BC149C07CC
        A023D8E95F12641227938FDCEC896506C916072257578828BF044B3F94542024
        0198335A729E99752A87464E35A5BE1601522053E70B9C839C0780FCA6143995
        C8C94F484DA8964A80D99BE32868BDBEFF37AFEC70C1B29F5ABB0C2E618690DB
        D04761F08635BF5A0A01B2089F79E2273F0650EEF0776E29E75223D4F01D81A5
        91105689C005ED08D62196B2A0FF01B29A46ABA9D2FAED0000000049454E44AE
        426082}
      Width = 100
    end
    object menuData: TcxBarEditItem
      Caption = 'Per'#237'odo'
      Category = 0
      Hint = 'Per'#237'odo'
      Visible = ivAlways
      PropertiesClassName = 'TdxDateTimeWheelPickerProperties'
      Properties.Wheels = [pwYear, pwMonth]
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Salvar em uma pasta'
      Category = 0
      Hint = 'Salvar em uma pasta'
      Visible = ivAlways
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
        31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
        2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
        3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
        696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
        696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
        23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
        2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
        6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
        393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
        31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
        6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
        393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
        4646463B7D3C2F7374796C653E0D0A3C672069643D22466F6C646572223E0D0A
        09093C6720636C6173733D22737431223E0D0A0909093C7061746820636C6173
        733D2259656C6C6F772220643D224D322E322C32352E326C352E352D31304338
        2C31342E352C382E372C31342C392E352C3134483234762D3363302D302E362D
        302E342D312D312D31483132563763302D302E362D302E342D312D312D314833
        43322E342C362C322C362E352C322C3776313820202623393B2623393B262339
        3B63302C302E322C302C302E332C302E312C302E3443322E312C32352E342C32
        2E322C32352E332C322E322C32352E327A222F3E0D0A09093C2F673E0D0A0909
        3C7061746820636C6173733D2259656C6C6F772220643D224D32392E332C3136
        48392E364C342C32366831392E3863302E352C302C312E312D302E322C312E33
        2D302E366C342E392D382E394333302E312C31362E322C32392E382C31362C32
        392E332C31367A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      Width = 100
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Salvar Relat'#243'rio'
      Category = 0
      Hint = 'Salvar Relat'#243'rio'
      Visible = ivAlways
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001D744558745469746C65004578706F72743B5064663B4578706F7274
        546F5064663BEE3907740000062F49444154785EC5977D889D5711C67FE77DEF
        DD6C9B3469FD20216183544CC58F228A2958D33469ED47AC6DA9CA22062C5114
        A1D4C62234696997AD181494EC1F5AD136468936B442C5222A34564D37A14A10
        D40836E6ABD1DAB4B1C6DDECDDBDF79C99D10C877BE0F2E6F64FCFEE30E77DEF
        61E699679EB967379819002104F20A4DBED19A3F3340DD0F59392FADA6A053BB
        A79FA10A1B82E5286A0402E63F10C077FE6B6001C80167CECE3E3C71EFA64932
        88C9A9670C530C78E89E1B1A91B8958AA8A7BE7FC05E6F75BBD1CE75BA76F63F
        1D3B7D66C64E9C7ACD7EFFC7BFDBBEE92376DF8EA71E06DA400584BFBCF0B2E7
        68C8DBCC8065F6921AA87918D300B9720051300325A016FCECAF9F3FCABD9FBE
        86B9F9F8C03D134F869D131F9F04D23BD6ACC00611C0055B0062EE4CB35780CC
        B5EFA0AA2B40B1BA42AA8A80D2ED4500367CE06D88EAFD0BDBF6846FEFD8EC20
        42088DBAA89A18B8EA3D6399A650A4646058D99B5255155505A10ECE4477BE07
        405D575CFFC12BFE67EFDEBE65EBAE87A0B4A39181E9EBD6EFDBBF61DD461345
        55E9DC35CE3E15C40C134554D1FC59D92B97BD7F2D573FF63D42105063BEEB00
        68558140C58D1BDE4912D9D6ED3EC20FBFF5F949209609290030D58D97AF7D2F
        A682254153C262427C1FD1F20E15E93F1F3E7000C5A842C00874BB9110A05507
        AA2A50D7C66D375E894ADA167B533CF1E81726001B04E0159924DEBC63CAC576
        E69B5FA7F3BB83ACDAFD04A6F0CA37763077F039C6F63E8D61A81AC73FF22154
        35EB22D05E54B3EC92513E77DF8F502D230AC6CD1BDFC5156F5FB30DF8322083
        2D705A4DC4939FDA32CEAAC7F672EEE047518593E3B732F6F84F987DEE379819
        C76FBBC1CFAA28925B51D5818B4747B873FC6ACE7516E8F522928C989424422B
        04E06580BA51031E2C0A8679F257777E0DA71CC3DB024EBB61AC7EEA971CFFF0
        464CD52BF5D804465ACE00972C5EE4C05214E2799FC45B22A200C1AD89018D09
        337871F31DDE674B0A6678623307A906C77272F3EA0525400632D2AE5133CC6A
        64A466441449EA0014E542539013A67E42CD149BC2EA1FFF8CD35F9984FC6CEE
        DDFC0C625866C1CC3D2EC4AACA6A0BB45B014D5C1880A8212971E213B7E30054
        7D1A8EDD7E53EEB778C263375F9B935BDF94A26B0DE4BDB9AB4285554AABAE50
        952100447E71F8D09F6ED25C99E4D9F704AAD9F2DE141373AA57AC5F0F56AEA7
        A27C00C30C1FD1E06C94165839C4E0755C03173F7BF0C8CCFAABDECA6C27E2E1
        0DF746DE10FA2F936BA35C6839B417E2DE60C9456DF63F7F845BAEBF72253003
        740131336BBC8C7E35FD37CE033032B5399242A94E5D3B3CBAF7E71C3BF94F3A
        FF3AC3EAB195888A4F54D448EA093145624CA418D9F4B1BB5F1A5DB29494E2FE
        9FEEF9EA75401C0410809044FBC965F012B3526514E1E8897FF096E597F1E757
        4EF3C5BB37938FBB37F785973B3FF325D65C3EC6E1BF1E5D07B49A0094B678F2
        928C81DE5A085816AF8A2022FEFED5B3F3AE17CBE7C6EFF8A48B71CF933F4052
        E4C5532FB9E0810AA01180AA943242A9A230E02F5DD9292592B8F7732ED6DC22
        3368B55A2C5DF62696BF61B19F5155F74301640195112BB9B3CF0CA978352989
        57A7668802E07B03DA23A3B42F1A75918AF8880F65C03520E2298AB2A13F6E79
        E832FD860310175B3EAB9816DCDFD9FD082BDEB818339094EF90D76F41115EC6
        D04F8E9A7B05C4D483A6E4B4B2F9535B31534F62A86BC3995025FF0D98199046
        00A1B4C08A9235578CA10393A0E20CB82D5FB90A3F6F395916A21510AE0F3719
        CE00D20F427E36085AB440E5704412294592D32A3CFEDD0986AD5BC6B752576D
        4464B806548A904A2B2A32A23E176AEA02F42F1AAF0A5E9BED82159A34F8C410
        80D8EDC148E52D6A0690995513DF5CBAA48D31F8FD5EE22FCCD5684A6E29C602
        DA4A34B33251BD5E8FBAB5C8991B0620F616E67F7BD7F6BDD798957E1B0A16B0
        FE0B63DDDA55FDEF81D8EBF1E0D32F788F931A22646FDE421548BD1E3AAAA836
        3390C5CDC2AE9D5B6E051601F5B0FF1177C1F26B377DF6504CEAF42EBD7419E2
        491D04517C8F1B1053A2BB30EF8204C205190004980702C397CE77660E9D3CD1
        7BDF48BBC5F4B387F1E4515C68310A29893FFBFD122373E766E92ECCFDC1E337
        5CC734543BCC5AC032603150515618124B8139E0DF66161DC0FF73FD17E41550
        61695959F20000000049454E44AE426082}
      Width = 100
    end
    object menuDANFe: TcxBarEditItem
      Caption = 'Enviar DANFe'
      Category = 0
      Hint = 'Enviar DANFe'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001D744558745469746C65004578706F72743B5064663B4578706F7274
        546F5064663BEE390774000001EF49444154785E8D933D6B545110869F7335C6
        DA46482322821FD1C244831F6113B4B2D49FA0A5959FB0A831C48082B58DFF21
        B522BA2B1B171504A362136D54B45410DD6473675EC9700E2CB1B1983BEF5C98
        6786993909D86814BF411713504B12C06620DD7DF0E26995AA068010521070C5
        1729811C91A8EB95CECD0B532781B502A8506A5C3A7FB8F029E2DF10E6EF7727
        814D838054CB41B0DA3704284394854808D8BA2561B51345010AC0FA06804950
        92F348829D94C189DA0C200D02B0DA00A10C504AA145308A0E58636207F31B26
        3CDCBCD75A99BBD8E0EBCC2CBDE71DE48EB9A1DA30B3D06EEBE6B8D5983BA1DD
        166206D101B0D2EDB0F3E123E489EFB7AEF3ABDD66777B1D085F9A57F9D97AC2
        DEEE6B8470176F0E8D9EA980D45F3324401EC9CBA7A6D83E3387CB71870FC78F
        3072FB4E5495C4BBF183BC1D3B10BA0258CB1DB813F45D8F5B7CBBD18C5685A0
        CC4011B3EFE5122E21296FC10C092241F071FA04EE8ECC41C21495E39F0B96C6
        474B4C550004D1C3BB2BD61510873D8BAFF87CED32E4582EE40E281F928380A1
        89632C4F4F121B702189F747C7504CDD30A9540F2DB150EE000123B3F3E52D94
        BD67EDD943A7FB89B3A7F76F93F4A31C52DDEFFD7976EECA42C305553E1C17A4
        24E469E03A457FF5F722D01F3CA40A180686FEE3492B3FA29E2403F80BF7A584
        590387B74F0000000049454E44AE426082}
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = True
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Enviar por e-mail'
      Category = 0
      Hint = 'Enviar por e-mail'
      Visible = ivAlways
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000028744558745469746C65004C65747465723B652D6D6169
        6C3B656D61696C3B6D61696C3B54656D706C6174653B9BE1250C000000BA4944
        4154785EEDD3310AC3300C8561DF2C6B975E2990E24375F5987B147C0CF54D11
        45C3ABAC0A4371E05FF33E1CA788C8D43E000BB0000B707F3C37742249E8441B
        037424897502B8B4051D3F021CE87AF7B780DD2062E3BB0B6011F17127C02222
        E33E801F513C71801F516AAD321A01308402061E0BE0DF54112900366E4FC202
        5A6B2C0EE0B759110900326E1009003EAE88A43BA0E32C7602785C27F02263E9
        801BEA1300A1A277209CF72F5880E977E04F01A30130B737F642904A454C0029
        0000000049454E44AE426082}
      Width = 100
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 536
    Top = 8
  end
  object ACBrNFe: TACBrNFe
    MAIL = ACBrMail
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 664
    Top = 16
  end
  object ACBrMail: TACBrMail
    Host = 'mail.moebios.com.br'
    Port = '465'
    Username = 'envioxml@moebios.com.br'
    Password = '@Moebios@2020'
    SetSSL = True
    SetTLS = True
    IsHTML = True
    UseThread = True
    Attempts = 3
    From = 'Moebios Commerce'
    FromName = 'Moebios Commerce XML'
    Subject = 'Envio de XMLs'
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 664
    Top = 80
  end
  object qryNF: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfe '
      'WHERE '
      '  EXTRACT(MONTH FROM ide_dhemi) = :pMES AND'
      '  EXTRACT(YEAR FROM ide_dhemi) = :pANO')
    Left = 744
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pMES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pANO'
        Value = nil
      end>
    object qryNFinfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object qryNFinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object qryNFide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object qryNFide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object qryNFide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object qryNFide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object qryNFide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object qryNFide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object qryNFide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object qryNFide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object qryNFide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object qryNFide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object qryNFide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object qryNFide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object qryNFide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object qryNFide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object qryNFide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object qryNFide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object qryNFemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object qryNFemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object qryNFemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object qryNFemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object qryNFemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object qryNFemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object qryNFemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object qryNFemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object qryNFemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object qryNFemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object qryNFemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object qryNFemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object qryNFdest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object qryNFdest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object qryNFdest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object qryNFdest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object qryNFdest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object qryNFdest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object qryNFdest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object qryNFdest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object qryNFdest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object qryNFdest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object qryNFdest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object qryNFdest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object qryNFdest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object qryNFdest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object qryNFtotal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object qryNFtotal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object qryNFtotal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object qryNFtotal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object qryNFtotal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object qryNFtotal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object qryNFtotal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object qryNFtotal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object qryNFtotal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object qryNFtotal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object qryNFtotal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object qryNFtotal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object qryNFtotal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object qryNFtotal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object qryNFtotal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object qryNFtotal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object qryNFtotal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object qryNFtotal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object qryNFtotal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object qryNFtotal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object qryNFtotal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object qryNFtotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object qryNFtransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object qryNFtransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object qryNFtransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object qryNFtransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object qryNFtransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object qryNFtransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object qryNFtransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object qryNFtransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object qryNFtransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object qryNFtransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object qryNFcobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object qryNFcobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object qryNFcobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object qryNFcobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object qryNFpag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object qryNFpag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object qryNFpag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object qryNFpag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object qryNFpag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object qryNFpag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object qryNFpag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object qryNFpag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object qryNFinfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object qryNFinfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object qryNFinfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object qryNFinfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object qryNFinfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object qryNFsignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object qryNFprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object qryNFcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFcad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object qryNFcad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
    object qryNFemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object qryNFdest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object qryNFemit_enderemit_fone: TStringField
      FieldName = 'emit_enderemit_fone'
    end
    object qryNFdest_enderdest_fone: TStringField
      FieldName = 'dest_enderdest_fone'
    end
    object qryNFtransp_transporta_cnpj: TStringField
      FieldName = 'transp_transporta_cnpj'
    end
    object qryNFinfresptec_cnpj: TStringField
      FieldName = 'infresptec_cnpj'
    end
    object qryNFtotal_icmstot_vTotTrib: TFloatField
      FieldName = 'total_icmstot_vTotTrib'
    end
    object qryNFxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryNFemit_im: TStringField
      FieldName = 'emit_im'
    end
    object qryNFemit_cnae: TStringField
      FieldName = 'emit_cnae'
    end
    object qryNFemit_enderemit_xcpl: TStringField
      FieldName = 'emit_enderemit_xcpl'
      Size = 200
    end
    object qryNFdest_Enderdest_xcpl: TStringField
      FieldName = 'dest_Enderdest_xcpl'
      Size = 200
    end
    object qryNFdest_im: TStringField
      FieldName = 'dest_im'
    end
    object qryNFcad_integracao: TIntegerField
      FieldName = 'cad_integracao'
    end
    object qryNFcad_integracao_dados: TStringField
      FieldName = 'cad_integracao_dados'
      Size = 200
    end
    object qryNFtransp_transporta_ie: TStringField
      FieldName = 'transp_transporta_ie'
    end
    object qryNFemit_ie: TStringField
      FieldName = 'emit_ie'
    end
  end
  object qryNFItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfeitens'
      'WHERE'
      '  infnfe_chave = :pCHAVE')
    Left = 832
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCHAVE'
        Value = nil
      end>
    object qryNFItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object qryNFItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object qryNFItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object qryNFItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object qryNFItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object qryNFItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object qryNFItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object qryNFItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object qryNFItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object qryNFItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object qryNFItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object qryNFItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object qryNFItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object qryNFItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object qryNFItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object qryNFItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object qryNFItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object qryNFItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object qryNFItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object qryNFItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object qryNFItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object qryNFItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object qryNFItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object qryNFItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object qryNFItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object qryNFItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
    object qryNFItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object qryNFItensAliquota_STEfetivo: TFloatField
      FieldName = 'Aliquota_STEfetivo'
    end
    object qryNFItensnitemped: TStringField
      FieldName = 'nitemped'
      Size = 50
    end
    object qryNFItensxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryNFItensdet_prod_vdesc: TFloatField
      FieldName = 'det_prod_vdesc'
    end
    object qryNFItensdet_prod_voutro: TFloatField
      FieldName = 'det_prod_voutro'
    end
    object qryNFItensdet_prod_vfrete: TFloatField
      FieldName = 'det_prod_vfrete'
    end
    object qryNFItensdet_prod_vseg: TFloatField
      FieldName = 'det_prod_vseg'
    end
    object qryNFItensdet_prod_ncm: TStringField
      FieldName = 'det_prod_ncm'
    end
  end
  object qryNFEntrada: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfentrada '
      'WHERE '
      '  EXTRACT(MONTH FROM ide_dhemi) = :pMES AND'
      '  EXTRACT(YEAR FROM ide_dhemi) = :pANO')
    Left = 744
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pMES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pANO'
        Value = nil
      end>
    object qryNFEntradainfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object qryNFEntradainfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFEntradaide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object qryNFEntradaide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object qryNFEntradaide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object qryNFEntradaide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFEntradaide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFEntradaide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFEntradaide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object qryNFEntradaide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object qryNFEntradaide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object qryNFEntradaide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object qryNFEntradaide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object qryNFEntradaide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object qryNFEntradaide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object qryNFEntradaide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object qryNFEntradaide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object qryNFEntradaide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object qryNFEntradaide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object qryNFEntradaide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object qryNFEntradaide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object qryNFEntradaide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object qryNFEntradaemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object qryNFEntradaemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object qryNFEntradaemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object qryNFEntradaemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object qryNFEntradaemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object qryNFEntradaemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object qryNFEntradaemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object qryNFEntradaemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object qryNFEntradaemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object qryNFEntradaemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object qryNFEntradaemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object qryNFEntradaemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object qryNFEntradadest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object qryNFEntradadest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object qryNFEntradadest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object qryNFEntradadest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object qryNFEntradadest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object qryNFEntradadest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object qryNFEntradadest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object qryNFEntradadest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object qryNFEntradadest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object qryNFEntradadest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object qryNFEntradadest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object qryNFEntradadest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object qryNFEntradadest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object qryNFEntradadest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object qryNFEntradatotal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object qryNFEntradatotal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object qryNFEntradatotal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object qryNFEntradatotal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object qryNFEntradatotal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object qryNFEntradatotal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object qryNFEntradatotal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object qryNFEntradatotal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object qryNFEntradatotal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object qryNFEntradatotal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object qryNFEntradatotal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object qryNFEntradatotal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object qryNFEntradatotal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object qryNFEntradatotal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object qryNFEntradatotal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object qryNFEntradatotal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object qryNFEntradatotal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object qryNFEntradatotal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object qryNFEntradatotal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object qryNFEntradatotal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object qryNFEntradatotal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object qryNFEntradatotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object qryNFEntradatransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object qryNFEntradatransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object qryNFEntradatransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object qryNFEntradatransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object qryNFEntradatransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object qryNFEntradatransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object qryNFEntradatransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object qryNFEntradatransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object qryNFEntradatransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object qryNFEntradatransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object qryNFEntradacobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object qryNFEntradacobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object qryNFEntradacobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object qryNFEntradacobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object qryNFEntradapag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object qryNFEntradapag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object qryNFEntradapag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object qryNFEntradapag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object qryNFEntradapag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object qryNFEntradapag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object qryNFEntradapag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object qryNFEntradapag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object qryNFEntradainfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object qryNFEntradainfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object qryNFEntradainfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object qryNFEntradainfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object qryNFEntradainfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object qryNFEntradasignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object qryNFEntradaprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object qryNFEntradacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFEntradacad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object qryNFEntradacad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
    object qryNFEntradaemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object qryNFEntradadest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object qryNFEntradaemit_enderemit_fone: TStringField
      FieldName = 'emit_enderemit_fone'
    end
    object qryNFEntradadest_enderdest_fone: TStringField
      FieldName = 'dest_enderdest_fone'
    end
    object qryNFEntradatransp_transporta_cnpj: TStringField
      FieldName = 'transp_transporta_cnpj'
    end
    object qryNFEntradainfresptec_cnpj: TStringField
      FieldName = 'infresptec_cnpj'
    end
    object qryNFEntradatotal_icmstot_vTotTrib: TFloatField
      FieldName = 'total_icmstot_vTotTrib'
    end
    object qryNFEntradaxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryNFEntradaemit_im: TStringField
      FieldName = 'emit_im'
    end
    object qryNFEntradaemit_cnae: TStringField
      FieldName = 'emit_cnae'
    end
    object qryNFEntradaemit_enderemit_xcpl: TStringField
      FieldName = 'emit_enderemit_xcpl'
      Size = 200
    end
    object qryNFEntradadest_Enderdest_xcpl: TStringField
      FieldName = 'dest_Enderdest_xcpl'
      Size = 200
    end
    object qryNFEntradadest_im: TStringField
      FieldName = 'dest_im'
    end
    object qryNFEntradacad_integracao: TIntegerField
      FieldName = 'cad_integracao'
    end
    object qryNFEntradacad_integracao_dados: TStringField
      FieldName = 'cad_integracao_dados'
      Size = 200
    end
    object qryNFEntradatransp_transporta_ie: TStringField
      FieldName = 'transp_transporta_ie'
    end
    object qryNFEntradaemit_ie: TStringField
      FieldName = 'emit_ie'
    end
  end
  object qryNFEntradaItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfentradaitens'
      'WHERE'
      '  infnfe_chave = :pCHAVE')
    Left = 832
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCHAVE'
        Value = nil
      end>
    object qryNFEntradaItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object qryNFEntradaItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object qryNFEntradaItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object qryNFEntradaItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object qryNFEntradaItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object qryNFEntradaItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object qryNFEntradaItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object qryNFEntradaItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object qryNFEntradaItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object qryNFEntradaItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object qryNFEntradaItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object qryNFEntradaItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object qryNFEntradaItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object qryNFEntradaItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object qryNFEntradaItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object qryNFEntradaItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object qryNFEntradaItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object qryNFEntradaItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object qryNFEntradaItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object qryNFEntradaItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object qryNFEntradaItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object qryNFEntradaItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object qryNFEntradaItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object qryNFEntradaItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object qryNFEntradaItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object qryNFEntradaItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object qryNFEntradaItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object qryNFEntradaItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object qryNFEntradaItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object qryNFEntradaItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object qryNFEntradaItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object qryNFEntradaItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFEntradaItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFEntradaItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFEntradaItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFEntradaItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFEntradaItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
    object qryNFEntradaItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object qryNFEntradaItensAliquota_STEfetivo: TFloatField
      FieldName = 'Aliquota_STEfetivo'
    end
    object qryNFEntradaItensnitemped: TStringField
      FieldName = 'nitemped'
      Size = 50
    end
    object qryNFEntradaItensxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryNFEntradaItensdet_prod_vdesc: TFloatField
      FieldName = 'det_prod_vdesc'
    end
    object qryNFEntradaItensdet_prod_voutro: TFloatField
      FieldName = 'det_prod_voutro'
    end
    object qryNFEntradaItensdet_prod_vfrete: TFloatField
      FieldName = 'det_prod_vfrete'
    end
    object qryNFEntradaItensdet_prod_vseg: TFloatField
      FieldName = 'det_prod_vseg'
    end
    object qryNFEntradaItensdet_prod_ncm: TStringField
      FieldName = 'det_prod_ncm'
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      LookAndFeel.SkinName = 'MySkin_Office2019Colorful'
      PixelsPerInch = 96
    end
  end
  object dsNF: TDataSource
    DataSet = qryNF
    Left = 920
    Top = 16
  end
  object dsNFentrada: TDataSource
    DataSet = qryNFEntrada
    Left = 920
    Top = 72
  end
  object qrySomaNF: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  SUM(total_icmstot_vnf) as total'
      'FROM'
      '  commerce.nfe '
      'WHERE '
      '  EXTRACT(MONTH FROM ide_dhemi) = :pMES AND'
      '  EXTRACT(YEAR FROM ide_dhemi) = :pANO')
    AfterOpen = qrySomaNFAfterOpen
    Left = 976
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pMES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pANO'
        Value = nil
      end>
    object qrySomaNFtotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object qrySomaNFentrada: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  SUM(total_icmstot_vnf) as total'
      'FROM'
      '  commerce.nfentrada '
      'WHERE '
      '  EXTRACT(MONTH FROM ide_dhemi) = :pMES AND'
      '  EXTRACT(YEAR FROM ide_dhemi) = :pANO')
    AfterOpen = qrySomaNFentradaAfterOpen
    Left = 976
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pMES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pANO'
        Value = nil
      end>
    object qrySomaNFentradatotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
end
