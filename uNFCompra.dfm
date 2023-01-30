object frmNFCompra: TfrmNFCompra
  Left = 0
  Top = 0
  Caption = 'Notas Fiscais de Entrada'
  ClientHeight = 729
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object grdNFCompra: TcxGrid
    Left = 0
    Top = 132
    Width = 1350
    Height = 574
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object grdNFCompraView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Pesquise por aqui...'
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellClick = grdNFCompraViewCellClick
      OnCellDblClick = grdNFCompraViewCellDblClick
      DataController.DataSource = dsNFCompra
      DataController.KeyFieldNames = 'codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.DeletingConfirmation = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem produtos cadastrados'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Content = Linha
      Styles.ContentEven = Linha2
      Styles.ContentOdd = Linha
      object grdNFCompraViewcodigo: TcxGridDBColumn
        DataBinding.FieldName = 'codigo'
        Visible = False
      end
      object grdNFCompraViewnumero: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'ide_nnf'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 98
      end
      object grdNFCompraViewnome: TcxGridDBColumn
        Caption = 'Emitente'
        DataBinding.FieldName = 'emit_xnome'
        PropertiesClassName = 'TcxTextEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 548
      end
      object grdNFCompraViewdata_emissao: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'ide_dhemi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 102
      end
      object grdNFCompraViewtotal_nota: TcxGridDBColumn
        Caption = 'Valor da Nota'
        DataBinding.FieldName = 'total_icmstot_vnf'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 135
      end
      object grdNFCompraViewchave: TcxGridDBColumn
        Caption = 'Chave'
        DataBinding.FieldName = 'infnfe_chave'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 361
      end
      object grdNFCompraViewColumn1: TcxGridDBColumn
        Caption = 'A'#231#245'es'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Buttons = <
          item
            Caption = 'Excluir'
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
              662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
              6C7573747261746F722032302E312E302C20535647204578706F727420506C75
              672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
              2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
              A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
              6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
              2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
              20793D22307078220D0A092076696577426F783D223020302033322033322220
              7374796C653D22656E61626C652D6261636B67726F756E643A6E657720302030
              2033322033323B2220786D6C3A73706163653D227072657365727665223E0D0A
              3C7374796C6520747970653D22746578742F637373223E0D0A092E5768697465
              7B66696C6C3A234646464646463B7D0D0A092E5265647B66696C6C3A23443131
              4331433B7D0D0A3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B9
              5F32223E0D0A093C7061746820636C6173733D225265642220643D224D31362C
              3263372E372C302C31342C362E332C31342C313463302C372E372D362E332C31
              342D31342C313453322C32332E372C322C313643322C382E332C382E332C322C
              31362C327A222F3E0D0A093C7061746820636C6173733D225768697465222064
              3D224D32342C32326C2D322C326C2D362D366C2D362C366C2D322D326C362D36
              6C2D362D366C322D326C362C366C362D366C322C326C2D362C364C32342C3232
              7A222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsOnly
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 104
      end
    end
    object grdNFCompraLevel1: TcxGridLevel
      GridView = grdNFCompraView
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1350
    Height = 132
    ApplicationButton.Visible = False
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeAccent = rcsaOrange
    ColorSchemeName = 'Colorful'
    QuickAccessToolbar.Visible = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object tabProdutos: TdxRibbonTab
      Active = True
      Caption = 'Produtos'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 706
    Width = 1350
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object qryNFCompra: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'Select'
      '  codigo,'
      '  ide_nnf,'
      '  emit_xnome,'
      '  ide_dhemi,'
      '  total_icmstot_vnf,'
      '  infnfe_chave'
      'FROM'
      '  commerce.nfentrada'
      'ORDER BY'
      '  ide_dhemi DESC')
    BeforeDelete = qryNFCompraBeforeDelete
    Left = 688
    Top = 8
    object qryNFCompracodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFCompraide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFCompraemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object qryNFCompraide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object qryNFCompratotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object qryNFComprainfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
  end
  object dsNFCompra: TDataSource
    DataSet = qryNFCompra
    Left = 640
    Top = 8
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
    object dxBarManager1Bar1: TdxBar
      Caption = 'Produtos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 100
      FloatClientHeight = 102
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Adicionar NF'
      Category = 0
      Hint = 'Adicionar NF'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
      HotGlyph.SourceDPI = 120
      HotGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001B744558745469746C65004164643B506C75733B426172
        733B526962626F6E3B9506332F0000004D49444154785EEDD6B10D0020084451
        177429A762BBD3D2460B1273517F71A123AF004291644D1A0000406DA1395900
        000000002C9B9F881D00E0FD2D1875173F8043F4C51002B8EF2D0700A00379E5
        8E847E4EA9750000000049454E44AE426082}
      Width = 100
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Voltar'
      Category = 0
      Hint = 'Voltar'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
        31314331433B7D3C2F7374796C653E0D0A3C672069643D2245786974223E0D0A
        09093C706F6C79676F6E20636C6173733D225265642220706F696E74733D2231
        362C31302032322C31362031362C32322031362C313820322C313820322C3134
        2031362C3134202623393B222F3E0D0A09093C706F6C79676F6E20636C617373
        3D22426C61636B2220706F696E74733D22382C3220382C31322031302C313220
        31302C342032382C342032382C32382031302C32382031302C323020382C3230
        20382C33302033302C33302033302C32202623393B222F3E0D0A093C2F673E0D
        0A3C2F7376673E0D0A}
      Width = 100
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 100
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 100
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 100
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 100
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Width = 100
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 528
    Top = 8
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    Top = 8
    PixelsPerInch = 96
    object Linha2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15724527
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object Linha: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14474460
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
  end
  object qryApagaItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'DELETE'
      'FROM'
      '  commerce.nfentradaitens'
      'WHERE'
      '  infnfe_chave = :pCODNOTA')
    Left = 760
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCODNOTA'
        Value = nil
      end>
    object StringField1: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 80
    end
    object DateField1: TDateField
      FieldName = 'data_emissao'
    end
    object DateField2: TDateField
      FieldName = 'data_lancamento'
    end
    object FloatField1: TFloatField
      FieldName = 'total_nota'
    end
    object StringField3: TStringField
      FieldName = 'chave'
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'codigo'
      Size = 10
    end
  end
end
