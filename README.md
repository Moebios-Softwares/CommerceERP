# Commerce ERP
## _Repositório oficial do Commerce ERP - o ERP livre e grátis_

[![N|Solid](https://dl.moebios.com.br/logo100.png)](https://moebios.com.br)

O Commerce é uma solução ERP open source, que você pode ajustar ao seu uso pessoal, pode modificar e executar de forma gratuita e livre.

- Documentos fiscais (NFe, CTe, NFSe e outros) utilizando os componentes ACBr

## Tech

Componentes utilizados no Commerce, não incluídos e precisam de licença:

- [Delphi 10.4.2] - https://www.embarcadero.com/
- [DevExpress VCL 20.2.6] - https://www.devexpress.com/
- [Unidac 9.2.1] - https://www.devart.com/unidac/
- [Fortes Reporte CE] - https://github.com/fortesinformatica/fortesreport-ce.git/
- [Projeto ACBr] - https://svn.code.sf.net/p/acbr/code/trunk2
- [Nuvem Fiscal] - https://github.com/nuvem-fiscal/nuvemfiscal-sdk-delphi

## Instalação

Para executar uma Release do Commerce, basta baixar o executável e executá-lo, ele se copia para a pasta padrão:
C:\Moebios

Baixa e instala o PostgreSQL 9.3.25-1 x64
Cria o usuário postgres com a senha 1234 na porta 5432
Cria um database padrão chamado "moebios"

## Manutenção do banco de dados

Para adicionar um novo campo ao banco de dados, basta criar um field tipo "data" na query desejada em design time:

![image](https://user-images.githubusercontent.com/19708484/215529039-314e47dc-dc9c-4bde-90ab-b3fc625b1c6b.png)

Se certificar que DM.AtualizaTabela está sendo chamado para esta query antes de abrir a mesma.

A função está preparada para criar alguns tipos diretamente no banco de dados, o atualizando sem necessidades de rodar scripts antes de abrir o Commerce
