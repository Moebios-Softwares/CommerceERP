unit uCadastroNFEntrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, cxTextEdit, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, ACBrUtil,
  dxRibbonCustomizationForm, Data.DB, MemDS, DBAccess, Uni, dxSkinsForm,
  pcnConversaoNFe, dxStatusBar, dxRibbonStatusBar, dxLayoutContainer, cxGroupBox,
  cxRadioGroup, cxDBEdit, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxMaskEdit,
  cxCalendar, dxLayoutControl, ACBrBase, ACBrSocket, ACBrCEP, ACBrDFe, ACBrNFe,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxCurrencyEdit, dxLayoutLookAndFeels, cxGridLevel,
  pcnConversao, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxSpinEdit, cxCalc, cxEditRepositoryItems,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxScrollbarAnnotations, dxCore;

type
  TfrmCadastroNFEntrada = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    btnSalvar: TdxBarLargeButton;
    btnExcluir: TdxBarLargeButton;
    btnSair: TdxBarLargeButton;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    tblNFCompra: TUniTable;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtNrNFe: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtModeloNFe: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtDataEmissao: TcxDBDateEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtFrete: TcxDBCalcEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtSeguro: TcxDBCalcEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtOutros: TcxDBCalcEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtDesconto: TcxDBCalcEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtProdutos: TcxDBCalcEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtTotal: TcxDBCalcEdit;
    dxLayoutItem13: TdxLayoutItem;
    edtChave: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    grdProdutos: TcxGrid;
    grdProdutosView: TcxGridDBTableView;
    grdProdutosLevel1: TcxGridLevel;
    dxLayoutItem16: TdxLayoutItem;
    qryNFItens: TUniQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dsItens: TDataSource;
    dsNFCompra: TDataSource;
    OpenDialog1: TOpenDialog;
    qryApagarItens: TUniQuery;
    tblPessoa: TUniTable;
    tblProduto: TUniTable;
    tblVerificaNota: TUniTable;
    qryAlteraEstoque: TUniQuery;
    tblNFItens: TUniTable;
    tblEmpresa: TUniTable;
    edtFornecedor: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtCNPJ: TcxDBMaskEdit;
    dxLayoutItem5: TdxLayoutItem;
    grdProdutosViewdet_nitem: TcxGridDBColumn;
    grdProdutosViewdet_prod_xprod: TcxGridDBColumn;
    grdProdutosViewdet_prod_ncm: TcxGridDBColumn;
    grdProdutosViewdet_prod_cfop: TcxGridDBColumn;
    grdProdutosViewdet_prod_ucom: TcxGridDBColumn;
    grdProdutosViewdet_prod_qcom: TcxGridDBColumn;
    grdProdutosViewdet_prod_vuncom: TcxGridDBColumn;
    grdProdutosViewdet_prod_vprod: TcxGridDBColumn;
    grdProdutosViewdet_prod_cprod: TcxGridDBColumn;
    tblVerificaNotainfnfe_versao: TStringField;
    tblVerificaNotainfnfe_chave: TStringField;
    tblVerificaNotaide_cuf: TIntegerField;
    tblVerificaNotaide_cnf: TIntegerField;
    tblVerificaNotaide_natop: TStringField;
    tblVerificaNotaide_mod: TIntegerField;
    tblVerificaNotaide_serie: TIntegerField;
    tblVerificaNotaide_nnf: TIntegerField;
    tblVerificaNotaide_dhemi: TDateTimeField;
    tblVerificaNotaide_dhsaient: TDateTimeField;
    tblVerificaNotaide_tpnf: TIntegerField;
    tblVerificaNotaide_iddest: TIntegerField;
    tblVerificaNotaide_cmunfg: TIntegerField;
    tblVerificaNotaide_tpimp: TIntegerField;
    tblVerificaNotaide_tpemis: TIntegerField;
    tblVerificaNotaide_cdv: TIntegerField;
    tblVerificaNotaide_tpamb: TIntegerField;
    tblVerificaNotaide_finnfe: TIntegerField;
    tblVerificaNotaide_indfinal: TIntegerField;
    tblVerificaNotaide_indpres: TIntegerField;
    tblVerificaNotaide_procemi: TIntegerField;
    tblVerificaNotaide_verproc: TStringField;
    tblVerificaNotaemit_xnome: TStringField;
    tblVerificaNotaemit_xfant: TStringField;
    tblVerificaNotaemit_enderemit_xlgr: TStringField;
    tblVerificaNotaemit_enderemit_nro: TStringField;
    tblVerificaNotaemit_enderemit_xbairro: TStringField;
    tblVerificaNotaemit_enderemit_cmun: TIntegerField;
    tblVerificaNotaemit_enderemit_xmun: TStringField;
    tblVerificaNotaemit_enderemit_uf: TStringField;
    tblVerificaNotaemit_enderemit_cep: TIntegerField;
    tblVerificaNotaemit_enderemit_cpais: TIntegerField;
    tblVerificaNotaemit_enderemit_xpais: TStringField;
    tblVerificaNotaemit_crt: TIntegerField;
    tblVerificaNotadest_xnome: TStringField;
    tblVerificaNotadest_xfant: TStringField;
    tblVerificaNotadest_enderdest_xlgr: TStringField;
    tblVerificaNotadest_enderdest_nro: TStringField;
    tblVerificaNotadest_enderdest_xbairro: TStringField;
    tblVerificaNotadest_enderdest_cmun: TIntegerField;
    tblVerificaNotadest_enderdest_xmun: TStringField;
    tblVerificaNotadest_enderdest_uf: TStringField;
    tblVerificaNotadest_enderdest_cep: TIntegerField;
    tblVerificaNotadest_enderdest_cpais: TIntegerField;
    tblVerificaNotadest_enderdest_xpais: TStringField;
    tblVerificaNotadest_indiedest: TIntegerField;
    tblVerificaNotadest_ie: TIntegerField;
    tblVerificaNotadest_email: TStringField;
    tblVerificaNotatotal_icmstot_vbc: TFloatField;
    tblVerificaNotatotal_icmstot_vicms: TFloatField;
    tblVerificaNotatotal_icmstot_vicmsdeson: TFloatField;
    tblVerificaNotatotal_icmstot_vfcpufdest: TFloatField;
    tblVerificaNotatotal_icmstot_vicmsufdest: TFloatField;
    tblVerificaNotatotal_icmstot_vicmsufremet: TFloatField;
    tblVerificaNotatotal_icmstot_vfcp: TFloatField;
    tblVerificaNotatotal_icmstot_vbcst: TFloatField;
    tblVerificaNotatotal_icmstot_vst: TFloatField;
    tblVerificaNotatotal_icmstot_vfcpst: TFloatField;
    tblVerificaNotatotal_icmstot_vfcpstret: TFloatField;
    tblVerificaNotatotal_icmstot_vprod: TFloatField;
    tblVerificaNotatotal_icmstot_vfrete: TFloatField;
    tblVerificaNotatotal_icmstot_vseg: TFloatField;
    tblVerificaNotatotal_icmstot_vdesc: TFloatField;
    tblVerificaNotatotal_icmstot_vii: TFloatField;
    tblVerificaNotatotal_icmstot_vipi: TFloatField;
    tblVerificaNotatotal_icmstot_vipidevol: TFloatField;
    tblVerificaNotatotal_icmstot_vpis: TFloatField;
    tblVerificaNotatotal_icmstot_vcofins: TFloatField;
    tblVerificaNotatotal_icmstot_voutro: TFloatField;
    tblVerificaNotatotal_icmstot_vnf: TFloatField;
    tblVerificaNotatransp_modfrete: TIntegerField;
    tblVerificaNotatransp_transporta_xnome: TStringField;
    tblVerificaNotatransp_transporta_xender: TStringField;
    tblVerificaNotatransp_transporta_xmun: TStringField;
    tblVerificaNotatransp_transporta_uf: TStringField;
    tblVerificaNotatransp_vol_qvol: TIntegerField;
    tblVerificaNotatransp_vol_esp: TStringField;
    tblVerificaNotatransp_vol_marca: TStringField;
    tblVerificaNotatransp_vol_pesol: TFloatField;
    tblVerificaNotatransp_vol_pesob: TFloatField;
    tblVerificaNotacobr_fat_nfat: TStringField;
    tblVerificaNotacobr_fat_vorig: TFloatField;
    tblVerificaNotacobr_fat_vdesc: TFloatField;
    tblVerificaNotacobr_fat_vliq: TFloatField;
    tblVerificaNotapag_detpag_indpag: TIntegerField;
    tblVerificaNotapag_detpag_tpag: TIntegerField;
    tblVerificaNotapag_detpag_vpag: TFloatField;
    tblVerificaNotapag_detpag_card_tpintegra: TIntegerField;
    tblVerificaNotapag_detpag_card_cnpj: TIntegerField;
    tblVerificaNotapag_detpag_card_tband: TIntegerField;
    tblVerificaNotapag_detpag_card_caut: TStringField;
    tblVerificaNotapag_vtroco: TFloatField;
    tblVerificaNotainfadic_infcpl: TStringField;
    tblVerificaNotainfadic_infadfisco: TStringField;
    tblVerificaNotainfresptec_xcontato: TStringField;
    tblVerificaNotainfresptec_email: TStringField;
    tblVerificaNotainfresptec_fone: TStringField;
    tblVerificaNotasignature: TMemoField;
    tblVerificaNotaprotnfe: TMemoField;
    tblVerificaNotacodigo: TIntegerField;
    tblVerificaNotacad_status: TIntegerField;
    tblVerificaNotacad_cfop: TIntegerField;
    tblVerificaNotaemit_cnpj: TStringField;
    tblVerificaNotadest_cnpj: TStringField;
    tblVerificaNotaemit_enderemit_fone: TStringField;
    tblVerificaNotadest_enderdest_fone: TStringField;
    tblVerificaNotatransp_transporta_cnpj: TStringField;
    tblVerificaNotainfresptec_cnpj: TStringField;
    tblVerificaNotatotal_icmstot_vTotTrib: TFloatField;
    tblVerificaNotaxped: TStringField;
    tblVerificaNotaemit_im: TStringField;
    tblVerificaNotaemit_cnae: TStringField;
    tblVerificaNotaemit_enderemit_xcpl: TStringField;
    tblVerificaNotadest_Enderdest_xcpl: TStringField;
    tblVerificaNotadest_im: TStringField;
    tblVerificaNotacad_integracao: TIntegerField;
    tblVerificaNotacad_integracao_dados: TStringField;
    tblVerificaNotatransp_transporta_ie: TStringField;
    tblNFComprainfnfe_versao: TStringField;
    tblNFComprainfnfe_chave: TStringField;
    tblNFCompraide_cuf: TIntegerField;
    tblNFCompraide_cnf: TIntegerField;
    tblNFCompraide_natop: TStringField;
    tblNFCompraide_mod: TIntegerField;
    tblNFCompraide_serie: TIntegerField;
    tblNFCompraide_nnf: TIntegerField;
    tblNFCompraide_dhemi: TDateTimeField;
    tblNFCompraide_dhsaient: TDateTimeField;
    tblNFCompraide_tpnf: TIntegerField;
    tblNFCompraide_iddest: TIntegerField;
    tblNFCompraide_cmunfg: TIntegerField;
    tblNFCompraide_tpimp: TIntegerField;
    tblNFCompraide_tpemis: TIntegerField;
    tblNFCompraide_cdv: TIntegerField;
    tblNFCompraide_tpamb: TIntegerField;
    tblNFCompraide_finnfe: TIntegerField;
    tblNFCompraide_indfinal: TIntegerField;
    tblNFCompraide_indpres: TIntegerField;
    tblNFCompraide_procemi: TIntegerField;
    tblNFCompraide_verproc: TStringField;
    tblNFCompraemit_xnome: TStringField;
    tblNFCompraemit_xfant: TStringField;
    tblNFCompraemit_enderemit_xlgr: TStringField;
    tblNFCompraemit_enderemit_nro: TStringField;
    tblNFCompraemit_enderemit_xbairro: TStringField;
    tblNFCompraemit_enderemit_cmun: TIntegerField;
    tblNFCompraemit_enderemit_xmun: TStringField;
    tblNFCompraemit_enderemit_uf: TStringField;
    tblNFCompraemit_enderemit_cep: TIntegerField;
    tblNFCompraemit_enderemit_cpais: TIntegerField;
    tblNFCompraemit_enderemit_xpais: TStringField;
    tblNFCompraemit_crt: TIntegerField;
    tblNFCompradest_xnome: TStringField;
    tblNFCompradest_xfant: TStringField;
    tblNFCompradest_enderdest_xlgr: TStringField;
    tblNFCompradest_enderdest_nro: TStringField;
    tblNFCompradest_enderdest_xbairro: TStringField;
    tblNFCompradest_enderdest_cmun: TIntegerField;
    tblNFCompradest_enderdest_xmun: TStringField;
    tblNFCompradest_enderdest_uf: TStringField;
    tblNFCompradest_enderdest_cep: TIntegerField;
    tblNFCompradest_enderdest_cpais: TIntegerField;
    tblNFCompradest_enderdest_xpais: TStringField;
    tblNFCompradest_indiedest: TIntegerField;
    tblNFCompradest_ie: TIntegerField;
    tblNFCompradest_email: TStringField;
    tblNFCompratotal_icmstot_vbc: TFloatField;
    tblNFCompratotal_icmstot_vicms: TFloatField;
    tblNFCompratotal_icmstot_vicmsdeson: TFloatField;
    tblNFCompratotal_icmstot_vfcpufdest: TFloatField;
    tblNFCompratotal_icmstot_vicmsufdest: TFloatField;
    tblNFCompratotal_icmstot_vicmsufremet: TFloatField;
    tblNFCompratotal_icmstot_vfcp: TFloatField;
    tblNFCompratotal_icmstot_vbcst: TFloatField;
    tblNFCompratotal_icmstot_vst: TFloatField;
    tblNFCompratotal_icmstot_vfcpst: TFloatField;
    tblNFCompratotal_icmstot_vfcpstret: TFloatField;
    tblNFCompratotal_icmstot_vprod: TFloatField;
    tblNFCompratotal_icmstot_vfrete: TFloatField;
    tblNFCompratotal_icmstot_vseg: TFloatField;
    tblNFCompratotal_icmstot_vdesc: TFloatField;
    tblNFCompratotal_icmstot_vii: TFloatField;
    tblNFCompratotal_icmstot_vipi: TFloatField;
    tblNFCompratotal_icmstot_vipidevol: TFloatField;
    tblNFCompratotal_icmstot_vpis: TFloatField;
    tblNFCompratotal_icmstot_vcofins: TFloatField;
    tblNFCompratotal_icmstot_voutro: TFloatField;
    tblNFCompratotal_icmstot_vnf: TFloatField;
    tblNFCompratransp_modfrete: TIntegerField;
    tblNFCompratransp_transporta_xnome: TStringField;
    tblNFCompratransp_transporta_xender: TStringField;
    tblNFCompratransp_transporta_xmun: TStringField;
    tblNFCompratransp_transporta_uf: TStringField;
    tblNFCompratransp_vol_qvol: TIntegerField;
    tblNFCompratransp_vol_esp: TStringField;
    tblNFCompratransp_vol_marca: TStringField;
    tblNFCompratransp_vol_pesol: TFloatField;
    tblNFCompratransp_vol_pesob: TFloatField;
    tblNFCompracobr_fat_nfat: TStringField;
    tblNFCompracobr_fat_vorig: TFloatField;
    tblNFCompracobr_fat_vdesc: TFloatField;
    tblNFCompracobr_fat_vliq: TFloatField;
    tblNFComprapag_detpag_indpag: TIntegerField;
    tblNFComprapag_detpag_tpag: TIntegerField;
    tblNFComprapag_detpag_vpag: TFloatField;
    tblNFComprapag_detpag_card_tpintegra: TIntegerField;
    tblNFComprapag_detpag_card_cnpj: TIntegerField;
    tblNFComprapag_detpag_card_tband: TIntegerField;
    tblNFComprapag_detpag_card_caut: TStringField;
    tblNFComprapag_vtroco: TFloatField;
    tblNFComprainfadic_infcpl: TStringField;
    tblNFComprainfadic_infadfisco: TStringField;
    tblNFComprainfresptec_xcontato: TStringField;
    tblNFComprainfresptec_email: TStringField;
    tblNFComprainfresptec_fone: TStringField;
    tblNFComprasignature: TMemoField;
    tblNFCompraprotnfe: TMemoField;
    tblNFCompracodigo: TIntegerField;
    tblNFCompracad_status: TIntegerField;
    tblNFCompracad_cfop: TIntegerField;
    tblNFCompraemit_cnpj: TStringField;
    tblNFCompradest_cnpj: TStringField;
    tblNFCompraemit_enderemit_fone: TStringField;
    tblNFCompradest_enderdest_fone: TStringField;
    tblNFCompratransp_transporta_cnpj: TStringField;
    tblNFComprainfresptec_cnpj: TStringField;
    tblNFCompratotal_icmstot_vTotTrib: TFloatField;
    tblNFCompraxped: TStringField;
    tblNFCompraemit_im: TStringField;
    tblNFCompraemit_cnae: TStringField;
    tblNFCompraemit_enderemit_xcpl: TStringField;
    tblNFCompradest_Enderdest_xcpl: TStringField;
    tblNFCompradest_im: TStringField;
    tblNFCompracad_integracao: TIntegerField;
    tblNFCompracad_integracao_dados: TStringField;
    tblNFCompratransp_transporta_ie: TStringField;
    qryNFItensdet_nitem: TIntegerField;
    qryNFItensdet_prod_cprod: TStringField;
    qryNFItensdet_prod_cean: TStringField;
    qryNFItensdet_prod_xprod: TStringField;
    qryNFItensdet_prod_cfop: TIntegerField;
    qryNFItensdet_prod_ucom: TStringField;
    qryNFItensdet_prod_qcom: TFloatField;
    qryNFItensdet_prod_vuncom: TFloatField;
    qryNFItensdet_prod_vprod: TFloatField;
    qryNFItensdet_prod_ceantrib: TStringField;
    qryNFItensdet_prod_utrib: TStringField;
    qryNFItensdet_prod_qtrib: TFloatField;
    qryNFItensdet_prod_vuntrib: TFloatField;
    qryNFItensdet_prod_indtot: TIntegerField;
    qryNFItensdet_prod_imposto_icms: TStringField;
    qryNFItensdet_prod_imposto_icms_orig: TFloatField;
    qryNFItensdet_prod_imposto_icms_cst: TFloatField;
    qryNFItensdet_prod_imposto_icms_modbc: TFloatField;
    qryNFItensdet_prod_imposto_icms_vbc: TFloatField;
    qryNFItensdet_prod_imposto_icms_picms: TFloatField;
    qryNFItensdet_prod_imposto_icms_vicms: TFloatField;
    qryNFItensdet_prod_imposto_ipi: TStringField;
    qryNFItensdet_prod_imposto_ipi_cenq: TFloatField;
    qryNFItensdet_prod_imposto_ipi_ipint: TFloatField;
    qryNFItensdet_prod_imposto_ipi_cst: TFloatField;
    qryNFItensdet_prod_imposto_pis: TStringField;
    qryNFItensdet_prod_imposto_pis_pisaliq_cst: TFloatField;
    qryNFItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField;
    qryNFItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField;
    qryNFItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField;
    qryNFItensdet_prod_imposto_cofins: TStringField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField;
    qryNFItenscodigo: TIntegerField;
    qryNFItensinfnfe_chave: TStringField;
    qryNFItenside_mod: TIntegerField;
    qryNFItenside_serie: TIntegerField;
    qryNFItenside_nnf: TIntegerField;
    qryNFItensdet_prod_vtotalitem: TFloatField;
    qryNFItenscsosn: TIntegerField;
    qryNFItensAliquota_STEfetivo: TFloatField;
    qryNFItensnitemped: TStringField;
    qryNFItensxped: TStringField;
    qryNFItensdet_prod_vdesc: TFloatField;
    qryNFItensdet_prod_voutro: TFloatField;
    qryNFItensdet_prod_vfrete: TFloatField;
    qryNFItensdet_prod_vseg: TFloatField;
    qryNFItensdet_prod_ncm: TStringField;
    tblNFItensdet_nitem: TIntegerField;
    tblNFItensdet_prod_cprod: TStringField;
    tblNFItensdet_prod_cean: TStringField;
    tblNFItensdet_prod_xprod: TStringField;
    tblNFItensdet_prod_cfop: TIntegerField;
    tblNFItensdet_prod_ucom: TStringField;
    tblNFItensdet_prod_qcom: TFloatField;
    tblNFItensdet_prod_vuncom: TFloatField;
    tblNFItensdet_prod_vprod: TFloatField;
    tblNFItensdet_prod_ceantrib: TStringField;
    tblNFItensdet_prod_utrib: TStringField;
    tblNFItensdet_prod_qtrib: TFloatField;
    tblNFItensdet_prod_vuntrib: TFloatField;
    tblNFItensdet_prod_indtot: TIntegerField;
    tblNFItensdet_prod_imposto_icms: TStringField;
    tblNFItensdet_prod_imposto_icms_orig: TFloatField;
    tblNFItensdet_prod_imposto_icms_cst: TFloatField;
    tblNFItensdet_prod_imposto_icms_modbc: TFloatField;
    tblNFItensdet_prod_imposto_icms_vbc: TFloatField;
    tblNFItensdet_prod_imposto_icms_picms: TFloatField;
    tblNFItensdet_prod_imposto_icms_vicms: TFloatField;
    tblNFItensdet_prod_imposto_ipi: TStringField;
    tblNFItensdet_prod_imposto_ipi_cenq: TFloatField;
    tblNFItensdet_prod_imposto_ipi_ipint: TFloatField;
    tblNFItensdet_prod_imposto_ipi_cst: TFloatField;
    tblNFItensdet_prod_imposto_pis: TStringField;
    tblNFItensdet_prod_imposto_pis_pisaliq_cst: TFloatField;
    tblNFItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField;
    tblNFItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField;
    tblNFItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField;
    tblNFItensdet_prod_imposto_cofins: TStringField;
    tblNFItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField;
    tblNFItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField;
    tblNFItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField;
    tblNFItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField;
    tblNFItenscodigo: TIntegerField;
    tblNFItensinfnfe_chave: TStringField;
    tblNFItenside_mod: TIntegerField;
    tblNFItenside_serie: TIntegerField;
    tblNFItenside_nnf: TIntegerField;
    tblNFItensdet_prod_vtotalitem: TFloatField;
    tblNFItenscsosn: TIntegerField;
    tblNFItensAliquota_STEfetivo: TFloatField;
    tblNFItensnitemped: TStringField;
    tblNFItensxped: TStringField;
    tblNFItensdet_prod_vdesc: TFloatField;
    tblNFItensdet_prod_voutro: TFloatField;
    tblNFItensdet_prod_vfrete: TFloatField;
    tblNFItensdet_prod_vseg: TFloatField;
    tblNFItensdet_prod_ncm: TStringField;
    tblEmpresacodigo: TStringField;
    tblEmpresafilial: TStringField;
    tblEmpresanotafiscal: TIntegerField;
    tblEmpresaendereco: TStringField;
    tblEmpresacidade: TStringField;
    tblEmpresauf: TStringField;
    tblEmpresacep: TStringField;
    tblEmpresatelefone: TStringField;
    tblEmpresacnpj: TStringField;
    tblEmpresaie: TStringField;
    tblEmpresaseqnf: TIntegerField;
    tblEmpresafax: TStringField;
    tblEmpresaobs1: TStringField;
    tblEmpresaobs2: TStringField;
    tblEmpresacontribuinte_ipi: TStringField;
    tblEmpresasubstituto_tributario: TStringField;
    tblEmpresaempresa_estadual: TStringField;
    tblEmpresaoptante_simples: TStringField;
    tblEmpresaoptante_super_simples: TStringField;
    tblEmpresaecf: TStringField;
    tblEmpresatipo: TIntegerField;
    tblEmpresaipi: TFloatField;
    tblEmpresaiss: TFloatField;
    tblEmpresanumero: TStringField;
    tblEmpresaresponsavel: TStringField;
    tblEmpresacomplemento: TStringField;
    tblEmpresabairro: TStringField;
    tblEmpresafarmacia_resp_tecnico: TStringField;
    tblEmpresafarmacia_crf: TStringField;
    tblEmpresafarmacia_cpf: TStringField;
    tblEmpresafarmcia_data: TDateField;
    tblEmpresafarmacia_uf: TStringField;
    tblEmpresafarmacia_senha: TStringField;
    tblEmpresafarmacia_email: TStringField;
    tblEmpresafarmacia_login: TStringField;
    tblEmpresafarmacia_envio: TStringField;
    tblEmpresaconhecimento: TIntegerField;
    tblEmpresaindustria: TStringField;
    tblEmpresafarmacia_numerolicenca: TStringField;
    tblEmpresacod_municipio_ibge: TStringField;
    tblEmpresaibge: TStringField;
    tblEmpresapis: TFloatField;
    tblEmpresacofins: TFloatField;
    tblEmpresaemail: TStringField;
    tblEmpresaatividade: TStringField;
    tblEmpresacontador_cod_municipio_ibge: TStringField;
    tblEmpresacontador_nome: TStringField;
    tblEmpresacontador_cpf: TStringField;
    tblEmpresacontador_crc: TStringField;
    tblEmpresacontador_cnpj: TStringField;
    tblEmpresacontador_cep: TStringField;
    tblEmpresacontador_endereco: TStringField;
    tblEmpresacontador_numero: TStringField;
    tblEmpresacontador_complemento: TStringField;
    tblEmpresacontador_bairro: TStringField;
    tblEmpresacontador_fone: TStringField;
    tblEmpresacontador_fax: TStringField;
    tblEmpresacontador_email: TStringField;
    tblEmpresainsc_municipal: TStringField;
    tblEmpresadata_abertura: TDateField;
    tblEmpresacnae: TStringField;
    tblEmpresacrt: TStringField;
    tblEmpresacontador_cidade: TStringField;
    tblEmpresacontador_cod_municipio: TStringField;
    tblEmpresacontador_uf: TStringField;
    tblEmpresapermite_credito: TIntegerField;
    tblEmpresafantasia: TStringField;
    tblEmpresadfixas: TFloatField;
    tblEmpresatipocalculo: TIntegerField;
    tblEmpresaserie_cte: TStringField;
    tblEmpresaseq_cte: TStringField;
    tblEmpresacod_pais: TStringField;
    tblEmpresapais: TStringField;
    tblEmpresahomepage: TStringField;
    tblEmpresaaidf: TStringField;
    tblEmpresaninicial: TStringField;
    tblEmpresanfinal: TStringField;
    tblEmpresan_nf_d: TStringField;
    tblEmpresavalidade: TStringField;
    tblEmpresarntrc: TStringField;
    tblEmpresaserie_mdfe: TIntegerField;
    tblEmpresanumero_mdfe: TIntegerField;
    tblEmpresamail_server: TStringField;
    tblEmpresamail_porta: TStringField;
    tblEmpresamail_username: TStringField;
    tblEmpresamail_password: TStringField;
    tblEmpresamail_cabecalho: TStringField;
    tblEmpresamail_assunto: TStringField;
    tblEmpresamail_ssl: TStringField;
    tblEmpresamail_tls: TStringField;
    tblEmpresareptec_cnpj: TStringField;
    tblEmpresareptec_contato: TStringField;
    tblEmpresareptec_email: TStringField;
    tblEmpresareptec_fone: TStringField;
    tblEmpresareptec_idcsrt: TIntegerField;
    tblEmpresareptec_csrt: TStringField;
    tblEmpresapercentual_credito_icms: TFloatField;
    tblEmpresaidonline: TIntegerField;
    tblEmpresacomentarios: TStringField;
    tblEmpresadatahora_inicial: TDateField;
    tblEmpresadatahora_final: TDateField;
    tblEmpresadata_inventario: TDateField;
    tblEmpresaestoque: TFloatField;
    tblEmpresavalor: TFloatField;
    tblEmpresacpf: TStringField;
    tblEmpresarg: TStringField;
    tblEmpresadia_vencimento_chave: TStringField;
    tblEmpresaemail_financeiro: TStringField;
    tblEmpresaatb: TStringField;
    tblEmpresaserie_nfe: TIntegerField;
    tblEmpresaseq_nfe: TIntegerField;
    tblEmpresalogo: TStringField;
    tblEmpresacodigoibge: TStringField;
    tblEmpresaseq_nfce: TIntegerField;
    tblEmpresaserie_nfce: TIntegerField;
    tblPessoacodigo: TStringField;
    tblPessoanome: TStringField;
    tblPessoaendereco: TStringField;
    tblPessoabairro: TStringField;
    tblPessoacidade: TStringField;
    tblPessoauf: TStringField;
    tblPessoacep: TStringField;
    tblPessoacomplemento: TStringField;
    tblPessoatelefone1: TStringField;
    tblPessoaemail: TStringField;
    tblPessoarg: TStringField;
    tblPessoacpf: TStringField;
    tblPessoafiliacao: TStringField;
    tblPessoaestadocivil: TStringField;
    tblPessoaconjuge: TStringField;
    tblPessoaprofissao: TStringField;
    tblPessoaempresa: TStringField;
    tblPessoarenda: TFloatField;
    tblPessoalimite: TFloatField;
    tblPessoaref1: TStringField;
    tblPessoaref2: TStringField;
    tblPessoacodvendedor: TStringField;
    tblPessoadata_cadastro: TDateField;
    tblPessoadata_ultimacompra: TDateField;
    tblPessoaobs1: TStringField;
    tblPessoaobs2: TStringField;
    tblPessoaobs3: TStringField;
    tblPessoaobs4: TStringField;
    tblPessoaobs5: TStringField;
    tblPessoaobs6: TStringField;
    tblPessoanascimento: TStringField;
    tblPessoacodregiao: TStringField;
    tblPessoacodconvenio: TStringField;
    tblPessoacodusuario: TStringField;
    tblPessoanumero: TStringField;
    tblPessoarg_orgao: TStringField;
    tblPessoarg_estado: TStringField;
    tblPessoarg_emissao: TDateField;
    tblPessoasexo: TStringField;
    tblPessoaprevisao: TDateField;
    tblPessoacnae: TStringField;
    tblPessoacod_municipio_ibge: TStringField;
    tblPessoaibge: TStringField;
    tblPessoatamanho_calca: TStringField;
    tblPessoatamanho_blusa: TStringField;
    tblPessoatamanho_sapato: TStringField;
    tblPessoacorresp_endereco: TStringField;
    tblPessoacorresp_bairro: TStringField;
    tblPessoacorresp_cidade: TStringField;
    tblPessoacorresp_uf: TStringField;
    tblPessoacorresp_cep: TStringField;
    tblPessoacorresp_complemento: TStringField;
    tblPessoarg_produtor: TStringField;
    tblPessoaresp1_nome: TStringField;
    tblPessoaresp1_cpf: TStringField;
    tblPessoaresp1_rg: TStringField;
    tblPessoaresp1_profissao: TStringField;
    tblPessoaresp1_estado_civil: TStringField;
    tblPessoaresp1_endereco: TStringField;
    tblPessoaresp1_bairro: TStringField;
    tblPessoaresp1_cidade: TStringField;
    tblPessoaresp1_uf: TStringField;
    tblPessoaresp1_cep: TStringField;
    tblPessoaresp2_nome: TStringField;
    tblPessoaresp2_cpf: TStringField;
    tblPessoaresp2_rg: TStringField;
    tblPessoaresp2_profissao: TStringField;
    tblPessoaresp2_estado_civil: TStringField;
    tblPessoaresp2_endereco: TStringField;
    tblPessoaresp2_bairro: TStringField;
    tblPessoaresp2_cidade: TStringField;
    tblPessoaresp2_uf: TStringField;
    tblPessoaresp2_cep: TStringField;
    tblPessoafoto: TStringField;
    tblPessoacondpgto: TStringField;
    tblPessoacpais: TStringField;
    tblPessoadpais: TStringField;
    tblPessoatipo_ie: TStringField;
    tblPessoaconsumidor_final: TStringField;
    tblPessoainstrucoes1: TStringField;
    tblPessoainstrucoes2: TStringField;
    tblPessoaidonline: TIntegerField;
    tblPessoaatb: TStringField;
    tblPessoatipopessoa: TStringField;
    tblPessoaresponsavel: TStringField;
    tblPessoasimples: TBooleanField;
    tblPessoasimei: TBooleanField;
    tblPessoasintegra: TBooleanField;
    tblPessoajuridica: TBooleanField;
    tblPessoasintegrainativo: TBooleanField;
    tblProdutocodigo: TStringField;
    tblProdutoproduto: TStringField;
    tblProdutodata_cadastro: TDateField;
    tblProdutocodgrupo: TStringField;
    tblProdutocodsubgrupo: TStringField;
    tblProdutocodfornecedor: TStringField;
    tblProdutocodmarca: TStringField;
    tblProdutodata_ultimacompra: TDateField;
    tblProdutonotafiscal: TStringField;
    tblProdutoprecocusto: TFloatField;
    tblProdutoprecovenda: TFloatField;
    tblProdutodata_ultimavenda: TDateField;
    tblProdutoestoque: TFloatField;
    tblProdutoestoqueminimo: TFloatField;
    tblProdutocodaliquota: TStringField;
    tblProdutolocalicazao: TStringField;
    tblProdutopeso: TFloatField;
    tblProdutovalidade: TStringField;
    tblProdutocomissao: TFloatField;
    tblProdutousa_balanca: TIntegerField;
    tblProdutousa_serial: TIntegerField;
    tblProdutousa_grade: TIntegerField;
    tblProdutocodreceita: TStringField;
    tblProdutofoto: TStringField;
    tblProdutodata_ultimacompra_anterior: TDateField;
    tblProdutonotafiscal_anterior: TStringField;
    tblProdutocodfornecedor_anterior: TStringField;
    tblProdutoprecocusto_anterior: TFloatField;
    tblProdutoprecovenda_anterior: TFloatField;
    tblProdutocustomedio: TFloatField;
    tblProdutoauto_aplicacao: TStringField;
    tblProdutoauto_complemento: TStringField;
    tblProdutodata_remarcacao_custo: TDateField;
    tblProdutodata_remarcacao_venda: TDateField;
    tblProdutopreco_promocao: TFloatField;
    tblProdutodata_promocao: TDateField;
    tblProdutofim_promocao: TDateField;
    tblProdutocst: TStringField;
    tblProdutoclassificacao_fiscal: TStringField;
    tblProdutonbm: TStringField;
    tblProdutoncm: TStringField;
    tblProdutoaliquota: TFloatField;
    tblProdutoipi: TFloatField;
    tblProdutoreducao: TFloatField;
    tblProdutoqtde_embalagem: TFloatField;
    tblProdutotipo: TStringField;
    tblProdutopeso_liquido: TFloatField;
    tblProdutofarmacia_controlado: TStringField;
    tblProdutofarmacia_apresentacao: TIntegerField;
    tblProdutofarmacia_registro_medicamento: TStringField;
    tblProdutofarmacia_pmc: TFloatField;
    tblProdutoultima_alteracao: TDateField;
    tblProdutoultima_carga: TDateField;
    tblProdutodata_inventario: TDateField;
    tblProdutocusto_inventario: TFloatField;
    tblProdutoestoque_inventario: TFloatField;
    tblProdutoestoque_anterior: TFloatField;
    tblProdutoprecovenda_novo: TFloatField;
    tblProdutousa_rentabilidade: TIntegerField;
    tblProdutoquantidade_minima_fab: TFloatField;
    tblProdutoapresentacao: TStringField;
    tblProdutosituacao: TIntegerField;
    tblProdutoprecovenda1: TFloatField;
    tblProdutoprecovenda2: TFloatField;
    tblProdutoprecovenda3: TFloatField;
    tblProdutoprecovenda4: TFloatField;
    tblProdutoprecovenda5: TFloatField;
    tblProdutodesconto_precovenda: TFloatField;
    tblProdutodata_inventario_atual: TDateField;
    tblProdutocusto_inventario_atual: TFloatField;
    tblProdutoestoque_inventario_atual: TFloatField;
    tblProdutomargem_minima: TFloatField;
    tblProdutopiscofins: TStringField;
    tblProdutoreferencia_fornecedor: TStringField;
    tblProdutocomissao1: TFloatField;
    tblProdutomargem_desconto: TFloatField;
    tblProdutotamanho: TStringField;
    tblProdutocor: TStringField;
    tblProdutoincidencia_piscofins: TStringField;
    tblProdutoveic_chassi: TStringField;
    tblProdutoveic_serie: TStringField;
    tblProdutoveic_potencia: TStringField;
    tblProdutoveic_peso_liquido: TStringField;
    tblProdutoveic_peso_bruto: TStringField;
    tblProdutoveic_tipo_combustivel: TStringField;
    tblProdutoveic_renavam: TStringField;
    tblProdutoveic_ano_fabricacao: TIntegerField;
    tblProdutoveic_ano_modelo: TIntegerField;
    tblProdutoveic_tipo: TStringField;
    tblProdutoveic_tipo_pintura: TStringField;
    tblProdutoveic_cod_cor: TStringField;
    tblProdutoveic_cor: TStringField;
    tblProdutoveic_vin: TStringField;
    tblProdutoveic_numero_motor: TStringField;
    tblProdutoveic_cmkg: TStringField;
    tblProdutoveic_cm3: TStringField;
    tblProdutoveic_distancia_eixo: TStringField;
    tblProdutoveic_cod_marca: TStringField;
    tblProdutoveic_especie: TStringField;
    tblProdutoveic_condicao: TStringField;
    tblProdutolote_fabricacao: TStringField;
    tblProdutolote_validade: TDateField;
    tblProdutomargem_agregada: TFloatField;
    tblProdutocodbarra_novartis: TStringField;
    tblProdutofarmacia_dcb: TStringField;
    tblProdutofarmacia_abcfarma: TStringField;
    tblProdutofarmacia_apresentacao_caixa: TStringField;
    tblProdutofarmacia_principioativo: TStringField;
    tblProdutoultima_compra: TDateField;
    tblProdutofarmacia_datavigencia: TDateField;
    tblProdutofarmacia_tipo: TStringField;
    tblProdutousa_combustivel: TStringField;
    tblProdutoreferencia: TStringField;
    tblProdutoperda: TFloatField;
    tblProdutocomposicao1: TStringField;
    tblProdutocomposicao2: TStringField;
    tblProdutoiat: TStringField;
    tblProdutoippt: TStringField;
    tblProdutosituacao_tributaria: TStringField;
    tblProdutoflag_sis: TStringField;
    tblProdutoflag_aceito: TStringField;
    tblProdutoflag_est: TStringField;
    tblProdutocsosn: TStringField;
    tblProdutocodoriginal: TStringField;
    tblProdutocusto_atacado: TFloatField;
    tblProdutounidade_atacado: TStringField;
    tblProdutoqtde_embalagematacado: TFloatField;
    tblProdutopmargem1: TFloatField;
    tblProdutopmargem2: TFloatField;
    tblProdutopmargem3: TFloatField;
    tblProdutopmargem4: TFloatField;
    tblProdutopmargem5: TFloatField;
    tblProdutopmargematacado1: TFloatField;
    tblProdutopmargematacado2: TFloatField;
    tblProdutopmargematacado3: TFloatField;
    tblProdutopmargematacado4: TFloatField;
    tblProdutopmargematacado5: TFloatField;
    tblProdutopmargematacado6: TFloatField;
    tblProdutoprecoatacado1: TFloatField;
    tblProdutoprecoatacado2: TFloatField;
    tblProdutoprecoatacado3: TFloatField;
    tblProdutoprecoatacado4: TFloatField;
    tblProdutoprecoatacado5: TFloatField;
    tblProdutoind_cfop: TStringField;
    tblProdutocfop_desc: TStringField;
    tblProdutousa_lote: TIntegerField;
    tblProdutoind_cfop_venda_dentro: TStringField;
    tblProdutocodconta: TStringField;
    tblProdutoind_cfop_venda_fora: TStringField;
    tblProdutoind_cfop_devolucao_dentro: TStringField;
    tblProdutoind_cfop_devolucao_fora: TStringField;
    tblProdutoind_cfop_garantia_dentro: TStringField;
    tblProdutoind_cfop_garantia_fora: TStringField;
    tblProdutousa_tb_pc: TStringField;
    tblProdutoativa: TStringField;
    tblProdutocest: TStringField;
    tblProdutoorigem: TIntegerField;
    tblProdutoind_cfop_nfce: TStringField;
    tblProdutoid_tipo_servico: TIntegerField;
    tblProdutonao_movimenta_estoque: TStringField;
    tblProdutopesagem_auotmatica: TStringField;
    tblProdutoinforma_codigo_barra_xml: TStringField;
    tblProdutocodigo_anp: TStringField;
    tblProdutocombo: TStringField;
    tblProdutoind_cfop_dev_compra_dentro: TStringField;
    tblProdutoind_cfop_dev_compra_fora: TStringField;
    tblProdutopizza: TStringField;
    tblProdutopercglnn: TFloatField;
    tblProdutopercglgni: TFloatField;
    tblProdutopglp: TFloatField;
    tblProdutovpart: TFloatField;
    tblProdutoecf_icms: TStringField;
    tblProdutoidonline: TIntegerField;
    tblProdutoemdestaque: TStringField;
    tblProdutodescontomaximo: TFloatField;
    tblProdutoatb: TStringField;
    tblProdutocontrolalote: TStringField;
    tblProdutocodbarra: TStringField;
    tblProdutounidade: TStringField;
    tblProdutopiscstcsosn: TStringField;
    tblProdutocofinscstcsosn: TStringField;
    tblProdutoicmsrepasse: TStringField;
    tblProdutoretornavel: TStringField;
    tblNFCompraemit_ie: TStringField;
    tblVerificaNotaemit_ie: TStringField;
    dxBarLargeButton3: TdxBarLargeButton;
    qryNF: TUniQuery;
    grdProdutosViewinfnfe_chave: TcxGridDBColumn;
    qryNFinfnfe_versao: TStringField;
    qryNFinfnfe_chave: TStringField;
    qryNFide_cuf: TIntegerField;
    qryNFide_cnf: TIntegerField;
    qryNFide_natop: TStringField;
    qryNFide_mod: TIntegerField;
    qryNFide_serie: TIntegerField;
    qryNFide_nnf: TIntegerField;
    qryNFide_dhemi: TDateTimeField;
    qryNFide_dhsaient: TDateTimeField;
    qryNFide_tpnf: TIntegerField;
    qryNFide_iddest: TIntegerField;
    qryNFide_cmunfg: TIntegerField;
    qryNFide_tpimp: TIntegerField;
    qryNFide_tpemis: TIntegerField;
    qryNFide_cdv: TIntegerField;
    qryNFide_tpamb: TIntegerField;
    qryNFide_finnfe: TIntegerField;
    qryNFide_indfinal: TIntegerField;
    qryNFide_indpres: TIntegerField;
    qryNFide_procemi: TIntegerField;
    qryNFide_verproc: TStringField;
    qryNFemit_xnome: TStringField;
    qryNFemit_xfant: TStringField;
    qryNFemit_enderemit_xlgr: TStringField;
    qryNFemit_enderemit_nro: TStringField;
    qryNFemit_enderemit_xbairro: TStringField;
    qryNFemit_enderemit_cmun: TIntegerField;
    qryNFemit_enderemit_xmun: TStringField;
    qryNFemit_enderemit_uf: TStringField;
    qryNFemit_enderemit_cep: TIntegerField;
    qryNFemit_enderemit_cpais: TIntegerField;
    qryNFemit_enderemit_xpais: TStringField;
    qryNFemit_crt: TIntegerField;
    qryNFdest_xnome: TStringField;
    qryNFdest_xfant: TStringField;
    qryNFdest_enderdest_xlgr: TStringField;
    qryNFdest_enderdest_nro: TStringField;
    qryNFdest_enderdest_xbairro: TStringField;
    qryNFdest_enderdest_cmun: TIntegerField;
    qryNFdest_enderdest_xmun: TStringField;
    qryNFdest_enderdest_uf: TStringField;
    qryNFdest_enderdest_cep: TIntegerField;
    qryNFdest_enderdest_cpais: TIntegerField;
    qryNFdest_enderdest_xpais: TStringField;
    qryNFdest_indiedest: TIntegerField;
    qryNFdest_ie: TIntegerField;
    qryNFdest_email: TStringField;
    qryNFtotal_icmstot_vbc: TFloatField;
    qryNFtotal_icmstot_vicms: TFloatField;
    qryNFtotal_icmstot_vicmsdeson: TFloatField;
    qryNFtotal_icmstot_vfcpufdest: TFloatField;
    qryNFtotal_icmstot_vicmsufdest: TFloatField;
    qryNFtotal_icmstot_vicmsufremet: TFloatField;
    qryNFtotal_icmstot_vfcp: TFloatField;
    qryNFtotal_icmstot_vbcst: TFloatField;
    qryNFtotal_icmstot_vst: TFloatField;
    qryNFtotal_icmstot_vfcpst: TFloatField;
    qryNFtotal_icmstot_vfcpstret: TFloatField;
    qryNFtotal_icmstot_vprod: TFloatField;
    qryNFtotal_icmstot_vfrete: TFloatField;
    qryNFtotal_icmstot_vseg: TFloatField;
    qryNFtotal_icmstot_vdesc: TFloatField;
    qryNFtotal_icmstot_vii: TFloatField;
    qryNFtotal_icmstot_vipi: TFloatField;
    qryNFtotal_icmstot_vipidevol: TFloatField;
    qryNFtotal_icmstot_vpis: TFloatField;
    qryNFtotal_icmstot_vcofins: TFloatField;
    qryNFtotal_icmstot_voutro: TFloatField;
    qryNFtotal_icmstot_vnf: TFloatField;
    qryNFtransp_modfrete: TIntegerField;
    qryNFtransp_transporta_xnome: TStringField;
    qryNFtransp_transporta_xender: TStringField;
    qryNFtransp_transporta_xmun: TStringField;
    qryNFtransp_transporta_uf: TStringField;
    qryNFtransp_vol_qvol: TIntegerField;
    qryNFtransp_vol_esp: TStringField;
    qryNFtransp_vol_marca: TStringField;
    qryNFtransp_vol_pesol: TFloatField;
    qryNFtransp_vol_pesob: TFloatField;
    qryNFcobr_fat_nfat: TStringField;
    qryNFcobr_fat_vorig: TFloatField;
    qryNFcobr_fat_vdesc: TFloatField;
    qryNFcobr_fat_vliq: TFloatField;
    qryNFpag_detpag_indpag: TIntegerField;
    qryNFpag_detpag_tpag: TIntegerField;
    qryNFpag_detpag_vpag: TFloatField;
    qryNFpag_detpag_card_tpintegra: TIntegerField;
    qryNFpag_detpag_card_cnpj: TIntegerField;
    qryNFpag_detpag_card_tband: TIntegerField;
    qryNFpag_detpag_card_caut: TStringField;
    qryNFpag_vtroco: TFloatField;
    qryNFinfadic_infcpl: TStringField;
    qryNFinfadic_infadfisco: TStringField;
    qryNFinfresptec_xcontato: TStringField;
    qryNFinfresptec_email: TStringField;
    qryNFinfresptec_fone: TStringField;
    qryNFsignature: TMemoField;
    qryNFprotnfe: TMemoField;
    qryNFcodigo: TIntegerField;
    qryNFcad_status: TIntegerField;
    qryNFcad_cfop: TIntegerField;
    qryNFemit_cnpj: TStringField;
    qryNFdest_cnpj: TStringField;
    qryNFemit_enderemit_fone: TStringField;
    qryNFdest_enderdest_fone: TStringField;
    qryNFtransp_transporta_cnpj: TStringField;
    qryNFinfresptec_cnpj: TStringField;
    qryNFtotal_icmstot_vTotTrib: TFloatField;
    qryNFxped: TStringField;
    qryNFemit_im: TStringField;
    qryNFemit_cnae: TStringField;
    qryNFemit_enderemit_xcpl: TStringField;
    qryNFdest_Enderdest_xcpl: TStringField;
    qryNFdest_im: TStringField;
    qryNFcad_integracao: TIntegerField;
    qryNFcad_integracao_dados: TStringField;
    qryNFtransp_transporta_ie: TStringField;
    qryNFemit_ie: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure grdProdutosViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdProdutosViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btnSalvarClick(Sender: TObject);
    procedure qryNFItensBeforeDelete(DataSet: TDataSet);
    procedure dxBarLargeButton3Click(Sender: TObject);
  private
    function VerificaFornecedor(CNPJ: string): string;
  public
    Novo: boolean;
  end;

