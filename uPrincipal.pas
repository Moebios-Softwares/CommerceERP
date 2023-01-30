unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, dxSkinsDefaultPainters, dxRibbonCustomizationForm,
  cxTextEdit, cxContainer, cxEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar,
  cxLabel, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, winapi.winInet,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Registry,
  blckSock, ACBrDFeSSL, StrUtils, dxLayoutLookAndFeels, Data.DB, cxMaskEdit,
  cxDBEdit, cxDropDownEdit, ACBrUtil, cxCalendar, dxGDIPlusClasses, cxImage,
  Vcl.WinXCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, IdStack, WinAPI.ShellAPI, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtDlgs, Vcl.OleCtrls, SHDocVw, MemDS, DBAccess, Uni, UniProvider,
  MySQLUniProvider, cxSpinEdit, NetEncoding, cxGroupBox, cxRadioGroup, TypInfo,
  pcnconversao, uDM, IdBaseComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdAntiFreezeBase, IdAntiFreeze, System.Threading, System.IniFiles, IdIOHandler,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdIOHandlerSocket,
  dxDateTimeWheelPicker, cxCheckBox, dxActivityIndicator, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, ShlObj, ComObj, ActiveX;

const
  WM_AFTER_SHOW = WM_USER + 300; // custom message
  WM_AFTER_CREATE = WM_USER + 301; // custom message

