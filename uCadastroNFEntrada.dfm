object frmCadastroNFEntrada: TfrmCadastroNFEntrada
  Left = 0
  Top = 0
  Caption = 'Adicionar NF de Entrada'
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 132
    Width = 1350
    Height = 574
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object edtCodigo: TcxDBTextEdit
      Left = 13
      Top = 36
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = dsNFCompra
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtCodigoExit
      Width = 121
    end
    object edtNrNFe: TcxDBTextEdit
      Left = 1016
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'ide_nnf'
      DataBinding.DataSource = dsNFCompra
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 2
      Height = 25
      Width = 160
    end
    object edtModeloNFe: TcxDBTextEdit
      Left = 1184
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'ide_mod'
      DataBinding.DataSource = dsNFCompra
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 3
      Height = 25
      Width = 153
    end
    object edtDataEmissao: TcxDBDateEdit
      Left = 1179
      Top = 92
      AutoSize = False
      DataBinding.DataField = 'ide_dhemi'
      DataBinding.DataSource = dsNFCompra
      Properties.Alignment.Horz = taCenter
      Properties.AssignedValues.DisplayFormat = True
      Properties.ShowTime = False
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 6
      Height = 25
      Width = 158
    end
    object edtFrete: TcxDBCalcEdit
      Left = 13
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'total_icmstot_vfrete'
      DataBinding.DataSource = dsNFCompra
      Properties.DisplayFormat = 'R$ #,##0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 7
      Height = 25
      Width = 214
    end
    object edtSeguro: TcxDBCalcEdit
      Left = 235
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'total_icmstot_vseg'
      DataBinding.DataSource = dsNFCompra
      Properties.DisplayFormat = 'R$ #,##0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 8
      Height = 25
      Width = 214
    end
    object edtOutros: TcxDBCalcEdit
      Left = 457
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'total_icmstot_voutro'
      DataBinding.DataSource = dsNFCompra
      Properties.DisplayFormat = 'R$ #,##0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 9
      Height = 25
      Width = 214
    end
    object edtDesconto: TcxDBCalcEdit
      Left = 679
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'total_icmstot_vdesc'
      DataBinding.DataSource = dsNFCompra
      Properties.DisplayFormat = 'R$ #,##0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 10
      Height = 25
      Width = 214
    end
    object edtProdutos: TcxDBCalcEdit
      Left = 901
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'total_icmstot_vprod'
      DataBinding.DataSource = dsNFCompra
      Properties.DisplayFormat = 'R$ #,##0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 11
      Height = 25
      Width = 214
    end
    object edtTotal: TcxDBCalcEdit
      Left = 1123
      Top = 148
      AutoSize = False
      DataBinding.DataField = 'total_icmstot_vnf'
      DataBinding.DataSource = dsNFCompra
      Properties.DisplayFormat = 'R$ #,##0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 12
      Height = 25
      Width = 214
    end
    object edtChave: TcxDBTextEdit
      Left = 142
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'infnfe_chave'
      DataBinding.DataSource = dsNFCompra
      Style.HotTrack = False
      TabOrder = 1
      Height = 25
      Width = 866
    end
    object grdProdutos: TcxGrid
      Left = 13
      Top = 181
      Width = 1324
      Height = 380
      TabOrder = 13
      LookAndFeel.NativeStyle = False
      object grdProdutosView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = 'Pesquise por aqui...'
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdProdutosViewCellDblClick
        OnCustomDrawCell = grdProdutosViewCustomDrawCell
        DataController.DataSource = dsItens
        DataController.KeyFieldNames = 'codigo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'Sem produtos cadastrados'
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdProdutosViewdet_nitem: TcxGridDBColumn
          Caption = 'N'#186' Item'
          DataBinding.FieldName = 'det_nitem'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 57
        end
        object grdProdutosViewdet_prod_cprod: TcxGridDBColumn
          Caption = 'C'#243'digo do Produto'
          DataBinding.FieldName = 'det_prod_cprod'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 133
        end
        object grdProdutosViewdet_prod_xprod: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'det_prod_xprod'
          Width = 452
        end
        object grdProdutosViewdet_prod_cfop: TcxGridDBColumn
          Caption = 'CFOP'
          DataBinding.FieldName = 'det_prod_cfop'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 59
        end
        object grdProdutosViewdet_prod_ncm: TcxGridDBColumn
          Caption = 'NCM'
          DataBinding.FieldName = 'det_prod_ncm'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.EditMask = '0000.00.00'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 201
        end
        object grdProdutosViewdet_prod_ucom: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'det_prod_ucom'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 112
        end
        object grdProdutosViewdet_prod_qcom: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'det_prod_qcom'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 88
        end
        object grdProdutosViewdet_prod_vuncom: TcxGridDBColumn
          Caption = 'Valor Unit'#225'rio'
          DataBinding.FieldName = 'det_prod_vuncom'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 108
        end
        object grdProdutosViewdet_prod_vprod: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'det_prod_vprod'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 112
        end
        object grdProdutosViewinfnfe_chave: TcxGridDBColumn
          DataBinding.FieldName = 'infnfe_chave'
          Visible = False
        end
      end
      object grdProdutosLevel1: TcxGridLevel
        GridView = grdProdutosView
      end
    end
    object edtFornecedor: TcxDBTextEdit
      Left = 13
      Top = 92
      DataBinding.DataField = 'emit_xnome'
      DataBinding.DataSource = dsNFCompra
      Style.HotTrack = False
      TabOrder = 4
      Width = 867
    end
    object edtCNPJ: TcxDBMaskEdit
      Left = 888
      Top = 92
      DataBinding.DataField = 'emit_cnpj'
      DataBinding.DataSource = dsNFCompra
      Properties.Alignment.Horz = taCenter
      Properties.EditMask = '00.000.000/0000-00'
      Style.HotTrack = False
      TabOrder = 5
      Width = 283
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
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
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'N'#250'mero da NF'
      CaptionOptions.Layout = clTop
      Control = edtNrNFe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 160
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Modelo de NF'
      CaptionOptions.Layout = clTop
      Control = edtModeloNFe
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Emiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDataEmissao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 158
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Valor do Frete'
      CaptionOptions.Layout = clTop
      Control = edtFrete
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Valor do Seguro'
      CaptionOptions.Layout = clTop
      Control = edtSeguro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Outros Valores'
      CaptionOptions.Layout = clTop
      Control = edtOutros
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Valor do Desconto'
      CaptionOptions.Layout = clTop
      Control = edtDesconto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Total dos Produtos'
      CaptionOptions.Layout = clTop
      Control = edtProdutos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Total da Nota'
      CaptionOptions.Layout = clTop
      Control = edtTotal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Chave de Acesso'
      CaptionOptions.Layout = clTop
      Control = edtChave
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
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grdProdutos'
      CaptionOptions.Visible = False
      Control = grdProdutos
      ControlOptions.OriginalHeight = 452
      ControlOptions.OriginalWidth = 839
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Fornecedor'
      CaptionOptions.Layout = clTop
      Control = edtFornecedor
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 373
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CNPJ'
      CaptionOptions.Layout = clTop
      Control = edtCNPJ
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 283
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
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
    TabOrder = 1
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Produtos'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 706
    Width = 1350
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
    Left = 752
    Top = 8
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Cadastro'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 668
      FloatTop = 2
      FloatClientWidth = 100
      FloatClientHeight = 162
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
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Importa'#231#227'o'
      CaptionButtons = <>
      DockedLeft = 322
      DockedTop = 0
      FloatLeft = 867
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = False
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Importar XML'
      Category = 0
      Hint = 'Importar XML'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
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
        63653D227072657365727665223E2E477265656E7B66696C6C3A233033394332
        333B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
        3744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C7565
        2220643D224D32392C31384837632D302E362C302D312C302E342D312C317631
        3263302C302E362C302E342C312C312C3168323263302E362C302C312D302E34
        2C312D315631394333302C31382E342C32392E362C31382C32392C31387A204D
        32382C3330483856323068323020202623393B5633307A222F3E0D0A3C706174
        6820636C6173733D22426C75652220643D224D31332E332C32386C2D302E362D
        312E3663302D302E312D302E312D302E322D302E312D302E3373302D302E322C
        302D302E32683063302C302E312C302C302E322C302C302E3363302C302E312C
        302C302E322D302E312C302E334C31312E382C323848313020202623393B6C31
        2E352D336C2D312E342D334831326C302E352C312E3663302C302E312C302E31
        2C302E332C302E312C302E36683063302D302E332C302E312D302E352C302E31
        2D302E366C302E362D312E364831356C2D312E342C336C312E352C334831332E
        337A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3230
        2E322C3238762D332E3363302D302E332C302D302E362C302D316C302D302E33
        6830632D302E312C302E352D302E312C302E382D302E322C314C31392E332C32
        38682D312E346C2D302E382D332E3663302D302E312D302E312D302E342D302E
        322D31683020202623393B63302C302E392C302C312E352C302C312E38563238
        682D312E33762D3668322E336C302E372C332E3363302C302E312C302C302E32
        2C302E312C302E3463302C302E322C302C302E342C302E312C302E3568306330
        2D302E332C302E312D302E362C302E312D302E396C302E372D332E3268322E33
        76364832302E327A222F3E0D0A3C7061746820636C6173733D22426C75652220
        643D224D32322E372C3238762D3668312E3576342E364832365632384832322E
        377A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3239
        2C31384837632D302E362C302D312C302E342D312C3176313263302C302E362C
        302E342C312C312C3168323263302E362C302C312D302E342C312D3156313943
        33302C31382E342C32392E362C31382C32392C31387A204D32382C3330483856
        323068323020202623393B5633307A222F3E0D0A3C7061746820636C6173733D
        22477265656E2220643D224D322C323456313468323076326832762D3363302D
        302E362D302E342D312D312D314831632D302E362C302D312C302E342D312C31
        76313263302C302E362C302E342C312C312C316833762D3248327A222F3E0D0A
        3C7061746820636C6173733D22477265656E2220643D224D31362C313063302C
        302C302E322D342C382D3476326C382D346C2D382D3476324331362E322C322C
        31362C31302C31362C31307A222F3E0D0A3C2F7376673E0D0A}
      Width = 100
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'DANFe'
      Category = 0
      Hint = 'DANFe'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
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
        63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
        31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
        4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
        31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
        3D22446F63756D656E74504446223E0D0A09093C7061746820636C6173733D22
        426C61636B2220643D224D32322C3234763448325632683134763563302C302E
        362C302E342C312C312C3168357634683256376C2D372D37483143302E342C30
        2C302C302E342C302C3176323863302C302E362C302E342C312C312C31683232
        63302E362C302C312D302E342C312D3120202623393B2623393B762D35483232
        7A222F3E0D0A09093C7061746820636C6173733D225265642220643D224D3139
        2E322C313663302E332C302E352C302E342C312E312C302E342C312E3963302C
        302E392D302E322C312E352D302E352C32632D302E332C302E352D302E372C30
        2E372D312E332C302E37682D302E36762D352E3368302E3620202623393B2623
        393B4331382E342C31352E332C31382E392C31352E362C31392E322C31367A20
        4D31322E312C31352E33682D302E3576322E3668302E3563302E372C302C312E
        312D302E342C312E312D312E3363302D302E342D302E312D302E382D302E332D
        314331322E362C31352E342C31322E342C31352E332C31322E312C31352E337A
        20202623393B2623393B204D33302C313276313248365631324833307A204D31
        342E382C31362E3563302D302E382D302E322D312E352D302E362D312E39632D
        302E342D302E342D312D302E372D312E382D302E37483130763868312E36762D
        322E3768302E3663302E382C302C312E342D302E332C312E392D302E38202026
        23393B2623393B4331342E352C31382C31342E382C31372E332C31342E382C31
        362E357A204D32312E322C31372E3963302D322E362D312E312D332E392D332E
        342D332E39682D322E31763868322E3263312E312C302C312E392D302E342C32
        2E352D312E314332302E392C32302E322C32312E322C31392E322C32312E322C
        31372E397A20202623393B2623393B204D32362C3134682D332E37763868312E
        36762D332E316832762D312E33682D32762D322E324832365631347A222F3E0D
        0A093C2F673E0D0A3C2F7376673E0D0A}
      Width = 100
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 504
    Top = 8
  end
  object tblNFCompra: TUniTable
    TableName = 'commerce.nfentrada'
    Connection = DM.Conexao
    LockMode = lmNone
    Left = 592
    Top = 8
    object tblNFComprainfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object tblNFComprainfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object tblNFCompraide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object tblNFCompraide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object tblNFCompraide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object tblNFCompraide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object tblNFCompraide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object tblNFCompraide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object tblNFCompraide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object tblNFCompraide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object tblNFCompraide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object tblNFCompraide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object tblNFCompraide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object tblNFCompraide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object tblNFCompraide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object tblNFCompraide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object tblNFCompraide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object tblNFCompraide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object tblNFCompraide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object tblNFCompraide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object tblNFCompraide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object tblNFCompraide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object tblNFCompraemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object tblNFCompraemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object tblNFCompraemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object tblNFCompraemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object tblNFCompraemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object tblNFCompraemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object tblNFCompraemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object tblNFCompraemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object tblNFCompraemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object tblNFCompraemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object tblNFCompraemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object tblNFCompraemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object tblNFCompradest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object tblNFCompradest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object tblNFCompradest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object tblNFCompradest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object tblNFCompradest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object tblNFCompradest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object tblNFCompradest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object tblNFCompradest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object tblNFCompradest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object tblNFCompradest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object tblNFCompradest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object tblNFCompradest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object tblNFCompradest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object tblNFCompradest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object tblNFCompratotal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object tblNFCompratotal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object tblNFCompratotal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object tblNFCompratotal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object tblNFCompratotal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object tblNFCompratotal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object tblNFCompratotal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object tblNFCompratotal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object tblNFCompratotal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object tblNFCompratotal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object tblNFCompratotal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object tblNFCompratotal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object tblNFCompratotal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object tblNFCompratotal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object tblNFCompratotal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object tblNFCompratotal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object tblNFCompratotal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object tblNFCompratotal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object tblNFCompratotal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object tblNFCompratotal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object tblNFCompratotal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object tblNFCompratotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object tblNFCompratransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object tblNFCompratransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object tblNFCompratransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object tblNFCompratransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object tblNFCompratransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object tblNFCompratransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object tblNFCompratransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object tblNFCompratransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object tblNFCompratransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object tblNFCompratransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object tblNFCompracobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object tblNFCompracobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object tblNFCompracobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object tblNFCompracobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object tblNFComprapag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object tblNFComprapag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object tblNFComprapag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object tblNFComprapag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object tblNFComprapag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object tblNFComprapag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object tblNFComprapag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object tblNFComprapag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object tblNFComprainfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object tblNFComprainfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object tblNFComprainfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object tblNFComprainfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object tblNFComprainfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object tblNFComprasignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object tblNFCompraprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object tblNFCompracodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tblNFCompracad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object tblNFCompracad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
    object tblNFCompraemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object tblNFCompradest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object tblNFCompraemit_enderemit_fone: TStringField
      FieldName = 'emit_enderemit_fone'
    end
    object tblNFCompradest_enderdest_fone: TStringField
      FieldName = 'dest_enderdest_fone'
    end
    object tblNFCompratransp_transporta_cnpj: TStringField
      FieldName = 'transp_transporta_cnpj'
    end
    object tblNFComprainfresptec_cnpj: TStringField
      FieldName = 'infresptec_cnpj'
    end
    object tblNFCompratotal_icmstot_vTotTrib: TFloatField
      FieldName = 'total_icmstot_vTotTrib'
    end
    object tblNFCompraxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object tblNFCompraemit_im: TStringField
      FieldName = 'emit_im'
    end
    object tblNFCompraemit_cnae: TStringField
      FieldName = 'emit_cnae'
    end
    object tblNFCompraemit_enderemit_xcpl: TStringField
      FieldName = 'emit_enderemit_xcpl'
      Size = 200
    end
    object tblNFCompradest_Enderdest_xcpl: TStringField
      FieldName = 'dest_Enderdest_xcpl'
      Size = 200
    end
    object tblNFCompradest_im: TStringField
      FieldName = 'dest_im'
    end
    object tblNFCompracad_integracao: TIntegerField
      FieldName = 'cad_integracao'
    end
    object tblNFCompracad_integracao_dados: TStringField
      FieldName = 'cad_integracao_dados'
      Size = 200
    end
    object tblNFCompratransp_transporta_ie: TStringField
      FieldName = 'transp_transporta_ie'
    end
    object tblNFCompraemit_ie: TStringField
      FieldName = 'emit_ie'
    end
  end
  object qryNFItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfentradaitens'
      'WHERE'
      '  infnfe_chave = :pCODNOTA')
    BeforeDelete = qryNFItensBeforeDelete
    Left = 664
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCODNOTA'
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
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsItens: TDataSource
    DataSet = qryNFItens
    Left = 664
    Top = 56
  end
  object dsNFCompra: TDataSource
    DataSet = tblNFCompra
    Left = 592
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 899
    Top = 7
  end
  object qryApagarItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'DELETE'
      'FROM'
      '  commerce.nfentradaitens'
      'WHERE'
      '  infnfe_chave = :pCODNOTA')
    Left = 752
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCODNOTA'
        Value = nil
      end>
  end
  object tblPessoa: TUniTable
    TableName = 'commerce.pessoas'
    Connection = DM.Conexao
    Left = 904
    Top = 56
    object tblPessoacodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblPessoanome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object tblPessoaendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object tblPessoabairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object tblPessoacidade: TStringField
      FieldName = 'cidade'
      Size = 40
    end
    object tblPessoauf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object tblPessoacep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object tblPessoacomplemento: TStringField
      FieldName = 'complemento'
      Size = 80
    end
    object tblPessoatelefone1: TStringField
      FieldName = 'telefone1'
    end
    object tblPessoaemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object tblPessoarg: TStringField
      FieldName = 'rg'
      Size = 25
    end
    object tblPessoacpf: TStringField
      FieldName = 'cpf'
      Size = 18
    end
    object tblPessoafiliacao: TStringField
      FieldName = 'filiacao'
      Size = 80
    end
    object tblPessoaestadocivil: TStringField
      FieldName = 'estadocivil'
      Size = 15
    end
    object tblPessoaconjuge: TStringField
      FieldName = 'conjuge'
      Size = 60
    end
    object tblPessoaprofissao: TStringField
      FieldName = 'profissao'
      Size = 30
    end
    object tblPessoaempresa: TStringField
      FieldName = 'empresa'
      Size = 40
    end
    object tblPessoarenda: TFloatField
      FieldName = 'renda'
    end
    object tblPessoalimite: TFloatField
      FieldName = 'limite'
    end
    object tblPessoaref1: TStringField
      FieldName = 'ref1'
      Size = 50
    end
    object tblPessoaref2: TStringField
      FieldName = 'ref2'
      Size = 50
    end
    object tblPessoacodvendedor: TStringField
      FieldName = 'codvendedor'
      Size = 6
    end
    object tblPessoadata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object tblPessoadata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object tblPessoaobs1: TStringField
      FieldName = 'obs1'
      Size = 80
    end
    object tblPessoaobs2: TStringField
      FieldName = 'obs2'
      Size = 80
    end
    object tblPessoaobs3: TStringField
      FieldName = 'obs3'
      Size = 80
    end
    object tblPessoaobs4: TStringField
      FieldName = 'obs4'
      Size = 80
    end
    object tblPessoaobs5: TStringField
      FieldName = 'obs5'
      Size = 80
    end
    object tblPessoaobs6: TStringField
      FieldName = 'obs6'
      Size = 80
    end
    object tblPessoanascimento: TStringField
      FieldName = 'nascimento'
      Size = 10
    end
    object tblPessoacodregiao: TStringField
      FieldName = 'codregiao'
      Size = 6
    end
    object tblPessoacodconvenio: TStringField
      FieldName = 'codconvenio'
      Size = 6
    end
    object tblPessoacodusuario: TStringField
      FieldName = 'codusuario'
      Size = 6
    end
    object tblPessoanumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object tblPessoarg_orgao: TStringField
      FieldName = 'rg_orgao'
      Size = 5
    end
    object tblPessoarg_estado: TStringField
      FieldName = 'rg_estado'
      Size = 2
    end
    object tblPessoarg_emissao: TDateField
      FieldName = 'rg_emissao'
    end
    object tblPessoasexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object tblPessoaprevisao: TDateField
      FieldName = 'previsao'
    end
    object tblPessoacnae: TStringField
      FieldName = 'cnae'
      Size = 10
    end
    object tblPessoacod_municipio_ibge: TStringField
      FieldName = 'cod_municipio_ibge'
      Size = 10
    end
    object tblPessoaibge: TStringField
      FieldName = 'ibge'
      Size = 5
    end
    object tblPessoatamanho_calca: TStringField
      FieldName = 'tamanho_calca'
      Size = 5
    end
    object tblPessoatamanho_blusa: TStringField
      FieldName = 'tamanho_blusa'
      Size = 5
    end
    object tblPessoatamanho_sapato: TStringField
      FieldName = 'tamanho_sapato'
      Size = 5
    end
    object tblPessoacorresp_endereco: TStringField
      FieldName = 'corresp_endereco'
      Size = 80
    end
    object tblPessoacorresp_bairro: TStringField
      FieldName = 'corresp_bairro'
      Size = 30
    end
    object tblPessoacorresp_cidade: TStringField
      FieldName = 'corresp_cidade'
      Size = 40
    end
    object tblPessoacorresp_uf: TStringField
      FieldName = 'corresp_uf'
      Size = 2
    end
    object tblPessoacorresp_cep: TStringField
      FieldName = 'corresp_cep'
      Size = 10
    end
    object tblPessoacorresp_complemento: TStringField
      FieldName = 'corresp_complemento'
      Size = 40
    end
    object tblPessoarg_produtor: TStringField
      FieldName = 'rg_produtor'
      Size = 30
    end
    object tblPessoaresp1_nome: TStringField
      FieldName = 'resp1_nome'
      Size = 80
    end
    object tblPessoaresp1_cpf: TStringField
      FieldName = 'resp1_cpf'
      Size = 25
    end
    object tblPessoaresp1_rg: TStringField
      FieldName = 'resp1_rg'
      Size = 25
    end
    object tblPessoaresp1_profissao: TStringField
      FieldName = 'resp1_profissao'
      Size = 50
    end
    object tblPessoaresp1_estado_civil: TStringField
      FieldName = 'resp1_estado_civil'
      Size = 30
    end
    object tblPessoaresp1_endereco: TStringField
      FieldName = 'resp1_endereco'
      Size = 80
    end
    object tblPessoaresp1_bairro: TStringField
      FieldName = 'resp1_bairro'
      Size = 40
    end
    object tblPessoaresp1_cidade: TStringField
      FieldName = 'resp1_cidade'
      Size = 40
    end
    object tblPessoaresp1_uf: TStringField
      FieldName = 'resp1_uf'
      Size = 2
    end
    object tblPessoaresp1_cep: TStringField
      FieldName = 'resp1_cep'
      Size = 15
    end
    object tblPessoaresp2_nome: TStringField
      FieldName = 'resp2_nome'
      Size = 80
    end
    object tblPessoaresp2_cpf: TStringField
      FieldName = 'resp2_cpf'
      Size = 25
    end
    object tblPessoaresp2_rg: TStringField
      FieldName = 'resp2_rg'
      Size = 25
    end
    object tblPessoaresp2_profissao: TStringField
      FieldName = 'resp2_profissao'
      Size = 50
    end
    object tblPessoaresp2_estado_civil: TStringField
      FieldName = 'resp2_estado_civil'
      Size = 30
    end
    object tblPessoaresp2_endereco: TStringField
      FieldName = 'resp2_endereco'
      Size = 80
    end
    object tblPessoaresp2_bairro: TStringField
      FieldName = 'resp2_bairro'
      Size = 40
    end
    object tblPessoaresp2_cidade: TStringField
      FieldName = 'resp2_cidade'
      Size = 40
    end
    object tblPessoaresp2_uf: TStringField
      FieldName = 'resp2_uf'
      Size = 2
    end
    object tblPessoaresp2_cep: TStringField
      FieldName = 'resp2_cep'
      Size = 15
    end
    object tblPessoafoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object tblPessoacondpgto: TStringField
      FieldName = 'condpgto'
      Size = 100
    end
    object tblPessoacpais: TStringField
      FieldName = 'cpais'
      Size = 4
    end
    object tblPessoadpais: TStringField
      FieldName = 'dpais'
      Size = 100
    end
    object tblPessoatipo_ie: TStringField
      FieldName = 'tipo_ie'
    end
    object tblPessoaconsumidor_final: TStringField
      FieldName = 'consumidor_final'
      Size = 1
    end
    object tblPessoainstrucoes1: TStringField
      FieldName = 'instrucoes1'
      Size = 80
    end
    object tblPessoainstrucoes2: TStringField
      FieldName = 'instrucoes2'
      Size = 80
    end
    object tblPessoaidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblPessoaatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblPessoatipopessoa: TStringField
      FieldName = 'tipopessoa'
      Size = 200
    end
    object tblPessoaresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 80
    end
    object tblPessoasimples: TBooleanField
      FieldName = 'simples'
    end
    object tblPessoasimei: TBooleanField
      FieldName = 'simei'
    end
    object tblPessoasintegra: TBooleanField
      FieldName = 'sintegra'
    end
    object tblPessoajuridica: TBooleanField
      FieldName = 'juridica'
    end
    object tblPessoasintegrainativo: TBooleanField
      FieldName = 'sintegrainativo'
    end
  end
  object tblProduto: TUniTable
    TableName = 'commerce.produtos'
    Connection = DM.Conexao
    Left = 960
    Top = 56
    object tblProdutocodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblProdutoproduto: TStringField
      FieldName = 'produto'
      Size = 400
    end
    object tblProdutodata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object tblProdutocodgrupo: TStringField
      FieldName = 'codgrupo'
      Size = 6
    end
    object tblProdutocodsubgrupo: TStringField
      FieldName = 'codsubgrupo'
      Size = 6
    end
    object tblProdutocodfornecedor: TStringField
      FieldName = 'codfornecedor'
      Size = 6
    end
    object tblProdutocodmarca: TStringField
      FieldName = 'codmarca'
      Size = 6
    end
    object tblProdutodata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object tblProdutonotafiscal: TStringField
      FieldName = 'notafiscal'
      Size = 7
    end
    object tblProdutoprecocusto: TFloatField
      FieldName = 'precocusto'
    end
    object tblProdutoprecovenda: TFloatField
      FieldName = 'precovenda'
    end
    object tblProdutodata_ultimavenda: TDateField
      FieldName = 'data_ultimavenda'
    end
    object tblProdutoestoque: TFloatField
      FieldName = 'estoque'
    end
    object tblProdutoestoqueminimo: TFloatField
      FieldName = 'estoqueminimo'
    end
    object tblProdutocodaliquota: TStringField
      FieldName = 'codaliquota'
      Size = 5
    end
    object tblProdutolocalicazao: TStringField
      FieldName = 'localicazao'
      Size = 50
    end
    object tblProdutopeso: TFloatField
      FieldName = 'peso'
    end
    object tblProdutovalidade: TStringField
      FieldName = 'validade'
    end
    object tblProdutocomissao: TFloatField
      FieldName = 'comissao'
    end
    object tblProdutousa_balanca: TIntegerField
      FieldName = 'usa_balanca'
    end
    object tblProdutousa_serial: TIntegerField
      FieldName = 'usa_serial'
    end
    object tblProdutousa_grade: TIntegerField
      FieldName = 'usa_grade'
    end
    object tblProdutocodreceita: TStringField
      FieldName = 'codreceita'
      Size = 6
    end
    object tblProdutofoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object tblProdutodata_ultimacompra_anterior: TDateField
      FieldName = 'data_ultimacompra_anterior'
    end
    object tblProdutonotafiscal_anterior: TStringField
      FieldName = 'notafiscal_anterior'
      Size = 6
    end
    object tblProdutocodfornecedor_anterior: TStringField
      FieldName = 'codfornecedor_anterior'
      Size = 6
    end
    object tblProdutoprecocusto_anterior: TFloatField
      FieldName = 'precocusto_anterior'
    end
    object tblProdutoprecovenda_anterior: TFloatField
      FieldName = 'precovenda_anterior'
    end
    object tblProdutocustomedio: TFloatField
      FieldName = 'customedio'
    end
    object tblProdutoauto_aplicacao: TStringField
      FieldName = 'auto_aplicacao'
      Size = 60
    end
    object tblProdutoauto_complemento: TStringField
      FieldName = 'auto_complemento'
      Size = 60
    end
    object tblProdutodata_remarcacao_custo: TDateField
      FieldName = 'data_remarcacao_custo'
    end
    object tblProdutodata_remarcacao_venda: TDateField
      FieldName = 'data_remarcacao_venda'
    end
    object tblProdutopreco_promocao: TFloatField
      FieldName = 'preco_promocao'
    end
    object tblProdutodata_promocao: TDateField
      FieldName = 'data_promocao'
    end
    object tblProdutofim_promocao: TDateField
      FieldName = 'fim_promocao'
    end
    object tblProdutocst: TStringField
      FieldName = 'cst'
      Size = 200
    end
    object tblProdutoclassificacao_fiscal: TStringField
      FieldName = 'classificacao_fiscal'
    end
    object tblProdutonbm: TStringField
      FieldName = 'nbm'
    end
    object tblProdutoncm: TStringField
      FieldName = 'ncm'
    end
    object tblProdutoaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object tblProdutoipi: TFloatField
      FieldName = 'ipi'
    end
    object tblProdutoreducao: TFloatField
      FieldName = 'reducao'
    end
    object tblProdutoqtde_embalagem: TFloatField
      FieldName = 'qtde_embalagem'
    end
    object tblProdutotipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object tblProdutopeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object tblProdutofarmacia_controlado: TStringField
      FieldName = 'farmacia_controlado'
      Size = 1
    end
    object tblProdutofarmacia_apresentacao: TIntegerField
      FieldName = 'farmacia_apresentacao'
    end
    object tblProdutofarmacia_registro_medicamento: TStringField
      FieldName = 'farmacia_registro_medicamento'
    end
    object tblProdutofarmacia_pmc: TFloatField
      FieldName = 'farmacia_pmc'
    end
    object tblProdutoultima_alteracao: TDateField
      FieldName = 'ultima_alteracao'
    end
    object tblProdutoultima_carga: TDateField
      FieldName = 'ultima_carga'
    end
    object tblProdutodata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object tblProdutocusto_inventario: TFloatField
      FieldName = 'custo_inventario'
    end
    object tblProdutoestoque_inventario: TFloatField
      FieldName = 'estoque_inventario'
    end
    object tblProdutoestoque_anterior: TFloatField
      FieldName = 'estoque_anterior'
    end
    object tblProdutoprecovenda_novo: TFloatField
      FieldName = 'precovenda_novo'
    end
    object tblProdutousa_rentabilidade: TIntegerField
      FieldName = 'usa_rentabilidade'
    end
    object tblProdutoquantidade_minima_fab: TFloatField
      FieldName = 'quantidade_minima_fab'
    end
    object tblProdutoapresentacao: TStringField
      FieldName = 'apresentacao'
      Size = 60
    end
    object tblProdutosituacao: TIntegerField
      FieldName = 'situacao'
    end
    object tblProdutoprecovenda1: TFloatField
      FieldName = 'precovenda1'
    end
    object tblProdutoprecovenda2: TFloatField
      FieldName = 'precovenda2'
    end
    object tblProdutoprecovenda3: TFloatField
      FieldName = 'precovenda3'
    end
    object tblProdutoprecovenda4: TFloatField
      FieldName = 'precovenda4'
    end
    object tblProdutoprecovenda5: TFloatField
      FieldName = 'precovenda5'
    end
    object tblProdutodesconto_precovenda: TFloatField
      FieldName = 'desconto_precovenda'
    end
    object tblProdutodata_inventario_atual: TDateField
      FieldName = 'data_inventario_atual'
    end
    object tblProdutocusto_inventario_atual: TFloatField
      FieldName = 'custo_inventario_atual'
    end
    object tblProdutoestoque_inventario_atual: TFloatField
      FieldName = 'estoque_inventario_atual'
    end
    object tblProdutomargem_minima: TFloatField
      FieldName = 'margem_minima'
    end
    object tblProdutopiscofins: TStringField
      FieldName = 'piscofins'
      Size = 1
    end
    object tblProdutoreferencia_fornecedor: TStringField
      FieldName = 'referencia_fornecedor'
      Size = 30
    end
    object tblProdutocomissao1: TFloatField
      FieldName = 'comissao1'
    end
    object tblProdutomargem_desconto: TFloatField
      FieldName = 'margem_desconto'
    end
    object tblProdutotamanho: TStringField
      FieldName = 'tamanho'
      Size = 6
    end
    object tblProdutocor: TStringField
      FieldName = 'cor'
      Size = 6
    end
    object tblProdutoincidencia_piscofins: TStringField
      FieldName = 'incidencia_piscofins'
      Size = 30
    end
    object tblProdutoveic_chassi: TStringField
      FieldName = 'veic_chassi'
      Size = 50
    end
    object tblProdutoveic_serie: TStringField
      FieldName = 'veic_serie'
      Size = 50
    end
    object tblProdutoveic_potencia: TStringField
      FieldName = 'veic_potencia'
      Size = 50
    end
    object tblProdutoveic_peso_liquido: TStringField
      FieldName = 'veic_peso_liquido'
      Size = 15
    end
    object tblProdutoveic_peso_bruto: TStringField
      FieldName = 'veic_peso_bruto'
      Size = 15
    end
    object tblProdutoveic_tipo_combustivel: TStringField
      FieldName = 'veic_tipo_combustivel'
    end
    object tblProdutoveic_renavam: TStringField
      FieldName = 'veic_renavam'
      Size = 50
    end
    object tblProdutoveic_ano_fabricacao: TIntegerField
      FieldName = 'veic_ano_fabricacao'
    end
    object tblProdutoveic_ano_modelo: TIntegerField
      FieldName = 'veic_ano_modelo'
    end
    object tblProdutoveic_tipo: TStringField
      FieldName = 'veic_tipo'
      Size = 50
    end
    object tblProdutoveic_tipo_pintura: TStringField
      FieldName = 'veic_tipo_pintura'
      Size = 15
    end
    object tblProdutoveic_cod_cor: TStringField
      FieldName = 'veic_cod_cor'
      Size = 15
    end
    object tblProdutoveic_cor: TStringField
      FieldName = 'veic_cor'
      Size = 30
    end
    object tblProdutoveic_vin: TStringField
      FieldName = 'veic_vin'
      Size = 10
    end
    object tblProdutoveic_numero_motor: TStringField
      FieldName = 'veic_numero_motor'
      Size = 50
    end
    object tblProdutoveic_cmkg: TStringField
      FieldName = 'veic_cmkg'
      Size = 15
    end
    object tblProdutoveic_cm3: TStringField
      FieldName = 'veic_cm3'
      Size = 15
    end
    object tblProdutoveic_distancia_eixo: TStringField
      FieldName = 'veic_distancia_eixo'
      Size = 15
    end
    object tblProdutoveic_cod_marca: TStringField
      FieldName = 'veic_cod_marca'
      Size = 15
    end
    object tblProdutoveic_especie: TStringField
      FieldName = 'veic_especie'
      Size = 50
    end
    object tblProdutoveic_condicao: TStringField
      FieldName = 'veic_condicao'
      Size = 50
    end
    object tblProdutolote_fabricacao: TStringField
      FieldName = 'lote_fabricacao'
    end
    object tblProdutolote_validade: TDateField
      FieldName = 'lote_validade'
    end
    object tblProdutomargem_agregada: TFloatField
      FieldName = 'margem_agregada'
    end
    object tblProdutocodbarra_novartis: TStringField
      FieldName = 'codbarra_novartis'
      Size = 13
    end
    object tblProdutofarmacia_dcb: TStringField
      FieldName = 'farmacia_dcb'
    end
    object tblProdutofarmacia_abcfarma: TStringField
      FieldName = 'farmacia_abcfarma'
      Size = 10
    end
    object tblProdutofarmacia_apresentacao_caixa: TStringField
      FieldName = 'farmacia_apresentacao_caixa'
      Size = 10
    end
    object tblProdutofarmacia_principioativo: TStringField
      FieldName = 'farmacia_principioativo'
      Size = 30
    end
    object tblProdutoultima_compra: TDateField
      FieldName = 'ultima_compra'
    end
    object tblProdutofarmacia_datavigencia: TDateField
      FieldName = 'farmacia_datavigencia'
    end
    object tblProdutofarmacia_tipo: TStringField
      FieldName = 'farmacia_tipo'
      Size = 1
    end
    object tblProdutousa_combustivel: TStringField
      FieldName = 'usa_combustivel'
      Size = 1
    end
    object tblProdutoreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object tblProdutoperda: TFloatField
      FieldName = 'perda'
    end
    object tblProdutocomposicao1: TStringField
      FieldName = 'composicao1'
      Size = 30
    end
    object tblProdutocomposicao2: TStringField
      FieldName = 'composicao2'
      Size = 30
    end
    object tblProdutoiat: TStringField
      FieldName = 'iat'
      Size = 1
    end
    object tblProdutoippt: TStringField
      FieldName = 'ippt'
      Size = 1
    end
    object tblProdutosituacao_tributaria: TStringField
      FieldName = 'situacao_tributaria'
      Size = 1
    end
    object tblProdutoflag_sis: TStringField
      FieldName = 'flag_sis'
      Size = 1
    end
    object tblProdutoflag_aceito: TStringField
      FieldName = 'flag_aceito'
      Size = 3
    end
    object tblProdutoflag_est: TStringField
      FieldName = 'flag_est'
      Size = 1
    end
    object tblProdutocsosn: TStringField
      FieldName = 'csosn'
      Size = 200
    end
    object tblProdutocodoriginal: TStringField
      FieldName = 'codoriginal'
    end
    object tblProdutocusto_atacado: TFloatField
      FieldName = 'custo_atacado'
    end
    object tblProdutounidade_atacado: TStringField
      FieldName = 'unidade_atacado'
      Size = 2
    end
    object tblProdutoqtde_embalagematacado: TFloatField
      FieldName = 'qtde_embalagematacado'
    end
    object tblProdutopmargem1: TFloatField
      FieldName = 'pmargem1'
    end
    object tblProdutopmargem2: TFloatField
      FieldName = 'pmargem2'
    end
    object tblProdutopmargem3: TFloatField
      FieldName = 'pmargem3'
    end
    object tblProdutopmargem4: TFloatField
      FieldName = 'pmargem4'
    end
    object tblProdutopmargem5: TFloatField
      FieldName = 'pmargem5'
    end
    object tblProdutopmargematacado1: TFloatField
      FieldName = 'pmargematacado1'
    end
    object tblProdutopmargematacado2: TFloatField
      FieldName = 'pmargematacado2'
    end
    object tblProdutopmargematacado3: TFloatField
      FieldName = 'pmargematacado3'
    end
    object tblProdutopmargematacado4: TFloatField
      FieldName = 'pmargematacado4'
    end
    object tblProdutopmargematacado5: TFloatField
      FieldName = 'pmargematacado5'
    end
    object tblProdutopmargematacado6: TFloatField
      FieldName = 'pmargematacado6'
    end
    object tblProdutoprecoatacado1: TFloatField
      FieldName = 'precoatacado1'
    end
    object tblProdutoprecoatacado2: TFloatField
      FieldName = 'precoatacado2'
    end
    object tblProdutoprecoatacado3: TFloatField
      FieldName = 'precoatacado3'
    end
    object tblProdutoprecoatacado4: TFloatField
      FieldName = 'precoatacado4'
    end
    object tblProdutoprecoatacado5: TFloatField
      FieldName = 'precoatacado5'
    end
    object tblProdutoind_cfop: TStringField
      FieldName = 'ind_cfop'
      Size = 6
    end
    object tblProdutocfop_desc: TStringField
      FieldName = 'cfop_desc'
      Size = 30
    end
    object tblProdutousa_lote: TIntegerField
      FieldName = 'usa_lote'
    end
    object tblProdutoind_cfop_venda_dentro: TStringField
      FieldName = 'ind_cfop_venda_dentro'
      Size = 6
    end
    object tblProdutocodconta: TStringField
      FieldName = 'codconta'
      Size = 6
    end
    object tblProdutoind_cfop_venda_fora: TStringField
      FieldName = 'ind_cfop_venda_fora'
      Size = 6
    end
    object tblProdutoind_cfop_devolucao_dentro: TStringField
      FieldName = 'ind_cfop_devolucao_dentro'
      Size = 6
    end
    object tblProdutoind_cfop_devolucao_fora: TStringField
      FieldName = 'ind_cfop_devolucao_fora'
      Size = 6
    end
    object tblProdutoind_cfop_garantia_dentro: TStringField
      FieldName = 'ind_cfop_garantia_dentro'
      Size = 6
    end
    object tblProdutoind_cfop_garantia_fora: TStringField
      FieldName = 'ind_cfop_garantia_fora'
      Size = 6
    end
    object tblProdutousa_tb_pc: TStringField
      FieldName = 'usa_tb_pc'
      Size = 4
    end
    object tblProdutoativa: TStringField
      FieldName = 'ativa'
      Size = 10
    end
    object tblProdutocest: TStringField
      FieldName = 'cest'
      Size = 7
    end
    object tblProdutoorigem: TIntegerField
      FieldName = 'origem'
    end
    object tblProdutoind_cfop_nfce: TStringField
      FieldName = 'ind_cfop_nfce'
      Size = 4
    end
    object tblProdutoid_tipo_servico: TIntegerField
      FieldName = 'id_tipo_servico'
    end
    object tblProdutonao_movimenta_estoque: TStringField
      FieldName = 'nao_movimenta_estoque'
      Size = 1
    end
    object tblProdutopesagem_auotmatica: TStringField
      FieldName = 'pesagem_auotmatica'
      Size = 1
    end
    object tblProdutoinforma_codigo_barra_xml: TStringField
      FieldName = 'informa_codigo_barra_xml'
      Size = 1
    end
    object tblProdutocodigo_anp: TStringField
      FieldName = 'codigo_anp'
      Size = 10
    end
    object tblProdutocombo: TStringField
      FieldName = 'combo'
      Size = 1
    end
    object tblProdutoind_cfop_dev_compra_dentro: TStringField
      FieldName = 'ind_cfop_dev_compra_dentro'
      Size = 6
    end
    object tblProdutoind_cfop_dev_compra_fora: TStringField
      FieldName = 'ind_cfop_dev_compra_fora'
      Size = 6
    end
    object tblProdutopizza: TStringField
      FieldName = 'pizza'
      Size = 1
    end
    object tblProdutopercglnn: TFloatField
      FieldName = 'percglnn'
    end
    object tblProdutopercglgni: TFloatField
      FieldName = 'percglgni'
    end
    object tblProdutopglp: TFloatField
      FieldName = 'pglp'
    end
    object tblProdutovpart: TFloatField
      FieldName = 'vpart'
    end
    object tblProdutoecf_icms: TStringField
      FieldName = 'ecf_icms'
      Size = 30
    end
    object tblProdutoidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblProdutoemdestaque: TStringField
      FieldName = 'emdestaque'
      Size = 1
    end
    object tblProdutodescontomaximo: TFloatField
      FieldName = 'descontomaximo'
    end
    object tblProdutoatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblProdutocontrolalote: TStringField
      FieldName = 'controlalote'
      Size = 1
    end
    object tblProdutocodbarra: TStringField
      FieldName = 'codbarra'
      Size = 14
    end
    object tblProdutounidade: TStringField
      FieldName = 'unidade'
      Size = 6
    end
    object tblProdutopiscstcsosn: TStringField
      FieldName = 'piscstcsosn'
      Size = 3
    end
    object tblProdutocofinscstcsosn: TStringField
      FieldName = 'cofinscstcsosn'
      Size = 3
    end
    object tblProdutoicmsrepasse: TStringField
      FieldName = 'icmsrepasse'
      Size = 1
    end
    object tblProdutoretornavel: TStringField
      FieldName = 'retornavel'
      Size = 1
    end
  end
  object tblVerificaNota: TUniTable
    TableName = 'commerce.nfentrada'
    Connection = DM.Conexao
    LockMode = lmNone
    Left = 512
    Top = 56
    object tblVerificaNotainfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object tblVerificaNotainfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object tblVerificaNotaide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object tblVerificaNotaide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object tblVerificaNotaide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object tblVerificaNotaide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object tblVerificaNotaide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object tblVerificaNotaide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object tblVerificaNotaide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object tblVerificaNotaide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object tblVerificaNotaide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object tblVerificaNotaide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object tblVerificaNotaide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object tblVerificaNotaide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object tblVerificaNotaide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object tblVerificaNotaide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object tblVerificaNotaide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object tblVerificaNotaide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object tblVerificaNotaide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object tblVerificaNotaide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object tblVerificaNotaide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object tblVerificaNotaide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object tblVerificaNotaemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object tblVerificaNotaemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object tblVerificaNotaemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object tblVerificaNotaemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object tblVerificaNotaemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object tblVerificaNotaemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object tblVerificaNotaemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object tblVerificaNotaemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object tblVerificaNotaemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object tblVerificaNotaemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object tblVerificaNotaemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object tblVerificaNotaemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object tblVerificaNotadest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object tblVerificaNotadest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object tblVerificaNotadest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object tblVerificaNotadest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object tblVerificaNotadest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object tblVerificaNotadest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object tblVerificaNotadest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object tblVerificaNotadest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object tblVerificaNotadest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object tblVerificaNotadest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object tblVerificaNotadest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object tblVerificaNotadest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object tblVerificaNotadest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object tblVerificaNotadest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object tblVerificaNotatotal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object tblVerificaNotatotal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object tblVerificaNotatotal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object tblVerificaNotatotal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object tblVerificaNotatotal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object tblVerificaNotatotal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object tblVerificaNotatotal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object tblVerificaNotatotal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object tblVerificaNotatotal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object tblVerificaNotatotal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object tblVerificaNotatotal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object tblVerificaNotatotal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object tblVerificaNotatotal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object tblVerificaNotatotal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object tblVerificaNotatotal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object tblVerificaNotatotal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object tblVerificaNotatotal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object tblVerificaNotatotal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object tblVerificaNotatotal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object tblVerificaNotatotal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object tblVerificaNotatotal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object tblVerificaNotatotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object tblVerificaNotatransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object tblVerificaNotatransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object tblVerificaNotatransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object tblVerificaNotatransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object tblVerificaNotatransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object tblVerificaNotatransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object tblVerificaNotatransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object tblVerificaNotatransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object tblVerificaNotatransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object tblVerificaNotatransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object tblVerificaNotacobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object tblVerificaNotacobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object tblVerificaNotacobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object tblVerificaNotacobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object tblVerificaNotapag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object tblVerificaNotapag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object tblVerificaNotapag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object tblVerificaNotapag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object tblVerificaNotapag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object tblVerificaNotapag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object tblVerificaNotapag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object tblVerificaNotapag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object tblVerificaNotainfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object tblVerificaNotainfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object tblVerificaNotainfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object tblVerificaNotainfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object tblVerificaNotainfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object tblVerificaNotasignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object tblVerificaNotaprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object tblVerificaNotacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tblVerificaNotacad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object tblVerificaNotacad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
    object tblVerificaNotaemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object tblVerificaNotadest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object tblVerificaNotaemit_enderemit_fone: TStringField
      FieldName = 'emit_enderemit_fone'
    end
    object tblVerificaNotadest_enderdest_fone: TStringField
      FieldName = 'dest_enderdest_fone'
    end
    object tblVerificaNotatransp_transporta_cnpj: TStringField
      FieldName = 'transp_transporta_cnpj'
    end
    object tblVerificaNotainfresptec_cnpj: TStringField
      FieldName = 'infresptec_cnpj'
    end
    object tblVerificaNotatotal_icmstot_vTotTrib: TFloatField
      FieldName = 'total_icmstot_vTotTrib'
    end
    object tblVerificaNotaxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object tblVerificaNotaemit_im: TStringField
      FieldName = 'emit_im'
    end
    object tblVerificaNotaemit_cnae: TStringField
      FieldName = 'emit_cnae'
    end
    object tblVerificaNotaemit_enderemit_xcpl: TStringField
      FieldName = 'emit_enderemit_xcpl'
      Size = 200
    end
    object tblVerificaNotadest_Enderdest_xcpl: TStringField
      FieldName = 'dest_Enderdest_xcpl'
      Size = 200
    end
    object tblVerificaNotadest_im: TStringField
      FieldName = 'dest_im'
    end
    object tblVerificaNotacad_integracao: TIntegerField
      FieldName = 'cad_integracao'
    end
    object tblVerificaNotacad_integracao_dados: TStringField
      FieldName = 'cad_integracao_dados'
      Size = 200
    end
    object tblVerificaNotatransp_transporta_ie: TStringField
      FieldName = 'transp_transporta_ie'
    end
    object tblVerificaNotaemit_ie: TStringField
      FieldName = 'emit_ie'
    end
  end
  object qryAlteraEstoque: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'UPDATE'
      '  commerce.produtos'
      'SET'
      '  estoque = estoque + :pESTOQUE'
      'WHERE'
      '  codigo = :pCODIGO')
    Left = 1040
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pESTOQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pCODIGO'
        Value = nil
      end>
  end
  object tblNFItens: TUniTable
    TableName = 'commerce.nfentradaitens'
    Connection = DM.Conexao
    LockMode = lmNone
    Left = 960
    Top = 8
    object tblNFItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object tblNFItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object tblNFItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object tblNFItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object tblNFItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object tblNFItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object tblNFItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object tblNFItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object tblNFItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object tblNFItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object tblNFItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object tblNFItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object tblNFItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object tblNFItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object tblNFItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object tblNFItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object tblNFItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object tblNFItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object tblNFItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object tblNFItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object tblNFItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object tblNFItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object tblNFItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object tblNFItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object tblNFItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object tblNFItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object tblNFItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object tblNFItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object tblNFItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object tblNFItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object tblNFItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object tblNFItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object tblNFItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object tblNFItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object tblNFItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object tblNFItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tblNFItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object tblNFItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object tblNFItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object tblNFItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object tblNFItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
    object tblNFItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object tblNFItensAliquota_STEfetivo: TFloatField
      FieldName = 'Aliquota_STEfetivo'
    end
    object tblNFItensnitemped: TStringField
      FieldName = 'nitemped'
      Size = 50
    end
    object tblNFItensxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object tblNFItensdet_prod_vdesc: TFloatField
      FieldName = 'det_prod_vdesc'
    end
    object tblNFItensdet_prod_voutro: TFloatField
      FieldName = 'det_prod_voutro'
    end
    object tblNFItensdet_prod_vfrete: TFloatField
      FieldName = 'det_prod_vfrete'
    end
    object tblNFItensdet_prod_vseg: TFloatField
      FieldName = 'det_prod_vseg'
    end
    object tblNFItensdet_prod_ncm: TStringField
      FieldName = 'det_prod_ncm'
    end
  end
  object tblEmpresa: TUniTable
    TableName = 'commerce.empresa'
    Connection = DM.Conexao
    LockMode = lmNone
    Left = 1016
    Top = 8
    object tblEmpresacodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblEmpresafilial: TStringField
      FieldName = 'filial'
      Size = 50
    end
    object tblEmpresanotafiscal: TIntegerField
      FieldName = 'notafiscal'
    end
    object tblEmpresaendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object tblEmpresacidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object tblEmpresauf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object tblEmpresacep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object tblEmpresatelefone: TStringField
      FieldName = 'telefone'
      Size = 25
    end
    object tblEmpresacnpj: TStringField
      FieldName = 'cnpj'
      Size = 25
    end
    object tblEmpresaie: TStringField
      FieldName = 'ie'
      Size = 14
    end
    object tblEmpresaseqnf: TIntegerField
      FieldName = 'seqnf'
    end
    object tblEmpresafax: TStringField
      FieldName = 'fax'
      Size = 25
    end
    object tblEmpresaobs1: TStringField
      FieldName = 'obs1'
      Size = 100
    end
    object tblEmpresaobs2: TStringField
      FieldName = 'obs2'
      Size = 100
    end
    object tblEmpresacontribuinte_ipi: TStringField
      FieldName = 'contribuinte_ipi'
      Size = 1
    end
    object tblEmpresasubstituto_tributario: TStringField
      FieldName = 'substituto_tributario'
      Size = 1
    end
    object tblEmpresaempresa_estadual: TStringField
      FieldName = 'empresa_estadual'
      Size = 1
    end
    object tblEmpresaoptante_simples: TStringField
      FieldName = 'optante_simples'
      Size = 1
    end
    object tblEmpresaoptante_super_simples: TStringField
      FieldName = 'optante_super_simples'
      Size = 1
    end
    object tblEmpresaecf: TStringField
      FieldName = 'ecf'
      Size = 1
    end
    object tblEmpresatipo: TIntegerField
      FieldName = 'tipo'
    end
    object tblEmpresaipi: TFloatField
      FieldName = 'ipi'
    end
    object tblEmpresaiss: TFloatField
      FieldName = 'iss'
    end
    object tblEmpresanumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object tblEmpresaresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 50
    end
    object tblEmpresacomplemento: TStringField
      FieldName = 'complemento'
      Size = 50
    end
    object tblEmpresabairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object tblEmpresafarmacia_resp_tecnico: TStringField
      FieldName = 'farmacia_resp_tecnico'
      Size = 50
    end
    object tblEmpresafarmacia_crf: TStringField
      FieldName = 'farmacia_crf'
      Size = 10
    end
    object tblEmpresafarmacia_cpf: TStringField
      FieldName = 'farmacia_cpf'
      Size = 14
    end
    object tblEmpresafarmcia_data: TDateField
      FieldName = 'farmcia_data'
    end
    object tblEmpresafarmacia_uf: TStringField
      FieldName = 'farmacia_uf'
      Size = 2
    end
    object tblEmpresafarmacia_senha: TStringField
      FieldName = 'farmacia_senha'
      Size = 10
    end
    object tblEmpresafarmacia_email: TStringField
      FieldName = 'farmacia_email'
      Size = 10
    end
    object tblEmpresafarmacia_login: TStringField
      FieldName = 'farmacia_login'
    end
    object tblEmpresafarmacia_envio: TStringField
      FieldName = 'farmacia_envio'
      Size = 100
    end
    object tblEmpresaconhecimento: TIntegerField
      FieldName = 'conhecimento'
    end
    object tblEmpresaindustria: TStringField
      FieldName = 'industria'
      Size = 1
    end
    object tblEmpresafarmacia_numerolicenca: TStringField
      FieldName = 'farmacia_numerolicenca'
    end
    object tblEmpresacod_municipio_ibge: TStringField
      FieldName = 'cod_municipio_ibge'
      Size = 10
    end
    object tblEmpresaibge: TStringField
      FieldName = 'ibge'
      Size = 10
    end
    object tblEmpresapis: TFloatField
      FieldName = 'pis'
    end
    object tblEmpresacofins: TFloatField
      FieldName = 'cofins'
    end
    object tblEmpresaemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object tblEmpresaatividade: TStringField
      FieldName = 'atividade'
      Size = 40
    end
    object tblEmpresacontador_cod_municipio_ibge: TStringField
      FieldName = 'contador_cod_municipio_ibge'
      Size = 10
    end
    object tblEmpresacontador_nome: TStringField
      FieldName = 'contador_nome'
      Size = 60
    end
    object tblEmpresacontador_cpf: TStringField
      FieldName = 'contador_cpf'
    end
    object tblEmpresacontador_crc: TStringField
      FieldName = 'contador_crc'
      Size = 15
    end
    object tblEmpresacontador_cnpj: TStringField
      FieldName = 'contador_cnpj'
      Size = 25
    end
    object tblEmpresacontador_cep: TStringField
      FieldName = 'contador_cep'
      Size = 10
    end
    object tblEmpresacontador_endereco: TStringField
      FieldName = 'contador_endereco'
      Size = 60
    end
    object tblEmpresacontador_numero: TStringField
      FieldName = 'contador_numero'
      Size = 5
    end
    object tblEmpresacontador_complemento: TStringField
      FieldName = 'contador_complemento'
      Size = 60
    end
    object tblEmpresacontador_bairro: TStringField
      FieldName = 'contador_bairro'
      Size = 60
    end
    object tblEmpresacontador_fone: TStringField
      FieldName = 'contador_fone'
      Size = 15
    end
    object tblEmpresacontador_fax: TStringField
      FieldName = 'contador_fax'
      Size = 15
    end
    object tblEmpresacontador_email: TStringField
      FieldName = 'contador_email'
      Size = 60
    end
    object tblEmpresainsc_municipal: TStringField
      FieldName = 'insc_municipal'
    end
    object tblEmpresadata_abertura: TDateField
      FieldName = 'data_abertura'
    end
    object tblEmpresacnae: TStringField
      FieldName = 'cnae'
      Size = 10
    end
    object tblEmpresacrt: TStringField
      FieldName = 'crt'
      Size = 1
    end
    object tblEmpresacontador_cidade: TStringField
      FieldName = 'contador_cidade'
      Size = 30
    end
    object tblEmpresacontador_cod_municipio: TStringField
      FieldName = 'contador_cod_municipio'
      Size = 30
    end
    object tblEmpresacontador_uf: TStringField
      FieldName = 'contador_uf'
      Size = 2
    end
    object tblEmpresapermite_credito: TIntegerField
      FieldName = 'permite_credito'
    end
    object tblEmpresafantasia: TStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object tblEmpresadfixas: TFloatField
      FieldName = 'dfixas'
    end
    object tblEmpresatipocalculo: TIntegerField
      FieldName = 'tipocalculo'
    end
    object tblEmpresaserie_cte: TStringField
      FieldName = 'serie_cte'
      Size = 6
    end
    object tblEmpresaseq_cte: TStringField
      FieldName = 'seq_cte'
      Size = 6
    end
    object tblEmpresacod_pais: TStringField
      FieldName = 'cod_pais'
    end
    object tblEmpresapais: TStringField
      FieldName = 'pais'
      Size = 50
    end
    object tblEmpresahomepage: TStringField
      FieldName = 'homepage'
      Size = 100
    end
    object tblEmpresaaidf: TStringField
      FieldName = 'aidf'
    end
    object tblEmpresaninicial: TStringField
      FieldName = 'ninicial'
    end
    object tblEmpresanfinal: TStringField
      FieldName = 'nfinal'
    end
    object tblEmpresan_nf_d: TStringField
      FieldName = 'n_nf_d'
    end
    object tblEmpresavalidade: TStringField
      FieldName = 'validade'
    end
    object tblEmpresarntrc: TStringField
      FieldName = 'rntrc'
      Size = 45
    end
    object tblEmpresaserie_mdfe: TIntegerField
      FieldName = 'serie_mdfe'
    end
    object tblEmpresanumero_mdfe: TIntegerField
      FieldName = 'numero_mdfe'
    end
    object tblEmpresamail_server: TStringField
      FieldName = 'mail_server'
      Size = 120
    end
    object tblEmpresamail_porta: TStringField
      FieldName = 'mail_porta'
      Size = 15
    end
    object tblEmpresamail_username: TStringField
      FieldName = 'mail_username'
      Size = 120
    end
    object tblEmpresamail_password: TStringField
      FieldName = 'mail_password'
      Size = 120
    end
    object tblEmpresamail_cabecalho: TStringField
      FieldName = 'mail_cabecalho'
      Size = 120
    end
    object tblEmpresamail_assunto: TStringField
      FieldName = 'mail_assunto'
      Size = 120
    end
    object tblEmpresamail_ssl: TStringField
      FieldName = 'mail_ssl'
      Size = 1
    end
    object tblEmpresamail_tls: TStringField
      FieldName = 'mail_tls'
      Size = 1
    end
    object tblEmpresareptec_cnpj: TStringField
      FieldName = 'reptec_cnpj'
      Size = 14
    end
    object tblEmpresareptec_contato: TStringField
      FieldName = 'reptec_contato'
      Size = 60
    end
    object tblEmpresareptec_email: TStringField
      FieldName = 'reptec_email'
      Size = 60
    end
    object tblEmpresareptec_fone: TStringField
      FieldName = 'reptec_fone'
      Size = 14
    end
    object tblEmpresareptec_idcsrt: TIntegerField
      FieldName = 'reptec_idcsrt'
    end
    object tblEmpresareptec_csrt: TStringField
      FieldName = 'reptec_csrt'
      Size = 28
    end
    object tblEmpresapercentual_credito_icms: TFloatField
      FieldName = 'percentual_credito_icms'
    end
    object tblEmpresaidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblEmpresacomentarios: TStringField
      FieldName = 'comentarios'
      Size = 50
    end
    object tblEmpresadatahora_inicial: TDateField
      FieldName = 'datahora_inicial'
    end
    object tblEmpresadatahora_final: TDateField
      FieldName = 'datahora_final'
    end
    object tblEmpresadata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object tblEmpresaestoque: TFloatField
      FieldName = 'estoque'
    end
    object tblEmpresavalor: TFloatField
      FieldName = 'valor'
    end
    object tblEmpresacpf: TStringField
      FieldName = 'cpf'
    end
    object tblEmpresarg: TStringField
      FieldName = 'rg'
    end
    object tblEmpresadia_vencimento_chave: TStringField
      FieldName = 'dia_vencimento_chave'
      Size = 2
    end
    object tblEmpresaemail_financeiro: TStringField
      FieldName = 'email_financeiro'
      Size = 200
    end
    object tblEmpresaatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblEmpresaserie_nfe: TIntegerField
      FieldName = 'serie_nfe'
    end
    object tblEmpresaseq_nfe: TIntegerField
      FieldName = 'seq_nfe'
    end
    object tblEmpresalogo: TStringField
      FieldName = 'logo'
      Size = 500
    end
    object tblEmpresacodigoibge: TStringField
      FieldName = 'codigoibge'
      Size = 40
    end
    object tblEmpresaseq_nfce: TIntegerField
      FieldName = 'seq_nfce'
    end
    object tblEmpresaserie_nfce: TIntegerField
      FieldName = 'serie_nfce'
    end
  end
  object qryNF: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'select * FROM commerce.nfentrada WHERE infnfe_chave = :pCHAVE')
    Left = 752
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCHAVE'
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
end
