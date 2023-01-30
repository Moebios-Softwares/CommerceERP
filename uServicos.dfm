object frmServicos: TfrmServicos
  Left = 0
  Top = 0
  Caption = 'Servi'#231'os'
  ClientHeight = 662
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object grdProdutos: TcxGrid
    Left = 0
    Top = 132
    Width = 933
    Height = 507
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    object grdProdutosView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Pesquise por aqui...'
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsServicos
      DataController.KeyFieldNames = 'codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem produtos cadastrados'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.Content = Linha
      Styles.ContentEven = Linha2
      Styles.ContentOdd = Linha
      object grdProdutosViewcodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        BestFitMaxWidth = 65
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object grdProdutosViewproduto: TcxGridDBColumn
        Caption = 'Produto'
        DataBinding.FieldName = 'produto'
        Width = 494
      end
      object grdProdutosViewprecocusto: TcxGridDBColumn
        Caption = 'Custo'
        DataBinding.FieldName = 'precocusto'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 125
      end
      object grdProdutosViewprecovenda: TcxGridDBColumn
        Caption = 'Venda'
        DataBinding.FieldName = 'precovenda'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 101
      end
      object grdProdutosViewestoque: TcxGridDBColumn
        Caption = 'Estoque'
        DataBinding.FieldName = 'estoque'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 93
      end
      object grdProdutosViewestoqueminimo: TcxGridDBColumn
        Caption = 'Estoque M'#237'nimo'
        DataBinding.FieldName = 'estoqueminimo'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 83
      end
      object grdProdutosViewncm: TcxGridDBColumn
        Caption = 'NCM'
        DataBinding.FieldName = 'ncm'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.EditMask = '0000.00.00'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 115
      end
    end
    object grdProdutosLevel1: TcxGridLevel
      GridView = grdProdutosView
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 933
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
      Caption = 'Servi'#231'os'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 639
    Width = 933
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = -162
    ExplicitTop = 638
    ExplicitWidth = 1095
  end
  object qryServicos: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.servicos'
      'ORDER BY'
      '  servico')
    Left = 688
    Top = 8
  end
  object dsServicos: TDataSource
    DataSet = qryServicos
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
      Caption = 'Adicionar Servi'#231'o'
      Category = 0
      Hint = 'Adicionar Servi'#231'o'
      Visible = ivAlways
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
end