var
  frmCadastroNFEntrada: TfrmCadastroNFEntrada;

implementation

uses
  uDM, uProdutosLinkConcilicacao, uCadastroProdutos, ufuncoes;

{$R *.dfm}

{ TForm1 }

procedure TfrmCadastroNFEntrada.btnExcluirClick(Sender: TObject);
begin
  tblNFCompra.Delete();
  qryApagarItens.ExecSQL();
  Application.MessageBox(PWideChar('Nota Fiscal ' + tblNFCompracodigo.AsString + ' excluída!'), 'Atenção!', MB_ICONINFORMATION);
  Close();
end;

procedure TfrmCadastroNFEntrada.btnSairClick(Sender: TObject);
begin
  tblNFCompra.Cancel();
  qryNFItens.Close();
  Close();
end;

procedure TfrmCadastroNFEntrada.btnSalvarClick(Sender: TObject);
begin
  if tblNFCompra.State in [dsEdit, dsInsert] then
    tblNFCompra.Post();

  qryNFItens.First();

  while not qryNFItens.Eof do
  begin
    if qryNFItensdet_prod_cprod.AsString = '' then
    begin
      tblProduto.Open();

      tblProduto.Append();
      tblProdutocodigo.AsString := DM.GeraCodigoDisponivel('commerce.produtos');
      tblProdutoproduto.AsString := qryNFItensdet_prod_xprod.AsString;
      tblProdutodata_cadastro.AsDateTime := Date;
      tblProdutoprecocusto.AsFloat := qryNFItensdet_prod_vuncom.AsFloat;
      tblProdutoncm.AsString := qryNFItensdet_prod_ncm.AsString;
      tblProdutoestoque.AsFloat := qryNFItensdet_prod_qcom.AsFloat;

      tblNFItens.Open();
      tblNFItens.Locate('codigo', qryNFItenscodigo.AsString, []);
      tblNFItens.Edit();
      tblNFItensdet_prod_cprod.AsString := qryNFItenscodigo.AsString;
      tblNFItens.Post();
      tblNFItens.Close();

      tblProduto.Post();
    end;

    qryNFItens.Next();
  end;

  Application.MessageBox(PWideChar('Nota de entrada lançada!' + sLineBreak + 'Nota Nº: ' + edtNrNFe.Text + ' importada!'), 'Atenção!', MB_ICONINFORMATION);
  Close();
