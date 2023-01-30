object frmLinkProduto: TfrmLinkProduto
  Left = 0
  Top = 0
  Caption = 'Concilia'#231#227'o de Produtos'
  ClientHeight = 480
  ClientWidth = 949
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
  object grdProdutos: TcxGrid
    Left = 0
    Top = 36
    Width = 949
    Height = 421
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object grdProdutosView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Pesquise por aqui...'
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = grdProdutosViewCellDblClick
      DataController.DataSource = dsProdutos
      DataController.KeyFieldNames = 'codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem produtos cadastrados'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Content = Linha
      Styles.ContentEven = Linha2
      Styles.ContentOdd = Linha
      object grdProdutosViewcodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        BestFitMaxWidth = 65
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object grdProdutosViewproduto: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'produto'
        Width = 494
      end
      object grdProdutosViewprecocusto: TcxGridDBColumn
        Caption = 'Custo'
        DataBinding.FieldName = 'precocusto'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 125
      end
      object grdProdutosViewprecovenda: TcxGridDBColumn
        Caption = 'Venda'
        DataBinding.FieldName = 'precovenda'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 101
      end
      object grdProdutosViewestoque: TcxGridDBColumn
        Caption = 'Estoque'
        DataBinding.FieldName = 'estoque'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 93
      end
      object grdProdutosViewestoqueminimo: TcxGridDBColumn
        Caption = 'Estoque M'#237'nimo'
        DataBinding.FieldName = 'estoqueminimo'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 83
      end
      object grdProdutosViewncm: TcxGridDBColumn
        Caption = 'NCM'
        DataBinding.FieldName = 'ncm'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.EditMask = '0000.00.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 115
      end
    end
    object grdProdutosLevel1: TcxGridLevel
      GridView = grdProdutosView
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 949
    Height = 23
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 949
    Height = 36
    ApplicationButton.Visible = False
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeAccent = rcsaOrange
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Visible = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 2
    TabStop = False
    object tabProdutos: TdxRibbonTab
      Active = True
      Caption = 'Produtos'
      Groups = <>
      Index = 0
    end
  end
  object qryProdutos: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.produtos'
      'ORDER BY'
      '  produto')
    Left = 572
    Top = 128
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    Top = 8
    PixelsPerInch = 96
    object Linha2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15724527
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object Linha: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14474460
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 528
    Top = 8
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 580
    Top = 64
  end
end
