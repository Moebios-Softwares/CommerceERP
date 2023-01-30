object frmCadastroProdutos: TfrmCadastroProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 398
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 783
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
      Caption = 'Produtos'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 375
    Width = 783
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 132
    Width = 783
    Height = 243
    Align = alClient
    TabOrder = 2
    AutoSize = True
    object edtCodigo: TcxDBTextEdit
      Left = 13
      Top = 36
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtCodigoExit
      Width = 60
    end
    object edtProduto: TcxDBTextEdit
      Left = 81
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'produto'
      DataBinding.DataSource = dsProdutos
      Properties.OnChange = edtProdutoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edtProdutoExit
      Height = 25
      Width = 577
    end
    object edtDataCadastro: TcxDBDateEdit
      Left = 666
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'data_cadastro'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      OnExit = edtDataCadastroExit
      Height = 25
      Width = 104
    end
    object edtPrecoCusto: TcxDBCurrencyEdit
      Left = 391
      Top = 92
      DataBinding.DataField = 'precocusto'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 2
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object edtEstoqueMinimo: TcxDBCurrencyEdit
      Left = 13
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'estoqueminimo'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 25
      Width = 121
    end
    object EstoqueAtual: TcxDBCurrencyEdit
      Left = 142
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'estoque'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 25
      Width = 121
    end
    object edtPrecoVenda: TcxDBCurrencyEdit
      Left = 520
      Top = 92
      AutoSize = False
      DataBinding.DataField = 'precovenda'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 2
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnChange = edtPrecoVendaPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 25
      Width = 121
    end
    object edtLucro: TcxCurrencyEdit
      Left = 649
      Top = 92
      AutoSize = False
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taCenter
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.00%;-,0.00%'
      Properties.UseLeftAlignmentOnEditing = False
      Properties.UseThousandSeparator = True
      Properties.OnChange = edtLucroPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 25
      Width = 121
    end
    object edtTipoProduto: TcxDBComboBox
      Left = 13
      Top = 92
      AutoSize = False
      DataBinding.DataField = 'tipo'
      DataBinding.DataSource = dsProdutos
      Properties.Items.Strings = (
        '00 - Mercadoria para Revenda'
        '01 - Materia-Prima'
        '02 - Embalagem'
        '03 - Produto em Processo'
        '04 - Produto Acabado'
        '05 - Subproduto'
        '06 - Produto Intermediario'
        '07 - Material de Uso e Consumo'
        '08 - Ativo Imobilizado'
        '10 - Outros Insumos'
        '99 - Outras')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Height = 25
      Width = 370
    end
    object edtNCM: TcxDBLookupComboBox
      Left = 271
      Top = 148
      DataBinding.DataField = 'ncm'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.KeyFieldNames = 'ncm'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsNCM
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 313
    end
    object edtUnidade: TcxDBLookupComboBox
      Left = 592
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'unidade'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'unidade'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsUnidades
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Height = 25
      Width = 178
    end
    object edtCST: TcxDBLookupComboBox
      Left = 13
      Top = 204
      AutoSize = False
      DataBinding.DataField = 'cst'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'cod'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCST
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Height = 25
      Width = 178
    end
    object edtCSOSN: TcxDBLookupComboBox
      Left = 199
      Top = 204
      AutoSize = False
      DataBinding.DataField = 'csosn'
      DataBinding.DataSource = dsProdutos
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'cod'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCSOSN
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Height = 25
      Width = 571
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtCodigo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Produto'
      CaptionOptions.Layout = clTop
      Control = edtProduto
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Cadastro'
      CaptionOptions.Layout = clTop
      Control = edtDataCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Pre'#231'o de Custo'
      CaptionOptions.Layout = clTop
      Control = edtPrecoCusto
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Estoque M'#237'nimo'
      CaptionOptions.Layout = clTop
      Control = edtEstoqueMinimo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Estoque Atual'
      CaptionOptions.Layout = clTop
      Control = EstoqueAtual
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Pre'#231'o de Venda'
      CaptionOptions.Layout = clTop
      Control = edtPrecoVenda
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Lucro'
      CaptionOptions.Layout = clTop
      Control = edtLucro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo de Produto'
      CaptionOptions.Layout = clTop
      Control = edtTipoProduto
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'NCM'
      CaptionOptions.Layout = clTop
      Control = edtNCM
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Unidade'
      CaptionOptions.Layout = clTop
      Control = edtUnidade
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CST'
      CaptionOptions.Layout = clTop
      Control = edtCST
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CSOSN'
      CaptionOptions.Layout = clTop
      Control = edtCSOSN
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 3
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
      Caption = 'Cadastro'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 668
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSalvar'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'btnSair'
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
    object btnSalvar: TdxBarLargeButton
      Caption = 'Salvar'
      Category = 0
      Hint = 'Salvar'
      Visible = ivAlways
      OnClick = btnSalvarClick
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
        464646463B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E426C75657B66696C
        6C3A233131373744373B7D262331333B262331303B2623393B2E7374307B6F70
        61636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BB
        D0BED0B95F32223E0D0A09093C672069643D2253617665223E0D0A0909093C70
        6F6C79676F6E20636C6173733D22426C75652220706F696E74733D2233302C32
        20322C3220322C333020322C333020362C333020362C32302032362C32302032
        362C33302033302C3330202623393B2623393B222F3E0D0A0909093C72656374
        20783D22362220793D22322220636C6173733D22576869746522207769647468
        3D22323022206865696768743D223134222F3E0D0A0909093C7061746820636C
        6173733D22426C61636B2220643D224D362C323076313068323056323048367A
        204D32342C3238682D34762D3668345632387A222F3E0D0A0909093C6720636C
        6173733D22737430223E0D0A090909093C7265637420783D22382220793D2234
        2220636C6173733D22426C61636B222077696474683D22313622206865696768
        743D2232222F3E0D0A090909093C7265637420783D22382220793D2238222063
        6C6173733D22426C61636B222077696474683D22313222206865696768743D22
        32222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F
        7376673E0D0A}
      Width = 100
    end
    object btnExcluir: TdxBarLargeButton
      Caption = 'Excluir'
      Category = 0
      Enabled = False
      Hint = 'Excluir'
      Visible = ivAlways
      OnClick = btnExcluirClick
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
        303B3C7374796C6520747970653D22746578742F637373223E2E5265647B6669
        6C6C3A234431314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173
        733D225265642220643D224D31382E382C31366C382D3863302E342D302E342C
        302E342D312C302D312E346C2D312E342D312E34632D302E342D302E342D312D
        302E342D312E342C306C2D382C386C2D382D38632D302E342D302E342D312D30
        2E342D312E342C304C352E322C362E3620202623393B43342E382C372C342E38
        2C372E362C352E322C386C382C386C2D382C38632D302E342C302E342D302E34
        2C312C302C312E346C312E342C312E3463302E342C302E342C312C302E342C31
        2E342C306C382D386C382C3863302E342C302E342C312C302E342C312E342C30
        6C312E342D312E3420202623393B63302E342D302E342C302E342D312C302D31
        2E344C31382E382C31367A222F3E0D0A3C2F7376673E0D0A}
      Width = 100
    end
    object btnSair: TdxBarLargeButton
      Caption = 'Voltar'
      Category = 0
      Hint = 'Voltar'
      Visible = ivAlways
      OnClick = btnSairClick
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
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
        31314331433B7D3C2F7374796C653E0D0A3C672069643D2245786974223E0D0A
        09093C706F6C79676F6E20636C6173733D225265642220706F696E74733D2231
        362C31302032322C31362031362C32322031362C313820322C313820322C3134
        2031362C3134202623393B222F3E0D0A09093C706F6C79676F6E20636C617373
        3D22426C61636B2220706F696E74733D22382C3220382C31322031302C313220
        31302C342032382C342032382C32382031302C32382031302C323020382C3230
        20382C33302033302C33302033302C32202623393B222F3E0D0A093C2F673E0D
        0A3C2F7376673E0D0A}
      Width = 100
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 536
    Top = 8
  end
  object dsProdutos: TDataSource
    DataSet = tblProdutos
    Left = 376
    Top = 8
  end
  object tblProdutos: TUniTable
    TableName = 'commerce.produtos'
    Connection = DM.Conexao
    LockMode = lmNone
    Left = 440
    Top = 8
    object tblProdutoscodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblProdutosproduto: TStringField
      FieldName = 'produto'
      Size = 400
    end
    object tblProdutosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object tblProdutoscodgrupo: TStringField
      FieldName = 'codgrupo'
      Size = 6
    end
    object tblProdutoscodsubgrupo: TStringField
      FieldName = 'codsubgrupo'
      Size = 6
    end
    object tblProdutoscodfornecedor: TStringField
      FieldName = 'codfornecedor'
      Size = 6
    end
    object tblProdutoscodmarca: TStringField
      FieldName = 'codmarca'
      Size = 6
    end
    object tblProdutosdata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object tblProdutosnotafiscal: TStringField
      FieldName = 'notafiscal'
      Size = 7
    end
    object tblProdutosprecocusto: TFloatField
      FieldName = 'precocusto'
    end
    object tblProdutosprecovenda: TFloatField
      FieldName = 'precovenda'
    end
    object tblProdutosdata_ultimavenda: TDateField
      FieldName = 'data_ultimavenda'
    end
    object tblProdutosestoque: TFloatField
      FieldName = 'estoque'
    end
    object tblProdutosestoqueminimo: TFloatField
      FieldName = 'estoqueminimo'
    end
    object tblProdutoscodaliquota: TStringField
      FieldName = 'codaliquota'
      Size = 5
    end
    object tblProdutoslocalicazao: TStringField
      FieldName = 'localicazao'
      Size = 50
    end
    object tblProdutospeso: TFloatField
      FieldName = 'peso'
    end
    object tblProdutosvalidade: TStringField
      FieldName = 'validade'
    end
    object tblProdutoscomissao: TFloatField
      FieldName = 'comissao'
    end
    object tblProdutosusa_balanca: TIntegerField
      FieldName = 'usa_balanca'
    end
    object tblProdutosusa_serial: TIntegerField
      FieldName = 'usa_serial'
    end
    object tblProdutosusa_grade: TIntegerField
      FieldName = 'usa_grade'
    end
    object tblProdutoscodreceita: TStringField
      FieldName = 'codreceita'
      Size = 6
    end
    object tblProdutosfoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object tblProdutosdata_ultimacompra_anterior: TDateField
      FieldName = 'data_ultimacompra_anterior'
    end
    object tblProdutosnotafiscal_anterior: TStringField
      FieldName = 'notafiscal_anterior'
      Size = 6
    end
    object tblProdutoscodfornecedor_anterior: TStringField
      FieldName = 'codfornecedor_anterior'
      Size = 6
    end
    object tblProdutosprecocusto_anterior: TFloatField
      FieldName = 'precocusto_anterior'
    end
    object tblProdutosprecovenda_anterior: TFloatField
      FieldName = 'precovenda_anterior'
    end
    object tblProdutoscustomedio: TFloatField
      FieldName = 'customedio'
    end
    object tblProdutosauto_aplicacao: TStringField
      FieldName = 'auto_aplicacao'
      Size = 60
    end
    object tblProdutosauto_complemento: TStringField
      FieldName = 'auto_complemento'
      Size = 60
    end
    object tblProdutosdata_remarcacao_custo: TDateField
      FieldName = 'data_remarcacao_custo'
    end
    object tblProdutosdata_remarcacao_venda: TDateField
      FieldName = 'data_remarcacao_venda'
    end
    object tblProdutospreco_promocao: TFloatField
      FieldName = 'preco_promocao'
    end
    object tblProdutosdata_promocao: TDateField
      FieldName = 'data_promocao'
    end
    object tblProdutosfim_promocao: TDateField
      FieldName = 'fim_promocao'
    end
    object tblProdutoscst: TStringField
      FieldName = 'cst'
      Size = 200
    end
    object tblProdutosclassificacao_fiscal: TStringField
      FieldName = 'classificacao_fiscal'
    end
    object tblProdutosnbm: TStringField
      FieldName = 'nbm'
    end
    object tblProdutosncm: TStringField
      FieldName = 'ncm'
    end
    object tblProdutosaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object tblProdutosipi: TFloatField
      FieldName = 'ipi'
    end
    object tblProdutosreducao: TFloatField
      FieldName = 'reducao'
    end
    object tblProdutosqtde_embalagem: TFloatField
      FieldName = 'qtde_embalagem'
    end
    object tblProdutostipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object tblProdutospeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object tblProdutosfarmacia_controlado: TStringField
      FieldName = 'farmacia_controlado'
      Size = 1
    end
    object tblProdutosfarmacia_apresentacao: TIntegerField
      FieldName = 'farmacia_apresentacao'
    end
    object tblProdutosfarmacia_registro_medicamento: TStringField
      FieldName = 'farmacia_registro_medicamento'
    end
    object tblProdutosfarmacia_pmc: TFloatField
      FieldName = 'farmacia_pmc'
    end
    object tblProdutosultima_alteracao: TDateField
      FieldName = 'ultima_alteracao'
    end
    object tblProdutosultima_carga: TDateField
      FieldName = 'ultima_carga'
    end
    object tblProdutosdata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object tblProdutoscusto_inventario: TFloatField
      FieldName = 'custo_inventario'
    end
    object tblProdutosestoque_inventario: TFloatField
      FieldName = 'estoque_inventario'
    end
    object tblProdutosestoque_anterior: TFloatField
      FieldName = 'estoque_anterior'
    end
    object tblProdutosprecovenda_novo: TFloatField
      FieldName = 'precovenda_novo'
    end
    object tblProdutosusa_rentabilidade: TIntegerField
      FieldName = 'usa_rentabilidade'
    end
    object tblProdutosquantidade_minima_fab: TFloatField
      FieldName = 'quantidade_minima_fab'
    end
    object tblProdutosapresentacao: TStringField
      FieldName = 'apresentacao'
      Size = 60
    end
    object tblProdutossituacao: TIntegerField
      FieldName = 'situacao'
    end
    object tblProdutosprecovenda1: TFloatField
      FieldName = 'precovenda1'
    end
    object tblProdutosprecovenda2: TFloatField
      FieldName = 'precovenda2'
    end
    object tblProdutosprecovenda3: TFloatField
      FieldName = 'precovenda3'
    end
    object tblProdutosprecovenda4: TFloatField
      FieldName = 'precovenda4'
    end
    object tblProdutosprecovenda5: TFloatField
      FieldName = 'precovenda5'
    end
    object tblProdutosdesconto_precovenda: TFloatField
      FieldName = 'desconto_precovenda'
    end
    object tblProdutosdata_inventario_atual: TDateField
      FieldName = 'data_inventario_atual'
    end
    object tblProdutoscusto_inventario_atual: TFloatField
      FieldName = 'custo_inventario_atual'
    end
    object tblProdutosestoque_inventario_atual: TFloatField
      FieldName = 'estoque_inventario_atual'
    end
    object tblProdutosmargem_minima: TFloatField
      FieldName = 'margem_minima'
    end
    object tblProdutospiscofins: TStringField
      FieldName = 'piscofins'
      Size = 1
    end
    object tblProdutosreferencia_fornecedor: TStringField
      FieldName = 'referencia_fornecedor'
      Size = 30
    end
    object tblProdutoscomissao1: TFloatField
      FieldName = 'comissao1'
    end
    object tblProdutosmargem_desconto: TFloatField
      FieldName = 'margem_desconto'
    end
    object tblProdutostamanho: TStringField
      FieldName = 'tamanho'
      Size = 6
    end
    object tblProdutoscor: TStringField
      FieldName = 'cor'
      Size = 6
    end
    object tblProdutosincidencia_piscofins: TStringField
      FieldName = 'incidencia_piscofins'
      Size = 30
    end
    object tblProdutosveic_chassi: TStringField
      FieldName = 'veic_chassi'
      Size = 50
    end
    object tblProdutosveic_serie: TStringField
      FieldName = 'veic_serie'
      Size = 50
    end
    object tblProdutosveic_potencia: TStringField
      FieldName = 'veic_potencia'
      Size = 50
    end
    object tblProdutosveic_peso_liquido: TStringField
      FieldName = 'veic_peso_liquido'
      Size = 15
    end
    object tblProdutosveic_peso_bruto: TStringField
      FieldName = 'veic_peso_bruto'
      Size = 15
    end
    object tblProdutosveic_tipo_combustivel: TStringField
      FieldName = 'veic_tipo_combustivel'
    end
    object tblProdutosveic_renavam: TStringField
      FieldName = 'veic_renavam'
      Size = 50
    end
    object tblProdutosveic_ano_fabricacao: TIntegerField
      FieldName = 'veic_ano_fabricacao'
    end
    object tblProdutosveic_ano_modelo: TIntegerField
      FieldName = 'veic_ano_modelo'
    end
    object tblProdutosveic_tipo: TStringField
      FieldName = 'veic_tipo'
      Size = 50
    end
    object tblProdutosveic_tipo_pintura: TStringField
      FieldName = 'veic_tipo_pintura'
      Size = 15
    end
    object tblProdutosveic_cod_cor: TStringField
      FieldName = 'veic_cod_cor'
      Size = 15
    end
    object tblProdutosveic_cor: TStringField
      FieldName = 'veic_cor'
      Size = 30
    end
    object tblProdutosveic_vin: TStringField
      FieldName = 'veic_vin'
      Size = 10
    end
    object tblProdutosveic_numero_motor: TStringField
      FieldName = 'veic_numero_motor'
      Size = 50
    end
    object tblProdutosveic_cmkg: TStringField
      FieldName = 'veic_cmkg'
      Size = 15
    end
    object tblProdutosveic_cm3: TStringField
      FieldName = 'veic_cm3'
      Size = 15
    end
    object tblProdutosveic_distancia_eixo: TStringField
      FieldName = 'veic_distancia_eixo'
      Size = 15
    end
    object tblProdutosveic_cod_marca: TStringField
      FieldName = 'veic_cod_marca'
      Size = 15
    end
    object tblProdutosveic_especie: TStringField
      FieldName = 'veic_especie'
      Size = 50
    end
    object tblProdutosveic_condicao: TStringField
      FieldName = 'veic_condicao'
      Size = 50
    end
    object tblProdutoslote_fabricacao: TStringField
      FieldName = 'lote_fabricacao'
    end
    object tblProdutoslote_validade: TDateField
      FieldName = 'lote_validade'
    end
    object tblProdutosmargem_agregada: TFloatField
      FieldName = 'margem_agregada'
    end
    object tblProdutoscodbarra_novartis: TStringField
      FieldName = 'codbarra_novartis'
      Size = 13
    end
    object tblProdutosfarmacia_dcb: TStringField
      FieldName = 'farmacia_dcb'
    end
    object tblProdutosfarmacia_abcfarma: TStringField
      FieldName = 'farmacia_abcfarma'
      Size = 10
    end
    object tblProdutosfarmacia_apresentacao_caixa: TStringField
      FieldName = 'farmacia_apresentacao_caixa'
      Size = 10
    end
    object tblProdutosfarmacia_principioativo: TStringField
      FieldName = 'farmacia_principioativo'
      Size = 30
    end
    object tblProdutosultima_compra: TDateField
      FieldName = 'ultima_compra'
    end
    object tblProdutosfarmacia_datavigencia: TDateField
      FieldName = 'farmacia_datavigencia'
    end
    object tblProdutosfarmacia_tipo: TStringField
      FieldName = 'farmacia_tipo'
      Size = 1
    end
    object tblProdutosusa_combustivel: TStringField
      FieldName = 'usa_combustivel'
      Size = 1
    end
    object tblProdutosreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object tblProdutosperda: TFloatField
      FieldName = 'perda'
    end
    object tblProdutoscomposicao1: TStringField
      FieldName = 'composicao1'
      Size = 30
    end
    object tblProdutoscomposicao2: TStringField
      FieldName = 'composicao2'
      Size = 30
    end
    object tblProdutosiat: TStringField
      FieldName = 'iat'
      Size = 1
    end
    object tblProdutosippt: TStringField
      FieldName = 'ippt'
      Size = 1
    end
    object tblProdutossituacao_tributaria: TStringField
      FieldName = 'situacao_tributaria'
      Size = 1
    end
    object tblProdutosflag_sis: TStringField
      FieldName = 'flag_sis'
      Size = 1
    end
    object tblProdutosflag_aceito: TStringField
      FieldName = 'flag_aceito'
      Size = 3
    end
    object tblProdutosflag_est: TStringField
      FieldName = 'flag_est'
      Size = 1
    end
    object tblProdutoscsosn: TStringField
      FieldName = 'csosn'
      Size = 200
    end
    object tblProdutoscodoriginal: TStringField
      FieldName = 'codoriginal'
    end
    object tblProdutoscusto_atacado: TFloatField
      FieldName = 'custo_atacado'
    end
    object tblProdutosunidade_atacado: TStringField
      FieldName = 'unidade_atacado'
      Size = 2
    end
    object tblProdutosqtde_embalagematacado: TFloatField
      FieldName = 'qtde_embalagematacado'
    end
    object tblProdutospmargem1: TFloatField
      FieldName = 'pmargem1'
    end
    object tblProdutospmargem2: TFloatField
      FieldName = 'pmargem2'
    end
    object tblProdutospmargem3: TFloatField
      FieldName = 'pmargem3'
    end
    object tblProdutospmargem4: TFloatField
      FieldName = 'pmargem4'
    end
    object tblProdutospmargem5: TFloatField
      FieldName = 'pmargem5'
    end
    object tblProdutospmargematacado1: TFloatField
      FieldName = 'pmargematacado1'
    end
    object tblProdutospmargematacado2: TFloatField
      FieldName = 'pmargematacado2'
    end
    object tblProdutospmargematacado3: TFloatField
      FieldName = 'pmargematacado3'
    end
    object tblProdutospmargematacado4: TFloatField
      FieldName = 'pmargematacado4'
    end
    object tblProdutospmargematacado5: TFloatField
      FieldName = 'pmargematacado5'
    end
    object tblProdutospmargematacado6: TFloatField
      FieldName = 'pmargematacado6'
    end
    object tblProdutosprecoatacado1: TFloatField
      FieldName = 'precoatacado1'
    end
    object tblProdutosprecoatacado2: TFloatField
      FieldName = 'precoatacado2'
    end
    object tblProdutosprecoatacado3: TFloatField
      FieldName = 'precoatacado3'
    end
    object tblProdutosprecoatacado4: TFloatField
      FieldName = 'precoatacado4'
    end
    object tblProdutosprecoatacado5: TFloatField
      FieldName = 'precoatacado5'
    end
    object tblProdutosind_cfop: TStringField
      FieldName = 'ind_cfop'
      Size = 6
    end
    object tblProdutoscfop_desc: TStringField
      FieldName = 'cfop_desc'
      Size = 30
    end
    object tblProdutosusa_lote: TIntegerField
      FieldName = 'usa_lote'
    end
    object tblProdutosind_cfop_venda_dentro: TStringField
      FieldName = 'ind_cfop_venda_dentro'
      Size = 6
    end
    object tblProdutoscodconta: TStringField
      FieldName = 'codconta'
      Size = 6
    end
    object tblProdutosind_cfop_venda_fora: TStringField
      FieldName = 'ind_cfop_venda_fora'
      Size = 6
    end
    object tblProdutosind_cfop_devolucao_dentro: TStringField
      FieldName = 'ind_cfop_devolucao_dentro'
      Size = 6
    end
    object tblProdutosind_cfop_devolucao_fora: TStringField
      FieldName = 'ind_cfop_devolucao_fora'
      Size = 6
    end
    object tblProdutosind_cfop_garantia_dentro: TStringField
      FieldName = 'ind_cfop_garantia_dentro'
      Size = 6
    end
    object tblProdutosind_cfop_garantia_fora: TStringField
      FieldName = 'ind_cfop_garantia_fora'
      Size = 6
    end
    object tblProdutosusa_tb_pc: TStringField
      FieldName = 'usa_tb_pc'
      Size = 4
    end
    object tblProdutosativa: TStringField
      FieldName = 'ativa'
      Size = 10
    end
    object tblProdutoscest: TStringField
      FieldName = 'cest'
      Size = 7
    end
    object tblProdutosorigem: TIntegerField
      FieldName = 'origem'
    end
    object tblProdutosind_cfop_nfce: TStringField
      FieldName = 'ind_cfop_nfce'
      Size = 4
    end
    object tblProdutosid_tipo_servico: TIntegerField
      FieldName = 'id_tipo_servico'
    end
    object tblProdutosnao_movimenta_estoque: TStringField
      FieldName = 'nao_movimenta_estoque'
      Size = 1
    end
    object tblProdutospesagem_auotmatica: TStringField
      FieldName = 'pesagem_auotmatica'
      Size = 1
    end
    object tblProdutosinforma_codigo_barra_xml: TStringField
      FieldName = 'informa_codigo_barra_xml'
      Size = 1
    end
    object tblProdutoscodigo_anp: TStringField
      FieldName = 'codigo_anp'
      Size = 10
    end
    object tblProdutoscombo: TStringField
      FieldName = 'combo'
      Size = 1
    end
    object tblProdutosind_cfop_dev_compra_dentro: TStringField
      FieldName = 'ind_cfop_dev_compra_dentro'
      Size = 6
    end
    object tblProdutosind_cfop_dev_compra_fora: TStringField
      FieldName = 'ind_cfop_dev_compra_fora'
      Size = 6
    end
    object tblProdutospizza: TStringField
      FieldName = 'pizza'
      Size = 1
    end
    object tblProdutospercglnn: TFloatField
      FieldName = 'percglnn'
    end
    object tblProdutospercglgni: TFloatField
      FieldName = 'percglgni'
    end
    object tblProdutospglp: TFloatField
      FieldName = 'pglp'
    end
    object tblProdutosvpart: TFloatField
      FieldName = 'vpart'
    end
    object tblProdutosecf_icms: TStringField
      FieldName = 'ecf_icms'
      Size = 30
    end
    object tblProdutosidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblProdutosemdestaque: TStringField
      FieldName = 'emdestaque'
      Size = 1
    end
    object tblProdutosdescontomaximo: TFloatField
      FieldName = 'descontomaximo'
    end
    object tblProdutosatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblProdutoscontrolalote: TStringField
      FieldName = 'controlalote'
      Size = 1
    end
    object tblProdutoscodbarra: TStringField
      FieldName = 'codbarra'
      Size = 14
    end
    object tblProdutosunidade: TStringField
      FieldName = 'unidade'
      Size = 6
    end
    object tblProdutospiscstcsosn: TStringField
      FieldName = 'piscstcsosn'
      Size = 3
    end
    object tblProdutoscofinscstcsosn: TStringField
      FieldName = 'cofinscstcsosn'
      Size = 3
    end
    object tblProdutosicmsrepasse: TStringField
      FieldName = 'icmsrepasse'
      Size = 1
    end
    object tblProdutosretornavel: TStringField
      FieldName = 'retornavel'
      Size = 1
    end
  end
  object qryCFOP: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM'
      '  commerce.cfop'
      'ORDER BY'
      '  cfop')
    Left = 440
    Top = 52
    object qryCFOPcfop: TIntegerField
      FieldName = 'cfop'
    end
    object qryCFOPtipo: TStringField
      FieldName = 'tipo'
      Size = 800
    end
    object qryCFOPdescricao: TStringField
      FieldName = 'descricao'
      Size = 800
    end
    object qryCFOPaplicacao: TStringField
      FieldName = 'aplicacao'
      Size = 800
    end
    object qryCFOPinivig: TDateField
      FieldName = 'inivig'
    end
    object qryCFOPfimvig: TDateField
      FieldName = 'fimvig'
    end
    object qryCFOPindnfe: TIntegerField
      FieldName = 'indnfe'
    end
    object qryCFOPindcomunica: TIntegerField
      FieldName = 'indcomunica'
    end
    object qryCFOPindtransp: TIntegerField
      FieldName = 'indtransp'
    end
    object qryCFOPinddevol: TIntegerField
      FieldName = 'inddevol'
    end
    object qryCFOPindretor: TIntegerField
      FieldName = 'indretor'
    end
    object qryCFOPindanula: TIntegerField
      FieldName = 'indanula'
    end
    object qryCFOPindremes: TIntegerField
      FieldName = 'indremes'
    end
    object qryCFOPindcomb: TIntegerField
      FieldName = 'indcomb'
    end
    object qryCFOPindnfce: TIntegerField
      FieldName = 'indnfce'
    end
    object qryCFOPindcte: TIntegerField
      FieldName = 'indcte'
    end
    object qryCFOPindcteos: TIntegerField
      FieldName = 'indcteos'
    end
  end
  object dsCFOP: TDataSource
    DataSet = qryCFOP
    Left = 376
    Top = 52
  end
  object qryUnidades: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.unidade'
      'ORDER BY'
      '  descricao')
    Left = 496
    Top = 8
    object qryUnidadesunidade: TStringField
      FieldName = 'unidade'
      Size = 30
    end
    object qryUnidadesdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
  object dsUnidades: TDataSource
    DataSet = qryUnidades
    Left = 496
    Top = 60
  end
  object dsCST: TDataSource
    DataSet = qryCST
    Left = 384
    Top = 60
  end
  object qryCST: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM'
      '  commerce.cst'
      'ORDER BY'
      '  cod::integer')
    Left = 448
    Top = 60
    object qryCSTcod: TStringField
      FieldName = 'cod'
      Size = 2
    end
    object qryCSTdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
  object dsCSOSN: TDataSource
    DataSet = qryCSOSN
    Left = 392
    Top = 68
  end
  object qryCSOSN: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM'
      '  commerce.csosn'
      'ORDER BY'
      '  cod::integer')
    Left = 456
    Top = 68
    object qryCSOSNcod: TIntegerField
      FieldName = 'cod'
    end
    object qryCSOSNdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
  object qryNCM: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM'
      '  commerce.ncm'
      'ORDER BY'
      '  ncm::integer')
    Left = 464
    Top = 76
    object qryNCMncm: TStringField
      FieldName = 'ncm'
    end
    object qryNCMcategoria: TStringField
      FieldName = 'categoria'
      Size = 500
    end
    object qryNCMdescricao: TStringField
      FieldName = 'descricao'
      Size = 500
    end
    object qryNCMipi: TStringField
      FieldName = 'ipi'
    end
    object qryNCMdtinicio: TDateField
      FieldName = 'dtinicio'
    end
    object qryNCMdtfim: TDateField
      FieldName = 'dtfim'
    end
    object qryNCMutrib: TStringField
      FieldName = 'utrib'
    end
    object qryNCMdescricaoutrib: TStringField
      FieldName = 'descricaoutrib'
      Size = 200
    end
    object qryNCMgtinprod: TDateField
      FieldName = 'gtinprod'
    end
    object qryNCMgtinhomologacao: TDateField
      FieldName = 'gtinhomologacao'
    end
    object qryNCMobs: TStringField
      FieldName = 'obs'
      Size = 500
    end
    object qryNCMversaotabela: TIntegerField
      FieldName = 'versaotabela'
    end
  end
  object dsNCM: TDataSource
    DataSet = qryNCM
    Left = 400
    Top = 76
  end
end