end;

procedure TfrmCadastroNFEntrada.dxBarLargeButton2Click(Sender: TObject);
var
  i, Itens: integer;
begin
  OpenDialog1.FileName := '';
  OpenDialog1.Title := 'Selecione a NFe';
  OpenDialog1.DefaultExt := '*.xml';
  OpenDialog1.Filter := 'Arquivos XML (*.xml)|*.xml';

  if OpenDialog1.Execute then
  begin
    try
      DM.ACBrNFe.NotasFiscais.Clear();
      DM.ACBrNFe.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
      tblVerificaNota.Open();

      if not tblVerificaNota.Locate('infnfe_chave', DM.ACBrNFe.NotasFiscais[0].NFe.infNFe.ID, []) then
      begin
        GravarXMLnoBanco(tblNFCompra, tblNFItens, nil);
        qryNFItens.Close();
        qryNFItens.ParamByName('pCODNOTA').AsString := edtChave.Text;
        qryNFItens.Open();
        qryNFItens.Refresh();
        VerificaFornecedor(DM.ACBrNFe.NotasFiscais[0].NFe.Emit.CNPJCPF);
        Application.MessageBox(PWideChar('Pessoa ' + edtFornecedor.Text + ' cadastrada!' + sLineBreak + 'Nota Nº: ' + edtNrNFe.Text + ' importada!'), 'Atenção!', MB_ICONINFORMATION);
      end
      else
      begin
        Application.MessageBox(PWideChar('Nota já importada!' + sLineBreak + 'Tente outra nota.'), 'Atenção!', MB_ICONINFORMATION);
      end;
    except
      Application.MessageBox(PWideChar('Este arquivo é inválido. Peça uma nova cópia do XML ao fornecedor ou consulte a chave de acesso'), 'Atenção!', MB_ICONINFORMATION);
      qryApagarItens.ExecSQL();
      exit;
    end;
  end;