type
  TfrmPrincipal = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    barQuickAccess: TdxBar;
    dxRibbon1: TdxRibbon;
    menuCadastros: TdxRibbonTab;
    MenuAjustes: TdxRibbonBackstageView;
    tabAjustes: TdxRibbonBackstageViewTabSheet;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    barToolbar: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    tabEmpresa: TdxRibbonBackstageViewTabSheet;
    tabSobre: TdxRibbonBackstageViewTabSheet;
    lytAjustesGroup_Root: TdxLayoutGroup;
    lytAjustes: TdxLayoutControl;
    barCadastros: TdxBar;
    btnCadastroProdutos: TdxBarLargeButton;
    btnCadastroPessoas: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    btnCadastroServicos: TdxBarLargeButton;
    btnCadastroFuncionarios: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    barEstoque: TdxBar;
    btnEstoqueNFEntrada: TdxBarLargeButton;
    btnEstoqueBaixaEstoque: TdxBarLargeButton;
    btnEstoquePedidoCompra: TdxBarLargeButton;
    btnEstoqueConsultaPreco: TdxBarLargeButton;
    barMovimento: TdxBar;
    btnMovimentoNFe: TdxBarLargeButton;
    btnMovimentoOrcamentos: TdxBarLargeButton;
    btnMovimentoVendas: TdxBarLargeButton;
    btnMovimentoOrdemServico: TdxBarLargeButton;
    btnMovimentoControleEntrega: TdxBarLargeButton;
    btnMovimentoSintegra: TdxBarLargeButton;
    btnMovimentoTransferenciaonline: TdxBarLargeButton;
    btnMovimentoExportarXML: TdxBarLargeButton;
    menuRelatorios: TdxRibbonTab;
    barRelatorios: TdxBar;
    btnRelClientes: TdxBarLargeButton;
    btnRelProdutos: TdxBarLargeButton;
    btnRelVendas: TdxBarLargeButton;
    btnRelFornecedores: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    btnRelTransportadoras: TdxBarLargeButton;
    btnRelFuncionarios: TdxBarLargeButton;
    btnRelServicos: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    lytEmpresaGroup_Root: TdxLayoutGroup;
    lytEmpresa: TdxLayoutControl;
    edtCNPJ: TcxDBMaskEdit;
    dxLayoutItem1: TdxLayoutItem;
    dsEmpresa: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    btnConsultaCNPJ: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    edtNome: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtEndereco: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtEnderecoNumero: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edtCidade: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtComplemento: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtUF: TcxDBComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edtIE: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtIM: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    edtBairro: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtAtividade: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtAbertura: TcxDBDateEdit;
    dxLayoutItem13: TdxLayoutItem;
    edtFantasia: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    edtCEP: TcxDBMaskEdit;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    edtTelefone: TcxDBMaskEdit;
    dxLayoutItem17: TdxLayoutItem;
    edtResponsavel: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    edtCertificadoNrSerie: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    dsConfigDFe: TDataSource;
    edtCertificadoSenha: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    btnBuscarCertificado: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxImage1: TcxImage;
    dxLayoutItem22: TdxLayoutItem;
    dsUsuarios: TDataSource;
    cxEditStyleController1: TcxEditStyleController;
    AbreLogo: TOpenPictureDialog;
    edtimgLogo: TcxImage;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    tabSair: TdxRibbonBackstageViewTabSheet;
    cxImage4: TcxImage;
    btnTrocar: TcxButton;
    btnFechar: TcxButton;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutControl4: TdxLayoutControl;
    cxLabel5: TcxLabel;
    cxImage13: TcxImage;
    cxImage17: TcxImage;
    cxLabel6: TcxLabel;
    lblServidor: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutItem35: TdxLayoutItem;
    btnAlterarSenha: TcxButton;
    dxLayoutItem36: TdxLayoutItem;
    edtSeqNFe: TcxDBSpinEdit;
    dxLayoutItem37: TdxLayoutItem;
    edtSerieNFe: TcxDBSpinEdit;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutItem44: TdxLayoutItem;
    edtSerieNFCe: TcxDBSpinEdit;
    edtSeqNFCe: TcxDBSpinEdit;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    cxImage8: TcxImage;
    dxLayoutItem46: TdxLayoutItem;
    edttpEmissao: TcxDBRadioGroup;
    dxLayoutItem47: TdxLayoutItem;
    cbssllib: TcxComboBox;
    cbcryptlib: TcxComboBox;
    cbhttplib: TcxComboBox;
    cbxmlsignlib: TcxComboBox;
    cbSSLType: TcxComboBox;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    dxLayoutItem52: TdxLayoutItem;
    lblProgresso: TcxLabel;
    AtividadeTabelas: TdxActivityIndicator;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    btnPedidosConsumer: TdxBarLargeButton;
    edtNuvemFiscalClientID: TcxDBTextEdit;
    dxLayoutItem55: TdxLayoutItem;
    edtNuvemFiscalSecretID: TcxDBTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    dsAjustes: TDataSource;
    lblnuvemfiscal: TcxLabel;
    dxLayoutItem25: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btnConsultaCNPJClick(Sender: TObject);
    procedure dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon; var AHandled: Boolean);
    procedure MenuAjustesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtimgLogoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnDeslogarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnTrocarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnAlterarSenhaClick(Sender: TObject);
    procedure btnCadastroProdutosClick(Sender: TObject);
    procedure btnBuscarCertificadoClick(Sender: TObject);
    procedure btnCadastroPessoasClick(Sender: TObject);
    procedure btnCadastroFuncionariosClick(Sender: TObject);
    procedure btnEstoqueNFEntradaClick(Sender: TObject);
    procedure btnMovimentoNFeClick(Sender: TObject);
    procedure btnMovimentoVendasClick(Sender: TObject);
    procedure cbssllibPropertiesChange(Sender: TObject);
    procedure cbcryptlibPropertiesChange(Sender: TObject);
    procedure cbhttplibPropertiesChange(Sender: TObject);
    procedure cbxmlsignlibPropertiesChange(Sender: TObject);
    procedure cbSSLTypePropertiesChange(Sender: TObject);
    procedure edttpEmissaoPropertiesChange(Sender: TObject);
    procedure btnMovimentoExportarXMLClick(Sender: TObject);
    procedure lblnuvemfiscalClick(Sender: TObject);
  private
    procedure WmAfterShow(var Msg: TMessage); message WM_AFTER_SHOW;
    procedure WmAfterCreate(var Msg: TMessage); message WM_AFTER_CREATE;
    function RetornaIDMaquina: int64;
    function ComputerName: string;
    function GetIP: string;
    function GetBuildInfoAsString: string;
    function CreateDesktopShellLink(const TargetName: string): Boolean;
    function GetDesktopFolder: string;
    procedure AtualizarSSLLibsCombo;
    procedure BaixarArquivo(URL, FileName: string; Substituir: Boolean = False);
    procedure GetBuildInfo(var V1, V2, V3, V4: word);
  public
    Servidor, Usuario, Senha, Banco, Porta, UsuarioLogado: string;
    Licenca: TRegistro;
    function RetornaVersaoInstalada: integer;
    procedure AjustaPermissaoUsuario(Funcao: string);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uConectaAoBanco, uLoginForm, uLoginAlterarSenha, uProdutos,
  uPessoas, uFuncionarios, uNFCompra, uNFe, uMenuVendas, uUpdate,
  uExportarXMLContador, uFuncoes, uVerifica;

{$R *.dfm}

{ TForm1 }

