unit uVerifica;

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
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdIOHandlerSocket, dxActivityIndicator,
  IdComponent, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, IdURI,
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

const
  WM_AFTER_SHOW = WM_USER + 300; // custom message
  WM_AFTER_CREATE = WM_USER + 301; // custom message

type
  TfrmVerifica = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxActivityIndicator1: TdxActivityIndicator;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutItem3: TdxLayoutItem;
    lblProgresso: TcxLabel;
    IdAntiFreeze1: TIdAntiFreeze;
    procedure IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure FormShow(Sender: TObject);
  private
    Maximo: Int64;
    function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
    procedure WmAfterShow(var Msg: TMessage); message WM_AFTER_SHOW;
    { Private declarations }
  public
    vLink, vParametros, Option: string;
    procedure BaixaFerramenta(Link, parametros: string);
  end;

var
  frmVerifica: TfrmVerifica;

implementation

uses
  uPrincipal, uConectaAoBanco;

{$R *.dfm}

procedure TfrmVerifica.BaixaFerramenta(Link, parametros: string);
begin
  ForceDirectories('C:\Moebios\Tools\');

  if not FileExists('C:\Moebios\Tools\postgresql-9.3.25-1-windows-x64.exe') then
  begin
    lblProgresso.Caption := 'Baixando PostgreSQL';
    vLink := Link;
    vParametros := parametros;
    Self.ShowModal();
  end;
end;

function TfrmVerifica.RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
  resultado: Real;
begin
  resultado := ((ValorAtual * 100) / ValorMaximo);
  Result := FormatFloat('0%', resultado);
end;

procedure TfrmVerifica.WmAfterShow(var Msg: TMessage);
var
  R: TRegistry;
begin
  TThread.CreateAnonymousThread(
    procedure()
    var
      idHTTP: TIdHTTP;
      LHttp: TIdHTTP;
      IdSSL: TIdSSLIOHandlerSocketOpenSSL;
      Stream: TMemoryStream;
      Filename, aCommando: string;
      tmpStartupInfo: TStartupInfo;
      tmpProcessInformation: TProcessInformation;
      tmpProgram: string;
    begin

      begin
        LHttp := TIdHTTP.Create(nil);
        try
          LHttp.Head(vLink);
          Filename := LHttp.Response.RawHeaders.Params['Content-Disposition', 'filename'];
          if Filename = '' then
            with TIdURI.Create(vLink) do
            try
              Filename := Document;
            finally
              Free;
            end;
        finally
          LHttp.Free;
        end;

        ForceDirectories('C:\Moebios\Tools\');
        idHTTP := TIdHTTP.Create(nil);
        idHTTP.OnWork := frmVerifica.IdHTTPWork;
        idHTTP.OnWorkBegin := frmVerifica.IdHTTPWorkBegin;
        IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create(idHTTP);
        IdSSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
        idHTTP.IOHandler := IdSSL;
        idHTTP.HandleRedirects := True;
        Stream := TMemoryStream.Create;
        try
          idHTTP.Get(vLink, Stream);
          Stream.SaveToFile('C:\Moebios\Tools\' + Filename);
          Application.ProcessMessages();
        finally
          Stream.Free;
          idHTTP.Free;

          lblProgresso.Caption := 'Instalando PostgreSQL - Aguarde: usuario: postgres senha: 1234';

          aCommando := 'C:\Moebios\Tools\' + Filename;

          begin
            tmpProgram := trim(aCommando);
            FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
            with tmpStartupInfo do
            begin
              cb := SizeOf(TStartupInfo);
              wShowWindow := SW_HIDE;
            end;

            if CreateProcess(nil, pchar(tmpProgram + ' ' + vParametros), nil, nil, true, CREATE_NO_WINDOW, nil, nil, tmpStartupInfo, tmpProcessInformation) then
            begin
              while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
              begin
                Application.ProcessMessages;
              end;
              CloseHandle(tmpProcessInformation.hProcess);
              CloseHandle(tmpProcessInformation.hThread);
              try
                R := TRegistry.Create;

                R.OpenKey('Software\Moebios\Database', True);
                R.WriteString('Servidor', 'localhost');
                R.WriteString('Usuario', 'postgres');
                R.WriteString('Senha', '1234');
                R.WriteString('Porta', '5432');
                R.WriteString('Banco', 'postgres');

                DM.Conexao.Server := 'localhost';
                DM.Conexao.Username := 'postgres';
                DM.Conexao.Password := '1234';
                DM.Conexao.Port := StrToInt(OnlyNumber('5432'));
                DM.Conexao.Database := 'postgres';

                DM.Conexao.Connect();
              except

              end;

              if DM.Conexao.Connected then
              begin
                R.OpenKey('Software\Moebios\Database', True);
                R.WriteString('Servidor', 'localhost');
                R.WriteString('Usuario', 'postgres');
                R.WriteString('Senha', '1234');
                R.WriteString('Porta', '5432');
                R.WriteString('Banco', 'moebios');

                DM.Conexao.Server := 'localhost';
                DM.Conexao.Username := 'postgres';
                DM.Conexao.Password := '1234';
                DM.Conexao.Port := StrToInt(OnlyNumber('5432'));
                DM.Conexao.Database := 'moebios';
              end;

              frmVerifica.Close();
            end
            else
            begin
              RaiseLastOSError;
            end;
          end;
        end;

      end;

      TThread.Synchronize(TThread.CurrentThread,
        procedure()
        begin

        end);

    end).Start();
end;

procedure TfrmVerifica.FormShow(Sender: TObject);
begin
  PostMessage(Self.Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TfrmVerifica.IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
var
  IdHttp: TIdHttp;
begin
  IdHttp := ASender as TIdHttp;
  lblProgresso.Caption := 'Baixando PostgreSQL 9.3.25 - ' + RetornaPorcentagem(Maximo, AWorkCount);
end;

procedure TfrmVerifica.IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
var
  IdHttp: TIdHttp;
begin
  IdHttp := ASender as TIdHttp;
  lblProgresso.Caption := 'Baixando PostgreSQL 9.3.25';
  Maximo := AWorkCountMax;
end;

end.

