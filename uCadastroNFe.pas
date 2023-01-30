unit uCadastroNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, StrUtils, dxSkinsCore, cxTextEdit, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxCurrencyEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxRibbonCustomizationForm, Uni, MemDS, DBAccess, AcbrUtil,
  ACBrDFeUtil, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, dxLayoutLookAndFeels,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxSpinEdit, cxDBEdit, cxCalc, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutControl, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxDBLabel, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxCheckBox, cxButtonEdit, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxScrollbarAnnotations, dxCore;

type
  TfrmCadastroNFe = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    btnSalvar: TdxBarLargeButton;
    btnExcluir: TdxBarLargeButton;
    btnSair: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxLayoutControl1: TdxLayoutControl;
    grdProdutos: TcxGrid;
    grdProdutosView: TcxGridDBTableView;
    grdProdutosViewitem: TcxGridDBColumn;
    grdProdutosViewcfop: TcxGridDBColumn;
    grdProdutosViewproduto: TcxGridDBColumn;
    grdProdutosViewqtde: TcxGridDBColumn;
    grdProdutosViewprecovenda: TcxGridDBColumn;
    grdProdutosViewtotal: TcxGridDBColumn;
    grdProdutosViewcodproduto: TcxGridDBColumn;
    grdProdutosViewNCM: TcxGridDBColumn;
    grdProdutosLevel1: TcxGridLevel;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    qryCFOP: TUniQuery;
    edtCFOP: TcxDBLookupComboBox;
    lytCFOP: TdxLayoutItem;
    dsCFOP: TDataSource;
    tblNFe: TUniTable;
    dsNFe: TDataSource;
    edtNumeroNF: TcxDBSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtSerie: TcxDBSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edtDataSaida: TcxDBDateEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtDataEmissao: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    lblAplicacao: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    lblCFOP: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    edtDest: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    edtTransp: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dsPessoas: TDataSource;
    tblPessoas: TUniTable;
    lblDestEndereco: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    lblDestCNPJ: TcxLabel;
    dxLayoutItem13: TdxLayoutItem;
    lblTranspCNPJ: TcxLabel;
    dxLayoutItem14: TdxLayoutItem;
    lblTranspEndereco: TcxLabel;
    dxLayoutItem15: TdxLayoutItem;
    qryPessoas: TUniQuery;
    qryTransportadora: TUniQuery;
    dsTransportadoras: TDataSource;
    qryItens: TUniQuery;
    dsItens: TDataSource;
    edtFinalidade: TcxComboBox;
    dxLayoutItem17: TdxLayoutItem;
    edtMovimento: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    edtPagamento: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    qryCFOPcfop: TIntegerField;
    qryCFOPtipo: TStringField;
    qryCFOPdescricao: TStringField;
    qryCFOPaplicacao: TStringField;
    qryCFOPinivig: TDateField;
    qryCFOPfimvig: TDateField;
    qryCFOPindnfe: TIntegerField;
    qryCFOPindcomunica: TIntegerField;
    qryCFOPindtransp: TIntegerField;
    qryCFOPinddevol: TIntegerField;
    qryCFOPindretor: TIntegerField;
    qryCFOPindanula: TIntegerField;
    qryCFOPindremes: TIntegerField;
    qryCFOPindcomb: TIntegerField;
    qryCFOPindnfce: TIntegerField;
    qryCFOPindcte: TIntegerField;
    qryCFOPindcteos: TIntegerField;
    lytItensGroup_Root: TdxLayoutGroup;
    lytItens: TdxLayoutControl;
    lytItensNF: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    tblItens: TUniTable;
    dstblItens: TDataSource;
    edtProduto: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    dsProdutos: TDataSource;
    qryProdutos: TUniQuery;
    qryProdutoscodigo: TStringField;
    qryProdutosproduto: TStringField;
    qryProdutosdata_cadastro: TDateField;
    qryProdutoscodgrupo: TStringField;
    qryProdutoscodsubgrupo: TStringField;
    qryProdutoscodfornecedor: TStringField;
    qryProdutoscodmarca: TStringField;
    qryProdutosdata_ultimacompra: TDateField;
    qryProdutosnotafiscal: TStringField;
    qryProdutosprecocusto: TFloatField;
    qryProdutosprecovenda: TFloatField;
    qryProdutosdata_ultimavenda: TDateField;
    qryProdutosestoque: TFloatField;
    qryProdutosestoqueminimo: TFloatField;
    qryProdutoscodaliquota: TStringField;
    qryProdutoslocalicazao: TStringField;
    qryProdutospeso: TFloatField;
    qryProdutosvalidade: TStringField;
    qryProdutoscomissao: TFloatField;
    qryProdutosusa_balanca: TIntegerField;
    qryProdutosusa_serial: TIntegerField;
    qryProdutosusa_grade: TIntegerField;
    qryProdutoscodreceita: TStringField;
    qryProdutosfoto: TStringField;
    qryProdutosdata_ultimacompra_anterior: TDateField;
    qryProdutosnotafiscal_anterior: TStringField;
    qryProdutoscodfornecedor_anterior: TStringField;
    qryProdutosprecocusto_anterior: TFloatField;
    qryProdutosprecovenda_anterior: TFloatField;
    qryProdutoscustomedio: TFloatField;
    qryProdutosauto_aplicacao: TStringField;
    qryProdutosauto_complemento: TStringField;
    qryProdutosdata_remarcacao_custo: TDateField;
    qryProdutosdata_remarcacao_venda: TDateField;
    qryProdutospreco_promocao: TFloatField;
    qryProdutosdata_promocao: TDateField;
    qryProdutosfim_promocao: TDateField;
    qryProdutoscst: TStringField;
    qryProdutosclassificacao_fiscal: TStringField;
    qryProdutosnbm: TStringField;
    qryProdutosncm: TStringField;
    qryProdutosaliquota: TFloatField;
    qryProdutosipi: TFloatField;
    qryProdutosreducao: TFloatField;
    qryProdutosqtde_embalagem: TFloatField;
    qryProdutostipo: TStringField;
    qryProdutospeso_liquido: TFloatField;
    qryProdutosfarmacia_controlado: TStringField;
    qryProdutosfarmacia_apresentacao: TIntegerField;
    qryProdutosfarmacia_registro_medicamento: TStringField;
    qryProdutosfarmacia_pmc: TFloatField;
    qryProdutosultima_alteracao: TDateField;
    qryProdutosultima_carga: TDateField;
    qryProdutosdata_inventario: TDateField;
    qryProdutoscusto_inventario: TFloatField;
    qryProdutosestoque_inventario: TFloatField;
    qryProdutosestoque_anterior: TFloatField;
    qryProdutosprecovenda_novo: TFloatField;
    qryProdutosusa_rentabilidade: TIntegerField;
    qryProdutosquantidade_minima_fab: TFloatField;
    qryProdutosapresentacao: TStringField;
    qryProdutossituacao: TIntegerField;
    qryProdutosprecovenda1: TFloatField;
    qryProdutosprecovenda2: TFloatField;
    qryProdutosprecovenda3: TFloatField;
    qryProdutosprecovenda4: TFloatField;
    qryProdutosprecovenda5: TFloatField;
    qryProdutosdesconto_precovenda: TFloatField;
    qryProdutosdata_inventario_atual: TDateField;
    qryProdutoscusto_inventario_atual: TFloatField;
    qryProdutosestoque_inventario_atual: TFloatField;
    qryProdutosmargem_minima: TFloatField;
    qryProdutospiscofins: TStringField;
    qryProdutosreferencia_fornecedor: TStringField;
    qryProdutoscomissao1: TFloatField;
    qryProdutosmargem_desconto: TFloatField;
    qryProdutostamanho: TStringField;
    qryProdutoscor: TStringField;
    qryProdutosincidencia_piscofins: TStringField;
    qryProdutosveic_chassi: TStringField;
    qryProdutosveic_serie: TStringField;
    qryProdutosveic_potencia: TStringField;
    qryProdutosveic_peso_liquido: TStringField;
    qryProdutosveic_peso_bruto: TStringField;
    qryProdutosveic_tipo_combustivel: TStringField;
    qryProdutosveic_renavam: TStringField;
    qryProdutosveic_ano_fabricacao: TIntegerField;
    qryProdutosveic_ano_modelo: TIntegerField;
    qryProdutosveic_tipo: TStringField;
    qryProdutosveic_tipo_pintura: TStringField;
    qryProdutosveic_cod_cor: TStringField;
    qryProdutosveic_cor: TStringField;
    qryProdutosveic_vin: TStringField;
    qryProdutosveic_numero_motor: TStringField;
    qryProdutosveic_cmkg: TStringField;
    qryProdutosveic_cm3: TStringField;
    qryProdutosveic_distancia_eixo: TStringField;
    qryProdutosveic_cod_marca: TStringField;
    qryProdutosveic_especie: TStringField;
    qryProdutosveic_condicao: TStringField;
    qryProdutoslote_fabricacao: TStringField;
    qryProdutoslote_validade: TDateField;
    qryProdutosmargem_agregada: TFloatField;
    qryProdutoscodbarra_novartis: TStringField;
    qryProdutosfarmacia_dcb: TStringField;
    qryProdutosfarmacia_abcfarma: TStringField;
    qryProdutosfarmacia_apresentacao_caixa: TStringField;
    qryProdutosfarmacia_principioativo: TStringField;
    qryProdutosultima_compra: TDateField;
    qryProdutosfarmacia_datavigencia: TDateField;
    qryProdutosfarmacia_tipo: TStringField;
    qryProdutosusa_combustivel: TStringField;
    qryProdutosreferencia: TStringField;
    qryProdutosperda: TFloatField;
    qryProdutoscomposicao1: TStringField;
    qryProdutoscomposicao2: TStringField;
    qryProdutosiat: TStringField;
    qryProdutosippt: TStringField;
    qryProdutossituacao_tributaria: TStringField;
    qryProdutosflag_sis: TStringField;
    qryProdutosflag_aceito: TStringField;
    qryProdutosflag_est: TStringField;
    qryProdutoscsosn: TStringField;
    qryProdutoscodoriginal: TStringField;
    qryProdutoscusto_atacado: TFloatField;
    qryProdutosunidade_atacado: TStringField;
    qryProdutosqtde_embalagematacado: TFloatField;
    qryProdutospmargem1: TFloatField;
    qryProdutospmargem2: TFloatField;
    qryProdutospmargem3: TFloatField;
    qryProdutospmargem4: TFloatField;
    qryProdutospmargem5: TFloatField;
    qryProdutospmargematacado1: TFloatField;
    qryProdutospmargematacado2: TFloatField;
    qryProdutospmargematacado3: TFloatField;
    qryProdutospmargematacado4: TFloatField;
    qryProdutospmargematacado5: TFloatField;
    qryProdutospmargematacado6: TFloatField;
    qryProdutosprecoatacado1: TFloatField;
    qryProdutosprecoatacado2: TFloatField;
    qryProdutosprecoatacado3: TFloatField;
    qryProdutosprecoatacado4: TFloatField;
    qryProdutosprecoatacado5: TFloatField;
    qryProdutosind_cfop: TStringField;
    qryProdutoscfop_desc: TStringField;
    qryProdutosusa_lote: TIntegerField;
    qryProdutosind_cfop_venda_dentro: TStringField;
    qryProdutoscodconta: TStringField;
    qryProdutosind_cfop_venda_fora: TStringField;
    qryProdutosind_cfop_devolucao_dentro: TStringField;
    qryProdutosind_cfop_devolucao_fora: TStringField;
    qryProdutosind_cfop_garantia_dentro: TStringField;
    qryProdutosind_cfop_garantia_fora: TStringField;
    qryProdutosusa_tb_pc: TStringField;
    qryProdutosativa: TStringField;
    qryProdutoscest: TStringField;
    qryProdutosorigem: TIntegerField;
    qryProdutosind_cfop_nfce: TStringField;
    qryProdutosid_tipo_servico: TIntegerField;
    qryProdutosnao_movimenta_estoque: TStringField;
    qryProdutospesagem_auotmatica: TStringField;
    qryProdutosinforma_codigo_barra_xml: TStringField;
    qryProdutoscodigo_anp: TStringField;
    qryProdutoscombo: TStringField;
    qryProdutosind_cfop_dev_compra_dentro: TStringField;
    qryProdutosind_cfop_dev_compra_fora: TStringField;
    qryProdutospizza: TStringField;
    qryProdutospercglnn: TFloatField;
    qryProdutospercglgni: TFloatField;
    qryProdutospglp: TFloatField;
    qryProdutosvpart: TFloatField;
    qryProdutosecf_icms: TStringField;
    qryProdutosidonline: TIntegerField;
    qryProdutosemdestaque: TStringField;
    qryProdutosdescontomaximo: TFloatField;
    qryProdutosatb: TStringField;
    qryProdutoscontrolalote: TStringField;
    qryProdutoscodbarra: TStringField;
    qryProdutosunidade: TStringField;
    qryProdutospiscstcsosn: TStringField;
    qryProdutoscofinscstcsosn: TStringField;
    qryProdutosicmsrepasse: TStringField;
    qryProdutosretornavel: TStringField;
    edtQuantidade: TcxDBCurrencyEdit;
    dxLayoutItem19: TdxLayoutItem;
    edtValor: TcxDBCurrencyEdit;
    dxLayoutItem20: TdxLayoutItem;
    btnAdicionarItem: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    btnExcluirItem: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    edtUnidade: TcxDBLookupComboBox;
    dxLayoutItem23: TdxLayoutItem;
    dsUnidades: TDataSource;
    qryUnidades: TUniQuery;
    qryUnidadesunidade: TStringField;
    qryUnidadesdescricao: TStringField;
    dxLayoutItem24: TdxLayoutItem;
    edtTotal: TcxDBCurrencyEdit;
    dsEmitente: TDataSource;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    chkTodasPessoas: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    grdProdutosViewExcluir: TcxGridDBColumn;
    tblItensdet_nitem: TIntegerField;
    tblItensdet_prod_cprod: TStringField;
    tblItensdet_prod_cean: TStringField;
    tblItensdet_prod_xprod: TStringField;
    tblItensdet_prod_cfop: TIntegerField;
    tblItensdet_prod_ucom: TStringField;
    tblItensdet_prod_qcom: TFloatField;
    tblItensdet_prod_vuncom: TFloatField;
    tblItensdet_prod_vprod: TFloatField;
    tblItensdet_prod_ceantrib: TStringField;
    tblItensdet_prod_utrib: TStringField;
    tblItensdet_prod_qtrib: TFloatField;
    tblItensdet_prod_vuntrib: TFloatField;
    tblItensdet_prod_indtot: TIntegerField;
    tblItensdet_prod_imposto_icms: TStringField;
    tblItensdet_prod_imposto_icms_orig: TFloatField;
    tblItensdet_prod_imposto_icms_cst: TFloatField;
    tblItensdet_prod_imposto_icms_modbc: TFloatField;
    tblItensdet_prod_imposto_icms_vbc: TFloatField;
    tblItensdet_prod_imposto_icms_picms: TFloatField;
    tblItensdet_prod_imposto_icms_vicms: TFloatField;
    tblItensdet_prod_imposto_ipi: TStringField;
    tblItensdet_prod_imposto_ipi_cenq: TFloatField;
    tblItensdet_prod_imposto_ipi_ipint: TFloatField;
    tblItensdet_prod_imposto_ipi_cst: TFloatField;
    tblItensdet_prod_imposto_pis: TStringField;
    tblItensdet_prod_imposto_pis_pisaliq_cst: TFloatField;
    tblItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField;
    tblItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField;
    tblItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField;
    tblItensdet_prod_imposto_cofins: TStringField;
    tblItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField;
    tblItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField;
    tblItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField;
    tblItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField;
    tblItenscodigo: TIntegerField;
    tblItensinfnfe_chave: TStringField;
    tblItenside_mod: TIntegerField;
    tblItenside_serie: TIntegerField;
    tblItenside_nnf: TIntegerField;
    tblItensdet_prod_vtotalitem: TFloatField;
    qryItensdet_nitem: TIntegerField;
    qryItensdet_prod_cprod: TStringField;
    qryItensdet_prod_cean: TStringField;
    qryItensdet_prod_xprod: TStringField;
    qryItensdet_prod_cfop: TIntegerField;
    qryItensdet_prod_ucom: TStringField;
    qryItensdet_prod_qcom: TFloatField;
    qryItensdet_prod_vuncom: TFloatField;
    qryItensdet_prod_vprod: TFloatField;
    qryItensdet_prod_ceantrib: TStringField;
    qryItensdet_prod_utrib: TStringField;
    qryItensdet_prod_qtrib: TFloatField;
    qryItensdet_prod_vuntrib: TFloatField;
    qryItensdet_prod_indtot: TIntegerField;
    qryItensdet_prod_imposto_icms: TStringField;
    qryItensdet_prod_imposto_icms_orig: TFloatField;
    qryItensdet_prod_imposto_icms_cst: TFloatField;
    qryItensdet_prod_imposto_icms_modbc: TFloatField;
    qryItensdet_prod_imposto_icms_vbc: TFloatField;
    qryItensdet_prod_imposto_icms_picms: TFloatField;
    qryItensdet_prod_imposto_icms_vicms: TFloatField;
    qryItensdet_prod_imposto_ipi: TStringField;
    qryItensdet_prod_imposto_ipi_cenq: TFloatField;
    qryItensdet_prod_imposto_ipi_ipint: TFloatField;
    qryItensdet_prod_imposto_ipi_cst: TFloatField;
    qryItensdet_prod_imposto_pis: TStringField;
    qryItensdet_prod_imposto_pis_pisaliq_cst: TFloatField;
    qryItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField;
    qryItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField;
    qryItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField;
    qryItensdet_prod_imposto_cofins: TStringField;
    qryItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField;
    qryItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField;
    qryItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField;
    qryItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField;
    qryItenscodigo: TIntegerField;
    qryItensinfnfe_chave: TStringField;
    qryItenside_mod: TIntegerField;
    qryItenside_serie: TIntegerField;
    qryItenside_nnf: TIntegerField;
    qryItensdet_prod_vtotalitem: TFloatField;
    qryApagarItens: TUniQuery;
    qryAlteraEstoque: TUniQuery;
    tblMeiosPagamento: TUniTable;
    dsMeiosPagamento: TDataSource;
    tblMeiosPagamentotpag: TStringField;
    tblMeiosPagamentodescricao: TStringField;
    edtFormaPagamento: TcxDBLookupComboBox;
    dxLayoutItem25: TdxLayoutItem;
    edtNumFatura: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    lytPagamento: TdxLayoutAutoCreatedGroup;
    edtTotalNota: TcxDBCurrencyEdit;
    dxLayoutItem27: TdxLayoutItem;
    edtVolumes: TcxDBSpinEdit;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    edtMarca: TcxDBTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    lytEntrega: TdxLayoutAutoCreatedGroup;
    edtTipoFrete: TcxDBLookupComboBox;
    dxLayoutItem31: TdxLayoutItem;
    edtPesoL: TcxDBCurrencyEdit;
    dxLayoutItem32: TdxLayoutItem;
    edtPesoB: TcxDBCurrencyEdit;
    dxLayoutItem33: TdxLayoutItem;
    dsTipoFrete: TDataSource;
    qryTipoFrete: TUniQuery;
    qryTipoFretemodfrete: TIntegerField;
    qryTipoFretedescricao: TStringField;
    edtEspecie: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    edtValorFat: TcxDBCurrencyEdit;
    dxLayoutItem34: TdxLayoutItem;
    edtNDups: TcxDBSpinEdit;
    dxLayoutItem35: TdxLayoutItem;
    edtDataVecto: TcxDBDateEdit;
    dxLayoutItem36: TdxLayoutItem;
    edtDiasEntreParcelas: TcxSpinEdit;
    dxLayoutItem37: TdxLayoutItem;
    edtNatOp: TcxDBComboBox;
    dxLayoutItem38: TdxLayoutItem;
    tblItenscsosn: TIntegerField;
    tblItensAliquota_STEfetivo: TFloatField;
    qryItenscsosn: TIntegerField;
    qryItensAliquota_STEfetivo: TFloatField;
    edtConsumidorFinal: TcxDBCheckBox;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    edtXPED: TcxDBTextEdit;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    edtnitemped: TcxDBTextEdit;
    lytNitemPed: TdxLayoutItem;
    tblItensxped: TStringField;
    tblItensnitemped: TStringField;
    tblPessoascodigo: TStringField;
    tblPessoasnome: TStringField;
    tblPessoasendereco: TStringField;
    tblPessoasbairro: TStringField;
    tblPessoascidade: TStringField;
    tblPessoasuf: TStringField;
    tblPessoascep: TStringField;
    tblPessoascomplemento: TStringField;
    tblPessoastelefone1: TStringField;
    tblPessoasemail: TStringField;
    tblPessoasrg: TStringField;
    tblPessoascpf: TStringField;
    tblPessoasfiliacao: TStringField;
    tblPessoasestadocivil: TStringField;
    tblPessoasconjuge: TStringField;
    tblPessoasprofissao: TStringField;
    tblPessoasempresa: TStringField;
    tblPessoasrenda: TFloatField;
    tblPessoaslimite: TFloatField;
    tblPessoasref1: TStringField;
    tblPessoasref2: TStringField;
    tblPessoascodvendedor: TStringField;
    tblPessoasdata_cadastro: TDateField;
    tblPessoasdata_ultimacompra: TDateField;
    tblPessoasobs1: TStringField;
    tblPessoasobs2: TStringField;
    tblPessoasobs3: TStringField;
    tblPessoasobs4: TStringField;
    tblPessoasobs5: TStringField;
    tblPessoasobs6: TStringField;
    tblPessoasnascimento: TStringField;
    tblPessoascodregiao: TStringField;
    tblPessoascodconvenio: TStringField;
    tblPessoascodusuario: TStringField;
    tblPessoasnumero: TStringField;
    tblPessoasrg_orgao: TStringField;
    tblPessoasrg_estado: TStringField;
    tblPessoasrg_emissao: TDateField;
    tblPessoassexo: TStringField;
    tblPessoasprevisao: TDateField;
    tblPessoascnae: TStringField;
    tblPessoascod_municipio_ibge: TStringField;
    tblPessoasibge: TStringField;
    tblPessoastamanho_calca: TStringField;
    tblPessoastamanho_blusa: TStringField;
    tblPessoastamanho_sapato: TStringField;
    tblPessoascorresp_endereco: TStringField;
    tblPessoascorresp_bairro: TStringField;
    tblPessoascorresp_cidade: TStringField;
    tblPessoascorresp_uf: TStringField;
    tblPessoascorresp_cep: TStringField;
    tblPessoascorresp_complemento: TStringField;
    tblPessoasrg_produtor: TStringField;
    tblPessoasresp1_nome: TStringField;
    tblPessoasresp1_cpf: TStringField;
    tblPessoasresp1_rg: TStringField;
    tblPessoasresp1_profissao: TStringField;
    tblPessoasresp1_estado_civil: TStringField;
    tblPessoasresp1_endereco: TStringField;
    tblPessoasresp1_bairro: TStringField;
    tblPessoasresp1_cidade: TStringField;
    tblPessoasresp1_uf: TStringField;
    tblPessoasresp1_cep: TStringField;
    tblPessoasresp2_nome: TStringField;
    tblPessoasresp2_cpf: TStringField;
    tblPessoasresp2_rg: TStringField;
    tblPessoasresp2_profissao: TStringField;
    tblPessoasresp2_estado_civil: TStringField;
    tblPessoasresp2_endereco: TStringField;
    tblPessoasresp2_bairro: TStringField;
    tblPessoasresp2_cidade: TStringField;
    tblPessoasresp2_uf: TStringField;
    tblPessoasresp2_cep: TStringField;
    tblPessoasfoto: TStringField;
    tblPessoascondpgto: TStringField;
    tblPessoascpais: TStringField;
    tblPessoasdpais: TStringField;
    tblPessoastipo_ie: TStringField;
    tblPessoasconsumidor_final: TStringField;
    tblPessoasinstrucoes1: TStringField;
    tblPessoasinstrucoes2: TStringField;
    tblPessoasidonline: TIntegerField;
    tblPessoasatb: TStringField;
    tblPessoastipopessoa: TStringField;
    tblPessoasresponsavel: TStringField;
    tblPessoassimples: TBooleanField;
    tblPessoassimei: TBooleanField;
    tblPessoassintegra: TBooleanField;
    tblPessoasjuridica: TBooleanField;
    tblPessoassintegrainativo: TBooleanField;
    qryNFe: TUniQuery;
    qryIBPT: TUniQuery;
    qryIBPTcodigo: TStringField;
    qryIBPTtipo: TIntegerField;
    qryIBPTdecricao: TStringField;
    qryIBPTnacionalfederal: TFloatField;
    qryIBPTimportadosfederal: TFloatField;
    qryIBPTestadual: TFloatField;
    qryIBPTmunicipal: TFloatField;
    qryIBPTvigenciainicio: TDateField;
    qryIBPTvigenciafim: TDateField;
    qryIBPTchave: TStringField;
    qryIBPTversao: TStringField;
    qryIBPTfonte: TStringField;
    qryTransportadoracodigo: TStringField;
    qryTransportadoranome: TStringField;
    qryTransportadoraendereco: TStringField;
    qryTransportadorabairro: TStringField;
    qryTransportadoracidade: TStringField;
    qryTransportadorauf: TStringField;
    qryTransportadoracep: TStringField;
    qryTransportadoracomplemento: TStringField;
    qryTransportadoratelefone1: TStringField;
    qryTransportadoraemail: TStringField;
    qryTransportadorarg: TStringField;
    qryTransportadoracpf: TStringField;
    qryTransportadorafiliacao: TStringField;
    qryTransportadoraestadocivil: TStringField;
    qryTransportadoraconjuge: TStringField;
    qryTransportadoraprofissao: TStringField;
    qryTransportadoraempresa: TStringField;
    qryTransportadorarenda: TFloatField;
    qryTransportadoralimite: TFloatField;
    qryTransportadoraref1: TStringField;
    qryTransportadoraref2: TStringField;
    qryTransportadoracodvendedor: TStringField;
    qryTransportadoradata_cadastro: TDateField;
    qryTransportadoradata_ultimacompra: TDateField;
    qryTransportadoraobs1: TStringField;
    qryTransportadoraobs2: TStringField;
    qryTransportadoraobs3: TStringField;
    qryTransportadoraobs4: TStringField;
    qryTransportadoraobs5: TStringField;
    qryTransportadoraobs6: TStringField;
    qryTransportadoranascimento: TStringField;
    qryTransportadoracodregiao: TStringField;
    qryTransportadoracodconvenio: TStringField;
    qryTransportadoracodusuario: TStringField;
    qryTransportadoranumero: TStringField;
    qryTransportadorarg_orgao: TStringField;
    qryTransportadorarg_estado: TStringField;
    qryTransportadorarg_emissao: TDateField;
    qryTransportadorasexo: TStringField;
    qryTransportadoraprevisao: TDateField;
    qryTransportadoracnae: TStringField;
    qryTransportadoracod_municipio_ibge: TStringField;
    qryTransportadoraibge: TStringField;
    qryTransportadoratamanho_calca: TStringField;
    qryTransportadoratamanho_blusa: TStringField;
    qryTransportadoratamanho_sapato: TStringField;
    qryTransportadoracorresp_endereco: TStringField;
    qryTransportadoracorresp_bairro: TStringField;
    qryTransportadoracorresp_cidade: TStringField;
    qryTransportadoracorresp_uf: TStringField;
    qryTransportadoracorresp_cep: TStringField;
    qryTransportadoracorresp_complemento: TStringField;
    qryTransportadorarg_produtor: TStringField;
    qryTransportadoraresp1_nome: TStringField;
    qryTransportadoraresp1_cpf: TStringField;
    qryTransportadoraresp1_rg: TStringField;
    qryTransportadoraresp1_profissao: TStringField;
    qryTransportadoraresp1_estado_civil: TStringField;
    qryTransportadoraresp1_endereco: TStringField;
    qryTransportadoraresp1_bairro: TStringField;
    qryTransportadoraresp1_cidade: TStringField;
    qryTransportadoraresp1_uf: TStringField;
    qryTransportadoraresp1_cep: TStringField;
    qryTransportadoraresp2_nome: TStringField;
    qryTransportadoraresp2_cpf: TStringField;
    qryTransportadoraresp2_rg: TStringField;
    qryTransportadoraresp2_profissao: TStringField;
    qryTransportadoraresp2_estado_civil: TStringField;
    qryTransportadoraresp2_endereco: TStringField;
    qryTransportadoraresp2_bairro: TStringField;
    qryTransportadoraresp2_cidade: TStringField;
    qryTransportadoraresp2_uf: TStringField;
    qryTransportadoraresp2_cep: TStringField;
    qryTransportadorafoto: TStringField;
    qryTransportadoracondpgto: TStringField;
    qryTransportadoracpais: TStringField;
    qryTransportadoradpais: TStringField;
    qryTransportadoratipo_ie: TStringField;
    qryTransportadoraconsumidor_final: TStringField;
    qryTransportadorainstrucoes1: TStringField;
    qryTransportadorainstrucoes2: TStringField;
    qryTransportadoraidonline: TIntegerField;
    qryTransportadoraatb: TStringField;
    qryTransportadoratipopessoa: TStringField;
    qryTransportadoraresponsavel: TStringField;
    qryTransportadorasimples: TBooleanField;
    qryTransportadorasimei: TBooleanField;
    qryTransportadorasintegra: TBooleanField;
    qryTransportadorajuridica: TBooleanField;
    qryTransportadorasintegrainativo: TBooleanField;
    qryPessoascodigo: TStringField;
    qryPessoasnome: TStringField;
    qryPessoasendereco: TStringField;
    qryPessoasbairro: TStringField;
    qryPessoascidade: TStringField;
    qryPessoasuf: TStringField;
    qryPessoascep: TStringField;
    qryPessoascomplemento: TStringField;
    qryPessoastelefone1: TStringField;
    qryPessoasemail: TStringField;
    qryPessoasrg: TStringField;
    qryPessoascpf: TStringField;
    qryPessoasfiliacao: TStringField;
    qryPessoasestadocivil: TStringField;
    qryPessoasconjuge: TStringField;
    qryPessoasprofissao: TStringField;
    qryPessoasempresa: TStringField;
    qryPessoasrenda: TFloatField;
    qryPessoaslimite: TFloatField;
    qryPessoasref1: TStringField;
    qryPessoasref2: TStringField;
    qryPessoascodvendedor: TStringField;
    qryPessoasdata_cadastro: TDateField;
    qryPessoasdata_ultimacompra: TDateField;
    qryPessoasobs1: TStringField;
    qryPessoasobs2: TStringField;
    qryPessoasobs3: TStringField;
    qryPessoasobs4: TStringField;
    qryPessoasobs5: TStringField;
    qryPessoasobs6: TStringField;
    qryPessoasnascimento: TStringField;
    qryPessoascodregiao: TStringField;
    qryPessoascodconvenio: TStringField;
    qryPessoascodusuario: TStringField;
    qryPessoasnumero: TStringField;
    qryPessoasrg_orgao: TStringField;
    qryPessoasrg_estado: TStringField;
    qryPessoasrg_emissao: TDateField;
    qryPessoassexo: TStringField;
    qryPessoasprevisao: TDateField;
    qryPessoascnae: TStringField;
    qryPessoascod_municipio_ibge: TStringField;
    qryPessoasibge: TStringField;
    qryPessoastamanho_calca: TStringField;
    qryPessoastamanho_blusa: TStringField;
    qryPessoastamanho_sapato: TStringField;
    qryPessoascorresp_endereco: TStringField;
    qryPessoascorresp_bairro: TStringField;
    qryPessoascorresp_cidade: TStringField;
    qryPessoascorresp_uf: TStringField;
    qryPessoascorresp_cep: TStringField;
    qryPessoascorresp_complemento: TStringField;
    qryPessoasrg_produtor: TStringField;
    qryPessoasresp1_nome: TStringField;
    qryPessoasresp1_cpf: TStringField;
    qryPessoasresp1_rg: TStringField;
    qryPessoasresp1_profissao: TStringField;
    qryPessoasresp1_estado_civil: TStringField;
    qryPessoasresp1_endereco: TStringField;
    qryPessoasresp1_bairro: TStringField;
    qryPessoasresp1_cidade: TStringField;
    qryPessoasresp1_uf: TStringField;
    qryPessoasresp1_cep: TStringField;
    qryPessoasresp2_nome: TStringField;
    qryPessoasresp2_cpf: TStringField;
    qryPessoasresp2_rg: TStringField;
    qryPessoasresp2_profissao: TStringField;
    qryPessoasresp2_estado_civil: TStringField;
    qryPessoasresp2_endereco: TStringField;
    qryPessoasresp2_bairro: TStringField;
    qryPessoasresp2_cidade: TStringField;
    qryPessoasresp2_uf: TStringField;
    qryPessoasresp2_cep: TStringField;
    qryPessoasfoto: TStringField;
    qryPessoascondpgto: TStringField;
    qryPessoascpais: TStringField;
    qryPessoasdpais: TStringField;
    qryPessoastipo_ie: TStringField;
    qryPessoasconsumidor_final: TStringField;
    qryPessoasinstrucoes1: TStringField;
    qryPessoasinstrucoes2: TStringField;
    qryPessoasidonline: TIntegerField;
    qryPessoasatb: TStringField;
    qryPessoastipopessoa: TStringField;
    qryPessoasresponsavel: TStringField;
    qryPessoassimples: TBooleanField;
    qryPessoassimei: TBooleanField;
    qryPessoassintegra: TBooleanField;
    qryPessoasjuridica: TBooleanField;
    qryPessoassintegrainativo: TBooleanField;
    tblEmitente: TUniTable;
    tblEmitentecodigo: TStringField;
    tblEmitentefilial: TStringField;
    tblEmitentenotafiscal: TIntegerField;
    tblEmitenteendereco: TStringField;
    tblEmitentecidade: TStringField;
    tblEmitenteuf: TStringField;
    tblEmitentecep: TStringField;
    tblEmitentetelefone: TStringField;
    tblEmitentecnpj: TStringField;
    tblEmitenteie: TStringField;
    tblEmitenteseqnf: TIntegerField;
    tblEmitentefax: TStringField;
    tblEmitenteobs1: TStringField;
    tblEmitenteobs2: TStringField;
    tblEmitentecontribuinte_ipi: TStringField;
    tblEmitentesubstituto_tributario: TStringField;
    tblEmitenteempresa_estadual: TStringField;
    tblEmitenteoptante_simples: TStringField;
    tblEmitenteoptante_super_simples: TStringField;
    tblEmitenteecf: TStringField;
    tblEmitentetipo: TIntegerField;
    tblEmitenteipi: TFloatField;
    tblEmitenteiss: TFloatField;
    tblEmitentenumero: TStringField;
    tblEmitenteresponsavel: TStringField;
    tblEmitentecomplemento: TStringField;
    tblEmitentebairro: TStringField;
    tblEmitentefarmacia_resp_tecnico: TStringField;
    tblEmitentefarmacia_crf: TStringField;
    tblEmitentefarmacia_cpf: TStringField;
    tblEmitentefarmcia_data: TDateField;
    tblEmitentefarmacia_uf: TStringField;
    tblEmitentefarmacia_senha: TStringField;
    tblEmitentefarmacia_email: TStringField;
    tblEmitentefarmacia_login: TStringField;
    tblEmitentefarmacia_envio: TStringField;
    tblEmitenteconhecimento: TIntegerField;
    tblEmitenteindustria: TStringField;
    tblEmitentefarmacia_numerolicenca: TStringField;
    tblEmitentecod_municipio_ibge: TStringField;
    tblEmitenteibge: TStringField;
    tblEmitentepis: TFloatField;
    tblEmitentecofins: TFloatField;
    tblEmitenteemail: TStringField;
    tblEmitenteatividade: TStringField;
    tblEmitentecontador_cod_municipio_ibge: TStringField;
    tblEmitentecontador_nome: TStringField;
    tblEmitentecontador_cpf: TStringField;
    tblEmitentecontador_crc: TStringField;
    tblEmitentecontador_cnpj: TStringField;
    tblEmitentecontador_cep: TStringField;
    tblEmitentecontador_endereco: TStringField;
    tblEmitentecontador_numero: TStringField;
    tblEmitentecontador_complemento: TStringField;
    tblEmitentecontador_bairro: TStringField;
    tblEmitentecontador_fone: TStringField;
    tblEmitentecontador_fax: TStringField;
    tblEmitentecontador_email: TStringField;
    tblEmitenteinsc_municipal: TStringField;
    tblEmitentedata_abertura: TDateField;
    tblEmitentecnae: TStringField;
    tblEmitentecrt: TStringField;
    tblEmitentecontador_cidade: TStringField;
    tblEmitentecontador_cod_municipio: TStringField;
    tblEmitentecontador_uf: TStringField;
    tblEmitentepermite_credito: TIntegerField;
    tblEmitentefantasia: TStringField;
    tblEmitentedfixas: TFloatField;
    tblEmitentetipocalculo: TIntegerField;
    tblEmitenteserie_cte: TStringField;
    tblEmitenteseq_cte: TStringField;
    tblEmitentecod_pais: TStringField;
    tblEmitentepais: TStringField;
    tblEmitentehomepage: TStringField;
    tblEmitenteaidf: TStringField;
    tblEmitenteninicial: TStringField;
    tblEmitentenfinal: TStringField;
    tblEmitenten_nf_d: TStringField;
    tblEmitentevalidade: TStringField;
    tblEmitenterntrc: TStringField;
    tblEmitenteserie_mdfe: TIntegerField;
    tblEmitentenumero_mdfe: TIntegerField;
    tblEmitentemail_server: TStringField;
    tblEmitentemail_porta: TStringField;
    tblEmitentemail_username: TStringField;
    tblEmitentemail_password: TStringField;
    tblEmitentemail_cabecalho: TStringField;
    tblEmitentemail_assunto: TStringField;
    tblEmitentemail_ssl: TStringField;
    tblEmitentemail_tls: TStringField;
    tblEmitentereptec_cnpj: TStringField;
    tblEmitentereptec_contato: TStringField;
    tblEmitentereptec_email: TStringField;
    tblEmitentereptec_fone: TStringField;
    tblEmitentereptec_idcsrt: TIntegerField;
    tblEmitentereptec_csrt: TStringField;
    tblEmitentepercentual_credito_icms: TFloatField;
    tblEmitenteidonline: TIntegerField;
    tblEmitentecomentarios: TStringField;
    tblEmitentedatahora_inicial: TDateField;
    tblEmitentedatahora_final: TDateField;
    tblEmitentedata_inventario: TDateField;
    tblEmitenteestoque: TFloatField;
    tblEmitentevalor: TFloatField;
    tblEmitentecpf: TStringField;
    tblEmitenterg: TStringField;
    tblEmitentedia_vencimento_chave: TStringField;
    tblEmitenteemail_financeiro: TStringField;
    tblEmitenteatb: TStringField;
    tblEmitenteserie_nfe: TIntegerField;
    tblEmitenteseq_nfe: TIntegerField;
    tblEmitentelogo: TStringField;
    tblEmitentecodigoibge: TStringField;
    tblEmitenteseq_nfce: TIntegerField;
    tblEmitenteserie_nfce: TIntegerField;
    tblSalvaItens: TUniTable;
    tblSalvaItensdet_nitem: TIntegerField;
    tblSalvaItensdet_prod_cprod: TStringField;
    tblSalvaItensdet_prod_cean: TStringField;
    tblSalvaItensdet_prod_xprod: TStringField;
    tblSalvaItensdet_prod_cfop: TIntegerField;
    tblSalvaItensdet_prod_ucom: TStringField;
    tblSalvaItensdet_prod_qcom: TFloatField;
    tblSalvaItensdet_prod_vuncom: TFloatField;
    tblSalvaItensdet_prod_vprod: TFloatField;
    tblSalvaItensdet_prod_ceantrib: TStringField;
    tblSalvaItensdet_prod_utrib: TStringField;
    tblSalvaItensdet_prod_qtrib: TFloatField;
    tblSalvaItensdet_prod_vuntrib: TFloatField;
    tblSalvaItensdet_prod_indtot: TIntegerField;
    tblSalvaItensdet_prod_imposto_icms: TStringField;
    tblSalvaItensdet_prod_imposto_icms_orig: TFloatField;
    tblSalvaItensdet_prod_imposto_icms_cst: TFloatField;
    tblSalvaItensdet_prod_imposto_icms_modbc: TFloatField;
    tblSalvaItensdet_prod_imposto_icms_vbc: TFloatField;
    tblSalvaItensdet_prod_imposto_icms_picms: TFloatField;
    tblSalvaItensdet_prod_imposto_icms_vicms: TFloatField;
    tblSalvaItensdet_prod_imposto_ipi: TStringField;
    tblSalvaItensdet_prod_imposto_ipi_cenq: TFloatField;
    tblSalvaItensdet_prod_imposto_ipi_ipint: TFloatField;
    tblSalvaItensdet_prod_imposto_ipi_cst: TFloatField;
    tblSalvaItensdet_prod_imposto_pis: TStringField;
    tblSalvaItensdet_prod_imposto_pis_pisaliq_cst: TFloatField;
    tblSalvaItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField;
    tblSalvaItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField;
    tblSalvaItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField;
    tblSalvaItensdet_prod_imposto_cofins: TStringField;
    tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField;
    tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField;
    tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField;
    tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField;
    tblSalvaItenscodigo: TIntegerField;
    tblSalvaItensinfnfe_chave: TStringField;
    tblSalvaItenside_mod: TIntegerField;
    tblSalvaItenside_serie: TIntegerField;
    tblSalvaItenside_nnf: TIntegerField;
    tblSalvaItensdet_prod_vtotalitem: TFloatField;
    tblSalvaItenscsosn: TIntegerField;
    tblSalvaItensAliquota_STEfetivo: TFloatField;
    tblItensdet_prod_ncm: TStringField;
    tblSalvaItensnitemped: TStringField;
    tblSalvaItensxped: TStringField;
    tblSalvaItensdet_prod_vdesc: TFloatField;
    tblSalvaItensdet_prod_voutro: TFloatField;
    tblSalvaItensdet_prod_vfrete: TFloatField;
    tblSalvaItensdet_prod_vseg: TFloatField;
    tblSalvaItensdet_prod_ncm: TStringField;
    qryItensxped: TStringField;
    qryItensnitemped: TStringField;
    qryItensdet_prod_ncm: TStringField;
    tblNFeinfnfe_versao: TStringField;
    tblNFeinfnfe_chave: TStringField;
    tblNFeide_cuf: TIntegerField;
    tblNFeide_cnf: TIntegerField;
    tblNFeide_natop: TStringField;
    tblNFeide_mod: TIntegerField;
    tblNFeide_serie: TIntegerField;
    tblNFeide_nnf: TIntegerField;
    tblNFeide_dhemi: TDateTimeField;
    tblNFeide_dhsaient: TDateTimeField;
    tblNFeide_tpnf: TIntegerField;
    tblNFeide_iddest: TIntegerField;
    tblNFeide_cmunfg: TIntegerField;
    tblNFeide_tpimp: TIntegerField;
    tblNFeide_tpemis: TIntegerField;
    tblNFeide_cdv: TIntegerField;
    tblNFeide_tpamb: TIntegerField;
    tblNFeide_finnfe: TIntegerField;
    tblNFeide_indfinal: TIntegerField;
    tblNFeide_indpres: TIntegerField;
    tblNFeide_procemi: TIntegerField;
    tblNFeide_verproc: TStringField;
    tblNFeemit_xnome: TStringField;
    tblNFeemit_xfant: TStringField;
    tblNFeemit_enderemit_xlgr: TStringField;
    tblNFeemit_enderemit_nro: TStringField;
    tblNFeemit_enderemit_xbairro: TStringField;
    tblNFeemit_enderemit_cmun: TIntegerField;
    tblNFeemit_enderemit_xmun: TStringField;
    tblNFeemit_enderemit_uf: TStringField;
    tblNFeemit_enderemit_cep: TIntegerField;
    tblNFeemit_enderemit_cpais: TIntegerField;
    tblNFeemit_enderemit_xpais: TStringField;
    tblNFeemit_crt: TIntegerField;
    tblNFedest_xnome: TStringField;
    tblNFedest_xfant: TStringField;
    tblNFedest_enderdest_xlgr: TStringField;
    tblNFedest_enderdest_nro: TStringField;
    tblNFedest_enderdest_xbairro: TStringField;
    tblNFedest_enderdest_cmun: TIntegerField;
    tblNFedest_enderdest_xmun: TStringField;
    tblNFedest_enderdest_uf: TStringField;
    tblNFedest_enderdest_cep: TIntegerField;
    tblNFedest_enderdest_cpais: TIntegerField;
    tblNFedest_enderdest_xpais: TStringField;
    tblNFedest_indiedest: TIntegerField;
    tblNFedest_ie: TIntegerField;
    tblNFedest_email: TStringField;
    tblNFetotal_icmstot_vbc: TFloatField;
    tblNFetotal_icmstot_vicms: TFloatField;
    tblNFetotal_icmstot_vicmsdeson: TFloatField;
    tblNFetotal_icmstot_vfcpufdest: TFloatField;
    tblNFetotal_icmstot_vicmsufdest: TFloatField;
    tblNFetotal_icmstot_vicmsufremet: TFloatField;
    tblNFetotal_icmstot_vfcp: TFloatField;
    tblNFetotal_icmstot_vbcst: TFloatField;
    tblNFetotal_icmstot_vst: TFloatField;
    tblNFetotal_icmstot_vfcpst: TFloatField;
    tblNFetotal_icmstot_vfcpstret: TFloatField;
    tblNFetotal_icmstot_vprod: TFloatField;
    tblNFetotal_icmstot_vfrete: TFloatField;
    tblNFetotal_icmstot_vseg: TFloatField;
    tblNFetotal_icmstot_vdesc: TFloatField;
    tblNFetotal_icmstot_vii: TFloatField;
    tblNFetotal_icmstot_vipi: TFloatField;
    tblNFetotal_icmstot_vipidevol: TFloatField;
    tblNFetotal_icmstot_vpis: TFloatField;
    tblNFetotal_icmstot_vcofins: TFloatField;
    tblNFetotal_icmstot_voutro: TFloatField;
    tblNFetotal_icmstot_vnf: TFloatField;
    tblNFetransp_modfrete: TIntegerField;
    tblNFetransp_transporta_xnome: TStringField;
    tblNFetransp_transporta_xender: TStringField;
    tblNFetransp_transporta_xmun: TStringField;
    tblNFetransp_transporta_uf: TStringField;
    tblNFetransp_vol_qvol: TIntegerField;
    tblNFetransp_vol_esp: TStringField;
    tblNFetransp_vol_marca: TStringField;
    tblNFetransp_vol_pesol: TFloatField;
    tblNFetransp_vol_pesob: TFloatField;
    tblNFecobr_fat_nfat: TStringField;
    tblNFecobr_fat_vorig: TFloatField;
    tblNFecobr_fat_vdesc: TFloatField;
    tblNFecobr_fat_vliq: TFloatField;
    tblNFepag_detpag_indpag: TIntegerField;
    tblNFepag_detpag_tpag: TIntegerField;
    tblNFepag_detpag_vpag: TFloatField;
    tblNFepag_detpag_card_tpintegra: TIntegerField;
    tblNFepag_detpag_card_cnpj: TIntegerField;
    tblNFepag_detpag_card_tband: TIntegerField;
    tblNFepag_detpag_card_caut: TStringField;
    tblNFepag_vtroco: TFloatField;
    tblNFeinfadic_infcpl: TStringField;
    tblNFeinfadic_infadfisco: TStringField;
    tblNFeinfresptec_xcontato: TStringField;
    tblNFeinfresptec_email: TStringField;
    tblNFeinfresptec_fone: TStringField;
    tblNFesignature: TMemoField;
    tblNFeprotnfe: TMemoField;
    tblNFecodigo: TIntegerField;
    tblNFecad_status: TIntegerField;
    tblNFecad_cfop: TIntegerField;
    tblNFeemit_cnpj: TStringField;
    tblNFedest_cnpj: TStringField;
    tblNFeemit_enderemit_fone: TStringField;
    tblNFedest_enderdest_fone: TStringField;
    tblNFetransp_transporta_cnpj: TStringField;
    tblNFeinfresptec_cnpj: TStringField;
    tblNFetotal_icmstot_vTotTrib: TFloatField;
    tblNFexped: TStringField;
    tblNFeemit_im: TStringField;
    tblNFeemit_cnae: TStringField;
    tblNFeemit_enderemit_xcpl: TStringField;
    tblNFedest_Enderdest_xcpl: TStringField;
    tblNFedest_im: TStringField;
    tblNFecad_integracao: TIntegerField;
    tblNFecad_integracao_dados: TStringField;
    tblNFetransp_transporta_ie: TStringField;
    tblNFeemit_ie: TStringField;
    qryNFeinfnfe_versao: TStringField;
    qryNFeinfnfe_chave: TStringField;
    qryNFeide_cuf: TIntegerField;
    qryNFeide_cnf: TIntegerField;
    qryNFeide_natop: TStringField;
    qryNFeide_mod: TIntegerField;
    qryNFeide_serie: TIntegerField;
    qryNFeide_nnf: TIntegerField;
    qryNFeide_dhemi: TDateTimeField;
    qryNFeide_dhsaient: TDateTimeField;
    qryNFeide_tpnf: TIntegerField;
    qryNFeide_iddest: TIntegerField;
    qryNFeide_cmunfg: TIntegerField;
    qryNFeide_tpimp: TIntegerField;
    qryNFeide_tpemis: TIntegerField;
    qryNFeide_cdv: TIntegerField;
    qryNFeide_tpamb: TIntegerField;
    qryNFeide_finnfe: TIntegerField;
    qryNFeide_indfinal: TIntegerField;
    qryNFeide_indpres: TIntegerField;
    qryNFeide_procemi: TIntegerField;
    qryNFeide_verproc: TStringField;
    qryNFeemit_xnome: TStringField;
    qryNFeemit_xfant: TStringField;
    qryNFeemit_enderemit_xlgr: TStringField;
    qryNFeemit_enderemit_nro: TStringField;
    qryNFeemit_enderemit_xbairro: TStringField;
    qryNFeemit_enderemit_cmun: TIntegerField;
    qryNFeemit_enderemit_xmun: TStringField;
    qryNFeemit_enderemit_uf: TStringField;
    qryNFeemit_enderemit_cep: TIntegerField;
    qryNFeemit_enderemit_cpais: TIntegerField;
    qryNFeemit_enderemit_xpais: TStringField;
    qryNFeemit_crt: TIntegerField;
    qryNFedest_xnome: TStringField;
    qryNFedest_xfant: TStringField;
    qryNFedest_enderdest_xlgr: TStringField;
    qryNFedest_enderdest_nro: TStringField;
    qryNFedest_enderdest_xbairro: TStringField;
    qryNFedest_enderdest_cmun: TIntegerField;
    qryNFedest_enderdest_xmun: TStringField;
    qryNFedest_enderdest_uf: TStringField;
    qryNFedest_enderdest_cep: TIntegerField;
    qryNFedest_enderdest_cpais: TIntegerField;
    qryNFedest_enderdest_xpais: TStringField;
    qryNFedest_indiedest: TIntegerField;
    qryNFedest_ie: TIntegerField;
    qryNFedest_email: TStringField;
    qryNFetotal_icmstot_vbc: TFloatField;
    qryNFetotal_icmstot_vicms: TFloatField;
    qryNFetotal_icmstot_vicmsdeson: TFloatField;
    qryNFetotal_icmstot_vfcpufdest: TFloatField;
    qryNFetotal_icmstot_vicmsufdest: TFloatField;
    qryNFetotal_icmstot_vicmsufremet: TFloatField;
    qryNFetotal_icmstot_vfcp: TFloatField;
    qryNFetotal_icmstot_vbcst: TFloatField;
    qryNFetotal_icmstot_vst: TFloatField;
    qryNFetotal_icmstot_vfcpst: TFloatField;
    qryNFetotal_icmstot_vfcpstret: TFloatField;
    qryNFetotal_icmstot_vprod: TFloatField;
    qryNFetotal_icmstot_vfrete: TFloatField;
    qryNFetotal_icmstot_vseg: TFloatField;
    qryNFetotal_icmstot_vdesc: TFloatField;
    qryNFetotal_icmstot_vii: TFloatField;
    qryNFetotal_icmstot_vipi: TFloatField;
    qryNFetotal_icmstot_vipidevol: TFloatField;
    qryNFetotal_icmstot_vpis: TFloatField;
    qryNFetotal_icmstot_vcofins: TFloatField;
    qryNFetotal_icmstot_voutro: TFloatField;
    qryNFetotal_icmstot_vnf: TFloatField;
    qryNFetransp_modfrete: TIntegerField;
    qryNFetransp_transporta_xnome: TStringField;
    qryNFetransp_transporta_xender: TStringField;
    qryNFetransp_transporta_xmun: TStringField;
    qryNFetransp_transporta_uf: TStringField;
    qryNFetransp_vol_qvol: TIntegerField;
    qryNFetransp_vol_esp: TStringField;
    qryNFetransp_vol_marca: TStringField;
    qryNFetransp_vol_pesol: TFloatField;
    qryNFetransp_vol_pesob: TFloatField;
    qryNFecobr_fat_nfat: TStringField;
    qryNFecobr_fat_vorig: TFloatField;
    qryNFecobr_fat_vdesc: TFloatField;
    qryNFecobr_fat_vliq: TFloatField;
    qryNFepag_detpag_indpag: TIntegerField;
    qryNFepag_detpag_tpag: TIntegerField;
    qryNFepag_detpag_vpag: TFloatField;
    qryNFepag_detpag_card_tpintegra: TIntegerField;
    qryNFepag_detpag_card_cnpj: TIntegerField;
    qryNFepag_detpag_card_tband: TIntegerField;
    qryNFepag_detpag_card_caut: TStringField;
    qryNFepag_vtroco: TFloatField;
    qryNFeinfadic_infcpl: TStringField;
    qryNFeinfadic_infadfisco: TStringField;
    qryNFeinfresptec_xcontato: TStringField;
    qryNFeinfresptec_email: TStringField;
    qryNFeinfresptec_fone: TStringField;
    qryNFesignature: TMemoField;
    qryNFeprotnfe: TMemoField;
    qryNFecodigo: TIntegerField;
    qryNFecad_status: TIntegerField;
    qryNFecad_cfop: TIntegerField;
    qryNFeemit_cnpj: TStringField;
    qryNFedest_cnpj: TStringField;
    qryNFeemit_enderemit_fone: TStringField;
    qryNFedest_enderdest_fone: TStringField;
    qryNFetransp_transporta_cnpj: TStringField;
    qryNFeinfresptec_cnpj: TStringField;
    qryNFetotal_icmstot_vTotTrib: TFloatField;
    qryNFexped: TStringField;
    qryNFeemit_im: TStringField;
    qryNFeemit_cnae: TStringField;
    qryNFeemit_enderemit_xcpl: TStringField;
    qryNFedest_Enderdest_xcpl: TStringField;
    qryNFedest_im: TStringField;
    qryNFecad_integracao: TIntegerField;
    qryNFecad_integracao_dados: TStringField;
    qryNFetransp_transporta_ie: TStringField;
    qryNFeemit_ie: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCFOPPropertiesChange(Sender: TObject);
    procedure edtDestPropertiesChange(Sender: TObject);
    procedure edtTranspPropertiesChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtMovimentoPropertiesChange(Sender: TObject);
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure grdProdutosViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure edtProdutoPropertiesChange(Sender: TObject);
    procedure edtQuantidadePropertiesChange(Sender: TObject);
    procedure edtValorPropertiesChange(Sender: TObject);
    procedure chkTodasPessoasPropertiesChange(Sender: TObject);
    procedure edtNumeroNFEnter(Sender: TObject);
    procedure edtSerieEnter(Sender: TObject);
    procedure grdProdutosViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure edtPagamentoPropertiesChange(Sender: TObject);
    procedure edtXPEDPropertiesChange(Sender: TObject);
  private
    procedure AjustaCFOP(Tipo: string);
    procedure GravarDadosSeNulo(Campo: TField; Valor: Variant);
  public
    IDDest: integer;
    procedure FiltraCFOP;
  end;

