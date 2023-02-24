unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider,
  System.Variants, PostgreSQLUniProvider, MemDS, ACBrSocket, ACBrUtil,
  System.JSON, ACBrMail, StrUtils, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrNFeDANFEClass, ACBrNFeDANFeRLClass, ACBrBase, ACBrDFe, ACBrNFe, Registry,
  cxImage, DASQLMonitor, UniSQLMonitor, ACBrDANFCeFortesFr, Vcl.Dialogs,
  NuvemFiscalClient, NuvemFiscalDTOs, OpenApiRest, IdIOHandler, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdIOHandlerSocket, System.Threading, System.IniFiles,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdURI;

type
  TRegistro = (tlLicenciado, tlTrial, tlBloqueado);

type
  EnderecoRecord = record
    Rua, Numero, Complemento, CEP, Bairro, Cidade, UF, CidadeIBGE, UFIBGE: string;
  end;

type
  TEmpresa = record
    Nome, Fantasia, CNPJ, Tipo, email, telefone, telefone2, status, NaturezaLegal, CNAE, CNAEDescricao, Responsavel, IE, CPFResp: string;
    Endereco: EnderecoRecord;
    Simples, Simei, Sintegra, SintegraInativo: Boolean;
    Capital: Real;
    CRT: integer;
    Abertura, dtstatus: TDate;
  end;

type
  TCEP = record
    CEP, bairro, codigo_ibge, complemento, logradouro, municipio, tipologradouro, uf, uf_ibge: string;
  end;

