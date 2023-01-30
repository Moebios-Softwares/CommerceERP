object frmCadastroPessoa: TfrmCadastroPessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastrar Pessoa'
  ClientHeight = 522
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 499
    Width = 792
    Height = 23
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 792
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 132
    Width = 792
    Height = 367
    Align = alClient
    TabOrder = 2
    AutoSize = True
    object edtCodigo: TcxDBTextEdit
      Left = 13
      Top = 36
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edtCodigoExit
      Width = 60
    end
    object edtNome: TcxDBTextEdit
      Left = 81
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = dsPessoas
      Properties.OnChange = edtNomePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edtNomeExit
      Height = 25
      Width = 586
    end
    object edtDataCadastro: TcxDBDateEdit
      Left = 675
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'data_cadastro'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      OnExit = edtDataCadastroExit
      Height = 25
      Width = 104
    end
    object edtCNPJ: TcxDBMaskEdit
      Left = 13
      Top = 92
      DataBinding.DataField = 'cpf'
      DataBinding.DataSource = dsPessoas
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.EditMask = '00.000.000/0000-00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      OnExit = edtCNPJExit
      OnKeyPress = edtCNPJKeyPress
      Width = 417
    end
    object edtEndereco: TcxDBTextEdit
      Left = 13
      Top = 151
      AutoSize = False
      DataBinding.DataField = 'endereco'
      DataBinding.DataSource = dsPessoas
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 25
      Width = 291
    end
    object edtEnderecoNumero: TcxDBTextEdit
      Left = 312
      Top = 151
      AutoSize = False
      DataBinding.DataField = 'numero'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 28
      Width = 67
    end
    object edtBairro: TcxDBTextEdit
      Left = 387
      Top = 151
      AutoSize = False
      DataBinding.DataField = 'bairro'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Height = 28
      Width = 121
    end
    object edtCidade: TcxDBTextEdit
      Left = 516
      Top = 151
      AutoSize = False
      DataBinding.DataField = 'cidade'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Height = 28
      Width = 211
    end
    object edtUF: TcxDBComboBox
      Left = 735
      Top = 151
      AutoSize = False
      DataBinding.DataField = 'uf'
      DataBinding.DataSource = dsPessoas
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
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Height = 28
      Width = 44
    end
    object edtComplemento: TcxDBTextEdit
      Left = 170
      Top = 210
      AutoSize = False
      DataBinding.DataField = 'complemento'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Height = 28
      Width = 243
    end
    object edtCEP: TcxDBMaskEdit
      Left = 421
      Top = 210
      AutoSize = False
      DataBinding.DataField = 'cep'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Properties.EditMask = '00.000-000'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Height = 25
      Width = 123
    end
    object edtTelefone: TcxDBMaskEdit
      Left = 13
      Top = 210
      AutoSize = False
      DataBinding.DataField = 'telefone1'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Properties.EditMask = '(00) 00000-0000'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Height = 28
      Width = 149
    end
    object edtIE: TcxDBTextEdit
      Left = 480
      Top = 95
      DataBinding.DataField = 'rg'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 170
    end
    object edtResponsavel: TcxDBTextEdit
      Left = 13
      Top = 269
      AutoSize = False
      DataBinding.DataField = 'responsavel'
      DataBinding.DataSource = dsPessoas
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Height = 28
      Width = 573
    end
    object edtAbertura: TcxDBDateEdit
      Left = 658
      Top = 95
      AutoSize = False
      DataBinding.DataField = 'data_ultimacompra'
      DataBinding.DataSource = dsPessoas
      Properties.Alignment.Horz = taCenter
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Height = 25
      Width = 121
    end
    object btnBuscaCNPJ: TcxButton
      Left = 438
      Top = 92
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
      TabOrder = 4
      OnClick = btnBuscaCNPJClick
    end
    object cxButton1: TcxButton
      Left = 552
      Top = 210
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
      TabOrder = 15
      OnClick = cxButton1Click
    end
    object edtTipoPessoa: TcxDBRadioGroup
      Left = 594
      Top = 187
      Caption = 'Tipo de pessoa'
      DataBinding.DataField = 'tipopessoa'
      DataBinding.DataSource = dsPessoas
      Properties.Items = <
        item
          Caption = 'Cliente'
          Value = 'Cliente'
        end
        item
          Caption = 'Fornecedor'
          Value = 'Fornecedor'
        end
        item
          Caption = 'Transportadora'
          Value = 'Transportadora'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 17
      Height = 110
      Width = 185
    end
    object edtEmail: TcxDBTextEdit
      Left = 13
      Top = 328
      DataBinding.DataField = 'email'
      DataBinding.DataSource = dsPessoas
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 766
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
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
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Cadastro'
      CaptionOptions.Layout = clTop
      Control = edtDataCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CPF / CNPJ'
      CaptionOptions.Layout = clTop
      Control = edtCNPJ
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 349
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'btnBuscarCertificado'
      CaptionOptions.Visible = False
      Control = btnBuscaCNPJ
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Data de Abertura'
      CaptionOptions.Layout = clTop
      Control = edtAbertura
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Bairro'
      CaptionOptions.Layout = clTop
      Control = edtBairro
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'CEP'
      CaptionOptions.Layout = clTop
      Control = edtCEP
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Cidade'
      CaptionOptions.Layout = clTop
      Control = edtCidade
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 211
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Complemento'
      CaptionOptions.Layout = clTop
      Control = edtComplemento
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 243
      ControlOptions.ShowBorder = False
      Index = 1
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
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'RG / Inscri'#231#227'o Estadual'
      CaptionOptions.Layout = clTop
      Control = edtIE
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Respons'#225'vel'
      CaptionOptions.Layout = clTop
      Control = edtResponsavel
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 401
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Telefone'
      CaptionOptions.Layout = clTop
      Control = edtTelefone
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 149
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'UF'
      CaptionOptions.Layout = clTop
      Control = edtUF
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 4
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
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBRadioGroup1'
      CaptionOptions.Visible = False
      Control = edtTipoPessoa
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahClient
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'E-mail'
      CaptionOptions.Layout = clTop
      Control = edtEmail
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object dsPessoas: TDataSource
    DataSet = tblPessoas
    Left = 376
    Top = 8
  end
  object tblPessoas: TUniTable
    TableName = 'commerce.pessoas'
    Connection = DM.Conexao
    LockMode = lmNone
    Left = 376
    Top = 56
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
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'MySkin_Office2019Colorful'
    Left = 456
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
      FloatClientWidth = 0
      FloatClientHeight = 0
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
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    PesquisarIBGE = True
    Left = 536
    Top = 8
  end
end