var
  frmCadastroNFe: TfrmCadastroNFe;

implementation

uses
  uDM, uFuncoes;

{$R *.dfm}

{ TForm1 }

procedure TfrmCadastroNFe.FiltraCFOP;
var
  UFOrigem, UFDestino: string;
  ForaEstado: boolean;
begin
  UFOrigem := tblEmitenteuf.AsString;
  UFDestino := tblPessoasuf.AsString;

  if UFDestino <> '' then
  begin
    ForaEstado := UFOrigem <> UFDestino;

    case edtMovimento.ItemIndex of
      0:
        if ForaEstado then
          AjustaCFOP('EFE')
        else
          AjustaCFOP('EDE');
      1:
        if ForaEstado then
          AjustaCFOP('SFE')
        else
          AjustaCFOP('SDE');
    else
      AjustaCFOP('ALL');
    end;
  end
  else
  begin
    case edtMovimento.ItemIndex of
      0:
        AjustaCFOP('ENT');
      1:
        AjustaCFOP('SAI');
    else
      AjustaCFOP('ALL');
    end;
  end;
end;

procedure TfrmCadastroNFe.AjustaCFOP(Tipo: string);
begin
  case AnsiIndexStr(Tipo, ['SDE', 'SFE', 'SE', 'EDE', 'EFE', 'EE', 'ALL', 'ENT', 'SAI']) of
    0:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 5000;
        qryCFOP.ParamByName('pFIM').Value := 5999;
        IDDest := 1;
      end;
    1:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 6000;
        qryCFOP.ParamByName('pFIM').Value := 6999;
        IDDest := 2;
      end;
    2:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 7000;
        qryCFOP.ParamByName('pFIM').Value := 7999;
        IDDest := 3;
      end;
    3:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 1000;
        qryCFOP.ParamByName('pFIM').Value := 1999;
        IDDest := 1;
      end;
    4:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 2000;
        qryCFOP.ParamByName('pFIM').Value := 2999;
        IDDest := 2;
      end;
    5:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 3000;
        qryCFOP.ParamByName('pFIM').Value := 3999;
        IDDest := 3;
      end;
    6:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 0;
        qryCFOP.ParamByName('pFIM').Value := 8000;
        IDDest := 1;
      end;
    7:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 0;
        qryCFOP.ParamByName('pFIM').Value := 3999;
        IDDest := 1;
      end;
    8:
      begin
        qryCFOP.ParamByName('pINICIO').Value := 4000;
        qryCFOP.ParamByName('pFIM').Value := 8000;
        IDDest := 1;
      end;
  end;
  qryCFOP.Refresh();
