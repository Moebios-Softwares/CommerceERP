unit uCadastroFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, cxTextEdit, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, StrUtils,
  dxRibbonCustomizationForm, Data.DB, MemDS, DBAccess, Uni, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, dxLayoutContainer, cxGroupBox, cxRadioGroup,
  cxDBEdit, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxMaskEdit, cxCalendar,
  dxLayoutControl, ACBrBase, ACBrSocket, ACBrCEP, dxSkinBasic, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxCore;

type
  TfrmCadastroFuncionarios = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    btnSalvar: TdxBarLargeButton;
    btnExcluir: TdxBarLargeButton;
    btnSair: TdxBarLargeButton;
    dxLayoutControl1: TdxLayoutControl;
    edtCodigo: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    edtDataDemissao: TcxDBDateEdit;
    edtCPF: TcxDBMaskEdit;
    edtEndereco: TcxDBTextEdit;
    edtEnderecoNumero: TcxDBTextEdit;
    edtBairro: TcxDBTextEdit;
    edtCidade: TcxDBTextEdit;
    edtUF: TcxDBComboBox;
    edtComplemento: TcxDBTextEdit;
    edtCEP: TcxDBMaskEdit;
    edtTelefone: TcxDBMaskEdit;
    edtRG: TcxDBTextEdit;
    cxButton1: TcxButton;
    edtEmail: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem15: TdxLayoutItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    tblFuncionarios: TUniTable;
    dsFuncionarios: TDataSource;
    tblFuncionarioscodigo: TStringField;
    tblFuncionariosnome: TStringField;
    tblFuncionariosendereco: TStringField;
    tblFuncionariosbairro: TStringField;
    tblFuncionarioscidade: TStringField;
    tblFuncionariosuf: TStringField;
    tblFuncionarioscep: TStringField;
    tblFuncionariostelefone: TStringField;
    tblFuncionarioscelular: TStringField;
    tblFuncionariosemail: TStringField;
    tblFuncionarioscpf: TStringField;
    tblFuncionariosrg: TStringField;
    tblFuncionariosctps: TStringField;
    tblFuncionariosfuncao: TStringField;
    tblFuncionariosdata_admissao: TDateField;
    tblFuncionariosdata_demissao: TDateField;
    tblFuncionariossituacao: TIntegerField;
    tblFuncionariossalario: TFloatField;
    tblFuncionarioscomissao: TFloatField;
    tblFuncionariosobs1: TStringField;
    tblFuncionariosobs2: TStringField;
    tblFuncionariosobs3: TStringField;
    tblFuncionariosnascimento: TDateField;
    tblFuncionariosf_caixa: TIntegerField;
    tblFuncionariosf_vendedor: TIntegerField;
    tblFuncionariosf_tecnico: TIntegerField;
    tblFuncionariosnumero: TStringField;
    tblFuncionariossenha: TStringField;
    tblFuncionariosativa: TStringField;
    tblFuncionariosaprova_desconto: TStringField;
    tblFuncionariosabrir_caixa: TStringField;
    tblFuncionariosfecha_caixa: TStringField;
    tblFuncionariosconfiguracoes: TStringField;
    tblFuncionarioscancelar_venda: TStringField;
    tblFuncionarioscancelar_item: TStringField;
    tblFuncionariosatb: TStringField;
    tblFuncionariosidonline: TIntegerField;
    tblFuncionariosusuario: TStringField;
    edtDataAdmisao: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    edtCTPS: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    edtUsuario: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure edtNomePropertiesChange(Sender: TObject);
    procedure edtUsuarioPropertiesChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function CryptReg(Action, Src: string): string;
    { Private declarations }
  public
    Novo: boolean;
    function RetornaUsuario(Nome: string): string;
  end;

var
  frmCadastroFuncionarios: TfrmCadastroFuncionarios;

implementation

uses
  uDM;

{$R *.dfm}

{ TForm1 }

procedure TfrmCadastroFuncionarios.btnExcluirClick(Sender: TObject);
begin
  tblFuncionarios.Delete();
  Application.MessageBox(PWideChar('Funcionário(a) ' + tblFuncionariosnome.AsString + ' excluído(a)!'), 'Atenção!', MB_ICONINFORMATION);
  Close();