procedure TfrmPrincipal.AjustaPermissaoUsuario(Funcao: string);
begin
  case AnsiIndexStr(Funcao, ['Administrador', 'Gerente', 'Vendedor', 'Técnico', 'Caixa', 'Funcionário', 'Financeiro']) of
    0:
      begin
        btnCadastroProdutos.Enabled := True;
        btnCadastroPessoas.Enabled := True;
        btnCadastroServicos.Enabled := True;
        btnCadastroFuncionarios.Enabled := True;
        btnEstoqueNFEntrada.Enabled := True;
        btnEstoqueBaixaEstoque.Enabled := True;
        btnEstoquePedidoCompra.Enabled := True;
        btnEstoqueConsultaPreco.Enabled := True;
        btnMovimentoNFe.Enabled := True;
        btnMovimentoOrcamentos.Enabled := True;
        btnMovimentoVendas.Enabled := True;
        btnMovimentoOrdemServico.Enabled := True;
        btnMovimentoControleEntrega.Enabled := True;
        btnMovimentoSintegra.Enabled := True;
        btnMovimentoTransferenciaonline.Enabled := True;
        btnMovimentoExportarXML.Enabled := True;
        btnRelClientes.Enabled := True;
        btnRelProdutos.Enabled := True;
        btnRelVendas.Enabled := True;
        btnRelFornecedores.Enabled := True;
        btnRelTransportadoras.Enabled := True;
        btnRelFuncionarios.Enabled := True;
        btnRelServicos.Enabled := True;
        tabAjustes.Enabled := True;
        tabEmpresa.Enabled := True;
        tabSobre.Enabled := True;
        tabSair.Enabled := True;
      end;
    1:
      begin
        btnCadastroProdutos.Enabled := True;
        btnCadastroPessoas.Enabled := True;
        btnCadastroServicos.Enabled := True;
        btnCadastroFuncionarios.Enabled := True;
        btnEstoqueNFEntrada.Enabled := True;
        btnEstoqueBaixaEstoque.Enabled := True;
        btnEstoquePedidoCompra.Enabled := True;
        btnEstoqueConsultaPreco.Enabled := True;
        btnMovimentoNFe.Enabled := True;
        btnMovimentoOrcamentos.Enabled := True;
        btnMovimentoVendas.Enabled := True;
        btnMovimentoOrdemServico.Enabled := True;
        btnMovimentoControleEntrega.Enabled := True;
        btnMovimentoSintegra.Enabled := True;
        btnMovimentoTransferenciaonline.Enabled := True;
        btnMovimentoExportarXML.Enabled := True;
        btnRelClientes.Enabled := True;
        btnRelProdutos.Enabled := True;
        btnRelVendas.Enabled := True;
        btnRelFornecedores.Enabled := True;
        btnRelTransportadoras.Enabled := True;
        btnRelFuncionarios.Enabled := True;
        btnRelServicos.Enabled := True;
        tabAjustes.Enabled := True;
        tabEmpresa.Enabled := True;
        tabSobre.Enabled := True;
        tabSair.Enabled := True;
      end;
    2:
      begin
        btnCadastroProdutos.Enabled := False;
        btnCadastroPessoas.Enabled := False;
        btnCadastroServicos.Enabled := False;
        btnCadastroFuncionarios.Enabled := False;
        btnEstoqueNFEntrada.Enabled := False;
        btnEstoqueBaixaEstoque.Enabled := False;
        btnEstoquePedidoCompra.Enabled := True;
        btnEstoqueConsultaPreco.Enabled := True;
        btnMovimentoNFe.Enabled := False;
        btnMovimentoOrcamentos.Enabled := True;
        btnMovimentoVendas.Enabled := True;
        btnMovimentoOrdemServico.Enabled := False;
        btnMovimentoControleEntrega.Enabled := True;
        btnMovimentoSintegra.Enabled := False;
        btnMovimentoTransferenciaonline.Enabled := False;
        btnMovimentoExportarXML.Enabled := False;
        btnRelClientes.Enabled := True;
        btnRelProdutos.Enabled := True;
        btnRelVendas.Enabled := True;
        btnRelFornecedores.Enabled := True;
        btnRelTransportadoras.Enabled := True;
        btnRelFuncionarios.Enabled := True;
        btnRelServicos.Enabled := True;
        tabAjustes.Enabled := False;
        tabEmpresa.Enabled := False;
        tabSobre.Enabled := True;
        tabSair.Enabled := True;
      end;
    3:
      begin
        btnCadastroProdutos.Enabled := False;
        btnCadastroPessoas.Enabled := False;
        btnCadastroServicos.Enabled := False;
        btnCadastroFuncionarios.Enabled := False;
        btnEstoqueNFEntrada.Enabled := False;
        btnEstoqueBaixaEstoque.Enabled := False;
        btnEstoquePedidoCompra.Enabled := True;
        btnEstoqueConsultaPreco.Enabled := True;
        btnMovimentoNFe.Enabled := False;
        btnMovimentoOrcamentos.Enabled := True;
        btnMovimentoVendas.Enabled := False;
        btnMovimentoOrdemServico.Enabled := True;
        btnMovimentoControleEntrega.Enabled := False;
        btnMovimentoSintegra.Enabled := False;
        btnMovimentoTransferenciaonline.Enabled := False;
        btnMovimentoExportarXML.Enabled := False;
        btnRelClientes.Enabled := True;
        btnRelProdutos.Enabled := True;
        btnRelVendas.Enabled := True;
        btnRelFornecedores.Enabled := True;
        btnRelTransportadoras.Enabled := True;
        btnRelFuncionarios.Enabled := True;
        btnRelServicos.Enabled := True;
        tabAjustes.Enabled := False;
        tabEmpresa.Enabled := False;
        tabSobre.Enabled := True;
        tabSair.Enabled := True;
      end;
    4:
      begin
        btnCadastroProdutos.Enabled := False;
        btnCadastroPessoas.Enabled := False;
        btnCadastroServicos.Enabled := False;
        btnCadastroFuncionarios.Enabled := False;
        btnEstoqueNFEntrada.Enabled := False;
        btnEstoqueBaixaEstoque.Enabled := False;
        btnEstoquePedidoCompra.Enabled := True;
        btnEstoqueConsultaPreco.Enabled := True;
        btnMovimentoNFe.Enabled := False;
        btnMovimentoOrcamentos.Enabled := True;
        btnMovimentoVendas.Enabled := True;
        btnMovimentoOrdemServico.Enabled := False;
        btnMovimentoControleEntrega.Enabled := True;
        btnMovimentoSintegra.Enabled := False;
        btnMovimentoTransferenciaonline.Enabled := False;
        btnMovimentoExportarXML.Enabled := False;
        btnRelClientes.Enabled := True;
        btnRelProdutos.Enabled := True;
        btnRelVendas.Enabled := True;
        btnRelFornecedores.Enabled := True;
        btnRelTransportadoras.Enabled := True;
        btnRelFuncionarios.Enabled := True;
        btnRelServicos.Enabled := True;
        tabAjustes.Enabled := False;
        tabEmpresa.Enabled := False;
        tabSobre.Enabled := True;
        tabSair.Enabled := True;
      end;
    5:
      begin
        btnCadastroProdutos.Enabled := False;
        btnCadastroPessoas.Enabled := False;
        btnCadastroServicos.Enabled := False;
        btnCadastroFuncionarios.Enabled := False;
        btnEstoqueNFEntrada.Enabled := False;
        btnEstoqueBaixaEstoque.Enabled := False;
        btnEstoquePedidoCompra.Enabled := False;
        btnEstoqueConsultaPreco.Enabled := False;
        btnMovimentoNFe.Enabled := False;
        btnMovimentoOrcamentos.Enabled := False;
        btnMovimentoVendas.Enabled := False;
        btnMovimentoOrdemServico.Enabled := False;
        btnMovimentoControleEntrega.Enabled := False;
        btnMovimentoSintegra.Enabled := False;
        btnMovimentoTransferenciaonline.Enabled := False;
        btnMovimentoExportarXML.Enabled := False;
        btnRelClientes.Enabled := False;
        btnRelProdutos.Enabled := False;
        btnRelVendas.Enabled := False;
        btnRelFornecedores.Enabled := False;
        btnRelTransportadoras.Enabled := False;
        btnRelFuncionarios.Enabled := False;
        btnRelServicos.Enabled := False;
        tabAjustes.Enabled := False;
        tabEmpresa.Enabled := False;
        tabSobre.Enabled := True;
        tabSair.Enabled := True;
      end;
    6:
      begin
        btnCadastroProdutos.Enabled := False;
        btnCadastroPessoas.Enabled := False;
        btnCadastroServicos.Enabled := False;
        btnCadastroFuncionarios.Enabled := True;
        btnEstoqueNFEntrada.Enabled := True;
        btnEstoqueBaixaEstoque.Enabled := True;
        btnEstoquePedidoCompra.Enabled := True;
        btnEstoqueConsultaPreco.Enabled := True;
        btnMovimentoNFe.Enabled := True;
        btnMovimentoOrcamentos.Enabled := True;
        btnMovimentoVendas.Enabled := True;
        btnMovimentoOrdemServico.Enabled := True;
        btnMovimentoControleEntrega.Enabled := True;
        btnMovimentoSintegra.Enabled := True;
        btnMovimentoTransferenciaonline.Enabled := True;
        btnMovimentoExportarXML.Enabled := True;
        btnRelClientes.Enabled := True;
        btnRelProdutos.Enabled := True;
        btnRelVendas.Enabled := True;
        btnRelFornecedores.Enabled := True;
        btnRelTransportadoras.Enabled := True;
        btnRelFuncionarios.Enabled := True;
        btnRelServicos.Enabled := True;
        tabAjustes.Enabled := True;
        tabEmpresa.Enabled := False;
        tabSobre.Enabled := True;
        tabSair.Enabled := True;
      end;
  end;