end;

procedure TfrmCadastroNFe.btnSairClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmCadastroNFe.btnSalvarClick(Sender: TObject);
begin
  qryItens.First();
  tblSalvaItens.Open();

  while not qryItens.Eof do
  begin
    tblSalvaItens.Append();

    DM.CopiaDataSet(qryItens, tblSalvaItens);

    tblSalvaItenside_mod.Value := 55;
    tblSalvaItenside_serie.Value := edtSerie.Value;

    qryAlteraEstoque.ParamByName('pESTOQUE').Value := tblSalvaItensdet_prod_qcom.AsFloat;
    qryAlteraEstoque.ParamByName('pCODIGO').Value := tblSalvaItensdet_prod_cprod.AsString;

    tblSalvaItensdet_prod_utrib.Value := tblSalvaItensdet_prod_ucom.Value;
    tblSalvaItensdet_prod_qtrib.Value := tblSalvaItensdet_prod_qcom.Value;

    qryAlteraEstoque.ExecSQL();

    tblSalvaItenside_nnf.Value := edtNumeroNF.Value;

    tblSalvaItens.Post();
    qryItens.Next();
  end;

  tblNFepag_detpag_indpag.Value := edtPagamento.ItemIndex;
  tblNFeide_tpnf.Value := edtMovimento.ItemIndex;
  tblNFeide_mod.Value := 55;
  tblNFeide_cuf.Value := RetornaCUF(tblEmitenteuf.Value);
  tblNFeide_cmunfg.Value := tblEmitentecodigoibge.AsInteger;
  tblNFeide_iddest.Value := IDDest;
  tblNFeide_tpimp.Value := 1;
  tblNFeide_tpemis.Value := 1;
  tblNFeide_tpamb.Value := DM.ACBrNFe.Configuracoes.WebServices.AmbienteCodigo;
  tblNFeide_finnfe.Value := edtFinalidade.ItemIndex;
  tblNFeide_indpres.Value := 9;

  // gravar dados do emitente
  begin
    tblEmitente.Open();

    tblNFeemit_CNPJ.AsString := tblEmitentecnpj.AsString;
    tblNFeemit_xNome.AsString := tblEmitentefilial.AsString;
    tblNFeemit_xFant.AsString := tblEmitentefantasia.AsString;
    tblNFeemit_enderEmit_xLgr.AsString := tblEmitenteendereco.AsString;
    tblNFeemit_enderEmit_nro.AsString := tblEmitentenumero.AsString;
    tblNFeemit_enderEmit_xBairro.AsString := tblEmitentebairro.AsString;
    tblNFeemit_enderEmit_cMun.AsInteger := DM.RetornaCMun(tblEmitentecidade.AsString);
    tblNFeemit_enderEmit_xMun.AsString := tblEmitentecidade.AsString;
    tblNFeemit_enderEmit_UF.AsString := tblEmitenteuf.AsString;
    tblNFeemit_enderEmit_CEP.AsInteger := tblEmitentecep.AsInteger;
    tblNFeemit_enderEmit_cPais.AsInteger := 1058;
    tblNFeemit_enderEmit_xPais.AsString := 'BRASIL';
    tblNFeemit_enderEmit_fone.AsString := OnlyNumber(tblEmitentetelefone.AsString);
    tblNFeemit_IE.AsString := OnlyNumber(tblEmitenterg.AsString);
    tblNFeemit_CRT.AsInteger := tblEmitentecrt.AsInteger;
    tblNFeemit_cnae.Value := tblEmitentecnae.Value;
  end;

  //gravar dados do destinatario
  begin
    tblPessoas.Close();
    tblPessoas.Open();
    tblPessoas.Locate('cpf', OnlyNumber(lblDestCNPJ.Caption), []);

    tblNFedest_CNPJ.AsString := tblPessoascpf.AsString;
    tblNFedest_xNome.AsString := tblPessoasnome.AsString;
    tblNFedest_enderDest_xLgr.AsString := tblPessoasendereco.AsString;
    tblNFedest_enderDest_nro.AsString := tblPessoasnumero.AsString;
    tblNFedest_enderDest_xBairro.AsString := tblPessoasbairro.AsString;
    tblNFedest_enderDest_cMun.AsInteger := DM.RetornaCMun(tblPessoascidade.AsString);
    tblNFedest_enderDest_xMun.AsString := tblPessoascidade.AsString;
    tblNFedest_ie.Value := tblPessoasrg.AsInteger;
    tblNFedest_enderDest_UF.AsString := tblPessoasuf.AsString;
    tblNFedest_enderDest_CEP.AsInteger := StrToInt(OnlyNumber(tblPessoascep.AsString));
    tblNFedest_enderDest_cPais.AsInteger := 1058;
    tblNFedest_enderDest_xPais.AsString := 'BRASIL';
    tblNFedest_enderDest_fone.AsString := tblPessoastelefone1.AsString;

    if (Length(OnlyNumber(tblPessoascpf.AsString)) > 11) then
    begin
      tblNFedest_indIEDest.AsInteger := 1;

      if tblPessoassimples.Value then
      begin
        if tblPessoasSimei.Value then
        begin
          tblNFedest_indIEDest.AsInteger := 2;
        end;

        if tblPessoassintegra.Value then
        begin
          if tblPessoassintegrainativo.Value then
          begin
            tblNFedest_indIEDest.AsInteger := 9;
          end
          else
          begin
            tblNFedest_indIEDest.AsInteger := 1;
            tblNFedest_IE.AsString := tblPessoasrg.AsString;
          end;
        end;
      end;
    end
    else
    begin
      tblNFedest_indIEDest.AsInteger := 9;
    end;
    tblNFedest_email.AsString := tblPessoasemail.AsString;
  end;

  //gravar dados do transporte
  begin
    tblPessoas.Close();
    tblPessoas.Open();
    tblPessoas.Locate('cpf', OnlyNumber(lblTranspCNPJ.Caption), []);

    tblNFetransp_transporta_CNPJ.AsString := tblPessoascpf.AsString;
    tblNFetransp_transporta_xNome.AsString := tblPessoasnome.AsString;
