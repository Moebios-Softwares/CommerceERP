unit uProdutosLinkConcilicacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, cxStyles, dxSkinsCore, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxTextEdit, cxCurrencyEdit, cxMaskEdit, dxStatusBar, dxRibbonStatusBar,
  dxSkinsForm, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  dxRibbonCustomizationForm, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TfrmLinkProduto = class(TdxRibbonForm)
    grdProdutos: TcxGrid;
    grdProdutosView: TcxGridDBTableView;
    grdProdutosViewcodigo: TcxGridDBColumn;
    grdProdutosViewproduto: TcxGridDBColumn;
    grdProdutosViewprecocusto: TcxGridDBColumn;
    grdProdutosViewprecovenda: TcxGridDBColumn;
    grdProdutosViewestoque: TcxGridDBColumn;
    grdProdutosViewestoqueminimo: TcxGridDBColumn;
    grdProdutosViewncm: TcxGridDBColumn;
    grdProdutosLevel1: TcxGridLevel;
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
    cxStyleRepository1: TcxStyleRepository;
    Linha2: TcxStyle;
    Linha: TcxStyle;
    dxSkinController1: TdxSkinController;
    dsProdutos: TDataSource;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbon1: TdxRibbon;
    tabProdutos: TdxRibbonTab;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdProdutosViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    Codigo: string;
  end;

var
  frmLinkProduto: TfrmLinkProduto;

implementation

uses
  uDM;

{$R *.dfm}

{ TForm1 }

procedure TfrmLinkProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryProdutos.Close();
end;

procedure TfrmLinkProduto.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmLinkProduto.FormShow(Sender: TObject);
begin
  qryProdutos.Open();
end;

procedure TfrmLinkProduto.grdProdutosViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Codigo := frmLinkProduto.grdProdutosView.Controller.SelectedRows[0].Values[0];
  Close();
end;

end.

