object frmPessoas: TfrmPessoas
  Left = 0
  Top = 0
  Caption = 'Cadastros de Pessoas'
  ClientHeight = 729
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
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
        BestFitMaxWidth = 65
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object grdPessoasViewproduto: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'nome'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 184
      end
      object grdPessoasViewendereco: TcxGridDBColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'endereco'
        Width = 242
      end
      object grdPessoasViewbairro: TcxGridDBColumn
        Caption = 'Bairro'
        DataBinding.FieldName = 'bairro'
        Width = 90
      end
      object grdPessoasViewcidade: TcxGridDBColumn
        Caption = 'Cidade'
        DataBinding.FieldName = 'cidade'
        Width = 121
      end
      object grdPessoasViewuf: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'uf'
        Width = 42
      end
      object grdPessoasViewtelefone1: TcxGridDBColumn
        Caption = 'Telefone'
        DataBinding.FieldName = 'telefone1'
        Width = 58
      end
      object grdPessoasViewemail: TcxGridDBColumn
        Caption = 'E-mail'
        DataBinding.FieldName = 'email'
        Width = 145
      end
      object grdPessoasViewrg: TcxGridDBColumn
        Caption = 'RG/IE'
        DataBinding.FieldName = 'rg'
        Width = 72
      end
      object grdPessoasViewcpf: TcxGridDBColumn
        Caption = 'CPF/CNPJ'
        DataBinding.FieldName = 'cpf'
        Width = 68
      end
      object grdPessoasViewtipopessoa: TcxGridDBColumn
        Caption = 'Tipo de Pessoa'
        DataBinding.FieldName = 'tipopessoa'
        Visible = False
        GroupIndex = 0
      end
    end
    object grdPessoasLevel1: TcxGridLevel
      GridView = grdPessoasView
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
      FloatClientWidth = 0
      FloatClientHeight = 0
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
      Caption = 'Adicionar Pessoa'
      Category = 0
      Hint = 'Adicionar Pessoa'
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
  object dsPessoas: TDataSource
    Left = 468
    Top = 56
  end
  object qryPessoas: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.pessoas'
      'ORDER BY'
      '  nome')
    Left = 524
    Top = 56
    object qryPessoascodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object qryPessoasnome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object qryPessoasendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object qryPessoasbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qryPessoascidade: TStringField
      FieldName = 'cidade'
      Size = 40
    end
    object qryPessoasuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object qryPessoascep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object qryPessoascomplemento: TStringField
      FieldName = 'complemento'
      Size = 80
    end
    object qryPessoastelefone1: TStringField
      FieldName = 'telefone1'
    end
    object qryPessoasemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object qryPessoasrg: TStringField
      FieldName = 'rg'
      Size = 25
    end
    object qryPessoascpf: TStringField
      FieldName = 'cpf'
      Size = 18
    end
    object qryPessoasfiliacao: TStringField
      FieldName = 'filiacao'
      Size = 80
    end
    object qryPessoasestadocivil: TStringField
      FieldName = 'estadocivil'
      Size = 15
    end
    object qryPessoasconjuge: TStringField
      FieldName = 'conjuge'
      Size = 60
    end
    object qryPessoasprofissao: TStringField
      FieldName = 'profissao'
      Size = 30
    end
    object qryPessoasempresa: TStringField
      FieldName = 'empresa'
      Size = 40
    end
    object qryPessoasrenda: TFloatField
      FieldName = 'renda'
    end
    object qryPessoaslimite: TFloatField
      FieldName = 'limite'
    end
    object qryPessoasref1: TStringField
      FieldName = 'ref1'
      Size = 50
    end
    object qryPessoasref2: TStringField
      FieldName = 'ref2'
      Size = 50
    end
    object qryPessoascodvendedor: TStringField
      FieldName = 'codvendedor'
      Size = 6
    end
    object qryPessoasdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object qryPessoasdata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object qryPessoasobs1: TStringField
      FieldName = 'obs1'
      Size = 80
    end
    object qryPessoasobs2: TStringField
      FieldName = 'obs2'
      Size = 80
    end
    object qryPessoasobs3: TStringField
      FieldName = 'obs3'
      Size = 80
    end
    object qryPessoasobs4: TStringField
      FieldName = 'obs4'
      Size = 80
    end
    object qryPessoasobs5: TStringField
      FieldName = 'obs5'
      Size = 80
    end
    object qryPessoasobs6: TStringField
      FieldName = 'obs6'
      Size = 80
    end
    object qryPessoasnascimento: TStringField
      FieldName = 'nascimento'
      Size = 10
    end
    object qryPessoascodregiao: TStringField
      FieldName = 'codregiao'
      Size = 6
    end
    object qryPessoascodconvenio: TStringField
      FieldName = 'codconvenio'
      Size = 6
    end
    object qryPessoascodusuario: TStringField
      FieldName = 'codusuario'
      Size = 6
    end
    object qryPessoasnumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object qryPessoasrg_orgao: TStringField
      FieldName = 'rg_orgao'
      Size = 5
    end
    object qryPessoasrg_estado: TStringField
      FieldName = 'rg_estado'
      Size = 2
    end
    object qryPessoasrg_emissao: TDateField
      FieldName = 'rg_emissao'
    end
    object qryPessoassexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object qryPessoasprevisao: TDateField
      FieldName = 'previsao'
    end
    object qryPessoascnae: TStringField
      FieldName = 'cnae'
      Size = 10
    end
    object qryPessoascod_municipio_ibge: TStringField
      FieldName = 'cod_municipio_ibge'
      Size = 10
    end
    object qryPessoasibge: TStringField
      FieldName = 'ibge'
      Size = 5
    end
    object qryPessoastamanho_calca: TStringField
      FieldName = 'tamanho_calca'
      Size = 5
    end
    object qryPessoastamanho_blusa: TStringField
      FieldName = 'tamanho_blusa'
      Size = 5
    end
    object qryPessoastamanho_sapato: TStringField
      FieldName = 'tamanho_sapato'
      Size = 5
    end
    object qryPessoascorresp_endereco: TStringField
      FieldName = 'corresp_endereco'
      Size = 80
    end
    object qryPessoascorresp_bairro: TStringField
      FieldName = 'corresp_bairro'
      Size = 30
    end
    object qryPessoascorresp_cidade: TStringField
      FieldName = 'corresp_cidade'
      Size = 40
    end
    object qryPessoascorresp_uf: TStringField
      FieldName = 'corresp_uf'
      Size = 2
    end
    object qryPessoascorresp_cep: TStringField
      FieldName = 'corresp_cep'
      Size = 10
    end
    object qryPessoascorresp_complemento: TStringField
      FieldName = 'corresp_complemento'
      Size = 40
    end
    object qryPessoasrg_produtor: TStringField
      FieldName = 'rg_produtor'
      Size = 30
    end
    object qryPessoasresp1_nome: TStringField
      FieldName = 'resp1_nome'
      Size = 80
    end
    object qryPessoasresp1_cpf: TStringField
      FieldName = 'resp1_cpf'
      Size = 25
    end
    object qryPessoasresp1_rg: TStringField
      FieldName = 'resp1_rg'
      Size = 25
    end
    object qryPessoasresp1_profissao: TStringField
      FieldName = 'resp1_profissao'
      Size = 50
    end
    object qryPessoasresp1_estado_civil: TStringField
      FieldName = 'resp1_estado_civil'
      Size = 30
    end
    object qryPessoasresp1_endereco: TStringField
      FieldName = 'resp1_endereco'
      Size = 80
    end
    object qryPessoasresp1_bairro: TStringField
      FieldName = 'resp1_bairro'
      Size = 40
    end
    object qryPessoasresp1_cidade: TStringField
      FieldName = 'resp1_cidade'
      Size = 40
    end
    object qryPessoasresp1_uf: TStringField
      FieldName = 'resp1_uf'
      Size = 2
    end
    object qryPessoasresp1_cep: TStringField
      FieldName = 'resp1_cep'
      Size = 15
    end
    object qryPessoasresp2_nome: TStringField
      FieldName = 'resp2_nome'
      Size = 80
    end
    object qryPessoasresp2_cpf: TStringField
      FieldName = 'resp2_cpf'
      Size = 25
    end
    object qryPessoasresp2_rg: TStringField
      FieldName = 'resp2_rg'
      Size = 25
    end
    object qryPessoasresp2_profissao: TStringField
      FieldName = 'resp2_profissao'
      Size = 50
    end
    object qryPessoasresp2_estado_civil: TStringField
      FieldName = 'resp2_estado_civil'
      Size = 30
    end
    object qryPessoasresp2_endereco: TStringField
      FieldName = 'resp2_endereco'
      Size = 80
    end
    object qryPessoasresp2_bairro: TStringField
      FieldName = 'resp2_bairro'
      Size = 40
    end
    object qryPessoasresp2_cidade: TStringField
      FieldName = 'resp2_cidade'
      Size = 40
    end
    object qryPessoasresp2_uf: TStringField
      FieldName = 'resp2_uf'
      Size = 2
    end
    object qryPessoasresp2_cep: TStringField
      FieldName = 'resp2_cep'
      Size = 15
    end
    object qryPessoasfoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object qryPessoascondpgto: TStringField
      FieldName = 'condpgto'
      Size = 100
    end
    object qryPessoascpais: TStringField
      FieldName = 'cpais'
      Size = 4
    end
    object qryPessoasdpais: TStringField
      FieldName = 'dpais'
      Size = 100
    end
    object qryPessoastipo_ie: TStringField
      FieldName = 'tipo_ie'
    end
    object qryPessoasconsumidor_final: TStringField
      FieldName = 'consumidor_final'
      Size = 1
    end
    object qryPessoasinstrucoes1: TStringField
      FieldName = 'instrucoes1'
      Size = 80
    end
    object qryPessoasinstrucoes2: TStringField
      FieldName = 'instrucoes2'
      Size = 80
    end
    object qryPessoasidonline: TIntegerField
      FieldName = 'idonline'
    end
    object qryPessoasatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryPessoastipopessoa: TStringField
      FieldName = 'tipopessoa'
      Size = 200
    end
    object qryPessoasresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 80
    end
    object qryPessoassimples: TBooleanField
      FieldName = 'simples'
    end
    object qryPessoassimei: TBooleanField
      FieldName = 'simei'
    end
    object qryPessoassintegra: TBooleanField
      FieldName = 'sintegra'
    end
    object qryPessoasjuridica: TBooleanField
      FieldName = 'juridica'
    end
    object qryPessoassintegrainativo: TBooleanField
      FieldName = 'sintegrainativo'
    end
  end
end
