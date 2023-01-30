object frmCadastroNFe: TfrmCadastroNFe
  Left = 0
  Top = 0
  Caption = 'Nova Nota Fiscal Eletr'#244'nica'
  ClientHeight = 852
  ClientWidth = 1166
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 132
    Width = 1166
    Height = 697
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object grdProdutos: TcxGrid
      Left = 13
      Top = 438
      Width = 832
      Height = 246
      TabOrder = 32
      LookAndFeel.NativeStyle = False
      object grdProdutosView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = 'Pesquise por aqui...'
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = grdProdutosViewCellClick
        OnCellDblClick = grdProdutosViewCellDblClick
        DataController.DataSource = dsItens
        DataController.KeyFieldNames = 'codigo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        EditForm.ItemHotTrack = True
        EditForm.MasterRowDblClickAction = dcaShowEditForm
        OptionsData.DeletingConfirmation = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'Sem produtos cadastrados'
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdProdutosViewitem: TcxGridDBColumn
          Caption = 'Item da NF'
          DataBinding.FieldName = 'det_nitem'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 68
        end
        object grdProdutosViewcfop: TcxGridDBColumn
          Caption = 'CFOP'
          DataBinding.FieldName = 'det_prod_cfop'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 39
        end
        object grdProdutosViewproduto: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'det_prod_xprod'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 204
        end
        object grdProdutosViewqtde: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'det_prod_qcom'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 78
        end
        object grdProdutosViewprecovenda: TcxGridDBColumn
          Caption = 'Valor Unit'#225'rio'
          DataBinding.FieldName = 'det_prod_vuncom'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 113
        end
        object grdProdutosViewtotal: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'det_prod_vprod'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 54
        end
        object grdProdutosViewcodproduto: TcxGridDBColumn
          DataBinding.FieldName = 'det_prod_cprod'
          Visible = False
        end
        object grdProdutosViewNCM: TcxGridDBColumn
          Caption = 'NCM'
          DataBinding.FieldName = 'det_prod_ncm'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.EditMask = '0000.00.00'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 63
        end
        object grdProdutosViewExcluir: TcxGridDBColumn
          Caption = 'A'#231#245'es'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Buttons = <
            item
              Caption = 'Excluir'
              Default = True
              Glyph.SourceDPI = 96
              Glyph.SourceHeight = 24
              Glyph.SourceWidth = 24
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
          Properties.UseLeftAlignmentOnEditing = False
          Properties.ViewStyle = vsButtonsOnly
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
      end
      object grdProdutosLevel1: TcxGridLevel
        GridView = grdProdutosView
      end
    end
    object edtCFOP: TcxDBLookupComboBox
      Left = 13
      Top = 349
      AutoSize = False
      DataBinding.DataField = 'cad_cfop'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.KeyFieldNames = 'cfop'
      Properties.ListColumns = <
        item
          HeaderAlignment = taCenter
          FieldName = 'cfop'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCFOP
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnChange = edtCFOPPropertiesChange
      Style.HotTrack = False
      TabOrder = 28
      Height = 25
      Width = 108
    end
    object edtNumeroNF: TcxDBSpinEdit
      Left = 13
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'ide_nnf'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.MaxValue = 99999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 0
      OnEnter = edtNumeroNFEnter
      Height = 25
      Width = 115
    end
    object edtSerie: TcxDBSpinEdit
      Left = 136
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'ide_serie'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.ImmediatePost = True
      Properties.MaxValue = 999.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 1
      OnEnter = edtSerieEnter
      Height = 25
      Width = 115
    end
    object edtDataSaida: TcxDBDateEdit
      Left = 1038
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'ide_dhsaient'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.Kind = ckDateTime
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 8
      Height = 25
      Width = 115
    end
    object edtDataEmissao: TcxDBDateEdit
      Left = 915
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'ide_dhemi'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.Kind = ckDateTime
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 7
      Height = 25
      Width = 115
    end
    object lblAplicacao: TcxLabel
      Left = 13
      Top = 405
      Style.HotTrack = False
      Properties.WordWrap = True
      Transparent = True
      Width = 845
    end
    object lblCFOP: TcxLabel
      Left = 129
      Top = 349
      AutoSize = False
      Style.HotTrack = False
      Properties.WordWrap = True
      Transparent = True
      Height = 25
      Width = 1024
    end
    object edtDest: TcxDBLookupComboBox
      Left = 13
      Top = 181
      DataBinding.DataField = 'dest_xnome'
      DataBinding.DataSource = dsNFe
      Properties.KeyFieldNames = 'nome'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsPessoas
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnChange = edtDestPropertiesChange
      Style.HotTrack = False
      TabOrder = 16
      Width = 380
    end
    object edtTransp: TcxDBLookupComboBox
      Left = 13
      Top = 237
      DataBinding.DataField = 'transp_transporta_xnome'
      DataBinding.DataSource = dsNFe
      Properties.KeyFieldNames = 'nome'
      Properties.ListColumns = <
        item
          FieldName = 'nome'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsTransportadoras
      Properties.UseLeftAlignmentOnEditing = False
      Properties.OnChange = edtTranspPropertiesChange
      Style.HotTrack = False
      TabOrder = 19
      Width = 380
    end
    object lblDestEndereco: TcxLabel
      Left = 417
      Top = 185
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 503
      AnchorY = 196
    end
    object lblDestCNPJ: TcxLabel
      Left = 928
      Top = 185
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 225
      AnchorX = 1041
      AnchorY = 196
    end
    object lblTranspCNPJ: TcxLabel
      Left = 928
      Top = 237
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 225
      AnchorX = 1041
      AnchorY = 250
    end
    object lblTranspEndereco: TcxLabel
      Left = 401
      Top = 237
      AutoSize = False
      Style.HotTrack = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 25
      Width = 519
      AnchorY = 250
    end
    object edtFinalidade: TcxComboBox
      Left = 259
      Top = 36
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        ' NFe normal'
        ' NFe complementar'
        ' NFe de ajuste'
        ' Devolu'#231#227'o de Mercadoria')
      Style.HotTrack = False
      TabOrder = 2
      Text = ' NFe normal'
      Width = 114
    end
    object edtMovimento: TcxComboBox
      Left = 524
      Top = 36
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.Items.Strings = (
        'Entrada'
        'Sa'#237'da')
      Properties.OnChange = edtMovimentoPropertiesChange
      Style.HotTrack = False
      TabOrder = 4
      Text = 'Sa'#237'da'
      Height = 25
      Width = 115
    end
    object edtPagamento: TcxComboBox
      Left = 647
      Top = 36
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Pagamento '#224' vista'
        'Pagamento '#224' prazo'
        'Outros')
      Properties.OnChange = edtPagamentoPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Text = 'Pagamento '#224' vista'
      Width = 115
    end
    object lytItens: TdxLayoutControl
      Left = 853
      Top = 438
      Width = 300
      Height = 246
      TabOrder = 33
      object edtProduto: TcxDBLookupComboBox
        Left = 129
        Top = 89
        DataBinding.DataField = 'det_prod_xprod'
        DataBinding.DataSource = dstblItens
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'produto'
        Properties.ListColumns = <
          item
            FieldName = 'produto'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsProdutos
        Properties.OnChange = edtProdutoPropertiesChange
        Style.HotTrack = False
        TabOrder = 2
        Width = 141
      end
      object edtQuantidade: TcxDBCurrencyEdit
        Left = 129
        Top = 122
        DataBinding.DataField = 'det_prod_qcom'
        DataBinding.DataSource = dstblItens
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = edtQuantidadePropertiesChange
        Style.HotTrack = False
        TabOrder = 3
        Width = 141
      end
      object edtValor: TcxDBCurrencyEdit
        Left = 129
        Top = 155
        DataBinding.DataField = 'det_prod_vuncom'
        DataBinding.DataSource = dstblItens
        Properties.Alignment.Horz = taCenter
        Properties.UseLeftAlignmentOnEditing = False
        Properties.OnChange = edtValorPropertiesChange
        Style.HotTrack = False
        TabOrder = 4
        Width = 141
      end
      object btnAdicionarItem: TcxButton
        Left = 13
        Top = 254
        Width = 257
        Height = 36
        Caption = 'Adicionar'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 24
        OptionsImage.Glyph.SourceWidth = 24
        OptionsImage.Glyph.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D3C2F7374796C653E0D0A3C672069643D22416464223E0D
          0A09093C636972636C6520636C6173733D22477265656E222063783D22313622
          2063793D2231362220723D223134222F3E0D0A09093C706F6C79676F6E20636C
          6173733D2257686974652220706F696E74733D2232342C31342031382C313420
          31382C382031342C382031342C313420382C313420382C31382031342C313820
          31342C32342031382C32342031382C31382032342C3138202623393B222F3E0D
          0A093C2F673E0D0A3C2F7376673E0D0A}
        TabOrder = 7
        OnClick = btnAdicionarItemClick
      end
      object btnExcluirItem: TcxButton
        Left = 13
        Top = 298
        Width = 257
        Height = 36
        Caption = 'Excluir'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 24
        OptionsImage.Glyph.SourceWidth = 24
        OptionsImage.Glyph.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B9
          5F32223E0D0A09093C7061746820636C6173733D225265642220643D224D3136
          2C3263372E372C302C31342C362E332C31342C313463302C372E372D362E332C
          31342D31342C313453322C32332E372C322C313643322C382E332C382E332C32
          2C31362C327A222F3E0D0A09093C7061746820636C6173733D22576869746522
          20643D224D32342C32326C2D322C326C2D362D366C2D362C366C2D322D326C36
          2D366C2D362D366C322D326C362C366C362D366C322C326C2D362C364C32342C
          32327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
        TabOrder = 8
        OnClick = btnExcluirItemClick
      end
      object edtUnidade: TcxDBLookupComboBox
        Left = 129
        Top = 221
        DataBinding.DataField = 'det_prod_ucom'
        DataBinding.DataSource = dstblItens
        Properties.Alignment.Horz = taCenter
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'unidade'
        Properties.ListColumns = <
          item
            FieldName = 'descricao'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsUnidades
        Style.HotTrack = False
        TabOrder = 6
        Width = 141
      end
      object edtTotal: TcxDBCurrencyEdit
        Left = 129
        Top = 188
        DataBinding.DataField = 'det_prod_vprod'
        DataBinding.DataSource = dstblItens
        Properties.Alignment.Horz = taCenter
        Properties.UseLeftAlignmentOnEditing = False
        Style.HotTrack = False
        TabOrder = 5
        Width = 141
      end
      object edtTotalNota: TcxDBCurrencyEdit
        Left = 129
        Top = 13
        DataBinding.DataField = 'total_icmstot_vprod'
        DataBinding.DataSource = dsNFe
        Enabled = False
        Properties.Alignment.Horz = taCenter
        Style.HotTrack = False
        TabOrder = 0
        Width = 141
      end
      object edtnitemped: TcxDBTextEdit
        Left = 129
        Top = 46
        DataBinding.DataField = 'nitemped'
        DataBinding.DataSource = dstblItens
        Style.HotTrack = False
        TabOrder = 1
        Width = 141
      end
      object lytItensGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        LayoutLookAndFeel = dxLayoutCxLookAndFeel1
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = lytItensGroup_Root
        CaptionOptions.Text = 'Produto'
        Control = edtProduto
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = lytItensGroup_Root
        CaptionOptions.Text = 'Quantidade'
        Control = edtQuantidade
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = lytItensGroup_Root
        CaptionOptions.Text = 'Valor Unit'#225'rio'
        Control = edtValor
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem21: TdxLayoutItem
        Parent = lytItensGroup_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnAdicionarItem
        ControlOptions.OriginalHeight = 36
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object dxLayoutItem22: TdxLayoutItem
        Parent = lytItensGroup_Root
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton2'
        CaptionOptions.Visible = False
        Control = btnExcluirItem
        ControlOptions.OriginalHeight = 36
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 8
      end
      object dxLayoutItem23: TdxLayoutItem
        Parent = lytItensGroup_Root
        CaptionOptions.Text = 'Unidade'
        Control = edtUnidade
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutItem24: TdxLayoutItem
        Parent = lytItensGroup_Root
        CaptionOptions.Text = 'Total'
        Control = edtTotal
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem27: TdxLayoutItem
        Parent = lytItensGroup_Root
        CaptionOptions.Text = 'Total da Nota'
        Control = edtTotalNota
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object lytNitemPed: TdxLayoutItem
        Parent = lytItensGroup_Root
        Visible = False
        CaptionOptions.Text = 'N'#186' do item no '#13#10'pedido de compra'
        CaptionOptions.WordWrap = True
        Control = edtnitemped
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
    object chkTodasPessoas: TcxCheckBox
      Left = 146
      Top = 125
      Caption = 'Mostrar fornecedores e transportadoras'
      Properties.Alignment = taRightJustify
      Properties.OnChange = chkTodasPessoasPropertiesChange
      Style.HotTrack = False
      TabOrder = 15
      Transparent = True
    end
    object edtFormaPagamento: TcxDBLookupComboBox
      Left = 770
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'pag_detpag_tpag'
      DataBinding.DataSource = dsNFe
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'tpag'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsMeiosPagamento
      Style.HotTrack = False
      TabOrder = 6
      Height = 25
      Width = 137
    end
    object edtNumFatura: TcxDBTextEdit
      Left = 13
      Top = 92
      AutoSize = False
      DataBinding.DataField = 'cobr_fat_nfat'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 9
      Height = 25
      Width = 465
    end
    object edtVolumes: TcxDBSpinEdit
      Left = 516
      Top = 293
      DataBinding.DataField = 'transp_vol_qvol'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object edtMarca: TcxDBTextEdit
      Left = 645
      Top = 293
      AutoSize = False
      DataBinding.DataField = 'transp_vol_marca'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 24
      Height = 25
      Width = 121
    end
    object edtTipoFrete: TcxDBLookupComboBox
      Left = 13
      Top = 293
      AutoSize = False
      DataBinding.DataField = 'transp_modfrete'
      DataBinding.DataSource = dsNFe
      Properties.KeyFieldNames = 'modfrete'
      Properties.ListColumns = <
        item
          FieldName = 'descricao'
        end>
      Properties.ListSource = dsTipoFrete
      Style.HotTrack = False
      TabOrder = 22
      Height = 25
      Width = 495
    end
    object edtPesoL: TcxDBCurrencyEdit
      Left = 903
      Top = 293
      DataBinding.DataField = 'transp_vol_pesol'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ' ,0.000;- ,0.000'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object edtPesoB: TcxDBCurrencyEdit
      Left = 1032
      Top = 293
      DataBinding.DataField = 'transp_vol_pesob'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ' ,0.000;- ,0.000'
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 27
      Width = 121
    end
    object edtEspecie: TcxDBTextEdit
      Left = 774
      Top = 293
      AutoSize = False
      DataBinding.DataField = 'transp_vol_esp'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 25
      Height = 25
      Width = 121
    end
    object edtValorFat: TcxDBCurrencyEdit
      Left = 486
      Top = 92
      DataBinding.DataField = 'cobr_fat_vliq'
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 10
      Width = 157
    end
    object edtNDups: TcxDBSpinEdit
      Left = 651
      Top = 92
      DataBinding.DataSource = dsNFe
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 11
      Width = 148
    end
    object edtDataVecto: TcxDBDateEdit
      Left = 807
      Top = 92
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 12
      Width = 199
    end
    object edtDiasEntreParcelas: TcxSpinEdit
      Left = 1014
      Top = 92
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      TabOrder = 13
      Width = 139
    end
    object edtNatOp: TcxDBComboBox
      Left = 381
      Top = 36
      DataBinding.DataField = 'ide_natop'
      DataBinding.DataSource = dsNFe
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'venda'
        'compra'
        'transfer'#234'ncia'
        'devolu'#231#227'o'
        'importa'#231#227'o'
        'consigna'#231#227'o'
        'remessa')
      Properties.UseLeftAlignmentOnEditing = False
      Style.HotTrack = False
      TabOrder = 3
      Width = 135
    end
    object edtConsumidorFinal: TcxDBCheckBox
      Left = 13
      Top = 125
      Caption = 'Consumidor Final'
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.HotTrack = False
      TabOrder = 14
      Transparent = True
    end
    object edtXPED: TcxDBTextEdit
      Left = 866
      Top = 405
      AutoSize = False
      DataBinding.DataField = 'xped'
      DataBinding.DataSource = dsNFe
      Properties.OnChange = edtXPEDPropertiesChange
      Style.HotTrack = False
      TabOrder = 31
      Height = 25
      Width = 287
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 6
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grdProdutos'
      CaptionOptions.Visible = False
      Control = grdProdutos
      ControlOptions.OriginalHeight = 452
      ControlOptions.OriginalWidth = 839
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytCFOP: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CFOP'
      CaptionOptions.Layout = clTop
      Control = edtCFOP
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 108
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = edtNumeroNF
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'S'#233'rie'
      CaptionOptions.Layout = clTop
      Control = edtSerie
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Sa'#237'da'
      CaptionOptions.Layout = clTop
      Control = edtDataSaida
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Emiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDataEmissao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 
        'Vou te dar dicas deste CFOP para que voc'#234' possa conferir a utili' +
        'za'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = lblAplicacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Descri'#231#227'o do CFOP'
      CaptionOptions.Layout = clTop
      Control = lblCFOP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Destinat'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtDest
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 380
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Transportadora'
      CaptionOptions.Layout = clTop
      Control = edtTransp
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 380
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Endere'#231'o'
      CaptionOptions.Layout = clTop
      Control = lblDestEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CPF / CNPJ'
      CaptionOptions.Layout = clTop
      Control = lblDestCNPJ
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 225
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CPF / CNPJ'
      CaptionOptions.Layout = clTop
      Control = lblTranspCNPJ
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 225
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Endere'#231'o'
      CaptionOptions.Layout = clTop
      Control = lblTranspEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Finalidade'
      CaptionOptions.Layout = clTop
      Control = edtFinalidade
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Movimento'
      CaptionOptions.Layout = clTop
      Control = edtMovimento
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Pagamento'
      CaptionOptions.Layout = clTop
      Control = edtPagamento
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lytItensNF: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'dxLayoutControl2'
      CaptionOptions.Visible = False
      Control = lytItens
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkTodasPessoas
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 263
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Forma de Pagamento'
      CaptionOptions.Layout = clTop
      Control = edtFormaPagamento
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = lytPagamento
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'N'#250'mero da Fatura'
      CaptionOptions.Layout = clTop
      Control = edtNumFatura
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytPagamento: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = lytEntrega
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Volumes'
      CaptionOptions.Layout = clTop
      Control = edtVolumes
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = lytEntrega
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Marca'
      CaptionOptions.Layout = clTop
      Control = edtMarca
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lytEntrega: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = lytEntrega
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Tipo de Frete'
      CaptionOptions.Layout = clTop
      Control = edtTipoFrete
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = lytEntrega
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Peso L'#237'quido'
      CaptionOptions.Layout = clTop
      Control = edtPesoL
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = lytEntrega
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Peso Bruto'
      CaptionOptions.Layout = clTop
      Control = edtPesoB
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = lytEntrega
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Esp'#233'cie'
      CaptionOptions.Layout = clTop
      Control = edtEspecie
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = lytPagamento
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Valor da Fatura'
      CaptionOptions.Layout = clTop
      Control = edtValorFat
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = lytPagamento
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Parcelas'
      CaptionOptions.Layout = clTop
      Control = edtNDups
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 148
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = lytPagamento
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Vencimento Inicial'
      CaptionOptions.Layout = clTop
      Control = edtDataVecto
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 199
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = lytPagamento
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Dias entre as parcelas'
      CaptionOptions.Layout = clTop
      Control = edtDiasEntreParcelas
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Natureza da Opera'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = edtNatOp
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 135
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Consumidor FInal'
      CaptionOptions.Visible = False
      Control = edtConsumidorFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignVert = avClient
      CaptionOptions.Text = 'C'#243'digo ou N'#250'mero do Pedido de Compra'
      CaptionOptions.Layout = clTop
      Control = edtXPED
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 287
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 6
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1166
    Height = 132
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeAccent = rcsaOrange
    ColorSchemeName = 'Colorful'
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Produtos'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 829
    Width = 1166
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
    Left = 508
    Top = 56
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Cadastro'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 668
      FloatTop = 2
      FloatClientWidth = 100
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSalvar'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'btnSair'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Importa'#231#227'o'
      CaptionButtons = <>
      DockedLeft = 322
      DockedTop = 0
      FloatLeft = 867
      FloatTop = 2
      FloatClientWidth = 100
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = False
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
    object btnSalvar: TdxBarLargeButton
      Caption = 'Salvar'
      Category = 0
      Hint = 'Salvar'
      Visible = ivAlways
      OnClick = btnSalvarClick
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
        73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
        464646463B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E426C75657B66696C
        6C3A233131373744373B7D262331333B262331303B2623393B2E7374307B6F70
        61636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BB
        D0BED0B95F32223E0D0A09093C672069643D2253617665223E0D0A0909093C70
        6F6C79676F6E20636C6173733D22426C75652220706F696E74733D2233302C32
        20322C3220322C333020322C333020362C333020362C32302032362C32302032
        362C33302033302C3330202623393B2623393B222F3E0D0A0909093C72656374
        20783D22362220793D22322220636C6173733D22576869746522207769647468
        3D22323022206865696768743D223134222F3E0D0A0909093C7061746820636C
        6173733D22426C61636B2220643D224D362C323076313068323056323048367A
        204D32342C3238682D34762D3668345632387A222F3E0D0A0909093C6720636C
        6173733D22737430223E0D0A090909093C7265637420783D22382220793D2234
        2220636C6173733D22426C61636B222077696474683D22313622206865696768
        743D2232222F3E0D0A090909093C7265637420783D22382220793D2238222063
        6C6173733D22426C61636B222077696474683D22313222206865696768743D22
        32222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F
        7376673E0D0A}
      Width = 100
    end
    object btnExcluir: TdxBarLargeButton
      Caption = 'Excluir'
      Category = 0
      Enabled = False
      Hint = 'Excluir'
      Visible = ivAlways
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F637373223E2E5265647B6669
        6C6C3A234431314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173
        733D225265642220643D224D31382E382C31366C382D3863302E342D302E342C
        302E342D312C302D312E346C2D312E342D312E34632D302E342D302E342D312D
        302E342D312E342C306C2D382C386C2D382D38632D302E342D302E342D312D30
        2E342D312E342C304C352E322C362E3620202623393B43342E382C372C342E38
        2C372E362C352E322C386C382C386C2D382C38632D302E342C302E342D302E34
        2C312C302C312E346C312E342C312E3463302E342C302E342C312C302E342C31
        2E342C306C382D386C382C3863302E342C302E342C312C302E342C312E342C30
        6C312E342D312E3420202623393B63302E342D302E342C302E342D312C302D31
        2E344C31382E382C31367A222F3E0D0A3C2F7376673E0D0A}
      Width = 100
    end
    object btnSair: TdxBarLargeButton
      Caption = 'Voltar'
      Category = 0
      Hint = 'Voltar'
      Visible = ivAlways
      OnClick = btnSairClick
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Importar XML'
      Category = 0
      Hint = 'Importar XML'
      Visible = ivAlways
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E477265656E7B66696C6C3A233033394332
        333B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
        3744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C7565
        2220643D224D32392C31384837632D302E362C302D312C302E342D312C317631
        3263302C302E362C302E342C312C312C3168323263302E362C302C312D302E34
        2C312D315631394333302C31382E342C32392E362C31382C32392C31387A204D
        32382C3330483856323068323020202623393B5633307A222F3E0D0A3C706174
        6820636C6173733D22426C75652220643D224D31332E332C32386C2D302E362D
        312E3663302D302E312D302E312D302E322D302E312D302E3373302D302E322C
        302D302E32683063302C302E312C302C302E322C302C302E3363302C302E312C
        302C302E322D302E312C302E334C31312E382C323848313020202623393B6C31
        2E352D336C2D312E342D334831326C302E352C312E3663302C302E312C302E31
        2C302E332C302E312C302E36683063302D302E332C302E312D302E352C302E31
        2D302E366C302E362D312E364831356C2D312E342C336C312E352C334831332E
        337A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3230
        2E322C3238762D332E3363302D302E332C302D302E362C302D316C302D302E33
        6830632D302E312C302E352D302E312C302E382D302E322C314C31392E332C32
        38682D312E346C2D302E382D332E3663302D302E312D302E312D302E342D302E
        322D31683020202623393B63302C302E392C302C312E352C302C312E38563238
        682D312E33762D3668322E336C302E372C332E3363302C302E312C302C302E32
        2C302E312C302E3463302C302E322C302C302E342C302E312C302E3568306330
        2D302E332C302E312D302E362C302E312D302E396C302E372D332E3268322E33
        76364832302E327A222F3E0D0A3C7061746820636C6173733D22426C75652220
        643D224D32322E372C3238762D3668312E3576342E364832365632384832322E
        377A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3239
        2C31384837632D302E362C302D312C302E342D312C3176313263302C302E362C
        302E342C312C312C3168323263302E362C302C312D302E342C312D3156313943
        33302C31382E342C32392E362C31382C32392C31387A204D32382C3330483856
        323068323020202623393B5633307A222F3E0D0A3C7061746820636C6173733D
        22477265656E2220643D224D322C323456313468323076326832762D3363302D
        302E362D302E342D312D312D314831632D302E362C302D312C302E342D312C31
        76313263302C302E362C302E342C312C312C316833762D3248327A222F3E0D0A
        3C7061746820636C6173733D22477265656E2220643D224D31362C313063302C
        302C302E322D342C382D3476326C382D346C2D382D3476324331362E322C322C
        31362C31302C31362C31307A222F3E0D0A3C2F7376673E0D0A}
      Width = 100
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 504
    Top = 8
  end
  object qryCFOP: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM'
      '  commerce.cfop'
      'WHERE'
      '  cfop BETWEEN :pINICIO AND :pFIM'
      'ORDER BY'
      '  cfop')
    Left = 584
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pINICIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pFIM'
        Value = nil
      end>
    object qryCFOPcfop: TIntegerField
      FieldName = 'cfop'
    end
    object qryCFOPtipo: TStringField
      FieldName = 'tipo'
      Size = 800
    end
    object qryCFOPdescricao: TStringField
      FieldName = 'descricao'
      Size = 800
    end
    object qryCFOPaplicacao: TStringField
      FieldName = 'aplicacao'
      Size = 800
    end
    object qryCFOPinivig: TDateField
      FieldName = 'inivig'
    end
    object qryCFOPfimvig: TDateField
      FieldName = 'fimvig'
    end
    object qryCFOPindnfe: TIntegerField
      FieldName = 'indnfe'
    end
    object qryCFOPindcomunica: TIntegerField
      FieldName = 'indcomunica'
    end
    object qryCFOPindtransp: TIntegerField
      FieldName = 'indtransp'
    end
    object qryCFOPinddevol: TIntegerField
      FieldName = 'inddevol'
    end
    object qryCFOPindretor: TIntegerField
      FieldName = 'indretor'
    end
    object qryCFOPindanula: TIntegerField
      FieldName = 'indanula'
    end
    object qryCFOPindremes: TIntegerField
      FieldName = 'indremes'
    end
    object qryCFOPindcomb: TIntegerField
      FieldName = 'indcomb'
    end
    object qryCFOPindnfce: TIntegerField
      FieldName = 'indnfce'
    end
    object qryCFOPindcte: TIntegerField
      FieldName = 'indcte'
    end
    object qryCFOPindcteos: TIntegerField
      FieldName = 'indcteos'
    end
  end
  object dsCFOP: TDataSource
    DataSet = qryCFOP
    Left = 584
    Top = 60
  end
  object tblNFe: TUniTable
    TableName = 'commerce.nfe'
    Connection = DM.Conexao
    Left = 648
    Top = 12
    object tblNFeinfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object tblNFeinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object tblNFeide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object tblNFeide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object tblNFeide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object tblNFeide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object tblNFeide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object tblNFeide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object tblNFeide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object tblNFeide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object tblNFeide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object tblNFeide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object tblNFeide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object tblNFeide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object tblNFeide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object tblNFeide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object tblNFeide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object tblNFeide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object tblNFeide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object tblNFeide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object tblNFeide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object tblNFeide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object tblNFeemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object tblNFeemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object tblNFeemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object tblNFeemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object tblNFeemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object tblNFeemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object tblNFeemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object tblNFeemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object tblNFeemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object tblNFeemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object tblNFeemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object tblNFeemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object tblNFedest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object tblNFedest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object tblNFedest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object tblNFedest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object tblNFedest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object tblNFedest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object tblNFedest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object tblNFedest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object tblNFedest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object tblNFedest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object tblNFedest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object tblNFedest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object tblNFedest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object tblNFedest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object tblNFetotal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object tblNFetotal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object tblNFetotal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object tblNFetotal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object tblNFetotal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object tblNFetotal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object tblNFetotal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object tblNFetotal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object tblNFetotal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object tblNFetotal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object tblNFetotal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object tblNFetotal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object tblNFetotal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object tblNFetotal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object tblNFetotal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object tblNFetotal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object tblNFetotal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object tblNFetotal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object tblNFetotal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object tblNFetotal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object tblNFetotal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object tblNFetotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object tblNFetransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object tblNFetransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object tblNFetransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object tblNFetransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object tblNFetransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object tblNFetransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object tblNFetransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object tblNFetransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object tblNFetransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object tblNFetransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object tblNFecobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object tblNFecobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object tblNFecobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object tblNFecobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object tblNFepag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object tblNFepag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object tblNFepag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object tblNFepag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object tblNFepag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object tblNFepag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object tblNFepag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object tblNFepag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object tblNFeinfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object tblNFeinfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object tblNFeinfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object tblNFeinfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object tblNFeinfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object tblNFesignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object tblNFeprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object tblNFecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tblNFecad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object tblNFecad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
    object tblNFeemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object tblNFedest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object tblNFeemit_enderemit_fone: TStringField
      FieldName = 'emit_enderemit_fone'
    end
    object tblNFedest_enderdest_fone: TStringField
      FieldName = 'dest_enderdest_fone'
    end
    object tblNFetransp_transporta_cnpj: TStringField
      FieldName = 'transp_transporta_cnpj'
    end
    object tblNFeinfresptec_cnpj: TStringField
      FieldName = 'infresptec_cnpj'
    end
    object tblNFetotal_icmstot_vTotTrib: TFloatField
      FieldName = 'total_icmstot_vTotTrib'
    end
    object tblNFexped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object tblNFeemit_im: TStringField
      FieldName = 'emit_im'
    end
    object tblNFeemit_cnae: TStringField
      FieldName = 'emit_cnae'
    end
    object tblNFeemit_enderemit_xcpl: TStringField
      FieldName = 'emit_enderemit_xcpl'
      Size = 200
    end
    object tblNFedest_Enderdest_xcpl: TStringField
      FieldName = 'dest_Enderdest_xcpl'
      Size = 200
    end
    object tblNFedest_im: TStringField
      FieldName = 'dest_im'
    end
    object tblNFecad_integracao: TIntegerField
      FieldName = 'cad_integracao'
    end
    object tblNFecad_integracao_dados: TStringField
      FieldName = 'cad_integracao_dados'
      Size = 200
    end
    object tblNFetransp_transporta_ie: TStringField
      FieldName = 'transp_transporta_ie'
    end
    object tblNFeemit_ie: TStringField
      FieldName = 'emit_ie'
    end
  end
  object dsNFe: TDataSource
    DataSet = tblNFe
    Left = 648
    Top = 60
  end
  object dsPessoas: TDataSource
    DataSet = qryPessoas
    Left = 712
    Top = 60
  end
  object tblPessoas: TUniTable
    TableName = 'commerce.pessoas'
    Connection = DM.Conexao
    Left = 712
    Top = 12
    object tblPessoascodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblPessoasnome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object tblPessoasendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object tblPessoasbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object tblPessoascidade: TStringField
      FieldName = 'cidade'
      Size = 40
    end
    object tblPessoasuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object tblPessoascep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object tblPessoascomplemento: TStringField
      FieldName = 'complemento'
      Size = 80
    end
    object tblPessoastelefone1: TStringField
      FieldName = 'telefone1'
    end
    object tblPessoasemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object tblPessoasrg: TStringField
      FieldName = 'rg'
      Size = 25
    end
    object tblPessoascpf: TStringField
      FieldName = 'cpf'
      Size = 18
    end
    object tblPessoasfiliacao: TStringField
      FieldName = 'filiacao'
      Size = 80
    end
    object tblPessoasestadocivil: TStringField
      FieldName = 'estadocivil'
      Size = 15
    end
    object tblPessoasconjuge: TStringField
      FieldName = 'conjuge'
      Size = 60
    end
    object tblPessoasprofissao: TStringField
      FieldName = 'profissao'
      Size = 30
    end
    object tblPessoasempresa: TStringField
      FieldName = 'empresa'
      Size = 40
    end
    object tblPessoasrenda: TFloatField
      FieldName = 'renda'
    end
    object tblPessoaslimite: TFloatField
      FieldName = 'limite'
    end
    object tblPessoasref1: TStringField
      FieldName = 'ref1'
      Size = 50
    end
    object tblPessoasref2: TStringField
      FieldName = 'ref2'
      Size = 50
    end
    object tblPessoascodvendedor: TStringField
      FieldName = 'codvendedor'
      Size = 6
    end
    object tblPessoasdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object tblPessoasdata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object tblPessoasobs1: TStringField
      FieldName = 'obs1'
      Size = 80
    end
    object tblPessoasobs2: TStringField
      FieldName = 'obs2'
      Size = 80
    end
    object tblPessoasobs3: TStringField
      FieldName = 'obs3'
      Size = 80
    end
    object tblPessoasobs4: TStringField
      FieldName = 'obs4'
      Size = 80
    end
    object tblPessoasobs5: TStringField
      FieldName = 'obs5'
      Size = 80
    end
    object tblPessoasobs6: TStringField
      FieldName = 'obs6'
      Size = 80
    end
    object tblPessoasnascimento: TStringField
      FieldName = 'nascimento'
      Size = 10
    end
    object tblPessoascodregiao: TStringField
      FieldName = 'codregiao'
      Size = 6
    end
    object tblPessoascodconvenio: TStringField
      FieldName = 'codconvenio'
      Size = 6
    end
    object tblPessoascodusuario: TStringField
      FieldName = 'codusuario'
      Size = 6
    end
    object tblPessoasnumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object tblPessoasrg_orgao: TStringField
      FieldName = 'rg_orgao'
      Size = 5
    end
    object tblPessoasrg_estado: TStringField
      FieldName = 'rg_estado'
      Size = 2
    end
    object tblPessoasrg_emissao: TDateField
      FieldName = 'rg_emissao'
    end
    object tblPessoassexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object tblPessoasprevisao: TDateField
      FieldName = 'previsao'
    end
    object tblPessoascnae: TStringField
      FieldName = 'cnae'
      Size = 10
    end
    object tblPessoascod_municipio_ibge: TStringField
      FieldName = 'cod_municipio_ibge'
      Size = 10
    end
    object tblPessoasibge: TStringField
      FieldName = 'ibge'
      Size = 5
    end
    object tblPessoastamanho_calca: TStringField
      FieldName = 'tamanho_calca'
      Size = 5
    end
    object tblPessoastamanho_blusa: TStringField
      FieldName = 'tamanho_blusa'
      Size = 5
    end
    object tblPessoastamanho_sapato: TStringField
      FieldName = 'tamanho_sapato'
      Size = 5
    end
    object tblPessoascorresp_endereco: TStringField
      FieldName = 'corresp_endereco'
      Size = 80
    end
    object tblPessoascorresp_bairro: TStringField
      FieldName = 'corresp_bairro'
      Size = 30
    end
    object tblPessoascorresp_cidade: TStringField
      FieldName = 'corresp_cidade'
      Size = 40
    end
    object tblPessoascorresp_uf: TStringField
      FieldName = 'corresp_uf'
      Size = 2
    end
    object tblPessoascorresp_cep: TStringField
      FieldName = 'corresp_cep'
      Size = 10
    end
    object tblPessoascorresp_complemento: TStringField
      FieldName = 'corresp_complemento'
      Size = 40
    end
    object tblPessoasrg_produtor: TStringField
      FieldName = 'rg_produtor'
      Size = 30
    end
    object tblPessoasresp1_nome: TStringField
      FieldName = 'resp1_nome'
      Size = 80
    end
    object tblPessoasresp1_cpf: TStringField
      FieldName = 'resp1_cpf'
      Size = 25
    end
    object tblPessoasresp1_rg: TStringField
      FieldName = 'resp1_rg'
      Size = 25
    end
    object tblPessoasresp1_profissao: TStringField
      FieldName = 'resp1_profissao'
      Size = 50
    end
    object tblPessoasresp1_estado_civil: TStringField
      FieldName = 'resp1_estado_civil'
      Size = 30
    end
    object tblPessoasresp1_endereco: TStringField
      FieldName = 'resp1_endereco'
      Size = 80
    end
    object tblPessoasresp1_bairro: TStringField
      FieldName = 'resp1_bairro'
      Size = 40
    end
    object tblPessoasresp1_cidade: TStringField
      FieldName = 'resp1_cidade'
      Size = 40
    end
    object tblPessoasresp1_uf: TStringField
      FieldName = 'resp1_uf'
      Size = 2
    end
    object tblPessoasresp1_cep: TStringField
      FieldName = 'resp1_cep'
      Size = 15
    end
    object tblPessoasresp2_nome: TStringField
      FieldName = 'resp2_nome'
      Size = 80
    end
    object tblPessoasresp2_cpf: TStringField
      FieldName = 'resp2_cpf'
      Size = 25
    end
    object tblPessoasresp2_rg: TStringField
      FieldName = 'resp2_rg'
      Size = 25
    end
    object tblPessoasresp2_profissao: TStringField
      FieldName = 'resp2_profissao'
      Size = 50
    end
    object tblPessoasresp2_estado_civil: TStringField
      FieldName = 'resp2_estado_civil'
      Size = 30
    end
    object tblPessoasresp2_endereco: TStringField
      FieldName = 'resp2_endereco'
      Size = 80
    end
    object tblPessoasresp2_bairro: TStringField
      FieldName = 'resp2_bairro'
      Size = 40
    end
    object tblPessoasresp2_cidade: TStringField
      FieldName = 'resp2_cidade'
      Size = 40
    end
    object tblPessoasresp2_uf: TStringField
      FieldName = 'resp2_uf'
      Size = 2
    end
    object tblPessoasresp2_cep: TStringField
      FieldName = 'resp2_cep'
      Size = 15
    end
    object tblPessoasfoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object tblPessoascondpgto: TStringField
      FieldName = 'condpgto'
      Size = 100
    end
    object tblPessoascpais: TStringField
      FieldName = 'cpais'
      Size = 4
    end
    object tblPessoasdpais: TStringField
      FieldName = 'dpais'
      Size = 100
    end
    object tblPessoastipo_ie: TStringField
      FieldName = 'tipo_ie'
    end
    object tblPessoasconsumidor_final: TStringField
      FieldName = 'consumidor_final'
      Size = 1
    end
    object tblPessoasinstrucoes1: TStringField
      FieldName = 'instrucoes1'
      Size = 80
    end
    object tblPessoasinstrucoes2: TStringField
      FieldName = 'instrucoes2'
      Size = 80
    end
    object tblPessoasidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblPessoasatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblPessoastipopessoa: TStringField
      FieldName = 'tipopessoa'
      Size = 200
    end
    object tblPessoasresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 80
    end
    object tblPessoassimples: TBooleanField
      FieldName = 'simples'
    end
    object tblPessoassimei: TBooleanField
      FieldName = 'simei'
    end
    object tblPessoassintegra: TBooleanField
      FieldName = 'sintegra'
    end
    object tblPessoasjuridica: TBooleanField
      FieldName = 'juridica'
    end
    object tblPessoassintegrainativo: TBooleanField
      FieldName = 'sintegrainativo'
    end
  end
  object qryPessoas: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.pessoas'
      'WHERE'
      '  tipopessoa like :pTIPO')
    Left = 776
    Top = 12
    ParamData = <
      item
        DataType = ftString
        Name = 'pTIPO'
        Value = 'Cliente'
      end>
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
  object qryTransportadora: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.pessoas'
      'WHERE'
      '  tipopessoa = '#39'Transportadora'#39)
    Left = 840
    Top = 12
    object qryTransportadoracodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object qryTransportadoranome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object qryTransportadoraendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object qryTransportadorabairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qryTransportadoracidade: TStringField
      FieldName = 'cidade'
      Size = 40
    end
    object qryTransportadorauf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object qryTransportadoracep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object qryTransportadoracomplemento: TStringField
      FieldName = 'complemento'
      Size = 80
    end
    object qryTransportadoratelefone1: TStringField
      FieldName = 'telefone1'
    end
    object qryTransportadoraemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object qryTransportadorarg: TStringField
      FieldName = 'rg'
      Size = 25
    end
    object qryTransportadoracpf: TStringField
      FieldName = 'cpf'
      Size = 18
    end
    object qryTransportadorafiliacao: TStringField
      FieldName = 'filiacao'
      Size = 80
    end
    object qryTransportadoraestadocivil: TStringField
      FieldName = 'estadocivil'
      Size = 15
    end
    object qryTransportadoraconjuge: TStringField
      FieldName = 'conjuge'
      Size = 60
    end
    object qryTransportadoraprofissao: TStringField
      FieldName = 'profissao'
      Size = 30
    end
    object qryTransportadoraempresa: TStringField
      FieldName = 'empresa'
      Size = 40
    end
    object qryTransportadorarenda: TFloatField
      FieldName = 'renda'
    end
    object qryTransportadoralimite: TFloatField
      FieldName = 'limite'
    end
    object qryTransportadoraref1: TStringField
      FieldName = 'ref1'
      Size = 50
    end
    object qryTransportadoraref2: TStringField
      FieldName = 'ref2'
      Size = 50
    end
    object qryTransportadoracodvendedor: TStringField
      FieldName = 'codvendedor'
      Size = 6
    end
    object qryTransportadoradata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object qryTransportadoradata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object qryTransportadoraobs1: TStringField
      FieldName = 'obs1'
      Size = 80
    end
    object qryTransportadoraobs2: TStringField
      FieldName = 'obs2'
      Size = 80
    end
    object qryTransportadoraobs3: TStringField
      FieldName = 'obs3'
      Size = 80
    end
    object qryTransportadoraobs4: TStringField
      FieldName = 'obs4'
      Size = 80
    end
    object qryTransportadoraobs5: TStringField
      FieldName = 'obs5'
      Size = 80
    end
    object qryTransportadoraobs6: TStringField
      FieldName = 'obs6'
      Size = 80
    end
    object qryTransportadoranascimento: TStringField
      FieldName = 'nascimento'
      Size = 10
    end
    object qryTransportadoracodregiao: TStringField
      FieldName = 'codregiao'
      Size = 6
    end
    object qryTransportadoracodconvenio: TStringField
      FieldName = 'codconvenio'
      Size = 6
    end
    object qryTransportadoracodusuario: TStringField
      FieldName = 'codusuario'
      Size = 6
    end
    object qryTransportadoranumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object qryTransportadorarg_orgao: TStringField
      FieldName = 'rg_orgao'
      Size = 5
    end
    object qryTransportadorarg_estado: TStringField
      FieldName = 'rg_estado'
      Size = 2
    end
    object qryTransportadorarg_emissao: TDateField
      FieldName = 'rg_emissao'
    end
    object qryTransportadorasexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
    object qryTransportadoraprevisao: TDateField
      FieldName = 'previsao'
    end
    object qryTransportadoracnae: TStringField
      FieldName = 'cnae'
      Size = 10
    end
    object qryTransportadoracod_municipio_ibge: TStringField
      FieldName = 'cod_municipio_ibge'
      Size = 10
    end
    object qryTransportadoraibge: TStringField
      FieldName = 'ibge'
      Size = 5
    end
    object qryTransportadoratamanho_calca: TStringField
      FieldName = 'tamanho_calca'
      Size = 5
    end
    object qryTransportadoratamanho_blusa: TStringField
      FieldName = 'tamanho_blusa'
      Size = 5
    end
    object qryTransportadoratamanho_sapato: TStringField
      FieldName = 'tamanho_sapato'
      Size = 5
    end
    object qryTransportadoracorresp_endereco: TStringField
      FieldName = 'corresp_endereco'
      Size = 80
    end
    object qryTransportadoracorresp_bairro: TStringField
      FieldName = 'corresp_bairro'
      Size = 30
    end
    object qryTransportadoracorresp_cidade: TStringField
      FieldName = 'corresp_cidade'
      Size = 40
    end
    object qryTransportadoracorresp_uf: TStringField
      FieldName = 'corresp_uf'
      Size = 2
    end
    object qryTransportadoracorresp_cep: TStringField
      FieldName = 'corresp_cep'
      Size = 10
    end
    object qryTransportadoracorresp_complemento: TStringField
      FieldName = 'corresp_complemento'
      Size = 40
    end
    object qryTransportadorarg_produtor: TStringField
      FieldName = 'rg_produtor'
      Size = 30
    end
    object qryTransportadoraresp1_nome: TStringField
      FieldName = 'resp1_nome'
      Size = 80
    end
    object qryTransportadoraresp1_cpf: TStringField
      FieldName = 'resp1_cpf'
      Size = 25
    end
    object qryTransportadoraresp1_rg: TStringField
      FieldName = 'resp1_rg'
      Size = 25
    end
    object qryTransportadoraresp1_profissao: TStringField
      FieldName = 'resp1_profissao'
      Size = 50
    end
    object qryTransportadoraresp1_estado_civil: TStringField
      FieldName = 'resp1_estado_civil'
      Size = 30
    end
    object qryTransportadoraresp1_endereco: TStringField
      FieldName = 'resp1_endereco'
      Size = 80
    end
    object qryTransportadoraresp1_bairro: TStringField
      FieldName = 'resp1_bairro'
      Size = 40
    end
    object qryTransportadoraresp1_cidade: TStringField
      FieldName = 'resp1_cidade'
      Size = 40
    end
    object qryTransportadoraresp1_uf: TStringField
      FieldName = 'resp1_uf'
      Size = 2
    end
    object qryTransportadoraresp1_cep: TStringField
      FieldName = 'resp1_cep'
      Size = 15
    end
    object qryTransportadoraresp2_nome: TStringField
      FieldName = 'resp2_nome'
      Size = 80
    end
    object qryTransportadoraresp2_cpf: TStringField
      FieldName = 'resp2_cpf'
      Size = 25
    end
    object qryTransportadoraresp2_rg: TStringField
      FieldName = 'resp2_rg'
      Size = 25
    end
    object qryTransportadoraresp2_profissao: TStringField
      FieldName = 'resp2_profissao'
      Size = 50
    end
    object qryTransportadoraresp2_estado_civil: TStringField
      FieldName = 'resp2_estado_civil'
      Size = 30
    end
    object qryTransportadoraresp2_endereco: TStringField
      FieldName = 'resp2_endereco'
      Size = 80
    end
    object qryTransportadoraresp2_bairro: TStringField
      FieldName = 'resp2_bairro'
      Size = 40
    end
    object qryTransportadoraresp2_cidade: TStringField
      FieldName = 'resp2_cidade'
      Size = 40
    end
    object qryTransportadoraresp2_uf: TStringField
      FieldName = 'resp2_uf'
      Size = 2
    end
    object qryTransportadoraresp2_cep: TStringField
      FieldName = 'resp2_cep'
      Size = 15
    end
    object qryTransportadorafoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object qryTransportadoracondpgto: TStringField
      FieldName = 'condpgto'
      Size = 100
    end
    object qryTransportadoracpais: TStringField
      FieldName = 'cpais'
      Size = 4
    end
    object qryTransportadoradpais: TStringField
      FieldName = 'dpais'
      Size = 100
    end
    object qryTransportadoratipo_ie: TStringField
      FieldName = 'tipo_ie'
    end
    object qryTransportadoraconsumidor_final: TStringField
      FieldName = 'consumidor_final'
      Size = 1
    end
    object qryTransportadorainstrucoes1: TStringField
      FieldName = 'instrucoes1'
      Size = 80
    end
    object qryTransportadorainstrucoes2: TStringField
      FieldName = 'instrucoes2'
      Size = 80
    end
    object qryTransportadoraidonline: TIntegerField
      FieldName = 'idonline'
    end
    object qryTransportadoraatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryTransportadoratipopessoa: TStringField
      FieldName = 'tipopessoa'
      Size = 200
    end
    object qryTransportadoraresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 80
    end
    object qryTransportadorasimples: TBooleanField
      FieldName = 'simples'
    end
    object qryTransportadorasimei: TBooleanField
      FieldName = 'simei'
    end
    object qryTransportadorasintegra: TBooleanField
      FieldName = 'sintegra'
    end
    object qryTransportadorajuridica: TBooleanField
      FieldName = 'juridica'
    end
    object qryTransportadorasintegrainativo: TBooleanField
      FieldName = 'sintegrainativo'
    end
  end
  object dsTransportadoras: TDataSource
    DataSet = qryTransportadora
    Left = 840
    Top = 60
  end
  object qryItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfeitenstemp'
      'ORDER BY'
      '  det_nitem')
    Left = 904
    Top = 12
    object qryItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object qryItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object qryItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object qryItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object qryItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object qryItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object qryItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object qryItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object qryItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object qryItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object qryItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object qryItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object qryItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object qryItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object qryItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object qryItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object qryItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object qryItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object qryItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object qryItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object qryItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object qryItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object qryItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object qryItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object qryItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object qryItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object qryItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object qryItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object qryItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object qryItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object qryItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object qryItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object qryItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object qryItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object qryItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object qryItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
    object qryItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object qryItensAliquota_STEfetivo: TFloatField
      FieldName = 'Aliquota_STEfetivo'
    end
    object qryItensxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryItensnitemped: TStringField
      FieldName = 'nitemped'
      Size = 50
    end
    object qryItensdet_prod_ncm: TStringField
      FieldName = 'det_prod_ncm'
    end
  end
  object dsItens: TDataSource
    DataSet = qryItens
    Left = 904
    Top = 60
  end
  object tblItens: TUniTable
    TableName = 'commerce.nfeitenstemp'
    Connection = DM.Conexao
    Left = 1024
    Top = 12
    object tblItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object tblItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object tblItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object tblItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object tblItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object tblItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object tblItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object tblItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object tblItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object tblItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object tblItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object tblItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object tblItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object tblItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object tblItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object tblItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object tblItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object tblItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object tblItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object tblItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object tblItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object tblItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object tblItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object tblItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object tblItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object tblItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object tblItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object tblItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object tblItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object tblItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object tblItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object tblItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object tblItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object tblItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object tblItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object tblItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tblItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object tblItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object tblItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object tblItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object tblItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
    object tblItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object tblItensAliquota_STEfetivo: TFloatField
      FieldName = 'Aliquota_STEfetivo'
    end
    object tblItensxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object tblItensnitemped: TStringField
      FieldName = 'nitemped'
      Size = 50
    end
    object tblItensdet_prod_ncm: TStringField
      FieldName = 'det_prod_ncm'
    end
  end
  object dstblItens: TDataSource
    DataSet = tblItens
    Left = 1024
    Top = 60
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutos
    Left = 1096
    Top = 60
  end
  object qryProdutos: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.produtos'
      'ORDER BY'
      '  codigo::integer')
    Left = 1096
    Top = 8
    object qryProdutoscodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object qryProdutosproduto: TStringField
      FieldName = 'produto'
      Size = 400
    end
    object qryProdutosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object qryProdutoscodgrupo: TStringField
      FieldName = 'codgrupo'
      Size = 6
    end
    object qryProdutoscodsubgrupo: TStringField
      FieldName = 'codsubgrupo'
      Size = 6
    end
    object qryProdutoscodfornecedor: TStringField
      FieldName = 'codfornecedor'
      Size = 6
    end
    object qryProdutoscodmarca: TStringField
      FieldName = 'codmarca'
      Size = 6
    end
    object qryProdutosdata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object qryProdutosnotafiscal: TStringField
      FieldName = 'notafiscal'
      Size = 7
    end
    object qryProdutosprecocusto: TFloatField
      FieldName = 'precocusto'
    end
    object qryProdutosprecovenda: TFloatField
      FieldName = 'precovenda'
    end
    object qryProdutosdata_ultimavenda: TDateField
      FieldName = 'data_ultimavenda'
    end
    object qryProdutosestoque: TFloatField
      FieldName = 'estoque'
    end
    object qryProdutosestoqueminimo: TFloatField
      FieldName = 'estoqueminimo'
    end
    object qryProdutoscodaliquota: TStringField
      FieldName = 'codaliquota'
      Size = 5
    end
    object qryProdutoslocalicazao: TStringField
      FieldName = 'localicazao'
      Size = 50
    end
    object qryProdutospeso: TFloatField
      FieldName = 'peso'
    end
    object qryProdutosvalidade: TStringField
      FieldName = 'validade'
    end
    object qryProdutoscomissao: TFloatField
      FieldName = 'comissao'
    end
    object qryProdutosusa_balanca: TIntegerField
      FieldName = 'usa_balanca'
    end
    object qryProdutosusa_serial: TIntegerField
      FieldName = 'usa_serial'
    end
    object qryProdutosusa_grade: TIntegerField
      FieldName = 'usa_grade'
    end
    object qryProdutoscodreceita: TStringField
      FieldName = 'codreceita'
      Size = 6
    end
    object qryProdutosfoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object qryProdutosdata_ultimacompra_anterior: TDateField
      FieldName = 'data_ultimacompra_anterior'
    end
    object qryProdutosnotafiscal_anterior: TStringField
      FieldName = 'notafiscal_anterior'
      Size = 6
    end
    object qryProdutoscodfornecedor_anterior: TStringField
      FieldName = 'codfornecedor_anterior'
      Size = 6
    end
    object qryProdutosprecocusto_anterior: TFloatField
      FieldName = 'precocusto_anterior'
    end
    object qryProdutosprecovenda_anterior: TFloatField
      FieldName = 'precovenda_anterior'
    end
    object qryProdutoscustomedio: TFloatField
      FieldName = 'customedio'
    end
    object qryProdutosauto_aplicacao: TStringField
      FieldName = 'auto_aplicacao'
      Size = 60
    end
    object qryProdutosauto_complemento: TStringField
      FieldName = 'auto_complemento'
      Size = 60
    end
    object qryProdutosdata_remarcacao_custo: TDateField
      FieldName = 'data_remarcacao_custo'
    end
    object qryProdutosdata_remarcacao_venda: TDateField
      FieldName = 'data_remarcacao_venda'
    end
    object qryProdutospreco_promocao: TFloatField
      FieldName = 'preco_promocao'
    end
    object qryProdutosdata_promocao: TDateField
      FieldName = 'data_promocao'
    end
    object qryProdutosfim_promocao: TDateField
      FieldName = 'fim_promocao'
    end
    object qryProdutoscst: TStringField
      FieldName = 'cst'
      Size = 200
    end
    object qryProdutosclassificacao_fiscal: TStringField
      FieldName = 'classificacao_fiscal'
    end
    object qryProdutosnbm: TStringField
      FieldName = 'nbm'
    end
    object qryProdutosncm: TStringField
      FieldName = 'ncm'
    end
    object qryProdutosaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object qryProdutosipi: TFloatField
      FieldName = 'ipi'
    end
    object qryProdutosreducao: TFloatField
      FieldName = 'reducao'
    end
    object qryProdutosqtde_embalagem: TFloatField
      FieldName = 'qtde_embalagem'
    end
    object qryProdutostipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object qryProdutospeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object qryProdutosfarmacia_controlado: TStringField
      FieldName = 'farmacia_controlado'
      Size = 1
    end
    object qryProdutosfarmacia_apresentacao: TIntegerField
      FieldName = 'farmacia_apresentacao'
    end
    object qryProdutosfarmacia_registro_medicamento: TStringField
      FieldName = 'farmacia_registro_medicamento'
    end
    object qryProdutosfarmacia_pmc: TFloatField
      FieldName = 'farmacia_pmc'
    end
    object qryProdutosultima_alteracao: TDateField
      FieldName = 'ultima_alteracao'
    end
    object qryProdutosultima_carga: TDateField
      FieldName = 'ultima_carga'
    end
    object qryProdutosdata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object qryProdutoscusto_inventario: TFloatField
      FieldName = 'custo_inventario'
    end
    object qryProdutosestoque_inventario: TFloatField
      FieldName = 'estoque_inventario'
    end
    object qryProdutosestoque_anterior: TFloatField
      FieldName = 'estoque_anterior'
    end
    object qryProdutosprecovenda_novo: TFloatField
      FieldName = 'precovenda_novo'
    end
    object qryProdutosusa_rentabilidade: TIntegerField
      FieldName = 'usa_rentabilidade'
    end
    object qryProdutosquantidade_minima_fab: TFloatField
      FieldName = 'quantidade_minima_fab'
    end
    object qryProdutosapresentacao: TStringField
      FieldName = 'apresentacao'
      Size = 60
    end
    object qryProdutossituacao: TIntegerField
      FieldName = 'situacao'
    end
    object qryProdutosprecovenda1: TFloatField
      FieldName = 'precovenda1'
    end
    object qryProdutosprecovenda2: TFloatField
      FieldName = 'precovenda2'
    end
    object qryProdutosprecovenda3: TFloatField
      FieldName = 'precovenda3'
    end
    object qryProdutosprecovenda4: TFloatField
      FieldName = 'precovenda4'
    end
    object qryProdutosprecovenda5: TFloatField
      FieldName = 'precovenda5'
    end
    object qryProdutosdesconto_precovenda: TFloatField
      FieldName = 'desconto_precovenda'
    end
    object qryProdutosdata_inventario_atual: TDateField
      FieldName = 'data_inventario_atual'
    end
    object qryProdutoscusto_inventario_atual: TFloatField
      FieldName = 'custo_inventario_atual'
    end
    object qryProdutosestoque_inventario_atual: TFloatField
      FieldName = 'estoque_inventario_atual'
    end
    object qryProdutosmargem_minima: TFloatField
      FieldName = 'margem_minima'
    end
    object qryProdutospiscofins: TStringField
      FieldName = 'piscofins'
      Size = 1
    end
    object qryProdutosreferencia_fornecedor: TStringField
      FieldName = 'referencia_fornecedor'
      Size = 30
    end
    object qryProdutoscomissao1: TFloatField
      FieldName = 'comissao1'
    end
    object qryProdutosmargem_desconto: TFloatField
      FieldName = 'margem_desconto'
    end
    object qryProdutostamanho: TStringField
      FieldName = 'tamanho'
      Size = 6
    end
    object qryProdutoscor: TStringField
      FieldName = 'cor'
      Size = 6
    end
    object qryProdutosincidencia_piscofins: TStringField
      FieldName = 'incidencia_piscofins'
      Size = 30
    end
    object qryProdutosveic_chassi: TStringField
      FieldName = 'veic_chassi'
      Size = 50
    end
    object qryProdutosveic_serie: TStringField
      FieldName = 'veic_serie'
      Size = 50
    end
    object qryProdutosveic_potencia: TStringField
      FieldName = 'veic_potencia'
      Size = 50
    end
    object qryProdutosveic_peso_liquido: TStringField
      FieldName = 'veic_peso_liquido'
      Size = 15
    end
    object qryProdutosveic_peso_bruto: TStringField
      FieldName = 'veic_peso_bruto'
      Size = 15
    end
    object qryProdutosveic_tipo_combustivel: TStringField
      FieldName = 'veic_tipo_combustivel'
    end
    object qryProdutosveic_renavam: TStringField
      FieldName = 'veic_renavam'
      Size = 50
    end
    object qryProdutosveic_ano_fabricacao: TIntegerField
      FieldName = 'veic_ano_fabricacao'
    end
    object qryProdutosveic_ano_modelo: TIntegerField
      FieldName = 'veic_ano_modelo'
    end
    object qryProdutosveic_tipo: TStringField
      FieldName = 'veic_tipo'
      Size = 50
    end
    object qryProdutosveic_tipo_pintura: TStringField
      FieldName = 'veic_tipo_pintura'
      Size = 15
    end
    object qryProdutosveic_cod_cor: TStringField
      FieldName = 'veic_cod_cor'
      Size = 15
    end
    object qryProdutosveic_cor: TStringField
      FieldName = 'veic_cor'
      Size = 30
    end
    object qryProdutosveic_vin: TStringField
      FieldName = 'veic_vin'
      Size = 10
    end
    object qryProdutosveic_numero_motor: TStringField
      FieldName = 'veic_numero_motor'
      Size = 50
    end
    object qryProdutosveic_cmkg: TStringField
      FieldName = 'veic_cmkg'
      Size = 15
    end
    object qryProdutosveic_cm3: TStringField
      FieldName = 'veic_cm3'
      Size = 15
    end
    object qryProdutosveic_distancia_eixo: TStringField
      FieldName = 'veic_distancia_eixo'
      Size = 15
    end
    object qryProdutosveic_cod_marca: TStringField
      FieldName = 'veic_cod_marca'
      Size = 15
    end
    object qryProdutosveic_especie: TStringField
      FieldName = 'veic_especie'
      Size = 50
    end
    object qryProdutosveic_condicao: TStringField
      FieldName = 'veic_condicao'
      Size = 50
    end
    object qryProdutoslote_fabricacao: TStringField
      FieldName = 'lote_fabricacao'
    end
    object qryProdutoslote_validade: TDateField
      FieldName = 'lote_validade'
    end
    object qryProdutosmargem_agregada: TFloatField
      FieldName = 'margem_agregada'
    end
    object qryProdutoscodbarra_novartis: TStringField
      FieldName = 'codbarra_novartis'
      Size = 13
    end
    object qryProdutosfarmacia_dcb: TStringField
      FieldName = 'farmacia_dcb'
    end
    object qryProdutosfarmacia_abcfarma: TStringField
      FieldName = 'farmacia_abcfarma'
      Size = 10
    end
    object qryProdutosfarmacia_apresentacao_caixa: TStringField
      FieldName = 'farmacia_apresentacao_caixa'
      Size = 10
    end
    object qryProdutosfarmacia_principioativo: TStringField
      FieldName = 'farmacia_principioativo'
      Size = 30
    end
    object qryProdutosultima_compra: TDateField
      FieldName = 'ultima_compra'
    end
    object qryProdutosfarmacia_datavigencia: TDateField
      FieldName = 'farmacia_datavigencia'
    end
    object qryProdutosfarmacia_tipo: TStringField
      FieldName = 'farmacia_tipo'
      Size = 1
    end
    object qryProdutosusa_combustivel: TStringField
      FieldName = 'usa_combustivel'
      Size = 1
    end
    object qryProdutosreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object qryProdutosperda: TFloatField
      FieldName = 'perda'
    end
    object qryProdutoscomposicao1: TStringField
      FieldName = 'composicao1'
      Size = 30
    end
    object qryProdutoscomposicao2: TStringField
      FieldName = 'composicao2'
      Size = 30
    end
    object qryProdutosiat: TStringField
      FieldName = 'iat'
      Size = 1
    end
    object qryProdutosippt: TStringField
      FieldName = 'ippt'
      Size = 1
    end
    object qryProdutossituacao_tributaria: TStringField
      FieldName = 'situacao_tributaria'
      Size = 1
    end
    object qryProdutosflag_sis: TStringField
      FieldName = 'flag_sis'
      Size = 1
    end
    object qryProdutosflag_aceito: TStringField
      FieldName = 'flag_aceito'
      Size = 3
    end
    object qryProdutosflag_est: TStringField
      FieldName = 'flag_est'
      Size = 1
    end
    object qryProdutoscsosn: TStringField
      FieldName = 'csosn'
      Size = 200
    end
    object qryProdutoscodoriginal: TStringField
      FieldName = 'codoriginal'
    end
    object qryProdutoscusto_atacado: TFloatField
      FieldName = 'custo_atacado'
    end
    object qryProdutosunidade_atacado: TStringField
      FieldName = 'unidade_atacado'
      Size = 2
    end
    object qryProdutosqtde_embalagematacado: TFloatField
      FieldName = 'qtde_embalagematacado'
    end
    object qryProdutospmargem1: TFloatField
      FieldName = 'pmargem1'
    end
    object qryProdutospmargem2: TFloatField
      FieldName = 'pmargem2'
    end
    object qryProdutospmargem3: TFloatField
      FieldName = 'pmargem3'
    end
    object qryProdutospmargem4: TFloatField
      FieldName = 'pmargem4'
    end
    object qryProdutospmargem5: TFloatField
      FieldName = 'pmargem5'
    end
    object qryProdutospmargematacado1: TFloatField
      FieldName = 'pmargematacado1'
    end
    object qryProdutospmargematacado2: TFloatField
      FieldName = 'pmargematacado2'
    end
    object qryProdutospmargematacado3: TFloatField
      FieldName = 'pmargematacado3'
    end
    object qryProdutospmargematacado4: TFloatField
      FieldName = 'pmargematacado4'
    end
    object qryProdutospmargematacado5: TFloatField
      FieldName = 'pmargematacado5'
    end
    object qryProdutospmargematacado6: TFloatField
      FieldName = 'pmargematacado6'
    end
    object qryProdutosprecoatacado1: TFloatField
      FieldName = 'precoatacado1'
    end
    object qryProdutosprecoatacado2: TFloatField
      FieldName = 'precoatacado2'
    end
    object qryProdutosprecoatacado3: TFloatField
      FieldName = 'precoatacado3'
    end
    object qryProdutosprecoatacado4: TFloatField
      FieldName = 'precoatacado4'
    end
    object qryProdutosprecoatacado5: TFloatField
      FieldName = 'precoatacado5'
    end
    object qryProdutosind_cfop: TStringField
      FieldName = 'ind_cfop'
      Size = 6
    end
    object qryProdutoscfop_desc: TStringField
      FieldName = 'cfop_desc'
      Size = 30
    end
    object qryProdutosusa_lote: TIntegerField
      FieldName = 'usa_lote'
    end
    object qryProdutosind_cfop_venda_dentro: TStringField
      FieldName = 'ind_cfop_venda_dentro'
      Size = 6
    end
    object qryProdutoscodconta: TStringField
      FieldName = 'codconta'
      Size = 6
    end
    object qryProdutosind_cfop_venda_fora: TStringField
      FieldName = 'ind_cfop_venda_fora'
      Size = 6
    end
    object qryProdutosind_cfop_devolucao_dentro: TStringField
      FieldName = 'ind_cfop_devolucao_dentro'
      Size = 6
    end
    object qryProdutosind_cfop_devolucao_fora: TStringField
      FieldName = 'ind_cfop_devolucao_fora'
      Size = 6
    end
    object qryProdutosind_cfop_garantia_dentro: TStringField
      FieldName = 'ind_cfop_garantia_dentro'
      Size = 6
    end
    object qryProdutosind_cfop_garantia_fora: TStringField
      FieldName = 'ind_cfop_garantia_fora'
      Size = 6
    end
    object qryProdutosusa_tb_pc: TStringField
      FieldName = 'usa_tb_pc'
      Size = 4
    end
    object qryProdutosativa: TStringField
      FieldName = 'ativa'
      Size = 10
    end
    object qryProdutoscest: TStringField
      FieldName = 'cest'
      Size = 7
    end
    object qryProdutosorigem: TIntegerField
      FieldName = 'origem'
    end
    object qryProdutosind_cfop_nfce: TStringField
      FieldName = 'ind_cfop_nfce'
      Size = 4
    end
    object qryProdutosid_tipo_servico: TIntegerField
      FieldName = 'id_tipo_servico'
    end
    object qryProdutosnao_movimenta_estoque: TStringField
      FieldName = 'nao_movimenta_estoque'
      Size = 1
    end
    object qryProdutospesagem_auotmatica: TStringField
      FieldName = 'pesagem_auotmatica'
      Size = 1
    end
    object qryProdutosinforma_codigo_barra_xml: TStringField
      FieldName = 'informa_codigo_barra_xml'
      Size = 1
    end
    object qryProdutoscodigo_anp: TStringField
      FieldName = 'codigo_anp'
      Size = 10
    end
    object qryProdutoscombo: TStringField
      FieldName = 'combo'
      Size = 1
    end
    object qryProdutosind_cfop_dev_compra_dentro: TStringField
      FieldName = 'ind_cfop_dev_compra_dentro'
      Size = 6
    end
    object qryProdutosind_cfop_dev_compra_fora: TStringField
      FieldName = 'ind_cfop_dev_compra_fora'
      Size = 6
    end
    object qryProdutospizza: TStringField
      FieldName = 'pizza'
      Size = 1
    end
    object qryProdutospercglnn: TFloatField
      FieldName = 'percglnn'
    end
    object qryProdutospercglgni: TFloatField
      FieldName = 'percglgni'
    end
    object qryProdutospglp: TFloatField
      FieldName = 'pglp'
    end
    object qryProdutosvpart: TFloatField
      FieldName = 'vpart'
    end
    object qryProdutosecf_icms: TStringField
      FieldName = 'ecf_icms'
      Size = 30
    end
    object qryProdutosidonline: TIntegerField
      FieldName = 'idonline'
    end
    object qryProdutosemdestaque: TStringField
      FieldName = 'emdestaque'
      Size = 1
    end
    object qryProdutosdescontomaximo: TFloatField
      FieldName = 'descontomaximo'
    end
    object qryProdutosatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryProdutoscontrolalote: TStringField
      FieldName = 'controlalote'
      Size = 1
    end
    object qryProdutoscodbarra: TStringField
      FieldName = 'codbarra'
      Size = 14
    end
    object qryProdutosunidade: TStringField
      FieldName = 'unidade'
      Size = 6
    end
    object qryProdutospiscstcsosn: TStringField
      FieldName = 'piscstcsosn'
      Size = 3
    end
    object qryProdutoscofinscstcsosn: TStringField
      FieldName = 'cofinscstcsosn'
      Size = 3
    end
    object qryProdutosicmsrepasse: TStringField
      FieldName = 'icmsrepasse'
      Size = 1
    end
    object qryProdutosretornavel: TStringField
      FieldName = 'retornavel'
      Size = 1
    end
  end
  object dsUnidades: TDataSource
    DataSet = qryUnidades
    Left = 584
    Top = 164
  end
  object qryUnidades: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.unidade'
      'ORDER BY'
      '  descricao')
    Left = 584
    Top = 112
    object qryUnidadesunidade: TStringField
      FieldName = 'unidade'
      Size = 30
    end
    object qryUnidadesdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
  object dsEmitente: TDataSource
    Left = 648
    Top = 164
  end
  object qryApagarItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'DELETE'
      'FROM'
      '  commerce.nfeitens'
      'WHERE'
      '  ide_nnf = :pCODNOTA')
    Left = 712
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCODNOTA'
        Value = nil
      end>
  end
  object qryAlteraEstoque: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'UPDATE'
      '  commerce.produtos'
      'SET'
      '  estoque = estoque + :pESTOQUE'
      'WHERE'
      '  codigo = :pCODIGO')
    Left = 784
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pESTOQUE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pCODIGO'
        Value = nil
      end>
  end
  object tblMeiosPagamento: TUniTable
    TableName = 'commerce.meiospagamento'
    Connection = DM.Conexao
    Left = 856
    Top = 112
    object tblMeiosPagamentotpag: TStringField
      FieldName = 'tpag'
      Size = 2
    end
    object tblMeiosPagamentodescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
  object dsMeiosPagamento: TDataSource
    DataSet = tblMeiosPagamento
    Left = 848
    Top = 164
  end
  object dsTipoFrete: TDataSource
    DataSet = qryTipoFrete
    Left = 536
    Top = 164
  end
  object qryTipoFrete: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.tipofrete'
      'ORDER BY'
      '  modfrete')
    Left = 536
    Top = 112
    object qryTipoFretemodfrete: TIntegerField
      FieldName = 'modfrete'
    end
    object qryTipoFretedescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
  object qryNFe: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfe'
      'WHERE'
      '  ide_nnf = :pIDE_NNF'
      'AND'
      '  ide_mod = :pIDE_MOD'
      'AND'
      '  ide_serie = :pIDE_SERIE')
    Left = 960
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pIDE_NNF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pIDE_MOD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pIDE_SERIE'
        Value = nil
      end>
    object qryNFeinfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object qryNFeinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFeide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object qryNFeide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object qryNFeide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object qryNFeide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFeide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFeide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFeide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object qryNFeide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object qryNFeide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object qryNFeide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object qryNFeide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object qryNFeide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object qryNFeide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object qryNFeide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object qryNFeide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object qryNFeide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object qryNFeide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object qryNFeide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object qryNFeide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object qryNFeide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object qryNFeemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object qryNFeemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object qryNFeemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object qryNFeemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object qryNFeemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object qryNFeemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object qryNFeemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object qryNFeemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object qryNFeemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object qryNFeemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object qryNFeemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object qryNFeemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object qryNFedest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object qryNFedest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object qryNFedest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object qryNFedest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object qryNFedest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object qryNFedest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object qryNFedest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object qryNFedest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object qryNFedest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object qryNFedest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object qryNFedest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object qryNFedest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object qryNFedest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object qryNFedest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object qryNFetotal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object qryNFetotal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object qryNFetotal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object qryNFetotal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object qryNFetotal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object qryNFetotal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object qryNFetotal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object qryNFetotal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object qryNFetotal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object qryNFetotal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object qryNFetotal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object qryNFetotal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object qryNFetotal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object qryNFetotal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object qryNFetotal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object qryNFetotal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object qryNFetotal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object qryNFetotal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object qryNFetotal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object qryNFetotal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object qryNFetotal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object qryNFetotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object qryNFetransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object qryNFetransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object qryNFetransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object qryNFetransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object qryNFetransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object qryNFetransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object qryNFetransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object qryNFetransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object qryNFetransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object qryNFetransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object qryNFecobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object qryNFecobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object qryNFecobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object qryNFecobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object qryNFepag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object qryNFepag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object qryNFepag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object qryNFepag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object qryNFepag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object qryNFepag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object qryNFepag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object qryNFepag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object qryNFeinfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object qryNFeinfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object qryNFeinfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object qryNFeinfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object qryNFeinfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object qryNFesignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object qryNFeprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object qryNFecodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFecad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object qryNFecad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
    object qryNFeemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object qryNFedest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object qryNFeemit_enderemit_fone: TStringField
      FieldName = 'emit_enderemit_fone'
    end
    object qryNFedest_enderdest_fone: TStringField
      FieldName = 'dest_enderdest_fone'
    end
    object qryNFetransp_transporta_cnpj: TStringField
      FieldName = 'transp_transporta_cnpj'
    end
    object qryNFeinfresptec_cnpj: TStringField
      FieldName = 'infresptec_cnpj'
    end
    object qryNFetotal_icmstot_vTotTrib: TFloatField
      FieldName = 'total_icmstot_vTotTrib'
    end
    object qryNFexped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryNFeemit_im: TStringField
      FieldName = 'emit_im'
    end
    object qryNFeemit_cnae: TStringField
      FieldName = 'emit_cnae'
    end
    object qryNFeemit_enderemit_xcpl: TStringField
      FieldName = 'emit_enderemit_xcpl'
      Size = 200
    end
    object qryNFedest_Enderdest_xcpl: TStringField
      FieldName = 'dest_Enderdest_xcpl'
      Size = 200
    end
    object qryNFedest_im: TStringField
      FieldName = 'dest_im'
    end
    object qryNFecad_integracao: TIntegerField
      FieldName = 'cad_integracao'
    end
    object qryNFecad_integracao_dados: TStringField
      FieldName = 'cad_integracao_dados'
      Size = 200
    end
    object qryNFetransp_transporta_ie: TStringField
      FieldName = 'transp_transporta_ie'
    end
    object qryNFeemit_ie: TStringField
      FieldName = 'emit_ie'
    end
  end
  object qryIBPT: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.ibpt'
      'WHERE'
      '  codigo = :pNCM')
    Left = 920
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pNCM'
        Value = nil
      end>
    object qryIBPTcodigo: TStringField
      FieldName = 'codigo'
    end
    object qryIBPTtipo: TIntegerField
      FieldName = 'tipo'
    end
    object qryIBPTdecricao: TStringField
      FieldName = 'decricao'
      Size = 500
    end
    object qryIBPTnacionalfederal: TFloatField
      FieldName = 'nacionalfederal'
    end
    object qryIBPTimportadosfederal: TFloatField
      FieldName = 'importadosfederal'
    end
    object qryIBPTestadual: TFloatField
      FieldName = 'estadual'
    end
    object qryIBPTmunicipal: TFloatField
      FieldName = 'municipal'
    end
    object qryIBPTvigenciainicio: TDateField
      FieldName = 'vigenciainicio'
    end
    object qryIBPTvigenciafim: TDateField
      FieldName = 'vigenciafim'
    end
    object qryIBPTchave: TStringField
      FieldName = 'chave'
      Size = 200
    end
    object qryIBPTversao: TStringField
      FieldName = 'versao'
      Size = 200
    end
    object qryIBPTfonte: TStringField
      FieldName = 'fonte'
      Size = 200
    end
  end
  object tblEmitente: TUniTable
    TableName = 'commerce.empresa'
    Connection = DM.Conexao
    Left = 648
    Top = 112
    object tblEmitentecodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblEmitentefilial: TStringField
      FieldName = 'filial'
      Size = 50
    end
    object tblEmitentenotafiscal: TIntegerField
      FieldName = 'notafiscal'
    end
    object tblEmitenteendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object tblEmitentecidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object tblEmitenteuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object tblEmitentecep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object tblEmitentetelefone: TStringField
      FieldName = 'telefone'
      Size = 25
    end
    object tblEmitentecnpj: TStringField
      FieldName = 'cnpj'
      Size = 25
    end
    object tblEmitenteie: TStringField
      FieldName = 'ie'
      Size = 14
    end
    object tblEmitenteseqnf: TIntegerField
      FieldName = 'seqnf'
    end
    object tblEmitentefax: TStringField
      FieldName = 'fax'
      Size = 25
    end
    object tblEmitenteobs1: TStringField
      FieldName = 'obs1'
      Size = 100
    end
    object tblEmitenteobs2: TStringField
      FieldName = 'obs2'
      Size = 100
    end
    object tblEmitentecontribuinte_ipi: TStringField
      FieldName = 'contribuinte_ipi'
      Size = 1
    end
    object tblEmitentesubstituto_tributario: TStringField
      FieldName = 'substituto_tributario'
      Size = 1
    end
    object tblEmitenteempresa_estadual: TStringField
      FieldName = 'empresa_estadual'
      Size = 1
    end
    object tblEmitenteoptante_simples: TStringField
      FieldName = 'optante_simples'
      Size = 1
    end
    object tblEmitenteoptante_super_simples: TStringField
      FieldName = 'optante_super_simples'
      Size = 1
    end
    object tblEmitenteecf: TStringField
      FieldName = 'ecf'
      Size = 1
    end
    object tblEmitentetipo: TIntegerField
      FieldName = 'tipo'
    end
    object tblEmitenteipi: TFloatField
      FieldName = 'ipi'
    end
    object tblEmitenteiss: TFloatField
      FieldName = 'iss'
    end
    object tblEmitentenumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object tblEmitenteresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 50
    end
    object tblEmitentecomplemento: TStringField
      FieldName = 'complemento'
      Size = 50
    end
    object tblEmitentebairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object tblEmitentefarmacia_resp_tecnico: TStringField
      FieldName = 'farmacia_resp_tecnico'
      Size = 50
    end
    object tblEmitentefarmacia_crf: TStringField
      FieldName = 'farmacia_crf'
      Size = 10
    end
    object tblEmitentefarmacia_cpf: TStringField
      FieldName = 'farmacia_cpf'
      Size = 14
    end
    object tblEmitentefarmcia_data: TDateField
      FieldName = 'farmcia_data'
    end
    object tblEmitentefarmacia_uf: TStringField
      FieldName = 'farmacia_uf'
      Size = 2
    end
    object tblEmitentefarmacia_senha: TStringField
      FieldName = 'farmacia_senha'
      Size = 10
    end
    object tblEmitentefarmacia_email: TStringField
      FieldName = 'farmacia_email'
      Size = 10
    end
    object tblEmitentefarmacia_login: TStringField
      FieldName = 'farmacia_login'
    end
    object tblEmitentefarmacia_envio: TStringField
      FieldName = 'farmacia_envio'
      Size = 100
    end
    object tblEmitenteconhecimento: TIntegerField
      FieldName = 'conhecimento'
    end
    object tblEmitenteindustria: TStringField
      FieldName = 'industria'
      Size = 1
    end
    object tblEmitentefarmacia_numerolicenca: TStringField
      FieldName = 'farmacia_numerolicenca'
    end
    object tblEmitentecod_municipio_ibge: TStringField
      FieldName = 'cod_municipio_ibge'
      Size = 10
    end
    object tblEmitenteibge: TStringField
      FieldName = 'ibge'
      Size = 10
    end
    object tblEmitentepis: TFloatField
      FieldName = 'pis'
    end
    object tblEmitentecofins: TFloatField
      FieldName = 'cofins'
    end
    object tblEmitenteemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object tblEmitenteatividade: TStringField
      FieldName = 'atividade'
      Size = 40
    end
    object tblEmitentecontador_cod_municipio_ibge: TStringField
      FieldName = 'contador_cod_municipio_ibge'
      Size = 10
    end
    object tblEmitentecontador_nome: TStringField
      FieldName = 'contador_nome'
      Size = 60
    end
    object tblEmitentecontador_cpf: TStringField
      FieldName = 'contador_cpf'
    end
    object tblEmitentecontador_crc: TStringField
      FieldName = 'contador_crc'
      Size = 15
    end
    object tblEmitentecontador_cnpj: TStringField
      FieldName = 'contador_cnpj'
      Size = 25
    end
    object tblEmitentecontador_cep: TStringField
      FieldName = 'contador_cep'
      Size = 10
    end
    object tblEmitentecontador_endereco: TStringField
      FieldName = 'contador_endereco'
      Size = 60
    end
    object tblEmitentecontador_numero: TStringField
      FieldName = 'contador_numero'
      Size = 5
    end
    object tblEmitentecontador_complemento: TStringField
      FieldName = 'contador_complemento'
      Size = 60
    end
    object tblEmitentecontador_bairro: TStringField
      FieldName = 'contador_bairro'
      Size = 60
    end
    object tblEmitentecontador_fone: TStringField
      FieldName = 'contador_fone'
      Size = 15
    end
    object tblEmitentecontador_fax: TStringField
      FieldName = 'contador_fax'
      Size = 15
    end
    object tblEmitentecontador_email: TStringField
      FieldName = 'contador_email'
      Size = 60
    end
    object tblEmitenteinsc_municipal: TStringField
      FieldName = 'insc_municipal'
    end
    object tblEmitentedata_abertura: TDateField
      FieldName = 'data_abertura'
    end
    object tblEmitentecnae: TStringField
      FieldName = 'cnae'
      Size = 10
    end
    object tblEmitentecrt: TStringField
      FieldName = 'crt'
      Size = 1
    end
    object tblEmitentecontador_cidade: TStringField
      FieldName = 'contador_cidade'
      Size = 30
    end
    object tblEmitentecontador_cod_municipio: TStringField
      FieldName = 'contador_cod_municipio'
      Size = 30
    end
    object tblEmitentecontador_uf: TStringField
      FieldName = 'contador_uf'
      Size = 2
    end
    object tblEmitentepermite_credito: TIntegerField
      FieldName = 'permite_credito'
    end
    object tblEmitentefantasia: TStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object tblEmitentedfixas: TFloatField
      FieldName = 'dfixas'
    end
    object tblEmitentetipocalculo: TIntegerField
      FieldName = 'tipocalculo'
    end
    object tblEmitenteserie_cte: TStringField
      FieldName = 'serie_cte'
      Size = 6
    end
    object tblEmitenteseq_cte: TStringField
      FieldName = 'seq_cte'
      Size = 6
    end
    object tblEmitentecod_pais: TStringField
      FieldName = 'cod_pais'
    end
    object tblEmitentepais: TStringField
      FieldName = 'pais'
      Size = 50
    end
    object tblEmitentehomepage: TStringField
      FieldName = 'homepage'
      Size = 100
    end
    object tblEmitenteaidf: TStringField
      FieldName = 'aidf'
    end
    object tblEmitenteninicial: TStringField
      FieldName = 'ninicial'
    end
    object tblEmitentenfinal: TStringField
      FieldName = 'nfinal'
    end
    object tblEmitenten_nf_d: TStringField
      FieldName = 'n_nf_d'
    end
    object tblEmitentevalidade: TStringField
      FieldName = 'validade'
    end
    object tblEmitenterntrc: TStringField
      FieldName = 'rntrc'
      Size = 45
    end
    object tblEmitenteserie_mdfe: TIntegerField
      FieldName = 'serie_mdfe'
    end
    object tblEmitentenumero_mdfe: TIntegerField
      FieldName = 'numero_mdfe'
    end
    object tblEmitentemail_server: TStringField
      FieldName = 'mail_server'
      Size = 120
    end
    object tblEmitentemail_porta: TStringField
      FieldName = 'mail_porta'
      Size = 15
    end
    object tblEmitentemail_username: TStringField
      FieldName = 'mail_username'
      Size = 120
    end
    object tblEmitentemail_password: TStringField
      FieldName = 'mail_password'
      Size = 120
    end
    object tblEmitentemail_cabecalho: TStringField
      FieldName = 'mail_cabecalho'
      Size = 120
    end
    object tblEmitentemail_assunto: TStringField
      FieldName = 'mail_assunto'
      Size = 120
    end
    object tblEmitentemail_ssl: TStringField
      FieldName = 'mail_ssl'
      Size = 1
    end
    object tblEmitentemail_tls: TStringField
      FieldName = 'mail_tls'
      Size = 1
    end
    object tblEmitentereptec_cnpj: TStringField
      FieldName = 'reptec_cnpj'
      Size = 14
    end
    object tblEmitentereptec_contato: TStringField
      FieldName = 'reptec_contato'
      Size = 60
    end
    object tblEmitentereptec_email: TStringField
      FieldName = 'reptec_email'
      Size = 60
    end
    object tblEmitentereptec_fone: TStringField
      FieldName = 'reptec_fone'
      Size = 14
    end
    object tblEmitentereptec_idcsrt: TIntegerField
      FieldName = 'reptec_idcsrt'
    end
    object tblEmitentereptec_csrt: TStringField
      FieldName = 'reptec_csrt'
      Size = 28
    end
    object tblEmitentepercentual_credito_icms: TFloatField
      FieldName = 'percentual_credito_icms'
    end
    object tblEmitenteidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblEmitentecomentarios: TStringField
      FieldName = 'comentarios'
      Size = 50
    end
    object tblEmitentedatahora_inicial: TDateField
      FieldName = 'datahora_inicial'
    end
    object tblEmitentedatahora_final: TDateField
      FieldName = 'datahora_final'
    end
    object tblEmitentedata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object tblEmitenteestoque: TFloatField
      FieldName = 'estoque'
    end
    object tblEmitentevalor: TFloatField
      FieldName = 'valor'
    end
    object tblEmitentecpf: TStringField
      FieldName = 'cpf'
    end
    object tblEmitenterg: TStringField
      FieldName = 'rg'
    end
    object tblEmitentedia_vencimento_chave: TStringField
      FieldName = 'dia_vencimento_chave'
      Size = 2
    end
    object tblEmitenteemail_financeiro: TStringField
      FieldName = 'email_financeiro'
      Size = 200
    end
    object tblEmitenteatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblEmitenteserie_nfe: TIntegerField
      FieldName = 'serie_nfe'
    end
    object tblEmitenteseq_nfe: TIntegerField
      FieldName = 'seq_nfe'
    end
    object tblEmitentelogo: TStringField
      FieldName = 'logo'
      Size = 500
    end
    object tblEmitentecodigoibge: TStringField
      FieldName = 'codigoibge'
      Size = 40
    end
    object tblEmitenteseq_nfce: TIntegerField
      FieldName = 'seq_nfce'
    end
    object tblEmitenteserie_nfce: TIntegerField
      FieldName = 'serie_nfce'
    end
  end
  object tblSalvaItens: TUniTable
    TableName = 'commerce.nfeitens'
    Connection = DM.Conexao
    Left = 992
    Top = 108
    object tblSalvaItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object tblSalvaItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object tblSalvaItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object tblSalvaItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object tblSalvaItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object tblSalvaItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object tblSalvaItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object tblSalvaItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object tblSalvaItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object tblSalvaItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object tblSalvaItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object tblSalvaItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object tblSalvaItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object tblSalvaItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object tblSalvaItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object tblSalvaItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object tblSalvaItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object tblSalvaItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object tblSalvaItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object tblSalvaItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object tblSalvaItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object tblSalvaItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object tblSalvaItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object tblSalvaItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object tblSalvaItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object tblSalvaItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object tblSalvaItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object tblSalvaItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object tblSalvaItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object tblSalvaItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object tblSalvaItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object tblSalvaItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object tblSalvaItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tblSalvaItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object tblSalvaItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object tblSalvaItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object tblSalvaItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object tblSalvaItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
    object tblSalvaItenscsosn: TIntegerField
      FieldName = 'csosn'
    end
    object tblSalvaItensAliquota_STEfetivo: TFloatField
      FieldName = 'Aliquota_STEfetivo'
    end
    object tblSalvaItensnitemped: TStringField
      FieldName = 'nitemped'
      Size = 50
    end
    object tblSalvaItensxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object tblSalvaItensdet_prod_vdesc: TFloatField
      FieldName = 'det_prod_vdesc'
    end
    object tblSalvaItensdet_prod_voutro: TFloatField
      FieldName = 'det_prod_voutro'
    end
    object tblSalvaItensdet_prod_vfrete: TFloatField
      FieldName = 'det_prod_vfrete'
    end
    object tblSalvaItensdet_prod_vseg: TFloatField
      FieldName = 'det_prod_vseg'
    end
    object tblSalvaItensdet_prod_ncm: TStringField
      FieldName = 'det_prod_ncm'
    end
  end
end
