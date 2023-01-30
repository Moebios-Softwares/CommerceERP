unit uLoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, dxRibbonCustomizationForm, cxTextEdit,
  dxLayoutContainer, dxLayoutControl, dxSkinsForm, dxStatusBar, uni,
  dxRibbonStatusBar, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, Data.DB, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxSkinsDefaultPainters,
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
  TfrmLogin = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    dsFuncionarios: TDataSource;
    cxLabel5: TcxLabel;
    lblTitulo: TcxLabel;
    lblUsuario: TcxLabel;
    edtUsuario: TcxDBComboBox;
    lblSenha: TcxLabel;
    edtSenha: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel1: TPanel;
    cxImage1: TcxImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
  private
  public
    Logado, EmailVerificado: boolean;
    function RetornaEmailParcial(Email: string): string;
    function CryptReg(Action, Src: string): string;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  uDM, uPrincipal;

{$R *.dfm}

{ TForm1 }

function TfrmLogin.CryptReg(Action, Src: string): string;
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

procedure TfrmLogin.cxButton1Click(Sender: TObject);
var
  Senha, Digitada: string;
begin
  DM.tblFuncionarios.Open();
  DM.tblFuncionarios.Refresh();
  if DM.tblFuncionarios.Locate('usuario', edtUsuario.text, [loCaseInsensitive]) then
  begin
    Senha := CryptReg('D', DM.tblFuncionariossenha.asstring);
    Digitada := edtSenha.Text;

    if Senha = Digitada then
    begin
      Logado := True;
      frmPrincipal.UsuarioLogado := DM.tblFuncionariosusuario.AsString;
      frmPrincipal.AjustaPermissaoUsuario(DM.tblFuncionariosfuncao.AsString);
      Close();
    end
    else
      Application.MessageBox(PWideChar('A senha está incorreta.'), 'Atenção!', MB_ICONWARNING);
  end;
end;

procedure TfrmLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtSenha.SetFocus();
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Logado then
    Application.Terminate();
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  frmLogin.Logado := False;
  frmLogin.edtSenha.Clear();
  frmLogin.edtUsuario.SetFocus();

  DM.qryFuncionarios.Close();
  DM.qryFuncionarios.Open();
  DM.qryFuncionarios.First();

  edtUsuario.Properties.Items.Clear();

  while not DM.qryFuncionarios.Eof do
  begin
    edtUsuario.Properties.Items.Add(DM.qryFuncionariosusuario.AsString);
    DM.qryFuncionarios.Next();
  end;

  DM.qryEmpresa.Open();

  if DM.qryFuncionarios.IsEmpty then
  begin
    DM.qryFuncionarios.Append();
    DM.qryFuncionarioscodigo.Value := '000001';
    DM.qryFuncionariosnome.Value := 'Administrador';
    DM.qryFuncionariosusuario.Value := 'Administrador';
    DM.qryFuncionariosfuncao.Value := 'Administrador';
    DM.qryFuncionariosemail.Value := DM.qryEmpresaemail.AsString;
    DM.qryFuncionariossenha.Value := CryptReg('C', '12345678');
    DM.qryFuncionarios.Post();
    DM.qryFuncionarios.Refresh();
    Application.MessageBox(PWideChar('O usuário padrão foi inserido.' + sLineBreak + 'Usuário: Administrador' + sLineBreak + 'Senha: 12345678' + sLineBreak + 'Os detalhes serão enviados para o e-mail de cadastro.'), 'Atenção!', MB_ICONINFORMATION);
  end;

  edtSenha.SetFocus();
end;

function TfrmLogin.RetornaEmailParcial(Email: string): string;
var
  texto: string;
  i, Arroba, Fim: integer;
begin
  texto := Copy(Email, 0, 3);

  Arroba := Pos('@', Email);
  Fim := Length(Email);

  for i := 3 to Arroba - 1 do
    texto := texto + '*';

  texto := texto + Copy(Email, Arroba, Fim - Arroba + 1);

  Result := texto;
end;

end.

