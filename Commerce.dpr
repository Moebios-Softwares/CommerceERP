program Commerce;



{$R *.dres}

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDM in 'uDM.pas' {DM: TDataModule},
  uLoginForm in 'uLoginForm.pas' {frmLogin},
  uLoginAlterarSenha in 'uLoginAlterarSenha.pas' {frmAlterarSenha},
  uProdutos in 'uProdutos.pas' {frmProdutos},
  uCadastroProdutos in 'uCadastroProdutos.pas' {frmCadastroProdutos},
  uPessoas in 'uPessoas.pas' {frmPessoas},
  uCadastroPessoa in 'uCadastroPessoa.pas' {frmCadastroPessoa},
  uConectaAoBanco in 'uConectaAoBanco.pas' {frmConexaoBanco},
  uFuncionarios in 'uFuncionarios.pas' {frmFuncionarios},
  uCadastroFuncionario in 'uCadastroFuncionario.pas' {frmCadastroFuncionarios},
  uServicos in 'uServicos.pas' {frmServicos},
  uNFCompra in 'uNFCompra.pas' {frmNFCompra},
  uCadastroNFEntrada in 'uCadastroNFEntrada.pas' {frmCadastroNFEntrada},
  uProdutosLinkConcilicacao in 'uProdutosLinkConcilicacao.pas' {frmLinkProduto},
  Vcl.Consts in 'C:\Program Files (x86)\Embarcadero\Studio\20.0\source\vcl\Vcl.Consts.pas',
  uNFe in 'uNFe.pas' {frmNFe},
  uCadastroNFe in 'uCadastroNFe.pas' {frmCadastroNFe},
  uCadastroNFeWizard in 'uCadastroNFeWizard.pas' {frmCadastroNFeWizard},
  uFuncoes in 'uFuncoes.pas',
  uVenda in 'uVenda.pas' {frmVenda},
  uMenuVendas in 'uMenuVendas.pas' {frmMenuVendas},
  uUpdate in 'uUpdate.pas' {frmUpdate},
  uExportarXMLContador in 'uExportarXMLContador.pas' {frmEnvioXML},
  uVerifica in 'uVerifica.pas' {frmVerifica};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Moebios Commerce';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmAlterarSenha, frmAlterarSenha);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmCadastroProdutos, frmCadastroProdutos);
  Application.CreateForm(TfrmPessoas, frmPessoas);
  Application.CreateForm(TfrmCadastroPessoa, frmCadastroPessoa);
  Application.CreateForm(TfrmConexaoBanco, frmConexaoBanco);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.CreateForm(TfrmCadastroFuncionarios, frmCadastroFuncionarios);
  Application.CreateForm(TfrmServicos, frmServicos);
  Application.CreateForm(TfrmNFCompra, frmNFCompra);
  Application.CreateForm(TfrmCadastroNFEntrada, frmCadastroNFEntrada);
  Application.CreateForm(TfrmLinkProduto, frmLinkProduto);
  Application.CreateForm(TfrmNFe, frmNFe);
  Application.CreateForm(TfrmCadastroNFe, frmCadastroNFe);
  Application.CreateForm(TfrmCadastroNFeWizard, frmCadastroNFeWizard);
  Application.CreateForm(TfrmVenda, frmVenda);
  Application.CreateForm(TfrmMenuVendas, frmMenuVendas);
  Application.CreateForm(TfrmUpdate, frmUpdate);
  Application.CreateForm(TfrmEnvioXML, frmEnvioXML);
  Application.CreateForm(TfrmVerifica, frmVerifica);
  Application.Run;
end.

