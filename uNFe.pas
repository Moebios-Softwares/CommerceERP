unit uNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, cxTextEdit, dxRibbonCustomizationForm, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxCalendar,
  cxCurrencyEdit, cxImageComboBox, cxButtonEdit, dxSkinBasic, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxCore, dxScrollbarAnnotations;

type
  TfrmNFe = class(TdxRibbonForm)
    cxStyleRepository1: TcxStyleRepository;
    Linha2: TcxStyle;
    Linha: TcxStyle;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    tabProdutos: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    grdNFe: TcxGrid;
    grdNFeView: TcxGridDBTableView;
    grdNFeLevel1: TcxGridLevel;
    qryNFe: TUniQuery;
    dsNFe: TDataSource;
    grdNFeViewnumero: TcxGridDBColumn;
    grdNFeViewcfop: TcxGridDBColumn;
    grdNFeViewdata: TcxGridDBColumn;
    grdNFeViewvalor_produtos: TcxGridDBColumn;
    grdNFeViewtotal_nota: TcxGridDBColumn;
    grdNFeViewfrete: TcxGridDBColumn;
    grdNFeViewdesconto: TcxGridDBColumn;
    grdNFeViewtipo: TcxGridDBColumn;
    grdNFeViewnfe_situacao: TcxGridDBColumn;
    grdNFeViewnome: TcxGridDBColumn;
    qryApagarItens: TUniQuery;
    grdNFeViewEmitir: TcxGridDBColumn;
    qryNFeEmissao: TUniQuery;
    grdNFeViewide_mod: TcxGridDBColumn;
    grdNFeViewide_serie: TcxGridDBColumn;
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
    qryNFeEmissaoinfnfe_versao: TStringField;
    qryNFeEmissaoinfnfe_chave: TStringField;
    qryNFeEmissaoide_cuf: TIntegerField;
    qryNFeEmissaoide_cnf: TIntegerField;
    qryNFeEmissaoide_natop: TStringField;
    qryNFeEmissaoide_mod: TIntegerField;
    qryNFeEmissaoide_serie: TIntegerField;
    qryNFeEmissaoide_nnf: TIntegerField;
    qryNFeEmissaoide_dhemi: TDateTimeField;
    qryNFeEmissaoide_dhsaient: TDateTimeField;
    qryNFeEmissaoide_tpnf: TIntegerField;
    qryNFeEmissaoide_iddest: TIntegerField;
    qryNFeEmissaoide_cmunfg: TIntegerField;
    qryNFeEmissaoide_tpimp: TIntegerField;
    qryNFeEmissaoide_tpemis: TIntegerField;
    qryNFeEmissaoide_cdv: TIntegerField;
    qryNFeEmissaoide_tpamb: TIntegerField;
    qryNFeEmissaoide_finnfe: TIntegerField;
    qryNFeEmissaoide_indfinal: TIntegerField;
    qryNFeEmissaoide_indpres: TIntegerField;
    qryNFeEmissaoide_procemi: TIntegerField;
    qryNFeEmissaoide_verproc: TStringField;
    qryNFeEmissaoemit_xnome: TStringField;
    qryNFeEmissaoemit_xfant: TStringField;
    qryNFeEmissaoemit_enderemit_xlgr: TStringField;
    qryNFeEmissaoemit_enderemit_nro: TStringField;
    qryNFeEmissaoemit_enderemit_xbairro: TStringField;
    qryNFeEmissaoemit_enderemit_cmun: TIntegerField;
    qryNFeEmissaoemit_enderemit_xmun: TStringField;
    qryNFeEmissaoemit_enderemit_uf: TStringField;
    qryNFeEmissaoemit_enderemit_cep: TIntegerField;
    qryNFeEmissaoemit_enderemit_cpais: TIntegerField;
    qryNFeEmissaoemit_enderemit_xpais: TStringField;
    qryNFeEmissaoemit_crt: TIntegerField;
    qryNFeEmissaodest_xnome: TStringField;
    qryNFeEmissaodest_xfant: TStringField;
    qryNFeEmissaodest_enderdest_xlgr: TStringField;
    qryNFeEmissaodest_enderdest_nro: TStringField;
    qryNFeEmissaodest_enderdest_xbairro: TStringField;
    qryNFeEmissaodest_enderdest_cmun: TIntegerField;
    qryNFeEmissaodest_enderdest_xmun: TStringField;
    qryNFeEmissaodest_enderdest_uf: TStringField;
    qryNFeEmissaodest_enderdest_cep: TIntegerField;
    qryNFeEmissaodest_enderdest_cpais: TIntegerField;
    qryNFeEmissaodest_enderdest_xpais: TStringField;
    qryNFeEmissaodest_indiedest: TIntegerField;
    qryNFeEmissaodest_ie: TIntegerField;
    qryNFeEmissaodest_email: TStringField;
    qryNFeEmissaototal_icmstot_vbc: TFloatField;
    qryNFeEmissaototal_icmstot_vicms: TFloatField;
    qryNFeEmissaototal_icmstot_vicmsdeson: TFloatField;
    qryNFeEmissaototal_icmstot_vfcpufdest: TFloatField;
    qryNFeEmissaototal_icmstot_vicmsufdest: TFloatField;
    qryNFeEmissaototal_icmstot_vicmsufremet: TFloatField;
    qryNFeEmissaototal_icmstot_vfcp: TFloatField;
    qryNFeEmissaototal_icmstot_vbcst: TFloatField;
    qryNFeEmissaototal_icmstot_vst: TFloatField;
    qryNFeEmissaototal_icmstot_vfcpst: TFloatField;
    qryNFeEmissaototal_icmstot_vfcpstret: TFloatField;
    qryNFeEmissaototal_icmstot_vprod: TFloatField;
    qryNFeEmissaototal_icmstot_vfrete: TFloatField;
    qryNFeEmissaototal_icmstot_vseg: TFloatField;
    qryNFeEmissaototal_icmstot_vdesc: TFloatField;
    qryNFeEmissaototal_icmstot_vii: TFloatField;
    qryNFeEmissaototal_icmstot_vipi: TFloatField;
    qryNFeEmissaototal_icmstot_vipidevol: TFloatField;
    qryNFeEmissaototal_icmstot_vpis: TFloatField;
    qryNFeEmissaototal_icmstot_vcofins: TFloatField;
    qryNFeEmissaototal_icmstot_voutro: TFloatField;
    qryNFeEmissaototal_icmstot_vnf: TFloatField;
    qryNFeEmissaotransp_modfrete: TIntegerField;
    qryNFeEmissaotransp_transporta_xnome: TStringField;
    qryNFeEmissaotransp_transporta_xender: TStringField;
    qryNFeEmissaotransp_transporta_xmun: TStringField;
    qryNFeEmissaotransp_transporta_uf: TStringField;
    qryNFeEmissaotransp_vol_qvol: TIntegerField;
    qryNFeEmissaotransp_vol_esp: TStringField;
    qryNFeEmissaotransp_vol_marca: TStringField;
    qryNFeEmissaotransp_vol_pesol: TFloatField;
    qryNFeEmissaotransp_vol_pesob: TFloatField;
    qryNFeEmissaocobr_fat_nfat: TStringField;
    qryNFeEmissaocobr_fat_vorig: TFloatField;
    qryNFeEmissaocobr_fat_vdesc: TFloatField;
    qryNFeEmissaocobr_fat_vliq: TFloatField;
    qryNFeEmissaopag_detpag_indpag: TIntegerField;
    qryNFeEmissaopag_detpag_tpag: TIntegerField;
    qryNFeEmissaopag_detpag_vpag: TFloatField;
    qryNFeEmissaopag_detpag_card_tpintegra: TIntegerField;
    qryNFeEmissaopag_detpag_card_cnpj: TIntegerField;
    qryNFeEmissaopag_detpag_card_tband: TIntegerField;
    qryNFeEmissaopag_detpag_card_caut: TStringField;
    qryNFeEmissaopag_vtroco: TFloatField;
    qryNFeEmissaoinfadic_infcpl: TStringField;
    qryNFeEmissaoinfadic_infadfisco: TStringField;
    qryNFeEmissaoinfresptec_xcontato: TStringField;
    qryNFeEmissaoinfresptec_email: TStringField;
    qryNFeEmissaoinfresptec_fone: TStringField;
    qryNFeEmissaosignature: TMemoField;
    qryNFeEmissaoprotnfe: TMemoField;
    qryNFeEmissaocodigo: TIntegerField;
    qryNFeEmissaocad_status: TIntegerField;
    qryNFeEmissaocad_cfop: TIntegerField;
    qryNFeEmissaoemit_cnpj: TStringField;
    qryNFeEmissaodest_cnpj: TStringField;
    qryNFeEmissaoemit_enderemit_fone: TStringField;
    qryNFeEmissaodest_enderdest_fone: TStringField;
    qryNFeEmissaotransp_transporta_cnpj: TStringField;
    qryNFeEmissaoinfresptec_cnpj: TStringField;
    qryNFeEmissaototal_icmstot_vTotTrib: TFloatField;
    qryNFeEmissaoxped: TStringField;
    qryNFeEmissaoemit_im: TStringField;
    qryNFeEmissaoemit_cnae: TStringField;
    qryNFeEmissaoemit_enderemit_xcpl: TStringField;
    qryNFeEmissaodest_Enderdest_xcpl: TStringField;
    qryNFeEmissaodest_im: TStringField;
    qryNFeEmissaocad_integracao: TIntegerField;
    qryNFeEmissaocad_integracao_dados: TStringField;
    qryNFeEmissaotransp_transporta_ie: TStringField;
    qryNFeEmissaoemit_ie: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure qryNFeBeforeDelete(DataSet: TDataSet);
    procedure grdNFeViewEmitirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdNFeViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFe: TfrmNFe;