end;

procedure TfrmCadastroNFEntrada.dxBarLargeButton3Click(Sender: TObject);
var
  modelo: integer;
begin
  DM.ACBrNFe.NotasFiscais.Clear();

  qryNF.Close();
  qryNF.ParamByName('pCHAVE').Value := edtChave.Text;
  qryNF.Open();

  modelo := qryNFide_mod.Value;

  case modelo of
    55:
      begin
        DM.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFe;
        DM.ACBrNFe.DANFE := DM.DANFe;
      end;
    65:
      begin
        DM.ACBrNFe.Configuracoes.Geral.ModeloDF := moNFCe;
        DM.ACBrNFe.DANFE := DM.DANFCe;
      end;
  end;

  if qryNFsignature.AsString <> '' then
  begin
    DM.ACBrNFe.NotasFiscais.LoadFromString(qryNFsignature.AsString);
    DM.ACBrNFe.NotasFiscais[0].Imprimir();
  end;
end;

procedure TfrmCadastroNFEntrada.edtCodigoExit(Sender: TObject);
begin
  if edtCodigo.Text = '' then
    edtCodigo.Text := Dm.GeraCodigoDisponivel('commerce.nfentrada');

  qryApagarItens.ParamByName('pCODNOTA').AsString := edtChave.Text;

  qryNFItens.ParamByName('pCODNOTA').AsString := edtChave.Text;
  qryNFItens.Open();
  qryNFItens.Refresh();