//    tblNFetransp_transporta_IE.AsString := OnlyNumber(tblPessoasrg.AsString);
    tblNFetransp_transporta_xEnder.AsString := tblPessoasendereco.AsString;
    tblNFetransp_transporta_xMun.AsString := tblPessoascidade.AsString;
    tblNFetransp_transporta_UF.AsString := tblPessoasuf.AsString;
  end;

  //verificar itens e totais
  begin
    tblItens.First();

    while not tblItens.Eof do
    begin
      tblNFetotal_icmstot_vbc.Value := tblNFetotal_icmstot_vbc.Value + tblItensdet_prod_imposto_icms_vbc.Value;
      tblNFetotal_icmstot_vicms.Value := tblNFetotal_icmstot_vicms.Value + tblItensdet_prod_imposto_icms_vicms.Value;
      tblNFetotal_icmstot_vbcst.Value := 0;
      tblNFetotal_icmstot_vst.Value := 0;
      tblNFetotal_icmstot_vprod.Value := tblNFetotal_icmstot_vprod.Value + tblItensdet_prod_vprod.Value;
      tblNFetotal_icmstot_vfrete.Value := 0;
      tblNFetotal_icmstot_vseg.Value := 0;
      tblNFetotal_icmstot_vdesc.Value := 0;
      tblNFetotal_icmstot_vii.Value := 0;
      tblNFetotal_icmstot_vipi.Value := 0;
      tblNFetotal_icmstot_vpis.Value := 0;
      tblNFetotal_icmstot_vcofins.Value := 0;
      tblNFetotal_icmstot_voutro.Value := 0;
      tblNFetotal_icmstot_vnf.Value := tblNFetotal_icmstot_vnf.Value + tblItensdet_prod_vprod.Value;
      tblNFetotal_icmstot_vfcpufdest.Value := 0;
      tblNFetotal_icmstot_vicmsufdest.Value := 0;
      tblNFetotal_icmstot_vicmsufremet.Value := 0;

      //TODO: GRAVAR AS ALIQUOTAS POR ITEM

      tblNFetotal_icmstot_vTotTrib.Value := RoundABNT((tblNFetotal_icmstot_vnf.Value * 13.45) / 100, -2);

      tblItens.Next();
    end;

    if edtFormaPagamento.Text <> '' then
      tblNFepag_detpag_tpag.Value := 9;

    tblNFepag_detpag_vpag.Value := tblNFetotal_icmstot_vnf.Value;
  end;
  tblNFecad_status.Value := 0;

  tblNFe.Post();

  qryNFe.Close();
  qryNFe.ParamByName('pIDE_NNF').Value := edtNumeroNF.Value;
  qryNFe.ParamByName('pIDE_MOD').Value := 55;
  qryNFe.ParamByName('pIDE_SERIE').Value := edtSerie.Value;

  qryNFe.Open();

  //gerarXML e gravar dados gerados ao banco
  begin
    GerarXMLdoBanco(qryNFe, True);
  end;