end;

procedure TfrmPrincipal.btnAlterarSenhaClick(Sender: TObject);
begin
  frmAlterarSenha.Usuario := UsuarioLogado;
  frmAlterarSenha.ShowModal();
end;

procedure TfrmPrincipal.btnBuscarCertificadoClick(Sender: TObject);
begin
  edtCertificadoNrSerie.Text := DM.ACBrNFe.SSL.SelecionarCertificado;
end;

procedure TfrmPrincipal.btnCadastroFuncionariosClick(Sender: TObject);
begin
  frmFuncionarios.ShowModal();
end;

procedure TfrmPrincipal.btnCadastroPessoasClick(Sender: TObject);
begin
  frmPessoas.ShowModal();
end;

procedure TfrmPrincipal.btnCadastroProdutosClick(Sender: TObject);
begin
  frmProdutos.Showmodal();
end;

procedure TfrmPrincipal.btnConsultaCNPJClick(Sender: TObject);
var
  Empresa: TEmpresa;
begin
  if (edtNuvemFiscalClientID.Text = EmptyStr) or (edtNuvemFiscalSecretID.Text = EmptyStr) then
  begin
    ShowMessage('Primeiro precisamos das suas credenciais da Nuvem Fiscal, é gratuito.');
    MenuAjustes.ActiveTab := tabAjustes;
    if edtNuvemFiscalClientID.Text = EmptyStr then
      edtNuvemFiscalClientID.SetFocus()
    else
      edtNuvemFiscalSecretID.SetFocus();
  end
  else
  begin
    Empresa := DM.ConsultaCNPJ(edtCNPJ.Text);

    edtNome.Text := Empresa.Nome;
    edtEndereco.Text := Empresa.Endereco.Rua;
    edtEnderecoNumero.Text := Empresa.Endereco.Numero;
    edtBairro.Text := Empresa.Endereco.Bairro;
    edtComplemento.Text := Empresa.Endereco.Complemento;
    edtCidade.Text := Empresa.Endereco.Cidade;
    edtUF.Text := Empresa.Endereco.UF;
    edtIE.Text := Empresa.IE;
    edtAtividade.Text := Empresa.CNAE;
    edtAbertura.Date := Empresa.Abertura;
    edtResponsavel.Text := Empresa.Responsavel;

    DM.qryEmpresafilial.AsString := Empresa.Nome;
    DM.qryEmpresafantasia.AsString := Empresa.Fantasia;
    DM.qryEmpresaendereco.AsString := Empresa.Endereco.Rua;
    DM.qryEmpresacidade.AsString := Empresa.Endereco.Cidade;
    DM.qryEmpresanumero.AsString := Empresa.Endereco.Numero;
    DM.qryEmpresabairro.AsString := Empresa.Endereco.Bairro;
    DM.qryEmpresauf.AsString := Empresa.Endereco.UF;
    DM.qryEmpresacep.AsString := Empresa.Endereco.CEP;
    DM.qryEmpresatelefone.AsString := Empresa.telefone;
    DM.qryEmpresaie.AsString := Empresa.IE;
    DM.qryEmpresacnpj.AsString := Empresa.CNPJ;
    DM.qryEmpresaresponsavel.AsString := Empresa.Responsavel;
    DM.qryEmpresarg.AsString := Empresa.IE;
    DM.qryEmpresacnae.AsString := Empresa.CNAE;
    DM.qryEmpresacodigoibge.AsString := Empresa.Endereco.CidadeIBGE;
    DM.qryEmpresacrt.AsString := IntToStr(Empresa.CRT);
  end;
