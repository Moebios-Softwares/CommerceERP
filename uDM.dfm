object DM: TDM
  OldCreateOrder = False
  Height = 629
  Width = 731
  object Conexao: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'moebios'
    Username = 'postgres'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    OnError = ConexaoError
    Left = 32
    Top = 24
    EncryptedPassword = 'CEFFCDFFCCFFCBFF'
  end
  object PostgreSQL: TPostgreSQLUniProvider
    Left = 112
    Top = 24
  end
  object qryEmpresa: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.empresa')
    Left = 32
    Top = 72
    object qryEmpresacodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object qryEmpresafilial: TStringField
      FieldName = 'filial'
      Size = 50
    end
    object qryEmpresanotafiscal: TIntegerField
      FieldName = 'notafiscal'
    end
    object qryEmpresaendereco: TStringField
      FieldName = 'endereco'
      Size = 60
    end
    object qryEmpresacidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object qryEmpresauf: TStringField
      FieldName = 'uf'
      Size = 2
    end
    object qryEmpresacep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object qryEmpresatelefone: TStringField
      FieldName = 'telefone'
      Size = 25
    end
    object qryEmpresacnpj: TStringField
      FieldName = 'cnpj'
      Size = 25
    end
    object qryEmpresaie: TStringField
      FieldName = 'ie'
      Size = 14
    end
    object qryEmpresaseqnf: TIntegerField
      FieldName = 'seqnf'
    end
    object qryEmpresafax: TStringField
      FieldName = 'fax'
      Size = 25
    end
    object qryEmpresaobs1: TStringField
      FieldName = 'obs1'
      Size = 100
    end
    object qryEmpresaobs2: TStringField
      FieldName = 'obs2'
      Size = 100
    end
    object qryEmpresacontribuinte_ipi: TStringField
      FieldName = 'contribuinte_ipi'
      Size = 1
    end
    object qryEmpresasubstituto_tributario: TStringField
      FieldName = 'substituto_tributario'
      Size = 1
    end
    object qryEmpresaempresa_estadual: TStringField
      FieldName = 'empresa_estadual'
      Size = 1
    end
    object qryEmpresaoptante_simples: TStringField
      FieldName = 'optante_simples'
      Size = 1
    end
    object qryEmpresaoptante_super_simples: TStringField
      FieldName = 'optante_super_simples'
      Size = 1
    end
    object qryEmpresaecf: TStringField
      FieldName = 'ecf'
      Size = 1
    end
    object qryEmpresatipo: TIntegerField
      FieldName = 'tipo'
    end
    object qryEmpresaipi: TFloatField
      FieldName = 'ipi'
    end
    object qryEmpresaiss: TFloatField
      FieldName = 'iss'
    end
    object qryEmpresanumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object qryEmpresaresponsavel: TStringField
      FieldName = 'responsavel'
      Size = 50
    end
    object qryEmpresacomplemento: TStringField
      FieldName = 'complemento'
      Size = 50
    end
    object qryEmpresabairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object qryEmpresafarmacia_resp_tecnico: TStringField
      FieldName = 'farmacia_resp_tecnico'
      Size = 50
    end
    object qryEmpresafarmacia_crf: TStringField
      FieldName = 'farmacia_crf'
      Size = 10
    end
    object qryEmpresafarmacia_cpf: TStringField
      FieldName = 'farmacia_cpf'
      Size = 14
    end
    object qryEmpresafarmcia_data: TDateField
      FieldName = 'farmcia_data'
    end
    object qryEmpresafarmacia_uf: TStringField
      FieldName = 'farmacia_uf'
      Size = 2
    end
    object qryEmpresafarmacia_senha: TStringField
      FieldName = 'farmacia_senha'
      Size = 10
    end
    object qryEmpresafarmacia_email: TStringField
      FieldName = 'farmacia_email'
      Size = 10
    end
    object qryEmpresafarmacia_login: TStringField
      FieldName = 'farmacia_login'
    end
    object qryEmpresafarmacia_envio: TStringField
      FieldName = 'farmacia_envio'
      Size = 100
    end
    object qryEmpresaconhecimento: TIntegerField
      FieldName = 'conhecimento'
    end
    object qryEmpresaindustria: TStringField
      FieldName = 'industria'
      Size = 1
    end
    object qryEmpresafarmacia_numerolicenca: TStringField
      FieldName = 'farmacia_numerolicenca'
    end
    object qryEmpresacod_municipio_ibge: TStringField
      FieldName = 'cod_municipio_ibge'
      Size = 10
    end
    object qryEmpresaibge: TStringField
      FieldName = 'ibge'
      Size = 10
    end
    object qryEmpresapis: TFloatField
      FieldName = 'pis'
    end
    object qryEmpresacofins: TFloatField
      FieldName = 'cofins'
    end
    object qryEmpresaemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object qryEmpresaatividade: TStringField
      FieldName = 'atividade'
      Size = 40
    end
    object qryEmpresacontador_cod_municipio_ibge: TStringField
      FieldName = 'contador_cod_municipio_ibge'
      Size = 10
    end
    object qryEmpresacontador_nome: TStringField
      FieldName = 'contador_nome'
      Size = 60
    end
    object qryEmpresacontador_cpf: TStringField
      FieldName = 'contador_cpf'
    end
    object qryEmpresacontador_crc: TStringField
      FieldName = 'contador_crc'
      Size = 15
    end
    object qryEmpresacontador_cnpj: TStringField
      FieldName = 'contador_cnpj'
      Size = 25
    end
    object qryEmpresacontador_cep: TStringField
      FieldName = 'contador_cep'
      Size = 10
    end
    object qryEmpresacontador_endereco: TStringField
      FieldName = 'contador_endereco'
      Size = 60
    end
    object qryEmpresacontador_numero: TStringField
      FieldName = 'contador_numero'
      Size = 5
    end
    object qryEmpresacontador_complemento: TStringField
      FieldName = 'contador_complemento'
      Size = 60
    end
    object qryEmpresacontador_bairro: TStringField
      FieldName = 'contador_bairro'
      Size = 60
    end
    object qryEmpresacontador_fone: TStringField
      FieldName = 'contador_fone'
      Size = 15
    end
    object qryEmpresacontador_fax: TStringField
      FieldName = 'contador_fax'
      Size = 15
    end
    object qryEmpresacontador_email: TStringField
      FieldName = 'contador_email'
      Size = 60
    end
    object qryEmpresainsc_municipal: TStringField
      FieldName = 'insc_municipal'
    end
    object qryEmpresadata_abertura: TDateField
      FieldName = 'data_abertura'
    end
    object qryEmpresacnae: TStringField
      FieldName = 'cnae'
      Size = 10
    end
    object qryEmpresacrt: TStringField
      FieldName = 'crt'
      Size = 1
    end
    object qryEmpresacontador_cidade: TStringField
      FieldName = 'contador_cidade'
      Size = 30
    end
    object qryEmpresacontador_cod_municipio: TStringField
      FieldName = 'contador_cod_municipio'
      Size = 30
    end
    object qryEmpresacontador_uf: TStringField
      FieldName = 'contador_uf'
      Size = 2
    end
    object qryEmpresapermite_credito: TIntegerField
      FieldName = 'permite_credito'
    end
    object qryEmpresafantasia: TStringField
      FieldName = 'fantasia'
      Size = 60
    end
    object qryEmpresadfixas: TFloatField
      FieldName = 'dfixas'
    end
    object qryEmpresatipocalculo: TIntegerField
      FieldName = 'tipocalculo'
    end
    object qryEmpresaserie_cte: TStringField
      FieldName = 'serie_cte'
      Size = 6
    end
    object qryEmpresaseq_cte: TStringField
      FieldName = 'seq_cte'
      Size = 6
    end
    object qryEmpresacod_pais: TStringField
      FieldName = 'cod_pais'
    end
    object qryEmpresapais: TStringField
      FieldName = 'pais'
      Size = 50
    end
    object qryEmpresahomepage: TStringField
      FieldName = 'homepage'
      Size = 100
    end
    object qryEmpresaaidf: TStringField
      FieldName = 'aidf'
    end
    object qryEmpresaninicial: TStringField
      FieldName = 'ninicial'
    end
    object qryEmpresanfinal: TStringField
      FieldName = 'nfinal'
    end
    object qryEmpresan_nf_d: TStringField
      FieldName = 'n_nf_d'
    end
    object qryEmpresavalidade: TStringField
      FieldName = 'validade'
    end
    object qryEmpresarntrc: TStringField
      FieldName = 'rntrc'
      Size = 45
    end
    object qryEmpresaserie_mdfe: TIntegerField
      FieldName = 'serie_mdfe'
    end
    object qryEmpresanumero_mdfe: TIntegerField
      FieldName = 'numero_mdfe'
    end
    object qryEmpresamail_server: TStringField
      FieldName = 'mail_server'
      Size = 120
    end
    object qryEmpresamail_porta: TStringField
      FieldName = 'mail_porta'
      Size = 15
    end
    object qryEmpresamail_username: TStringField
      FieldName = 'mail_username'
      Size = 120
    end
    object qryEmpresamail_password: TStringField
      FieldName = 'mail_password'
      Size = 120
    end
    object qryEmpresamail_cabecalho: TStringField
      FieldName = 'mail_cabecalho'
      Size = 120
    end
    object qryEmpresamail_assunto: TStringField
      FieldName = 'mail_assunto'
      Size = 120
    end
    object qryEmpresamail_ssl: TStringField
      FieldName = 'mail_ssl'
      Size = 1
    end
    object qryEmpresamail_tls: TStringField
      FieldName = 'mail_tls'
      Size = 1
    end
    object qryEmpresareptec_cnpj: TStringField
      FieldName = 'reptec_cnpj'
      Size = 14
    end
    object qryEmpresareptec_contato: TStringField
      FieldName = 'reptec_contato'
      Size = 60
    end
    object qryEmpresareptec_email: TStringField
      FieldName = 'reptec_email'
      Size = 60
    end
    object qryEmpresareptec_fone: TStringField
      FieldName = 'reptec_fone'
      Size = 14
    end
    object qryEmpresareptec_idcsrt: TIntegerField
      FieldName = 'reptec_idcsrt'
    end
    object qryEmpresareptec_csrt: TStringField
      FieldName = 'reptec_csrt'
      Size = 28
    end
    object qryEmpresapercentual_credito_icms: TFloatField
      FieldName = 'percentual_credito_icms'
    end
    object qryEmpresaidonline: TIntegerField
      FieldName = 'idonline'
    end
    object qryEmpresacomentarios: TStringField
      FieldName = 'comentarios'
      Size = 50
    end
    object qryEmpresadatahora_inicial: TDateField
      FieldName = 'datahora_inicial'
    end
    object qryEmpresadatahora_final: TDateField
      FieldName = 'datahora_final'
    end
    object qryEmpresadata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object qryEmpresaestoque: TFloatField
      FieldName = 'estoque'
    end
    object qryEmpresavalor: TFloatField
      FieldName = 'valor'
    end
    object qryEmpresacpf: TStringField
      FieldName = 'cpf'
    end
    object qryEmpresarg: TStringField
      FieldName = 'rg'
    end
    object qryEmpresadia_vencimento_chave: TStringField
      FieldName = 'dia_vencimento_chave'
      Size = 2
    end
    object qryEmpresaemail_financeiro: TStringField
      FieldName = 'email_financeiro'
      Size = 200
    end
    object qryEmpresaatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryEmpresaserie_nfe: TIntegerField
      FieldName = 'serie_nfe'
    end
    object qryEmpresaseq_nfe: TIntegerField
      FieldName = 'seq_nfe'
    end
    object qryEmpresalogo: TStringField
      FieldName = 'logo'
      Size = 500
    end
    object qryEmpresacodigoibge: TStringField
      FieldName = 'codigoibge'
      Size = 40
    end
    object qryEmpresaseq_nfce: TIntegerField
      FieldName = 'seq_nfce'
    end
    object qryEmpresaserie_nfce: TIntegerField
      FieldName = 'serie_nfce'
    end
  end
  object qryConfigDFe: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.config_dfe')
    Left = 32
    Top = 120
    object qryConfigDFetssllib: TIntegerField
      FieldName = 'tssllib'
    end
    object qryConfigDFetsslcryptlib: TIntegerField
      FieldName = 'tsslcryptlib'
    end
    object qryConfigDFetsslhttplib: TIntegerField
      FieldName = 'tsslhttplib'
    end
    object qryConfigDFetsslxmlsignlib: TIntegerField
      FieldName = 'tsslxmlsignlib'
    end
    object qryConfigDFecertificado_caminho: TStringField
      FieldName = 'certificado_caminho'
      Size = 255
    end
    object qryConfigDFecertificado_senha: TStringField
      FieldName = 'certificado_senha'
      Size = 30
    end
    object qryConfigDFecertificado_numero_serie: TStringField
      FieldName = 'certificado_numero_serie'
      Size = 100
    end
    object qryConfigDFewebservice_uf: TStringField
      FieldName = 'webservice_uf'
      Size = 2
    end
    object qryConfigDFeambiente: TIntegerField
      FieldName = 'ambiente'
    end
    object qryConfigDFevisualizar_mensagem: TStringField
      FieldName = 'visualizar_mensagem'
      Size = 1
    end
    object qryConfigDFesalvar_envelope_soap: TStringField
      FieldName = 'salvar_envelope_soap'
      Size = 1
    end
    object qryConfigDFetimeout: TIntegerField
      FieldName = 'timeout'
    end
    object qryConfigDFessltype: TIntegerField
      FieldName = 'ssltype'
    end
    object qryConfigDFeajustar_aguardar: TStringField
      FieldName = 'ajustar_aguardar'
      Size = 1
    end
    object qryConfigDFeaguardar: TIntegerField
      FieldName = 'aguardar'
    end
    object qryConfigDFetentativas: TIntegerField
      FieldName = 'tentativas'
    end
    object qryConfigDFeintervalo: TIntegerField
      FieldName = 'intervalo'
    end
    object qryConfigDFeproxy_host: TStringField
      FieldName = 'proxy_host'
      Size = 100
    end
    object qryConfigDFeproxy_porta: TStringField
      FieldName = 'proxy_porta'
      Size = 5
    end
    object qryConfigDFeproxy_usuario: TStringField
      FieldName = 'proxy_usuario'
    end
    object qryConfigDFeproxy_senha: TStringField
      FieldName = 'proxy_senha'
    end
    object qryConfigDFeatualizar_xml: TStringField
      FieldName = 'atualizar_xml'
      Size = 1
    end
    object qryConfigDFeexibir_erro_schema: TStringField
      FieldName = 'exibir_erro_schema'
      Size = 1
    end
    object qryConfigDFeretirar_acentos: TStringField
      FieldName = 'retirar_acentos'
      Size = 1
    end
    object qryConfigDFelogo_marca: TStringField
      FieldName = 'logo_marca'
      Size = 255
    end
    object qryConfigDFeformato_alerta: TStringField
      FieldName = 'formato_alerta'
      Size = 255
    end
    object qryConfigDFenfe_formato_emissao: TIntegerField
      FieldName = 'nfe_formato_emissao'
    end
    object qryConfigDFenfe_versao: TIntegerField
      FieldName = 'nfe_versao'
    end
    object qryConfigDFenfe_schemas: TStringField
      FieldName = 'nfe_schemas'
      Size = 255
    end
    object qryConfigDFenfe_danfe: TIntegerField
      FieldName = 'nfe_danfe'
    end
    object qryConfigDFenfe_salvar_pastas_separadas: TStringField
      FieldName = 'nfe_salvar_pastas_separadas'
      Size = 1
    end
    object qryConfigDFenfe_criar_mensalmente: TStringField
      FieldName = 'nfe_criar_mensalmente'
      Size = 1
    end
    object qryConfigDFenfe_adicionar_literal_pastas: TStringField
      FieldName = 'nfe_adicionar_literal_pastas'
      Size = 1
    end
    object qryConfigDFenfe_salvar_data_emissao: TStringField
      FieldName = 'nfe_salvar_data_emissao'
      Size = 1
    end
    object qryConfigDFenfe_salvar_arqs_eventos: TStringField
      FieldName = 'nfe_salvar_arqs_eventos'
      Size = 1
    end
    object qryConfigDFenfe_separar_pelo_cnpj: TStringField
      FieldName = 'nfe_separar_pelo_cnpj'
      Size = 1
    end
    object qryConfigDFenfe_separar_modelo_documento: TStringField
      FieldName = 'nfe_separar_modelo_documento'
      Size = 1
    end
    object qryConfigDFenfe_pasta_arquivos_nfe: TStringField
      FieldName = 'nfe_pasta_arquivos_nfe'
      Size = 255
    end
    object qryConfigDFenfe_pasta_cancelamento: TStringField
      FieldName = 'nfe_pasta_cancelamento'
      Size = 255
    end
    object qryConfigDFenfe_pasta_cce: TStringField
      FieldName = 'nfe_pasta_cce'
      Size = 255
    end
    object qryConfigDFenfe_pasta_inutilizacao: TStringField
      FieldName = 'nfe_pasta_inutilizacao'
      Size = 255
    end
    object qryConfigDFenfe_pasta_dpec: TStringField
      FieldName = 'nfe_pasta_dpec'
      Size = 255
    end
    object qryConfigDFenfe_pasta_evento: TStringField
      FieldName = 'nfe_pasta_evento'
      Size = 255
    end
    object qryConfigDFenfe_salvar_envio_resposta: TStringField
      FieldName = 'nfe_salvar_envio_resposta'
      Size = 1
    end
    object qryConfigDFenfe_caminho_envio_resposta: TStringField
      FieldName = 'nfe_caminho_envio_resposta'
      Size = 255
    end
    object qryConfigDFenfe_email_assunto: TStringField
      FieldName = 'nfe_email_assunto'
      Size = 255
    end
    object qryConfigDFenfe_email_remetente: TStringField
      FieldName = 'nfe_email_remetente'
      Size = 255
    end
    object qryConfigDFenfce_formato_emissao: TIntegerField
      FieldName = 'nfce_formato_emissao'
    end
    object qryConfigDFenfce_versao: TIntegerField
      FieldName = 'nfce_versao'
    end
    object qryConfigDFenfce_schemas: TStringField
      FieldName = 'nfce_schemas'
      Size = 255
    end
    object qryConfigDFenfce_idtoken: TStringField
      FieldName = 'nfce_idtoken'
    end
    object qryConfigDFenfce_token: TStringField
      FieldName = 'nfce_token'
      Size = 255
    end
    object qryConfigDFenfce_salvar_pastas_separadas: TStringField
      FieldName = 'nfce_salvar_pastas_separadas'
      Size = 1
    end
    object qryConfigDFenfce_criar_mensalmente: TStringField
      FieldName = 'nfce_criar_mensalmente'
      Size = 1
    end
    object qryConfigDFenfce_adicionar_literal_pastas: TStringField
      FieldName = 'nfce_adicionar_literal_pastas'
      Size = 1
    end
    object qryConfigDFenfce_salvar_data_emissao: TStringField
      FieldName = 'nfce_salvar_data_emissao'
      Size = 1
    end
    object qryConfigDFenfce_salvar_arqs_eventos: TStringField
      FieldName = 'nfce_salvar_arqs_eventos'
      Size = 1
    end
    object qryConfigDFenfce_separar_pelo_cnpj: TStringField
      FieldName = 'nfce_separar_pelo_cnpj'
      Size = 1
    end
    object qryConfigDFenfce_separar_modelo_documento: TStringField
      FieldName = 'nfce_separar_modelo_documento'
      Size = 1
    end
    object qryConfigDFenfce_pasta_arquivos_nfe: TStringField
      FieldName = 'nfce_pasta_arquivos_nfe'
      Size = 255
    end
    object qryConfigDFenfce_pasta_cancelamento: TStringField
      FieldName = 'nfce_pasta_cancelamento'
      Size = 255
    end
    object qryConfigDFenfce_pasta_cce: TStringField
      FieldName = 'nfce_pasta_cce'
      Size = 255
    end
    object qryConfigDFenfce_pasta_inutilizacao: TStringField
      FieldName = 'nfce_pasta_inutilizacao'
      Size = 255
    end
    object qryConfigDFenfce_pasta_dpec: TStringField
      FieldName = 'nfce_pasta_dpec'
      Size = 255
    end
    object qryConfigDFenfce_pasta_evento: TStringField
      FieldName = 'nfce_pasta_evento'
      Size = 255
    end
    object qryConfigDFenfce_salvar_envio_resposta: TStringField
      FieldName = 'nfce_salvar_envio_resposta'
      Size = 1
    end
    object qryConfigDFenfce_caminho_envio_resposta: TStringField
      FieldName = 'nfce_caminho_envio_resposta'
      Size = 255
    end
    object qryConfigDFecte_formato_emissao: TIntegerField
      FieldName = 'cte_formato_emissao'
    end
    object qryConfigDFecte_schemas: TStringField
      FieldName = 'cte_schemas'
      Size = 255
    end
    object qryConfigDFecte_danfe: TIntegerField
      FieldName = 'cte_danfe'
    end
    object qryConfigDFecte_salvar_envio_resposta: TStringField
      FieldName = 'cte_salvar_envio_resposta'
      Size = 1
    end
    object qryConfigDFecte_caminho_envio_resposta: TStringField
      FieldName = 'cte_caminho_envio_resposta'
      Size = 255
    end
    object qryConfigDFecte_email_assunto: TStringField
      FieldName = 'cte_email_assunto'
      Size = 255
    end
    object qryConfigDFecte_email_remetente: TStringField
      FieldName = 'cte_email_remetente'
      Size = 255
    end
    object qryConfigDFemdfe_formato_emissao: TIntegerField
      FieldName = 'mdfe_formato_emissao'
    end
    object qryConfigDFemdfe_versao: TIntegerField
      FieldName = 'mdfe_versao'
    end
    object qryConfigDFemdfe_schemas: TStringField
      FieldName = 'mdfe_schemas'
      Size = 255
    end
    object qryConfigDFemdfe_danfe: TIntegerField
      FieldName = 'mdfe_danfe'
    end
    object qryConfigDFemdfe_salvar_envio_resposta: TStringField
      FieldName = 'mdfe_salvar_envio_resposta'
      Size = 1
    end
    object qryConfigDFemdfe_caminho_envio_resposta: TStringField
      FieldName = 'mdfe_caminho_envio_resposta'
      Size = 255
    end
    object qryConfigDFemdfe_email_assunto: TStringField
      FieldName = 'mdfe_email_assunto'
      Size = 255
    end
    object qryConfigDFemdfe_email_remetente: TStringField
      FieldName = 'mdfe_email_remetente'
      Size = 255
    end
    object qryConfigDFecaminho_baixar_nfe: TStringField
      FieldName = 'caminho_baixar_nfe'
      Size = 255
    end
    object qryConfigDFecte_caminho_log: TStringField
      FieldName = 'cte_caminho_log'
      Size = 255
    end
    object qryConfigDFecte_caminho_inutilizacao: TStringField
      FieldName = 'cte_caminho_inutilizacao'
      Size = 255
    end
    object qryConfigDFecte_caminho_xml: TStringField
      FieldName = 'cte_caminho_xml'
      Size = 255
    end
    object qryConfigDFecte_caminho_pdf: TStringField
      FieldName = 'cte_caminho_pdf'
      Size = 255
    end
    object qryConfigDFecte_danfe_padrao: TStringField
      FieldName = 'cte_danfe_padrao'
      Size = 255
    end
    object qryConfigDFecte_danfe_eventos: TStringField
      FieldName = 'cte_danfe_eventos'
      Size = 255
    end
    object qryConfigDFecte_danfe_email: TStringField
      FieldName = 'cte_danfe_email'
      Size = 255
    end
    object qryConfigDFecte_modelo: TIntegerField
      FieldName = 'cte_modelo'
    end
    object qryConfigDFecte_versao: TIntegerField
      FieldName = 'cte_versao'
    end
    object qryConfigDFecte_aliqnbs: TFloatField
      FieldName = 'cte_aliqnbs'
    end
    object qryConfigDFemdfe_caminho_log: TStringField
      FieldName = 'mdfe_caminho_log'
      Size = 255
    end
    object qryConfigDFemdfe_caminho_xml: TStringField
      FieldName = 'mdfe_caminho_xml'
      Size = 255
    end
    object qryConfigDFemdfe_caminho_pdf: TStringField
      FieldName = 'mdfe_caminho_pdf'
      Size = 255
    end
    object qryConfigDFemdfe_danfe_padrao: TStringField
      FieldName = 'mdfe_danfe_padrao'
      Size = 255
    end
    object qryConfigDFemdfe_danfe_evento: TStringField
      FieldName = 'mdfe_danfe_evento'
      Size = 255
    end
    object qryConfigDFemdfe_danfe_email: TStringField
      FieldName = 'mdfe_danfe_email'
      Size = 255
    end
    object qryConfigDFenfe_modelo_danfe: TStringField
      FieldName = 'nfe_modelo_danfe'
      Size = 1
    end
    object qryConfigDFeatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryConfigDFedanfe_margem_esquerda: TFloatField
      FieldName = 'danfe_margem_esquerda'
    end
    object qryConfigDFedanfe_margem_direita: TFloatField
      FieldName = 'danfe_margem_direita'
    end
    object qryConfigDFedanfe_margem_inferior: TFloatField
      FieldName = 'danfe_margem_inferior'
    end
    object qryConfigDFedanfe_margem_superior: TFloatField
      FieldName = 'danfe_margem_superior'
    end
    object qryConfigDFenfe_fr3_danfe: TStringField
      FieldName = 'nfe_fr3_danfe'
      Size = 255
    end
    object qryConfigDFenfe_fr3_inutilizacao: TStringField
      FieldName = 'nfe_fr3_inutilizacao'
      Size = 255
    end
    object qryConfigDFenfe_fr3_evento: TStringField
      FieldName = 'nfe_fr3_evento'
      Size = 255
    end
  end
  object ACBrNFe: TACBrNFe
    MAIL = ACBrMail
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.PathSalvar = 'C:\Moebios\NFe\'
    Configuracoes.Arquivos.PathSchemas = 'C:\Moebios\Schemas\NFe\'
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.SepararPorIE = True
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorAno = True
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.DownloadDFe.PathDownload = 'C:\Moebios\NFe\Downloads'
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.SalvarApenasNFeProcessadas = True
    Configuracoes.Arquivos.PathNFe = 'C:\Moebios\NFe'
    Configuracoes.Arquivos.PathInu = 'C:\Moebios\NFe\Inutilizacoes'
    Configuracoes.Arquivos.PathEvento = 'C:\Moebios\NFe\Eventos'
    Configuracoes.WebServices.UF = 'RJ'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = DANFCe
    Left = 32
    Top = 168
  end
  object DANFe: TACBrNFeDANFeRL
    Sistema = 'Moebios Commerce'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    Left = 32
    Top = 216
  end
  object ACBrMail: TACBrMail
    Host = 'mail.moebios.com.br'
    Port = '465'
    Username = 'commerce@moebios.com.br'
    Password = 'Moebios@2020'
    SetSSL = True
    SetTLS = True
    UseThread = True
    Attempts = 3
    From = 'commerce@moebios.com.br'
    FromName = 'Moebios Commerce'
    Subject = 'NFe XML'
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 32
    Top = 264
  end
  object qryFuncionarios: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.funcionarios'
      'ORDER BY'
      '  usuario DESC')
    Left = 112
    Top = 72
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
    object qryFuncionariossenha: TStringField
      FieldName = 'senha'
      Size = 200
    end
  end
  object tblFuncionarios: TUniTable
    TableName = 'commerce.funcionarios'
    Connection = Conexao
    Left = 112
    Top = 120
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
    object tblFuncionariossenha: TStringField
      FieldName = 'senha'
      Size = 200
    end
  end
  object Monitor: TUniSQLMonitor
    TraceFlags = [tfQExecute, tfError, tfParams]
    Left = 168
    Top = 24
  end
  object qryNF: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfe')
    Left = 32
    Top = 312
    object qryNFinfnfe_versao: TStringField
      FieldName = 'infnfe_versao'
    end
    object qryNFinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFide_cuf: TIntegerField
      FieldName = 'ide_cuf'
    end
    object qryNFide_cnf: TIntegerField
      FieldName = 'ide_cnf'
    end
    object qryNFide_natop: TStringField
      FieldName = 'ide_natop'
    end
    object qryNFide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFide_dhemi: TDateTimeField
      FieldName = 'ide_dhemi'
    end
    object qryNFide_dhsaient: TDateTimeField
      FieldName = 'ide_dhsaient'
    end
    object qryNFide_tpnf: TIntegerField
      FieldName = 'ide_tpnf'
    end
    object qryNFide_iddest: TIntegerField
      FieldName = 'ide_iddest'
    end
    object qryNFide_cmunfg: TIntegerField
      FieldName = 'ide_cmunfg'
    end
    object qryNFide_tpimp: TIntegerField
      FieldName = 'ide_tpimp'
    end
    object qryNFide_tpemis: TIntegerField
      FieldName = 'ide_tpemis'
    end
    object qryNFide_cdv: TIntegerField
      FieldName = 'ide_cdv'
    end
    object qryNFide_tpamb: TIntegerField
      FieldName = 'ide_tpamb'
    end
    object qryNFide_finnfe: TIntegerField
      FieldName = 'ide_finnfe'
    end
    object qryNFide_indfinal: TIntegerField
      FieldName = 'ide_indfinal'
    end
    object qryNFide_indpres: TIntegerField
      FieldName = 'ide_indpres'
    end
    object qryNFide_procemi: TIntegerField
      FieldName = 'ide_procemi'
    end
    object qryNFide_verproc: TStringField
      FieldName = 'ide_verproc'
      Size = 50
    end
    object qryNFemit_cnpj: TIntegerField
      FieldName = 'emit_cnpj'
    end
    object qryNFemit_xnome: TStringField
      FieldName = 'emit_xnome'
      Size = 200
    end
    object qryNFemit_xfant: TStringField
      FieldName = 'emit_xfant'
      Size = 200
    end
    object qryNFemit_enderemit_xlgr: TStringField
      FieldName = 'emit_enderemit_xlgr'
      Size = 200
    end
    object qryNFemit_enderemit_nro: TStringField
      FieldName = 'emit_enderemit_nro'
      Size = 50
    end
    object qryNFemit_enderemit_xbairro: TStringField
      FieldName = 'emit_enderemit_xbairro'
      Size = 50
    end
    object qryNFemit_enderemit_cmun: TIntegerField
      FieldName = 'emit_enderemit_cmun'
    end
    object qryNFemit_enderemit_xmun: TStringField
      FieldName = 'emit_enderemit_xmun'
      Size = 50
    end
    object qryNFemit_enderemit_uf: TStringField
      FieldName = 'emit_enderemit_uf'
      Size = 2
    end
    object qryNFemit_enderemit_cep: TIntegerField
      FieldName = 'emit_enderemit_cep'
    end
    object qryNFemit_enderemit_cpais: TIntegerField
      FieldName = 'emit_enderemit_cpais'
    end
    object qryNFemit_enderemit_xpais: TStringField
      FieldName = 'emit_enderemit_xpais'
      Size = 50
    end
    object qryNFemit_enderemit_fone: TIntegerField
      FieldName = 'emit_enderemit_fone'
    end
    object qryNFemit_ie: TIntegerField
      FieldName = 'emit_ie'
    end
    object qryNFemit_crt: TIntegerField
      FieldName = 'emit_crt'
    end
    object qryNFdest_cnpj: TIntegerField
      FieldName = 'dest_cnpj'
    end
    object qryNFdest_xnome: TStringField
      FieldName = 'dest_xnome'
      Size = 200
    end
    object qryNFdest_xfant: TStringField
      FieldName = 'dest_xfant'
      Size = 200
    end
    object qryNFdest_enderdest_xlgr: TStringField
      FieldName = 'dest_enderdest_xlgr'
      Size = 200
    end
    object qryNFdest_enderdest_nro: TStringField
      FieldName = 'dest_enderdest_nro'
      Size = 50
    end
    object qryNFdest_enderdest_xbairro: TStringField
      FieldName = 'dest_enderdest_xbairro'
      Size = 50
    end
    object qryNFdest_enderdest_cmun: TIntegerField
      FieldName = 'dest_enderdest_cmun'
    end
    object qryNFdest_enderdest_xmun: TStringField
      FieldName = 'dest_enderdest_xmun'
      Size = 50
    end
    object qryNFdest_enderdest_uf: TStringField
      FieldName = 'dest_enderdest_uf'
      Size = 2
    end
    object qryNFdest_enderdest_cep: TIntegerField
      FieldName = 'dest_enderdest_cep'
    end
    object qryNFdest_enderdest_cpais: TIntegerField
      FieldName = 'dest_enderdest_cpais'
    end
    object qryNFdest_enderdest_xpais: TStringField
      FieldName = 'dest_enderdest_xpais'
      Size = 50
    end
    object qryNFdest_enderdest_fone: TIntegerField
      FieldName = 'dest_enderdest_fone'
    end
    object qryNFdest_indiedest: TIntegerField
      FieldName = 'dest_indiedest'
    end
    object qryNFdest_ie: TIntegerField
      FieldName = 'dest_ie'
    end
    object qryNFdest_email: TStringField
      FieldName = 'dest_email'
      Size = 200
    end
    object qryNFtotal_icmstot_vbc: TFloatField
      FieldName = 'total_icmstot_vbc'
    end
    object qryNFtotal_icmstot_vicms: TFloatField
      FieldName = 'total_icmstot_vicms'
    end
    object qryNFtotal_icmstot_vicmsdeson: TFloatField
      FieldName = 'total_icmstot_vicmsdeson'
    end
    object qryNFtotal_icmstot_vfcpufdest: TFloatField
      FieldName = 'total_icmstot_vfcpufdest'
    end
    object qryNFtotal_icmstot_vicmsufdest: TFloatField
      FieldName = 'total_icmstot_vicmsufdest'
    end
    object qryNFtotal_icmstot_vicmsufremet: TFloatField
      FieldName = 'total_icmstot_vicmsufremet'
    end
    object qryNFtotal_icmstot_vfcp: TFloatField
      FieldName = 'total_icmstot_vfcp'
    end
    object qryNFtotal_icmstot_vbcst: TFloatField
      FieldName = 'total_icmstot_vbcst'
    end
    object qryNFtotal_icmstot_vst: TFloatField
      FieldName = 'total_icmstot_vst'
    end
    object qryNFtotal_icmstot_vfcpst: TFloatField
      FieldName = 'total_icmstot_vfcpst'
    end
    object qryNFtotal_icmstot_vfcpstret: TFloatField
      FieldName = 'total_icmstot_vfcpstret'
    end
    object qryNFtotal_icmstot_vprod: TFloatField
      FieldName = 'total_icmstot_vprod'
    end
    object qryNFtotal_icmstot_vfrete: TFloatField
      FieldName = 'total_icmstot_vfrete'
    end
    object qryNFtotal_icmstot_vseg: TFloatField
      FieldName = 'total_icmstot_vseg'
    end
    object qryNFtotal_icmstot_vdesc: TFloatField
      FieldName = 'total_icmstot_vdesc'
    end
    object qryNFtotal_icmstot_vii: TFloatField
      FieldName = 'total_icmstot_vii'
    end
    object qryNFtotal_icmstot_vipi: TFloatField
      FieldName = 'total_icmstot_vipi'
    end
    object qryNFtotal_icmstot_vipidevol: TFloatField
      FieldName = 'total_icmstot_vipidevol'
    end
    object qryNFtotal_icmstot_vpis: TFloatField
      FieldName = 'total_icmstot_vpis'
    end
    object qryNFtotal_icmstot_vcofins: TFloatField
      FieldName = 'total_icmstot_vcofins'
    end
    object qryNFtotal_icmstot_voutro: TFloatField
      FieldName = 'total_icmstot_voutro'
    end
    object qryNFtotal_icmstot_vnf: TFloatField
      FieldName = 'total_icmstot_vnf'
    end
    object qryNFtransp_modfrete: TIntegerField
      FieldName = 'transp_modfrete'
    end
    object qryNFtransp_transporta_cnpj: TIntegerField
      FieldName = 'transp_transporta_cnpj'
    end
    object qryNFtransp_transporta_xnome: TStringField
      FieldName = 'transp_transporta_xnome'
      Size = 200
    end
    object qryNFtransp_transporta_ie: TIntegerField
      FieldName = 'transp_transporta_ie'
    end
    object qryNFtransp_transporta_xender: TStringField
      FieldName = 'transp_transporta_xender'
      Size = 200
    end
    object qryNFtransp_transporta_xmun: TStringField
      FieldName = 'transp_transporta_xmun'
      Size = 200
    end
    object qryNFtransp_transporta_uf: TStringField
      FieldName = 'transp_transporta_uf'
    end
    object qryNFtransp_vol_qvol: TIntegerField
      FieldName = 'transp_vol_qvol'
    end
    object qryNFtransp_vol_esp: TStringField
      FieldName = 'transp_vol_esp'
      Size = 200
    end
    object qryNFtransp_vol_marca: TStringField
      FieldName = 'transp_vol_marca'
      Size = 200
    end
    object qryNFtransp_vol_pesol: TFloatField
      FieldName = 'transp_vol_pesol'
    end
    object qryNFtransp_vol_pesob: TFloatField
      FieldName = 'transp_vol_pesob'
    end
    object qryNFcobr_fat_nfat: TStringField
      FieldName = 'cobr_fat_nfat'
      Size = 200
    end
    object qryNFcobr_fat_vorig: TFloatField
      FieldName = 'cobr_fat_vorig'
    end
    object qryNFcobr_fat_vdesc: TFloatField
      FieldName = 'cobr_fat_vdesc'
    end
    object qryNFcobr_fat_vliq: TFloatField
      FieldName = 'cobr_fat_vliq'
    end
    object qryNFpag_detpag_indpag: TIntegerField
      FieldName = 'pag_detpag_indpag'
    end
    object qryNFpag_detpag_tpag: TIntegerField
      FieldName = 'pag_detpag_tpag'
    end
    object qryNFpag_detpag_vpag: TFloatField
      FieldName = 'pag_detpag_vpag'
    end
    object qryNFpag_detpag_card_tpintegra: TIntegerField
      FieldName = 'pag_detpag_card_tpintegra'
    end
    object qryNFpag_detpag_card_cnpj: TIntegerField
      FieldName = 'pag_detpag_card_cnpj'
    end
    object qryNFpag_detpag_card_tband: TIntegerField
      FieldName = 'pag_detpag_card_tband'
    end
    object qryNFpag_detpag_card_caut: TStringField
      FieldName = 'pag_detpag_card_caut'
      Size = 200
    end
    object qryNFpag_vtroco: TFloatField
      FieldName = 'pag_vtroco'
    end
    object qryNFinfadic_infcpl: TStringField
      FieldName = 'infadic_infcpl'
      Size = 200
    end
    object qryNFinfadic_infadfisco: TStringField
      FieldName = 'infadic_infadfisco'
      Size = 200
    end
    object qryNFinfresptec_cnpj: TIntegerField
      FieldName = 'infresptec_cnpj'
    end
    object qryNFinfresptec_xcontato: TStringField
      FieldName = 'infresptec_xcontato'
      Size = 200
    end
    object qryNFinfresptec_email: TStringField
      FieldName = 'infresptec_email'
      Size = 200
    end
    object qryNFinfresptec_fone: TStringField
      FieldName = 'infresptec_fone'
      Size = 200
    end
    object qryNFsignature: TMemoField
      FieldName = 'signature'
      BlobType = ftMemo
    end
    object qryNFprotnfe: TMemoField
      FieldName = 'protnfe'
      BlobType = ftMemo
    end
    object qryNFcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFcad_status: TIntegerField
      FieldName = 'cad_status'
    end
    object qryNFcad_cfop: TIntegerField
      FieldName = 'cad_cfop'
    end
  end
  object qryNFItens: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfeitens')
    Left = 32
    Top = 368
    object qryNFItensdet_nitem: TIntegerField
      FieldName = 'det_nitem'
    end
    object qryNFItensdet_prod_cprod: TStringField
      FieldName = 'det_prod_cprod'
    end
    object qryNFItensdet_prod_cean: TStringField
      FieldName = 'det_prod_cean'
      Size = 30
    end
    object qryNFItensdet_prod_xprod: TStringField
      FieldName = 'det_prod_xprod'
      Size = 200
    end
    object qryNFItensdet_prod_ncm: TIntegerField
      FieldName = 'det_prod_ncm'
    end
    object qryNFItensdet_prod_cfop: TIntegerField
      FieldName = 'det_prod_cfop'
    end
    object qryNFItensdet_prod_ucom: TStringField
      FieldName = 'det_prod_ucom'
    end
    object qryNFItensdet_prod_qcom: TFloatField
      FieldName = 'det_prod_qcom'
    end
    object qryNFItensdet_prod_vuncom: TFloatField
      FieldName = 'det_prod_vuncom'
    end
    object qryNFItensdet_prod_vprod: TFloatField
      FieldName = 'det_prod_vprod'
    end
    object qryNFItensdet_prod_ceantrib: TStringField
      FieldName = 'det_prod_ceantrib'
      Size = 200
    end
    object qryNFItensdet_prod_utrib: TStringField
      FieldName = 'det_prod_utrib'
    end
    object qryNFItensdet_prod_qtrib: TFloatField
      FieldName = 'det_prod_qtrib'
    end
    object qryNFItensdet_prod_vuntrib: TFloatField
      FieldName = 'det_prod_vuntrib'
    end
    object qryNFItensdet_prod_indtot: TIntegerField
      FieldName = 'det_prod_indtot'
    end
    object qryNFItensdet_prod_imposto_icms: TStringField
      FieldName = 'det_prod_imposto_icms'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_icms_orig: TFloatField
      FieldName = 'det_prod_imposto_icms_orig'
    end
    object qryNFItensdet_prod_imposto_icms_cst: TFloatField
      FieldName = 'det_prod_imposto_icms_cst'
    end
    object qryNFItensdet_prod_imposto_icms_modbc: TFloatField
      FieldName = 'det_prod_imposto_icms_modbc'
    end
    object qryNFItensdet_prod_imposto_icms_vbc: TFloatField
      FieldName = 'det_prod_imposto_icms_vbc'
    end
    object qryNFItensdet_prod_imposto_icms_picms: TFloatField
      FieldName = 'det_prod_imposto_icms_picms'
    end
    object qryNFItensdet_prod_imposto_icms_vicms: TFloatField
      FieldName = 'det_prod_imposto_icms_vicms'
    end
    object qryNFItensdet_prod_imposto_ipi: TStringField
      FieldName = 'det_prod_imposto_ipi'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_ipi_cenq: TFloatField
      FieldName = 'det_prod_imposto_ipi_cenq'
    end
    object qryNFItensdet_prod_imposto_ipi_ipint: TFloatField
      FieldName = 'det_prod_imposto_ipi_ipint'
    end
    object qryNFItensdet_prod_imposto_ipi_cst: TFloatField
      FieldName = 'det_prod_imposto_ipi_cst'
    end
    object qryNFItensdet_prod_imposto_pis: TStringField
      FieldName = 'det_prod_imposto_pis'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_cst'
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vbc'
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_ppis'
    end
    object qryNFItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField
      FieldName = 'det_prod_imposto_pis_pisaliq_vpis'
    end
    object qryNFItensdet_prod_imposto_cofins: TStringField
      FieldName = 'det_prod_imposto_cofins'
      Size = 50
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_cst'
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vbc'
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_pcofins'
    end
    object qryNFItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField
      FieldName = 'det_prod_imposto_cofins_cofinsaliq_vcofins'
    end
    object qryNFItenscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFItensinfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFItenside_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFItenside_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFItenside_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
    object qryNFItensdet_prod_vtotalitem: TFloatField
      FieldName = 'det_prod_vtotalitem'
    end
  end
  object qryNFCobranca: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.nfepagtos')
    Left = 32
    Top = 424
    object qryNFCobrancadup_ndup: TIntegerField
      FieldName = 'dup_ndup'
    end
    object qryNFCobrancadup_dvenc: TDateField
      FieldName = 'dup_dvenc'
    end
    object qryNFCobrancadup_vdup: TFloatField
      FieldName = 'dup_vdup'
    end
    object qryNFCobrancacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qryNFCobrancainfnfe_chave: TStringField
      FieldName = 'infnfe_chave'
      Size = 50
    end
    object qryNFCobrancaide_mod: TIntegerField
      FieldName = 'ide_mod'
    end
    object qryNFCobrancaide_serie: TIntegerField
      FieldName = 'ide_serie'
    end
    object qryNFCobrancaide_nnf: TIntegerField
      FieldName = 'ide_nnf'
    end
  end
  object tblProdutos: TUniTable
    TableName = 'commerce.produtos'
    Connection = Conexao
    Left = 112
    Top = 168
    object tblProdutoscodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object tblProdutosproduto: TStringField
      FieldName = 'produto'
      Size = 400
    end
    object tblProdutosdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
    object tblProdutoscodgrupo: TStringField
      FieldName = 'codgrupo'
      Size = 6
    end
    object tblProdutoscodsubgrupo: TStringField
      FieldName = 'codsubgrupo'
      Size = 6
    end
    object tblProdutoscodfornecedor: TStringField
      FieldName = 'codfornecedor'
      Size = 6
    end
    object tblProdutoscodmarca: TStringField
      FieldName = 'codmarca'
      Size = 6
    end
    object tblProdutosdata_ultimacompra: TDateField
      FieldName = 'data_ultimacompra'
    end
    object tblProdutosnotafiscal: TStringField
      FieldName = 'notafiscal'
      Size = 7
    end
    object tblProdutosprecocusto: TFloatField
      FieldName = 'precocusto'
    end
    object tblProdutosprecovenda: TFloatField
      FieldName = 'precovenda'
    end
    object tblProdutosdata_ultimavenda: TDateField
      FieldName = 'data_ultimavenda'
    end
    object tblProdutosestoque: TFloatField
      FieldName = 'estoque'
    end
    object tblProdutosestoqueminimo: TFloatField
      FieldName = 'estoqueminimo'
    end
    object tblProdutoscodaliquota: TStringField
      FieldName = 'codaliquota'
      Size = 5
    end
    object tblProdutoslocalicazao: TStringField
      FieldName = 'localicazao'
      Size = 50
    end
    object tblProdutospeso: TFloatField
      FieldName = 'peso'
    end
    object tblProdutosvalidade: TStringField
      FieldName = 'validade'
    end
    object tblProdutoscomissao: TFloatField
      FieldName = 'comissao'
    end
    object tblProdutosusa_balanca: TIntegerField
      FieldName = 'usa_balanca'
    end
    object tblProdutosusa_serial: TIntegerField
      FieldName = 'usa_serial'
    end
    object tblProdutosusa_grade: TIntegerField
      FieldName = 'usa_grade'
    end
    object tblProdutoscodreceita: TStringField
      FieldName = 'codreceita'
      Size = 6
    end
    object tblProdutosfoto: TStringField
      FieldName = 'foto'
      Size = 80
    end
    object tblProdutosdata_ultimacompra_anterior: TDateField
      FieldName = 'data_ultimacompra_anterior'
    end
    object tblProdutosnotafiscal_anterior: TStringField
      FieldName = 'notafiscal_anterior'
      Size = 6
    end
    object tblProdutoscodfornecedor_anterior: TStringField
      FieldName = 'codfornecedor_anterior'
      Size = 6
    end
    object tblProdutosprecocusto_anterior: TFloatField
      FieldName = 'precocusto_anterior'
    end
    object tblProdutosprecovenda_anterior: TFloatField
      FieldName = 'precovenda_anterior'
    end
    object tblProdutoscustomedio: TFloatField
      FieldName = 'customedio'
    end
    object tblProdutosauto_aplicacao: TStringField
      FieldName = 'auto_aplicacao'
      Size = 60
    end
    object tblProdutosauto_complemento: TStringField
      FieldName = 'auto_complemento'
      Size = 60
    end
    object tblProdutosdata_remarcacao_custo: TDateField
      FieldName = 'data_remarcacao_custo'
    end
    object tblProdutosdata_remarcacao_venda: TDateField
      FieldName = 'data_remarcacao_venda'
    end
    object tblProdutospreco_promocao: TFloatField
      FieldName = 'preco_promocao'
    end
    object tblProdutosdata_promocao: TDateField
      FieldName = 'data_promocao'
    end
    object tblProdutosfim_promocao: TDateField
      FieldName = 'fim_promocao'
    end
    object tblProdutoscst: TStringField
      FieldName = 'cst'
      Size = 200
    end
    object tblProdutosclassificacao_fiscal: TStringField
      FieldName = 'classificacao_fiscal'
    end
    object tblProdutosnbm: TStringField
      FieldName = 'nbm'
    end
    object tblProdutosncm: TStringField
      FieldName = 'ncm'
    end
    object tblProdutosaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object tblProdutosipi: TFloatField
      FieldName = 'ipi'
    end
    object tblProdutosreducao: TFloatField
      FieldName = 'reducao'
    end
    object tblProdutosqtde_embalagem: TFloatField
      FieldName = 'qtde_embalagem'
    end
    object tblProdutostipo: TStringField
      FieldName = 'tipo'
      Size = 30
    end
    object tblProdutospeso_liquido: TFloatField
      FieldName = 'peso_liquido'
    end
    object tblProdutosfarmacia_controlado: TStringField
      FieldName = 'farmacia_controlado'
      Size = 1
    end
    object tblProdutosfarmacia_apresentacao: TIntegerField
      FieldName = 'farmacia_apresentacao'
    end
    object tblProdutosfarmacia_registro_medicamento: TStringField
      FieldName = 'farmacia_registro_medicamento'
    end
    object tblProdutosfarmacia_pmc: TFloatField
      FieldName = 'farmacia_pmc'
    end
    object tblProdutosultima_alteracao: TDateField
      FieldName = 'ultima_alteracao'
    end
    object tblProdutosultima_carga: TDateField
      FieldName = 'ultima_carga'
    end
    object tblProdutosdata_inventario: TDateField
      FieldName = 'data_inventario'
    end
    object tblProdutoscusto_inventario: TFloatField
      FieldName = 'custo_inventario'
    end
    object tblProdutosestoque_inventario: TFloatField
      FieldName = 'estoque_inventario'
    end
    object tblProdutosestoque_anterior: TFloatField
      FieldName = 'estoque_anterior'
    end
    object tblProdutosprecovenda_novo: TFloatField
      FieldName = 'precovenda_novo'
    end
    object tblProdutosusa_rentabilidade: TIntegerField
      FieldName = 'usa_rentabilidade'
    end
    object tblProdutosquantidade_minima_fab: TFloatField
      FieldName = 'quantidade_minima_fab'
    end
    object tblProdutosapresentacao: TStringField
      FieldName = 'apresentacao'
      Size = 60
    end
    object tblProdutossituacao: TIntegerField
      FieldName = 'situacao'
    end
    object tblProdutosprecovenda1: TFloatField
      FieldName = 'precovenda1'
    end
    object tblProdutosprecovenda2: TFloatField
      FieldName = 'precovenda2'
    end
    object tblProdutosprecovenda3: TFloatField
      FieldName = 'precovenda3'
    end
    object tblProdutosprecovenda4: TFloatField
      FieldName = 'precovenda4'
    end
    object tblProdutosprecovenda5: TFloatField
      FieldName = 'precovenda5'
    end
    object tblProdutosdesconto_precovenda: TFloatField
      FieldName = 'desconto_precovenda'
    end
    object tblProdutosdata_inventario_atual: TDateField
      FieldName = 'data_inventario_atual'
    end
    object tblProdutoscusto_inventario_atual: TFloatField
      FieldName = 'custo_inventario_atual'
    end
    object tblProdutosestoque_inventario_atual: TFloatField
      FieldName = 'estoque_inventario_atual'
    end
    object tblProdutosmargem_minima: TFloatField
      FieldName = 'margem_minima'
    end
    object tblProdutospiscofins: TStringField
      FieldName = 'piscofins'
      Size = 1
    end
    object tblProdutosreferencia_fornecedor: TStringField
      FieldName = 'referencia_fornecedor'
      Size = 30
    end
    object tblProdutoscomissao1: TFloatField
      FieldName = 'comissao1'
    end
    object tblProdutosmargem_desconto: TFloatField
      FieldName = 'margem_desconto'
    end
    object tblProdutostamanho: TStringField
      FieldName = 'tamanho'
      Size = 6
    end
    object tblProdutoscor: TStringField
      FieldName = 'cor'
      Size = 6
    end
    object tblProdutosincidencia_piscofins: TStringField
      FieldName = 'incidencia_piscofins'
      Size = 30
    end
    object tblProdutosveic_chassi: TStringField
      FieldName = 'veic_chassi'
      Size = 50
    end
    object tblProdutosveic_serie: TStringField
      FieldName = 'veic_serie'
      Size = 50
    end
    object tblProdutosveic_potencia: TStringField
      FieldName = 'veic_potencia'
      Size = 50
    end
    object tblProdutosveic_peso_liquido: TStringField
      FieldName = 'veic_peso_liquido'
      Size = 15
    end
    object tblProdutosveic_peso_bruto: TStringField
      FieldName = 'veic_peso_bruto'
      Size = 15
    end
    object tblProdutosveic_tipo_combustivel: TStringField
      FieldName = 'veic_tipo_combustivel'
    end
    object tblProdutosveic_renavam: TStringField
      FieldName = 'veic_renavam'
      Size = 50
    end
    object tblProdutosveic_ano_fabricacao: TIntegerField
      FieldName = 'veic_ano_fabricacao'
    end
    object tblProdutosveic_ano_modelo: TIntegerField
      FieldName = 'veic_ano_modelo'
    end
    object tblProdutosveic_tipo: TStringField
      FieldName = 'veic_tipo'
      Size = 50
    end
    object tblProdutosveic_tipo_pintura: TStringField
      FieldName = 'veic_tipo_pintura'
      Size = 15
    end
    object tblProdutosveic_cod_cor: TStringField
      FieldName = 'veic_cod_cor'
      Size = 15
    end
    object tblProdutosveic_cor: TStringField
      FieldName = 'veic_cor'
      Size = 30
    end
    object tblProdutosveic_vin: TStringField
      FieldName = 'veic_vin'
      Size = 10
    end
    object tblProdutosveic_numero_motor: TStringField
      FieldName = 'veic_numero_motor'
      Size = 50
    end
    object tblProdutosveic_cmkg: TStringField
      FieldName = 'veic_cmkg'
      Size = 15
    end
    object tblProdutosveic_cm3: TStringField
      FieldName = 'veic_cm3'
      Size = 15
    end
    object tblProdutosveic_distancia_eixo: TStringField
      FieldName = 'veic_distancia_eixo'
      Size = 15
    end
    object tblProdutosveic_cod_marca: TStringField
      FieldName = 'veic_cod_marca'
      Size = 15
    end
    object tblProdutosveic_especie: TStringField
      FieldName = 'veic_especie'
      Size = 50
    end
    object tblProdutosveic_condicao: TStringField
      FieldName = 'veic_condicao'
      Size = 50
    end
    object tblProdutoslote_fabricacao: TStringField
      FieldName = 'lote_fabricacao'
    end
    object tblProdutoslote_validade: TDateField
      FieldName = 'lote_validade'
    end
    object tblProdutosmargem_agregada: TFloatField
      FieldName = 'margem_agregada'
    end
    object tblProdutoscodbarra_novartis: TStringField
      FieldName = 'codbarra_novartis'
      Size = 13
    end
    object tblProdutosfarmacia_dcb: TStringField
      FieldName = 'farmacia_dcb'
    end
    object tblProdutosfarmacia_abcfarma: TStringField
      FieldName = 'farmacia_abcfarma'
      Size = 10
    end
    object tblProdutosfarmacia_apresentacao_caixa: TStringField
      FieldName = 'farmacia_apresentacao_caixa'
      Size = 10
    end
    object tblProdutosfarmacia_principioativo: TStringField
      FieldName = 'farmacia_principioativo'
      Size = 30
    end
    object tblProdutosultima_compra: TDateField
      FieldName = 'ultima_compra'
    end
    object tblProdutosfarmacia_datavigencia: TDateField
      FieldName = 'farmacia_datavigencia'
    end
    object tblProdutosfarmacia_tipo: TStringField
      FieldName = 'farmacia_tipo'
      Size = 1
    end
    object tblProdutosusa_combustivel: TStringField
      FieldName = 'usa_combustivel'
      Size = 1
    end
    object tblProdutosreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object tblProdutosperda: TFloatField
      FieldName = 'perda'
    end
    object tblProdutoscomposicao1: TStringField
      FieldName = 'composicao1'
      Size = 30
    end
    object tblProdutoscomposicao2: TStringField
      FieldName = 'composicao2'
      Size = 30
    end
    object tblProdutosiat: TStringField
      FieldName = 'iat'
      Size = 1
    end
    object tblProdutosippt: TStringField
      FieldName = 'ippt'
      Size = 1
    end
    object tblProdutossituacao_tributaria: TStringField
      FieldName = 'situacao_tributaria'
      Size = 1
    end
    object tblProdutosflag_sis: TStringField
      FieldName = 'flag_sis'
      Size = 1
    end
    object tblProdutosflag_aceito: TStringField
      FieldName = 'flag_aceito'
      Size = 3
    end
    object tblProdutosflag_est: TStringField
      FieldName = 'flag_est'
      Size = 1
    end
    object tblProdutoscsosn: TStringField
      FieldName = 'csosn'
      Size = 200
    end
    object tblProdutoscodoriginal: TStringField
      FieldName = 'codoriginal'
    end
    object tblProdutoscusto_atacado: TFloatField
      FieldName = 'custo_atacado'
    end
    object tblProdutosunidade_atacado: TStringField
      FieldName = 'unidade_atacado'
      Size = 2
    end
    object tblProdutosqtde_embalagematacado: TFloatField
      FieldName = 'qtde_embalagematacado'
    end
    object tblProdutospmargem1: TFloatField
      FieldName = 'pmargem1'
    end
    object tblProdutospmargem2: TFloatField
      FieldName = 'pmargem2'
    end
    object tblProdutospmargem3: TFloatField
      FieldName = 'pmargem3'
    end
    object tblProdutospmargem4: TFloatField
      FieldName = 'pmargem4'
    end
    object tblProdutospmargem5: TFloatField
      FieldName = 'pmargem5'
    end
    object tblProdutospmargematacado1: TFloatField
      FieldName = 'pmargematacado1'
    end
    object tblProdutospmargematacado2: TFloatField
      FieldName = 'pmargematacado2'
    end
    object tblProdutospmargematacado3: TFloatField
      FieldName = 'pmargematacado3'
    end
    object tblProdutospmargematacado4: TFloatField
      FieldName = 'pmargematacado4'
    end
    object tblProdutospmargematacado5: TFloatField
      FieldName = 'pmargematacado5'
    end
    object tblProdutospmargematacado6: TFloatField
      FieldName = 'pmargematacado6'
    end
    object tblProdutosprecoatacado1: TFloatField
      FieldName = 'precoatacado1'
    end
    object tblProdutosprecoatacado2: TFloatField
      FieldName = 'precoatacado2'
    end
    object tblProdutosprecoatacado3: TFloatField
      FieldName = 'precoatacado3'
    end
    object tblProdutosprecoatacado4: TFloatField
      FieldName = 'precoatacado4'
    end
    object tblProdutosprecoatacado5: TFloatField
      FieldName = 'precoatacado5'
    end
    object tblProdutosind_cfop: TStringField
      FieldName = 'ind_cfop'
      Size = 6
    end
    object tblProdutoscfop_desc: TStringField
      FieldName = 'cfop_desc'
      Size = 30
    end
    object tblProdutosusa_lote: TIntegerField
      FieldName = 'usa_lote'
    end
    object tblProdutosind_cfop_venda_dentro: TStringField
      FieldName = 'ind_cfop_venda_dentro'
      Size = 6
    end
    object tblProdutoscodconta: TStringField
      FieldName = 'codconta'
      Size = 6
    end
    object tblProdutosind_cfop_venda_fora: TStringField
      FieldName = 'ind_cfop_venda_fora'
      Size = 6
    end
    object tblProdutosind_cfop_devolucao_dentro: TStringField
      FieldName = 'ind_cfop_devolucao_dentro'
      Size = 6
    end
    object tblProdutosind_cfop_devolucao_fora: TStringField
      FieldName = 'ind_cfop_devolucao_fora'
      Size = 6
    end
    object tblProdutosind_cfop_garantia_dentro: TStringField
      FieldName = 'ind_cfop_garantia_dentro'
      Size = 6
    end
    object tblProdutosind_cfop_garantia_fora: TStringField
      FieldName = 'ind_cfop_garantia_fora'
      Size = 6
    end
    object tblProdutosusa_tb_pc: TStringField
      FieldName = 'usa_tb_pc'
      Size = 4
    end
    object tblProdutosativa: TStringField
      FieldName = 'ativa'
      Size = 10
    end
    object tblProdutoscest: TStringField
      FieldName = 'cest'
      Size = 7
    end
    object tblProdutosorigem: TIntegerField
      FieldName = 'origem'
    end
    object tblProdutosind_cfop_nfce: TStringField
      FieldName = 'ind_cfop_nfce'
      Size = 4
    end
    object tblProdutosid_tipo_servico: TIntegerField
      FieldName = 'id_tipo_servico'
    end
    object tblProdutosnao_movimenta_estoque: TStringField
      FieldName = 'nao_movimenta_estoque'
      Size = 1
    end
    object tblProdutospesagem_auotmatica: TStringField
      FieldName = 'pesagem_auotmatica'
      Size = 1
    end
    object tblProdutosinforma_codigo_barra_xml: TStringField
      FieldName = 'informa_codigo_barra_xml'
      Size = 1
    end
    object tblProdutoscodigo_anp: TStringField
      FieldName = 'codigo_anp'
      Size = 10
    end
    object tblProdutoscombo: TStringField
      FieldName = 'combo'
      Size = 1
    end
    object tblProdutosind_cfop_dev_compra_dentro: TStringField
      FieldName = 'ind_cfop_dev_compra_dentro'
      Size = 6
    end
    object tblProdutosind_cfop_dev_compra_fora: TStringField
      FieldName = 'ind_cfop_dev_compra_fora'
      Size = 6
    end
    object tblProdutospizza: TStringField
      FieldName = 'pizza'
      Size = 1
    end
    object tblProdutospercglnn: TFloatField
      FieldName = 'percglnn'
    end
    object tblProdutospercglgni: TFloatField
      FieldName = 'percglgni'
    end
    object tblProdutospglp: TFloatField
      FieldName = 'pglp'
    end
    object tblProdutosvpart: TFloatField
      FieldName = 'vpart'
    end
    object tblProdutosecf_icms: TStringField
      FieldName = 'ecf_icms'
      Size = 30
    end
    object tblProdutosidonline: TIntegerField
      FieldName = 'idonline'
    end
    object tblProdutosemdestaque: TStringField
      FieldName = 'emdestaque'
      Size = 1
    end
    object tblProdutosdescontomaximo: TFloatField
      FieldName = 'descontomaximo'
    end
    object tblProdutosatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object tblProdutoscontrolalote: TStringField
      FieldName = 'controlalote'
      Size = 1
    end
    object tblProdutoscodbarra: TStringField
      FieldName = 'codbarra'
      Size = 14
    end
    object tblProdutosunidade: TStringField
      FieldName = 'unidade'
      Size = 6
    end
    object tblProdutospiscstcsosn: TStringField
      FieldName = 'piscstcsosn'
      Size = 3
    end
    object tblProdutoscofinscstcsosn: TStringField
      FieldName = 'cofinscstcsosn'
      Size = 3
    end
    object tblProdutosicmsrepasse: TStringField
      FieldName = 'icmsrepasse'
      Size = 1
    end
    object tblProdutosretornavel: TStringField
      FieldName = 'retornavel'
      Size = 1
    end
  end
  object qryCMun: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'select codigo from commerce.cidades where UPPER(commerce.retira_' +
        'acentuacao(nome)) like :pCIDADE')
    Left = 32
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pCIDADE'
        Value = nil
      end>
    object qryCMuncodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
  end
  object DANFCe: TACBrNFeDANFCeFortes
    NomeDocumento = 'Documento Auxiliar da NFCe - Moebios Commerce.pdf'
    Sistema = 'Moebios Commerce'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 112
    Top = 216
  end
  object qryApagaRegistro: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'DELETE FROM moebios.registro')
    Left = 112
    Top = 264
  end
  object qryAjustes: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.configuracoes')
    Left = 112
    Top = 312
    object qryAjustescodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object qryAjustesultimo_backup: TDateField
      FieldName = 'ultimo_backup'
    end
    object qryAjustespapel_parede: TStringField
      FieldName = 'papel_parede'
      Size = 150
    end
    object qryAjustesaviso_contas_pagar: TIntegerField
      FieldName = 'aviso_contas_pagar'
    end
    object qryAjustesaviso_cheque: TIntegerField
      FieldName = 'aviso_cheque'
    end
    object qryAjustesestoque_negativo: TIntegerField
      FieldName = 'estoque_negativo'
    end
    object qryAjustescasas_decimais_qtde: TIntegerField
      FieldName = 'casas_decimais_qtde'
    end
    object qryAjustescasas_decimais_valor: TIntegerField
      FieldName = 'casas_decimais_valor'
    end
    object qryAjustesvenda_cadastro_cheque: TIntegerField
      FieldName = 'venda_cadastro_cheque'
    end
    object qryAjustesvenda_cadastro_cartao: TIntegerField
      FieldName = 'venda_cadastro_cartao'
    end
    object qryAjustesvenda_tiponota: TIntegerField
      FieldName = 'venda_tiponota'
    end
    object qryAjustesvenda_qtde_vias_nota: TIntegerField
      FieldName = 'venda_qtde_vias_nota'
    end
    object qryAjustesvenda_porta_impressora: TStringField
      FieldName = 'venda_porta_impressora'
      Size = 100
    end
    object qryAjustesvenda_tipo_impressora: TIntegerField
      FieldName = 'venda_tipo_impressora'
    end
    object qryAjustesvenda_limite_cliente: TIntegerField
      FieldName = 'venda_limite_cliente'
    end
    object qryAjustesos_tiponota: TIntegerField
      FieldName = 'os_tiponota'
    end
    object qryAjustesos_qtde_vias_nota: TIntegerField
      FieldName = 'os_qtde_vias_nota'
    end
    object qryAjustesos_porta_impressora: TStringField
      FieldName = 'os_porta_impressora'
      Size = 100
    end
    object qryAjustesos_tipo_impressora: TIntegerField
      FieldName = 'os_tipo_impressora'
    end
    object qryAjustesorcamento_tiponota: TIntegerField
      FieldName = 'orcamento_tiponota'
    end
    object qryAjustesorcamento_qtde_vias_nota: TIntegerField
      FieldName = 'orcamento_qtde_vias_nota'
    end
    object qryAjustesorcamento_porta_impressora: TStringField
      FieldName = 'orcamento_porta_impressora'
      Size = 100
    end
    object qryAjustesorcamento_tipo_impressora: TIntegerField
      FieldName = 'orcamento_tipo_impressora'
    end
    object qryAjustescontasreceber_carencia: TIntegerField
      FieldName = 'contasreceber_carencia'
    end
    object qryAjustescontasreceber_taxajuros: TFloatField
      FieldName = 'contasreceber_taxajuros'
    end
    object qryAjustescontasreceber_multa: TFloatField
      FieldName = 'contasreceber_multa'
    end
    object qryAjustescontasreceber_desconto_percent: TFloatField
      FieldName = 'contasreceber_desconto_percent'
    end
    object qryAjustescontasreceber_desconto_permitir: TIntegerField
      FieldName = 'contasreceber_desconto_permitir'
    end
    object qryAjustesecf_modelo: TStringField
      FieldName = 'ecf_modelo'
      Size = 30
    end
    object qryAjustesecf_porta: TStringField
      FieldName = 'ecf_porta'
      Size = 50
    end
    object qryAjustesecf_tef: TIntegerField
      FieldName = 'ecf_tef'
    end
    object qryAjustesecf_tipo: TStringField
      FieldName = 'ecf_tipo'
    end
    object qryAjustesbalancapdv_modelo: TStringField
      FieldName = 'balancapdv_modelo'
      Size = 50
    end
    object qryAjustesbalancapdv_porta: TStringField
      FieldName = 'balancapdv_porta'
      Size = 10
    end
    object qryAjustesimpressoracheque_modelo: TStringField
      FieldName = 'impressoracheque_modelo'
      Size = 50
    end
    object qryAjustesimpressoracheque_porta: TStringField
      FieldName = 'impressoracheque_porta'
      Size = 10
    end
    object qryAjustesbalanca_modelo: TStringField
      FieldName = 'balanca_modelo'
      Size = 50
    end
    object qryAjustesimpressorabarras_modelo: TStringField
      FieldName = 'impressorabarras_modelo'
      Size = 50
    end
    object qryAjustesbalanca_caminho: TStringField
      FieldName = 'balanca_caminho'
      Size = 100
    end
    object qryAjustescadastro_produto: TStringField
      FieldName = 'cadastro_produto'
    end
    object qryAjustesramo_atividade: TIntegerField
      FieldName = 'ramo_atividade'
    end
    object qryAjustesextrato_tiponota: TIntegerField
      FieldName = 'extrato_tiponota'
    end
    object qryAjustesbobina_subirpapel: TIntegerField
      FieldName = 'bobina_subirpapel'
    end
    object qryAjustesclassificacao: TStringField
      FieldName = 'classificacao'
      Size = 10
    end
    object qryAjustesboleto_formapgto: TStringField
      FieldName = 'boleto_formapgto'
    end
    object qryAjustesplano_venda_av: TStringField
      FieldName = 'plano_venda_av'
      Size = 30
    end
    object qryAjustesplano_venda_ap: TStringField
      FieldName = 'plano_venda_ap'
      Size = 30
    end
    object qryAjustesplano_os_av: TStringField
      FieldName = 'plano_os_av'
      Size = 30
    end
    object qryAjustesplano_os_ap: TStringField
      FieldName = 'plano_os_ap'
      Size = 30
    end
    object qryAjustesplano_outras_entradas: TStringField
      FieldName = 'plano_outras_entradas'
      Size = 30
    end
    object qryAjustesplano_outras_saidas: TStringField
      FieldName = 'plano_outras_saidas'
      Size = 30
    end
    object qryAjustesplano_recebto_crediario: TStringField
      FieldName = 'plano_recebto_crediario'
      Size = 30
    end
    object qryAjustesnf_itens_pagina: TIntegerField
      FieldName = 'nf_itens_pagina'
    end
    object qryAjustesnf_itens_transporte: TIntegerField
      FieldName = 'nf_itens_transporte'
    end
    object qryAjustesnf_linha_transporte: TIntegerField
      FieldName = 'nf_linha_transporte'
    end
    object qryAjustesnf_salto_pagina: TIntegerField
      FieldName = 'nf_salto_pagina'
    end
    object qryAjustesnf_tipo: TIntegerField
      FieldName = 'nf_tipo'
    end
    object qryAjustesnf_impressora: TStringField
      FieldName = 'nf_impressora'
      Size = 100
    end
    object qryAjustesvenda_fechamento_caixa: TIntegerField
      FieldName = 'venda_fechamento_caixa'
    end
    object qryAjustesdesconto_avista: TFloatField
      FieldName = 'desconto_avista'
    end
    object qryAjustesdesconto_produto: TFloatField
      FieldName = 'desconto_produto'
    end
    object qryAjustesdesconto_totalnota: TFloatField
      FieldName = 'desconto_totalnota'
    end
    object qryAjustestipo_venda: TStringField
      FieldName = 'tipo_venda'
    end
    object qryAjustesvenda_alterar_preco: TIntegerField
      FieldName = 'venda_alterar_preco'
    end
    object qryAjustesnf_linha_subtotal: TIntegerField
      FieldName = 'nf_linha_subtotal'
    end
    object qryAjustesnf_linha_total: TIntegerField
      FieldName = 'nf_linha_total'
    end
    object qryAjustesecf_caixa: TStringField
      FieldName = 'ecf_caixa'
      Size = 3
    end
    object qryAjustesecf_serial: TStringField
      FieldName = 'ecf_serial'
      Size = 30
    end
    object qryAjustesfarmacia_envio: TStringField
      FieldName = 'farmacia_envio'
      Size = 60
    end
    object qryAjustesfarmacia_resposta: TStringField
      FieldName = 'farmacia_resposta'
      Size = 60
    end
    object qryAjustesfarmacia_envio_resposta: TStringField
      FieldName = 'farmacia_envio_resposta'
      Size = 60
    end
    object qryAjustesfarmacia_login: TStringField
      FieldName = 'farmacia_login'
    end
    object qryAjustesfarmacia_senha: TStringField
      FieldName = 'farmacia_senha'
    end
    object qryAjustesultima_carga: TDateField
      FieldName = 'ultima_carga'
    end
    object qryAjustesimprime_cupom_vinculado: TIntegerField
      FieldName = 'imprime_cupom_vinculado'
    end
    object qryAjustesimprime_produtos_vinculados: TIntegerField
      FieldName = 'imprime_produtos_vinculados'
    end
    object qryAjustesimprime_comprovante_debito: TIntegerField
      FieldName = 'imprime_comprovante_debito'
    end
    object qryAjustesimprime_duplicata: TIntegerField
      FieldName = 'imprime_duplicata'
    end
    object qryAjustescontasreceber_bloqueio: TIntegerField
      FieldName = 'contasreceber_bloqueio'
    end
    object qryAjustesrecibo_tiponota: TIntegerField
      FieldName = 'recibo_tiponota'
    end
    object qryAjustesnr_controle_ecf: TStringField
      FieldName = 'nr_controle_ecf'
      Size = 6
    end
    object qryAjustesbalanca_programa: TStringField
      FieldName = 'balanca_programa'
      Size = 150
    end
    object qryAjustestipo_duplicata: TStringField
      FieldName = 'tipo_duplicata'
    end
    object qryAjustesconcilia_venda: TIntegerField
      FieldName = 'concilia_venda'
    end
    object qryAjustescontrola_entrega: TIntegerField
      FieldName = 'controla_entrega'
    end
    object qryAjustesentrega_impressao: TIntegerField
      FieldName = 'entrega_impressao'
    end
    object qryAjustesentrega_vias: TIntegerField
      FieldName = 'entrega_vias'
    end
    object qryAjustescondicional: TIntegerField
      FieldName = 'condicional'
    end
    object qryAjustescondicional_prazo: TIntegerField
      FieldName = 'condicional_prazo'
    end
    object qryAjustesvs_ativar: TIntegerField
      FieldName = 'vs_ativar'
    end
    object qryAjustesvs_dinheiro: TIntegerField
      FieldName = 'vs_dinheiro'
    end
    object qryAjustesvs_chequeav: TIntegerField
      FieldName = 'vs_chequeav'
    end
    object qryAjustesvs_chequeap: TIntegerField
      FieldName = 'vs_chequeap'
    end
    object qryAjustesvs_cartraocred: TIntegerField
      FieldName = 'vs_cartraocred'
    end
    object qryAjustesvs_cartaodeb: TIntegerField
      FieldName = 'vs_cartaodeb'
    end
    object qryAjustesvs_crediario: TIntegerField
      FieldName = 'vs_crediario'
    end
    object qryAjustesvs_cliente_vista: TStringField
      FieldName = 'vs_cliente_vista'
      Size = 6
    end
    object qryAjustesvs_caixa: TIntegerField
      FieldName = 'vs_caixa'
    end
    object qryAjustesvs_relatorio: TIntegerField
      FieldName = 'vs_relatorio'
    end
    object qryAjustesvs_vias: TIntegerField
      FieldName = 'vs_vias'
    end
    object qryAjustesvs_visualizar: TIntegerField
      FieldName = 'vs_visualizar'
    end
    object qryAjustescondicional_modelo: TIntegerField
      FieldName = 'condicional_modelo'
    end
    object qryAjustesalterar_unitario: TIntegerField
      FieldName = 'alterar_unitario'
    end
    object qryAjustescontasreceber_valorjuros: TFloatField
      FieldName = 'contasreceber_valorjuros'
    end
    object qryAjustescontasreceber_juros_dinheiro: TIntegerField
      FieldName = 'contasreceber_juros_dinheiro'
    end
    object qryAjustesplano_duplicata_nfe: TStringField
      FieldName = 'plano_duplicata_nfe'
      Size = 30
    end
    object qryAjustesvarejo_atacado: TIntegerField
      FieldName = 'varejo_atacado'
    end
    object qryAjustesvisualiza_mensagem: TIntegerField
      FieldName = 'visualiza_mensagem'
    end
    object qryAjustesserial_repetido: TIntegerField
      FieldName = 'serial_repetido'
    end
    object qryAjustesocultar_custo: TIntegerField
      FieldName = 'ocultar_custo'
    end
    object qryAjustesocultar_produto_inativo: TIntegerField
      FieldName = 'ocultar_produto_inativo'
    end
    object qryAjustesocultar_cliente_inativo: TIntegerField
      FieldName = 'ocultar_cliente_inativo'
    end
    object qryAjustesobs_farma: TIntegerField
      FieldName = 'obs_farma'
    end
    object qryAjustesobs_farma_texto: TStringField
      FieldName = 'obs_farma_texto'
      Size = 45
    end
    object qryAjustescusto_maior_venda: TIntegerField
      FieldName = 'custo_maior_venda'
    end
    object qryAjustesvender_abaixo_custo: TIntegerField
      FieldName = 'vender_abaixo_custo'
    end
    object qryAjustesnf_gerar_receber: TIntegerField
      FieldName = 'nf_gerar_receber'
    end
    object qryAjustesnf_codigobarra_nfe: TIntegerField
      FieldName = 'nf_codigobarra_nfe'
    end
    object qryAjustesnf_grade_nfe: TIntegerField
      FieldName = 'nf_grade_nfe'
    end
    object qryAjustesnf_serial_nfe: TIntegerField
      FieldName = 'nf_serial_nfe'
    end
    object qryAjustesnf_referencia_nfe: TIntegerField
      FieldName = 'nf_referencia_nfe'
    end
    object qryAjustesnf_gerar_duplicata: TIntegerField
      FieldName = 'nf_gerar_duplicata'
    end
    object qryAjustesvale_caixa: TIntegerField
      FieldName = 'vale_caixa'
    end
    object qryAjustescontas_receber_bloqueio: TIntegerField
      FieldName = 'contas_receber_bloqueio'
    end
    object qryAjustescupom_imprimir_codigo: TIntegerField
      FieldName = 'cupom_imprimir_codigo'
    end
    object qryAjustescliente_pede_cpf: TIntegerField
      FieldName = 'cliente_pede_cpf'
    end
    object qryAjustesverifica_cod_barra: TIntegerField
      FieldName = 'verifica_cod_barra'
    end
    object qryAjustesverifica_nome_produto: TIntegerField
      FieldName = 'verifica_nome_produto'
    end
    object qryAjustesvs_frete: TIntegerField
      FieldName = 'vs_frete'
    end
    object qryAjustesinventario_automatico: TIntegerField
      FieldName = 'inventario_automatico'
    end
    object qryAjustesbaixar_estoque_nota_saida: TIntegerField
      FieldName = 'baixar_estoque_nota_saida'
    end
    object qryAjustesetiqueta_07: TIntegerField
      FieldName = 'etiqueta_07'
    end
    object qryAjustesetiqueta_07_1: TIntegerField
      FieldName = 'etiqueta_07_1'
    end
    object qryAjustesetiqueta_07_2: TIntegerField
      FieldName = 'etiqueta_07_2'
    end
    object qryAjustesemail_servidor_smtp: TStringField
      FieldName = 'email_servidor_smtp'
      Size = 100
    end
    object qryAjustesemail_porta: TStringField
      FieldName = 'email_porta'
      Size = 10
    end
    object qryAjustesemail_usuario: TStringField
      FieldName = 'email_usuario'
      Size = 100
    end
    object qryAjustesemail_senha: TStringField
      FieldName = 'email_senha'
    end
    object qryAjustesemail_assunto: TStringField
      FieldName = 'email_assunto'
      Size = 100
    end
    object qryAjustesemail_exige_conexao: TIntegerField
      FieldName = 'email_exige_conexao'
    end
    object qryAjustesinestra: TIntegerField
      FieldName = 'inestra'
    end
    object qryAjustesfarmacia_inventario_fecha: TIntegerField
      FieldName = 'farmacia_inventario_fecha'
    end
    object qryAjustesfarmacia_envio_novartis: TStringField
      FieldName = 'farmacia_envio_novartis'
      Size = 60
    end
    object qryAjustesfarmacia_resposta_novartis: TStringField
      FieldName = 'farmacia_resposta_novartis'
      Size = 60
    end
    object qryAjustesfarmacia_inventario_confirma: TStringField
      FieldName = 'farmacia_inventario_confirma'
      Size = 1
    end
    object qryAjustesfarmacia_inventario_data: TDateField
      FieldName = 'farmacia_inventario_data'
    end
    object qryAjustescalcula_isentas_outras: TIntegerField
      FieldName = 'calcula_isentas_outras'
    end
    object qryAjustesusa_rentabilidade: TIntegerField
      FieldName = 'usa_rentabilidade'
    end
    object qryAjustesusa_produtor_rural: TIntegerField
      FieldName = 'usa_produtor_rural'
    end
    object qryAjustesind_clie_entrada: TStringField
      FieldName = 'ind_clie_entrada'
      Size = 6
    end
    object qryAjustesind_cfop_entrada: TStringField
      FieldName = 'ind_cfop_entrada'
      Size = 5
    end
    object qryAjustesind_clie_saida: TStringField
      FieldName = 'ind_clie_saida'
      Size = 6
    end
    object qryAjustesind_cfop_saida: TStringField
      FieldName = 'ind_cfop_saida'
      Size = 5
    end
    object qryAjustesind_clie_perda: TStringField
      FieldName = 'ind_clie_perda'
      Size = 6
    end
    object qryAjustesind_cfop_perda: TStringField
      FieldName = 'ind_cfop_perda'
      Size = 5
    end
    object qryAjustesind_mostra_composicao: TIntegerField
      FieldName = 'ind_mostra_composicao'
    end
    object qryAjustescheca_serial_nota_saida: TIntegerField
      FieldName = 'checa_serial_nota_saida'
    end
    object qryAjustescor_comercio: TStringField
      FieldName = 'cor_comercio'
      Size = 10
    end
    object qryAjusteslogo_comercio: TStringField
      FieldName = 'logo_comercio'
      Size = 100
    end
    object qryAjustescor_farmacia: TStringField
      FieldName = 'cor_farmacia'
      Size = 10
    end
    object qryAjusteslogo_farmacia: TStringField
      FieldName = 'logo_farmacia'
      Size = 100
    end
    object qryAjustescor_pecas: TStringField
      FieldName = 'cor_pecas'
      Size = 10
    end
    object qryAjusteslogo_pecas: TStringField
      FieldName = 'logo_pecas'
      Size = 100
    end
    object qryAjustescor_mercado: TStringField
      FieldName = 'cor_mercado'
      Size = 10
    end
    object qryAjusteslogo_mercado: TStringField
      FieldName = 'logo_mercado'
      Size = 100
    end
    object qryAjustescor_posto: TStringField
      FieldName = 'cor_posto'
      Size = 10
    end
    object qryAjusteslogo_posto: TStringField
      FieldName = 'logo_posto'
      Size = 100
    end
    object qryAjustesind_clie_entrada_desc: TStringField
      FieldName = 'ind_clie_entrada_desc'
      Size = 30
    end
    object qryAjustesind_cfop_entrada_desc: TStringField
      FieldName = 'ind_cfop_entrada_desc'
      Size = 30
    end
    object qryAjustesind_clie_saida_desc: TStringField
      FieldName = 'ind_clie_saida_desc'
      Size = 30
    end
    object qryAjustesind_cfop_saida_desc: TStringField
      FieldName = 'ind_cfop_saida_desc'
      Size = 30
    end
    object qryAjustesind_clie_perda_desc: TStringField
      FieldName = 'ind_clie_perda_desc'
      Size = 30
    end
    object qryAjustesind_cfop_perda_desc: TStringField
      FieldName = 'ind_cfop_perda_desc'
      Size = 30
    end
    object qryAjustesind_cfop_venda_dentro: TStringField
      FieldName = 'ind_cfop_venda_dentro'
      Size = 6
    end
    object qryAjustesind_cfop_venda_fora: TStringField
      FieldName = 'ind_cfop_venda_fora'
      Size = 6
    end
    object qryAjustesind_cfop_devolucao_dentro: TStringField
      FieldName = 'ind_cfop_devolucao_dentro'
      Size = 6
    end
    object qryAjustesind_cfop_devolucao_fora: TStringField
      FieldName = 'ind_cfop_devolucao_fora'
      Size = 6
    end
    object qryAjustesind_cfop_servico_dentro: TStringField
      FieldName = 'ind_cfop_servico_dentro'
      Size = 6
    end
    object qryAjustesind_cfop_servico_fora: TStringField
      FieldName = 'ind_cfop_servico_fora'
      Size = 6
    end
    object qryAjustescfop_venda_dentro_desc: TStringField
      FieldName = 'cfop_venda_dentro_desc'
      Size = 30
    end
    object qryAjustescfop_venda_fora_desc: TStringField
      FieldName = 'cfop_venda_fora_desc'
      Size = 30
    end
    object qryAjustescfop_devolucao_dentro_desc: TStringField
      FieldName = 'cfop_devolucao_dentro_desc'
      Size = 30
    end
    object qryAjustescfop_devolucao_fora_desc: TStringField
      FieldName = 'cfop_devolucao_fora_desc'
      Size = 30
    end
    object qryAjustescfop_servico_dentro_desc: TStringField
      FieldName = 'cfop_servico_dentro_desc'
      Size = 30
    end
    object qryAjustescfop_servico_fora_desc: TStringField
      FieldName = 'cfop_servico_fora_desc'
      Size = 30
    end
    object qryAjustestipo_nf: TIntegerField
      FieldName = 'tipo_nf'
    end
    object qryAjustescor_estoque_positivo: TStringField
      FieldName = 'cor_estoque_positivo'
      Size = 10
    end
    object qryAjustescor_estoque_negativo: TStringField
      FieldName = 'cor_estoque_negativo'
      Size = 10
    end
    object qryAjustescor_estoque_zerado: TStringField
      FieldName = 'cor_estoque_zerado'
      Size = 10
    end
    object qryAjustestipo_pesquisa: TIntegerField
      FieldName = 'tipo_pesquisa'
    end
    object qryAjustesecf_concomitante: TIntegerField
      FieldName = 'ecf_concomitante'
    end
    object qryAjustesplano_pagto_forn: TStringField
      FieldName = 'plano_pagto_forn'
      Size = 30
    end
    object qryAjusteshab_prevenda: TIntegerField
      FieldName = 'hab_prevenda'
    end
    object qryAjustescodclienteav: TStringField
      FieldName = 'codclienteav'
      Size = 6
    end
    object qryAjustescodclientemodelo: TStringField
      FieldName = 'codclientemodelo'
      Size = 6
    end
    object qryAjustescodprodutomodelo: TStringField
      FieldName = 'codprodutomodelo'
      Size = 6
    end
    object qryAjustescodfornecedormodelo: TStringField
      FieldName = 'codfornecedormodelo'
      Size = 6
    end
    object qryAjustesusa_caixa_diario: TIntegerField
      FieldName = 'usa_caixa_diario'
    end
    object qryAjustesimprimi_orcamento_auto: TIntegerField
      FieldName = 'imprimi_orcamento_auto'
    end
    object qryAjustesfixa_forma_pgto_cliente: TIntegerField
      FieldName = 'fixa_forma_pgto_cliente'
    end
    object qryAjustesversaobd: TStringField
      FieldName = 'versaobd'
      Size = 8
    end
    object qryAjustesusa_caixa_padrao_usuario: TIntegerField
      FieldName = 'usa_caixa_padrao_usuario'
    end
    object qryAjustestexto_padrao_venda: TStringField
      FieldName = 'texto_padrao_venda'
      Size = 200
    end
    object qryAjustestexto_padrao_devolucao: TStringField
      FieldName = 'texto_padrao_devolucao'
      Size = 200
    end
    object qryAjustestexto_padrao_garantia: TStringField
      FieldName = 'texto_padrao_garantia'
      Size = 200
    end
    object qryAjustesavisa_estoque_minimo: TIntegerField
      FieldName = 'avisa_estoque_minimo'
    end
    object qryAjustesatendimentoimpressao: TStringField
      FieldName = 'atendimentoimpressao'
      Size = 1
    end
    object qryAjustesatendimentovias: TIntegerField
      FieldName = 'atendimentovias'
    end
    object qryAjustesatendimentoficha: TStringField
      FieldName = 'atendimentoficha'
      Size = 1
    end
    object qryAjustesatendimentoimpressora: TStringField
      FieldName = 'atendimentoimpressora'
      Size = 100
    end
    object qryAjustesatendimentoimpresmodelo: TIntegerField
      FieldName = 'atendimentoimpresmodelo'
    end
    object qryAjustespermite_prod_preco_zero: TStringField
      FieldName = 'permite_prod_preco_zero'
      Size = 1
    end
    object qryAjustesacrescimo_produto: TFloatField
      FieldName = 'acrescimo_produto'
    end
    object qryAjustesnao_sol_senha_mov_estoque: TStringField
      FieldName = 'nao_sol_senha_mov_estoque'
      Size = 1
    end
    object qryAjustescobra_couver: TStringField
      FieldName = 'cobra_couver'
      Size = 1
    end
    object qryAjustesvalor_couver: TFloatField
      FieldName = 'valor_couver'
    end
    object qryAjustescobra_comissao: TStringField
      FieldName = 'cobra_comissao'
      Size = 1
    end
    object qryAjustescomissao_percentual: TFloatField
      FieldName = 'comissao_percentual'
    end
    object qryAjustesqtd_mesas_mobile: TIntegerField
      FieldName = 'qtd_mesas_mobile'
    end
    object qryAjustesproduto_taxa_entrega: TStringField
      FieldName = 'produto_taxa_entrega'
      Size = 6
    end
    object qryAjustestip_imp_delivery: TIntegerField
      FieldName = 'tip_imp_delivery'
    end
    object qryAjustesultimaverificaoxml: TDateTimeField
      FieldName = 'ultimaverificaoxml'
    end
    object qryAjustesv_exibe_barra_atalho: TStringField
      FieldName = 'v_exibe_barra_atalho'
      Size = 1
    end
    object qryAjustesv_cor_fundo_barra_titulo: TStringField
      FieldName = 'v_cor_fundo_barra_titulo'
      Size = 10
    end
    object qryAjustesv_cor_fonte_barra_titulo: TStringField
      FieldName = 'v_cor_fonte_barra_titulo'
      Size = 10
    end
    object qryAjustesv_cor_fundo_barra_rodape: TStringField
      FieldName = 'v_cor_fundo_barra_rodape'
      Size = 10
    end
    object qryAjustesv_cor_fonte_barra_rodape: TStringField
      FieldName = 'v_cor_fonte_barra_rodape'
      Size = 10
    end
    object qryAjustesv_men_cad_fundo: TStringField
      FieldName = 'v_men_cad_fundo'
      Size = 10
    end
    object qryAjustesv_men_cad_fonte: TStringField
      FieldName = 'v_men_cad_fonte'
      Size = 10
    end
    object qryAjustesv_men_est_fundo: TStringField
      FieldName = 'v_men_est_fundo'
      Size = 10
    end
    object qryAjustesv_men_est_fonte: TStringField
      FieldName = 'v_men_est_fonte'
      Size = 10
    end
    object qryAjustesv_men_mov_fundo: TStringField
      FieldName = 'v_men_mov_fundo'
      Size = 10
    end
    object qryAjustesv_men_mov_fonte: TStringField
      FieldName = 'v_men_mov_fonte'
      Size = 10
    end
    object qryAjustesv_men_fin_fundo: TStringField
      FieldName = 'v_men_fin_fundo'
      Size = 10
    end
    object qryAjustesv_men_fin_fonte: TStringField
      FieldName = 'v_men_fin_fonte'
      Size = 10
    end
    object qryAjustesv_men_rel_fundo: TStringField
      FieldName = 'v_men_rel_fundo'
      Size = 10
    end
    object qryAjustesv_men_rel_fonte: TStringField
      FieldName = 'v_men_rel_fonte'
      Size = 10
    end
    object qryAjustesv_men_con_fundo: TStringField
      FieldName = 'v_men_con_fundo'
      Size = 10
    end
    object qryAjustesv_men_con_fonte: TStringField
      FieldName = 'v_men_con_fonte'
      Size = 10
    end
    object qryAjustesv_imagem_fundo: TStringField
      FieldName = 'v_imagem_fundo'
      Size = 255
    end
    object qryAjustesv_ata_bot_cor_fundo: TStringField
      FieldName = 'v_ata_bot_cor_fundo'
      Size = 10
    end
    object qryAjustesv_ata_bot_cor_fonte: TStringField
      FieldName = 'v_ata_bot_cor_fonte'
      Size = 10
    end
    object qryAjustesv_ata_exibe_imagem: TStringField
      FieldName = 'v_ata_exibe_imagem'
      Size = 1
    end
    object qryAjustesv_ata_exibe_resumo_caixa: TStringField
      FieldName = 'v_ata_exibe_resumo_caixa'
      Size = 1
    end
    object qryAjustesv_ata_caixa_cor_fundo: TStringField
      FieldName = 'v_ata_caixa_cor_fundo'
      Size = 10
    end
    object qryAjustesv_ata_caixa_cor_fonte: TStringField
      FieldName = 'v_ata_caixa_cor_fonte'
      Size = 10
    end
    object qryAjustesutiliza_leitor_codigo_barra: TStringField
      FieldName = 'utiliza_leitor_codigo_barra'
      Size = 1
    end
    object qryAjustesemail_tls: TStringField
      FieldName = 'email_tls'
      Size = 1
    end
    object qryAjustesemail_ssl: TStringField
      FieldName = 'email_ssl'
      Size = 1
    end
    object qryAjustesnao_exibe_fech_atend: TStringField
      FieldName = 'nao_exibe_fech_atend'
      Size = 1
    end
    object qryAjustesnao_informa_cli_atend: TStringField
      FieldName = 'nao_informa_cli_atend'
      Size = 1
    end
    object qryAjustesnao_utiliza_extra: TStringField
      FieldName = 'nao_utiliza_extra'
      Size = 1
    end
    object qryAjustesativa_cad_produto_simples: TStringField
      FieldName = 'ativa_cad_produto_simples'
      Size = 1
    end
    object qryAjustesativa_campo_pedido_cliente: TStringField
      FieldName = 'ativa_campo_pedido_cliente'
      Size = 1
    end
    object qryAjustescep_busca: TStringField
      FieldName = 'cep_busca'
      Size = 1
    end
    object qryAjustescep_servidor: TIntegerField
      FieldName = 'cep_servidor'
    end
    object qryAjustescep_chave: TStringField
      FieldName = 'cep_chave'
      Size = 100
    end
    object qryAjustesind_cfop_dev_compra_dentro: TStringField
      FieldName = 'ind_cfop_dev_compra_dentro'
      Size = 6
    end
    object qryAjustesind_cfop_dev_compra_fora: TStringField
      FieldName = 'ind_cfop_dev_compra_fora'
      Size = 6
    end
    object qryAjustesind_cfop_garantia_dentro: TStringField
      FieldName = 'ind_cfop_garantia_dentro'
      Size = 6
    end
    object qryAjustesind_cfop_garantia_fora: TStringField
      FieldName = 'ind_cfop_garantia_fora'
      Size = 6
    end
    object qryAjustesind_cfop_dev_compra_dentro_desc: TStringField
      FieldName = 'ind_cfop_dev_compra_dentro_desc'
      Size = 6
    end
    object qryAjustesind_cfop_dev_compra_fora_desc: TStringField
      FieldName = 'ind_cfop_dev_compra_fora_desc'
      Size = 6
    end
    object qryAjustesind_cfop_garantia_dentro_desc: TStringField
      FieldName = 'ind_cfop_garantia_dentro_desc'
      Size = 6
    end
    object qryAjustesind_cfop_garantia_fora_desc: TStringField
      FieldName = 'ind_cfop_garantia_fora_desc'
      Size = 6
    end
    object qryAjustesiniciar_nova_venda: TStringField
      FieldName = 'iniciar_nova_venda'
      Size = 1
    end
    object qryAjustesnovo_ramo_atividade: TStringField
      FieldName = 'novo_ramo_atividade'
      Size = 1
    end
    object qryAjustesvalidar_caixa_atendimento: TStringField
      FieldName = 'validar_caixa_atendimento'
      Size = 1
    end
    object qryAjustesatualiza_estoque_pdv: TStringField
      FieldName = 'atualiza_estoque_pdv'
      Size = 1
    end
    object qryAjustesbaixa_estoque_venda_simples: TStringField
      FieldName = 'baixa_estoque_venda_simples'
      Size = 1
    end
    object qryAjustesdias_val_cupom_credito: TIntegerField
      FieldName = 'dias_val_cupom_credito'
    end
    object qryAjustesdias_validade_cupom_credito: TIntegerField
      FieldName = 'dias_validade_cupom_credito'
    end
    object qryAjustesvendas_simples_nao_mov_caixa: TStringField
      FieldName = 'vendas_simples_nao_mov_caixa'
      Size = 1
    end
    object qryAjustestaxa_garcom_tipo_receb: TStringField
      FieldName = 'taxa_garcom_tipo_receb'
      Size = 1
    end
    object qryAjustescouver_tipo_receb: TStringField
      FieldName = 'couver_tipo_receb'
      Size = 1
    end
    object qryAjustescouver_produto: TStringField
      FieldName = 'couver_produto'
      Size = 6
    end
    object qryAjustestaxa_garcom_produto: TStringField
      FieldName = 'taxa_garcom_produto'
      Size = 6
    end
    object qryAjustestip_imp_comanda: TIntegerField
      FieldName = 'tip_imp_comanda'
    end
    object qryAjustesnao_solicita_excluir_item_nfe: TStringField
      FieldName = 'nao_solicita_excluir_item_nfe'
      Size = 1
    end
    object qryAjustescaixa_automatico_gerencial: TStringField
      FieldName = 'caixa_automatico_gerencial'
      Size = 1
    end
    object qryAjustespermitir_senhas_obvias: TStringField
      FieldName = 'permitir_senhas_obvias'
      Size = 1
    end
    object qryAjustesb2b_xml_produto: TStringField
      FieldName = 'b2b_xml_produto'
      Size = 1
    end
    object qryAjustestipo_etiqueta_balanca: TStringField
      FieldName = 'tipo_etiqueta_balanca'
      Size = 1
    end
    object qryAjustespode_alt_vlr_unit_atend: TStringField
      FieldName = 'pode_alt_vlr_unit_atend'
      Size = 1
    end
    object qryAjustespath_remessa: TStringField
      FieldName = 'path_remessa'
      Size = 100
    end
    object qryAjustespath_retorno: TStringField
      FieldName = 'path_retorno'
      Size = 100
    end
    object qryAjustespath_gerarpdf: TStringField
      FieldName = 'path_gerarpdf'
      Size = 100
    end
    object qryAjustesassunto_email: TStringField
      FieldName = 'assunto_email'
      Size = 100
    end
    object qryAjustesmultiloja: TStringField
      FieldName = 'multiloja'
      Size = 1
    end
    object qryAjustesDATABASE: TStringField
      FieldName = 'bancodedados'
      Size = 50
    end
    object qryAjustesport: TStringField
      FieldName = 'porta'
      Size = 10
    end
    object qryAjustesserver: TStringField
      FieldName = 'servidor'
      Size = 150
    end
    object qryAjustesusername: TStringField
      FieldName = 'usuariobanco'
      Size = 50
    end
    object qryAjustesPASSWORD: TStringField
      FieldName = 'senhabanco'
      Size = 50
    end
    object qryAjustesatb: TStringField
      FieldName = 'atb'
      Size = 30
    end
    object qryAjustesmultiloja_permitecadastro: TStringField
      FieldName = 'multiloja_permitecadastro'
      Size = 1
    end
    object qryAjustespdv_exibe_estoque_tela_venda: TStringField
      FieldName = 'pdv_exibe_estoque_tela_venda'
      Size = 1
    end
    object qryAjusteslibera_canc_pdv_gerencial: TStringField
      FieldName = 'libera_canc_pdv_gerencial'
      Size = 1
    end
    object qryAjustesmantem_atendimento_aberto: TStringField
      FieldName = 'mantem_atendimento_aberto'
      Size = 1
    end
    object qryAjustestipomovimentolote: TStringField
      FieldName = 'tipomovimentolote'
      Size = 4
    end
    object qryAjustesexibe_painel_corporativo: TStringField
      FieldName = 'exibe_painel_corporativo'
      Size = 1
    end
    object qryAjustespainel_lote_vencendo: TStringField
      FieldName = 'painel_lote_vencendo'
      Size = 1
    end
    object qryAjustespainel_lote_vencendo_dias: TIntegerField
      FieldName = 'painel_lote_vencendo_dias'
    end
    object qryAjustesinformar_cliente_nfce_apartir: TFloatField
      FieldName = 'informar_cliente_nfce_apartir'
    end
    object qryAjustesreimprimir_comanda_consumacao: TStringField
      FieldName = 'reimprimir_comanda_consumacao'
      Size = 1
    end
    object qryAjustestip_imp_reimp_comanda: TIntegerField
      FieldName = 'tip_imp_reimp_comanda'
    end
    object qryAjustesanexa_pdf_exportar_xml: TStringField
      FieldName = 'anexa_pdf_exportar_xml'
      Size = 1
    end
    object qryAjustesvendas_dinheiro_simples: TStringField
      FieldName = 'vendas_dinheiro_simples'
      Size = 1
    end
    object qryAjustespermite_venda_sem_estoque_pdv: TStringField
      FieldName = 'permite_venda_sem_estoque_pdv'
      Size = 1
    end
    object qryAjustesvias_mrt: TIntegerField
      FieldName = 'vias_mrt'
    end
    object qryAjustesvias_imp_delivery: TIntegerField
      FieldName = 'vias_imp_delivery'
    end
    object qryAjustescodigo_produto_automatico: TStringField
      FieldName = 'codigo_produto_automatico'
      Size = 1
    end
    object qryAjustespdv_dec_acr_alteratotalitem: TStringField
      FieldName = 'pdv_dec_acr_alteratotalitem'
      Size = 1
    end
    object qryAjustesrenumerado: TStringField
      FieldName = 'renumerado'
      Size = 1
    end
    object qryAjustesusar_servico_os: TStringField
      FieldName = 'usar_servico_os'
      Size = 1
    end
    object qryAjustesnuvemfiscal_clientid: TStringField
      FieldName = 'nuvemfiscal_clientid'
      Size = 200
    end
    object qryAjustesnuvemfiscal_secretid: TStringField
      FieldName = 'nuvemfiscal_secretid'
      Size = 200
    end
  end
  object qryVerificaTabela: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      '    SELECT * FROM '
      '        pg_tables'
      '    WHERE '
      '        schemaname = '#39'commerce'#39' AND '
      '        tablename  = :pTABELA')
    Left = 32
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pTABELA'
        Value = nil
      end>
  end
  object qryCriaTabela: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT EXISTS ('
      '    SELECT * FROM '
      '        pg_tables'
      '    WHERE '
      '        schemaname = '#39'commerce'#39' AND '
      '        tablename  = :pTABELA'
      '    );')
    Left = 32
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pTABELA'
        Value = nil
      end>
  end
  object qryVerificaCampos: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      '    SELECT * FROM '
      '        '#9'information_schema.columns'
      '    WHERE '
      '        table_schema = '#39'commerce'#39' AND '
      '        table_name  = :pTABELA')
    Left = 128
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pTABELA'
        Value = nil
      end>
  end
  object qryCriaCampo: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'ALTER TABLE :pTABELA ADD :pCAMPO :pTIPO')
    Left = 128
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pTABELA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pCAMPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pTIPO'
        Value = nil
      end>
  end
  object qryProdutos: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM commerce.produtos')
    Left = 176
    Top = 168
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
  object qryPessoas: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  commerce.pessoas'
      'ORDER BY'
      '  nome')
    Left = 116
    Top = 360
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
  object qryVerificaSchema: TUniQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT schema_name FROM information_schema.schemata WHERE schema' +
        '_name = :pSCHEMA;')
    Left = 128
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pSCHEMA'
        Value = nil
      end>
  end
  object tblCSOSN: TUniTable
    TableName = 'commerce.csosn'
    Connection = Conexao
    Left = 176
    Top = 120
    object tblCSOSNcod: TIntegerField
      FieldName = 'cod'
    end
    object tblCSOSNdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
end
