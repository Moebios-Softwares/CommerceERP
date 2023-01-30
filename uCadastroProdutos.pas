unit uCadastroProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, dxRibbonCustomizationForm, cxTextEdit,
  dxSkinsForm, dxStatusBar, dxRibbonStatusBar, dxLayoutContainer,
  dxLayoutControl, Data.DB, MemDS, DBAccess, Uni, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  dxLayoutLookAndFeels, cxCurrencyEdit, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore;

type
  TfrmCadastroProdutos = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar1: TdxBar;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnSalvar: TdxBarLargeButton;
    btnExcluir: TdxBarLargeButton;
    btnSair: TdxBarLargeButton;
    dsProdutos: TDataSource;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtProduto: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edtDataCadastro: TcxDBDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtPrecoCusto: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtEstoqueMinimo: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    EstoqueAtual: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtPrecoVenda: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edtLucro: TcxCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtTipoProduto: TcxDBComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    tblProdutos: TUniTable;
    tblProdutoscodigo: TStringField;
    tblProdutosproduto: TStringField;
    tblProdutosdata_cadastro: TDateField;
    tblProdutoscodgrupo: TStringField;
    tblProdutoscodsubgrupo: TStringField;
    tblProdutoscodfornecedor: TStringField;
    tblProdutoscodmarca: TStringField;
    tblProdutosdata_ultimacompra: TDateField;
    tblProdutosnotafiscal: TStringField;
    tblProdutosprecocusto: TFloatField;
    tblProdutosprecovenda: TFloatField;
    tblProdutosdata_ultimavenda: TDateField;
    tblProdutosestoque: TFloatField;
    tblProdutosestoqueminimo: TFloatField;
    tblProdutoscodaliquota: TStringField;
    tblProdutoslocalicazao: TStringField;
    tblProdutospeso: TFloatField;
    tblProdutosvalidade: TStringField;
    tblProdutoscomissao: TFloatField;
    tblProdutosusa_balanca: TIntegerField;
    tblProdutosusa_serial: TIntegerField;
    tblProdutosusa_grade: TIntegerField;
    tblProdutoscodreceita: TStringField;
    tblProdutosfoto: TStringField;
    tblProdutosdata_ultimacompra_anterior: TDateField;
    tblProdutosnotafiscal_anterior: TStringField;
    tblProdutoscodfornecedor_anterior: TStringField;
    tblProdutosprecocusto_anterior: TFloatField;
    tblProdutosprecovenda_anterior: TFloatField;
    tblProdutoscustomedio: TFloatField;
    tblProdutosauto_aplicacao: TStringField;
    tblProdutosauto_complemento: TStringField;
    tblProdutosdata_remarcacao_custo: TDateField;
    tblProdutosdata_remarcacao_venda: TDateField;
    tblProdutospreco_promocao: TFloatField;
    tblProdutosdata_promocao: TDateField;
    tblProdutosfim_promocao: TDateField;
    tblProdutoscst: TStringField;
    tblProdutosclassificacao_fiscal: TStringField;
    tblProdutosnbm: TStringField;
    tblProdutosncm: TStringField;
    tblProdutosaliquota: TFloatField;
    tblProdutosipi: TFloatField;
    tblProdutosreducao: TFloatField;
    tblProdutosqtde_embalagem: TFloatField;
    tblProdutostipo: TStringField;
    tblProdutospeso_liquido: TFloatField;
    tblProdutosfarmacia_controlado: TStringField;
    tblProdutosfarmacia_apresentacao: TIntegerField;
    tblProdutosfarmacia_registro_medicamento: TStringField;
    tblProdutosfarmacia_pmc: TFloatField;
    tblProdutosultima_alteracao: TDateField;
    tblProdutosultima_carga: TDateField;
    tblProdutosdata_inventario: TDateField;
    tblProdutoscusto_inventario: TFloatField;
    tblProdutosestoque_inventario: TFloatField;
    tblProdutosestoque_anterior: TFloatField;
    tblProdutosprecovenda_novo: TFloatField;
    tblProdutosusa_rentabilidade: TIntegerField;
    tblProdutosquantidade_minima_fab: TFloatField;
    tblProdutosapresentacao: TStringField;
    tblProdutossituacao: TIntegerField;
    tblProdutosprecovenda1: TFloatField;
    tblProdutosprecovenda2: TFloatField;
    tblProdutosprecovenda3: TFloatField;
    tblProdutosprecovenda4: TFloatField;
    tblProdutosprecovenda5: TFloatField;
    tblProdutosdesconto_precovenda: TFloatField;
    tblProdutosdata_inventario_atual: TDateField;
    tblProdutoscusto_inventario_atual: TFloatField;
    tblProdutosestoque_inventario_atual: TFloatField;
    tblProdutosmargem_minima: TFloatField;
    tblProdutospiscofins: TStringField;
    tblProdutosreferencia_fornecedor: TStringField;
    tblProdutoscomissao1: TFloatField;
    tblProdutosmargem_desconto: TFloatField;
    tblProdutostamanho: TStringField;
    tblProdutoscor: TStringField;
    tblProdutosincidencia_piscofins: TStringField;
    tblProdutosveic_chassi: TStringField;
    tblProdutosveic_serie: TStringField;
    tblProdutosveic_potencia: TStringField;
    tblProdutosveic_peso_liquido: TStringField;
    tblProdutosveic_peso_bruto: TStringField;
    tblProdutosveic_tipo_combustivel: TStringField;
    tblProdutosveic_renavam: TStringField;
    tblProdutosveic_ano_fabricacao: TIntegerField;
    tblProdutosveic_ano_modelo: TIntegerField;
    tblProdutosveic_tipo: TStringField;
    tblProdutosveic_tipo_pintura: TStringField;
    tblProdutosveic_cod_cor: TStringField;
    tblProdutosveic_cor: TStringField;
    tblProdutosveic_vin: TStringField;
    tblProdutosveic_numero_motor: TStringField;
    tblProdutosveic_cmkg: TStringField;
    tblProdutosveic_cm3: TStringField;
    tblProdutosveic_distancia_eixo: TStringField;
    tblProdutosveic_cod_marca: TStringField;
    tblProdutosveic_especie: TStringField;
    tblProdutosveic_condicao: TStringField;
    tblProdutoslote_fabricacao: TStringField;
    tblProdutoslote_validade: TDateField;
    tblProdutosmargem_agregada: TFloatField;
    tblProdutoscodbarra_novartis: TStringField;
    tblProdutosfarmacia_dcb: TStringField;
    tblProdutosfarmacia_abcfarma: TStringField;
    tblProdutosfarmacia_apresentacao_caixa: TStringField;
    tblProdutosfarmacia_principioativo: TStringField;
    tblProdutosultima_compra: TDateField;
    tblProdutosfarmacia_datavigencia: TDateField;
    tblProdutosfarmacia_tipo: TStringField;
    tblProdutosusa_combustivel: TStringField;
    tblProdutosreferencia: TStringField;
    tblProdutosperda: TFloatField;
    tblProdutoscomposicao1: TStringField;
    tblProdutoscomposicao2: TStringField;
    tblProdutosiat: TStringField;
    tblProdutosippt: TStringField;
    tblProdutossituacao_tributaria: TStringField;
    tblProdutosflag_sis: TStringField;
    tblProdutosflag_aceito: TStringField;
    tblProdutosflag_est: TStringField;
    tblProdutoscsosn: TStringField;
    tblProdutoscodoriginal: TStringField;
    tblProdutoscusto_atacado: TFloatField;
    tblProdutosunidade_atacado: TStringField;
    tblProdutosqtde_embalagematacado: TFloatField;
    tblProdutospmargem1: TFloatField;
    tblProdutospmargem2: TFloatField;
    tblProdutospmargem3: TFloatField;
    tblProdutospmargem4: TFloatField;
    tblProdutospmargem5: TFloatField;
    tblProdutospmargematacado1: TFloatField;
    tblProdutospmargematacado2: TFloatField;
    tblProdutospmargematacado3: TFloatField;
    tblProdutospmargematacado4: TFloatField;
    tblProdutospmargematacado5: TFloatField;
    tblProdutospmargematacado6: TFloatField;
    tblProdutosprecoatacado1: TFloatField;
    tblProdutosprecoatacado2: TFloatField;
    tblProdutosprecoatacado3: TFloatField;
    tblProdutosprecoatacado4: TFloatField;
    tblProdutosprecoatacado5: TFloatField;
    tblProdutosind_cfop: TStringField;
    tblProdutoscfop_desc: TStringField;
    tblProdutosusa_lote: TIntegerField;
    tblProdutosind_cfop_venda_dentro: TStringField;
    tblProdutoscodconta: TStringField;
    tblProdutosind_cfop_venda_fora: TStringField;
    tblProdutosind_cfop_devolucao_dentro: TStringField;
    tblProdutosind_cfop_devolucao_fora: TStringField;
    tblProdutosind_cfop_garantia_dentro: TStringField;
    tblProdutosind_cfop_garantia_fora: TStringField;
    tblProdutosusa_tb_pc: TStringField;
    tblProdutosativa: TStringField;
    tblProdutoscest: TStringField;
    tblProdutosorigem: TIntegerField;
    tblProdutosind_cfop_nfce: TStringField;
    tblProdutosid_tipo_servico: TIntegerField;
    tblProdutosnao_movimenta_estoque: TStringField;
    tblProdutospesagem_auotmatica: TStringField;
    tblProdutosinforma_codigo_barra_xml: TStringField;
    tblProdutoscodigo_anp: TStringField;
    tblProdutoscombo: TStringField;
    tblProdutosind_cfop_dev_compra_dentro: TStringField;
    tblProdutosind_cfop_dev_compra_fora: TStringField;
    tblProdutospizza: TStringField;
    tblProdutospercglnn: TFloatField;
    tblProdutospercglgni: TFloatField;
    tblProdutospglp: TFloatField;
    tblProdutosvpart: TFloatField;
    tblProdutosecf_icms: TStringField;
    tblProdutosidonline: TIntegerField;
    tblProdutosemdestaque: TStringField;
    tblProdutosdescontomaximo: TFloatField;
    tblProdutosatb: TStringField;
    tblProdutoscontrolalote: TStringField;
    tblProdutoscodbarra: TStringField;
    tblProdutosunidade: TStringField;
    tblProdutospiscstcsosn: TStringField;
    tblProdutoscofinscstcsosn: TStringField;
    tblProdutosicmsrepasse: TStringField;
    tblProdutosretornavel: TStringField;
    qryCFOP: TUniQuery;
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
    dsCFOP: TDataSource;
    edtNCM: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    edtUnidade: TcxDBLookupComboBox;
    dxLayoutItem13: TdxLayoutItem;
    qryUnidades: TUniQuery;
    qryUnidadesunidade: TStringField;
    qryUnidadesdescricao: TStringField;
    dsUnidades: TDataSource;
    edtCST: TcxDBLookupComboBox;
    edtCSOSN: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dsCST: TDataSource;
    qryCST: TUniQuery;
    dsCSOSN: TDataSource;
    qryCSOSN: TUniQuery;
    qryCSTcod: TStringField;
    qryCSTdescricao: TStringField;
    qryCSOSNcod: TIntegerField;
    qryCSOSNdescricao: TStringField;
    qryNCM: TUniQuery;
    qryNCMncm: TStringField;
    qryNCMcategoria: TStringField;
    qryNCMdescricao: TStringField;
    qryNCMipi: TStringField;
    qryNCMdtinicio: TDateField;
    qryNCMdtfim: TDateField;
    qryNCMutrib: TStringField;
    qryNCMdescricaoutrib: TStringField;
    qryNCMgtinprod: TDateField;
    qryNCMgtinhomologacao: TDateField;
    qryNCMobs: TStringField;
    qryNCMversaotabela: TIntegerField;
    dsNCM: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtLucroPropertiesChange(Sender: TObject);
    procedure edtPrecoVendaPropertiesChange(Sender: TObject);
    procedure edtDataCadastroExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtProdutoExit(Sender: TObject);
    procedure edtProdutoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    Novo: boolean;
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