end;

procedure TfrmCadastroNFe.chkTodasPessoasPropertiesChange(Sender: TObject);
begin
  qryPessoas.Close();

  if chkTodasPessoas.Checked then
  begin
    qryPessoas.ParamByName('pTIPO').Value := '%';
  end
  else
  begin
    qryPessoas.ParamByName('pTIPO').Value := 'Cliente';
  end;

  qryPessoas.Open();
end;

procedure TfrmCadastroNFe.btnAdicionarItemClick(Sender: TObject);
begin
  qryProdutos.Locate('produto', edtProduto.Text, []);

  tblItensdet_prod_ncm.Value := qryProdutosncm.AsString;
  tblItensdet_prod_ucom.Value := qryProdutosunidade.AsString;
  tblItensdet_prod_utrib.Value := tblItensdet_prod_ucom.Value;
  tblItensdet_prod_qtrib.Value := tblItensdet_prod_qcom.Value;
  tblItensdet_prod_vuntrib.Value := tblItensdet_prod_vuncom.Value;
  tblItensdet_prod_cprod.Value := qryProdutoscodigo.Value;
  tblItensdet_nitem.Value := qryItens.RecordCount + 1;
  tblItensdet_prod_cfop.Value := StrToInt(edtCFOP.Text);
  tblItensxped.Value := edtXPED.Text;

  if qryProdutoscsosn.Value = null then
    tblItenscsosn.Value := 102
  else
    tblItenscsosn.Value := qryProdutoscsosn.AsInteger;

  tblItens.Post();
  tblItens.Append();
  qryItens.Refresh();
