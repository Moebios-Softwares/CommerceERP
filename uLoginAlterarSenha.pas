unit uLoginAlterarSenha;

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
  TfrmAlterarSenha = class(TdxRibbonForm)
    Panel1: TPanel;
    cxImage1: TcxImage;
    lblSenha: TcxLabel;
    edtSenha: TcxTextEdit;
    edtSenhaNova: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxLabel5: TcxLabel;
    dxRibbon1: TdxRibbon;
    dxSkinController1: TdxSkinController;
    dxBarManager1: TdxBarManager;
    cxBarEditItem1: TcxBarEditItem;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    procedure edtSenhaExit(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    function CryptReg(Action, Src: string): string;
    { Private declarations }
  public
    Usuario: string;
    SenhaVerificada: boolean;
  end;

var
  frmAlterarSenha: TfrmAlterarSenha;

implementation

uses
  uDM;

{$R *.dfm}

procedure TfrmAlterarSenha.cxButton1Click(Sender: TObject);
var
  Email: string;
begin
  if SenhaVerificada and (edtSenhaNova.Text <> '') then
  begin
    DM.tblFuncionarios.Open();
    DM.tblFuncionarios.Refresh();

    if DM.tblFuncionarios.Locate('usuario', Usuario, []) then
    begin
      Email := DM.tblFuncionariosemail.AsString;
      Close();
    end;
  end;
end;

procedure TfrmAlterarSenha.cxButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TfrmAlterarSenha.edtSenhaExit(Sender: TObject);
var
  Senha, Digitada: string;
begin
  SenhaVerificada := False;

  if edtSenha.Text <> '' then
  begin
    DM.tblFuncionarios.Open();
    DM.tblFuncionarios.Refresh();

    if DM.tblFuncionarios.Locate('usuario', Usuario, []) then
    begin
      Senha := CryptReg('D', DM.tblFuncionariossenha.asstring);
      Digitada := edtSenha.Text;

      if Senha <> Digitada then
      begin
        SenhaVerificada := False;
        Application.MessageBox(PWideChar('A senha está incorreta.'), 'Atenção!', MB_ICONWARNING);
      end
      else
        SenhaVerificada := True;
    end;
  end;
end;

function TfrmAlterarSenha.CryptReg(Action, Src: string): string;
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

end.

