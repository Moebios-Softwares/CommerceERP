object frmNFe: TfrmNFe
  Left = 0
  Top = 0
  Caption = 'Notas Fiscais Eletr'#244'nicas'
  ClientHeight = 729
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
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
      Caption = 'NFe'
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
  object grdNFe: TcxGrid
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
    object grdNFeView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FindPanel.DisplayMode = fpdmAlways
      FindPanel.InfoText = 'Pesquise por aqui...'
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCellDblClick = grdNFeViewCellDblClick
      DataController.DataSource = dsNFe
      DataController.KeyFieldNames = 'codigo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = 'Sem notas fiscais'
      OptionsView.ColumnAutoWidth = True
      Styles.Content = Linha
      Styles.ContentEven = Linha2
      Styles.ContentOdd = Linha
      object grdNFeViewnumero: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'ide_nnf'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 72
      end
      object grdNFeViewide_serie: TcxGridDBColumn
        Caption = 'S'#233'rie'
        DataBinding.FieldName = 'ide_serie'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.UseLeftAlignmentOnEditing = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object grdNFeViewide_mod: TcxGridDBColumn
        Caption = 'Modelo'
        DataBinding.FieldName = 'ide_mod'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.UseLeftAlignmentOnEditing = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
      object grdNFeViewtipo: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'ide_tpnf'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 74
      end
      object grdNFeViewnome: TcxGridDBColumn
        Caption = 'Destinat'#225'rio'
        DataBinding.FieldName = 'dest_xnome'
        Width = 465
      end
      object grdNFeViewcfop: TcxGridDBColumn
        Caption = 'CFOP'
        DataBinding.FieldName = 'cad_cfop'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 45
      end
      object grdNFeViewdata: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'ide_dhemi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 104
      end
      object grdNFeViewvalor_produtos: TcxGridDBColumn
        Caption = 'Produtos'
        DataBinding.FieldName = 'total_icmstot_vprod'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 126
      end
      object grdNFeViewdesconto: TcxGridDBColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'total_icmstot_vdesc'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 105
      end
      object grdNFeViewfrete: TcxGridDBColumn
        Caption = 'Frete'
        DataBinding.FieldName = 'total_icmstot_vfrete'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 109
      end
      object grdNFeViewtotal_nota: TcxGridDBColumn
        Caption = 'Total da Nota'
        DataBinding.FieldName = 'total_icmstot_vnf'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 117
      end
      object grdNFeViewnfe_situacao: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'cad_status'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <>
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 88
      end
      object grdNFeViewEmitir: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
              662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
              6C7573747261746F722032312E312E302C20535647204578706F727420506C75
              672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
              2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
              617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
              2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
              77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
              22307078220D0A092076696577426F783D223020302033322033322220737479
              6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
              2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
              796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
              6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
              31353B7D0D0A092E426C61636B7B66696C6C3A233732373237323B7D0D0A092E
              477265656E7B66696C6C3A233033394332333B7D0D0A092E5265647B66696C6C
              3A234431314331433B7D0D0A092E7374307B6F7061636974793A302E37353B7D
              0D0A092E7374317B6F7061636974793A302E353B7D0D0A3C2F7374796C653E0D
              0A3C672069643D2253656E64223E0D0A093C706F6C79676F6E20636C6173733D
              22426C75652220706F696E74733D22322C323020382C32322E342032342C3130
              2031322C32342031322C33302031362E332C32352E372032322C32382033302C
              322009222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = grdNFeViewEmitirPropertiesButtonClick
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
      end
    end
    object grdNFeLevel1: TcxGridLevel
      GridView = grdNFeView
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
      Caption = 'Nova NFe'
      Category = 0
      Hint = 'Nova NFe'
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
  object qryNFe: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfe'
      'ORDER BY'
      '  ide_nNF '
      'DESC')
    BeforeDelete = qryNFeBeforeDelete
    Left = 524
    Top = 56
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
  object dsNFe: TDataSource
    DataSet = qryNFe
    Left = 468
    Top = 56
  end
  object qryApagarItens: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'DELETE'
      'FROM'
      '  commerce.nfeitens'
      'WHERE'
      '  ide_nnf = :pCODNOTA')
    Left = 584
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCODNOTA'
        Value = nil
      end>
  end
  object qryNFeEmissao: TUniQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfe'
      'WHERE'
      '  ide_nnf = :pIDE_NNF'
      'AND'
      '  ide_serie = :pIDE_SERIE'
      'AND'
      '  ide_mod = :pIDE_MOD')
    BeforeDelete = qryNFeBeforeDelete
    Left = 524
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pIDE_NNF'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pIDE_SERIE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pIDE_MOD'
        Value = nil
      end>
    object qryNFeEmissaoinfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object qryNFeEmissaoinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFeEmissaoide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object qryNFeEmissaoide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object qryNFeEmissaoide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object qryNFeEmissaoide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFeEmissaoide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFeEmissaoide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFeEmissaoide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object qryNFeEmissaoide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object qryNFeEmissaoide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object qryNFeEmissaoide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object qryNFeEmissaoide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object qryNFeEmissaoide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object qryNFeEmissaoide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object qryNFeEmissaoide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object qryNFeEmissaoide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object qryNFeEmissaoide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object qryNFeEmissaoide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object qryNFeEmissaoide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object qryNFeEmissaoide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object qryNFeEmissaoide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object qryNFeEmissaoemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object qryNFeEmissaoemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object qryNFeEmissaoemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object qryNFeEmissaoemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object qryNFeEmissaoemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object qryNFeEmissaoemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object qryNFeEmissaoemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object qryNFeEmissaoemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object qryNFeEmissaoemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object qryNFeEmissaoemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object qryNFeEmissaoemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object qryNFeEmissaoemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object qryNFeEmissaodest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object qryNFeEmissaodest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object qryNFeEmissaodest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object qryNFeEmissaodest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object qryNFeEmissaodest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object qryNFeEmissaodest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object qryNFeEmissaodest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object qryNFeEmissaodest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object qryNFeEmissaodest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object qryNFeEmissaodest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object qryNFeEmissaodest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object qryNFeEmissaodest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object qryNFeEmissaodest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object qryNFeEmissaodest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object qryNFeEmissaototal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object qryNFeEmissaototal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object qryNFeEmissaototal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object qryNFeEmissaototal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object qryNFeEmissaototal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object qryNFeEmissaototal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object qryNFeEmissaototal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object qryNFeEmissaototal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object qryNFeEmissaototal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object qryNFeEmissaototal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object qryNFeEmissaototal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object qryNFeEmissaototal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object qryNFeEmissaototal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object qryNFeEmissaototal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object qryNFeEmissaototal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object qryNFeEmissaototal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object qryNFeEmissaototal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object qryNFeEmissaototal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object qryNFeEmissaototal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object qryNFeEmissaototal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object qryNFeEmissaototal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object qryNFeEmissaototal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object qryNFeEmissaotransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object qryNFeEmissaotransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object qryNFeEmissaotransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object qryNFeEmissaotransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object qryNFeEmissaotransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object qryNFeEmissaotransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object qryNFeEmissaotransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object qryNFeEmissaotransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object qryNFeEmissaotransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object qryNFeEmissaotransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object qryNFeEmissaocobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object qryNFeEmissaocobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object qryNFeEmissaocobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object qryNFeEmissaocobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object qryNFeEmissaopag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object qryNFeEmissaopag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object qryNFeEmissaopag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object qryNFeEmissaopag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object qryNFeEmissaopag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object qryNFeEmissaopag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object qryNFeEmissaopag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object qryNFeEmissaopag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object qryNFeEmissaoinfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object qryNFeEmissaoinfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object qryNFeEmissaoinfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object qryNFeEmissaoinfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object qryNFeEmissaoinfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object qryNFeEmissaosignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object qryNFeEmissaoprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object qryNFeEmissaocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFeEmissaocad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object qryNFeEmissaocad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
    object qryNFeEmissaoemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
    end
    object qryNFeEmissaodest_cnpj: TStringField
      FieldName = 'dest_cnpj'
    end
    object qryNFeEmissaoemit_enderemit_fone: TStringField
      FieldName = 'emit_enderemit_fone'
    end
    object qryNFeEmissaodest_enderdest_fone: TStringField
      FieldName = 'dest_enderdest_fone'
    end
    object qryNFeEmissaotransp_transporta_cnpj: TStringField
      FieldName = 'transp_transporta_cnpj'
    end
    object qryNFeEmissaoinfresptec_cnpj: TStringField
      FieldName = 'infresptec_cnpj'
    end
    object qryNFeEmissaototal_icmstot_vTotTrib: TFloatField
      FieldName = 'total_icmstot_vTotTrib'
    end
    object qryNFeEmissaoxped: TStringField
      FieldName = 'xped'
      Size = 50
    end
    object qryNFeEmissaoemit_im: TStringField
      FieldName = 'emit_im'
    end
    object qryNFeEmissaoemit_cnae: TStringField
      FieldName = 'emit_cnae'
    end
    object qryNFeEmissaoemit_enderemit_xcpl: TStringField
      FieldName = 'emit_enderemit_xcpl'
      Size = 200
    end
    object qryNFeEmissaodest_Enderdest_xcpl: TStringField
      FieldName = 'dest_Enderdest_xcpl'
      Size = 200
    end
    object qryNFeEmissaodest_im: TStringField
      FieldName = 'dest_im'
    end
    object qryNFeEmissaocad_integracao: TIntegerField
      FieldName = 'cad_integracao'
    end
    object qryNFeEmissaocad_integracao_dados: TStringField
      FieldName = 'cad_integracao_dados'
      Size = 200
    end
    object qryNFeEmissaotransp_transporta_ie: TStringField
      FieldName = 'transp_transporta_ie'
    end
    object qryNFeEmissaoemit_ie: TStringField
      FieldName = 'emit_ie'
    end
  end
end
