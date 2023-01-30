object frmCadastroFuncionarios: TfrmCadastroFuncionarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 431
  ClientWidth = 1024
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
    Width = 1024
    Height = 276
    Align = alClient
    TabOrder = 0
    AutoSize = True
    object edtCodigo: TcxDBTextEdit
      Left = 10
      Top = 28
      AutoSize = False
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 0
      OnExit = edtCodigoExit
      Height = 25
      Width = 60
    end
    object edtNome: TcxDBTextEdit
      Left = 76
      Top = 28
      AutoSize = False
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.OnChange = edtNomePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      OnExit = edtNomeExit
      Height = 25
      Width = 938
    end
    object edtDataDemissao: TcxDBDateEdit
      Left = 910
      Top = 80
      AutoSize = False
      DataBinding.DataField = 'data_demissao'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 25
      Width = 104
    end
    object edtCPF: TcxDBMaskEdit
      Left = 10
      Top = 77
      AutoSize = False
      DataBinding.DataField = 'cpf'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.EditMask = '000.000.000-00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 28
      Width = 481
    end
    object edtEndereco: TcxDBTextEdit
      Left = 10
      Top = 129
      AutoSize = False
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 25
      Width = 931
    end
    object edtEnderecoNumero: TcxDBTextEdit
      Left = 947
      Top = 129
      AutoSize = False
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 28
      Width = 67
    end
    object edtBairro: TcxDBTextEdit
      Left = 10
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 28
      Width = 183
    end
    object edtCidade: TcxDBTextEdit
      Left = 199
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'cidade'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 28
      Width = 242
    end
    object edtUF: TcxDBComboBox
      Left = 447
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'uf'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 28
      Width = 44
    end
    object edtComplemento: TcxDBTextEdit
      Left = 712
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'complemento'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Height = 28
      Width = 302
    end
    object edtCEP: TcxDBMaskEdit
      Left = 497
      Top = 181
      AutoSize = False
      DataBinding.DataField = 'cep'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.EditMask = '00.000-000'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Height = 28
      Width = 169
    end
    object edtTelefone: TcxDBMaskEdit
      Left = 10
      Top = 233
      AutoSize = False
      DataBinding.DataField = 'telefone'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.EditMask = '(00) 00000-0000'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Height = 25
      Width = 183
    end
    object edtRG: TcxDBTextEdit
      Left = 497
      Top = 77
      AutoSize = False
      DataBinding.DataField = 'rg'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 28
      Width = 170
    end
    object cxButton1: TcxButton
      Left = 672
      Top = 181
      Width = 34
      Height = 28
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC200000EC20115284A8000000012744558745469
        746C650046696E643B5365617263683BAD078F620000016A49444154785EA591
        CD4A02611486BD8A46A789F1278568DFD65DB408341A1DB5C69F748CB983C84D
        942EEC565A0981E6FC383FB60964EA0A0A6951B619086C33703A332048F6CDC6
        17DE8FB3799F73CE774200B096FD67A16DD14CC71B660FFD1EAB1B9E7BD19A99
        0EAD6A159014CD56B26941EA7C0C471D1BB2373624C43144AB06B015BD1504F0
        3B27450B326D1BA65F3FB090571F5E4D802D8F80A98C0E8800EC64ED4A8F7EE0
        AF5E3FE6906A18C008EA3D11106F584EF1F60548CA759E8139D1666440DD740A
        5D32806BDB0850C880E89961ED4816BC7DCEFF5D2151D7812E05ACE09D8AAD99
        AEF761D3D9D22762BD7FF9049B25052225B51D7846B632BAC07341ACAA43F67A
        0219342B6818D6BC30448AAA4BF3324F02F862CACADE96A0F79953CDA105348E
        4D17D52E861180531414974208014056981F4A1886302F4398935D8A93791280
        0CE18612951F009597813AEE7F1300C1DAC83D34A97CDFD9E00677CB8075BC3E
        E0171A811CE8F7E0E9CD0000000049454E44AE426082}
      TabOrder = 13
      OnClick = cxButton1Click
    end
    object edtEmail: TcxDBTextEdit
      Left = 199
      Top = 233
      AutoSize = False
      DataBinding.DataField = 'email'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Height = 25
      Width = 292
    end
    object edtDataAdmisao: TcxDBDateEdit
      Left = 800
      Top = 77
      AutoSize = False
      DataBinding.DataField = 'data_admissao'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 28
      Width = 104
    end
    object edtCTPS: TcxDBTextEdit
      Left = 673
      Top = 77
      AutoSize = False
      DataBinding.DataField = 'ctps'
      DataBinding.DataSource = dsFuncionarios
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 28
      Width = 121
    end
    object edtUsuario: TcxDBTextEdit
      Left = 497
      Top = 233
      AutoSize = False
      DataBinding.DataField = 'usuario'
      DataBinding.DataSource = dsFuncionarios
      ParentFont = False
      Properties.OnChange = edtUsuarioPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Height = 25
      Width = 517
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 4
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = edtCodigo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = edtNome
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Demiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDataDemissao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CPF'
      CaptionOptions.Layout = clTop
      Control = edtCPF
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 215
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Bairro'
      CaptionOptions.Layout = clTop
      Control = edtBairro
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CEP'
      CaptionOptions.Layout = clTop
      Control = edtCEP
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Cidade'
      CaptionOptions.Layout = clTop
      Control = edtCidade
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Complemento'
      CaptionOptions.Layout = clTop
      Control = edtComplemento
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 243
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Endere'#231'o'
      CaptionOptions.Layout = clTop
      Control = edtEndereco
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 401
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = edtEnderecoNumero
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'RG'
      CaptionOptions.Layout = clTop
      Control = edtRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Telefone'
      CaptionOptions.Layout = clTop
      Control = edtTelefone
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'UF'
      CaptionOptions.Layout = clTop
      Control = edtUF
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'E-mail'
      CaptionOptions.Layout = clTop
      Control = edtEmail
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 292
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Data de Admiss'#227'o'
      CaptionOptions.Layout = clTop
      Control = edtDataAdmisao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CTPS'
      CaptionOptions.Layout = clTop
      Control = edtCTPS
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Usu'#225'rio no sistema'
      CaptionOptions.Layout = clTop
      Control = edtUsuario
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 276
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1024
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
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 408
    Width = 1024
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
    Left = 456
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
      OnClick = btnExcluirClick
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
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 456
    Top = 8
  end
  object tblFuncionarios: TUniTable
    TableName = 'commerce.funcionarios'
    Connection = DM.Conexao
    LockMode = lmNone
    Left = 376
    Top = 56
    object tblFuncionarioscodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblFuncionariosnome: TStringField
      FieldName = 'nome'
      Size = 80
    end
    object tblFuncionariosendereco: TStringField
      FieldName = 'endereco'
      Size = 80
    end
    object tblFuncionariosbairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object tblFuncionarioscidade: TStringField
      FieldName = 'cidade'
      Size = 40
    end
    object tblFuncionariosuf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object tblFuncionarioscep: TStringField
      FieldName = 'cep'
      Size = 10
    end
    object tblFuncionariostelefone: TStringField
      FieldName = 'telefone'
    end
    object tblFuncionarioscelular: TStringField
      FieldName = 'celular'
    end
    object tblFuncionariosemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object tblFuncionarioscpf: TStringField
      FieldName = 'cpf'
      Size = 15
    end
    object tblFuncionariosrg: TStringField
      FieldName = 'rg'
      Size = 25
    end
    object tblFuncionariosctps: TStringField
      FieldName = 'ctps'
      Size = 25
    end
    object tblFuncionariosfuncao: TStringField
      FieldName = 'funcao'
      Size = 30
    end
    object tblFuncionariosdata_admissao: TDateField
      FieldName = 'data_admissao'
    end
    object tblFuncionariosdata_demissao: TDateField
      FieldName = 'data_demissao'
    end
    object tblFuncionariossituacao: TIntegerField
      FieldName = 'situacao'
    end
    object tblFuncionariossalario: TFloatField
      FieldName = 'salario'
    end
    object tblFuncionarioscomissao: TFloatField
      FieldName = 'comissao'
    end
    object tblFuncionariosobs1: TStringField
      FieldName = 'obs1'
      Size = 80
    end
    object tblFuncionariosobs2: TStringField
      FieldName = 'obs2'
      Size = 80
    end
    object tblFuncionariosobs3: TStringField
      FieldName = 'obs3'
      Size = 80
    end
    object tblFuncionariosnascimento: TDateField
      FieldName = 'nascimento'
    end
    object tblFuncionariosf_caixa: TIntegerField
      FieldName = 'f_caixa'
    end
    object tblFuncionariosf_vendedor: TIntegerField
      FieldName = 'f_vendedor'
    end
    object tblFuncionariosf_tecnico: TIntegerField
      FieldName = 'f_tecnico'
    end
    object tblFuncionariosnumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object tblFuncionariossenha: TStringField
      FieldName = 'senha'
      Size = 200
    end
    object tblFuncionariosativa: TStringField
      FieldName = 'ativa'
      Size = 10
    end
    object tblFuncionariosaprova_desconto: TStringField
      FieldName = 'aprova_desconto'
      Size = 1
    end
    object tblFuncionariosabrir_caixa: TStringField
      FieldName = 'abrir_caixa'
      Size = 1
    end
    object tblFuncionariosfecha_caixa: TStringField
      FieldName = 'fecha_caixa'
      Size = 1
    end
    object tblFuncionariosconfiguracoes: TStringField
      FieldName = 'configuracoes'
      Size = 1
    end
    object tblFuncionarioscancelar_venda: TStringField
      FieldName = 'cancelar_venda'
      Size = 1
    end
    object tblFuncionarioscancelar_item: TStringField
      FieldName = 'cancelar_item'
      Size = 1
    end
    object tblFuncionariosatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblFuncionariosidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblFuncionariosusuario: TStringField
      FieldName = 'usuario'
      Size = 80
    end
  end
  object dsFuncionarios: TDataSource
    DataSet = tblFuncionarios
    Left = 376
    Top = 8
  end
end
