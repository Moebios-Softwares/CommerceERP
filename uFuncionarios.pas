unit uFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  cxBarEditItem, dxSkinsCore, dxStatusBar, dxRibbonStatusBar,
  cxTextEdit, dxRibbonCustomizationForm, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, dxSkinsForm, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxScrollbarAnnotations;

type
  TfrmFuncionarios = class(TdxRibbonForm)
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
    dxRibbon1: TdxRibbon;
    tabProdutos: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    grdPessoas: TcxGrid;
    grdPessoasView: TcxGridDBTableView;
    grdPessoasLevel1: TcxGridLevel;
    qryFuncionarios: TUniQuery;
    cxStyleRepository1: TcxStyleRepository;
    Linha2: TcxStyle;
    Linha: TcxStyle;
    qryFuncionarioscodigo: TStringField;
    qryFuncionariosnome: TStringField;
    qryFuncionariosendereco: TStringField;
    qryFuncionariosbairro: TStringField;
    qryFuncionarioscidade: TStringField;
    qryFuncionariosuf: TStringField;
    qryFuncionarioscep: TStringField;
    qryFuncionariostelefone: TStringField;
    qryFuncionarioscelular: TStringField;
    qryFuncionariosemail: TStringField;
    qryFuncionarioscpf: TStringField;
    qryFuncionariosrg: TStringField;
    qryFuncionariosctps: TStringField;
    qryFuncionariosfuncao: TStringField;
    qryFuncionariosdata_admissao: TDateField;
    qryFuncionariosdata_demissao: TDateField;
    qryFuncionariossituacao: TIntegerField;
    qryFuncionariossalario: TFloatField;
    qryFuncionarioscomissao: TFloatField;
    qryFuncionariosobs1: TStringField;
    qryFuncionariosobs2: TStringField;
    qryFuncionariosobs3: TStringField;
    qryFuncionariosnascimento: TDateField;
    qryFuncionariosf_caixa: TIntegerField;
    qryFuncionariosf_vendedor: TIntegerField;
    qryFuncionariosf_tecnico: TIntegerField;
    qryFuncionariosnumero: TStringField;
    qryFuncionariossenha: TStringField;
    qryFuncionariosativa: TStringField;
    qryFuncionariosaprova_desconto: TStringField;
    qryFuncionariosabrir_caixa: TStringField;
    qryFuncionariosfecha_caixa: TStringField;
    qryFuncionariosconfiguracoes: TStringField;
    qryFuncionarioscancelar_venda: TStringField;
    qryFuncionarioscancelar_item: TStringField;
    qryFuncionariosatb: TStringField;
    qryFuncionariosidonline: TIntegerField;
    qryFuncionariosusuario: TStringField;
    dsPessoas: TDataSource;
    grdPessoasViewcodigo: TcxGridDBColumn;
    grdPessoasViewnome: TcxGridDBColumn;
    grdPessoasViewendereco: TcxGridDBColumn;
    grdPessoasViewbairro: TcxGridDBColumn;
    grdPessoasViewcidade: TcxGridDBColumn;
    grdPessoasViewuf: TcxGridDBColumn;
    grdPessoasViewcep: TcxGridDBColumn;
    grdPessoasViewtelefone: TcxGridDBColumn;
    grdPessoasViewcelular: TcxGridDBColumn;
    grdPessoasViewemail: TcxGridDBColumn;
    grdPessoasViewusuario: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure grdPessoasViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

uses
  uCadastroFuncionario;

{$R *.dfm}

{ TForm1 }

procedure TfrmFuncionarios.dxBarLargeButton1Click(Sender: TObject);
begin
  frmCadastroFuncionarios.Novo := True;
  frmCadastroFuncionarios.tblFuncionarios.Close();
  frmCadastroFuncionarios.tblFuncionarios.Open();
  frmCadastroFuncionarios.tblFuncionarios.Append();
  frmCadastroFuncionarios.btnExcluir.Enabled := False;
  frmCadastroFuncionarios.ShowModal();
  qryFuncionarios.Refresh();
end;

procedure TfrmFuncionarios.dxBarLargeButton2Click(Sender: TObject);
begin
  Close();
end;

procedure TfrmFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryFuncionarios.Close();
end;

procedure TfrmFuncionarios.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TfrmFuncionarios.FormShow(Sender: TObject);
begin
  qryFuncionarios.Open();
end;

procedure TfrmFuncionarios.grdPessoasViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  frmCadastroFuncionarios.Novo := False;
  frmCadastroFuncionarios.tblFuncionarios.Close();
  frmCadastroFuncionarios.tblFuncionarios.Open();
  frmCadastroFuncionarios.tblFuncionarios.Locate('CODIGO', grdPessoasView.Controller.SelectedRows[0].Values[0], []);
  frmCadastroFuncionarios.tblFuncionarios.Edit();
  frmCadastroFuncionarios.btnExcluir.Enabled := True;
  frmCadastroFuncionarios.ShowModal();
  qryFuncionarios.Refresh();
end;

end.

