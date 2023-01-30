unit uConectaAoBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, ACBrUtil,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  StrUtils, dxSkinsCore, cxLabel, dxGDIPlusClasses, cxImage, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit, CRtypes,
  DBAccess, UniProvider, Uni, CRFunctions, Registry, cxClasses, Data.DB, MemDS,
  DAScript, UniScript, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue;

type
  TfrmConexaoBanco = class(TForm)
    cxImage1: TcxImage;
    cxLabel1: TcxLabel;
    edtUsuario: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxImage2: TcxImage;
    edtSenha: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxImage3: TcxImage;
    edtServidor: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxImage4: TcxImage;
    edtPorta: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxImage5: TcxImage;
    cxLabel6: TcxLabel;
    cxImage6: TcxImage;
    edtBancos: TcxComboBox;
    btnConectar: TcxButton;
    cxEditStyleController1: TcxEditStyleController;
    CriarDatabase: TUniScript;
    qryCriarSchemas: TUniQuery;
    qryBancoExiste: TUniQuery;
    qryBancoExistedatname: TStringField;
    procedure edtBancosPropertiesInitPopup(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtServidorExit(Sender: TObject);
    procedure edtServidorKeyPress(Sender: TObject; var Key: Char);
    procedure edtPortaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPortaExit(Sender: TObject);
    procedure edtUsuarioExit(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaExit(Sender: TObject);
    procedure edtBancosExit(Sender: TObject);
    procedure edtBancosKeyPress(Sender: TObject; var Key: Char);
  private
    function VerificaPreenchimento: boolean;
  public
    function VerificaBancoExiste(Banco: string): boolean;
    procedure RetornaBancos();
  end;

var
  frmConexaoBanco: TfrmConexaoBanco;

implementation

uses
  uDM, uPrincipal;

{$R *.dfm}

{ TfrmConexaoBanco }

procedure TfrmConexaoBanco.btnConectarClick(Sender: TObject);
var
  R: TRegistry;
  Banco: string;
  I: integer;
begin
  R := TRegistry.Create;

  R.OpenKey('Software\Moebios\Database', True);
  R.WriteString('Servidor', edtServidor.Text);
  R.WriteString('Usuario', edtUsuario.Text);
  R.WriteString('Senha', edtSenha.Text);
  R.WriteString('Porta', edtPorta.Text);
  R.WriteString('Banco', edtBancos.Text);

  try
    Banco := StringReplace(edtBancos.Text, ' ', '', [rfReplaceAll]);
    DM.Conexao.Database := 'postgres';
    DM.Conexao.Connect();

    if not VerificaBancoExiste(Banco) then
    begin
      if MessageDlg('Deseja instalar um database padrão Moebios Commerce para o database ' + Banco + ' ?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        CriarDatabase.MacroByName('BANCO').Value := Banco;
        CriarDatabase.Execute();

        DM.Conexao.Commit();

        DM.Conexao.Disconnect();
        edtBancos.Text := Banco;
        DM.Conexao.Database := Banco;
        DM.Conexao.Server := edtServidor.Text;
        DM.Conexao.Username := edtUsuario.Text;
        DM.Conexao.Password := edtSenha.Text;
        DM.Conexao.Port := StrToInt(edtPorta.Text);
        DM.Conexao.Connect();

        DM.VerificaBancoDeDados();
      end;
    end
    else
    begin
      try
        DM.Conexao.Disconnect();
        DM.Conexao.Database := edtBancos.Text;
        DM.Conexao.Connect();
        DM.VerificaBancoDeDados();
      except

      end;
    end;
  except

  end;

  if DM.Conexao.Connected then
  begin
    try
      R.WriteString('Servidor', edtServidor.Text);
      R.WriteString('Usuario', edtUsuario.Text);
      R.WriteString('Senha', edtSenha.Text);
      R.WriteString('Porta', edtPorta.Text);
      R.WriteString('Banco', edtBancos.Text);
    except

    end;
    Close();
  end;
end;

procedure TfrmConexaoBanco.edtBancosExit(Sender: TObject);
begin
  btnConectar.Click();
end;

procedure TfrmConexaoBanco.edtBancosKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  btnConectar.Click();
end;

procedure TfrmConexaoBanco.edtBancosPropertiesInitPopup(Sender: TObject);
begin
  RetornaBancos();
end;

procedure TfrmConexaoBanco.edtPortaExit(Sender: TObject);
begin
  edtUsuario.SetFocus();
end;

procedure TfrmConexaoBanco.edtPortaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtUsuario.SetFocus();
end;

procedure TfrmConexaoBanco.edtSenhaExit(Sender: TObject);
begin
 edtBancos.SetFocus();
end;

procedure TfrmConexaoBanco.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtBancos.SetFocus();
end;

procedure TfrmConexaoBanco.edtServidorExit(Sender: TObject);
begin
  edtPorta.SetFocus();
end;

procedure TfrmConexaoBanco.edtServidorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtPorta.SetFocus();
end;

procedure TfrmConexaoBanco.edtUsuarioExit(Sender: TObject);
begin
  edtSenha.SetFocus();
end;

procedure TfrmConexaoBanco.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtSenha.SetFocus();
end;

procedure TfrmConexaoBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DM.Conexao.Connect();
  except
    if not DM.Conexao.Connected then
      Application.Terminate();
  end;

end;

procedure TfrmConexaoBanco.FormShow(Sender: TObject);
begin
  edtSenha.SetFocus();
end;

procedure TfrmConexaoBanco.RetornaBancos;
var
  Banco: string;
begin
  try
    DM.Conexao.Server := edtServidor.Text;
    DM.Conexao.Port := StrToInt(OnlyNumber(edtPorta.Text));
    DM.Conexao.Username := edtUsuario.Text;
    DM.Conexao.Password := edtSenha.Text;

    Banco := DM.Conexao.Database;

    DM.Conexao.Database := 'postgres';

    frmConexaoBanco.edtBancos.Properties.Items := DM.RetornaBancos(DM.Conexao);
  except
    DM.Conexao.Database := Banco;
  end;

  DM.Conexao.Database := Banco;
end;

function TfrmConexaoBanco.VerificaBancoExiste(Banco: string): boolean;
begin
  qryBancoExiste.Close();
  qryBancoExiste.ParamByName('pBANCO').Value := Banco;
  qryBancoExiste.Open();

  Result := not qryBancoExiste.IsEmpty;
  qryBancoExiste.Close();
end;

function TfrmConexaoBanco.VerificaPreenchimento: boolean;
begin
  Result := (edtSenha.Text <> '') and (edtUsuario.Text <> '') and (edtServidor.Text <> '') and (edtPorta.Text <> '');
end;

end.