implementation

uses
  uDM, uCadastroNFe, uFuncoes;

{$R *.dfm}

{ TForm1 }

procedure TfrmNFe.dxBarLargeButton1Click(Sender: TObject);
begin
  frmCadastroNFe.ShowModal();
end;

procedure TfrmNFe.dxBarLargeButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TfrmNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryNFe.Close();
end;

procedure TfrmNFe.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmNFe.FormShow(Sender: TObject);
begin
  DM.AtualizaTabela('commerce', 'nfe', qryNFe);
  qryNFe.Open();
end;

procedure TfrmNFe.grdNFeViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  qryNFeEmissao.Close();
  qryNFeEmissao.ParamByName('pIDE_NNF').Value := grdNFeView.Controller.SelectedRows[0].Values[0];
  qryNFeEmissao.ParamByName('pIDE_SERIE').Value := grdNFeView.Controller.SelectedRows[0].Values[1];
  qryNFeEmissao.ParamByName('pIDE_MOD').Value := grdNFeView.Controller.SelectedRows[0].Values[2];
  qryNFeEmissao.Open();

  GerarXMLdoBanco(qryNFeEmissao, True);
end;

procedure TfrmNFe.grdNFeViewEmitirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  qryNFeEmissao.Close();
  qryNFeEmissao.ParamByName('pIDE_NNF').Value := grdNFeView.Controller.SelectedRows[0].Values[0];
  qryNFeEmissao.ParamByName('pIDE_SERIE').Value := grdNFeView.Controller.SelectedRows[0].Values[1];
  qryNFeEmissao.ParamByName('pIDE_MOD').Value := grdNFeView.Controller.SelectedRows[0].Values[2];
  qryNFeEmissao.Open();

  GerarXMLdoBanco(qryNFeEmissao, True);
end;

procedure TfrmNFe.qryNFeBeforeDelete(DataSet: TDataSet);
begin
  qryApagarItens.ParamByName('pCODNOTA').Value := qryNFeide_nnf.Value;
  qryApagarItens.ExecSQL();
end;

end.

