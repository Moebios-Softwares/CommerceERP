object frmFuncionarios: TfrmFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcion'#225'rios'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
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
    TabOrder = 0
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
  object grdPessoas: TcxGrid
    Left = 0
    Top = 132
    Width = 1350
    Height = 574
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    object grdPessoasView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Pesquise por aqui...'
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = grdPessoasViewCellDblClick
      DataController.DataSource = dsPessoas
      DataController.KeyFieldNames = 'codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem pessoas cadastradas'
      OptionsView.ColumnAutoWidth = True
      Styles.Content = Linha
      Styles.ContentEven = Linha2
      Styles.ContentOdd = Linha
      object grdPessoasViewcodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'codigo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 76
      end
      object grdPessoasViewnome: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'nome'
        Width = 276
      end
      object grdPessoasViewendereco: TcxGridDBColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'endereco'
        Width = 276
      end
      object grdPessoasViewbairro: TcxGridDBColumn
        Caption = 'Bairro'
        DataBinding.FieldName = 'bairro'
        Width = 106
      end
      object grdPessoasViewcidade: TcxGridDBColumn
        Caption = 'Cidade'
        DataBinding.FieldName = 'cidade'
        Width = 138
      end
      object grdPessoasViewuf: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'uf'
        Width = 28
      end
      object grdPessoasViewcep: TcxGridDBColumn
        Caption = 'CEP'
        DataBinding.FieldName = 'cep'
        Width = 37
      end
      object grdPessoasViewtelefone: TcxGridDBColumn
        Caption = 'Telefone'
        DataBinding.FieldName = 'telefone'
        Width = 68
      end
      object grdPessoasViewcelular: TcxGridDBColumn
        Caption = 'Celular'
        DataBinding.FieldName = 'celular'
        Width = 72
      end
      object grdPessoasViewemail: TcxGridDBColumn
        Caption = 'E-mail'
        DataBinding.FieldName = 'email'
        Width = 170
      end
      object grdPessoasViewusuario: TcxGridDBColumn
        Caption = 'Usu'#225'rio'
        DataBinding.FieldName = 'usuario'
        Width = 101
      end
    end
    object grdPessoasLevel1: TcxGridLevel
      GridView = grdPessoasView
    end
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
      Caption = 'Adicionar Funcion'#225'rio'
      Category = 0
      Hint = 'Adicionar Funcion'#225'rio'
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
  object qryFuncionarios: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.funcionarios'
      'ORDER BY'
      '  nome')
    Left = 524
    Top = 56
    object qryFuncionarioscodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object qryFuncionariosnome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object qryFuncionariosendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object qryFuncionariosbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qryFuncionarioscidade: TStringField
      FieldName = 'cidade'
      Size = 40
    end
    object qryFuncionariosuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object qryFuncionarioscep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object qryFuncionariostelefone: TStringField
      FieldName = 'telefone'
    end
    object qryFuncionarioscelular: TStringField
      FieldName = 'celular'
    end
    object qryFuncionariosemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object qryFuncionarioscpf: TStringField
      FieldName = 'cpf'
      Size = 15
    end
    object qryFuncionariosrg: TStringField
      FieldName = 'rg'
      Size = 25
    end
    object qryFuncionariosctps: TStringField
      FieldName = 'ctps'
      Size = 25
    end
    object qryFuncionariosfuncao: TStringField
      FieldName = 'funcao'
      Size = 30
    end
    object qryFuncionariosdata_admissao: TDateField
      FieldName = 'data_admissao'
    end
    object qryFuncionariosdata_demissao: TDateField
      FieldName = 'data_demissao'
    end
    object qryFuncionariossituacao: TIntegerField
      FieldName = 'situacao'
    end
    object qryFuncionariossalario: TFloatField
      FieldName = 'salario'
    end
    object qryFuncionarioscomissao: TFloatField
      FieldName = 'comissao'
    end
    object qryFuncionariosobs1: TStringField
      FieldName = 'obs1'
      Size = 80
    end
    object qryFuncionariosobs2: TStringField
      FieldName = 'obs2'
      Size = 80
    end
    object qryFuncionariosobs3: TStringField
      FieldName = 'obs3'
      Size = 80
    end
    object qryFuncionariosnascimento: TDateField
      FieldName = 'nascimento'
    end
    object qryFuncionariosf_caixa: TIntegerField
      FieldName = 'f_caixa'
    end
    object qryFuncionariosf_vendedor: TIntegerField
      FieldName = 'f_vendedor'
    end
    object qryFuncionariosf_tecnico: TIntegerField
      FieldName = 'f_tecnico'
    end
    object qryFuncionariosnumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object qryFuncionariossenha: TStringField
      FieldName = 'senha'
      Size = 200
    end
    object qryFuncionariosativa: TStringField
      FieldName = 'ativa'
      Size = 10
    end
    object qryFuncionariosaprova_desconto: TStringField
      FieldName = 'aprova_desconto'
      Size = 1
    end
    object qryFuncionariosabrir_caixa: TStringField
      FieldName = 'abrir_caixa'
      Size = 1
    end
    object qryFuncionariosfecha_caixa: TStringField
      FieldName = 'fecha_caixa'
      Size = 1
    end
    object qryFuncionariosconfiguracoes: TStringField
      FieldName = 'configuracoes'
      Size = 1
    end
    object qryFuncionarioscancelar_venda: TStringField
      FieldName = 'cancelar_venda'
      Size = 1
    end
    object qryFuncionarioscancelar_item: TStringField
      FieldName = 'cancelar_item'
      Size = 1
    end
    object qryFuncionariosatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryFuncionariosidonline: TIntegerField
      FieldName = 'idonline'
    end
    object qryFuncionariosusuario: TStringField
      FieldName = 'usuario'
      Size = 80
    end
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
  object dsPessoas: TDataSource
    DataSet = qryFuncionarios
    Left = 468
    Top = 56
  end
end
