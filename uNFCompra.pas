unit uNFCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxTextEdit, dxRibbonCustomizationForm, cxCalendar, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, dxStatusBar,
  dxRibbonStatusBar, dxSkinsForm, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomView, cxGrid, ACBrBase, ACBrDFe, ACBrNFe, cxButtonEdit,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxScrollbarAnnotations, dxCore;

type
  TfrmNFCompra = class(TdxRibbonForm)
    grdNFCompra: TcxGrid;
    grdNFCompraView: TcxGridDBTableView;
    grdNFCompraLevel1: TcxGridLevel;
    qryNFCompra: TUniQuery;
    dsNFCompra: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxSkinController1: TdxSkinController;
    cxStyleRepository1: TcxStyleRepository;
    Linha2: TcxStyle;
    Linha: TcxStyle;
    dxRibbon1: TdxRibbon;
    tabProdutos: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    grdNFCompraViewnumero: TcxGridDBColumn;
    grdNFCompraViewdata_emissao: TcxGridDBColumn;
    grdNFCompraViewtotal_nota: TcxGridDBColumn;
    grdNFCompraViewchave: TcxGridDBColumn;
    grdNFCompraViewnome: TcxGridDBColumn;
    grdNFCompraViewcodigo: TcxGridDBColumn;
    qryApagaItens: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    qryNFCompracodigo: TIntegerField;
    qryNFCompraide_nnf: TIntegerField;
    qryNFCompraemit_xnome: TStringField;
    qryNFCompraide_dhemi: TDateTimeField;
    qryNFCompratotal_icmstot_vnf: TFloatField;
    qryNFComprainfnfe_chave: TStringField;
    grdNFCompraViewColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdNFCompraViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure qryNFCompraBeforeDelete(DataSet: TDataSet);
    procedure grdNFCompraViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFCompra: TfrmNFCompra;

implementation

uses
  uDM, uCadastroNFEntrada;

{$R *.dfm}

{ TForm1 }

procedure TfrmNFCompra.dxBarLargeButton1Click(Sender: TObject);
begin
  frmCadastroNFEntrada.Novo := True;
  frmCadastroNFEntrada.tblNFCompra.Close();
  frmCadastroNFEntrada.tblNFCompra.Open();
  frmCadastroNFEntrada.tblNFCompra.Append();
  frmCadastroNFEntrada.btnExcluir.Enabled := False;
  frmCadastroNFEntrada.edtFornecedor.Text := '';
  frmCadastroNFEntrada.ShowModal();
  qryNFCompra.Refresh();
end;

procedure TfrmNFCompra.dxBarLargeButton2Click(Sender: TObject);
begin
  qryNFCompra.Close();
  Close();
end;

procedure TfrmNFCompra.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmNFCompra.FormShow(Sender: TObject);
begin
  DM.AtualizaTabela('commerce', 'nfentrada', qryNFCompra);
  qryNFCompra.Open();
end;

procedure TfrmNFCompra.grdNFCompraViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item = grdNFCompraViewColumn1 then
    grdNFCompraView.DataController.DeleteFocused();
end;

procedure TfrmNFCompra.grdNFCompraViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  frmCadastroNFEntrada.Novo := False;
  frmCadastroNFEntrada.tblNFCompra.Close();
  frmCadastroNFEntrada.tblNFCompra.Open();
  frmCadastroNFEntrada.tblNFCompra.Locate('infnfe_chave', grdNFCompraView.Controller.SelectedRows[0].Values[4], []);
  frmCadastroNFEntrada.tblNFCompra.Edit();
  frmCadastroNFEntrada.btnExcluir.Enabled := True;
  frmCadastroNFEntrada.edtFornecedor.Text := grdNFCompraView.Controller.SelectedRows[0].Values[2];
  frmCadastroNFEntrada.ShowModal();
  qryNFCompra.Refresh();
end;

procedure TfrmNFCompra.qryNFCompraBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Excluir a nota implicará em remoção do histórico, porém não alterará o estoque.' + sLineBreak + 'Você tem certeza que deseja excluir a nota ' + qryNFCompraide_nnf.AsString + '?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    qryApagaItens.ParamByName('pCODNOTA').AsString := qryNFComprainfnfe_chave.AsString;
    qryApagaItens.ExecSQL();
  end
  else
  begin
    Abort;
    Exit;
  end;
end;

end.