end;

procedure TfrmCadastroNFe.btnExcluirItemClick(Sender: TObject);
begin
  tblItens.Cancel();
  tblItens.Append();
  edtProduto.SetFocus();
end;

procedure TfrmCadastroNFe.edtCFOPPropertiesChange(Sender: TObject);
begin
  lytItensNF.Visible := edtCFOP.Text <> '';

  if qryCFOP.Locate('cfop', edtCFOP.Text, []) then
  begin
    lblAplicacao.Caption := qryCFOPaplicacao.AsString;
    lblCFOP.Caption := qryCFOPdescricao.AsString;
  end;
end;

procedure TfrmCadastroNFe.edtDestPropertiesChange(Sender: TObject);
begin
  if tblPessoas.Locate('nome', edtDest.Text, []) then
  begin
    lblDestEndereco.Caption := tblPessoasendereco.AsString + ', ' + tblPessoasnumero.AsString + ' - ' + tblPessoasbairro.AsString + ', ' + tblPessoascidade.AsString + ' - ' + tblPessoasuf.AsString;
    lblDestCNPJ.Caption := tblPessoascpf.AsString;
    FiltraCFOP();
  end;

  if edtDest.Text = '' then
  begin
    lblDestEndereco.Caption := '';
    lblDestCNPJ.Caption := '';
    FiltraCFOP();
  end;