uses
  uDM;

{$R *.dfm}

{ TForm1 }

procedure TfrmCadastroProdutos.btnSalvarClick(Sender: TObject);
begin
  if edtProduto.Text = '' then
  begin
    edtProduto.Style.Color := clRed;
    Application.MessageBox(PWideChar('O produto precisa ter um nome!'), 'Atenção!', MB_ICONERROR);
    edtProduto.SetFocus();
    exit;
  end;

  tblProdutos.Post();
  if Novo then
    Application.MessageBox(PWideChar('Produto ' + tblProdutosproduto.AsString + ' cadastrado!'), 'Atenção!', MB_ICONINFORMATION)
  else
    Application.MessageBox(PWideChar('Alteração no produto ' + tblProdutosproduto.AsString + ' salva!'), 'Atenção!', MB_ICONINFORMATION);

  Close();
end;

procedure TfrmCadastroProdutos.btnExcluirClick(Sender: TObject);
begin
  tblProdutos.Delete();
  Application.MessageBox(PWideChar('Produto ' + tblProdutosproduto.AsString + ' excluído!'), 'Atenção!', MB_ICONINFORMATION);
  Close();
end;

procedure TfrmCadastroProdutos.btnSairClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmCadastroProdutos.edtCodigoExit(Sender: TObject);
begin
  if Novo then
    edtCodigo.Text := DM.GeraCodigoDisponivel('commerce.produtos');