end;

procedure TfrmPrincipal.btnDeslogarClick(Sender: TObject);
begin
  frmLogin.Logado := False;
  frmLogin.ShowModal();
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
  frmLogin.Logado := False;
  frmLogin.ShowModal();
end;

procedure TfrmPrincipal.btnEstoqueNFEntradaClick(Sender: TObject);
begin
  frmNFCompra.ShowModal();
end;

procedure TfrmPrincipal.edtimgLogoClick(Sender: TObject);
var
  Imagem: TMemoryStream;
  Caminho: string;
begin
  if AbreLogo.Execute then
  begin
    Caminho := ExtractFilePath(Application.ExeName) + ExtractFileName(AbreLogo.FileName);
    Imagem := TMemoryStream.Create();
    Imagem.LoadFromFile(AbreLogo.FileName);
    Imagem.SaveToFile(Caminho);
    DM.qryEmpresalogo.Value := Caminho;
    edtimgLogo.Picture.LoadFromFile(Caminho);
    DM.qryEmpresa.Post();
    DM.qryEmpresa.Refresh();
    DM.qryEmpresa.Edit();
  end;
end;

procedure TfrmPrincipal.edttpEmissaoPropertiesChange(Sender: TObject);
begin
  case edttpEmissao.ItemIndex of
    0:
      DM.ACBrNFe.Configuracoes.WebServices.Ambiente := taProducao;
    1:
      DM.ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;
  else
    DM.ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;
  end;
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmPrincipal.btnMovimentoExportarXMLClick(Sender: TObject);
begin
  frmEnvioXML.ShowModal();