end;

procedure TfrmCadastroFuncionarios.btnSairClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmCadastroFuncionarios.btnSalvarClick(Sender: TObject);
var
  NovaSenha: string;
begin
  if edtNome.Text = '' then
  begin
    edtNome.Style.Color := clRed;
    Application.MessageBox(PWideChar('O cadastro precisa precisa ter um nome!'), 'Atenção!', MB_ICONERROR);
    edtNome.SetFocus();
    exit;
  end;

  if edtEmail.Text = '' then
  begin
    edtEmail.Style.Color := clRed;
    Application.MessageBox(PWideChar('O cadastro precisa precisa ter um email!'), 'Atenção!', MB_ICONERROR);
    edtEmail.SetFocus();
    exit;
  end;

  if edtDataAdmisao.Text = '' then
    edtDataAdmisao.Date := Date;

  if edtUsuario.Text = '' then
  begin
    edtUsuario.Style.Color := clRed;
    Application.MessageBox(PWideChar('O cadastro precisa precisa ter um usuário de acesso ao sistema!'), 'Atenção!', MB_ICONERROR);
    edtUsuario.SetFocus();
    exit;
  end;

  if Novo then
  begin
    Application.MessageBox(PWideChar(tblFuncionariosnome.AsString + ' cadastrado(a)!'), 'Atenção!', MB_ICONINFORMATION);
  end
  else
    Application.MessageBox(PWideChar('Alteração no cadastro de ' + tblFuncionariosnome.AsString + ' salva!'), 'Atenção!', MB_ICONINFORMATION);

  tblFuncionarios.Post();
  Close();
end;

procedure TfrmCadastroFuncionarios.edtCodigoExit(Sender: TObject);
begin
  if Novo then
    edtCodigo.Text := DM.GeraCodigoDisponivel('commerce.funcionarios');
end;

procedure TfrmCadastroFuncionarios.edtNomeExit(Sender: TObject);
begin
  if edtUsuario.Text = '' then
    edtUsuario.Text := RetornaUsuario(edtNome.Text);
end;

procedure TfrmCadastroFuncionarios.edtNomePropertiesChange(Sender: TObject);
begin
  edtNome.Style.Color := clWhite;
end;

procedure TfrmCadastroFuncionarios.edtUsuarioPropertiesChange(Sender: TObject);
begin
  edtUsuario.Style.Color := clWhite;
end;

procedure TfrmCadastroFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tblFuncionarios.Cancel();
  tblFuncionarios.Close();
end;

procedure TfrmCadastroFuncionarios.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmCadastroFuncionarios.FormShow(Sender: TObject);
begin
  edtCodigo.SetFocus();
  edtNome.SetFocus();
end;

function TfrmCadastroFuncionarios.RetornaUsuario(Nome: string): string;
var
  p: Integer;
  Primeiro, Ultimo: string;
begin
  Primeiro := ReplaceStr(LowerCase(Copy(Nome, 0, Pos(' ', Nome))), ' ', '');
  p := LastDelimiter(' ', Nome);
  Ultimo := ReplaceStr(LowerCase(Copy(Nome, p + 1, length(Nome) - p)), ' ', '');
  Result := Primeiro + '.' + Ultimo;
end;

function TfrmCadastroFuncionarios.CryptReg(Action, Src: string): string;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: string;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
  vRange: Pointer;
  vMemory: TMemoryStream;
begin
  vMemory := TMemoryStream.Create;
  vRange := vMemory.Memory;
  Key := 'ODNFVEONVNVPWNSVPIEJVPOEJVMSDPVPOVP39JF0JWVH23HWFO8394HF8943HF83H83483' + 'FOXSYS SISTEMAS';
  Dest := '';
  KeyLen := Length(Key + vMemory.MethodName(vRange));

  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin

      SrcAsc := (Ord(Src[SrcPos]) + OffSet) mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      SrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      if (KeyPos < KeyLen) then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
end;

procedure TfrmCadastroFuncionarios.cxButton1Click(Sender: TObject);
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

end.

