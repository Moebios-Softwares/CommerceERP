object frmVenda: TfrmVenda
  Left = 0
  Top = 0
  Caption = 'PDV'
  ClientHeight = 729
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object rbbVenda: TdxRibbon
    Left = 0
    Top = 0
    Width = 1350
    Height = 40
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Colorful'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 706
    Width = 1350
    Height = 23
    Panels = <>
    Ribbon = rbbVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 40
    Width = 1350
    Height = 666
    Align = alClient
    TabOrder = 2
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object cxButton1: TcxButton
      Left = 1064
      Top = 510
      Width = 250
      Height = 46
      Caption = 'Selecionar Pagamento'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
        3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
        696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
        6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
        74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
        643D2250616964223E0D0A09093C7061746820636C6173733D22526564222064
        3D224D32382C32324332382C32322C32382C32322C32382C32326C302C356330
        2C302E362D302E352C312D312C314833632D302E362C302D312D302E352D312D
        31563563302D302E362C302E352D312C312D3148323763302E362C302C312C30
        2E352C312C317631763420202623393B2623393B63302C302C302C302C302C30
        682D372E37632D332E332C302D362E322C322E352D362E332C352E38632D302E
        312C332E342C322E362C362E322C362C362E324832387A204D33302C31337636
        63302C302E352D302E352C312D312C316830682D382E38632D322E312C302D34
        2D312E352D342E322D332E3620202623393B2623393B4331352E382C31342C31
        372E372C31322C32302C3132683968304332392E352C31322C33302C31322E35
        2C33302C31337A204D32322C313663302D312E312D302E392D322D322D32732D
        322C302E392D322C3263302C312E312C302E392C322C322C325332322C31372E
        312C32322C31367A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 1064
      Top = 566
      Width = 250
      Height = 64
      Caption = 'Fechar venda'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
        31314331433B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B9
        5F32223E0D0A09093C7061746820636C6173733D225265642220643D224D3330
        2C386C2D342C384C382C313676326C31382C306C2D322C32483656384C322C34
        6C312D316C352C354833307A222F3E0D0A09093C673E0D0A0909093C673E0D0A
        090909093C7061746820636C6173733D22426C61636B2220643D224D392C3232
        632D312E372C302D332C312E332D332C3363302C312E372C312E332C332C332C
        3363312E372C302C332D312E332C332D334331322C32332E332C31302E372C32
        322C392C32327A204D32312C3232632D312E372C302D332C312E332D332C3320
        202623393B2623393B2623393B2623393B63302C312E372C312E332C332C332C
        3363312E372C302C332D312E332C332D334332342C32332E332C32322E372C32
        322C32312C32327A222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C
        2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 4
    end
    object cxButton3: TcxButton
      Left = 1064
      Top = 454
      Width = 250
      Height = 46
      Caption = 'Selecionar Cliente'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
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
        4646463B7D3C2F7374796C653E0D0A3C672069643D22437573746F6D65725F31
        5F223E0D0A09093C7061746820636C6173733D22426C75652220643D224D3130
        2C392E39632D302E312C302E352C302E322C302E392C302E342C312E34732D30
        2E312C312E372C302E392C312E3663302C302C302C302E312C302C302E326330
        2E362C322E332C322C342E392C342E372C342E3973342E322D322E362C342E37
        2D342E3920202623393B2623393B56313363312C302E312C302E362D312E312C
        302E392D312E3663302E322D302E352C302E342D302E392C302E332D312E3463
        2D302E312D302E342D302E342D302E342D302E352D302E334332332E322C342E
        382C32302E332C352C32302E332C355332302C322C31342E382C322020262339
        3B2623393B4331302C322C392E342C362C31302E352C392E364331302E342C39
        2E362C31302E312C392E372C31302C392E397A204D32302C3138632D302E382C
        312E352D322E312C342D342C34732D332E322D322E352D342D34632D322E332C
        332E352D382C312D382C382E35563330683234762D332E3520202623393B2623
        393B4332382C31392E312C32322E332C32312E342C32302C31387A222F3E0D0A
        093C2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 2
    end
    object grdVenda: TcxGrid
      Left = 1064
      Top = 75
      Width = 250
      Height = 369
      TabOrder = 1
      object grdVendaView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object grdVendaLevel1: TcxGridLevel
        GridView = grdVendaView
      end
    end
    object grdProdutos: TcxGrid
      Left = 17
      Top = 46
      Width = 1018
      Height = 603
      TabOrder = 0
      object grdProdutosView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = 'Digite algo para pesquisar...'
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsProdutos
        DataController.KeyFieldNames = 'codigo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        object grdProdutosViewcodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'codigo'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 89
        end
        object grdProdutosViewproduto: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'produto'
          Width = 602
        end
        object grdProdutosViewestoque: TcxGridDBColumn
          Caption = 'Estoque'
          DataBinding.FieldName = 'estoque'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 161
        end
        object grdProdutosViewprecovenda: TcxGridDBColumn
          Caption = 'Pre'#231'o de Venda'
          DataBinding.FieldName = 'precovenda'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 168
        end
      end
      object grdProdutosLevel1: TcxGridLevel
        GridView = grdProdutosView
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton1
      ControlOptions.OriginalHeight = 46
      ControlOptions.OriginalWidth = 248
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton2
      ControlOptions.OriginalHeight = 64
      ControlOptions.OriginalWidth = 248
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton3
      ControlOptions.OriginalHeight = 46
      ControlOptions.OriginalWidth = 248
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Itens da Nota'
      CaptionOptions.Layout = clTop
      Control = grdVenda
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Produtos dispon'#237'veis para venda'
      CaptionOptions.Layout = clTop
      Control = grdProdutos
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 536
    Top = 8
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 688
    Top = 48
  end
  object dsItens: TDataSource
    Left = 768
    Top = 48
  end
  object qryProdutos: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.produtos')
    Left = 688
    Top = 96
    object qryProdutoscodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object qryProdutosproduto: TStringField
      FieldName = 'produto'
      Size = 400
    end
    object qryProdutosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object qryProdutoscodgrupo: TStringField
      FieldName = 'codgrupo'
      Size = 6
    end
    object qryProdutoscodsubgrupo: TStringField
      FieldName = 'codsubgrupo'
      Size = 6
    end
    object qryProdutoscodfornecedor: TStringField
      FieldName = 'codfornecedor'
      Size = 6
    end
    object qryProdutoscodmarca: TStringField
      FieldName = 'codmarca'
      Size = 6
    end
    object qryProdutosdata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object qryProdutosnotafiscal: TStringField
      FieldName = 'notafiscal'
      Size = 7
    end
    object qryProdutosprecocusto: TFloatField
      FieldName = 'precocusto'
    end
    object qryProdutosprecovenda: TFloatField
      FieldName = 'precovenda'
    end
    object qryProdutosdata_ultimavenda: TDateField
      FieldName = 'data_ultimavenda'
    end
    object qryProdutosestoque: TFloatField
      FieldName = 'estoque'
    end
    object qryProdutosestoqueminimo: TFloatField
      FieldName = 'estoqueminimo'
    end
    object qryProdutoscodaliquota: TStringField
      FieldName = 'codaliquota'
      Size = 5
    end
    object qryProdutoslocalicazao: TStringField
      FieldName = 'localicazao'
      Size = 50
    end
    object qryProdutospeso: TFloatField
      FieldName = 'peso'
    end
    object qryProdutosvalidade: TStringField
      FieldName = 'validade'
    end
    object qryProdutoscomissao: TFloatField
      FieldName = 'comissao'
    end
    object qryProdutosusa_balanca: TIntegerField
      FieldName = 'usa_balanca'
    end
    object qryProdutosusa_serial: TIntegerField
      FieldName = 'usa_serial'
    end
    object qryProdutosusa_grade: TIntegerField
      FieldName = 'usa_grade'
    end
    object qryProdutoscodreceita: TStringField
      FieldName = 'codreceita'
      Size = 6
    end
    object qryProdutosfoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object qryProdutosdata_ultimacompra_anterior: TDateField
      FieldName = 'data_ultimacompra_anterior'
    end
    object qryProdutosnotafiscal_anterior: TStringField
      FieldName = 'notafiscal_anterior'
      Size = 6
    end
    object qryProdutoscodfornecedor_anterior: TStringField
      FieldName = 'codfornecedor_anterior'
      Size = 6
    end
    object qryProdutosprecocusto_anterior: TFloatField
      FieldName = 'precocusto_anterior'
    end
    object qryProdutosprecovenda_anterior: TFloatField
      FieldName = 'precovenda_anterior'
    end
    object qryProdutoscustomedio: TFloatField
      FieldName = 'customedio'
    end
    object qryProdutosauto_aplicacao: TStringField
      FieldName = 'auto_aplicacao'
      Size = 60
    end
    object qryProdutosauto_complemento: TStringField
      FieldName = 'auto_complemento'
      Size = 60
    end
    object qryProdutosdata_remarcacao_custo: TDateField
      FieldName = 'data_remarcacao_custo'
    end
    object qryProdutosdata_remarcacao_venda: TDateField
      FieldName = 'data_remarcacao_venda'
    end
    object qryProdutospreco_promocao: TFloatField
      FieldName = 'preco_promocao'
    end
    object qryProdutosdata_promocao: TDateField
      FieldName = 'data_promocao'
    end
    object qryProdutosfim_promocao: TDateField
      FieldName = 'fim_promocao'
    end
    object qryProdutoscst: TStringField
      FieldName = 'cst'
      Size = 200
    end
    object qryProdutosclassificacao_fiscal: TStringField
      FieldName = 'classificacao_fiscal'
    end
    object qryProdutosnbm: TStringField
      FieldName = 'nbm'
    end
    object qryProdutosncm: TStringField
      FieldName = 'ncm'
    end
    object qryProdutosaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object qryProdutosipi: TFloatField
      FieldName = 'ipi'
    end
    object qryProdutosreducao: TFloatField
      FieldName = 'reducao'
    end
    object qryProdutosqtde_embalagem: TFloatField
      FieldName = 'qtde_embalagem'
    end
    object qryProdutostipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object qryProdutospeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object qryProdutosfarmacia_controlado: TStringField
      FieldName = 'farmacia_controlado'
      Size = 1
    end
    object qryProdutosfarmacia_apresentacao: TIntegerField
      FieldName = 'farmacia_apresentacao'
    end
    object qryProdutosfarmacia_registro_medicamento: TStringField
      FieldName = 'farmacia_registro_medicamento'
    end
    object qryProdutosfarmacia_pmc: TFloatField
      FieldName = 'farmacia_pmc'
    end
    object qryProdutosultima_alteracao: TDateField
      FieldName = 'ultima_alteracao'
    end
    object qryProdutosultima_carga: TDateField
      FieldName = 'ultima_carga'
    end
    object qryProdutosdata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object qryProdutoscusto_inventario: TFloatField
      FieldName = 'custo_inventario'
    end
    object qryProdutosestoque_inventario: TFloatField
      FieldName = 'estoque_inventario'
    end
    object qryProdutosestoque_anterior: TFloatField
      FieldName = 'estoque_anterior'
    end
    object qryProdutosprecovenda_novo: TFloatField
      FieldName = 'precovenda_novo'
    end
    object qryProdutosusa_rentabilidade: TIntegerField
      FieldName = 'usa_rentabilidade'
    end
    object qryProdutosquantidade_minima_fab: TFloatField
      FieldName = 'quantidade_minima_fab'
    end
    object qryProdutosapresentacao: TStringField
      FieldName = 'apresentacao'
      Size = 60
    end
    object qryProdutossituacao: TIntegerField
      FieldName = 'situacao'
    end
    object qryProdutosprecovenda1: TFloatField
      FieldName = 'precovenda1'
    end
    object qryProdutosprecovenda2: TFloatField
      FieldName = 'precovenda2'
    end
    object qryProdutosprecovenda3: TFloatField
      FieldName = 'precovenda3'
    end
    object qryProdutosprecovenda4: TFloatField
      FieldName = 'precovenda4'
    end
    object qryProdutosprecovenda5: TFloatField
      FieldName = 'precovenda5'
    end
    object qryProdutosdesconto_precovenda: TFloatField
      FieldName = 'desconto_precovenda'
    end
    object qryProdutosdata_inventario_atual: TDateField
      FieldName = 'data_inventario_atual'
    end
    object qryProdutoscusto_inventario_atual: TFloatField
      FieldName = 'custo_inventario_atual'
    end
    object qryProdutosestoque_inventario_atual: TFloatField
      FieldName = 'estoque_inventario_atual'
    end
    object qryProdutosmargem_minima: TFloatField
      FieldName = 'margem_minima'
    end
    object qryProdutospiscofins: TStringField
      FieldName = 'piscofins'
      Size = 1
    end
    object qryProdutosreferencia_fornecedor: TStringField
      FieldName = 'referencia_fornecedor'
      Size = 30
    end
    object qryProdutoscomissao1: TFloatField
      FieldName = 'comissao1'
    end
    object qryProdutosmargem_desconto: TFloatField
      FieldName = 'margem_desconto'
    end
    object qryProdutostamanho: TStringField
      FieldName = 'tamanho'
      Size = 6
    end
    object qryProdutoscor: TStringField
      FieldName = 'cor'
      Size = 6
    end
    object qryProdutosincidencia_piscofins: TStringField
      FieldName = 'incidencia_piscofins'
      Size = 30
    end
    object qryProdutosveic_chassi: TStringField
      FieldName = 'veic_chassi'
      Size = 50
    end
    object qryProdutosveic_serie: TStringField
      FieldName = 'veic_serie'
      Size = 50
    end
    object qryProdutosveic_potencia: TStringField
      FieldName = 'veic_potencia'
      Size = 50
    end
    object qryProdutosveic_peso_liquido: TStringField
      FieldName = 'veic_peso_liquido'
      Size = 15
    end
    object qryProdutosveic_peso_bruto: TStringField
      FieldName = 'veic_peso_bruto'
      Size = 15
    end
    object qryProdutosveic_tipo_combustivel: TStringField
      FieldName = 'veic_tipo_combustivel'
    end
    object qryProdutosveic_renavam: TStringField
      FieldName = 'veic_renavam'
      Size = 50
    end
    object qryProdutosveic_ano_fabricacao: TIntegerField
      FieldName = 'veic_ano_fabricacao'
    end
    object qryProdutosveic_ano_modelo: TIntegerField
      FieldName = 'veic_ano_modelo'
    end
    object qryProdutosveic_tipo: TStringField
      FieldName = 'veic_tipo'
      Size = 50
    end
    object qryProdutosveic_tipo_pintura: TStringField
      FieldName = 'veic_tipo_pintura'
      Size = 15
    end
    object qryProdutosveic_cod_cor: TStringField
      FieldName = 'veic_cod_cor'
      Size = 15
    end
    object qryProdutosveic_cor: TStringField
      FieldName = 'veic_cor'
      Size = 30
    end
    object qryProdutosveic_vin: TStringField
      FieldName = 'veic_vin'
      Size = 10
    end
    object qryProdutosveic_numero_motor: TStringField
      FieldName = 'veic_numero_motor'
      Size = 50
    end
    object qryProdutosveic_cmkg: TStringField
      FieldName = 'veic_cmkg'
      Size = 15
    end
    object qryProdutosveic_cm3: TStringField
      FieldName = 'veic_cm3'
      Size = 15
    end
    object qryProdutosveic_distancia_eixo: TStringField
      FieldName = 'veic_distancia_eixo'
      Size = 15
    end
    object qryProdutosveic_cod_marca: TStringField
      FieldName = 'veic_cod_marca'
      Size = 15
    end
    object qryProdutosveic_especie: TStringField
      FieldName = 'veic_especie'
      Size = 50
    end
    object qryProdutosveic_condicao: TStringField
      FieldName = 'veic_condicao'
      Size = 50
    end
    object qryProdutoslote_fabricacao: TStringField
      FieldName = 'lote_fabricacao'
    end
    object qryProdutoslote_validade: TDateField
      FieldName = 'lote_validade'
    end
    object qryProdutosmargem_agregada: TFloatField
      FieldName = 'margem_agregada'
    end
    object qryProdutoscodbarra_novartis: TStringField
      FieldName = 'codbarra_novartis'
      Size = 13
    end
    object qryProdutosfarmacia_dcb: TStringField
      FieldName = 'farmacia_dcb'
    end
    object qryProdutosfarmacia_abcfarma: TStringField
      FieldName = 'farmacia_abcfarma'
      Size = 10
    end
    object qryProdutosfarmacia_apresentacao_caixa: TStringField
      FieldName = 'farmacia_apresentacao_caixa'
      Size = 10
    end
    object qryProdutosfarmacia_principioativo: TStringField
      FieldName = 'farmacia_principioativo'
      Size = 30
    end
    object qryProdutosultima_compra: TDateField
      FieldName = 'ultima_compra'
    end
    object qryProdutosfarmacia_datavigencia: TDateField
      FieldName = 'farmacia_datavigencia'
    end
    object qryProdutosfarmacia_tipo: TStringField
      FieldName = 'farmacia_tipo'
      Size = 1
    end
    object qryProdutosusa_combustivel: TStringField
      FieldName = 'usa_combustivel'
      Size = 1
    end
    object qryProdutosreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object qryProdutosperda: TFloatField
      FieldName = 'perda'
    end
    object qryProdutoscomposicao1: TStringField
      FieldName = 'composicao1'
      Size = 30
    end
    object qryProdutoscomposicao2: TStringField
      FieldName = 'composicao2'
      Size = 30
    end
    object qryProdutosiat: TStringField
      FieldName = 'iat'
      Size = 1
    end
    object qryProdutosippt: TStringField
      FieldName = 'ippt'
      Size = 1
    end
    object qryProdutossituacao_tributaria: TStringField
      FieldName = 'situacao_tributaria'
      Size = 1
    end
    object qryProdutosflag_sis: TStringField
      FieldName = 'flag_sis'
      Size = 1
    end
    object qryProdutosflag_aceito: TStringField
      FieldName = 'flag_aceito'
      Size = 3
    end
    object qryProdutosflag_est: TStringField
      FieldName = 'flag_est'
      Size = 1
    end
    object qryProdutoscsosn: TStringField
      FieldName = 'csosn'
      Size = 200
    end
    object qryProdutoscodoriginal: TStringField
      FieldName = 'codoriginal'
    end
    object qryProdutoscusto_atacado: TFloatField
      FieldName = 'custo_atacado'
    end
    object qryProdutosunidade_atacado: TStringField
      FieldName = 'unidade_atacado'
      Size = 2
    end
    object qryProdutosqtde_embalagematacado: TFloatField
      FieldName = 'qtde_embalagematacado'
    end
    object qryProdutospmargem1: TFloatField
      FieldName = 'pmargem1'
    end
    object qryProdutospmargem2: TFloatField
      FieldName = 'pmargem2'
    end
    object qryProdutospmargem3: TFloatField
      FieldName = 'pmargem3'
    end
    object qryProdutospmargem4: TFloatField
      FieldName = 'pmargem4'
    end
    object qryProdutospmargem5: TFloatField
      FieldName = 'pmargem5'
    end
    object qryProdutospmargematacado1: TFloatField
      FieldName = 'pmargematacado1'
    end
    object qryProdutospmargematacado2: TFloatField
      FieldName = 'pmargematacado2'
    end
    object qryProdutospmargematacado3: TFloatField
      FieldName = 'pmargematacado3'
    end
    object qryProdutospmargematacado4: TFloatField
      FieldName = 'pmargematacado4'
    end
    object qryProdutospmargematacado5: TFloatField
      FieldName = 'pmargematacado5'
    end
    object qryProdutospmargematacado6: TFloatField
      FieldName = 'pmargematacado6'
    end
    object qryProdutosprecoatacado1: TFloatField
      FieldName = 'precoatacado1'
    end
    object qryProdutosprecoatacado2: TFloatField
      FieldName = 'precoatacado2'
    end
    object qryProdutosprecoatacado3: TFloatField
      FieldName = 'precoatacado3'
    end
    object qryProdutosprecoatacado4: TFloatField
      FieldName = 'precoatacado4'
    end
    object qryProdutosprecoatacado5: TFloatField
      FieldName = 'precoatacado5'
    end
    object qryProdutosind_cfop: TStringField
      FieldName = 'ind_cfop'
      Size = 6
    end
    object qryProdutoscfop_desc: TStringField
      FieldName = 'cfop_desc'
      Size = 30
    end
    object qryProdutosusa_lote: TIntegerField
      FieldName = 'usa_lote'
    end
    object qryProdutosind_cfop_venda_dentro: TStringField
      FieldName = 'ind_cfop_venda_dentro'
      Size = 6
    end
    object qryProdutoscodconta: TStringField
      FieldName = 'codconta'
      Size = 6
    end
    object qryProdutosind_cfop_venda_fora: TStringField
      FieldName = 'ind_cfop_venda_fora'
      Size = 6
    end
    object qryProdutosind_cfop_devolucao_dentro: TStringField
      FieldName = 'ind_cfop_devolucao_dentro'
      Size = 6
    end
    object qryProdutosind_cfop_devolucao_fora: TStringField
      FieldName = 'ind_cfop_devolucao_fora'
      Size = 6
    end
    object qryProdutosind_cfop_garantia_dentro: TStringField
      FieldName = 'ind_cfop_garantia_dentro'
      Size = 6
    end
    object qryProdutosind_cfop_garantia_fora: TStringField
      FieldName = 'ind_cfop_garantia_fora'
      Size = 6
    end
    object qryProdutosusa_tb_pc: TStringField
      FieldName = 'usa_tb_pc'
      Size = 4
    end
    object qryProdutosativa: TStringField
      FieldName = 'ativa'
      Size = 10
    end
    object qryProdutoscest: TStringField
      FieldName = 'cest'
      Size = 7
    end
    object qryProdutosorigem: TIntegerField
      FieldName = 'origem'
    end
    object qryProdutosind_cfop_nfce: TStringField
      FieldName = 'ind_cfop_nfce'
      Size = 4
    end
    object qryProdutosid_tipo_servico: TIntegerField
      FieldName = 'id_tipo_servico'
    end
    object qryProdutosnao_movimenta_estoque: TStringField
      FieldName = 'nao_movimenta_estoque'
      Size = 1
    end
    object qryProdutospesagem_auotmatica: TStringField
      FieldName = 'pesagem_auotmatica'
      Size = 1
    end
    object qryProdutosinforma_codigo_barra_xml: TStringField
      FieldName = 'informa_codigo_barra_xml'
      Size = 1
    end
    object qryProdutoscodigo_anp: TStringField
      FieldName = 'codigo_anp'
      Size = 10
    end
    object qryProdutoscombo: TStringField
      FieldName = 'combo'
      Size = 1
    end
    object qryProdutosind_cfop_dev_compra_dentro: TStringField
      FieldName = 'ind_cfop_dev_compra_dentro'
      Size = 6
    end
    object qryProdutosind_cfop_dev_compra_fora: TStringField
      FieldName = 'ind_cfop_dev_compra_fora'
      Size = 6
    end
    object qryProdutospizza: TStringField
      FieldName = 'pizza'
      Size = 1
    end
    object qryProdutospercglnn: TFloatField
      FieldName = 'percglnn'
    end
    object qryProdutospercglgni: TFloatField
      FieldName = 'percglgni'
    end
    object qryProdutospglp: TFloatField
      FieldName = 'pglp'
    end
    object qryProdutosvpart: TFloatField
      FieldName = 'vpart'
    end
    object qryProdutosecf_icms: TStringField
      FieldName = 'ecf_icms'
      Size = 30
    end
    object qryProdutosidonline: TIntegerField
      FieldName = 'idonline'
    end
    object qryProdutosemdestaque: TStringField
      FieldName = 'emdestaque'
      Size = 1
    end
    object qryProdutosdescontomaximo: TFloatField
      FieldName = 'descontomaximo'
    end
    object qryProdutosatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryProdutoscontrolalote: TStringField
      FieldName = 'controlalote'
      Size = 1
    end
    object qryProdutoscodbarra: TStringField
      FieldName = 'codbarra'
      Size = 14
    end
    object qryProdutosunidade: TStringField
      FieldName = 'unidade'
      Size = 6
    end
    object qryProdutospiscstcsosn: TStringField
      FieldName = 'piscstcsosn'
      Size = 3
    end
    object qryProdutoscofinscstcsosn: TStringField
      FieldName = 'cofinscstcsosn'
      Size = 3
    end
    object qryProdutosicmsrepasse: TStringField
      FieldName = 'icmsrepasse'
      Size = 1
    end
    object qryProdutosretornavel: TStringField
      FieldName = 'retornavel'
      Size = 1
    end
  end
  object qryVendasItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  * '
      'FROM'
      '  commerce.vendasitenstemp')
    Left = 768
    Top = 96
    object qryVendasItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object qryVendasItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object qryVendasItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object qryVendasItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object qryVendasItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object qryVendasItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object qryVendasItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object qryVendasItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object qryVendasItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object qryVendasItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object qryVendasItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object qryVendasItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object qryVendasItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object qryVendasItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object qryVendasItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object qryVendasItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object qryVendasItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object qryVendasItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object qryVendasItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object qryVendasItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object qryVendasItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object qryVendasItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object qryVendasItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object qryVendasItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object qryVendasItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object qryVendasItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object qryVendasItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object qryVendasItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object qryVendasItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object qryVendasItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object qryVendasItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object qryVendasItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object qryVendasItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object qryVendasItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object qryVendasItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object qryVendasItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryVendasItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryVendasItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryVendasItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryVendasItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryVendasItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
    object qryVendasItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object qryVendasItensAliquota_STEfetivo: TFloatField
      FieldName = 'Aliquota_STEfetivo'
    end
    object qryVendasItensnitemped: TStringField
      FieldName = 'nitemped'
      Size = 50
    end
    object qryVendasItensxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryVendasItensdet_prod_vdesc: TFloatField
      FieldName = 'det_prod_vdesc'
    end
    object qryVendasItensdet_prod_voutro: TFloatField
      FieldName = 'det_prod_voutro'
    end
    object qryVendasItensdet_prod_vfrete: TFloatField
      FieldName = 'det_prod_vfrete'
    end
    object qryVendasItensdet_prod_vseg: TFloatField
      FieldName = 'det_prod_vseg'
    end
    object qryVendasItensdet_prod_ncm: TStringField
      FieldName = 'det_prod_ncm'
    end
  end
end