end;

procedure TfrmCadastroNFe.edtMovimentoPropertiesChange(Sender: TObject);
begin
  FiltraCFOP();
end;

procedure TfrmCadastroNFe.edtNumeroNFEnter(Sender: TObject);
begin
  if edtNumeroNF.Value = 0 then
    edtNumeroNF.Value := tblEmitenteseq_nfe.AsInteger + 1;
end;

procedure TfrmCadastroNFe.edtPagamentoPropertiesChange(Sender: TObject);
begin
  lytPagamento.Visible := edtPagamento.ItemIndex <> 0;
end;

procedure TfrmCadastroNFe.edtProdutoPropertiesChange(Sender: TObject);
begin
  if qryProdutos.Locate('produto', edtProduto.Text, []) then
  begin
    edtValor.Value := qryProdutosprecovenda.AsFloat;
    edtUnidade.EditValue := qryProdutosunidade.AsString;
  end;
end;

procedure TfrmCadastroNFe.edtQuantidadePropertiesChange(Sender: TObject);
begin
  if (edtValor.EditingValue <> Null) and (edtQuantidade.EditingValue <> Null) then
    edtTotal.Value := edtQuantidade.Value * edtValor.Value;
end;

procedure TfrmCadastroNFe.edtSerieEnter(Sender: TObject);
begin
  if edtSerie.Value = 0 then
    edtSerie.Value := tblEmitenteserie_nfe.AsInteger;