end;

procedure TfrmPrincipal.btnMovimentoNFeClick(Sender: TObject);
begin
  frmNFe.ShowModal();
end;

procedure TfrmPrincipal.btnMovimentoVendasClick(Sender: TObject);
begin
  frmMenuVendas.ShowModal();
end;

procedure TfrmPrincipal.btnTrocarClick(Sender: TObject);
begin
  frmLogin.ShowModal();
end;

procedure TfrmPrincipal.cbcryptlibPropertiesChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      DM.ACBrNFe.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TfrmPrincipal.cbhttplibPropertiesChange(Sender: TObject);
begin
  try
    if cbHttpLib.ItemIndex <> -1 then
      DM.ACBrNFe.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TfrmPrincipal.cbssllibPropertiesChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      DM.ACBrNFe.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TfrmPrincipal.cbSSLTypePropertiesChange(Sender: TObject);
begin
  if cbSSLType.ItemIndex <> -1 then
    DM.ACBrNFe.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
end;

procedure TfrmPrincipal.cbxmlsignlibPropertiesChange(Sender: TObject);
begin
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      DM.ACBrNFe.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizarSSLLibsCombo;
  end;
end;

procedure TfrmPrincipal.cxButton1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'https://moebios.com.br/contrato', nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmPrincipal.dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon; var AHandled: Boolean);
begin
  DM.qryEmpresa.Open();
  DM.qryEmpresa.Edit();
  DM.qryAjustes.Open();
  DM.qryAjustes.Edit();

  DM.qryConfigDFe.Open();
  DM.qryConfigDFe.Edit();

  if FileExists(DM.qryEmpresalogo.AsString) then
    edtimgLogo.Picture.LoadFromFile(DM.qryEmpresalogo.AsString);
end;

procedure TfrmPrincipal.MenuAjustesCloseUp(Sender: TObject);
begin
  DM.qryEmpresa.Post();
  DM.qryAjustes.Post();

  DM.qryConfigDFetssllib.Value := cbssllib.ItemIndex;
  DM.qryConfigDFetsslcryptlib.Value := cbcryptlib.ItemIndex;
  DM.qryConfigDFetsslhttplib.Value := cbhttplib.ItemIndex;
  DM.qryConfigDFetsslxmlsignlib.Value := cbxmlsignlib.ItemIndex;
  DM.qryConfigDFessltype.Value := cbSSLType.ItemIndex;
  DM.qryConfigDFe.Post();

  DM.ACBrNFe.Configuracoes.Certificados.NumeroSerie := edtCertificadoNrSerie.Text;
  DM.ACBrNFe.Configuracoes.Certificados.Senha := edtCertificadoSenha.Text;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  T: TSSLLib;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
begin
  cbSSLLib.Properties.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Properties.Items.Add(GetEnumName(TypeInfo(TSSLLib), integer(T)));
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Properties.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Properties.Items.Add(GetEnumName(TypeInfo(TSSLCryptLib), integer(U)));
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Properties.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Properties.Items.Add(GetEnumName(TypeInfo(TSSLHttpLib), integer(V)));
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Properties.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Properties.Items.Add(GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X)));
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Properties.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Properties.Items.Add(GetEnumName(TypeInfo(TSSLType), integer(Y)));
  cbSSLType.ItemIndex := 0;

  DisableAero := True;
end;

