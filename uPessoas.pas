unit uPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, dxRibbonCustomizationForm, cxTextEdit,
  dxStatusBar, dxRibbonStatusBar, cxStyles, dxSkinsForm, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxCurrencyEdit, cxMaskEdit, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDropDownEdit, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxCore, dxScrollbarAnnotations;

type
  TfrmPessoas = class(TdxRibbonForm)
    dxRibbon1: TdxRibbon;
    tabProdutos: TdxRibbonTab;
    dxSkinController1: TdxSkinController;
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
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    grdPessoas: TcxGrid;
    grdPessoasView: TcxGridDBTableView;
    grdPessoasViewcodigo: TcxGridDBColumn;
    grdPessoasViewproduto: TcxGridDBColumn;
    grdPessoasLevel1: TcxGridLevel;
    dsPessoas: TDataSource;
    grdPessoasViewendereco: TcxGridDBColumn;
    grdPessoasViewbairro: TcxGridDBColumn;
    grdPessoasViewcidade: TcxGridDBColumn;
    grdPessoasViewuf: TcxGridDBColumn;
    grdPessoasViewtelefone1: TcxGridDBColumn;
    grdPessoasViewemail: TcxGridDBColumn;
    grdPessoasViewrg: TcxGridDBColumn;
    grdPessoasViewcpf: TcxGridDBColumn;
    grdPessoasViewtipopessoa: TcxGridDBColumn;
    qryPessoas: TUniQuery;
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
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure grdPessoasViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPessoas: TfrmPessoas;

implementation

uses
  uDM, uCadastroPessoa;

{$R *.dfm}

{ TForm1 }

procedure TfrmPessoas.dxBarLargeButton1Click(Sender: TObject);
begin
  frmCadastroPessoa.Novo := True;
  frmCadastroPessoa.tblPessoas.Close();
  frmCadastroPessoa.tblPessoas.Open();
  frmCadastroPessoa.tblPessoas.Append();
  frmCadastroPessoa.btnExcluir.Enabled := False;
  frmCadastroPessoa.ShowModal();
  qryPessoas.Refresh();
end;

procedure TfrmPessoas.dxBarLargeButton2Click(Sender: TObject);
begin
  qryPessoas.Close();
  Close();
end;

procedure TfrmPessoas.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmPessoas.FormShow(Sender: TObject);
begin
  DM.AtualizaTabela('commerce', 'pessoas', qryPessoas);
  qryPessoas.Open();
  grdPessoasView.ViewData.Expand(True);
end;

procedure TfrmPessoas.grdPessoasViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  frmCadastroPessoa.Novo := False;
  frmCadastroPessoa.tblPessoas.Close();
  frmCadastroPessoa.tblPessoas.Open();
  frmCadastroPessoa.tblPessoas.Locate('CODIGO', grdPessoasView.Controller.SelectedRows[0].Values[0], []);
  frmCadastroPessoa.tblPessoas.Edit();
  frmCadastroPessoa.btnExcluir.Enabled := True;
  frmCadastroPessoa.ShowModal();
  qryPessoas.Refresh();
end;

end.

