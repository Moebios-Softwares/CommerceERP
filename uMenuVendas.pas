unit uMenuVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  ACBrUtil, cxBarEditItem, dxSkinsCore, dxRibbonCustomizationForm,
  cxTextEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxStyles, StrUtils,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxCalendar, cxCurrencyEdit, cxImageComboBox,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, DateUtils,
  cxGridDBTableView, cxGridCustomView, cxGrid, UniProvider, InterBaseUniProvider,
  DBAccess, Uni, MemDS, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxContainer, cxDateNavigator, System.ImageList,
  Vcl.ImgList, cxImageList, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  TfrmMenuVendas = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxRibbon1: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    cxBarEditItem1: TcxBarEditItem;
    grdPedidos: TcxGrid;
    grdPedidosView: TcxGridDBTableView;
    grdPedidosLevel1: TcxGridLevel;
    edtDatas: TcxDateNavigator;
    qryVendas: TUniQuery;
    qryVendascodigo: TStringField;
    qryVendascodcaixa: TStringField;
    qryVendascodvendedor: TStringField;
    qryVendasdata: TDateField;
    qryVendascodcliente: TStringField;
    qryVendasobs: TStringField;
    qryVendasmeio_dinheiro: TFloatField;
    qryVendasmeio_chequeav: TFloatField;
    qryVendasmeio_chequeap: TFloatField;
    qryVendasmeio_cartaocred: TFloatField;
    qryVendasmeio_cartaodeb: TFloatField;
    qryVendasmeio_crediario: TFloatField;
    qryVendassubtotal: TFloatField;
    qryVendasdesconto: TFloatField;
    qryVendasacrescimo: TFloatField;
    qryVendastotal: TFloatField;
    qryVendascupom_fiscal: TIntegerField;
    qryVendasretirado: TStringField;
    qryVendasmeio_convenio: TFloatField;
    qryVendasp5: TFloatField;
    qryVendasp3: TFloatField;
    qryVendasmeio_financeira: TFloatField;
    qryVendascod_financeira: TStringField;
    qryVendascod_financeira_lancto: TStringField;
    qryVendascod_financeira_lacto: TStringField;
    qryVendascodconvenio: TStringField;
    qryVendassituacao: TIntegerField;
    qryVendascodtransportador: TStringField;
    qryVendascodveiculo: TStringField;
    qryVendasfrete_valor: TFloatField;
    qryVendasfrete_obs: TStringField;
    qryVendasfrete_lancar: TIntegerField;
    qryVendasecf_serial: TStringField;
    qryVendascodnfsaida: TStringField;
    qryVendasatacado_varejo: TSmallintField;
    qryVendasnrvenda: TStringField;
    qryVendasfiltro: TIntegerField;
    qryVendascontingencia: TStringField;
    qryVendasgerado_nfce: TStringField;
    qryVendashora: TTimeField;
    qryVendaschave: TStringField;
    qryVendasxml_cfe: TStringField;
    qryVendasxml_cfe_cancelado: TStringField;
    qryVendaschave_cancelado: TStringField;
    qryVendasnumero_cupom_fiscal_cancel: TStringField;
    qryVendastroco: TFloatField;
    qryVendastotal_pago: TFloatField;
    qryVendasgerou_sat: TStringField;
    qryVendasnumero_sat: TIntegerField;
    qryVendasecf: TStringField;
    qryVendasobs1: TStringField;
    qryVendasobs2: TStringField;
    qryVendasobs3: TStringField;
    qryVendasobs4: TStringField;
    qryVendasatb: TStringField;
    qryVendasnumero_cupom_fiscal: TStringField;
    dsVendas: TDataSource;
    grdPedidosViewcodigo: TcxGridDBColumn;
    grdPedidosViewdata: TcxGridDBColumn;
    grdPedidosViewsubtotal: TcxGridDBColumn;
    grdPedidosViewdesconto: TcxGridDBColumn;
    grdPedidosViewacrescimo: TcxGridDBColumn;
    grdPedidosViewtotal: TcxGridDBColumn;
    grdPedidosViewsituacao: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDatasSelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuVendas: TfrmMenuVendas;

implementation

uses
  uFuncoes, uDM;

{$R *.dfm}

{ TForm1 }

procedure TfrmMenuVendas.edtDatasSelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
begin
  qryVendas.Close();
  qryVendas.ParamByName('pMES').Value := MonthOf(edtDatas.Date);
  qryVendas.ParamByName('pANO').Value := YearOf(edtDatas.Date);
  qryVendas.Open();
end;

procedure TfrmMenuVendas.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmMenuVendas.FormShow(Sender: TObject);
begin
  qryVendas.Close();
  qryVendas.ParamByName('pMES').Value := MonthOf(Now);
  qryVendas.ParamByName('pANO').Value := YearOf(Now);
  qryVendas.Open();
end;

end.