type
  TDM = class(TDataModule)
    Conexao: TUniConnection;
    PostgreSQL: TPostgreSQLUniProvider;
    qryEmpresa: TUniQuery;
    qryConfigDFe: TUniQuery;
    qryConfigDFetssllib: TIntegerField;
    qryConfigDFetsslcryptlib: TIntegerField;
    qryConfigDFetsslhttplib: TIntegerField;
    qryConfigDFetsslxmlsignlib: TIntegerField;
    qryConfigDFecertificado_caminho: TStringField;
    qryConfigDFecertificado_senha: TStringField;
    qryConfigDFecertificado_numero_serie: TStringField;
    qryConfigDFewebservice_uf: TStringField;
    qryConfigDFeambiente: TIntegerField;
    qryConfigDFevisualizar_mensagem: TStringField;
    qryConfigDFesalvar_envelope_soap: TStringField;
    qryConfigDFetimeout: TIntegerField;
    qryConfigDFessltype: TIntegerField;
    qryConfigDFeajustar_aguardar: TStringField;
    qryConfigDFeaguardar: TIntegerField;
    qryConfigDFetentativas: TIntegerField;
    qryConfigDFeintervalo: TIntegerField;
    qryConfigDFeproxy_host: TStringField;
    qryConfigDFeproxy_porta: TStringField;
    qryConfigDFeproxy_usuario: TStringField;
    qryConfigDFeproxy_senha: TStringField;
    qryConfigDFeatualizar_xml: TStringField;
    qryConfigDFeexibir_erro_schema: TStringField;
    qryConfigDFeretirar_acentos: TStringField;
    qryConfigDFelogo_marca: TStringField;
    qryConfigDFeformato_alerta: TStringField;
    qryConfigDFenfe_formato_emissao: TIntegerField;
    qryConfigDFenfe_versao: TIntegerField;
    qryConfigDFenfe_schemas: TStringField;
    qryConfigDFenfe_danfe: TIntegerField;
    qryConfigDFenfe_salvar_pastas_separadas: TStringField;
    qryConfigDFenfe_criar_mensalmente: TStringField;
    qryConfigDFenfe_adicionar_literal_pastas: TStringField;
    qryConfigDFenfe_salvar_data_emissao: TStringField;
    qryConfigDFenfe_salvar_arqs_eventos: TStringField;
    qryConfigDFenfe_separar_pelo_cnpj: TStringField;
    qryConfigDFenfe_separar_modelo_documento: TStringField;
    qryConfigDFenfe_pasta_arquivos_nfe: TStringField;
    qryConfigDFenfe_pasta_cancelamento: TStringField;
    qryConfigDFenfe_pasta_cce: TStringField;
    qryConfigDFenfe_pasta_inutilizacao: TStringField;
    qryConfigDFenfe_pasta_dpec: TStringField;
    qryConfigDFenfe_pasta_evento: TStringField;
    qryConfigDFenfe_salvar_envio_resposta: TStringField;
    qryConfigDFenfe_caminho_envio_resposta: TStringField;
    qryConfigDFenfe_email_assunto: TStringField;
    qryConfigDFenfe_email_remetente: TStringField;
    qryConfigDFenfce_formato_emissao: TIntegerField;
    qryConfigDFenfce_versao: TIntegerField;
    qryConfigDFenfce_schemas: TStringField;
    qryConfigDFenfce_idtoken: TStringField;
    qryConfigDFenfce_token: TStringField;
    qryConfigDFenfce_salvar_pastas_separadas: TStringField;
    qryConfigDFenfce_criar_mensalmente: TStringField;
    qryConfigDFenfce_adicionar_literal_pastas: TStringField;
    qryConfigDFenfce_salvar_data_emissao: TStringField;
    qryConfigDFenfce_salvar_arqs_eventos: TStringField;
    qryConfigDFenfce_separar_pelo_cnpj: TStringField;
    qryConfigDFenfce_separar_modelo_documento: TStringField;
    qryConfigDFenfce_pasta_arquivos_nfe: TStringField;
    qryConfigDFenfce_pasta_cancelamento: TStringField;
    qryConfigDFenfce_pasta_cce: TStringField;
    qryConfigDFenfce_pasta_inutilizacao: TStringField;
    qryConfigDFenfce_pasta_dpec: TStringField;
    qryConfigDFenfce_pasta_evento: TStringField;
    qryConfigDFenfce_salvar_envio_resposta: TStringField;
    qryConfigDFenfce_caminho_envio_resposta: TStringField;
    qryConfigDFecte_formato_emissao: TIntegerField;
    qryConfigDFecte_schemas: TStringField;
    qryConfigDFecte_danfe: TIntegerField;
    qryConfigDFecte_salvar_envio_resposta: TStringField;
    qryConfigDFecte_caminho_envio_resposta: TStringField;
    qryConfigDFecte_email_assunto: TStringField;
    qryConfigDFecte_email_remetente: TStringField;
    qryConfigDFemdfe_formato_emissao: TIntegerField;
    qryConfigDFemdfe_versao: TIntegerField;
    qryConfigDFemdfe_schemas: TStringField;
    qryConfigDFemdfe_danfe: TIntegerField;
    qryConfigDFemdfe_salvar_envio_resposta: TStringField;
    qryConfigDFemdfe_caminho_envio_resposta: TStringField;
    qryConfigDFemdfe_email_assunto: TStringField;
    qryConfigDFemdfe_email_remetente: TStringField;
    qryConfigDFecaminho_baixar_nfe: TStringField;
    qryConfigDFecte_caminho_log: TStringField;
    qryConfigDFecte_caminho_inutilizacao: TStringField;
    qryConfigDFecte_caminho_xml: TStringField;
    qryConfigDFecte_caminho_pdf: TStringField;
    qryConfigDFecte_danfe_padrao: TStringField;
    qryConfigDFecte_danfe_eventos: TStringField;
    qryConfigDFecte_danfe_email: TStringField;
    qryConfigDFecte_modelo: TIntegerField;
    qryConfigDFecte_versao: TIntegerField;
    qryConfigDFecte_aliqnbs: TFloatField;
    qryConfigDFemdfe_caminho_log: TStringField;
    qryConfigDFemdfe_caminho_xml: TStringField;
    qryConfigDFemdfe_caminho_pdf: TStringField;
    qryConfigDFemdfe_danfe_padrao: TStringField;
    qryConfigDFemdfe_danfe_evento: TStringField;
    qryConfigDFemdfe_danfe_email: TStringField;
    qryConfigDFenfe_modelo_danfe: TStringField;
    qryConfigDFeatb: TStringField;
    qryConfigDFedanfe_margem_esquerda: TFloatField;
    qryConfigDFedanfe_margem_direita: TFloatField;
    qryConfigDFedanfe_margem_inferior: TFloatField;
    qryConfigDFedanfe_margem_superior: TFloatField;
    qryConfigDFenfe_fr3_danfe: TStringField;
    qryConfigDFenfe_fr3_inutilizacao: TStringField;
    qryConfigDFenfe_fr3_evento: TStringField;
    ACBrNFe: TACBrNFe;
    DANFe: TACBrNFeDANFeRL;
    ACBrMail: TACBrMail;
    qryFuncionarios: TUniQuery;
    qryFuncionarioscodigo: TStringField;
    qryFuncionariosnome: TStringField;
    qryFuncionariosendereco: TStringField;
    qryFuncionariosbairro: TStringField;
    qryFuncionarioscidade: TStringField;
    qryFuncionariosuf: TStringField;
    qryFuncionarioscep: TStringField;
    qryFuncionariostelefone: TStringField;
    qryFuncionarioscelular: TStringField;
    qryFuncionariosemail: TStringField;
    qryFuncionarioscpf: TStringField;
    qryFuncionariosrg: TStringField;
    qryFuncionariosctps: TStringField;
    qryFuncionariosfuncao: TStringField;
    qryFuncionariosdata_admissao: TDateField;
    qryFuncionariosdata_demissao: TDateField;
    qryFuncionariossituacao: TIntegerField;
    qryFuncionariossalario: TFloatField;
    qryFuncionarioscomissao: TFloatField;
    qryFuncionariosobs1: TStringField;
    qryFuncionariosobs2: TStringField;
    qryFuncionariosobs3: TStringField;
    qryFuncionariosnascimento: TDateField;
    qryFuncionariosf_caixa: TIntegerField;
    qryFuncionariosf_vendedor: TIntegerField;
    qryFuncionariosf_tecnico: TIntegerField;
    qryFuncionariosnumero: TStringField;
    qryFuncionariosativa: TStringField;
    qryFuncionariosaprova_desconto: TStringField;
    qryFuncionariosabrir_caixa: TStringField;
    qryFuncionariosfecha_caixa: TStringField;
    qryFuncionariosconfiguracoes: TStringField;
    qryFuncionarioscancelar_venda: TStringField;
    qryFuncionarioscancelar_item: TStringField;
    qryFuncionariosatb: TStringField;
    qryFuncionariosidonline: TIntegerField;
    qryEmpresacodigo: TStringField;
    qryEmpresafilial: TStringField;
    qryEmpresanotafiscal: TIntegerField;
    qryEmpresaendereco: TStringField;
    qryEmpresacidade: TStringField;
    qryEmpresauf: TStringField;
    qryEmpresacep: TStringField;
    qryEmpresatelefone: TStringField;
    qryEmpresacnpj: TStringField;
    qryEmpresaie: TStringField;
    qryEmpresaseqnf: TIntegerField;
    qryEmpresafax: TStringField;
    qryEmpresaobs1: TStringField;
    qryEmpresaobs2: TStringField;
    qryEmpresacontribuinte_ipi: TStringField;
    qryEmpresasubstituto_tributario: TStringField;
    qryEmpresaempresa_estadual: TStringField;
    qryEmpresaoptante_simples: TStringField;
    qryEmpresaoptante_super_simples: TStringField;
    qryEmpresaecf: TStringField;
    qryEmpresatipo: TIntegerField;
    qryEmpresaipi: TFloatField;
    qryEmpresaiss: TFloatField;
    qryEmpresanumero: TStringField;
    qryEmpresaresponsavel: TStringField;
    qryEmpresacomplemento: TStringField;
    qryEmpresabairro: TStringField;
    qryEmpresafarmacia_resp_tecnico: TStringField;
    qryEmpresafarmacia_crf: TStringField;
    qryEmpresafarmacia_cpf: TStringField;
    qryEmpresafarmcia_data: TDateField;
    qryEmpresafarmacia_uf: TStringField;
    qryEmpresafarmacia_senha: TStringField;
    qryEmpresafarmacia_email: TStringField;
    qryEmpresafarmacia_login: TStringField;
    qryEmpresafarmacia_envio: TStringField;
    qryEmpresaconhecimento: TIntegerField;
    qryEmpresaindustria: TStringField;
    qryEmpresafarmacia_numerolicenca: TStringField;
    qryEmpresacod_municipio_ibge: TStringField;
    qryEmpresaibge: TStringField;
    qryEmpresapis: TFloatField;
    qryEmpresacofins: TFloatField;
    qryEmpresaemail: TStringField;
    qryEmpresaatividade: TStringField;
    qryEmpresacontador_cod_municipio_ibge: TStringField;
    qryEmpresacontador_nome: TStringField;
    qryEmpresacontador_cpf: TStringField;
    qryEmpresacontador_crc: TStringField;
    qryEmpresacontador_cnpj: TStringField;
    qryEmpresacontador_cep: TStringField;
    qryEmpresacontador_endereco: TStringField;
    qryEmpresacontador_numero: TStringField;
    qryEmpresacontador_complemento: TStringField;
    qryEmpresacontador_bairro: TStringField;
    qryEmpresacontador_fone: TStringField;
    qryEmpresacontador_fax: TStringField;
    qryEmpresacontador_email: TStringField;
    qryEmpresainsc_municipal: TStringField;
    qryEmpresadata_abertura: TDateField;
    qryEmpresacnae: TStringField;
    qryEmpresacrt: TStringField;
    qryEmpresacontador_cidade: TStringField;
    qryEmpresacontador_cod_municipio: TStringField;
    qryEmpresacontador_uf: TStringField;
    qryEmpresapermite_credito: TIntegerField;
    qryEmpresafantasia: TStringField;
    qryEmpresadfixas: TFloatField;
    qryEmpresatipocalculo: TIntegerField;
    qryEmpresaserie_cte: TStringField;
    qryEmpresaseq_cte: TStringField;
    qryEmpresacod_pais: TStringField;
    qryEmpresapais: TStringField;
    qryEmpresahomepage: TStringField;
    qryEmpresaaidf: TStringField;
    qryEmpresaninicial: TStringField;
    qryEmpresanfinal: TStringField;
    qryEmpresan_nf_d: TStringField;
    qryEmpresavalidade: TStringField;
    qryEmpresarntrc: TStringField;
    qryEmpresaserie_mdfe: TIntegerField;
    qryEmpresanumero_mdfe: TIntegerField;
    qryEmpresamail_server: TStringField;
    qryEmpresamail_porta: TStringField;
    qryEmpresamail_username: TStringField;
    qryEmpresamail_password: TStringField;
    qryEmpresamail_cabecalho: TStringField;
    qryEmpresamail_assunto: TStringField;
    qryEmpresamail_ssl: TStringField;
    qryEmpresamail_tls: TStringField;
    qryEmpresareptec_cnpj: TStringField;
    qryEmpresareptec_contato: TStringField;
    qryEmpresareptec_email: TStringField;
    qryEmpresareptec_fone: TStringField;
    qryEmpresareptec_idcsrt: TIntegerField;
    qryEmpresareptec_csrt: TStringField;
    qryEmpresapercentual_credito_icms: TFloatField;
    qryEmpresaidonline: TIntegerField;
    qryEmpresacomentarios: TStringField;
    qryEmpresadatahora_inicial: TDateField;
    qryEmpresadatahora_final: TDateField;
    qryEmpresadata_inventario: TDateField;
    qryEmpresaestoque: TFloatField;
    qryEmpresavalor: TFloatField;
    qryEmpresacpf: TStringField;
    qryEmpresarg: TStringField;
    qryEmpresadia_vencimento_chave: TStringField;
    qryEmpresaemail_financeiro: TStringField;
    qryEmpresaatb: TStringField;
    qryEmpresaserie_nfe: TIntegerField;
    qryEmpresaseq_nfe: TIntegerField;
    qryEmpresalogo: TStringField;
    qryFuncionariosusuario: TStringField;
    tblFuncionarios: TUniTable;
    tblFuncionarioscodigo: TStringField;
    tblFuncionariosnome: TStringField;
    tblFuncionariosendereco: TStringField;
    tblFuncionariosbairro: TStringField;
    tblFuncionarioscidade: TStringField;
    tblFuncionariosuf: TStringField;
    tblFuncionarioscep: TStringField;
    tblFuncionariostelefone: TStringField;
    tblFuncionarioscelular: TStringField;
    tblFuncionariosemail: TStringField;
    tblFuncionarioscpf: TStringField;
    tblFuncionariosrg: TStringField;
    tblFuncionariosctps: TStringField;
    tblFuncionariosfuncao: TStringField;
    tblFuncionariosdata_admissao: TDateField;
    tblFuncionariosdata_demissao: TDateField;
    tblFuncionariossituacao: TIntegerField;
    tblFuncionariossalario: TFloatField;
    tblFuncionarioscomissao: TFloatField;
    tblFuncionariosobs1: TStringField;
    tblFuncionariosobs2: TStringField;
    tblFuncionariosobs3: TStringField;
    tblFuncionariosnascimento: TDateField;
    tblFuncionariosf_caixa: TIntegerField;
    tblFuncionariosf_vendedor: TIntegerField;
    tblFuncionariosf_tecnico: TIntegerField;
    tblFuncionariosnumero: TStringField;
    tblFuncionariosativa: TStringField;
    tblFuncionariosaprova_desconto: TStringField;
    tblFuncionariosabrir_caixa: TStringField;
    tblFuncionariosfecha_caixa: TStringField;
    tblFuncionariosconfiguracoes: TStringField;
    tblFuncionarioscancelar_venda: TStringField;
    tblFuncionarioscancelar_item: TStringField;
    tblFuncionariosatb: TStringField;
    tblFuncionariosidonline: TIntegerField;
    tblFuncionariosusuario: TStringField;
    qryFuncionariossenha: TStringField;
    tblFuncionariossenha: TStringField;
    Monitor: TUniSQLMonitor;
    qryNF: TUniQuery;
    qryNFinfnfe_versao: TStringField;
    qryNFinfnfe_chave: TStringField;
    qryNFide_cuf: TIntegerField;
    qryNFide_cnf: TIntegerField;
    qryNFide_natop: TStringField;
    qryNFide_mod: TIntegerField;
    qryNFide_serie: TIntegerField;
    qryNFide_nnf: TIntegerField;
    qryNFide_dhemi: TDateTimeField;
    qryNFide_dhsaient: TDateTimeField;
    qryNFide_tpnf: TIntegerField;
    qryNFide_iddest: TIntegerField;
    qryNFide_cmunfg: TIntegerField;
    qryNFide_tpimp: TIntegerField;
    qryNFide_tpemis: TIntegerField;
    qryNFide_cdv: TIntegerField;
    qryNFide_tpamb: TIntegerField;
    qryNFide_finnfe: TIntegerField;
    qryNFide_indfinal: TIntegerField;
    qryNFide_indpres: TIntegerField;
    qryNFide_procemi: TIntegerField;
    qryNFide_verproc: TStringField;
    qryNFemit_cnpj: TIntegerField;
    qryNFemit_xnome: TStringField;
    qryNFemit_xfant: TStringField;
    qryNFemit_enderemit_xlgr: TStringField;
    qryNFemit_enderemit_nro: TStringField;
    qryNFemit_enderemit_xbairro: TStringField;
    qryNFemit_enderemit_cmun: TIntegerField;
    qryNFemit_enderemit_xmun: TStringField;
    qryNFemit_enderemit_uf: TStringField;
    qryNFemit_enderemit_cep: TIntegerField;
    qryNFemit_enderemit_cpais: TIntegerField;
    qryNFemit_enderemit_xpais: TStringField;
    qryNFemit_enderemit_fone: TIntegerField;
    qryNFemit_ie: TIntegerField;
    qryNFemit_crt: TIntegerField;
    qryNFdest_cnpj: TIntegerField;
    qryNFdest_xnome: TStringField;
    qryNFdest_xfant: TStringField;
    qryNFdest_enderdest_xlgr: TStringField;
    qryNFdest_enderdest_nro: TStringField;
    qryNFdest_enderdest_xbairro: TStringField;
    qryNFdest_enderdest_cmun: TIntegerField;
    qryNFdest_enderdest_xmun: TStringField;
    qryNFdest_enderdest_uf: TStringField;
    qryNFdest_enderdest_cep: TIntegerField;
    qryNFdest_enderdest_cpais: TIntegerField;
    qryNFdest_enderdest_xpais: TStringField;
    qryNFdest_enderdest_fone: TIntegerField;
    qryNFdest_indiedest: TIntegerField;
    qryNFdest_ie: TIntegerField;
    qryNFdest_email: TStringField;
    qryNFtotal_icmstot_vbc: TFloatField;
    qryNFtotal_icmstot_vicms: TFloatField;
    qryNFtotal_icmstot_vicmsdeson: TFloatField;
    qryNFtotal_icmstot_vfcpufdest: TFloatField;
    qryNFtotal_icmstot_vicmsufdest: TFloatField;
    qryNFtotal_icmstot_vicmsufremet: TFloatField;
    qryNFtotal_icmstot_vfcp: TFloatField;
    qryNFtotal_icmstot_vbcst: TFloatField;
    qryNFtotal_icmstot_vst: TFloatField;
    qryNFtotal_icmstot_vfcpst: TFloatField;
    qryNFtotal_icmstot_vfcpstret: TFloatField;
    qryNFtotal_icmstot_vprod: TFloatField;
    qryNFtotal_icmstot_vfrete: TFloatField;
    qryNFtotal_icmstot_vseg: TFloatField;
    qryNFtotal_icmstot_vdesc: TFloatField;
    qryNFtotal_icmstot_vii: TFloatField;
    qryNFtotal_icmstot_vipi: TFloatField;
    qryNFtotal_icmstot_vipidevol: TFloatField;
    qryNFtotal_icmstot_vpis: TFloatField;
    qryNFtotal_icmstot_vcofins: TFloatField;
    qryNFtotal_icmstot_voutro: TFloatField;
    qryNFtotal_icmstot_vnf: TFloatField;
    qryNFtransp_modfrete: TIntegerField;
    qryNFtransp_transporta_cnpj: TIntegerField;
    qryNFtransp_transporta_xnome: TStringField;
    qryNFtransp_transporta_ie: TIntegerField;
    qryNFtransp_transporta_xender: TStringField;
    qryNFtransp_transporta_xmun: TStringField;
    qryNFtransp_transporta_uf: TStringField;
    qryNFtransp_vol_qvol: TIntegerField;
    qryNFtransp_vol_esp: TStringField;
    qryNFtransp_vol_marca: TStringField;
    qryNFtransp_vol_pesol: TFloatField;
    qryNFtransp_vol_pesob: TFloatField;
    qryNFcobr_fat_nfat: TStringField;
    qryNFcobr_fat_vorig: TFloatField;
    qryNFcobr_fat_vdesc: TFloatField;
    qryNFcobr_fat_vliq: TFloatField;
    qryNFpag_detpag_indpag: TIntegerField;
    qryNFpag_detpag_tpag: TIntegerField;
    qryNFpag_detpag_vpag: TFloatField;
    qryNFpag_detpag_card_tpintegra: TIntegerField;
    qryNFpag_detpag_card_cnpj: TIntegerField;
    qryNFpag_detpag_card_tband: TIntegerField;
    qryNFpag_detpag_card_caut: TStringField;
    qryNFpag_vtroco: TFloatField;
    qryNFinfadic_infcpl: TStringField;
    qryNFinfadic_infadfisco: TStringField;
    qryNFinfresptec_cnpj: TIntegerField;
    qryNFinfresptec_xcontato: TStringField;
    qryNFinfresptec_email: TStringField;
    qryNFinfresptec_fone: TStringField;
    qryNFsignature: TMemoField;
    qryNFprotnfe: TMemoField;
    qryNFcodigo: TIntegerField;
    qryNFcad_status: TIntegerField;
    qryNFcad_cfop: TIntegerField;
    qryNFItens: TUniQuery;
    qryNFCobranca: TUniQuery;
    qryNFItensdet_nitem: TIntegerField;
    qryNFItensdet_prod_cprod: TStringField;
    qryNFItensdet_prod_cean: TStringField;
    qryNFItensdet_prod_xprod: TStringField;
    qryNFItensdet_prod_ncm: TIntegerField;
    qryNFItensdet_prod_cfop: TIntegerField;
    qryNFItensdet_prod_ucom: TStringField;
    qryNFItensdet_prod_qcom: TFloatField;
    qryNFItensdet_prod_vuncom: TFloatField;
    qryNFItensdet_prod_vprod: TFloatField;
    qryNFItensdet_prod_ceantrib: TStringField;
    qryNFItensdet_prod_utrib: TStringField;
    qryNFItensdet_prod_qtrib: TFloatField;
    qryNFItensdet_prod_vuntrib: TFloatField;
    qryNFItensdet_prod_indtot: TIntegerField;
    qryNFItensdet_prod_imposto_icms: TStringField;
    qryNFItensdet_prod_imposto_icms_orig: TFloatField;
    qryNFItensdet_prod_imposto_icms_cst: TFloatField;
    qryNFItensdet_prod_imposto_icms_modbc: TFloatField;
    qryNFItensdet_prod_imposto_icms_vbc: TFloatField;
    qryNFItensdet_prod_imposto_icms_picms: TFloatField;
    qryNFItensdet_prod_imposto_icms_vicms: TFloatField;
    qryNFItensdet_prod_imposto_ipi: TStringField;
    qryNFItensdet_prod_imposto_ipi_cenq: TFloatField;
    qryNFItensdet_prod_imposto_ipi_ipint: TFloatField;
    qryNFItensdet_prod_imposto_ipi_cst: TFloatField;
    qryNFItensdet_prod_imposto_pis: TStringField;
    qryNFItensdet_prod_imposto_pis_pisaliq_cst: TFloatField;
    qryNFItensdet_prod_imposto_pis_pisaliq_vbc: TFloatField;
    qryNFItensdet_prod_imposto_pis_pisaliq_ppis: TFloatField;
    qryNFItensdet_prod_imposto_pis_pisaliq_vpis: TFloatField;
    qryNFItensdet_prod_imposto_cofins: TStringField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_cst: TFloatField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_vbc: TFloatField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_pcofins: TFloatField;
    qryNFItensdet_prod_imposto_cofins_cofinsaliq_vcofins: TFloatField;
    qryNFItenscodigo: TIntegerField;
    qryNFItensinfnfe_chave: TStringField;
    qryNFItenside_mod: TIntegerField;
    qryNFItenside_serie: TIntegerField;
    qryNFItenside_nnf: TIntegerField;
    qryNFItensdet_prod_vtotalitem: TFloatField;
    qryNFCobrancadup_ndup: TIntegerField;
    qryNFCobrancadup_dvenc: TDateField;
    qryNFCobrancadup_vdup: TFloatField;
    qryNFCobrancacodigo: TIntegerField;
    qryNFCobrancainfnfe_chave: TStringField;
    qryNFCobrancaide_mod: TIntegerField;
    qryNFCobrancaide_serie: TIntegerField;
    qryNFCobrancaide_nnf: TIntegerField;
    tblProdutos: TUniTable;
    tblProdutoscodigo: TStringField;
    tblProdutosproduto: TStringField;
    tblProdutosdata_cadastro: TDateField;
    tblProdutoscodgrupo: TStringField;
    tblProdutoscodsubgrupo: TStringField;
    tblProdutoscodfornecedor: TStringField;
    tblProdutoscodmarca: TStringField;
    tblProdutosdata_ultimacompra: TDateField;
    tblProdutosnotafiscal: TStringField;
    tblProdutosprecocusto: TFloatField;
    tblProdutosprecovenda: TFloatField;
    tblProdutosdata_ultimavenda: TDateField;
    tblProdutosestoque: TFloatField;
    tblProdutosestoqueminimo: TFloatField;
    tblProdutoscodaliquota: TStringField;
    tblProdutoslocalicazao: TStringField;
    tblProdutospeso: TFloatField;
    tblProdutosvalidade: TStringField;
    tblProdutoscomissao: TFloatField;
    tblProdutosusa_balanca: TIntegerField;
    tblProdutosusa_serial: TIntegerField;
    tblProdutosusa_grade: TIntegerField;
    tblProdutoscodreceita: TStringField;
    tblProdutosfoto: TStringField;
    tblProdutosdata_ultimacompra_anterior: TDateField;
    tblProdutosnotafiscal_anterior: TStringField;
    tblProdutoscodfornecedor_anterior: TStringField;
    tblProdutosprecocusto_anterior: TFloatField;
    tblProdutosprecovenda_anterior: TFloatField;
    tblProdutoscustomedio: TFloatField;
    tblProdutosauto_aplicacao: TStringField;
    tblProdutosauto_complemento: TStringField;
    tblProdutosdata_remarcacao_custo: TDateField;
    tblProdutosdata_remarcacao_venda: TDateField;
    tblProdutospreco_promocao: TFloatField;
    tblProdutosdata_promocao: TDateField;
    tblProdutosfim_promocao: TDateField;
    tblProdutoscst: TStringField;
    tblProdutosclassificacao_fiscal: TStringField;
    tblProdutosnbm: TStringField;
    tblProdutosncm: TStringField;
    tblProdutosaliquota: TFloatField;
    tblProdutosipi: TFloatField;
    tblProdutosreducao: TFloatField;
    tblProdutosqtde_embalagem: TFloatField;
    tblProdutostipo: TStringField;
    tblProdutospeso_liquido: TFloatField;
    tblProdutosfarmacia_controlado: TStringField;
    tblProdutosfarmacia_apresentacao: TIntegerField;
    tblProdutosfarmacia_registro_medicamento: TStringField;
    tblProdutosfarmacia_pmc: TFloatField;
    tblProdutosultima_alteracao: TDateField;
    tblProdutosultima_carga: TDateField;
    tblProdutosdata_inventario: TDateField;
    tblProdutoscusto_inventario: TFloatField;
    tblProdutosestoque_inventario: TFloatField;
    tblProdutosestoque_anterior: TFloatField;
    tblProdutosprecovenda_novo: TFloatField;
    tblProdutosusa_rentabilidade: TIntegerField;
    tblProdutosquantidade_minima_fab: TFloatField;
    tblProdutosapresentacao: TStringField;
    tblProdutossituacao: TIntegerField;
    tblProdutosprecovenda1: TFloatField;
    tblProdutosprecovenda2: TFloatField;
    tblProdutosprecovenda3: TFloatField;
    tblProdutosprecovenda4: TFloatField;
    tblProdutosprecovenda5: TFloatField;
    tblProdutosdesconto_precovenda: TFloatField;
    tblProdutosdata_inventario_atual: TDateField;
    tblProdutoscusto_inventario_atual: TFloatField;
    tblProdutosestoque_inventario_atual: TFloatField;
    tblProdutosmargem_minima: TFloatField;
    tblProdutospiscofins: TStringField;
    tblProdutosreferencia_fornecedor: TStringField;
    tblProdutoscomissao1: TFloatField;
    tblProdutosmargem_desconto: TFloatField;
    tblProdutostamanho: TStringField;
    tblProdutoscor: TStringField;
    tblProdutosincidencia_piscofins: TStringField;
    tblProdutosveic_chassi: TStringField;
    tblProdutosveic_serie: TStringField;
    tblProdutosveic_potencia: TStringField;
    tblProdutosveic_peso_liquido: TStringField;
    tblProdutosveic_peso_bruto: TStringField;
    tblProdutosveic_tipo_combustivel: TStringField;
    tblProdutosveic_renavam: TStringField;
    tblProdutosveic_ano_fabricacao: TIntegerField;
    tblProdutosveic_ano_modelo: TIntegerField;
    tblProdutosveic_tipo: TStringField;
    tblProdutosveic_tipo_pintura: TStringField;
    tblProdutosveic_cod_cor: TStringField;
    tblProdutosveic_cor: TStringField;
    tblProdutosveic_vin: TStringField;
    tblProdutosveic_numero_motor: TStringField;
    tblProdutosveic_cmkg: TStringField;
    tblProdutosveic_cm3: TStringField;
    tblProdutosveic_distancia_eixo: TStringField;
    tblProdutosveic_cod_marca: TStringField;
    tblProdutosveic_especie: TStringField;
    tblProdutosveic_condicao: TStringField;
    tblProdutoslote_fabricacao: TStringField;
    tblProdutoslote_validade: TDateField;
    tblProdutosmargem_agregada: TFloatField;
    tblProdutoscodbarra_novartis: TStringField;
    tblProdutosfarmacia_dcb: TStringField;
    tblProdutosfarmacia_abcfarma: TStringField;
    tblProdutosfarmacia_apresentacao_caixa: TStringField;
    tblProdutosfarmacia_principioativo: TStringField;
    tblProdutosultima_compra: TDateField;
    tblProdutosfarmacia_datavigencia: TDateField;
    tblProdutosfarmacia_tipo: TStringField;
    tblProdutosusa_combustivel: TStringField;
    tblProdutosreferencia: TStringField;
    tblProdutosperda: TFloatField;
    tblProdutoscomposicao1: TStringField;
    tblProdutoscomposicao2: TStringField;
    tblProdutosiat: TStringField;
    tblProdutosippt: TStringField;
    tblProdutossituacao_tributaria: TStringField;
    tblProdutosflag_sis: TStringField;
    tblProdutosflag_aceito: TStringField;
    tblProdutosflag_est: TStringField;
    tblProdutoscsosn: TStringField;
    tblProdutoscodoriginal: TStringField;
    tblProdutoscusto_atacado: TFloatField;
    tblProdutosunidade_atacado: TStringField;
    tblProdutosqtde_embalagematacado: TFloatField;
    tblProdutospmargem1: TFloatField;
    tblProdutospmargem2: TFloatField;
    tblProdutospmargem3: TFloatField;
    tblProdutospmargem4: TFloatField;
    tblProdutospmargem5: TFloatField;
    tblProdutospmargematacado1: TFloatField;
    tblProdutospmargematacado2: TFloatField;
    tblProdutospmargematacado3: TFloatField;
    tblProdutospmargematacado4: TFloatField;
    tblProdutospmargematacado5: TFloatField;
    tblProdutospmargematacado6: TFloatField;
    tblProdutosprecoatacado1: TFloatField;
    tblProdutosprecoatacado2: TFloatField;
    tblProdutosprecoatacado3: TFloatField;
    tblProdutosprecoatacado4: TFloatField;
    tblProdutosprecoatacado5: TFloatField;
    tblProdutosind_cfop: TStringField;
    tblProdutoscfop_desc: TStringField;
    tblProdutosusa_lote: TIntegerField;
    tblProdutosind_cfop_venda_dentro: TStringField;
    tblProdutoscodconta: TStringField;
    tblProdutosind_cfop_venda_fora: TStringField;
    tblProdutosind_cfop_devolucao_dentro: TStringField;
    tblProdutosind_cfop_devolucao_fora: TStringField;
    tblProdutosind_cfop_garantia_dentro: TStringField;
    tblProdutosind_cfop_garantia_fora: TStringField;
    tblProdutosusa_tb_pc: TStringField;
    tblProdutosativa: TStringField;
    tblProdutoscest: TStringField;
    tblProdutosorigem: TIntegerField;
    tblProdutosind_cfop_nfce: TStringField;
    tblProdutosid_tipo_servico: TIntegerField;
    tblProdutosnao_movimenta_estoque: TStringField;
    tblProdutospesagem_auotmatica: TStringField;
    tblProdutosinforma_codigo_barra_xml: TStringField;
    tblProdutoscodigo_anp: TStringField;
    tblProdutoscombo: TStringField;
    tblProdutosind_cfop_dev_compra_dentro: TStringField;
    tblProdutosind_cfop_dev_compra_fora: TStringField;
    tblProdutospizza: TStringField;
    tblProdutospercglnn: TFloatField;
    tblProdutospercglgni: TFloatField;
    tblProdutospglp: TFloatField;
    tblProdutosvpart: TFloatField;
    tblProdutosecf_icms: TStringField;
    tblProdutosidonline: TIntegerField;
    tblProdutosemdestaque: TStringField;
    tblProdutosdescontomaximo: TFloatField;
    tblProdutosatb: TStringField;
    tblProdutoscontrolalote: TStringField;
    tblProdutoscodbarra: TStringField;
    tblProdutosunidade: TStringField;
    tblProdutospiscstcsosn: TStringField;
    tblProdutoscofinscstcsosn: TStringField;
    tblProdutosicmsrepasse: TStringField;
    tblProdutosretornavel: TStringField;
    qryEmpresacodigoibge: TStringField;
    qryCMun: TUniQuery;
    qryCMuncodigo: TIntegerField;
    qryEmpresaseq_nfce: TIntegerField;
    qryEmpresaserie_nfce: TIntegerField;
    DANFCe: TACBrNFeDANFCeFortes;
    qryApagaRegistro: TUniQuery;
    qryAjustes: TUniQuery;
    qryAjustescodigo: TStringField;
    qryAjustesultimo_backup: TDateField;
    qryAjustespapel_parede: TStringField;
    qryAjustesaviso_contas_pagar: TIntegerField;
    qryAjustesaviso_cheque: TIntegerField;
    qryAjustesestoque_negativo: TIntegerField;
    qryAjustescasas_decimais_qtde: TIntegerField;
    qryAjustescasas_decimais_valor: TIntegerField;
    qryAjustesvenda_cadastro_cheque: TIntegerField;
    qryAjustesvenda_cadastro_cartao: TIntegerField;
    qryAjustesvenda_tiponota: TIntegerField;
    qryAjustesvenda_qtde_vias_nota: TIntegerField;
    qryAjustesvenda_porta_impressora: TStringField;
    qryAjustesvenda_tipo_impressora: TIntegerField;
    qryAjustesvenda_limite_cliente: TIntegerField;
    qryAjustesos_tiponota: TIntegerField;
    qryAjustesos_qtde_vias_nota: TIntegerField;
    qryAjustesos_porta_impressora: TStringField;
    qryAjustesos_tipo_impressora: TIntegerField;
    qryAjustesorcamento_tiponota: TIntegerField;
    qryAjustesorcamento_qtde_vias_nota: TIntegerField;
    qryAjustesorcamento_porta_impressora: TStringField;
    qryAjustesorcamento_tipo_impressora: TIntegerField;
    qryAjustescontasreceber_carencia: TIntegerField;
    qryAjustescontasreceber_taxajuros: TFloatField;
    qryAjustescontasreceber_multa: TFloatField;
    qryAjustescontasreceber_desconto_percent: TFloatField;
    qryAjustescontasreceber_desconto_permitir: TIntegerField;
    qryAjustesecf_modelo: TStringField;
    qryAjustesecf_porta: TStringField;
    qryAjustesecf_tef: TIntegerField;
    qryAjustesecf_tipo: TStringField;
    qryAjustesbalancapdv_modelo: TStringField;
    qryAjustesbalancapdv_porta: TStringField;
    qryAjustesimpressoracheque_modelo: TStringField;
    qryAjustesimpressoracheque_porta: TStringField;
    qryAjustesbalanca_modelo: TStringField;
    qryAjustesimpressorabarras_modelo: TStringField;
    qryAjustesbalanca_caminho: TStringField;
    qryAjustescadastro_produto: TStringField;
    qryAjustesramo_atividade: TIntegerField;
    qryAjustesextrato_tiponota: TIntegerField;
    qryAjustesbobina_subirpapel: TIntegerField;
    qryAjustesclassificacao: TStringField;
    qryAjustesboleto_formapgto: TStringField;
    qryAjustesplano_venda_av: TStringField;
    qryAjustesplano_venda_ap: TStringField;
    qryAjustesplano_os_av: TStringField;
    qryAjustesplano_os_ap: TStringField;
    qryAjustesplano_outras_entradas: TStringField;
    qryAjustesplano_outras_saidas: TStringField;
    qryAjustesplano_recebto_crediario: TStringField;
    qryAjustesnf_itens_pagina: TIntegerField;
    qryAjustesnf_itens_transporte: TIntegerField;
    qryAjustesnf_linha_transporte: TIntegerField;
    qryAjustesnf_salto_pagina: TIntegerField;
    qryAjustesnf_tipo: TIntegerField;
    qryAjustesnf_impressora: TStringField;
    qryAjustesvenda_fechamento_caixa: TIntegerField;
    qryAjustesdesconto_avista: TFloatField;
    qryAjustesdesconto_produto: TFloatField;
    qryAjustesdesconto_totalnota: TFloatField;
    qryAjustestipo_venda: TStringField;
    qryAjustesvenda_alterar_preco: TIntegerField;
    qryAjustesnf_linha_subtotal: TIntegerField;
    qryAjustesnf_linha_total: TIntegerField;
    qryAjustesecf_caixa: TStringField;
    qryAjustesecf_serial: TStringField;
    qryAjustesfarmacia_envio: TStringField;
    qryAjustesfarmacia_resposta: TStringField;
    qryAjustesfarmacia_envio_resposta: TStringField;
    qryAjustesfarmacia_login: TStringField;
    qryAjustesfarmacia_senha: TStringField;
    qryAjustesultima_carga: TDateField;
    qryAjustesimprime_cupom_vinculado: TIntegerField;
    qryAjustesimprime_produtos_vinculados: TIntegerField;
    qryAjustesimprime_comprovante_debito: TIntegerField;
    qryAjustesimprime_duplicata: TIntegerField;
    qryAjustescontasreceber_bloqueio: TIntegerField;
    qryAjustesrecibo_tiponota: TIntegerField;
    qryAjustesnr_controle_ecf: TStringField;
    qryAjustesbalanca_programa: TStringField;
    qryAjustestipo_duplicata: TStringField;
    qryAjustesconcilia_venda: TIntegerField;
    qryAjustescontrola_entrega: TIntegerField;
    qryAjustesentrega_impressao: TIntegerField;
    qryAjustesentrega_vias: TIntegerField;
    qryAjustescondicional: TIntegerField;
    qryAjustescondicional_prazo: TIntegerField;
    qryAjustesvs_ativar: TIntegerField;
    qryAjustesvs_dinheiro: TIntegerField;
    qryAjustesvs_chequeav: TIntegerField;
    qryAjustesvs_chequeap: TIntegerField;
    qryAjustesvs_cartraocred: TIntegerField;
    qryAjustesvs_cartaodeb: TIntegerField;
    qryAjustesvs_crediario: TIntegerField;
    qryAjustesvs_cliente_vista: TStringField;
    qryAjustesvs_caixa: TIntegerField;
    qryAjustesvs_relatorio: TIntegerField;
    qryAjustesvs_vias: TIntegerField;
    qryAjustesvs_visualizar: TIntegerField;
    qryAjustescondicional_modelo: TIntegerField;
    qryAjustesalterar_unitario: TIntegerField;
    qryAjustescontasreceber_valorjuros: TFloatField;
    qryAjustescontasreceber_juros_dinheiro: TIntegerField;
    qryAjustesplano_duplicata_nfe: TStringField;
    qryAjustesvarejo_atacado: TIntegerField;
    qryAjustesvisualiza_mensagem: TIntegerField;
    qryAjustesserial_repetido: TIntegerField;
    qryAjustesocultar_custo: TIntegerField;
    qryAjustesocultar_produto_inativo: TIntegerField;
    qryAjustesocultar_cliente_inativo: TIntegerField;
    qryAjustesobs_farma: TIntegerField;
    qryAjustesobs_farma_texto: TStringField;
    qryAjustescusto_maior_venda: TIntegerField;
    qryAjustesvender_abaixo_custo: TIntegerField;
    qryAjustesnf_gerar_receber: TIntegerField;
    qryAjustesnf_codigobarra_nfe: TIntegerField;
    qryAjustesnf_grade_nfe: TIntegerField;
    qryAjustesnf_serial_nfe: TIntegerField;
    qryAjustesnf_referencia_nfe: TIntegerField;
    qryAjustesnf_gerar_duplicata: TIntegerField;
    qryAjustesvale_caixa: TIntegerField;
    qryAjustescontas_receber_bloqueio: TIntegerField;
    qryAjustescupom_imprimir_codigo: TIntegerField;
    qryAjustescliente_pede_cpf: TIntegerField;
    qryAjustesverifica_cod_barra: TIntegerField;
    qryAjustesverifica_nome_produto: TIntegerField;
    qryAjustesvs_frete: TIntegerField;
    qryAjustesinventario_automatico: TIntegerField;
    qryAjustesbaixar_estoque_nota_saida: TIntegerField;
    qryAjustesetiqueta_07: TIntegerField;
    qryAjustesetiqueta_07_1: TIntegerField;
    qryAjustesetiqueta_07_2: TIntegerField;
    qryAjustesemail_servidor_smtp: TStringField;
    qryAjustesemail_porta: TStringField;
    qryAjustesemail_usuario: TStringField;
    qryAjustesemail_senha: TStringField;
    qryAjustesemail_assunto: TStringField;
    qryAjustesemail_exige_conexao: TIntegerField;
    qryAjustesinestra: TIntegerField;
    qryAjustesfarmacia_inventario_fecha: TIntegerField;
    qryAjustesfarmacia_envio_novartis: TStringField;
    qryAjustesfarmacia_resposta_novartis: TStringField;
    qryAjustesfarmacia_inventario_confirma: TStringField;
    qryAjustesfarmacia_inventario_data: TDateField;
    qryAjustescalcula_isentas_outras: TIntegerField;
    qryAjustesusa_rentabilidade: TIntegerField;
    qryAjustesusa_produtor_rural: TIntegerField;
    qryAjustesind_clie_entrada: TStringField;
    qryAjustesind_cfop_entrada: TStringField;
    qryAjustesind_clie_saida: TStringField;
    qryAjustesind_cfop_saida: TStringField;
    qryAjustesind_clie_perda: TStringField;
    qryAjustesind_cfop_perda: TStringField;
    qryAjustesind_mostra_composicao: TIntegerField;
    qryAjustescheca_serial_nota_saida: TIntegerField;
    qryAjustescor_comercio: TStringField;
    qryAjusteslogo_comercio: TStringField;
    qryAjustescor_farmacia: TStringField;
    qryAjusteslogo_farmacia: TStringField;
    qryAjustescor_pecas: TStringField;
    qryAjusteslogo_pecas: TStringField;
    qryAjustescor_mercado: TStringField;
    qryAjusteslogo_mercado: TStringField;
    qryAjustescor_posto: TStringField;
    qryAjusteslogo_posto: TStringField;
    qryAjustesind_clie_entrada_desc: TStringField;
    qryAjustesind_cfop_entrada_desc: TStringField;
    qryAjustesind_clie_saida_desc: TStringField;
    qryAjustesind_cfop_saida_desc: TStringField;
    qryAjustesind_clie_perda_desc: TStringField;
    qryAjustesind_cfop_perda_desc: TStringField;
    qryAjustesind_cfop_venda_dentro: TStringField;
    qryAjustesind_cfop_venda_fora: TStringField;
    qryAjustesind_cfop_devolucao_dentro: TStringField;
    qryAjustesind_cfop_devolucao_fora: TStringField;
    qryAjustesind_cfop_servico_dentro: TStringField;
    qryAjustesind_cfop_servico_fora: TStringField;
    qryAjustescfop_venda_dentro_desc: TStringField;
    qryAjustescfop_venda_fora_desc: TStringField;
    qryAjustescfop_devolucao_dentro_desc: TStringField;
    qryAjustescfop_devolucao_fora_desc: TStringField;
    qryAjustescfop_servico_dentro_desc: TStringField;
    qryAjustescfop_servico_fora_desc: TStringField;
    qryAjustestipo_nf: TIntegerField;
    qryAjustescor_estoque_positivo: TStringField;
    qryAjustescor_estoque_negativo: TStringField;
    qryAjustescor_estoque_zerado: TStringField;
    qryAjustestipo_pesquisa: TIntegerField;
    qryAjustesecf_concomitante: TIntegerField;
    qryAjustesplano_pagto_forn: TStringField;
    qryAjusteshab_prevenda: TIntegerField;
    qryAjustescodclienteav: TStringField;
    qryAjustescodclientemodelo: TStringField;
    qryAjustescodprodutomodelo: TStringField;
    qryAjustescodfornecedormodelo: TStringField;
    qryAjustesusa_caixa_diario: TIntegerField;
    qryAjustesimprimi_orcamento_auto: TIntegerField;
    qryAjustesfixa_forma_pgto_cliente: TIntegerField;
    qryAjustesversaobd: TStringField;
    qryAjustesusa_caixa_padrao_usuario: TIntegerField;
    qryAjustestexto_padrao_venda: TStringField;
    qryAjustestexto_padrao_devolucao: TStringField;
    qryAjustestexto_padrao_garantia: TStringField;
    qryAjustesavisa_estoque_minimo: TIntegerField;
    qryAjustesatendimentoimpressao: TStringField;
    qryAjustesatendimentovias: TIntegerField;
    qryAjustesatendimentoficha: TStringField;
    qryAjustesatendimentoimpressora: TStringField;
    qryAjustesatendimentoimpresmodelo: TIntegerField;
    qryAjustespermite_prod_preco_zero: TStringField;
    qryAjustesacrescimo_produto: TFloatField;
    qryAjustesnao_sol_senha_mov_estoque: TStringField;
    qryAjustescobra_couver: TStringField;
    qryAjustesvalor_couver: TFloatField;
    qryAjustescobra_comissao: TStringField;
    qryAjustescomissao_percentual: TFloatField;
    qryAjustesqtd_mesas_mobile: TIntegerField;
    qryAjustesproduto_taxa_entrega: TStringField;
    qryAjustestip_imp_delivery: TIntegerField;
    qryAjustesultimaverificaoxml: TDateTimeField;
    qryAjustesv_exibe_barra_atalho: TStringField;
    qryAjustesv_cor_fundo_barra_titulo: TStringField;
    qryAjustesv_cor_fonte_barra_titulo: TStringField;
    qryAjustesv_cor_fundo_barra_rodape: TStringField;
    qryAjustesv_cor_fonte_barra_rodape: TStringField;
    qryAjustesv_men_cad_fundo: TStringField;
    qryAjustesv_men_cad_fonte: TStringField;
    qryAjustesv_men_est_fundo: TStringField;
    qryAjustesv_men_est_fonte: TStringField;
    qryAjustesv_men_mov_fundo: TStringField;
    qryAjustesv_men_mov_fonte: TStringField;
    qryAjustesv_men_fin_fundo: TStringField;
    qryAjustesv_men_fin_fonte: TStringField;
    qryAjustesv_men_rel_fundo: TStringField;
    qryAjustesv_men_rel_fonte: TStringField;
    qryAjustesv_men_con_fundo: TStringField;
    qryAjustesv_men_con_fonte: TStringField;
    qryAjustesv_imagem_fundo: TStringField;
    qryAjustesv_ata_bot_cor_fundo: TStringField;
    qryAjustesv_ata_bot_cor_fonte: TStringField;
    qryAjustesv_ata_exibe_imagem: TStringField;
    qryAjustesv_ata_exibe_resumo_caixa: TStringField;
    qryAjustesv_ata_caixa_cor_fundo: TStringField;
    qryAjustesv_ata_caixa_cor_fonte: TStringField;
    qryAjustesutiliza_leitor_codigo_barra: TStringField;
    qryAjustesemail_tls: TStringField;
    qryAjustesemail_ssl: TStringField;
    qryAjustesnao_exibe_fech_atend: TStringField;
    qryAjustesnao_informa_cli_atend: TStringField;
    qryAjustesnao_utiliza_extra: TStringField;
    qryAjustesativa_cad_produto_simples: TStringField;
    qryAjustesativa_campo_pedido_cliente: TStringField;
    qryAjustescep_busca: TStringField;
    qryAjustescep_servidor: TIntegerField;
    qryAjustescep_chave: TStringField;
    qryAjustesind_cfop_dev_compra_dentro: TStringField;
    qryAjustesind_cfop_dev_compra_fora: TStringField;
    qryAjustesind_cfop_garantia_dentro: TStringField;
    qryAjustesind_cfop_garantia_fora: TStringField;
    qryAjustesind_cfop_dev_compra_dentro_desc: TStringField;
    qryAjustesind_cfop_dev_compra_fora_desc: TStringField;
    qryAjustesind_cfop_garantia_dentro_desc: TStringField;
    qryAjustesind_cfop_garantia_fora_desc: TStringField;
    qryAjustesiniciar_nova_venda: TStringField;
    qryAjustesnovo_ramo_atividade: TStringField;
    qryAjustesvalidar_caixa_atendimento: TStringField;
    qryAjustesatualiza_estoque_pdv: TStringField;
    qryAjustesbaixa_estoque_venda_simples: TStringField;
    qryAjustesdias_val_cupom_credito: TIntegerField;
    qryAjustesdias_validade_cupom_credito: TIntegerField;
    qryAjustesvendas_simples_nao_mov_caixa: TStringField;
    qryAjustestaxa_garcom_tipo_receb: TStringField;
    qryAjustescouver_tipo_receb: TStringField;
    qryAjustescouver_produto: TStringField;
    qryAjustestaxa_garcom_produto: TStringField;
    qryAjustestip_imp_comanda: TIntegerField;
    qryAjustesnao_solicita_excluir_item_nfe: TStringField;
    qryAjustescaixa_automatico_gerencial: TStringField;
    qryAjustespermitir_senhas_obvias: TStringField;
    qryAjustesb2b_xml_produto: TStringField;
    qryAjustestipo_etiqueta_balanca: TStringField;
    qryAjustespode_alt_vlr_unit_atend: TStringField;
    qryAjustespath_remessa: TStringField;
    qryAjustespath_retorno: TStringField;
    qryAjustespath_gerarpdf: TStringField;
    qryAjustesassunto_email: TStringField;
    qryAjustesmultiloja: TStringField;
    qryAjustesDATABASE: TStringField;
    qryAjustesport: TStringField;
    qryAjustesserver: TStringField;
    qryAjustesusername: TStringField;
    qryAjustesPASSWORD: TStringField;
    qryAjustesatb: TStringField;
    qryAjustesmultiloja_permitecadastro: TStringField;
    qryAjustespdv_exibe_estoque_tela_venda: TStringField;
    qryAjusteslibera_canc_pdv_gerencial: TStringField;
    qryAjustesmantem_atendimento_aberto: TStringField;
    qryAjustestipomovimentolote: TStringField;
    qryAjustesexibe_painel_corporativo: TStringField;
    qryAjustespainel_lote_vencendo: TStringField;
    qryAjustespainel_lote_vencendo_dias: TIntegerField;
    qryAjustesinformar_cliente_nfce_apartir: TFloatField;
    qryAjustesreimprimir_comanda_consumacao: TStringField;
    qryAjustestip_imp_reimp_comanda: TIntegerField;
    qryAjustesanexa_pdf_exportar_xml: TStringField;
    qryAjustesvendas_dinheiro_simples: TStringField;
    qryAjustespermite_venda_sem_estoque_pdv: TStringField;
    qryAjustesvias_mrt: TIntegerField;
    qryAjustesvias_imp_delivery: TIntegerField;
    qryAjustescodigo_produto_automatico: TStringField;
    qryAjustespdv_dec_acr_alteratotalitem: TStringField;
    qryAjustesrenumerado: TStringField;
    qryAjustesusar_servico_os: TStringField;
    qryVerificaTabela: TUniQuery;
    qryCriaTabela: TUniQuery;
    qryVerificaCampos: TUniQuery;
    qryCriaCampo: TUniQuery;
    qryProdutos: TUniQuery;
    qryProdutoscodigo: TStringField;
    qryProdutosproduto: TStringField;
    qryProdutosdata_cadastro: TDateField;
    qryProdutoscodgrupo: TStringField;
    qryProdutoscodsubgrupo: TStringField;
    qryProdutoscodfornecedor: TStringField;
    qryProdutoscodmarca: TStringField;
    qryProdutosdata_ultimacompra: TDateField;
    qryProdutosnotafiscal: TStringField;
    qryProdutosprecocusto: TFloatField;
    qryProdutosprecovenda: TFloatField;
    qryProdutosdata_ultimavenda: TDateField;
    qryProdutosestoque: TFloatField;
    qryProdutosestoqueminimo: TFloatField;
    qryProdutoscodaliquota: TStringField;
    qryProdutoslocalicazao: TStringField;
    qryProdutospeso: TFloatField;
    qryProdutosvalidade: TStringField;
    qryProdutoscomissao: TFloatField;
    qryProdutosusa_balanca: TIntegerField;
    qryProdutosusa_serial: TIntegerField;
    qryProdutosusa_grade: TIntegerField;
    qryProdutoscodreceita: TStringField;
    qryProdutosfoto: TStringField;
    qryProdutosdata_ultimacompra_anterior: TDateField;
    qryProdutosnotafiscal_anterior: TStringField;
    qryProdutoscodfornecedor_anterior: TStringField;
    qryProdutosprecocusto_anterior: TFloatField;
    qryProdutosprecovenda_anterior: TFloatField;
    qryProdutoscustomedio: TFloatField;
    qryProdutosauto_aplicacao: TStringField;
    qryProdutosauto_complemento: TStringField;
    qryProdutosdata_remarcacao_custo: TDateField;
    qryProdutosdata_remarcacao_venda: TDateField;
    qryProdutospreco_promocao: TFloatField;
    qryProdutosdata_promocao: TDateField;
    qryProdutosfim_promocao: TDateField;
    qryProdutoscst: TStringField;
    qryProdutosclassificacao_fiscal: TStringField;
    qryProdutosnbm: TStringField;
    qryProdutosncm: TStringField;
    qryProdutosaliquota: TFloatField;
    qryProdutosipi: TFloatField;
    qryProdutosreducao: TFloatField;
    qryProdutosqtde_embalagem: TFloatField;
    qryProdutostipo: TStringField;
    qryProdutospeso_liquido: TFloatField;
    qryProdutosfarmacia_controlado: TStringField;
    qryProdutosfarmacia_apresentacao: TIntegerField;
    qryProdutosfarmacia_registro_medicamento: TStringField;
    qryProdutosfarmacia_pmc: TFloatField;
    qryProdutosultima_alteracao: TDateField;
    qryProdutosultima_carga: TDateField;
    qryProdutosdata_inventario: TDateField;
    qryProdutoscusto_inventario: TFloatField;
    qryProdutosestoque_inventario: TFloatField;
    qryProdutosestoque_anterior: TFloatField;
    qryProdutosprecovenda_novo: TFloatField;
    qryProdutosusa_rentabilidade: TIntegerField;
    qryProdutosquantidade_minima_fab: TFloatField;
    qryProdutosapresentacao: TStringField;
    qryProdutossituacao: TIntegerField;
    qryProdutosprecovenda1: TFloatField;
    qryProdutosprecovenda2: TFloatField;
    qryProdutosprecovenda3: TFloatField;
    qryProdutosprecovenda4: TFloatField;
    qryProdutosprecovenda5: TFloatField;
    qryProdutosdesconto_precovenda: TFloatField;
    qryProdutosdata_inventario_atual: TDateField;
    qryProdutoscusto_inventario_atual: TFloatField;
    qryProdutosestoque_inventario_atual: TFloatField;
    qryProdutosmargem_minima: TFloatField;
    qryProdutospiscofins: TStringField;
    qryProdutosreferencia_fornecedor: TStringField;
    qryProdutoscomissao1: TFloatField;
    qryProdutosmargem_desconto: TFloatField;
    qryProdutostamanho: TStringField;
    qryProdutoscor: TStringField;
    qryProdutosincidencia_piscofins: TStringField;
    qryProdutosveic_chassi: TStringField;
    qryProdutosveic_serie: TStringField;
    qryProdutosveic_potencia: TStringField;
    qryProdutosveic_peso_liquido: TStringField;
    qryProdutosveic_peso_bruto: TStringField;
    qryProdutosveic_tipo_combustivel: TStringField;
    qryProdutosveic_renavam: TStringField;
    qryProdutosveic_ano_fabricacao: TIntegerField;
    qryProdutosveic_ano_modelo: TIntegerField;
    qryProdutosveic_tipo: TStringField;
    qryProdutosveic_tipo_pintura: TStringField;
    qryProdutosveic_cod_cor: TStringField;
    qryProdutosveic_cor: TStringField;
    qryProdutosveic_vin: TStringField;
    qryProdutosveic_numero_motor: TStringField;
    qryProdutosveic_cmkg: TStringField;
    qryProdutosveic_cm3: TStringField;
    qryProdutosveic_distancia_eixo: TStringField;
    qryProdutosveic_cod_marca: TStringField;
    qryProdutosveic_especie: TStringField;
    qryProdutosveic_condicao: TStringField;
    qryProdutoslote_fabricacao: TStringField;
    qryProdutoslote_validade: TDateField;
    qryProdutosmargem_agregada: TFloatField;
    qryProdutoscodbarra_novartis: TStringField;
    qryProdutosfarmacia_dcb: TStringField;
    qryProdutosfarmacia_abcfarma: TStringField;
    qryProdutosfarmacia_apresentacao_caixa: TStringField;
    qryProdutosfarmacia_principioativo: TStringField;
    qryProdutosultima_compra: TDateField;
    qryProdutosfarmacia_datavigencia: TDateField;
    qryProdutosfarmacia_tipo: TStringField;
    qryProdutosusa_combustivel: TStringField;
    qryProdutosreferencia: TStringField;
    qryProdutosperda: TFloatField;
    qryProdutoscomposicao1: TStringField;
    qryProdutoscomposicao2: TStringField;
    qryProdutosiat: TStringField;
    qryProdutosippt: TStringField;
    qryProdutossituacao_tributaria: TStringField;
    qryProdutosflag_sis: TStringField;
    qryProdutosflag_aceito: TStringField;
    qryProdutosflag_est: TStringField;
    qryProdutoscsosn: TStringField;
    qryProdutoscodoriginal: TStringField;
    qryProdutoscusto_atacado: TFloatField;
    qryProdutosunidade_atacado: TStringField;
    qryProdutosqtde_embalagematacado: TFloatField;
    qryProdutospmargem1: TFloatField;
    qryProdutospmargem2: TFloatField;
    qryProdutospmargem3: TFloatField;
    qryProdutospmargem4: TFloatField;
    qryProdutospmargem5: TFloatField;
    qryProdutospmargematacado1: TFloatField;
    qryProdutospmargematacado2: TFloatField;
    qryProdutospmargematacado3: TFloatField;
    qryProdutospmargematacado4: TFloatField;
    qryProdutospmargematacado5: TFloatField;
    qryProdutospmargematacado6: TFloatField;
    qryProdutosprecoatacado1: TFloatField;
    qryProdutosprecoatacado2: TFloatField;
    qryProdutosprecoatacado3: TFloatField;
    qryProdutosprecoatacado4: TFloatField;
    qryProdutosprecoatacado5: TFloatField;
    qryProdutosind_cfop: TStringField;
    qryProdutoscfop_desc: TStringField;
    qryProdutosusa_lote: TIntegerField;
    qryProdutosind_cfop_venda_dentro: TStringField;
    qryProdutoscodconta: TStringField;
    qryProdutosind_cfop_venda_fora: TStringField;
    qryProdutosind_cfop_devolucao_dentro: TStringField;
    qryProdutosind_cfop_devolucao_fora: TStringField;
    qryProdutosind_cfop_garantia_dentro: TStringField;
    qryProdutosind_cfop_garantia_fora: TStringField;
    qryProdutosusa_tb_pc: TStringField;
    qryProdutosativa: TStringField;
    qryProdutoscest: TStringField;
    qryProdutosorigem: TIntegerField;
    qryProdutosind_cfop_nfce: TStringField;
    qryProdutosid_tipo_servico: TIntegerField;
    qryProdutosnao_movimenta_estoque: TStringField;
    qryProdutospesagem_auotmatica: TStringField;
    qryProdutosinforma_codigo_barra_xml: TStringField;
    qryProdutoscodigo_anp: TStringField;
    qryProdutoscombo: TStringField;
    qryProdutosind_cfop_dev_compra_dentro: TStringField;
    qryProdutosind_cfop_dev_compra_fora: TStringField;
    qryProdutospizza: TStringField;
    qryProdutospercglnn: TFloatField;
    qryProdutospercglgni: TFloatField;
    qryProdutospglp: TFloatField;
    qryProdutosvpart: TFloatField;
    qryProdutosecf_icms: TStringField;
    qryProdutosidonline: TIntegerField;
    qryProdutosemdestaque: TStringField;
    qryProdutosdescontomaximo: TFloatField;
    qryProdutosatb: TStringField;
    qryProdutoscontrolalote: TStringField;
    qryProdutoscodbarra: TStringField;
    qryProdutosunidade: TStringField;
    qryProdutospiscstcsosn: TStringField;
    qryProdutoscofinscstcsosn: TStringField;
    qryProdutosicmsrepasse: TStringField;
    qryProdutosretornavel: TStringField;
    qryPessoas: TUniQuery;
    qryPessoascodigo: TStringField;
    qryPessoasnome: TStringField;
    qryPessoasendereco: TStringField;
    qryPessoasbairro: TStringField;
    qryPessoascidade: TStringField;
    qryPessoasuf: TStringField;
    qryPessoascep: TStringField;
    qryPessoascomplemento: TStringField;
    qryPessoastelefone1: TStringField;
    qryPessoasemail: TStringField;
    qryPessoasrg: TStringField;
    qryPessoascpf: TStringField;
    qryPessoasfiliacao: TStringField;
    qryPessoasestadocivil: TStringField;
    qryPessoasconjuge: TStringField;
    qryPessoasprofissao: TStringField;
    qryPessoasempresa: TStringField;
    qryPessoasrenda: TFloatField;
    qryPessoaslimite: TFloatField;
    qryPessoasref1: TStringField;
    qryPessoasref2: TStringField;
    qryPessoascodvendedor: TStringField;
    qryPessoasdata_cadastro: TDateField;
    qryPessoasdata_ultimacompra: TDateField;
    qryPessoasobs1: TStringField;
    qryPessoasobs2: TStringField;
    qryPessoasobs3: TStringField;
    qryPessoasobs4: TStringField;
    qryPessoasobs5: TStringField;
    qryPessoasobs6: TStringField;
    qryPessoasnascimento: TStringField;
    qryPessoascodregiao: TStringField;
    qryPessoascodconvenio: TStringField;
    qryPessoascodusuario: TStringField;
    qryPessoasnumero: TStringField;
    qryPessoasrg_orgao: TStringField;
    qryPessoasrg_estado: TStringField;
    qryPessoasrg_emissao: TDateField;
    qryPessoassexo: TStringField;
    qryPessoasprevisao: TDateField;
    qryPessoascnae: TStringField;
    qryPessoascod_municipio_ibge: TStringField;
    qryPessoasibge: TStringField;
    qryPessoastamanho_calca: TStringField;
    qryPessoastamanho_blusa: TStringField;
    qryPessoastamanho_sapato: TStringField;
    qryPessoascorresp_endereco: TStringField;
    qryPessoascorresp_bairro: TStringField;
    qryPessoascorresp_cidade: TStringField;
    qryPessoascorresp_uf: TStringField;
    qryPessoascorresp_cep: TStringField;
    qryPessoascorresp_complemento: TStringField;
    qryPessoasrg_produtor: TStringField;
    qryPessoasresp1_nome: TStringField;
    qryPessoasresp1_cpf: TStringField;
    qryPessoasresp1_rg: TStringField;
    qryPessoasresp1_profissao: TStringField;
    qryPessoasresp1_estado_civil: TStringField;
    qryPessoasresp1_endereco: TStringField;
    qryPessoasresp1_bairro: TStringField;
    qryPessoasresp1_cidade: TStringField;
    qryPessoasresp1_uf: TStringField;
    qryPessoasresp1_cep: TStringField;
    qryPessoasresp2_nome: TStringField;
    qryPessoasresp2_cpf: TStringField;
    qryPessoasresp2_rg: TStringField;
    qryPessoasresp2_profissao: TStringField;
    qryPessoasresp2_estado_civil: TStringField;
    qryPessoasresp2_endereco: TStringField;
    qryPessoasresp2_bairro: TStringField;
    qryPessoasresp2_cidade: TStringField;
    qryPessoasresp2_uf: TStringField;
    qryPessoasresp2_cep: TStringField;
    qryPessoasfoto: TStringField;
    qryPessoascondpgto: TStringField;
    qryPessoascpais: TStringField;
    qryPessoasdpais: TStringField;
    qryPessoastipo_ie: TStringField;
    qryPessoasconsumidor_final: TStringField;
    qryPessoasinstrucoes1: TStringField;
    qryPessoasinstrucoes2: TStringField;
    qryPessoasidonline: TIntegerField;
    qryPessoasatb: TStringField;
    qryPessoastipopessoa: TStringField;
    qryPessoasresponsavel: TStringField;
    qryPessoassimples: TBooleanField;
    qryPessoassimei: TBooleanField;
    qryPessoassintegra: TBooleanField;
    qryPessoasjuridica: TBooleanField;
    qryPessoassintegrainativo: TBooleanField;
    qryVerificaSchema: TUniQuery;
    qryAjustesnuvemfiscal_clientid: TStringField;
    qryAjustesnuvemfiscal_secretid: TStringField;
    tblCSOSN: TUniTable;
    tblCSOSNcod: TIntegerField;
    tblCSOSNdescricao: TStringField;
    procedure ConexaoError(Sender: TObject; E: EDAError; var Fail: Boolean);
  private
    { Private declarations }
  public
    function StrZero(Codigo, Casas: integer): string; overload;
    function StrZero(Codigo: string; Casas: integer): string; overload;
    function ConsultaCNPJ(CNPJ: string): TEmpresa;
    function ConsultaCEP(CEP: string): TCEP;
    function GeraCodigoDisponivel(Tabela: string): string;
    function RetornaBancos(Con: TUniConnection): TStrings;
    function RetornaCMun(XNome: string): integer;
    function VerificaBancoDeDados: Boolean;
    procedure BaixaSeed(link, arquivo: string);
    procedure AtualizaTabela(schema, tabela: string; qryAtualiza: TUniQuery); overload;
    procedure AtualizaTabela(schema, tabela: string; tblAtualiza: TUniTable); overload;
    procedure CopiaDataSet(Origem, Destino: TDataSet);
    procedure SeedDB();
  end;

