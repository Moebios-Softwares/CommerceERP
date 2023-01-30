unit uCadastroPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, dxStatusBar, dxRibbonStatusBar,
  dxRibbonCustomizationForm, cxTextEdit, cxContainer, cxEdit, ACBrUtil,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxDropDownEdit, cxDBEdit,
  cxCurrencyEdit, cxMaskEdit, cxCalendar, dxLayoutControl, dxSkinsForm, Data.DB,
  MemDS, DBAccess, Uni, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, ACBrBase, ACBrSocket, ACBrCEP, cxGroupBox, cxRadioGroup,
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
  TfrmCadastroPessoa = class(TdxRibbonForm)
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dsPessoas: TDataSource;
    tblPessoas: TUniTable;
    dxSkinController1: TdxSkinController;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    btnSalvar: TdxBarLargeButton;
    btnExcluir: TdxBarLargeButton;
    btnSair: TdxBarLargeButton;
    dxLayoutControl1: TdxLayoutControl;
    edtCodigo: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    edtDataCadastro: TcxDBDateEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    edtCNPJ: TcxDBMaskEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtEndereco: TcxDBTextEdit;
    edtEnderecoNumero: TcxDBTextEdit;
    edtBairro: TcxDBTextEdit;
    edtCidade: TcxDBTextEdit;
    edtUF: TcxDBComboBox;
    edtComplemento: TcxDBTextEdit;
    edtCEP: TcxDBMaskEdit;
    edtTelefone: TcxDBMaskEdit;
    edtIE: TcxDBTextEdit;
    edtResponsavel: TcxDBTextEdit;
    edtAbertura: TcxDBDateEdit;
    btnBuscaCNPJ: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    cxButton1: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    ACBrCEP1: TACBrCEP;
    edtTipoPessoa: TcxDBRadioGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edtEmail: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
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
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtDataCadastroExit(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure btnBuscaCNPJClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCNPJExit(Sender: TObject);
    procedure edtCNPJKeyPress(Sender: TObject; var Key: Char);
  private
    function IsEmptyOrNull(const Value: Variant): Boolean;
  public
    Novo: boolean;
  end;

var
  frmCadastroPessoa: TfrmCadastroPessoa;

implementation

uses
  uDM;

{$R *.dfm}

{ TForm1 }

procedure TfrmCadastroPessoa.btnBuscaCNPJClick(Sender: TObject);
var
  Empresa: TEmpresa;
begin
  if Length(OnlyNumber(edtCNPJ.EditText)) > 11 then
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
    edtAbertura.Text := DateToStr(Empresa.Abertura);
    edtResponsavel.Text := Empresa.Responsavel;
    edtCEP.Text := OnlyNumber(Empresa.Endereco.CEP);
    edtTelefone.Text := OnlyNumber(Empresa.telefone);
    edtEmail.Text := Empresa.email;

    tblPessoasibge.AsString := Empresa.Endereco.CidadeIBGE;
    tblPessoastipopessoa.AsString := 'Cliente';
    tblPessoassimples.Value := Empresa.Simples;
    tblPessoassimei.Value := Empresa.Simei;
    tblPessoascnae.Value := Empresa.CNAE;
    tblPessoassintegra.Value := Empresa.Sintegra;
    tblPessoassintegrainativo.Value := Empresa.SintegraInativo;

    tblPessoas.Post();
    tblPessoas.Edit();
  end
  else
    Application.MessageBox(PWideChar('Só podemos consultar dados de CNPJ!'), 'Atenção!', MB_ICONINFORMATION);
end;

procedure TfrmCadastroPessoa.btnExcluirClick(Sender: TObject);
begin
  tblPessoas.Delete();
  Application.MessageBox(PWideChar('Pessoa ' + tblPessoasnome.AsString + ' excluída!'), 'Atenção!', MB_ICONINFORMATION);
  Close();
end;

procedure TfrmCadastroPessoa.btnSairClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmCadastroPessoa.btnSalvarClick(Sender: TObject);
begin
  if edtNome.Text = '' then
  begin
    edtNome.Style.Color := clRed;
    Application.MessageBox(PWideChar('O cadastro precisa precisa ter um nome!'), 'Atenção!', MB_ICONERROR);
    edtNome.SetFocus();
    exit;
  end;

  if edtDataCadastro.Text = '' then
    edtDataCadastro.Date := Date;

  if IsEmptyOrNull(edtTipoPessoa.EditValue) then
  begin
    edtNome.Style.Color := clRed;
    Application.MessageBox(PWideChar('Escolha o tipo de pessoa!'), 'Atenção!', MB_ICONERROR);
    edtTipoPessoa.SetFocus();
    exit;
  end;

  tblPessoasjuridica.Value := (Length(OnlyNumber(edtCNPJ.Text)) > 11);

  if Novo then
    Application.MessageBox(PWideChar('Pessoa ' + tblPessoasnome.AsString + ' cadastrada!'), 'Atenção!', MB_ICONINFORMATION)
  else
    Application.MessageBox(PWideChar('Alteração no cadastro de ' + tblPessoasnome.AsString + ' salva!'), 'Atenção!', MB_ICONINFORMATION);

  tblPessoas.Post();
  Close();
end;

procedure TfrmCadastroPessoa.cxButton1Click(Sender: TObject);
var
  CEP: TCEP;
begin
  try
    CEP := DM.ConsultaCEP(edtCEP.Text);

    edtEndereco.Text := CEP.Logradouro;
    edtBairro.Text := CEP.Bairro;
    edtCidade.Text := CEP.Municipio;
    edtUF.Text := CEP.UF;
    edtComplemento.Text := CEP.Complemento;
  except

  end;
end;

procedure TfrmCadastroPessoa.edtCNPJExit(Sender: TObject);
begin
  if Length(edtCNPJ.EditText) > 11 then
    edtCNPJ.Properties.EditMask := '00.000.000/0000-00'
  else
    edtCNPJ.Properties.EditMask := '000.000.000-00';
end;

procedure TfrmCadastroPessoa.edtCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnBuscaCNPJ.Click();
end;

procedure TfrmCadastroPessoa.edtCodigoExit(Sender: TObject);
begin
  if Novo then
    edtCodigo.Text := DM.GeraCodigoDisponivel('commerce.pessoas');
end;

procedure TfrmCadastroPessoa.edtDataCadastroExit(Sender: TObject);
begin
  if edtDataCadastro.Text = '' then
    edtDataCadastro.Date := Date;
end;

procedure TfrmCadastroPessoa.edtNomeExit(Sender: TObject);
begin
  if edtNome.Text = '' then
  begin
    edtNome.Style.Color := clRed;
  end;
end;

procedure TfrmCadastroPessoa.edtNomePropertiesChange(Sender: TObject);
begin
  if edtNome.Text <> '' then
    edtNome.Style.Color := clWindow;
end;

procedure TfrmCadastroPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblPessoas.Cancel();
  tblPessoas.Close();
end;

procedure TfrmCadastroPessoa.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmCadastroPessoa.FormShow(Sender: TObject);
begin
  if Novo then
    edtCNPJ.Properties.EditMask := ''
  else
  begin
    if Length(OnlyNumber(edtCNPJ.Text)) > 11 then
      edtCNPJ.Properties.EditMask := '00.000.000/0000-00'
    else
      edtCNPJ.Properties.EditMask := '000.000.000-00';
  end;

  edtCodigo.SetFocus();
  edtNome.SetFocus();
end;

function TfrmCadastroPessoa.IsEmptyOrNull(const Value: Variant): Boolean;
begin
  Result := VarIsClear(Value) or VarIsEmpty(Value) or VarIsNull(Value) or (VarCompareValue(Value, Unassigned) = vrEqual);
  if (not Result) and VarIsStr(Value) then
    Result := Value = '';
end;

end.

