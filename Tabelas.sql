CREATE SCHEMA commerce;
CREATE SCHEMA moebios;
DROP SCHEMA public;

CREATE TABLE moebios.registro
(
    dados character varying(200) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE moebios.registro
    OWNER to postgres;

CREATE TABLE commerce.config_dfe
(
    tssllib integer,
    tsslcryptlib integer,
    tsslhttplib integer,
    tsslxmlsignlib integer,
    certificado_caminho character varying(255) COLLATE pg_catalog."default",
    certificado_senha character varying(30) COLLATE pg_catalog."default",
    certificado_numero_serie character varying(100) COLLATE pg_catalog."default",
    webservice_uf character varying(2) COLLATE pg_catalog."default",
    ambiente integer,
    visualizar_mensagem character varying(1) COLLATE pg_catalog."default",
    salvar_envelope_soap character varying(1) COLLATE pg_catalog."default",
    timeout integer,
    ssltype integer,
    ajustar_aguardar character varying(1) COLLATE pg_catalog."default",
    aguardar integer,
    tentativas integer,
    intervalo integer,
    proxy_host character varying(100) COLLATE pg_catalog."default",
    proxy_porta character varying(5) COLLATE pg_catalog."default",
    proxy_usuario character varying(20) COLLATE pg_catalog."default",
    proxy_senha character varying(20) COLLATE pg_catalog."default",
    atualizar_xml character varying(1) COLLATE pg_catalog."default",
    exibir_erro_schema character varying(1) COLLATE pg_catalog."default",
    retirar_acentos character varying(1) COLLATE pg_catalog."default",
    logo_marca character varying(255) COLLATE pg_catalog."default",
    formato_alerta character varying(255) COLLATE pg_catalog."default",
    nfe_formato_emissao integer,
    nfe_versao integer,
    nfe_schemas character varying(255) COLLATE pg_catalog."default",
    nfe_danfe integer,
    nfe_salvar_pastas_separadas character varying(1) COLLATE pg_catalog."default",
    nfe_criar_mensalmente character varying(1) COLLATE pg_catalog."default",
    nfe_adicionar_literal_pastas character varying(1) COLLATE pg_catalog."default",
    nfe_salvar_data_emissao character varying(1) COLLATE pg_catalog."default",
    nfe_salvar_arqs_eventos character varying(1) COLLATE pg_catalog."default",
    nfe_separar_pelo_cnpj character varying(1) COLLATE pg_catalog."default",
    nfe_separar_modelo_documento character varying(1) COLLATE pg_catalog."default",
    nfe_pasta_arquivos_nfe character varying(255) COLLATE pg_catalog."default",
    nfe_pasta_cancelamento character varying(255) COLLATE pg_catalog."default",
    nfe_pasta_cce character varying(255) COLLATE pg_catalog."default",
    nfe_pasta_inutilizacao character varying(255) COLLATE pg_catalog."default",
    nfe_pasta_dpec character varying(255) COLLATE pg_catalog."default",
    nfe_pasta_evento character varying(255) COLLATE pg_catalog."default",
    nfe_salvar_envio_resposta character varying(1) COLLATE pg_catalog."default",
    nfe_caminho_envio_resposta character varying(255) COLLATE pg_catalog."default",
    nfe_email_assunto character varying(255) COLLATE pg_catalog."default",
    nfe_email_remetente character varying(255) COLLATE pg_catalog."default",
    nfce_formato_emissao integer,
    nfce_versao integer,
    nfce_schemas character varying(255) COLLATE pg_catalog."default",
    nfce_idtoken character varying(20) COLLATE pg_catalog."default",
    nfce_token character varying(255) COLLATE pg_catalog."default",
    nfce_salvar_pastas_separadas character varying(1) COLLATE pg_catalog."default",
    nfce_criar_mensalmente character varying(1) COLLATE pg_catalog."default",
    nfce_adicionar_literal_pastas character varying(1) COLLATE pg_catalog."default",
    nfce_salvar_data_emissao character varying(1) COLLATE pg_catalog."default",
    nfce_salvar_arqs_eventos character varying(1) COLLATE pg_catalog."default",
    nfce_separar_pelo_cnpj character varying(1) COLLATE pg_catalog."default",
    nfce_separar_modelo_documento character varying(1) COLLATE pg_catalog."default",
    nfce_pasta_arquivos_nfe character varying(255) COLLATE pg_catalog."default",
    nfce_pasta_cancelamento character varying(255) COLLATE pg_catalog."default",
    nfce_pasta_cce character varying(255) COLLATE pg_catalog."default",
    nfce_pasta_inutilizacao character varying(255) COLLATE pg_catalog."default",
    nfce_pasta_dpec character varying(255) COLLATE pg_catalog."default",
    nfce_pasta_evento character varying(255) COLLATE pg_catalog."default",
    nfce_salvar_envio_resposta character varying(1) COLLATE pg_catalog."default",
    nfce_caminho_envio_resposta character varying(255) COLLATE pg_catalog."default",
    cte_formato_emissao integer,
    cte_schemas character varying(255) COLLATE pg_catalog."default",
    cte_danfe integer,
    cte_salvar_envio_resposta character varying(1) COLLATE pg_catalog."default",
    cte_caminho_envio_resposta character varying(255) COLLATE pg_catalog."default",
    cte_email_assunto character varying(255) COLLATE pg_catalog."default",
    cte_email_remetente character varying(255) COLLATE pg_catalog."default",
    mdfe_formato_emissao integer,
    mdfe_versao integer,
    mdfe_schemas character varying(255) COLLATE pg_catalog."default",
    mdfe_danfe integer,
    mdfe_salvar_envio_resposta character varying(1) COLLATE pg_catalog."default",
    mdfe_caminho_envio_resposta character varying(255) COLLATE pg_catalog."default",
    mdfe_email_assunto character varying(255) COLLATE pg_catalog."default",
    mdfe_email_remetente character varying(255) COLLATE pg_catalog."default",
    caminho_baixar_nfe character varying(255) COLLATE pg_catalog."default",
    cte_caminho_log character varying(255) COLLATE pg_catalog."default",
    cte_caminho_inutilizacao character varying(255) COLLATE pg_catalog."default",
    cte_caminho_xml character varying(255) COLLATE pg_catalog."default",
    cte_caminho_pdf character varying(255) COLLATE pg_catalog."default",
    cte_danfe_padrao character varying(255) COLLATE pg_catalog."default",
    cte_danfe_eventos character varying(255) COLLATE pg_catalog."default",
    cte_danfe_email character varying(255) COLLATE pg_catalog."default",
    cte_modelo integer,
    cte_versao integer,
    cte_aliqnbs numeric(15,3),
    mdfe_caminho_log character varying(255) COLLATE pg_catalog."default",
    mdfe_caminho_xml character varying(255) COLLATE pg_catalog."default",
    mdfe_caminho_pdf character varying(255) COLLATE pg_catalog."default",
    mdfe_danfe_padrao character varying(255) COLLATE pg_catalog."default",
    mdfe_danfe_evento character varying(255) COLLATE pg_catalog."default",
    mdfe_danfe_email character varying(255) COLLATE pg_catalog."default",
    nfe_modelo_danfe character varying(1) COLLATE pg_catalog."default",
    atb character varying(30) COLLATE pg_catalog."default",
    danfe_margem_esquerda numeric(15,2),
    danfe_margem_direita numeric(15,2),
    danfe_margem_inferior numeric(15,2),
    danfe_margem_superior numeric(15,2),
    nfe_fr3_danfe character varying(255) COLLATE pg_catalog."default",
    nfe_fr3_inutilizacao character varying(255) COLLATE pg_catalog."default",
    nfe_fr3_evento character varying(255) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.config_dfe
    OWNER to postgres;

CREATE TABLE commerce.configuracoes
(
    codigo character varying(6) COLLATE pg_catalog."default",
    ultimo_backup date,
    papel_parede character varying(150) COLLATE pg_catalog."default",
    aviso_contas_pagar integer,
    aviso_cheque integer,
    estoque_negativo integer,
    casas_decimais_qtde integer,
    casas_decimais_valor integer,
    venda_cadastro_cheque integer,
    venda_cadastro_cartao integer,
    venda_tiponota integer,
    venda_qtde_vias_nota integer,
    venda_porta_impressora character varying(100) COLLATE pg_catalog."default",
    venda_tipo_impressora integer,
    venda_limite_cliente integer,
    os_tiponota integer,
    os_qtde_vias_nota integer,
    os_porta_impressora character varying(100) COLLATE pg_catalog."default",
    os_tipo_impressora integer,
    orcamento_tiponota integer,
    orcamento_qtde_vias_nota integer,
    orcamento_porta_impressora character varying(100) COLLATE pg_catalog."default",
    orcamento_tipo_impressora integer,
    contasreceber_carencia integer,
    contasreceber_taxajuros numeric(15,3),
    contasreceber_multa numeric(15,3),
    contasreceber_desconto_percent numeric(15,2),
    contasreceber_desconto_permitir integer,
    ecf_modelo character varying(30) COLLATE pg_catalog."default",
    ecf_porta character varying(50) COLLATE pg_catalog."default",
    ecf_tef integer,
    ecf_tipo character varying(20) COLLATE pg_catalog."default",
    balancapdv_modelo character varying(50) COLLATE pg_catalog."default",
    balancapdv_porta character varying(10) COLLATE pg_catalog."default",
    impressoracheque_modelo character varying(50) COLLATE pg_catalog."default",
    impressoracheque_porta character varying(10) COLLATE pg_catalog."default",
    balanca_modelo character varying(50) COLLATE pg_catalog."default",
    impressorabarras_modelo character varying(50) COLLATE pg_catalog."default",
    balanca_caminho character varying(100) COLLATE pg_catalog."default",
    cadastro_produto character varying(20) COLLATE pg_catalog."default",
    ramo_atividade integer,
    extrato_tiponota integer,
    bobina_subirpapel integer,
    classificacao character varying(10) COLLATE pg_catalog."default",
    boleto_formapgto character varying(20) COLLATE pg_catalog."default",
    plano_venda_av character varying(30) COLLATE pg_catalog."default",
    plano_venda_ap character varying(30) COLLATE pg_catalog."default",
    plano_os_av character varying(30) COLLATE pg_catalog."default",
    plano_os_ap character varying(30) COLLATE pg_catalog."default",
    plano_outras_entradas character varying(30) COLLATE pg_catalog."default",
    plano_outras_saidas character varying(30) COLLATE pg_catalog."default",
    plano_recebto_crediario character varying(30) COLLATE pg_catalog."default",
    nf_itens_pagina integer,
    nf_itens_transporte integer,
    nf_linha_transporte integer,
    nf_salto_pagina integer,
    nf_tipo integer,
    nf_impressora character varying(100) COLLATE pg_catalog."default",
    venda_fechamento_caixa integer,
    desconto_avista numeric(15,2),
    desconto_produto numeric(15,2),
    desconto_totalnota numeric(15,2),
    tipo_venda character varying(20) COLLATE pg_catalog."default",
    venda_alterar_preco integer,
    nf_linha_subtotal integer,
    nf_linha_total integer,
    ecf_caixa character varying(3) COLLATE pg_catalog."default",
    ecf_serial character varying(30) COLLATE pg_catalog."default",
    farmacia_envio character varying(60) COLLATE pg_catalog."default",
    farmacia_resposta character varying(60) COLLATE pg_catalog."default",
    farmacia_envio_resposta character varying(60) COLLATE pg_catalog."default",
    farmacia_login character varying(20) COLLATE pg_catalog."default",
    farmacia_senha character varying(20) COLLATE pg_catalog."default",
    ultima_carga date,
    imprime_cupom_vinculado integer,
    imprime_produtos_vinculados integer,
    imprime_comprovante_debito integer,
    imprime_duplicata integer,
    contasreceber_bloqueio integer,
    recibo_tiponota integer,
    nr_controle_ecf character varying(6) COLLATE pg_catalog."default",
    balanca_programa character varying(150) COLLATE pg_catalog."default",
    tipo_duplicata character varying(20) COLLATE pg_catalog."default",
    concilia_venda integer,
    controla_entrega integer,
    entrega_impressao integer,
    entrega_vias integer,
    condicional integer,
    condicional_prazo integer,
    vs_ativar integer,
    vs_dinheiro integer,
    vs_chequeav integer,
    vs_chequeap integer,
    vs_cartraocred integer,
    vs_cartaodeb integer,
    vs_crediario integer,
    vs_cliente_vista character varying(6) COLLATE pg_catalog."default",
    vs_caixa integer,
    vs_relatorio integer,
    vs_vias integer,
    vs_visualizar integer,
    condicional_modelo integer,
    alterar_unitario integer,
    contasreceber_valorjuros numeric(15,3),
    contasreceber_juros_dinheiro integer,
    plano_duplicata_nfe character varying(30) COLLATE pg_catalog."default",
    varejo_atacado integer,
    visualiza_mensagem integer,
    serial_repetido integer,
    ocultar_custo integer,
    ocultar_produto_inativo integer,
    ocultar_cliente_inativo integer,
    obs_farma integer,
    obs_farma_texto character varying(45) COLLATE pg_catalog."default",
    custo_maior_venda integer,
    vender_abaixo_custo integer,
    nf_gerar_receber integer,
    nf_codigobarra_nfe integer,
    nf_grade_nfe integer,
    nf_serial_nfe integer,
    nf_referencia_nfe integer,
    nf_gerar_duplicata integer,
    vale_caixa integer,
    contas_receber_bloqueio integer,
    cupom_imprimir_codigo integer,
    cliente_pede_cpf integer,
    verifica_cod_barra integer,
    verifica_nome_produto integer,
    vs_frete integer,
    inventario_automatico integer,
    baixar_estoque_nota_saida integer,
    etiqueta_07 integer,
    etiqueta_07_1 integer,
    etiqueta_07_2 integer,
    email_servidor_smtp character varying(100) COLLATE pg_catalog."default",
    email_porta character varying(10) COLLATE pg_catalog."default",
    email_usuario character varying(100) COLLATE pg_catalog."default",
    email_senha character varying(20) COLLATE pg_catalog."default",
    email_assunto character varying(100) COLLATE pg_catalog."default",
    email_exige_conexao integer,
    inestra integer,
    farmacia_inventario_fecha integer,
    farmacia_envio_novartis character varying(60) COLLATE pg_catalog."default",
    farmacia_resposta_novartis character varying(60) COLLATE pg_catalog."default",
    farmacia_inventario_confirma character varying(1) COLLATE pg_catalog."default",
    farmacia_inventario_data date,
    calcula_isentas_outras integer,
    usa_rentabilidade integer,
    usa_produtor_rural integer,
    ind_clie_entrada character varying(6) COLLATE pg_catalog."default",
    ind_cfop_entrada character varying(5) COLLATE pg_catalog."default",
    ind_clie_saida character varying(6) COLLATE pg_catalog."default",
    ind_cfop_saida character varying(5) COLLATE pg_catalog."default",
    ind_clie_perda character varying(6) COLLATE pg_catalog."default",
    ind_cfop_perda character varying(5) COLLATE pg_catalog."default",
    ind_mostra_composicao integer,
    checa_serial_nota_saida integer,
    cor_comercio character varying(10) COLLATE pg_catalog."default",
    logo_comercio character varying(100) COLLATE pg_catalog."default",
    cor_farmacia character varying(10) COLLATE pg_catalog."default",
    logo_farmacia character varying(100) COLLATE pg_catalog."default",
    cor_pecas character varying(10) COLLATE pg_catalog."default",
    logo_pecas character varying(100) COLLATE pg_catalog."default",
    cor_mercado character varying(10) COLLATE pg_catalog."default",
    logo_mercado character varying(100) COLLATE pg_catalog."default",
    cor_posto character varying(10) COLLATE pg_catalog."default",
    logo_posto character varying(100) COLLATE pg_catalog."default",
    ind_clie_entrada_desc character varying(30) COLLATE pg_catalog."default",
    ind_cfop_entrada_desc character varying(30) COLLATE pg_catalog."default",
    ind_clie_saida_desc character varying(30) COLLATE pg_catalog."default",
    ind_cfop_saida_desc character varying(30) COLLATE pg_catalog."default",
    ind_clie_perda_desc character varying(30) COLLATE pg_catalog."default",
    ind_cfop_perda_desc character varying(30) COLLATE pg_catalog."default",
    ind_cfop_venda_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_venda_fora character varying(6) COLLATE pg_catalog."default",
    ind_cfop_devolucao_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_devolucao_fora character varying(6) COLLATE pg_catalog."default",
    ind_cfop_servico_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_servico_fora character varying(6) COLLATE pg_catalog."default",
    cfop_venda_dentro_desc character varying(30) COLLATE pg_catalog."default",
    cfop_venda_fora_desc character varying(30) COLLATE pg_catalog."default",
    cfop_devolucao_dentro_desc character varying(30) COLLATE pg_catalog."default",
    cfop_devolucao_fora_desc character varying(30) COLLATE pg_catalog."default",
    cfop_servico_dentro_desc character varying(30) COLLATE pg_catalog."default",
    cfop_servico_fora_desc character varying(30) COLLATE pg_catalog."default",
    tipo_nf integer,
    cor_estoque_positivo character varying(10) COLLATE pg_catalog."default",
    cor_estoque_negativo character varying(10) COLLATE pg_catalog."default",
    cor_estoque_zerado character varying(10) COLLATE pg_catalog."default",
    tipo_pesquisa integer,
    ecf_concomitante integer,
    plano_pagto_forn character varying(30) COLLATE pg_catalog."default",
    hab_prevenda integer,
    codclienteav character varying(6) COLLATE pg_catalog."default",
    codclientemodelo character varying(6) COLLATE pg_catalog."default",
    codprodutomodelo character varying(6) COLLATE pg_catalog."default",
    codfornecedormodelo character varying(6) COLLATE pg_catalog."default",
    usa_caixa_diario integer,
    imprimi_orcamento_auto integer,
    fixa_forma_pgto_cliente integer,
    versaobd character varying(8) COLLATE pg_catalog."default",
    usa_caixa_padrao_usuario integer,
    texto_padrao_venda character varying(200) COLLATE pg_catalog."default",
    texto_padrao_devolucao character varying(200) COLLATE pg_catalog."default",
    texto_padrao_garantia character varying(200) COLLATE pg_catalog."default",
    avisa_estoque_minimo integer,
    atendimentoimpressao character varying(1) COLLATE pg_catalog."default",
    atendimentovias integer,
    atendimentoficha character varying(1) COLLATE pg_catalog."default",
    atendimentoimpressora character varying(100) COLLATE pg_catalog."default",
    atendimentoimpresmodelo integer,
    permite_prod_preco_zero character varying(1) COLLATE pg_catalog."default",
    acrescimo_produto numeric(15,2),
    nao_sol_senha_mov_estoque character varying(1) COLLATE pg_catalog."default",
    cobra_couver character varying(1) COLLATE pg_catalog."default",
    valor_couver numeric(15,2),
    cobra_comissao character varying(1) COLLATE pg_catalog."default",
    comissao_percentual numeric(15,2),
    qtd_mesas_mobile integer,
    produto_taxa_entrega character varying(6) COLLATE pg_catalog."default",
    tip_imp_delivery integer,
    ultimaverificaoxml timestamp without time zone,
    v_exibe_barra_atalho character varying(1) COLLATE pg_catalog."default",
    v_cor_fundo_barra_titulo character varying(10) COLLATE pg_catalog."default",
    v_cor_fonte_barra_titulo character varying(10) COLLATE pg_catalog."default",
    v_cor_fundo_barra_rodape character varying(10) COLLATE pg_catalog."default",
    v_cor_fonte_barra_rodape character varying(10) COLLATE pg_catalog."default",
    v_men_cad_fundo character varying(10) COLLATE pg_catalog."default",
    v_men_cad_fonte character varying(10) COLLATE pg_catalog."default",
    v_men_est_fundo character varying(10) COLLATE pg_catalog."default",
    v_men_est_fonte character varying(10) COLLATE pg_catalog."default",
    v_men_mov_fundo character varying(10) COLLATE pg_catalog."default",
    v_men_mov_fonte character varying(10) COLLATE pg_catalog."default",
    v_men_fin_fundo character varying(10) COLLATE pg_catalog."default",
    v_men_fin_fonte character varying(10) COLLATE pg_catalog."default",
    v_men_rel_fundo character varying(10) COLLATE pg_catalog."default",
    v_men_rel_fonte character varying(10) COLLATE pg_catalog."default",
    v_men_con_fundo character varying(10) COLLATE pg_catalog."default",
    v_men_con_fonte character varying(10) COLLATE pg_catalog."default",
    v_imagem_fundo character varying(255) COLLATE pg_catalog."default",
    v_ata_bot_cor_fundo character varying(10) COLLATE pg_catalog."default",
    v_ata_bot_cor_fonte character varying(10) COLLATE pg_catalog."default",
    v_ata_exibe_imagem character varying(1) COLLATE pg_catalog."default",
    v_ata_exibe_resumo_caixa character varying(1) COLLATE pg_catalog."default",
    v_ata_caixa_cor_fundo character varying(10) COLLATE pg_catalog."default",
    v_ata_caixa_cor_fonte character varying(10) COLLATE pg_catalog."default",
    utiliza_leitor_codigo_barra character varying(1) COLLATE pg_catalog."default",
    email_tls character varying(1) COLLATE pg_catalog."default",
    email_ssl character varying(1) COLLATE pg_catalog."default",
    nao_exibe_fech_atend character varying(1) COLLATE pg_catalog."default",
    nao_informa_cli_atend character varying(1) COLLATE pg_catalog."default",
    nao_utiliza_extra character varying(1) COLLATE pg_catalog."default",
    ativa_cad_produto_simples character varying(1) COLLATE pg_catalog."default",
    ativa_campo_pedido_cliente character varying(1) COLLATE pg_catalog."default",
    cep_busca character varying(1) COLLATE pg_catalog."default",
    cep_servidor integer,
    cep_chave character varying(100) COLLATE pg_catalog."default",
    ind_cfop_dev_compra_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_dev_compra_fora character varying(6) COLLATE pg_catalog."default",
    ind_cfop_garantia_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_garantia_fora character varying(6) COLLATE pg_catalog."default",
    ind_cfop_dev_compra_dentro_desc character varying(6) COLLATE pg_catalog."default",
    ind_cfop_dev_compra_fora_desc character varying(6) COLLATE pg_catalog."default",
    ind_cfop_garantia_dentro_desc character varying(6) COLLATE pg_catalog."default",
    ind_cfop_garantia_fora_desc character varying(6) COLLATE pg_catalog."default",
    iniciar_nova_venda character varying(1) COLLATE pg_catalog."default",
    novo_ramo_atividade character varying(1) COLLATE pg_catalog."default",
    validar_caixa_atendimento character varying(1) COLLATE pg_catalog."default",
    atualiza_estoque_pdv character varying(1) COLLATE pg_catalog."default",
    baixa_estoque_venda_simples character varying(1) COLLATE pg_catalog."default",
    dias_val_cupom_credito integer,
    dias_validade_cupom_credito integer,
    vendas_simples_nao_mov_caixa character varying(1) COLLATE pg_catalog."default",
    taxa_garcom_tipo_receb character varying(1) COLLATE pg_catalog."default",
    couver_tipo_receb character varying(1) COLLATE pg_catalog."default",
    couver_produto character varying(6) COLLATE pg_catalog."default",
    taxa_garcom_produto character varying(6) COLLATE pg_catalog."default",
    tip_imp_comanda integer,
    nao_solicita_excluir_item_nfe character varying(1) COLLATE pg_catalog."default",
    caixa_automatico_gerencial character varying(1) COLLATE pg_catalog."default",
    permitir_senhas_obvias character varying(1) COLLATE pg_catalog."default",
    b2b_xml_produto character varying(1) COLLATE pg_catalog."default",
    tipo_etiqueta_balanca character varying(1) COLLATE pg_catalog."default",
    pode_alt_vlr_unit_atend character varying(1) COLLATE pg_catalog."default",
    path_remessa character varying(100) COLLATE pg_catalog."default",
    path_retorno character varying(100) COLLATE pg_catalog."default",
    path_gerarpdf character varying(100) COLLATE pg_catalog."default",
    assunto_email character varying(100) COLLATE pg_catalog."default",
    multiloja character varying(1) COLLATE pg_catalog."default",
    "DATABASE" character varying(50) COLLATE pg_catalog."default",
    port character varying(10) COLLATE pg_catalog."default",
    server character varying(150) COLLATE pg_catalog."default",
    username character varying(50) COLLATE pg_catalog."default",
    "PASSWORD" character varying(50) COLLATE pg_catalog."default",
    atb character varying(30) COLLATE pg_catalog."default",
    multiloja_permitecadastro character varying(1) COLLATE pg_catalog."default",
    pdv_exibe_estoque_tela_venda character varying(1) COLLATE pg_catalog."default",
    libera_canc_pdv_gerencial character varying(1) COLLATE pg_catalog."default",
    mantem_atendimento_aberto character varying(1) COLLATE pg_catalog."default",
    tipomovimentolote character varying(4) COLLATE pg_catalog."default",
    exibe_painel_corporativo character varying(1) COLLATE pg_catalog."default",
    painel_lote_vencendo character varying(1) COLLATE pg_catalog."default",
    painel_lote_vencendo_dias integer,
    informar_cliente_nfce_apartir numeric(15,3),
    reimprimir_comanda_consumacao character varying(1) COLLATE pg_catalog."default",
    tip_imp_reimp_comanda integer,
    anexa_pdf_exportar_xml character varying(1) COLLATE pg_catalog."default",
    vendas_dinheiro_simples character varying(1) COLLATE pg_catalog."default",
    permite_venda_sem_estoque_pdv character varying(1) COLLATE pg_catalog."default",
    vias_mrt integer,
    vias_imp_delivery integer,
    codigo_produto_automatico character varying(1) COLLATE pg_catalog."default",
    pdv_dec_acr_alteratotalitem character varying(1) COLLATE pg_catalog."default",
    renumerado character varying(1) COLLATE pg_catalog."default",
    usar_servico_os character varying(1) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.configuracoes
    OWNER to postgres;

CREATE TABLE commerce.contaspagar
(
    codigo character varying(6) COLLATE pg_catalog."default",
    data_emissao date,
    data_vencimento date,
    data_pagamento date,
    codconta character varying(10) COLLATE pg_catalog."default",
    codfornecedor character varying(10) COLLATE pg_catalog."default",
    valor numeric(15,3),
    valorpago numeric(15,2),
    liquido numeric(15,2),
    desconto numeric(15,2),
    acrescimo numeric(15,2),
    documento character varying(40) COLLATE pg_catalog."default",
    notafiscal character varying(30) COLLATE pg_catalog."default",
    historico character varying(100) COLLATE pg_catalog."default",
    c character varying(10) COLLATE pg_catalog."default",
    e character varying(10) COLLATE pg_catalog."default",
    filtro integer,
    especie character varying(50) COLLATE pg_catalog."default",
    situacao integer,
    codnota character varying(20) COLLATE pg_catalog."default",
    movimento integer,
    codcaixa character varying(20) COLLATE pg_catalog."default",
    idonline integer,
    atb character varying(30) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.contaspagar
    OWNER to postgres;

CREATE TABLE commerce.contasreceber
(
    codigo character varying(12) COLLATE pg_catalog."default",
    codvenda character varying(10) COLLATE pg_catalog."default",
    codvendedor character varying(6) COLLATE pg_catalog."default",
    codcaixa character varying(6) COLLATE pg_catalog."default",
    codcliente character varying(6) COLLATE pg_catalog."default",
    data_emissao date,
    data_vencimento date,
    data_pagamento date,
    valor_original numeric(15,3),
    valor_pago numeric(15,3),
    valor_juros numeric(15,3),
    valor_atual numeric(15,3),
    valor_desconto numeric(15,2),
    documento character varying(20) COLLATE pg_catalog."default",
    tipo character varying(20) COLLATE pg_catalog."default",
    situacao integer,
    filtro integer,
    nossonumero character varying(30) COLLATE pg_catalog."default",
    codregiao character varying(6) COLLATE pg_catalog."default",
    codcedente character varying(6) COLLATE pg_catalog."default",
    p5 numeric(15,2),
    p3 numeric(15,2),
    valor_venda numeric(15,2),
    cod_venda_original character varying(10) COLLATE pg_catalog."default",
    valor_atual_anterior numeric(15,2),
    email_enviado integer,
    historico character varying(100) COLLATE pg_catalog."default",
    instrucao character varying(100) COLLATE pg_catalog."default",
    dirboleto character varying(100) COLLATE pg_catalog."default",
    remessa character varying(1) COLLATE pg_catalog."default",
    bol_impresso character varying(1) COLLATE pg_catalog."default",
    baixa_automatica character varying(1) COLLATE pg_catalog."default",
    cod_conta character varying(6) COLLATE pg_catalog."default",
    retirado_por character varying(50) COLLATE pg_catalog."default",
    idonline integer,
    atb character varying(30) COLLATE pg_catalog."default",
    duplicata character varying(1) COLLATE pg_catalog."default",
    renumerado character varying(1) COLLATE pg_catalog."default",
    numero_cupom character varying(12) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.contasreceber
    OWNER to postgres;

CREATE TABLE commerce.csosn
(
    codigo character varying(3) COLLATE pg_catalog."default",
    descricao character varying(200) COLLATE pg_catalog."default",
    st character varying(1) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.csosn
    OWNER to postgres;

CREATE TABLE commerce.cst_cofins
(
    id integer,
    cst character varying(3) COLLATE pg_catalog."default",
    descricao character varying(150) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.cst_cofins
    OWNER to postgres;

CREATE TABLE commerce.cst_ipi
(
    id integer,
    cst character varying(3) COLLATE pg_catalog."default",
    descricao character varying(150) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.cst_ipi
    OWNER to postgres;

CREATE TABLE commerce.cst_pis
(
    id integer,
    cst character varying(3) COLLATE pg_catalog."default",
    descricao character varying(150) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.cst_pis
    OWNER to postgres;

CREATE TABLE commerce.delivery
(
    id integer,
    codigo integer,
    cliente character varying(6) COLLATE pg_catalog."default",
    status character varying(1) COLLATE pg_catalog."default",
    id_entregador integer,
    tipo_entrega character varying(1) COLLATE pg_catalog."default",
    id_taxa integer,
    data_emissao date,
    hora_emissao character varying(8) COLLATE pg_catalog."default",
    data_entrega date,
    hora_entrega character varying(8) COLLATE pg_catalog."default",
    valor_total numeric(15,2),
    valor_taxa_entrega numeric(15,2),
    valor_liquido numeric(15,2),
    levar_maq_cartao character varying(1) COLLATE pg_catalog."default",
    recebido character varying(1) COLLATE pg_catalog."default",
    impresso character varying(1) COLLATE pg_catalog."default",
    troco numeric(15,2)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.delivery
    OWNER to postgres;

CREATE TABLE commerce.delivery_entregador
(
    id integer,
    nome character varying(40) COLLATE pg_catalog."default",
    celular character varying(16) COLLATE pg_catalog."default",
    placa character varying(8) COLLATE pg_catalog."default",
    codigo character varying(50) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.delivery_entregador
    OWNER to postgres;

CREATE TABLE commerce.delivery_item
(
    id integer,
    id_delivery integer,
    codproduto character varying(10) COLLATE pg_catalog."default",
    quantidade numeric(15,3),
    unitario numeric(15,3),
    total numeric(15,2),
    complemento character varying(50) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.delivery_item
    OWNER to postgres;

CREATE TABLE commerce.delivery_item_sub
(
    id_item integer,
    codigo integer,
    codpro character varying(10) COLLATE pg_catalog."default",
    qtde numeric(15,3)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.delivery_item_sub
    OWNER to postgres;

CREATE TABLE commerce.empresa
(
    codigo character varying(6) COLLATE pg_catalog."default",
    filial character varying(50) COLLATE pg_catalog."default",
    notafiscal integer,
    endereco character varying(60) COLLATE pg_catalog."default",
    cidade character varying(30) COLLATE pg_catalog."default",
    uf character varying(2) COLLATE pg_catalog."default",
    cep character varying(9) COLLATE pg_catalog."default",
    telefone character varying(25) COLLATE pg_catalog."default",
    cnpj character varying(25) COLLATE pg_catalog."default",
    ie character varying(14) COLLATE pg_catalog."default",
    seqnf integer,
    fax character varying(25) COLLATE pg_catalog."default",
    obs1 character varying(100) COLLATE pg_catalog."default",
    obs2 character varying(100) COLLATE pg_catalog."default",
    contribuinte_ipi character varying(1) COLLATE pg_catalog."default",
    substituto_tributario character varying(1) COLLATE pg_catalog."default",
    empresa_estadual character varying(1) COLLATE pg_catalog."default",
    optante_simples character varying(1) COLLATE pg_catalog."default",
    optante_super_simples character varying(1) COLLATE pg_catalog."default",
    ecf character varying(1) COLLATE pg_catalog."default",
    tipo integer,
    ipi numeric(5,2),
    iss numeric(5,2),
    numero character varying(10) COLLATE pg_catalog."default",
    responsavel character varying(50) COLLATE pg_catalog."default",
    complemento character varying(50) COLLATE pg_catalog."default",
    bairro character varying(30) COLLATE pg_catalog."default",
    farmacia_resp_tecnico character varying(50) COLLATE pg_catalog."default",
    farmacia_crf character varying(10) COLLATE pg_catalog."default",
    farmacia_cpf character varying(14) COLLATE pg_catalog."default",
    farmcia_data date,
    farmacia_uf character varying(2) COLLATE pg_catalog."default",
    farmacia_senha character varying(10) COLLATE pg_catalog."default",
    farmacia_email character varying(10) COLLATE pg_catalog."default",
    farmacia_login character varying(20) COLLATE pg_catalog."default",
    farmacia_envio character varying(100) COLLATE pg_catalog."default",
    conhecimento integer,
    industria character varying(1) COLLATE pg_catalog."default",
    farmacia_numerolicenca character varying(20) COLLATE pg_catalog."default",
    cod_municipio_ibge character varying(10) COLLATE pg_catalog."default",
    ibge character varying(10) COLLATE pg_catalog."default",
    pis numeric(15,2),
    cofins numeric(15,2),
    email character varying(60) COLLATE pg_catalog."default",
    atividade character varying(40) COLLATE pg_catalog."default",
    contador_cod_municipio_ibge character varying(10) COLLATE pg_catalog."default",
    contador_nome character varying(60) COLLATE pg_catalog."default",
    contador_cpf character varying(20) COLLATE pg_catalog."default",
    contador_crc character varying(15) COLLATE pg_catalog."default",
    contador_cnpj character varying(25) COLLATE pg_catalog."default",
    contador_cep character varying(10) COLLATE pg_catalog."default",
    contador_endereco character varying(60) COLLATE pg_catalog."default",
    contador_numero character varying(5) COLLATE pg_catalog."default",
    contador_complemento character varying(60) COLLATE pg_catalog."default",
    contador_bairro character varying(60) COLLATE pg_catalog."default",
    contador_fone character varying(15) COLLATE pg_catalog."default",
    contador_fax character varying(15) COLLATE pg_catalog."default",
    contador_email character varying(60) COLLATE pg_catalog."default",
    insc_municipal character varying(20) COLLATE pg_catalog."default",
    data_abertura date,
    cnae character varying(10) COLLATE pg_catalog."default",
    crt character varying(1) COLLATE pg_catalog."default",
    contador_cidade character varying(30) COLLATE pg_catalog."default",
    contador_cod_municipio character varying(30) COLLATE pg_catalog."default",
    contador_uf character varying(2) COLLATE pg_catalog."default",
    permite_credito integer,
    fantasia character varying(60) COLLATE pg_catalog."default",
    dfixas double precision,
    tipocalculo integer,
    serie_cte character varying(6) COLLATE pg_catalog."default",
    seq_cte character varying(6) COLLATE pg_catalog."default",
    cod_pais character varying(20) COLLATE pg_catalog."default",
    pais character varying(50) COLLATE pg_catalog."default",
    homepage character varying(100) COLLATE pg_catalog."default",
    aidf character varying(20) COLLATE pg_catalog."default",
    ninicial character varying(20) COLLATE pg_catalog."default",
    nfinal character varying(20) COLLATE pg_catalog."default",
    n_nf_d character varying(20) COLLATE pg_catalog."default",
    validade character varying(20) COLLATE pg_catalog."default",
    rntrc character varying(45) COLLATE pg_catalog."default",
    serie_mdfe integer,
    numero_mdfe integer,
    mail_server character varying(120) COLLATE pg_catalog."default",
    mail_porta character varying(15) COLLATE pg_catalog."default",
    mail_username character varying(120) COLLATE pg_catalog."default",
    mail_password character varying(120) COLLATE pg_catalog."default",
    mail_cabecalho character varying(120) COLLATE pg_catalog."default",
    mail_assunto character varying(120) COLLATE pg_catalog."default",
    mail_ssl character varying(1) COLLATE pg_catalog."default",
    mail_tls character varying(1) COLLATE pg_catalog."default",
    reptec_cnpj character varying(14) COLLATE pg_catalog."default",
    reptec_contato character varying(60) COLLATE pg_catalog."default",
    reptec_email character varying(60) COLLATE pg_catalog."default",
    reptec_fone character varying(14) COLLATE pg_catalog."default",
    reptec_idcsrt integer,
    reptec_csrt character varying(28) COLLATE pg_catalog."default",
    percentual_credito_icms numeric(15,2),
    idonline integer,
    comentarios character varying(50) COLLATE pg_catalog."default",
    datahora_inicial date,
    datahora_final date,
    data_inventario date,
    estoque numeric(15,2),
    valor numeric(15,2),
    cpf character varying(20) COLLATE pg_catalog."default",
    rg character varying(20) COLLATE pg_catalog."default",
    dia_vencimento_chave character varying(2) COLLATE pg_catalog."default",
    email_financeiro character varying(200) COLLATE pg_catalog."default",
    atb character varying(30) COLLATE pg_catalog."default",
    serie_nfe integer,
    seq_nfe integer,
    logo character varying(500) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.empresa
    OWNER to postgres;

CREATE TABLE commerce.estoque
(
    tipo character varying(1) COLLATE pg_catalog."default",
    codproduto character varying(6) COLLATE pg_catalog."default",
    data date,
    quantidade numeric(15,3),
    valor numeric(15,2)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.estoque
    OWNER to postgres;

CREATE TABLE commerce.funcionarios
(
    codigo character varying(6) COLLATE pg_catalog."default",
    nome character varying(80) COLLATE pg_catalog."default",
    endereco character varying(80) COLLATE pg_catalog."default",
    bairro character varying(30) COLLATE pg_catalog."default",
    cidade character varying(40) COLLATE pg_catalog."default",
    uf character varying(2) COLLATE pg_catalog."default",
    cep character varying(10) COLLATE pg_catalog."default",
    telefone character varying(20) COLLATE pg_catalog."default",
    celular character varying(20) COLLATE pg_catalog."default",
    email character varying(50) COLLATE pg_catalog."default",
    cpf character varying(15) COLLATE pg_catalog."default",
    rg character varying(25) COLLATE pg_catalog."default",
    ctps character varying(25) COLLATE pg_catalog."default",
    funcao character varying(30) COLLATE pg_catalog."default",
    data_admissao date,
    data_demissao date,
    situacao integer,
    salario numeric(15,2),
    comissao numeric(15,2),
    obs1 character varying(80) COLLATE pg_catalog."default",
    obs2 character varying(80) COLLATE pg_catalog."default",
    obs3 character varying(80) COLLATE pg_catalog."default",
    nascimento date,
    f_caixa integer,
    f_vendedor integer,
    f_tecnico integer,
    numero character varying(10) COLLATE pg_catalog."default",
    senha character varying(200) COLLATE pg_catalog."default",
    ativa character varying(10) COLLATE pg_catalog."default",
    aprova_desconto character varying(1) COLLATE pg_catalog."default",
    abrir_caixa character varying(1) COLLATE pg_catalog."default",
    fecha_caixa character varying(1) COLLATE pg_catalog."default",
    configuracoes character varying(1) COLLATE pg_catalog."default",
    cancelar_venda character varying(1) COLLATE pg_catalog."default",
    cancelar_item character varying(1) COLLATE pg_catalog."default",
    atb character varying(30) COLLATE pg_catalog."default",
    idonline integer,
    usuario character varying(80) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.funcionarios
    OWNER to postgres;

CREATE TABLE commerce.icms_partilha
(
    codigo integer,
    uf character(2) COLLATE pg_catalog."default",
    descr_uf character varying(50) COLLATE pg_catalog."default",
    ibge character(2) COLLATE pg_catalog."default",
    aliq numeric(8,2),
    aliqreduzbase numeric(15,2),
    aliqimportado numeric(8,2),
    ie_subtrib character varying(18) COLLATE pg_catalog."default",
    mvast numeric(8,2),
    aliqst numeric(8,2),
    fcp numeric(8,2)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.icms_partilha
    OWNER to postgres;

CREATE TABLE commerce.icms_uf
(
    uf character varying(2) COLLATE pg_catalog."default",
    icms numeric(18,2)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.icms_uf
    OWNER to postgres;

CREATE TABLE commerce.motorista
(
    id integer,
    nome character varying(40) COLLATE pg_catalog."default",
    celular character varying(16) COLLATE pg_catalog."default",
    cpf character varying(14) COLLATE pg_catalog."default",
    rg character varying(14) COLLATE pg_catalog."default",
    cnh character varying(20) COLLATE pg_catalog."default",
    placa character varying(8) COLLATE pg_catalog."default",
    ufplaca character varying(2) COLLATE pg_catalog."default",
    antt character varying(20) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.motorista
    OWNER to postgres;

CREATE TABLE commerce.ncm
(
    ncm character varying(10) COLLATE pg_catalog."default",
    descricao character varying(100) COLLATE pg_catalog."default",
    ex integer,
    al_nacionalfederal numeric(15,2),
    al_importadosfederal numeric(15,2),
    al_estadual numeric(15,2),
    al_municipal numeric(15,2),
    vigenciainicio timestamp without time zone,
    vigenciafim timestamp without time zone,
    versao character varying(10) COLLATE pg_catalog."default",
    unidade character varying(6) COLLATE pg_catalog."default",
    aliqnacional numeric(15,2),
    unidexp character varying(6) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.ncm
    OWNER to postgres;

CREATE TABLE commerce.nfcompra
(
    codigo character varying(10) COLLATE pg_catalog."default",
    numero character varying(10) COLLATE pg_catalog."default",
    codempresa character varying(10) COLLATE pg_catalog."default",
    codfornecedor character varying(10) COLLATE pg_catalog."default",
    modelo character varying(10) COLLATE pg_catalog."default",
    especie character varying(10) COLLATE pg_catalog."default",
    serie character varying(10) COLLATE pg_catalog."default",
    cfop character varying(10) COLLATE pg_catalog."default",
    data_emissao date,
    data_lancamento date,
    conf_baseicms numeric(15,3),
    conf_valoricms numeric(15,3),
    conf_basesub numeric(15,3),
    conf_valorsub numeric(15,3),
    conf_frete numeric(15,3),
    conf_seguro numeric(15,3),
    conf_outras numeric(15,3),
    conf_ipi numeric(15,3),
    conf_desconto numeric(15,3),
    conf_totalprodutos numeric(15,3),
    conf_totalnota numeric(15,3),
    conf_icmsretido numeric(15,3),
    conf_icmsredito_perc numeric(15,3),
    base_icms numeric(15,3),
    valor_icms numeric(15,3),
    base_sub numeric(15,3),
    valor_sub numeric(15,3),
    frete numeric(15,3),
    seguro numeric(15,3),
    outras numeric(15,3),
    ipi numeric(15,3),
    desconto numeric(15,3),
    total_produtos numeric(15,3),
    total_nota numeric(15,3),
    transp_nome character varying(60) COLLATE pg_catalog."default",
    transp_frete character varying(20) COLLATE pg_catalog."default",
    transp_placa character varying(10) COLLATE pg_catalog."default",
    transp_placauf character varying(2) COLLATE pg_catalog."default",
    transp_ie character varying(25) COLLATE pg_catalog."default",
    transp_cnpj character varying(25) COLLATE pg_catalog."default",
    transp_endereco character varying(40) COLLATE pg_catalog."default",
    transp_cidade character varying(30) COLLATE pg_catalog."default",
    transp_uf character varying(2) COLLATE pg_catalog."default",
    transp_qtde numeric(15,3),
    transp_especie character varying(20) COLLATE pg_catalog."default",
    transp_marca character varying(20) COLLATE pg_catalog."default",
    transp_numero character varying(20) COLLATE pg_catalog."default",
    transp_pesobruto numeric(15,3),
    transp_pesoliquido numeric(15,3),
    obs1 character varying(60) COLLATE pg_catalog."default",
    obs2 character varying(60) COLLATE pg_catalog."default",
    obs3 character varying(60) COLLATE pg_catalog."default",
    obs4 character varying(60) COLLATE pg_catalog."default",
    obs5 character varying(60) COLLATE pg_catalog."default",
    obs6 character varying(60) COLLATE pg_catalog."default",
    obs7 character varying(60) COLLATE pg_catalog."default",
    situacao integer,
    itens integer,
    tipo character varying(30) COLLATE pg_catalog."default",
    nota_fiscal character varying(6) COLLATE pg_catalog."default",
    valor_mercadorias numeric(15,2),
    codremetente character varying(6) COLLATE pg_catalog."default",
    icms_isento numeric(15,2),
    icms_outras numeric(15,2),
    desconto_incidente integer,
    item_frete_valor numeric(15,2),
    item_frete_base numeric(15,2),
    item_frete_aliquota numeric(15,2),
    item_frete_icms numeric(15,2),
    item_seguro_valor numeric(15,2),
    item_seguro_base numeric(15,2),
    item_seguro_aliquota numeric(15,2),
    item_seguro_icms numeric(15,2),
    item_pis_valor numeric(15,2),
    item_pis_base numeric(15,2),
    item_pis_aliquota numeric(15,2),
    item_pis_icms numeric(15,2),
    item_complemento_valor numeric(15,2),
    item_complemento_base numeric(15,2),
    item_complemento_aliquota numeric(15,2),
    item_complemento_icms numeric(15,2),
    item_servico_valor numeric(15,2),
    item_servico_base numeric(15,2),
    item_servico_aliquota numeric(15,2),
    item_servico_icms numeric(15,2),
    item_outras_valor numeric(15,2),
    item_outras_base numeric(15,2),
    item_outras_aliquota numeric(15,2),
    item_outras_icms numeric(15,2),
    item_especial_total numeric(15,2),
    item_especial_valor numeric(15,2),
    baseicms_produtos integer,
    conf_item_especial numeric(15,3),
    obs8 character varying(60) COLLATE pg_catalog."default",
    credito_icms numeric(15,3),
    pis numeric(15,3),
    cofins numeric(15,3),
    operacao character varying(1) COLLATE pg_catalog."default",
    integracao integer,
    aproveita_credito_icms character varying(1) COLLATE pg_catalog."default",
    chave character varying(50) COLLATE pg_catalog."default",
    atb character varying(30) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.nfcompra
    OWNER to postgres;

CREATE TABLE commerce.nfcompraitens
(
    codigo character varying(10) COLLATE pg_catalog."default",
    item character varying(3) COLLATE pg_catalog."default",
    codnota character varying(10) COLLATE pg_catalog."default",
    codproduto character varying(13) COLLATE pg_catalog."default",
    codlancamento character varying(20) COLLATE pg_catalog."default",
    un_compra character varying(5) COLLATE pg_catalog."default",
    un_fracao character varying(5) COLLATE pg_catalog."default",
    fracao numeric(15,3),
    cst character varying(5) COLLATE pg_catalog."default",
    cfop character varying(6) COLLATE pg_catalog."default",
    qtde numeric(15,3),
    unitario numeric(15,3),
    subtotal numeric(15,2),
    desconto numeric(15,2),
    total numeric(15,2),
    desconto_p numeric(15,2),
    icms_retido character varying(1) COLLATE pg_catalog."default",
    icms_aliquota numeric(15,2),
    icms_reducao numeric(15,2),
    icms_base numeric(15,2),
    icms_valor numeric(15,2),
    icms_valorretido numeric(15,2),
    icms_isento numeric(15,2),
    icms_naotributado numeric(15,2),
    sub_margem numeric(15,2),
    sub_base numeric(15,2),
    sub_valor numeric(15,2),
    ipi_tipo character varying(25) COLLATE pg_catalog."default",
    ipi_aliquota numeric(15,2),
    ipi_base numeric(15,2),
    ipi_valor numeric(15,2),
    data date,
    tipo integer,
    notafiscal character varying(10) COLLATE pg_catalog."default",
    frete numeric(15,2),
    outras numeric(15,2),
    seguro numeric(15,2),
    classificacao_fiscal character varying(25) COLLATE pg_catalog."default",
    sub_produtos numeric(15,3),
    codfornecedor character varying(10) COLLATE pg_catalog."default",
    item_especial_valor numeric(15,3),
    icms_outras numeric(15,2),
    altera_item integer,
    credito_icms numeric(15,3),
    credito_icms_base numeric(15,3),
    pis_base numeric(15,3),
    pis numeric(15,3),
    cofins_base numeric(15,3),
    cofins numeric(15,3),
    lote_fabricacao character varying(15) COLLATE pg_catalog."default",
    lote_validade date,
    lote_fabricacao_data date,
    produto character varying(100) COLLATE pg_catalog."default",
    pmargem double precision,
    precovenda double precision,
    precocusto double precision,
    fator numeric(18,3),
    tipofator character varying(1) COLLATE pg_catalog."default",
    csosn character varying(10) COLLATE pg_catalog."default",
    cfop_cad character varying(4) COLLATE pg_catalog."default",
    vbcstret numeric(15,3),
    pst numeric(15,3),
    vicmsstret numeric(15,3),
    predbcefet numeric(15,3),
    vbcefet numeric(15,3),
    picmsefet numeric(15,3),
    vicmsefet numeric(15,3),
    qtdvendido numeric(15,3),
    id_conversor_unidade integer,
    descricao_fator character varying(50) COLLATE pg_catalog."default",
    id_conversao_unidade integer,
    atb character varying(30) COLLATE pg_catalog."default",
    codbarra character varying(14) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.nfcompraitens
    OWNER to postgres;

CREATE TABLE commerce.nfe
(
    codigo character varying(6) COLLATE pg_catalog."default",
    numero character varying(6) COLLATE pg_catalog."default",
    cfop character varying(5) COLLATE pg_catalog."default",
    data date,
    codcliente character varying(6) COLLATE pg_catalog."default",
    valor_produtos numeric(15,2),
    total_nota numeric(15,2),
    base_calculo numeric(15,2),
    valor_icms numeric(15,2),
    base_sub numeric(15,2),
    icms_sub numeric(15,2),
    frete numeric(15,2),
    seguro numeric(15,2),
    outras_despesas numeric(15,2),
    valor_total_ipi numeric(15,2),
    itens integer,
    desconto numeric(15,2),
    codtransportador character varying(6) COLLATE pg_catalog."default",
    frete_conta integer,
    placa character varying(10) COLLATE pg_catalog."default",
    placa_uf character varying(2) COLLATE pg_catalog."default",
    vol_qtde numeric(15,2),
    vol_especie character varying(20) COLLATE pg_catalog."default",
    vol_marca character varying(20) COLLATE pg_catalog."default",
    vol_numero character varying(20) COLLATE pg_catalog."default",
    peso_liquido numeric(15,3),
    peso_bruto numeric(15,3),
    situacao integer,
    motivo character varying(40) COLLATE pg_catalog."default",
    faturamento_data1 date,
    faturamento_data2 date,
    faturamento_data3 date,
    faturamento_data4 date,
    faturamento_numero1 character varying(15) COLLATE pg_catalog."default",
    faturamento_numero2 character varying(15) COLLATE pg_catalog."default",
    faturamento_numero3 character varying(15) COLLATE pg_catalog."default",
    faturamento_numero4 character varying(15) COLLATE pg_catalog."default",
    faturamento_valor1 numeric(15,2),
    faturamento_valor2 numeric(15,2),
    faturamento_valor3 numeric(15,2),
    faturamento_valor4 numeric(15,2),
    codfilial character varying(6) COLLATE pg_catalog."default",
    obs1 character varying(80) COLLATE pg_catalog."default",
    obs2 character varying(80) COLLATE pg_catalog."default",
    obs3 character varying(80) COLLATE pg_catalog."default",
    inf1 character varying(80) COLLATE pg_catalog."default",
    inf2 character varying(80) COLLATE pg_catalog."default",
    inf3 character varying(80) COLLATE pg_catalog."default",
    inf4 character varying(80) COLLATE pg_catalog."default",
    inf5 character varying(80) COLLATE pg_catalog."default",
    data_saida date,
    hora character varying(20) COLLATE pg_catalog."default",
    situacao_a character varying(1) COLLATE pg_catalog."default",
    modelo_nf character varying(2) COLLATE pg_catalog."default",
    serie_nf character varying(3) COLLATE pg_catalog."default",
    valor_isento_icms numeric(15,2),
    aliquota_icms numeric(15,2),
    sit character varying(1) COLLATE pg_catalog."default",
    codlancamento character varying(10) COLLATE pg_catalog."default",
    movimento character varying(1) COLLATE pg_catalog."default",
    baixa_estoque character varying(1) COLLATE pg_catalog."default",
    tipo character varying(1) COLLATE pg_catalog."default",
    os_cod1 character varying(10) COLLATE pg_catalog."default",
    os_cod2 character varying(10) COLLATE pg_catalog."default",
    os_cod3 character varying(10) COLLATE pg_catalog."default",
    os_cod4 character varying(10) COLLATE pg_catalog."default",
    os_cod5 character varying(10) COLLATE pg_catalog."default",
    os_cod6 character varying(10) COLLATE pg_catalog."default",
    os_serv1 character varying(60) COLLATE pg_catalog."default",
    os_serv2 character varying(60) COLLATE pg_catalog."default",
    os_serv3 character varying(60) COLLATE pg_catalog."default",
    os_serv4 character varying(60) COLLATE pg_catalog."default",
    os_serv5 character varying(60) COLLATE pg_catalog."default",
    os_serv6 character varying(60) COLLATE pg_catalog."default",
    os_comp1 character varying(60) COLLATE pg_catalog."default",
    os_comp2 character varying(60) COLLATE pg_catalog."default",
    os_comp3 character varying(60) COLLATE pg_catalog."default",
    os_comp4 character varying(60) COLLATE pg_catalog."default",
    os_comp5 character varying(60) COLLATE pg_catalog."default",
    os_comp6 character varying(60) COLLATE pg_catalog."default",
    os_qtde1 numeric(15,2),
    os_qtde2 numeric(15,2),
    os_qtde3 numeric(15,2),
    os_qtde4 numeric(15,2),
    os_qtde5 numeric(15,2),
    os_qtde6 numeric(15,2),
    os_unit1 numeric(15,2),
    os_unit2 numeric(15,2),
    os_unit3 numeric(15,2),
    os_unit4 numeric(15,2),
    os_unit5 numeric(15,2),
    os_unit6 numeric(15,2),
    os_total1 numeric(15,2),
    os_total2 numeric(15,2),
    os_total3 numeric(15,2),
    os_total4 numeric(15,2),
    os_total5 numeric(15,2),
    os_total6 numeric(15,2),
    os_iss numeric(15,2),
    os_total_geral numeric(15,2),
    os_total_iss numeric(15,2),
    desconto_item numeric(15,2),
    obs4 character varying(80) COLLATE pg_catalog."default",
    obs5 character varying(80) COLLATE pg_catalog."default",
    codigomodelo character varying(6) COLLATE pg_catalog."default",
    custo_venda character varying(1) COLLATE pg_catalog."default",
    fat_forma_pgto character varying(50) COLLATE pg_catalog."default",
    fat_condi_pgto character varying(50) COLLATE pg_catalog."default",
    fat_qtde_prestacao integer,
    fat_gerar_receber integer,
    fat_gerar_duplicata integer,
    pis numeric(15,2),
    cofins numeric(15,2),
    fat_tipo integer,
    codvendedor character varying(6) COLLATE pg_catalog."default",
    operacao character varying(1) COLLATE pg_catalog."default",
    integracao integer,
    nfe_situacao integer,
    nfe_xml character varying(240) COLLATE pg_catalog."default",
    varejo_atacado character varying(1) COLLATE pg_catalog."default",
    industrializacao character varying(1) COLLATE pg_catalog."default",
    perda character varying(1) COLLATE pg_catalog."default",
    faturamento_data5 date,
    faturamento_data6 date,
    faturamento_numero5 character varying(15) COLLATE pg_catalog."default",
    faturamento_numero6 character varying(15) COLLATE pg_catalog."default",
    faturamento_valor5 numeric(15,2),
    faturamento_valor6 numeric(15,2),
    faturamento_data7 date,
    faturamento_data8 date,
    faturamento_data9 date,
    faturamento_numero7 character varying(15) COLLATE pg_catalog."default",
    faturamento_numero8 character varying(15) COLLATE pg_catalog."default",
    faturamento_numero9 character varying(15) COLLATE pg_catalog."default",
    faturamento_valor7 numeric(15,2),
    faturamento_valor8 numeric(15,2),
    faturamento_valor9 numeric(15,2),
    chave character varying(50) COLLATE pg_catalog."default",
    natureza character varying(20) COLLATE pg_catalog."default",
    tipo_finalidade integer,
    seqevento integer,
    ret_valor_pis numeric(15,2),
    ret_valor_cofins numeric(15,2),
    ret_valor_csll numeric(15,2),
    ret_valor_bc_irrf numeric(15,2),
    ret_valor_irrf numeric(15,2),
    ret_valor_bc_prev_soc numeric(15,2),
    ret_valor_prev_soc numeric(15,2),
    presenca_comprador integer,
    vfcp numeric(15,2),
    vfcpst numeric(15,2),
    vfcpstret numeric(15,2),
    vipidevol numeric(15,2),
    atb character varying(30) COLLATE pg_catalog."default",
    origem_venda character varying(1) COLLATE pg_catalog."default",
    cod_venda character varying(6) COLLATE pg_catalog."default",
    cod_prevenda character varying(6) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.nfe
    OWNER to postgres;

CREATE TABLE commerce.nfe_manifesto
(
    chavenfe character varying(44) COLLATE pg_catalog."default",
    data date,
    hora character varying(8) COLLATE pg_catalog."default",
    evento character varying(30) COLLATE pg_catalog."default",
    ambiente integer,
    nseqevento integer,
    cstat integer,
    nprot character varying(50) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.nfe_manifesto
    OWNER to postgres;

CREATE TABLE commerce.nfeitens
(
    codnota character varying(6) COLLATE pg_catalog."default",
    codproduto character varying(6) COLLATE pg_catalog."default",
    qtde numeric(15,4),
    unitario numeric(15,4),
    total numeric(15,4),
    ipi numeric(15,2),
    icms numeric(15,2),
    cfop character varying(10) COLLATE pg_catalog."default",
    codgrade character varying(6) COLLATE pg_catalog."default",
    serial character varying(25) COLLATE pg_catalog."default",
    valor_ipi numeric(15,2),
    classificacao_fiscal character varying(20) COLLATE pg_catalog."default",
    cst character varying(4) COLLATE pg_catalog."default",
    valor_icms numeric(15,2),
    icms_reduzido numeric(15,2),
    base_calculo numeric(15,2),
    margem_agregada numeric(15,2),
    base_sub numeric(15,2),
    icms_sub numeric(15,2),
    isento numeric(15,2),
    codlancamento character varying(10) COLLATE pg_catalog."default",
    desconto numeric(15,2),
    subtotal numeric(15,2),
    peso_bruto numeric(15,3),
    peso_liquido numeric(15,3),
    item integer,
    codigo character varying(10) COLLATE pg_catalog."default",
    grade character varying(10) COLLATE pg_catalog."default",
    outras numeric(15,2),
    pis_aliquota numeric(15,3),
    pis_base numeric(15,3),
    pis_valor numeric(15,3),
    cofins_aliquota numeric(15,3),
    cofins_base numeric(15,3),
    cofins_valor numeric(15,3),
    altera_item integer,
    csosn character varying(3) COLLATE pg_catalog."default",
    complemento character varying(250) COLLATE pg_catalog."default",
    cest character varying(7) COLLATE pg_catalog."default",
    origem integer,
    pfcp numeric(15,2),
    vbcfcp numeric(15,2),
    vfcp numeric(15,2),
    vbcfcpst numeric(15,2),
    pfcpst numeric(15,2),
    vfcpst numeric(15,2),
    pfcpstret numeric(15,2),
    vfcpstret numeric(15,2),
    pst numeric(15,2),
    xitem character varying(30) COLLATE pg_catalog."default",
    xped character varying(15) COLLATE pg_catalog."default",
    aliquota_sub numeric(15,2),
    atb character varying(30) COLLATE pg_catalog."default",
    codserial character varying(6) COLLATE pg_catalog."default",
    origem_venda character varying(1) COLLATE pg_catalog."default",
    codbarra character varying(14) COLLATE pg_catalog."default",
    piscstcsosn character varying(3) COLLATE pg_catalog."default",
    cofinscstcsosn character varying(3) COLLATE pg_catalog."default",
    icmsrepasse character varying(1) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.nfeitens
    OWNER to postgres;

CREATE TABLE commerce.pais
(
    codigo character varying(4) COLLATE pg_catalog."default",
    descricao character varying(100) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.pais
    OWNER to postgres;

CREATE TABLE commerce.pessoas
(
    codigo character varying(6) COLLATE pg_catalog."default",
    nome character varying(80) COLLATE pg_catalog."default",
    apelido character varying(50) COLLATE pg_catalog."default",
    endereco character varying(80) COLLATE pg_catalog."default",
    bairro character varying(30) COLLATE pg_catalog."default",
    cidade character varying(40) COLLATE pg_catalog."default",
    uf character varying(2) COLLATE pg_catalog."default",
    cep character varying(10) COLLATE pg_catalog."default",
    complemento character varying(80) COLLATE pg_catalog."default",
    moradia integer,
    tipo integer,
    situacao integer,
    telefone1 character varying(20) COLLATE pg_catalog."default",
    telefone2 character varying(20) COLLATE pg_catalog."default",
    telefone3 character varying(20) COLLATE pg_catalog."default",
    celular character varying(20) COLLATE pg_catalog."default",
    email character varying(50) COLLATE pg_catalog."default",
    rg character varying(25) COLLATE pg_catalog."default",
    cpf character varying(18) COLLATE pg_catalog."default",
    filiacao character varying(80) COLLATE pg_catalog."default",
    estadocivil character varying(15) COLLATE pg_catalog."default",
    conjuge character varying(60) COLLATE pg_catalog."default",
    profissao character varying(30) COLLATE pg_catalog."default",
    empresa character varying(40) COLLATE pg_catalog."default",
    renda numeric(15,2),
    limite numeric(15,2),
    ref1 character varying(50) COLLATE pg_catalog."default",
    ref2 character varying(50) COLLATE pg_catalog."default",
    codvendedor character varying(6) COLLATE pg_catalog."default",
    data_cadastro date,
    data_ultimacompra date,
    obs1 character varying(80) COLLATE pg_catalog."default",
    obs2 character varying(80) COLLATE pg_catalog."default",
    obs3 character varying(80) COLLATE pg_catalog."default",
    obs4 character varying(80) COLLATE pg_catalog."default",
    obs5 character varying(80) COLLATE pg_catalog."default",
    obs6 character varying(80) COLLATE pg_catalog."default",
    nascimento character varying(10) COLLATE pg_catalog."default",
    codregiao character varying(6) COLLATE pg_catalog."default",
    codconvenio character varying(6) COLLATE pg_catalog."default",
    codusuario character varying(6) COLLATE pg_catalog."default",
    numero character varying(10) COLLATE pg_catalog."default",
    rg_orgao character varying(5) COLLATE pg_catalog."default",
    rg_estado character varying(2) COLLATE pg_catalog."default",
    rg_emissao date,
    sexo character varying(1) COLLATE pg_catalog."default",
    previsao date,
    cnae character varying(10) COLLATE pg_catalog."default",
    cod_municipio_ibge character varying(10) COLLATE pg_catalog."default",
    ibge character varying(5) COLLATE pg_catalog."default",
    tamanho_calca character varying(5) COLLATE pg_catalog."default",
    tamanho_blusa character varying(5) COLLATE pg_catalog."default",
    tamanho_sapato character varying(5) COLLATE pg_catalog."default",
    corresp_endereco character varying(80) COLLATE pg_catalog."default",
    corresp_bairro character varying(30) COLLATE pg_catalog."default",
    corresp_cidade character varying(40) COLLATE pg_catalog."default",
    corresp_uf character varying(2) COLLATE pg_catalog."default",
    corresp_cep character varying(10) COLLATE pg_catalog."default",
    corresp_complemento character varying(40) COLLATE pg_catalog."default",
    rg_produtor character varying(30) COLLATE pg_catalog."default",
    resp1_nome character varying(80) COLLATE pg_catalog."default",
    resp1_cpf character varying(25) COLLATE pg_catalog."default",
    resp1_rg character varying(25) COLLATE pg_catalog."default",
    resp1_profissao character varying(50) COLLATE pg_catalog."default",
    resp1_estado_civil character varying(30) COLLATE pg_catalog."default",
    resp1_endereco character varying(80) COLLATE pg_catalog."default",
    resp1_bairro character varying(40) COLLATE pg_catalog."default",
    resp1_cidade character varying(40) COLLATE pg_catalog."default",
    resp1_uf character varying(2) COLLATE pg_catalog."default",
    resp1_cep character varying(15) COLLATE pg_catalog."default",
    resp2_nome character varying(80) COLLATE pg_catalog."default",
    resp2_cpf character varying(25) COLLATE pg_catalog."default",
    resp2_rg character varying(25) COLLATE pg_catalog."default",
    resp2_profissao character varying(50) COLLATE pg_catalog."default",
    resp2_estado_civil character varying(30) COLLATE pg_catalog."default",
    resp2_endereco character varying(80) COLLATE pg_catalog."default",
    resp2_bairro character varying(40) COLLATE pg_catalog."default",
    resp2_cidade character varying(40) COLLATE pg_catalog."default",
    resp2_uf character varying(2) COLLATE pg_catalog."default",
    resp2_cep character varying(15) COLLATE pg_catalog."default",
    foto character varying(80) COLLATE pg_catalog."default",
    condpgto character varying(100) COLLATE pg_catalog."default",
    cpais character varying(4) COLLATE pg_catalog."default",
    dpais character varying(100) COLLATE pg_catalog."default",
    tipo_ie character varying(20) COLLATE pg_catalog."default",
    consumidor_final character varying(1) COLLATE pg_catalog."default",
    instrucoes1 character varying(80) COLLATE pg_catalog."default",
    instrucoes2 character varying(80) COLLATE pg_catalog."default",
    idonline integer,
    atb character varying(30) COLLATE pg_catalog."default",
    tipopessoa character varying(200) COLLATE pg_catalog."default",
    responsavel character varying(80) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.pessoas
    OWNER to postgres;

CREATE TABLE commerce.produtos
(
    codigo character varying(6) COLLATE pg_catalog."default",
    produto character varying(400) COLLATE pg_catalog."default",
    data_cadastro date,
    codgrupo character varying(6) COLLATE pg_catalog."default",
    codsubgrupo character varying(6) COLLATE pg_catalog."default",
    codfornecedor character varying(6) COLLATE pg_catalog."default",
    codmarca character varying(6) COLLATE pg_catalog."default",
    data_ultimacompra date,
    notafiscal character varying(7) COLLATE pg_catalog."default",
    precocusto numeric(15,3),
    precovenda numeric(15,3),
    data_ultimavenda date,
    estoque numeric(15,3),
    estoqueminimo numeric(15,3),
    codaliquota character varying(5) COLLATE pg_catalog."default",
    localicazao character varying(50) COLLATE pg_catalog."default",
    peso numeric(15,3),
    validade character varying(20) COLLATE pg_catalog."default",
    comissao numeric(15,3),
    usa_balanca integer,
    usa_serial integer,
    usa_grade integer,
    codreceita character varying(6) COLLATE pg_catalog."default",
    foto character varying(80) COLLATE pg_catalog."default",
    data_ultimacompra_anterior date,
    notafiscal_anterior character varying(6) COLLATE pg_catalog."default",
    codfornecedor_anterior character varying(6) COLLATE pg_catalog."default",
    precocusto_anterior numeric(15,3),
    precovenda_anterior numeric(15,3),
    customedio numeric(15,3),
    auto_aplicacao character varying(60) COLLATE pg_catalog."default",
    auto_complemento character varying(60) COLLATE pg_catalog."default",
    data_remarcacao_custo date,
    data_remarcacao_venda date,
    preco_promocao numeric(15,3),
    data_promocao date,
    fim_promocao date,
    cst character varying(200) COLLATE pg_catalog."default",
    classificacao_fiscal character varying(20) COLLATE pg_catalog."default",
    nbm character varying(20) COLLATE pg_catalog."default",
    ncm character varying(20) COLLATE pg_catalog."default",
    aliquota numeric(15,2),
    ipi numeric(15,2),
    reducao numeric(15,2),
    qtde_embalagem numeric(15,2),
    tipo character varying(30) COLLATE pg_catalog."default",
    peso_liquido numeric(15,3),
    farmacia_controlado character varying(1) COLLATE pg_catalog."default",
    farmacia_apresentacao integer,
    farmacia_registro_medicamento character varying(20) COLLATE pg_catalog."default",
    farmacia_pmc numeric(15,3),
    ultima_alteracao date,
    ultima_carga date,
    data_inventario date,
    custo_inventario numeric(15,3),
    estoque_inventario numeric(15,3),
    estoque_anterior numeric(15,3),
    precovenda_novo numeric(15,3),
    usa_rentabilidade integer,
    quantidade_minima_fab numeric(15,3),
    apresentacao character varying(60) COLLATE pg_catalog."default",
    situacao integer,
    precovenda1 numeric(15,3),
    precovenda2 numeric(15,3),
    precovenda3 numeric(15,3),
    precovenda4 numeric(15,3),
    precovenda5 numeric(15,3),
    desconto_precovenda numeric(15,3),
    data_inventario_atual date,
    custo_inventario_atual numeric(15,3),
    estoque_inventario_atual numeric(15,3),
    margem_minima numeric(15,2),
    piscofins character varying(1) COLLATE pg_catalog."default",
    referencia_fornecedor character varying(30) COLLATE pg_catalog."default",
    comissao1 numeric(15,3),
    margem_desconto numeric(15,3),
    tamanho character varying(6) COLLATE pg_catalog."default",
    cor character varying(6) COLLATE pg_catalog."default",
    incidencia_piscofins character varying(30) COLLATE pg_catalog."default",
    veic_chassi character varying(50) COLLATE pg_catalog."default",
    veic_serie character varying(50) COLLATE pg_catalog."default",
    veic_potencia character varying(50) COLLATE pg_catalog."default",
    veic_peso_liquido character varying(15) COLLATE pg_catalog."default",
    veic_peso_bruto character varying(15) COLLATE pg_catalog."default",
    veic_tipo_combustivel character varying(20) COLLATE pg_catalog."default",
    veic_renavam character varying(50) COLLATE pg_catalog."default",
    veic_ano_fabricacao integer,
    veic_ano_modelo integer,
    veic_tipo character varying(50) COLLATE pg_catalog."default",
    veic_tipo_pintura character varying(15) COLLATE pg_catalog."default",
    veic_cod_cor character varying(15) COLLATE pg_catalog."default",
    veic_cor character varying(30) COLLATE pg_catalog."default",
    veic_vin character varying(10) COLLATE pg_catalog."default",
    veic_numero_motor character varying(50) COLLATE pg_catalog."default",
    veic_cmkg character varying(15) COLLATE pg_catalog."default",
    veic_cm3 character varying(15) COLLATE pg_catalog."default",
    veic_distancia_eixo character varying(15) COLLATE pg_catalog."default",
    veic_cod_marca character varying(15) COLLATE pg_catalog."default",
    veic_especie character varying(50) COLLATE pg_catalog."default",
    veic_condicao character varying(50) COLLATE pg_catalog."default",
    lote_fabricacao character varying(20) COLLATE pg_catalog."default",
    lote_validade date,
    margem_agregada numeric(15,2),
    codbarra_novartis character varying(13) COLLATE pg_catalog."default",
    farmacia_dcb character varying(20) COLLATE pg_catalog."default",
    farmacia_abcfarma character varying(10) COLLATE pg_catalog."default",
    farmacia_apresentacao_caixa character varying(10) COLLATE pg_catalog."default",
    farmacia_principioativo character varying(30) COLLATE pg_catalog."default",
    ultima_compra date,
    farmacia_datavigencia date,
    farmacia_tipo character varying(1) COLLATE pg_catalog."default",
    usa_combustivel character varying(1) COLLATE pg_catalog."default",
    referencia character varying(30) COLLATE pg_catalog."default",
    perda numeric(15,2),
    composicao1 character varying(30) COLLATE pg_catalog."default",
    composicao2 character varying(30) COLLATE pg_catalog."default",
    iat character varying(1) COLLATE pg_catalog."default",
    ippt character varying(1) COLLATE pg_catalog."default",
    situacao_tributaria character varying(1) COLLATE pg_catalog."default",
    flag_sis character varying(1) COLLATE pg_catalog."default",
    flag_aceito character varying(3) COLLATE pg_catalog."default",
    flag_est character varying(1) COLLATE pg_catalog."default",
    csosn character varying(200) COLLATE pg_catalog."default",
    codoriginal character varying(20) COLLATE pg_catalog."default",
    custo_atacado double precision,
    unidade_atacado character varying(2) COLLATE pg_catalog."default",
    qtde_embalagematacado double precision,
    pmargem1 double precision,
    pmargem2 double precision,
    pmargem3 double precision,
    pmargem4 double precision,
    pmargem5 double precision,
    pmargematacado1 double precision,
    pmargematacado2 double precision,
    pmargematacado3 double precision,
    pmargematacado4 double precision,
    pmargematacado5 double precision,
    pmargematacado6 double precision,
    precoatacado1 double precision,
    precoatacado2 double precision,
    precoatacado3 double precision,
    precoatacado4 double precision,
    precoatacado5 double precision,
    ind_cfop character varying(6) COLLATE pg_catalog."default",
    cfop_desc character varying(30) COLLATE pg_catalog."default",
    usa_lote integer,
    ind_cfop_venda_dentro character varying(6) COLLATE pg_catalog."default",
    codconta character varying(6) COLLATE pg_catalog."default",
    ind_cfop_venda_fora character varying(6) COLLATE pg_catalog."default",
    ind_cfop_devolucao_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_devolucao_fora character varying(6) COLLATE pg_catalog."default",
    ind_cfop_garantia_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_garantia_fora character varying(6) COLLATE pg_catalog."default",
    usa_tb_pc character varying(4) COLLATE pg_catalog."default",
    ativa character varying(10) COLLATE pg_catalog."default",
    cest character varying(7) COLLATE pg_catalog."default",
    origem integer,
    ind_cfop_nfce character varying(4) COLLATE pg_catalog."default",
    id_tipo_servico integer,
    nao_movimenta_estoque character varying(1) COLLATE pg_catalog."default",
    pesagem_auotmatica character varying(1) COLLATE pg_catalog."default",
    informa_codigo_barra_xml character varying(1) COLLATE pg_catalog."default",
    codigo_anp character varying(10) COLLATE pg_catalog."default",
    combo character varying(1) COLLATE pg_catalog."default",
    ind_cfop_dev_compra_dentro character varying(6) COLLATE pg_catalog."default",
    ind_cfop_dev_compra_fora character varying(6) COLLATE pg_catalog."default",
    pizza character varying(1) COLLATE pg_catalog."default",
    percglnn numeric(15,2),
    percglgni numeric(15,2),
    pglp numeric(15,2),
    vpart numeric(15,2),
    ecf_icms character varying(30) COLLATE pg_catalog."default",
    idonline integer,
    emdestaque character varying(1) COLLATE pg_catalog."default",
    descontomaximo numeric(15,2),
    atb character varying(30) COLLATE pg_catalog."default",
    controlalote character varying(1) COLLATE pg_catalog."default",
    codbarra character varying(14) COLLATE pg_catalog."default",
    unidade character varying(6) COLLATE pg_catalog."default",
    piscstcsosn character varying(3) COLLATE pg_catalog."default",
    cofinscstcsosn character varying(3) COLLATE pg_catalog."default",
    icmsrepasse character varying(1) COLLATE pg_catalog."default",
    retornavel character varying(1) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.produtos
    OWNER to postgres;

CREATE TABLE commerce.sat
(
    id integer,
    data date,
    hora character varying(8) COLLATE pg_catalog."default",
    numero integer,
    codcliente character varying(6) COLLATE pg_catalog."default",
    ambiente integer,
    cancelado character varying(1) COLLATE pg_catalog."default",
    chave character varying(44) COLLATE pg_catalog."default",
    alterado character varying(1) COLLATE pg_catalog."default",
    cupom character varying(12) COLLATE pg_catalog."default",
    total numeric(15,2),
    atb character varying(30) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.sat
    OWNER to postgres;

CREATE TABLE commerce.transferencia_itens
(
    id integer,
    id_transferencia integer,
    id_produto_online integer,
    quantidade numeric(15,3),
    recebido character varying(1) COLLATE pg_catalog."default",
    danificado character varying(1) COLLATE pg_catalog."default",
    idonline integer,
    precocusto numeric(15,3),
    precovenda numeric(15,3),
    atb character varying(30) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.transferencia_itens
    OWNER to postgres;

CREATE TABLE commerce.transferencias
(
    id integer,
    codigo character varying(20) COLLATE pg_catalog."default",
    o_razao character varying(50) COLLATE pg_catalog."default",
    d_razao character varying(50) COLLATE pg_catalog."default",
    d_endereco character varying(60) COLLATE pg_catalog."default",
    d_cidade character varying(30) COLLATE pg_catalog."default",
    d_uf character varying(2) COLLATE pg_catalog."default",
    d_cep character varying(9) COLLATE pg_catalog."default",
    d_telefone character varying(25) COLLATE pg_catalog."default",
    d_numero character varying(10) COLLATE pg_catalog."default",
    d_bairro character varying(30) COLLATE pg_catalog."default",
    d_id_online integer,
    data date,
    hora character varying(8) COLLATE pg_catalog."default",
    data_saida date,
    hora_saida character varying(8) COLLATE pg_catalog."default",
    status character varying(1) COLLATE pg_catalog."default",
    data_recebimento date,
    hora_recebimento character varying(8) COLLATE pg_catalog."default",
    usuario_recebimento character varying(50) COLLATE pg_catalog."default",
    codlocal character varying(6) COLLATE pg_catalog."default",
    id_origem_online integer,
    id_destino_online integer,
    idonline integer,
    atb character varying(30) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.transferencias
    OWNER to postgres;

CREATE TABLE commerce.uf
(
    sigla character varying(2) COLLATE pg_catalog."default",
    descricao character varying(30) COLLATE pg_catalog."default",
    aliq_interna numeric(15,2),
    aliq_importacao numeric(15,2),
    aliq_exportacao numeric(15,2)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


CREATE TABLE commerce.vendas
(
    codigo character varying(10) COLLATE pg_catalog."default",
    codcaixa character varying(6) COLLATE pg_catalog."default",
    codvendedor character varying(6) COLLATE pg_catalog."default",
    data date,
    codcliente character varying(6) COLLATE pg_catalog."default",
    obs character varying(50) COLLATE pg_catalog."default",
    meio_dinheiro numeric(15,3),
    meio_chequeav numeric(15,3),
    meio_chequeap numeric(15,3),
    meio_cartaocred numeric(15,3),
    meio_cartaodeb numeric(15,3),
    meio_crediario numeric(15,3),
    subtotal numeric(15,3),
    desconto numeric(15,3),
    acrescimo numeric(15,3),
    total numeric(15,3),
    cupom_fiscal integer,
    retirado character varying(50) COLLATE pg_catalog."default",
    meio_convenio numeric(15,3),
    p5 numeric(15,2),
    p3 numeric(15,2),
    meio_financeira numeric(15,2),
    cod_financeira character varying(10) COLLATE pg_catalog."default",
    cod_financeira_lancto character varying(10) COLLATE pg_catalog."default",
    cod_financeira_lacto character varying(10) COLLATE pg_catalog."default",
    codconvenio character varying(10) COLLATE pg_catalog."default",
    situacao integer,
    codtransportador character varying(10) COLLATE pg_catalog."default",
    codveiculo character varying(10) COLLATE pg_catalog."default",
    frete_valor numeric(15,2),
    frete_obs character varying(80) COLLATE pg_catalog."default",
    frete_lancar integer,
    ecf_serial character varying(30) COLLATE pg_catalog."default",
    codnfsaida character varying(10) COLLATE pg_catalog."default",
    atacado_varejo smallint,
    nrvenda character varying(6) COLLATE pg_catalog."default",
    filtro integer,
    contingencia character varying(1) COLLATE pg_catalog."default",
    gerado_nfce character varying(1) COLLATE pg_catalog."default",
    hora time without time zone,
    chave character varying(100) COLLATE pg_catalog."default",
    xml_cfe character varying(240) COLLATE pg_catalog."default",
    xml_cfe_cancelado character varying(240) COLLATE pg_catalog."default",
    chave_cancelado character varying(100) COLLATE pg_catalog."default",
    numero_cupom_fiscal_cancel character varying(20) COLLATE pg_catalog."default",
    troco numeric(15,2),
    total_pago numeric(15,2),
    gerou_sat character varying(1) COLLATE pg_catalog."default",
    numero_sat integer,
    ecf character varying(1) COLLATE pg_catalog."default",
    obs1 character varying(80) COLLATE pg_catalog."default",
    obs2 character varying(80) COLLATE pg_catalog."default",
    obs3 character varying(80) COLLATE pg_catalog."default",
    obs4 character varying(80) COLLATE pg_catalog."default",
    atb character varying(30) COLLATE pg_catalog."default",
    numero_cupom_fiscal character varying(20) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE commerce.vendas
    OWNER to postgres;