end;

procedure TfrmCadastroNFEntrada.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmCadastroNFEntrada.FormShow(Sender: TObject);
begin
  edtCodigo.SetFocus();
  edtChave.SetFocus();
end;

procedure TfrmCadastroNFEntrada.grdProdutosViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  codproduto: string;
begin
  tblProduto.Open();

  if tblProduto.IsEmpty then
  begin
    tblProduto.Append();
    tblProdutocodigo.AsString := DM.GeraCodigoDisponivel('commerce.produtos');
    tblProdutoproduto.AsString := grdProdutosView.Controller.SelectedRows[0].Values[3];
    tblProdutodata_cadastro.AsDateTime := Date;
    tblProdutoprecocusto.AsFloat := grdProdutosView.Controller.SelectedRows[0].Values[5];
    tblProdutoestoque.AsFloat := grdProdutosView.Controller.SelectedRows[0].Values[4];
    tblProdutoncm.AsString := Onlynumber(grdProdutosView.Controller.SelectedRows[0].Values[8]);
    tblProduto.Post();
  end
  else
  begin
    frmLinkProduto.ShowModal();
    codproduto := frmLinkProduto.Codigo;

    if (codproduto <> '') and tblProduto.Locate('codigo', codproduto, []) then
    begin
      qryAlteraEstoque.ParamByName('pESTOQUE').Value := grdProdutosView.Controller.SelectedRows[0].Values[4];
      qryAlteraEstoque.ParamByName('pCODIGO').Value := codproduto;
      qryAlteraEstoque.ExecSQL();

      tblNFItens.Open();
      tblNFItens.Locate('codigo', grdProdutosView.Controller.SelectedRows[0].Values[0], []);
      tblNFItens.Edit();
      tblNFItensdet_prod_cprod.AsString := codproduto;
      tblNFItens.Post();
      tblNFItens.Close();

      qryNFItens.Refresh();
    end;

    grdProdutosView.DataController.Refresh();
  end;
