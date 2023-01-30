object frmMenuVendas: TfrmMenuVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 713
  ClientWidth = 1259
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1259
    Height = 34
    ApplicationButton.Visible = False
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeAccent = rcsaOrange
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Visible = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 690
    Width = 1259
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object grdPedidos: TcxGrid
    Left = 0
    Top = 163
    Width = 1259
    Height = 527
    Align = alClient
    TabOrder = 2
    LookAndFeel.SkinName = 'MySkin_Office2019Colorful'
    object grdPedidosView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsVendas
      DataController.KeyFieldNames = 'codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ColumnAutoWidth = True
      OptionsView.DataRowHeight = 50
      OptionsView.GroupByBox = False
      OptionsView.RowSeparatorWidth = 2
      object grdPedidosViewcodigo: TcxGridDBColumn
        DataBinding.FieldName = 'codigo'
      end
      object grdPedidosViewdata: TcxGridDBColumn
        DataBinding.FieldName = 'data'
      end
      object grdPedidosViewsubtotal: TcxGridDBColumn
        DataBinding.FieldName = 'subtotal'
      end
      object grdPedidosViewdesconto: TcxGridDBColumn
        DataBinding.FieldName = 'desconto'
      end
      object grdPedidosViewacrescimo: TcxGridDBColumn
        DataBinding.FieldName = 'acrescimo'
      end
      object grdPedidosViewtotal: TcxGridDBColumn
        DataBinding.FieldName = 'total'
      end
      object grdPedidosViewsituacao: TcxGridDBColumn
        DataBinding.FieldName = 'situacao'
      end
    end
    object grdPedidosLevel1: TcxGridLevel
      GridView = grdPedidosView
    end
  end
  object edtDatas: TcxDateNavigator
    Left = 0
    Top = 34
    Width = 1259
    Height = 129
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    SelectPeriod = False
    ShowDatesContainingEventsInBold = False
    TabOrder = 3
    OnSelectionChanged = edtDatasSelectionChanged
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 568
    Top = 8
    PixelsPerInch = 96
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 536
    Top = 8
  end
  object qryVendas: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.vendas'
      'WHERE'
      '  EXTRACT(MONTH FROM data) = :pMES AND'
      '  EXTRACT(YEAR FROM data) = :pANO')
    Left = 488
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pMES'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pANO'
        Value = nil
      end>
    object qryVendascodigo: TStringField
      FieldName = 'codigo'
      Size = 10
    end
    object qryVendascodcaixa: TStringField
      FieldName = 'codcaixa'
      Size = 6
    end
    object qryVendascodvendedor: TStringField
      FieldName = 'codvendedor'
      Size = 6
    end
    object qryVendasdata: TDateField
      FieldName = 'data'
    end
    object qryVendascodcliente: TStringField
      FieldName = 'codcliente'
      Size = 6
    end
    object qryVendasobs: TStringField
      FieldName = 'obs'
      Size = 50
    end
    object qryVendasmeio_dinheiro: TFloatField
      FieldName = 'meio_dinheiro'
    end
    object qryVendasmeio_chequeav: TFloatField
      FieldName = 'meio_chequeav'
    end
    object qryVendasmeio_chequeap: TFloatField
      FieldName = 'meio_chequeap'
    end
    object qryVendasmeio_cartaocred: TFloatField
      FieldName = 'meio_cartaocred'
    end
    object qryVendasmeio_cartaodeb: TFloatField
      FieldName = 'meio_cartaodeb'
    end
    object qryVendasmeio_crediario: TFloatField
      FieldName = 'meio_crediario'
    end
    object qryVendassubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object qryVendasdesconto: TFloatField
      FieldName = 'desconto'
    end
    object qryVendasacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object qryVendastotal: TFloatField
      FieldName = 'total'
    end
    object qryVendascupom_fiscal: TIntegerField
      FieldName = 'cupom_fiscal'
    end
    object qryVendasretirado: TStringField
      FieldName = 'retirado'
      Size = 50
    end
    object qryVendasmeio_convenio: TFloatField
      FieldName = 'meio_convenio'
    end
    object qryVendasp5: TFloatField
      FieldName = 'p5'
    end
    object qryVendasp3: TFloatField
      FieldName = 'p3'
    end
    object qryVendasmeio_financeira: TFloatField
      FieldName = 'meio_financeira'
    end
    object qryVendascod_financeira: TStringField
      FieldName = 'cod_financeira'
      Size = 10
    end
    object qryVendascod_financeira_lancto: TStringField
      FieldName = 'cod_financeira_lancto'
      Size = 10
    end
    object qryVendascod_financeira_lacto: TStringField
      FieldName = 'cod_financeira_lacto'
      Size = 10
    end
    object qryVendascodconvenio: TStringField
      FieldName = 'codconvenio'
      Size = 10
    end
    object qryVendassituacao: TIntegerField
      FieldName = 'situacao'
    end
    object qryVendascodtransportador: TStringField
      FieldName = 'codtransportador'
      Size = 10
    end
    object qryVendascodveiculo: TStringField
      FieldName = 'codveiculo'
      Size = 10
    end
    object qryVendasfrete_valor: TFloatField
      FieldName = 'frete_valor'
    end
    object qryVendasfrete_obs: TStringField
      FieldName = 'frete_obs'
      Size = 80
    end
    object qryVendasfrete_lancar: TIntegerField
      FieldName = 'frete_lancar'
    end
    object qryVendasecf_serial: TStringField
      FieldName = 'ecf_serial'
      Size = 30
    end
    object qryVendascodnfsaida: TStringField
      FieldName = 'codnfsaida'
      Size = 10
    end
    object qryVendasatacado_varejo: TSmallintField
      FieldName = 'atacado_varejo'
    end
    object qryVendasnrvenda: TStringField
      FieldName = 'nrvenda'
      Size = 6
    end
    object qryVendasfiltro: TIntegerField
      FieldName = 'filtro'
    end
    object qryVendascontingencia: TStringField
      FieldName = 'contingencia'
      Size = 1
    end
    object qryVendasgerado_nfce: TStringField
      FieldName = 'gerado_nfce'
      Size = 1
    end
    object qryVendashora: TTimeField
      FieldName = 'hora'
    end
    object qryVendaschave: TStringField
      FieldName = 'chave'
      Size = 100
    end
    object qryVendasxml_cfe: TStringField
      FieldName = 'xml_cfe'
      Size = 240
    end
    object qryVendasxml_cfe_cancelado: TStringField
      FieldName = 'xml_cfe_cancelado'
      Size = 240
    end
    object qryVendaschave_cancelado: TStringField
      FieldName = 'chave_cancelado'
      Size = 100
    end
    object qryVendasnumero_cupom_fiscal_cancel: TStringField
      FieldName = 'numero_cupom_fiscal_cancel'
    end
    object qryVendastroco: TFloatField
      FieldName = 'troco'
    end
    object qryVendastotal_pago: TFloatField
      FieldName = 'total_pago'
    end
    object qryVendasgerou_sat: TStringField
      FieldName = 'gerou_sat'
      Size = 1
    end
    object qryVendasnumero_sat: TIntegerField
      FieldName = 'numero_sat'
    end
    object qryVendasecf: TStringField
      FieldName = 'ecf'
      Size = 1
    end
    object qryVendasobs1: TStringField
      FieldName = 'obs1'
      Size = 80
    end
    object qryVendasobs2: TStringField
      FieldName = 'obs2'
      Size = 80
    end
    object qryVendasobs3: TStringField
      FieldName = 'obs3'
      Size = 80
    end
    object qryVendasobs4: TStringField
      FieldName = 'obs4'
      Size = 80
    end
    object qryVendasatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryVendasnumero_cupom_fiscal: TStringField
      FieldName = 'numero_cupom_fiscal'
    end
  end
  object dsVendas: TDataSource
    DataSet = qryVendas
    Left = 544
    Top = 480
  end
end