end;

procedure TfrmCadastroProdutos.edtDataCadastroExit(Sender: TObject);
begin
  if edtDataCadastro.Text = '' then
    edtDataCadastro.Date := Date;
end;

procedure TfrmCadastroProdutos.edtLucroPropertiesChange(Sender: TObject);
var
  Valor: Double;
begin
  if (edtPrecoCusto.Value <> 0) and (edtLucro.Value <> 0) then
  begin
    Valor := edtPrecoCusto.Value * (edtLucro.Value / 100);
    edtPrecoVenda.Value := Valor;
  end;
end;

procedure TfrmCadastroProdutos.edtPrecoVendaPropertiesChange(Sender: TObject);
var
  Valor: Double;
begin
  if (edtPrecoCusto.Value <> 0) and (edtPrecoVenda.Value <> 0) then
  begin
    Valor := (edtPrecoVenda.Value / edtPrecoCusto.Value) * 100;
    edtLucro.Value := Valor;
  end;
end;

procedure TfrmCadastroProdutos.edtProdutoExit(Sender: TObject);
begin
  if edtProduto.Text = '' then
  begin
    edtProduto.Style.Color := clRed;
  end;
end;

procedure TfrmCadastroProdutos.edtProdutoPropertiesChange(Sender: TObject);
begin
  if edtProduto.Text <> '' then
    edtProduto.Style.Color := clWindow;
end;

procedure TfrmCadastroProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblProdutos.Cancel();
end;

procedure TfrmCadastroProdutos.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmCadastroProdutos.FormShow(Sender: TObject);
begin
  edtCodigo.SetFocus();
  edtProduto.SetFocus();
  qryCFOP.Open();
  qryNCM.Open();
  qryUnidades.Open();
  qryCST.Open();
  qryCSOSN.Open();
end;

end.