end;

procedure TfrmCadastroNFEntrada.grdProdutosViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 1) = '' then
    ACanvas.Brush.Color := clRed;
end;

function TfrmCadastroNFEntrada.VerificaFornecedor(CNPJ: string): string;
var
  Empresa: TEmpresa;
begin
  tblPessoa.Open();

  if tblPessoa.Locate('cpf', OnlyNumber(CNPJ), []) then
  begin
    Result := tblPessoacodigo.AsString;
  end
  else
  begin
    Empresa := DM.ConsultaCNPJ(OnlyNumber(CNPJ));

    tblPessoa.Append();

    tblPessoacodigo.Value := DM.GeraCodigoDisponivel('commerce.pessoas');
    tblPessoanome.Value := Empresa.Nome;
    tblPessoaendereco.Value := Empresa.Endereco.Rua;
    tblPessoanumero.Value := Empresa.Endereco.Numero;
    tblPessoabairro.Value := Empresa.Endereco.Bairro;
    tblPessoacomplemento.Value := Empresa.Endereco.Complemento;
    tblPessoacidade.Value := Empresa.Endereco.Cidade;
    tblPessoauf.Value := Empresa.Endereco.UF;
    tblPessoacpf.Value := OnlyNumber(Empresa.CNPJ);
    tblPessoarg.Value := Empresa.IE;
    tblPessoadata_cadastro.Value := Empresa.Abertura;
    tblPessoaresponsavel.Value := Empresa.Responsavel;
    tblPessoacep.Value := OnlyNumber(Empresa.Endereco.CEP);
    tblPessoatelefone1.Value := OnlyNumber(Empresa.telefone);
    tblPessoaemail.Value := Empresa.email;
    tblPessoatipopessoa.Value := 'Fornecedor';
    Result := tblPessoacodigo.AsString;
    edtFornecedor.Text := tblPessoanome.AsString;
    tblPessoa.Post();
  end;
end;

procedure TfrmCadastroNFEntrada.qryNFItensBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Deseja mesmo excluir o item?', mtConfirmation, [mbyes, mbno], 0) = mrno then
  begin
    Abort;
    Exit;
  end;
end;

end.