end;

procedure TfrmCadastroNFe.edtTranspPropertiesChange(Sender: TObject);
begin
  if tblPessoas.Locate('nome', edtTransp.Text, []) then
  begin
    lblTranspEndereco.Caption := tblPessoasendereco.AsString + ', ' + tblPessoasnumero.AsString + ' - ' + tblPessoasbairro.AsString + ', ' + tblPessoascidade.AsString + ' - ' + tblPessoasuf.AsString;
    lblTranspCNPJ.Caption := tblPessoascpf.AsString;
  end;

  lytEntrega.Visible := edtTransp.Text <> '';

  if not lytEntrega.Visible then
  begin
    lblTranspEndereco.Caption := '';
    lblTranspCNPJ.Caption := '';

    edtTipoFrete.ItemIndex := 0;
    edtVolumes.Clear();
    edtEspecie.Clear();
    edtMarca.Clear();
    edtPesoL.Clear();
    edtPesoB.Clear();
  end;
end;

procedure TfrmCadastroNFe.edtValorPropertiesChange(Sender: TObject);
begin
  if (edtValor.EditingValue <> Null) and (edtQuantidade.EditingValue <> Null) then
    edtTotal.Value := edtQuantidade.Value * edtValor.Value;
end;

procedure TfrmCadastroNFe.edtXPEDPropertiesChange(Sender: TObject);
begin
  if edtXPED.Text = '' then
    lytNitemPed.Visible := False
  else
    lytNitemPed.Visible := True;
end;

procedure TfrmCadastroNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblNFe.Cancel();
  tblItens.Cancel();
  DM.Conexao.ExecSQL('DELETE FROM commerce.nfeitenstemp');
end;

procedure TfrmCadastroNFe.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmCadastroNFe.FormShow(Sender: TObject);
begin
  DM.AtualizaTabela('commerce', 'nfe', qryNFe);
  DM.AtualizaTabela('commerce', 'tipofrete', qryTipoFrete);
  DM.AtualizaTabela('commerce', 'cfop', qryCFOP);
  DM.AtualizaTabela('commerce', 'pessoas', qryTransportadora);
  DM.AtualizaTabela('commerce', 'nfeitenstemp', qryItens);
  DM.AtualizaTabela('commerce', 'produtos', qryProdutos);
  DM.AtualizaTabela('commerce', 'unidade', qryUnidades);
  DM.AtualizaTabela('commerce', 'ibpt', qryIBPT);

  DM.AtualizaTabela('commerce', 'meiospagamento', tblMeiosPagamento);
  DM.AtualizaTabela('commerce', 'nfeitens', tblSalvaItens);

  tblNFe.Open();
  tblNFe.Append();

  edtConsumidorFinal.Checked := True;

  tblPessoas.Open();
  tblItens.Open();
  tblItens.Append();
  tblEmitente.Open();
  tblEmitente.Refresh();
  tblMeiosPagamento.Open();

  qryPessoas.Open();
  qryTransportadora.Open();
  qryProdutos.Open();
  qryItens.Open();
  qryCFOP.Open();
  qryUnidades.Open();
  qryTipoFrete.Open();

  FiltraCFOP();

  edtNumeroNF.Value := tblEmitenteseq_nfe.AsInteger + 1;
  edtSerie.Value := tblEmitenteserie_nfe.AsInteger;

  edtDest.SetFocus();

  edtDataSaida.Date := Now;
  edtDataEmissao.Date := Now;

  lytPagamento.Visible := False;
  lytEntrega.Visible := False;
  edtNatOp.ItemIndex := 0;

  edtDataEmissao.Properties.MinDate := Now;
end;

procedure TfrmCadastroNFe.GravarDadosSeNulo(Campo: TField; Valor: Variant);
begin
  if Campo.Value = null then
    Campo.Value := Valor;
end;

procedure TfrmCadastroNFe.grdProdutosViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item = grdProdutosViewExcluir then
    grdProdutosView.DataController.DeleteFocused();
end;

procedure TfrmCadastroNFe.grdProdutosViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  tblItens.Locate('codigo', grdProdutosView.Controller.SelectedRows[0].Values[0], []);
end;

end.

