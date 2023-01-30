unit uExportarXMLContador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, uDM, dxSkinsCore, dxRibbonCustomizationForm, cxTextEdit,
  dxSkinsForm, dxStatusBar, dxRibbonStatusBar, dxDateTimeWheelPicker, cxCheckBox,
  ACBrMail, ACBrBase, ACBrDFe, ACBrNFe, Data.DB, MemDS, DBAccess, Uni,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControlAdapters,
  Vcl.ExtCtrls, DateUtils, ACBrUtil, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxContainer,
  cxDateNavigator, cxCalendar, cxCurrencyEdit, dxLayoutcxEditAdapters, cxLabel,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxScrollbarAnnotations;

type
  TfrmEnvioXML = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    menuData: TcxBarEditItem;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    menuDANFe: TcxBarEditItem;
    ACBrNFe: TACBrNFe;
    ACBrMail: TACBrMail;
    qryNF: TUniQuery;
    qryNFItens: TUniQuery;
    qryNFEntrada: TUniQuery;
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
    qryNFEntradaItens: TUniQuery;
    qryNFEntradainfnfe_versao: TStringField;
    qryNFEntradainfnfe_chave: TStringField;
    qryNFEntradaide_cuf: TIntegerField;
    qryNFEntradaide_cnf: TIntegerField;
    qryNFEntradaide_natop: TStringField;
    qryNFEntradaide_mod: TIntegerField;
    qryNFEntradaide_serie: TIntegerField;
    qryNFEntradaide_nnf: TIntegerField;
    qryNFEntradaide_dhemi: TDateTimeField;
    qryNFEntradaide_dhsaient: TDateTimeField;
    qryNFEntradaide_tpnf: TIntegerField;
    qryNFEntradaide_iddest: TIntegerField;
    qryNFEntradaide_cmunfg: TIntegerField;
    qryNFEntradaide_tpimp: TIntegerField;
    qryNFEntradaide_tpemis: TIntegerField;
    qryNFEntradaide_cdv: TIntegerField;
    qryNFEntradaide_tpamb: TIntegerField;
    qryNFEntradaide_finnfe: TIntegerField;
    qryNFEntradaide_indfinal: TIntegerField;
    qryNFEntradaide_indpres: TIntegerField;
    qryNFEntradaide_procemi: TIntegerField;
    qryNFEntradaide_verproc: TStringField;
    qryNFEntradaemit_xnome: TStringField;
    qryNFEntradaemit_xfant: TStringField;
    qryNFEntradaemit_enderemit_xlgr: TStringField;
    qryNFEntradaemit_enderemit_nro: TStringField;
    qryNFEntradaemit_enderemit_xbairro: TStringField;
    qryNFEntradaemit_enderemit_cmun: TIntegerField;
    qryNFEntradaemit_enderemit_xmun: TStringField;
    qryNFEntradaemit_enderemit_uf: TStringField;
    qryNFEntradaemit_enderemit_cep: TIntegerField;
    qryNFEntradaemit_enderemit_cpais: TIntegerField;
    qryNFEntradaemit_enderemit_xpais: TStringField;
    qryNFEntradaemit_crt: TIntegerField;
    qryNFEntradadest_xnome: TStringField;
    qryNFEntradadest_xfant: TStringField;
    qryNFEntradadest_enderdest_xlgr: TStringField;
    qryNFEntradadest_enderdest_nro: TStringField;
    qryNFEntradadest_enderdest_xbairro: TStringField;
    qryNFEntradadest_enderdest_cmun: TIntegerField;
    qryNFEntradadest_enderdest_xmun: TStringField;
    qryNFEntradadest_enderdest_uf: TStringField;
    qryNFEntradadest_enderdest_cep: TIntegerField;
    qryNFEntradadest_enderdest_cpais: TIntegerField;
    qryNFEntradadest_enderdest_xpais: TStringField;
    qryNFEntradadest_indiedest: TIntegerField;
    qryNFEntradadest_ie: TIntegerField;
    qryNFEntradadest_email: TStringField;
    qryNFEntradatotal_icmstot_vbc: TFloatField;
    qryNFEntradatotal_icmstot_vicms: TFloatField;
    qryNFEntradatotal_icmstot_vicmsdeson: TFloatField;
    qryNFEntradatotal_icmstot_vfcpufdest: TFloatField;
    qryNFEntradatotal_icmstot_vicmsufdest: TFloatField;
    qryNFEntradatotal_icmstot_vicmsufremet: TFloatField;
    qryNFEntradatotal_icmstot_vfcp: TFloatField;
    qryNFEntradatotal_icmstot_vbcst: TFloatField;
    qryNFEntradatotal_icmstot_vst: TFloatField;
    qryNFEntradatotal_icmstot_vfcpst: TFloatField;
    qryNFEntradatotal_icmstot_vfcpstret: TFloatField;
    qryNFEntradatotal_icmstot_vprod: TFloatField;
    qryNFEntradatotal_icmstot_vfrete: TFloatField;
    qryNFEntradatotal_icmstot_vseg: TFloatField;
    qryNFEntradatotal_icmstot_vdesc: TFloatField;
    qryNFEntradatotal_icmstot_vii: TFloatField;
    qryNFEntradatotal_icmstot_vipi: TFloatField;
    qryNFEntradatotal_icmstot_vipidevol: TFloatField;
    qryNFEntradatotal_icmstot_vpis: TFloatField;
    qryNFEntradatotal_icmstot_vcofins: TFloatField;
    qryNFEntradatotal_icmstot_voutro: TFloatField;
    qryNFEntradatotal_icmstot_vnf: TFloatField;
    qryNFEntradatransp_modfrete: TIntegerField;
    qryNFEntradatransp_transporta_xnome: TStringField;
    qryNFEntradatransp_transporta_xender: TStringField;
    qryNFEntradatransp_transporta_xmun: TStringField;
    qryNFEntradatransp_transporta_uf: TStringField;
    qryNFEntradatransp_vol_qvol: TIntegerField;
    qryNFEntradatransp_vol_esp: TStringField;
    qryNFEntradatransp_vol_marca: TStringField;
    qryNFEntradatransp_vol_pesol: TFloatField;
    qryNFEntradatransp_vol_pesob: TFloatField;
    qryNFEntradacobr_fat_nfat: TStringField;
    qryNFEntradacobr_fat_vorig: TFloatField;
    qryNFEntradacobr_fat_vdesc: TFloatField;
    qryNFEntradacobr_fat_vliq: TFloatField;
    qryNFEntradapag_detpag_indpag: TIntegerField;
    qryNFEntradapag_detpag_tpag: TIntegerField;
    qryNFEntradapag_detpag_vpag: TFloatField;
    qryNFEntradapag_detpag_card_tpintegra: TIntegerField;
    qryNFEntradapag_detpag_card_cnpj: TIntegerField;
    qryNFEntradapag_detpag_card_tband: TIntegerField;
    qryNFEntradapag_detpag_card_caut: TStringField;
    qryNFEntradapag_vtroco: TFloatField;
    qryNFEntradainfadic_infcpl: TStringField;
    qryNFEntradainfadic_infadfisco: TStringField;
    qryNFEntradainfresptec_xcontato: TStringField;
    qryNFEntradainfresptec_email: TStringField;
    qryNFEntradainfresptec_fone: TStringField;
    qryNFEntradasignature: TMemoField;
    qryNFEntradaprotnfe: TMemoField;
    qryNFEntradacodigo: TIntegerField;
    qryNFEntradacad_status: TIntegerField;
    qryNFEntradacad_cfop: TIntegerField;
    qryNFEntradaemit_cnpj: TStringField;
    qryNFEntradadest_cnpj: TStringField;
    qryNFEntradaemit_enderemit_fone: TStringField;
    qryNFEntradadest_enderdest_fone: TStringField;
    qryNFEntradatransp_transporta_cnpj: TStringField;
    qryNFEntradainfresptec_cnpj: TStringField;
    qryNFEntradatotal_icmstot_vTotTrib: TFloatField;
    qryNFEntradaxped: TStringField;
    qryNFEntradaemit_im: TStringField;
    qryNFEntradaemit_cnae: TStringField;
    qryNFEntradaemit_enderemit_xcpl: TStringField;
    qryNFEntradadest_Enderdest_xcpl: TStringField;
    qryNFEntradadest_im: TStringField;
    qryNFEntradacad_integracao: TIntegerField;
    qryNFEntradacad_integracao_dados: TStringField;
    qryNFEntradatransp_transporta_ie: TStringField;
    qryNFEntradaemit_ie: TStringField;
    qryNFEntradaItensdet_nitem: TIntegerField;
    qryNFEntradaItensdet_prod_cprod: TStringField;
    qryNFEntradaItensdet_prod_cean: TStringField;
    qryNFEntradaItensdet_prod_xprod: TStringField;
    qryNFEntradaItensdet_prod_cfop: TIntegerField;
    qryNFEntradaItensdet_prod_ucom: TStringField;
    qryNFEntradaItensdet_prod_qcom: TFloatField;
    qryNFEntradaItensdet_prod_vuncom: TFloatField;
    qryNFEntradaItensdet_prod_vprod: TFloatField;
    qryNFEntradaItensdet_prod_ceantrib: TStringField;
    qryNFEntradaItensdet_prod_utrib: TStringField;
    qryNFEntradaItensdet_prod_qtrib: TFloatField;
    qryNFEntradaItensdet_prod_vuntrib: TFloatField;
    qryNFEntradaItensdet_prod_indtot: TIntegerField;
    qryNFEntradaItensdet_prod_imposto_icms: TStringField;
    qryNFEntradaItensdet_prod_imposto_icms_orig: TFloatField;
    qryNFEntradaItensdet_prod_imposto_icms_cst: TFloatField;
    qryNFEntradaItensdet_prod_imposto_icms_modbc: TFloatField;
    qryNFEntradaItensdet_prod_imposto_icms_vbc: TFloatField;
    qryNFEntradaItensdet_prod_imposto_icms_picms: TFloatField;
    qryNFEntradaItensdet_prod_imposto_icms_vicms: TFloatField;
    qryNFEntradaItensdet_prod_imposto_ipi: TStringField;
    qryNFEntradaItensdet_prod_imposto_ipi_cenq: TFloatField;
    qryNFEntradaItensdet_prod_imposto_ipi_ipint: TFloatField;
    qryNFEntradaItensdet_prod_imposto_ipi_cst: TFloatField;
    qryNFEntradaItensdet_prod_imposto_pis: TStringField;
    qryNFEntradaItensdet_prod_imposto_pis_pisaliq_cst: TFloatField;
    qryNFEntradaItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField;
    qryNFEntradaItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField;
    qryNFEntradaItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField;
    qryNFEntradaItensdet_prod_imposto_cofins: TStringField;
    qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField;
    qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField;
    qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField;
    qryNFEntradaItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField;
    qryNFEntradaItenscodigo: TIntegerField;
    qryNFEntradaItensinfnfe_chave: TStringField;
    qryNFEntradaItenside_mod: TIntegerField;
    qryNFEntradaItenside_serie: TIntegerField;
    qryNFEntradaItenside_nnf: TIntegerField;
    qryNFEntradaItensdet_prod_vtotalitem: TFloatField;
    qryNFEntradaItenscsosn: TIntegerField;
    qryNFEntradaItensAliquota_STEfetivo: TFloatField;
    qryNFEntradaItensnitemped: TStringField;
    qryNFEntradaItensxped: TStringField;
    qryNFEntradaItensdet_prod_vdesc: TFloatField;
    qryNFEntradaItensdet_prod_voutro: TFloatField;
    qryNFEntradaItensdet_prod_vfrete: TFloatField;
    qryNFEntradaItensdet_prod_vseg: TFloatField;
    qryNFEntradaItensdet_prod_ncm: TStringField;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    grdSaidaView: TcxGridDBTableView;
    grdSaidaLevel1: TcxGridLevel;
    grdSaida: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    grdEntradaView: TcxGridDBTableView;
    grdEntradaLevel1: TcxGridLevel;
    grdEntrada: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dsNF: TDataSource;
    dsNFentrada: TDataSource;
    edtDatas: TcxDateNavigator;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    grdSaidaViewide_mod: TcxGridDBColumn;
    grdSaidaViewide_serie: TcxGridDBColumn;
    grdSaidaViewide_nnf: TcxGridDBColumn;
    grdSaidaViewide_dhemi: TcxGridDBColumn;
    grdSaidaViewtotal_icmstot_vnf: TcxGridDBColumn;
    grdEntradaViewide_nnf: TcxGridDBColumn;
    grdEntradaViewide_dhemi: TcxGridDBColumn;
    grdEntradaViewtotal_icmstot_vnf: TcxGridDBColumn;
    qrySomaNF: TUniQuery;
    qrySomaNFentrada: TUniQuery;
    qrySomaNFtotal: TFloatField;
    qrySomaNFentradatotal: TFloatField;
    lblRecebido: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    lblEmitido: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDatasSelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
    procedure qrySomaNFentradaAfterOpen(DataSet: TDataSet);
    procedure qrySomaNFAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnvioXML: TfrmEnvioXML;

