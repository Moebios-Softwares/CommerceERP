unit uUpdate;

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
  Vcl.WinXCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, IdStack, WinAPI.ShellAPI, dxDateRanges, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtDlgs, Vcl.OleCtrls, SHDocVw, MemDS, DBAccess,
  Uni, UniProvider, MySQLUniProvider, cxSpinEdit, NetEncoding, cxGroupBox,
  cxRadioGroup, TypInfo, pcnconversao, uDM, IdBaseComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, IdAntiFreezeBase, IdAntiFreeze, System.Threading,
  System.IniFiles, IdIOHandler, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdIOHandlerSocket, dxActivityIndicator, IdComponent, dxSkinBasic, dxSkinBlack,
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
  dxSkinXmas2008Blue;

type
  TfrmUpdate = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxActivityIndicator1: TdxActivityIndicator;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutItem3: TdxLayoutItem;
    lblProgresso: TcxLabel;
    procedure IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
    procedure IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
  private
    Maximo: Int64;
    function RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
    { Private declarations }
  public
    Link: string;
    Option: string;
    procedure AtualizaSistema(Link: string);
    procedure VerificaAtualizacaodoBanco(Versao: string);
  end;

var
  frmUpdate: TfrmUpdate;

implementation

uses
  uPrincipal;

{$R *.dfm}

procedure TfrmUpdate.AtualizaSistema(Link: string);
begin
  Self.ShowModal();
  TThread.CreateAnonymousThread(
    procedure()
    var
      idHTTP: TIdHTTP;
      IdSSL: TIdSSLIOHandlerSocketOpenSSL;
      Stream: TMemoryStream;
    begin
      begin
        ForceDirectories('C:\Moebios\Update\');
        idHTTP := TIdHTTP.Create(nil);
        idHTTP.OnWork := frmUpdate.IdHTTPWork;
        idHTTP.OnWorkBegin := frmUpdate.IdHTTPWorkBegin;
        IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create(idHTTP);
        IdSSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
        idHTTP.IOHandler := IdSSL;
        idHTTP.HandleRedirects := True;
        Stream := TMemoryStream.Create;
        try
          idHTTP.Get(Link, Stream);
          Stream.SaveToFile('C:\Moebios\Update\CommerceUpdate.exe');
          Application.ProcessMessages();
        finally
          Stream.Free;
          idHTTP.Free;
        end;
      end;

      TThread.Synchronize(TThread.CurrentThread,
        procedure()
        begin
          frmUpdate.Close();
          ShellExecute(Handle, 'open', pchar('C:\Moebios\Update\CommerceUpdate.exe'), nil, nil, SW_SHOW);
          Application.Terminate();
        end);

    end).Start();
end;

function TfrmUpdate.RetornaPorcentagem(ValorMaximo, ValorAtual: real): string;
var
  resultado: Real;
begin
  resultado := ((ValorAtual * 100) / ValorMaximo);
  Result := FormatFloat('0%', resultado);
end;

procedure TfrmUpdate.VerificaAtualizacaodoBanco(Versao: string);
begin
  TThread.CreateAnonymousThread(
    procedure()

      procedure CopiaDataSet(Origem, Destino: TDataSet);
      var
        CampoOrigem, CampoDestino: TField;
        i: Integer;
      begin
        for i := 0 to Origem.Fields.Count - 1 do
        begin
          CampoOrigem := Origem.Fields[i];
          CampoDestino := Destino.FindField(Origem.Fields[i].FullName);

          CampoDestino.Value := CampoOrigem.Value;
        end;
      end;

    var
      ConexaoScripts, ConexaoLocal: TUniConnection;
      qryScripts, qryLocal: TUniQuery;
      Posicao: integer;
      R: TRegistry;
    begin
      lblProgresso.Caption := 'Atualizando Banco de Dados para nova versão...';
      ConexaoScripts := TUniConnection.Create(nil);
      ConexaoLocal := TUniConnection.Create(nil);
      qryScripts := TUniQuery.Create(nil);
      qryLocal := TUniQuery.Create(nil);

      qryScripts.Connection := ConexaoScripts;
      qryLocal.Connection := ConexaoLocal;

      ConexaoScripts.ProviderName := 'MySQL';
      ConexaoScripts.Server := 'moebios.com.br';
      ConexaoScripts.Port := 3306;
      ConexaoScripts.Username := 'wolfex14_moebios';
      ConexaoScripts.Password := '@Frei1990tas';
      ConexaoScripts.Database := 'wolfex14_commerce';

      R := TRegistry.Create;

      R.OpenKey('Software\Moebios\Database', True);

      ConexaoLocal.ProviderName := 'PostgreSQL';
      ConexaoLocal.Server := R.ReadString('Servidor');
      ConexaoLocal.Username := R.ReadString('Usuario');
      ConexaoLocal.Password := R.ReadString('Senha');
      ConexaoLocal.Port := StrToInt(R.ReadString('Porta'));
      ConexaoLocal.Database := R.ReadString('Banco');

      ConexaoLocal.Connect();
      ConexaoScripts.Connect();

      qryScripts.SQL.Clear();
      qryScripts.SQL.Text := 'SELECT * FROM bancoupdate WHERE versao > ' +IntToStr(StrToInt(OnlyNumber(versao)));
      qryScripts.Open();
      qryScripts.First();

      Posicao := 0;

      while not qryScripts.Eof do
      begin
        inc(Posicao, 1);
        lblProgresso.Caption := 'Atualizando Banco de Dados para nova versão - ' + RetornaPorcentagem(qryScripts.RecordCount, Posicao);;
        qryLocal.SQL.Clear();
        qryLocal.SQL.Text := qryScripts.FieldByName('script').AsString;
        qryLocal.ExecSQL();

        qryScripts.Next();
      end;

      ConexaoScripts.Disconnect();
      ConexaoLocal.Disconnect();

      TThread.Synchronize(TThread.CurrentThread,
        procedure()
        begin
          lblProgresso.Caption := '';
        end);

    end).Start();
end;

procedure TfrmUpdate.IdHTTPWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
var
  IdHttp: TIdHttp;
begin
  IdHttp := ASender as TIdHttp;
  lblProgresso.Caption := 'Baixando - ' + RetornaPorcentagem(Maximo, AWorkCount);
end;

procedure TfrmUpdate.IdHTTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode; AWorkCountMax: Int64);
var
  IdHttp: TIdHttp;
begin
  IdHttp := ASender as TIdHttp;
  lblProgresso.Caption := 'Baixando uma nova versão';
  Maximo := AWorkCountMax;
end;

end.