var
  DM: TDM;

implementation

uses
  uPrincipal, uConectaAoBanco, uFuncoes;

{$R *.dfm}

{ TDM }

procedure TDM.ConexaoError(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
  Conexao.Disconnect();
  try
    Conexao.Connect();
  except
    frmConexaoBanco.ShowModal();
  end;

end;

function TDM.ConsultaCEP(CEP: string): TCEP;
var
  TokenProvider: IClientCredencialsTokenProvider;
  TokenData: ITokenData;
  AccessToken: string;
  DataExpiracao: TDateTime;
  Client: INuvemFiscalClient;
  nCEP: TCepEndereco;
begin
  TokenProvider := TClientCredentialsTokenProvider.Create;
  TokenProvider.TokenEndpoint := 'https://auth.nuvemfiscal.com.br/oauth/token';
  TokenProvider.ClientId := frmPrincipal.edtNuvemFiscalClientID.Text;
  TokenProvider.ClientSecret := frmPrincipal.edtNuvemFiscalSecretID.Text;
  TokenProvider.Scope := 'cep';
  TokenData := TokenProvider.RetrieveToken;
  AccessToken := TokenData.AccessToken;
  DataExpiracao := TokenData.ExpirationTime;

  Client := TNuvemFiscalClient.Create;
  Client.Config.AccessToken := AccessToken;

  nCEP := Client.Cep.ConsultarCep(OnlyNumber(CEP));

  try
    Result.CEP := nCEP.cep;
    Result.bairro := nCEP.bairro;
    Result.codigo_ibge := nCEP.codigo_ibge;
    Result.complemento := nCEP.complemento;
    Result.logradouro := nCEP.logradouro;
    Result.municipio := nCEP.municipio;
    Result.tipologradouro := nCEP.tipo_logradouro;
    Result.uf := nCEP.uf;
    Result.uf_ibge := copy(nCEP.codigo_ibge, 0, 2);

  finally
    nCEP.Free;
  end;
end;

function TDM.ConsultaCNPJ(CNPJ: string): TEmpresa;
var
  TokenProvider: IClientCredencialsTokenProvider;
  TokenData: ITokenData;
  AccessToken: string;
  DataExpiracao: TDateTime;
  Client: INuvemFiscalClient;
  Empresa: TCnpjEmpresa;
  Endereco: TCnpjEndereco;
begin
  TokenProvider := TClientCredentialsTokenProvider.Create;
  TokenProvider.TokenEndpoint := 'https://auth.nuvemfiscal.com.br/oauth/token';
  TokenProvider.ClientId := frmPrincipal.edtNuvemFiscalClientID.Text;
  TokenProvider.ClientSecret := frmPrincipal.edtNuvemFiscalSecretID.Text;
  TokenProvider.Scope := 'cnpj';
  TokenData := TokenProvider.RetrieveToken;
  AccessToken := TokenData.AccessToken;
  DataExpiracao := TokenData.ExpirationTime;

  Client := TNuvemFiscalClient.Create;
  Client.Config.AccessToken := AccessToken;

  Empresa := Client.Cnpj.ConsultarCnpj(OnlyNumber(CNPJ));

  try
    Result.Nome := Empresa.nome_fantasia;
    Result.Fantasia := Empresa.razao_social;
    Result.CNPJ := Empresa.cnpj;
    Result.Tipo := Empresa.porte.descricao;
    Result.email := Empresa.email;
    Result.telefone := '(' + Empresa.telefones[0].ddd + ') ' + Empresa.telefones[0].numero;
    Result.Capital := Empresa.capital_social;
    Result.status := Empresa.situacao_cadastral.descricao;
    Result.dtstatus := Empresa.situacao_cadastral.data;
    Result.Endereco.Rua := Empresa.endereco.tipo_logradouro + ' ' + Empresa.endereco.logradouro;
    Result.Endereco.Numero := Empresa.endereco.numero;
    Result.Endereco.Complemento := Empresa.endereco.complemento;
    Result.Endereco.CEP := Empresa.endereco.cep;
    Result.Endereco.Bairro := Empresa.endereco.bairro;
    Result.Endereco.Cidade := Empresa.endereco.municipio.descricao;
    Result.Endereco.UF := Empresa.endereco.uf;
    Result.Endereco.CidadeIBGE := Empresa.endereco.municipio.codigo_ibge;
    Result.Endereco.UFIBGE := Copy(Empresa.endereco.municipio.codigo_ibge, 0, 2);
    Result.NaturezaLegal := Empresa.natureza_juridica.descricao;
    Result.CNAE := Empresa.atividade_principal.codigo;
    Result.CNAEDescricao := Empresa.atividade_principal.descricao;
    Result.Responsavel := Empresa.ente_federativo_responsavel;
    Result.CPFResp := Empresa.ente_federativo_responsavel;
    Result.IE := '';
    Result.Abertura := Empresa.data_inicio_atividade;
    Result.Simples := Empresa.simples.optante;
    Result.Simei := Empresa.simei.optante;

    if Result.Simples then
      Result.CRT := 1
    else
      Result.CRT := 3;

    if Result.Simei then
      Result.CRT := 0;
  finally
    Empresa.Free;
  end;
end;

procedure TDM.CopiaDataSet(Origem, Destino: TDataSet);
var
  CampoOrigem, CampoDestino: TField;
  i: Integer;
begin
  for i := 0 to Origem.Fields.Count - 1 do
  begin
    CampoOrigem := Origem.Fields[i];
    CampoDestino := Destino.FindField(Origem.Fields[i].FullName);

    CampoDestino.Value := CampoOrigem.Value;
  end;
end;

function TDM.GeraCodigoDisponivel(Tabela: string): string;
var
  Query: TUniQuery;
  Table: TUniTable;
  MaiorCodigo, Quantidade: integer;
begin
  Query := TUniQuery.Create(nil);
  Query.Connection := Conexao;

  Table := TUniTable.Create(nil);
  Table.Connection := Conexao;
  Table.TableName := Tabela;
  Table.Open();

  if Table.IsEmpty then
  begin
    MaiorCodigo := 1;
    Quantidade := 0;
    Result := StrZero(1, 6);
  end
  else
  begin
    Query.SQL.Text := 'SELECT MAX(CODIGO) as CODIGO FROM ' + Tabela;
    Query.Open();

    MaiorCodigo := Query.FieldByName('CODIGO').AsInteger;
    Quantidade := Table.RecordCount;

    if Quantidade < MaiorCodigo then
      Result := StrZero(MaiorCodigo + 1, 6)
    else
      Result := StrZero(Quantidade + 1, 6);
  end;

  FreeAndNil(Query);
  FreeAndNil(Table);
end;

function TDM.RetornaBancos(Con: TUniConnection): TStrings;
var
  Lista: TStrings;
  MetaData: TDAMetaData;
  Name: string;
  DatabaseField: TField;
begin
  Lista := TStringList.Create();
  MetaData := TDAMetaData.Create(nil);
  MetaData.Connection := Con;
  try
    MetaData.MetaDataKind := 'Databases';
    MetaData.Open;
    DatabaseField := MetaData.FindField('DATABASE_NAME');

    while not MetaData.Eof do
    begin
      Name := VarToStr(DatabaseField.Value);

      if not AnsiMatchText(Name, ['postgres', 'template1', 'template0']) then
        Lista.Add(Name);

      MetaData.Next;
    end;
  finally
    MetaData.Free;
    Result := Lista;
  end;
end;

function TDM.RetornaCMun(XNome: string): integer;
begin
  qryCMun.Close();
  qryCMun.ParamByName('pCIDADE').Value := XNome;
  qryCMun.Open();

  Result := qryCMuncodigo.Value;
end;

procedure TDM.SeedDB;
begin
  TThread.CreateAnonymousThread(
    procedure()
    var
      Lista: TIniFile;
      ListaValores: TStringList;
      i: integer;
    begin
      BaixaSeed('https://dl.moebios.com.br/tabelapadrao.txt', 'tabelapadrao.txt');
      Lista := TIniFile.Create('C:\Moebios\Tools\tabelapadrao.txt');
      ListaValores := TStringList.Create();

      tblCSOSN.Open();

      if Lista.SectionExists('CSOSN') then
      begin
        Lista.ReadSectionValues('CSOSN', ListaValores);

        for i := 0 to ListaValores.Count - 1 do
        begin
          tblCSOSN.Open();

          if tblCSOSN.Locate('cod', ListaValores.Names[i], []) then
          begin
            tblCSOSN.Edit();
            tblCSOSNcod.Value := StrToInt(ListaValores.Names[i]);
            tblCSOSNdescricao.Value := ListaValores.Values[ListaValores.Names[i]];
            tblCSOSN.Post();
          end
          else
          begin
            tblCSOSN.Append();
            tblCSOSNcod.Value := StrToInt(ListaValores.Names[i]);
            tblCSOSNdescricao.Value := ListaValores.Values[ListaValores.Names[i]];
            tblCSOSN.Post();
          end;
        end;
      end;

      tblCSOSN.Close();

      TThread.Synchronize(TThread.CurrentThread,
        procedure()
        begin
          FreeAndNil(Lista);
          FreeAndNil(ListaValores);
        end);

    end).Start();
end;

function TDM.StrZero(Codigo: string; Casas: integer): string;
var
  CodInt, i: integer;
begin
  CodInt := StrToInt(Codigo);

  Result := IntToStr(CodInt);

  if not (Length(Result) > Casas) then
    while (Length(Result) <> Casas) do
      Result := '0' + Result;
end;

function TDM.VerificaBancoDeDados: Boolean;
begin
  try
    qryVerificaSchema.Close();
    qryVerificaSchema.ParamByName('pSCHEMA').Value := 'commerce';
    qryVerificaSchema.Open();

    if qryVerificaSchema.RecordCount = 0 then
      Conexao.ExecSQL('CREATE SCHEMA commerce');

    qryVerificaSchema.Close();
    qryVerificaSchema.ParamByName('pSCHEMA').Value := 'moebios';
    qryVerificaSchema.Open();

    if qryVerificaSchema.RecordCount = 0 then
      Conexao.ExecSQL('CREATE SCHEMA moebios');

    AtualizaTabela('commerce', 'empresa', qryEmpresa);
    AtualizaTabela('commerce', 'funcionarios', qryFuncionarios);
    AtualizaTabela('commerce', 'config_dfe', qryConfigDFe);
    AtualizaTabela('commerce', 'nfeitens', qryNFItens);
    AtualizaTabela('commerce', 'nfepagtos', qryNFCobranca);
    AtualizaTabela('commerce', 'cidades', qryCMun);
    AtualizaTabela('commerce', 'configuracoes', qryAjustes);
    AtualizaTabela('commerce', 'produtos', qryProdutos);

    Result := True;
  except
    Result := False;
  end;
end;

procedure TDM.AtualizaTabela(schema, tabela: string; tblAtualiza: TUniTable);
var
  i: Integer;
  Tipo: TFieldType;
begin
  qryVerificaTabela.Close();
  qryVerificaTabela.ParamByName('pTABELA').Value := tabela;
  qryVerificaTabela.Open();

  if qryVerificaTabela.RecordCount > 0 then
  begin
    try
      //verifica os defs e cria campos se necessário
      qryVerificaCampos.Close();
      qryVerificaCampos.ParamByName('pTABELA').Value := tabela;
      qryVerificaCampos.Open();

      for i := 0 to tblAtualiza.Fields.Count - 1 do
      begin
        if not qryVerificaCampos.Locate('column_name', tblAtualiza.Fields[i].FullName, []) then
        begin
          qryCriaCampo.Close();
          qryCriaCampo.SQL.Clear();
          qryCriaCampo.SQL.Add('ALTER TABLE ' + schema + '.' + tabela + ' ADD ' + tblAtualiza.Fields[i].FullName + ' ' + RetornaTipoPostgreSQL(tblAtualiza.Fields[i].DataType, tblAtualiza.Fields[i]));
          qryCriaCampo.Execute();
        end;
      end;
    except

    end;
  end
  else
  begin
    //cria tabela e add defs
    qryCriaTabela.SQL.Clear();
    qryCriaTabela.SQL.Add('CREATE TABLE ' + schema + '.' + tabela + ' (');

    for i := 0 to tblAtualiza.Fields.Count - 1 do
    begin
      if i = tblAtualiza.Fields.Count - 1 then
        qryCriaTabela.SQL.Add(' ' + tblAtualiza.Fields[i].FullName + ' ' + RetornaTipoPostgreSQL(tblAtualiza.Fields[i].DataType, tblAtualiza.Fields[i]) + ');')
      else
        qryCriaTabela.SQL.Add(' ' + tblAtualiza.Fields[i].FullName + ' ' + RetornaTipoPostgreSQL(tblAtualiza.Fields[i].DataType, tblAtualiza.Fields[i]) + ',');
    end;

    qryCriaTabela.Execute;
  end;
end;

procedure TDM.BaixaSeed(link, arquivo: string);
var
  idHTTP: TIdHTTP;
  IdSSL: TIdSSLIOHandlerSocketOpenSSL;
  Stream: TMemoryStream;
  Filename: string;
begin
  ForceDirectories('C:\Moebios\Tools\');
  idHTTP := TIdHTTP.Create(nil);
  IdSSL := TIdSSLIOHandlerSocketOpenSSL.Create(idHTTP);
  IdSSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
  idHTTP.IOHandler := IdSSL;
  idHTTP.HandleRedirects := True;
  Stream := TMemoryStream.Create;
  try
    idHTTP.Get(link, Stream);
    Stream.SaveToFile('C:\Moebios\Tools\' + arquivo);
  finally
    Stream.Free;
    idHTTP.Free;
  end;
end;

procedure TDM.AtualizaTabela(schema, tabela: string; qryAtualiza: TUniQuery);
var
  i: Integer;
  Tipo: TFieldType;
begin
  qryVerificaTabela.Close();
  qryVerificaTabela.ParamByName('pTABELA').Value := tabela;
  qryVerificaTabela.Open();

  if qryVerificaTabela.RecordCount > 0 then
  begin
    try
      //verifica os defs e cria campos se necessário
      qryVerificaCampos.Close();
      qryVerificaCampos.ParamByName('pTABELA').Value := tabela;
      qryVerificaCampos.Open();

      for i := 0 to qryAtualiza.Fields.Count - 1 do
      begin
        if not qryVerificaCampos.Locate('column_name', qryAtualiza.Fields[i].FullName, []) then
        begin
          qryCriaCampo.Close();
          qryCriaCampo.SQL.Clear();
          qryCriaCampo.SQL.Add('ALTER TABLE ' + schema + '.' + tabela + ' ADD ' + qryAtualiza.Fields[i].FullName + ' ' + RetornaTipoPostgreSQL(qryAtualiza.Fields[i].DataType, qryAtualiza.Fields[i]));
          qryCriaCampo.Execute();
        end;
      end;
    except

    end;
  end
  else
  begin
    //cria tabela e add defs
    qryCriaTabela.SQL.Clear();
    qryCriaTabela.SQL.Add('CREATE TABLE ' + schema + '.' + tabela + ' (');

    for i := 0 to qryAtualiza.Fields.Count - 1 do
    begin
      if i = qryAtualiza.Fields.Count - 1 then
        qryCriaTabela.SQL.Add(' ' + qryAtualiza.Fields[i].FullName + ' ' + RetornaTipoPostgreSQL(qryAtualiza.Fields[i].DataType, qryAtualiza.Fields[i]) + ');')
      else
        qryCriaTabela.SQL.Add(' ' + qryAtualiza.Fields[i].FullName + ' ' + RetornaTipoPostgreSQL(qryAtualiza.Fields[i].DataType, qryAtualiza.Fields[i]) + ',');
    end;

    qryCriaTabela.Execute;
  end;
end;

function TDM.StrZero(Codigo, Casas: integer): string;
var
  i: integer;
begin
  Result := IntToStr(Codigo);

  if not (Length(Result) > Casas) then
    while (Length(Result) <> Casas) do
      Result := '0' + Result;
end;

end.