procedure TfrmPrincipal.WmAfterCreate(var Msg: TMessage);
begin

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  PostMessage(Self.Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TfrmPrincipal.WmAfterShow(var Msg: TMessage);
var
  IDMaquina: Int64;
  Licenciado, MaquinaLiberada: Boolean;
  IDCliente: Integer;
  CaminhoExe: string;
  R: TRegistry;
begin
  R := TRegistry.Create;

  ForceDirectories('C:\Moebios\Tools\');
  ForceDirectories('C:\Moebios\Update\');
  ForceDirectories('C:\Moebios\');

  CaminhoExe := 'C:\Moebios\Commerce.exe';

  if Application.ExeName <> CaminhoExe then
  begin
    if FileExists(CaminhoExe) then
    begin
      ShowMessage('O Commerce não foi iniciado do local correto, criei um atalho na área de trabalho e vamos reiniciar do local correto.');
      ShellExecute(Handle, 'open', pchar(CaminhoExe), nil, nil, SW_SHOW);
      Application.Terminate();
    end
    else
    begin
      if CopyFile(PWideChar(Application.ExeName), PWideChar(CaminhoExe), False) then
      begin
        ShowMessage('O Commerce foi instalado com sucesso, criei um atalho na área de trabalho e vamos reiniciar do local correto.');
        ShellExecute(Handle, 'open', pchar(CaminhoExe), nil, nil, SW_SHOW);
        Application.Terminate();
      end;
    end;
  end;

  CreateDesktopShellLink(CaminhoExe);
  VerificaOpenSSL();
  frmVerifica.BaixaFerramenta('http://dl.moebios.com.br/postgresql-9.3.25-1-windows-x64.exe', '--mode unattended --unattendedmodeui none --install_runtimes 0 --superpassword 1234');

  R.OpenKey('Software\Moebios\Database', True);
  try
    Servidor := R.ReadString('Servidor');
    Usuario := R.ReadString('Usuario');
    Senha := R.ReadString('Senha');
    Porta := R.ReadString('Porta');
    Banco := R.ReadString('Banco');

    DM.Conexao.Server := Servidor;
    DM.Conexao.Username := Usuario;
    DM.Conexao.Password := Senha;
    DM.Conexao.Port := StrToInt(OnlyNumber(Porta));
    DM.Conexao.Database := Banco;

    DM.Conexao.Connect();
  except

  end;

  if (Servidor = '') or (Usuario = '') or (Senha = '') or (OnlyNumber(Porta) = '') or (Servidor = '') or (Banco = '') or not DM.Conexao.Connected then
    frmConexaoBanco.ShowModal();

  DM.VerificaBancoDeDados();
  DM.qryEmpresa.Open();
  DM.qryAjustes.Open();
  IDMaquina := RetornaIDMaquina();

  Licenciado := True;

  if Licenciado then
  begin
    DM.qryConfigDFe.Open();
    cbssllib.ItemIndex := DM.qryConfigDFetssllib.Value;
    cbcryptlib.ItemIndex := DM.qryConfigDFetsslcryptlib.Value;
    cbhttplib.ItemIndex := DM.qryConfigDFetsslhttplib.Value;
    cbxmlsignlib.ItemIndex := DM.qryConfigDFetsslxmlsignlib.Value;
    cbSSLType.ItemIndex := DM.qryConfigDFessltype.Value;

    case DM.qryConfigDFeambiente.Value of
      1:
        DM.ACBrNFe.Configuracoes.WebServices.Ambiente := taProducao;
      2:
        DM.ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;
    else
      DM.ACBrNFe.Configuracoes.WebServices.Ambiente := taHomologacao;
    end;

    DM.qryFuncionarios.Open();

    DM.ACBrNFe.Configuracoes.Certificados.NumeroSerie := edtCertificadoNrSerie.Text;
    DM.ACBrNFe.Configuracoes.Certificados.Senha := edtCertificadoSenha.Text;

    frmLogin.ShowModal();
  end
  else
  begin
    Application.MessageBox('Por favor entre em contato com o suporte.' + sLineBreak + 'O Commerce será encerrado.', 'Moebios Commerce', MB_ICONINFORMATION);
    Application.Terminate();
  end;
end;

function TfrmPrincipal.RetornaIDMaquina: int64;
var
  RetornoID: int64;

  function SSerial(FDrive: string): string;
  var
    Serial: DWord;
    DirLen, Flags: DWord;
    DLabel: array[0..11] of char;
    conta: int64;

    function CPUID: int64;
    var
      a, b, c, d: LongWord;
      CPUID: LongWord;
    begin
      asm
        push    EAX
        push    EBX
        push    ECX
        push    EDX
        mov     eax, 1
        db      $0F, $A2
        mov     a, EAX
        mov     b, EBX
        mov     c, ECX
        mov     d, EDX
        pop     EDX
        pop     ECX
        pop     EBX
        pop     EAX
      end;
      CPUID := a;
      result := CPUID;
    end;

  begin
    try
      GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen, Flags, nil, 0);
      conta := Serial + CPUID;
      result := FloatToStr(conta);
    except
      result := '';
    end;
  end;

begin
  RetornoID := StrToint64(SSerial('C'));
  result := RetornoID;
end;

function TfrmPrincipal.RetornaVersaoInstalada: integer;
begin
  Result := StrToInt(StringReplace(GetBuildInfoAsString, '.', EmptyStr, [rfReplaceAll]));
end;

procedure TfrmPrincipal.BaixarArquivo(URL, FileName: string; Substituir: Boolean = False);
var
  IdHTTP: TIdHTTP;
  IdSSL: TIdSSLIOHandlerSocketOpenSSL;
  Stream: TMemoryStream;
begin
  ForceDirectories(ExtractFilePath(FileName));

  if not FileExists(FileName) or Substituir then
  begin
    IdHTTP := TIdHTTP.Create;
    IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create(IdHTTP);
    IdSSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
    IdHTTP.IOHandler := IdSSL;
    IdHTTP.HandleRedirects := True;
    Stream := TMemoryStream.Create;
    try
      IdHTTP.Get(URL, Stream);
      Stream.SaveToFile(FileName);
      Application.ProcessMessages();
    finally
      Stream.Free;
      IdHTTP.Free;
    end;
  end;
end;

procedure TfrmPrincipal.GetBuildInfo(var V1, V2, V3, V4: word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize > 0 then
  begin
    GetMem(VerInfo, VerInfoSize);
    try
      if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
      begin
        VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
        with VerValue^ do
        begin
          V1 := dwFileVersionMS shr 16;
          V2 := dwFileVersionMS and $FFFF;
          V3 := dwFileVersionLS shr 16;
          V4 := dwFileVersionLS and $FFFF;
        end;
      end;
    finally
      FreeMem(VerInfo, VerInfoSize);
    end;
  end;
end;

function TfrmPrincipal.GetBuildInfoAsString: string;
var
  V1, V2, V3, V4: word;
begin
  GetBuildInfo(V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' + IntToStr(V3) + '.' + IntToStr(V4);
end;

function TfrmPrincipal.ComputerName(): string;
var
  ComputerName: array[0..256] of char;
  Size: DWORD;
begin
  Size := 256;
  GetComputerName(ComputerName, Size);
  Result := ComputerName;
end;

function TfrmPrincipal.GetIP: string;
begin
  TIdStack.IncUsage;
  try
    Result := GStack.LocalAddress;
  finally
    TIdStack.DecUsage;
  end;
end;

procedure TfrmPrincipal.lblnuvemfiscalClick(Sender: TObject);
var
  URL: string;
begin
  URL := 'https://www.nuvemfiscal.com.br/';
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmPrincipal.AtualizarSSLLibsCombo;
begin
  cbSSLLib.ItemIndex := Integer(DM.ACBrNFe.Configuracoes.Geral.SSLLib);
  cbCryptLib.ItemIndex := Integer(DM.ACBrNFe.Configuracoes.Geral.SSLCryptLib);
  cbHttpLib.ItemIndex := Integer(DM.ACBrNFe.Configuracoes.Geral.SSLHttpLib);
  cbXmlSignLib.ItemIndex := Integer(DM.ACBrNFe.Configuracoes.Geral.SSLXmlSignLib);

  cbSSLType.Enabled := (DM.ACBrNFe.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

function TfrmPrincipal.GetDesktopFolder: string;
var
  PIDList: PItemIDList;
  Buffer: array[0..MAX_PATH - 1] of Char;
begin
  Result := '';
  SHGetSpecialFolderLocation(Application.Handle, CSIDL_DESKTOP, PIDList);
  if Assigned(PIDList) then
    if SHGetPathFromIDList(PIDList, Buffer) then
      Result := Buffer;
end;

function TfrmPrincipal.CreateDesktopShellLink(const TargetName: string): Boolean;
var
  IObject: IUnknown;
  ISLink: IShellLink;
  IPFile: IPersistFile;
  PIDL: PItemIDList;
  LinkName: string;
  InFolder: array[0..MAX_PATH - 1] of Char;
begin
  Result := False;

  IObject := CreateComObject(CLSID_ShellLink);
  ISLink := IObject as IShellLink;
  IPFile := IObject as IPersistFile;

  with ISLink do
  begin
    SetDescription('Moebios Commerce');
    SetPath(PChar(TargetName));
    SetWorkingDirectory(PChar(ExtractFilePath(TargetName)));
  end;

  SHGetSpecialFolderLocation(0, CSIDL_DESKTOPDIRECTORY, PIDL);
  SHGetPathFromIDList(PIDL, InFolder);

  LinkName := IncludeTrailingBackslash(GetDesktopFolder);
  LinkName := LinkName + 'Moebios Commerce.lnk';

  if not FileExists(LinkName) then
    if IPFile.Save(PWideChar(LinkName), False) = S_OK then
      Result := True;
end;

end.