implementation

{$R *.dfm}

{ TForm1 }

procedure TfrmEnvioXML.edtDatasSelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
begin
  qryNF.Close();
  qrySomaNF.Close();
  qryNFentrada.Close();
  qrySomaNFentrada.Close();

  qryNF.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qryNF.ParamByName('pANO').Value := YearOf(edtDatas.Date);
  qryNFentrada.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qryNFentrada.ParamByName('pANO').Value := YearOf(edtDatas.Date);

  qrySomaNF.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qrySomaNF.ParamByName('pANO').Value := YearOf(edtDatas.Date);
  qrySomaNFentrada.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qrySomaNFentrada.ParamByName('pANO').Value := YearOf(edtDatas.Date);

  qryNFentrada.Open();
  qrySomaNFentrada.Open();
  qryNF.Open();
  qryNFentrada.Open();
end;

procedure TfrmEnvioXML.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmEnvioXML.FormShow(Sender: TObject);
begin
  DM.AtualizaTabela('commerce', 'nfentrada', qryNFEntrada);

  qryNF.Close();
  qrySomaNF.Close();
  qryNFentrada.Close();
  qrySomaNFentrada.Close();

  qryNF.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qryNF.ParamByName('pANO').Value := YearOf(edtDatas.Date);
  qryNFentrada.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qryNFentrada.ParamByName('pANO').Value := YearOf(edtDatas.Date);

  qrySomaNF.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qrySomaNF.ParamByName('pANO').Value := YearOf(edtDatas.Date);
  qrySomaNFentrada.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qrySomaNFentrada.ParamByName('pANO').Value := YearOf(edtDatas.Date);

  qrySomaNF.Open();
  qrySomaNFentrada.Open();
  qryNF.Open();
  qryNFentrada.Open();
end;

procedure TfrmEnvioXML.qrySomaNFAfterOpen(DataSet: TDataSet);
begin
  lblEmitido.Caption := 'Total emitido no período: ' + FormatFloatBr(qrySomaNFtotal.AsFloat, '#,##0.00');
end;

procedure TfrmEnvioXML.qrySomaNFentradaAfterOpen(DataSet: TDataSet);
begin
  lblRecebido.Caption := 'Total emitido no período: ' + FormatFloatBr(qrySomaNFentradatotal.AsFloat, '#,##0.00');
end;

end.

