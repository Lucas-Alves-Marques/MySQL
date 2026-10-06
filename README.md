# 🗄️ Atividades de SQL — Banco de Dados II

Repositório de scripts e exercícios SQL desenvolvidos durante minhas aulas de **Banco de Dados II na Etec de Embu**. O material registra a criação e alteração de bancos relacionais, a manipulação de dados e consultas feitas ao longo das atividades.

## 📚 Objetivo do repositório

Este projeto foi criado para armazenar minhas atividades de SQL durante as aulas. Os arquivos são exercícios independentes — não uma aplicação única — e podem exigir bancos ou tabelas criados em etapas anteriores. Entre os temas praticados estão:

- criação e seleção de bancos de dados;
- definição de tabelas, tipos de dados, chaves primárias e chaves estrangeiras;
- inclusão, consulta e atualização de registros;
- alteração e remoção de estruturas;
- modelagem de relacionamentos entre produtos, clientes e pedidos;
- consultas com filtros e funções de agregação;
- criação de views e triggers em alguns exercícios.

## 🛠️ Requisitos e ferramentas

- Um servidor **MySQL** instalado e em execução.
- Uma ferramenta cliente para executar os scripts, por exemplo **MySQL Workbench** ou o cliente de linha de comando `mysql`.
- Permissão no servidor para criar bancos e tabelas.

O conteúdo deste repositório é SQL para MySQL. Outros bancos relacionais podem exigir alterações de sintaxe e de tipos de dados.

## 🚀 Como executar os exercícios

### Pelo MySQL Workbench

1. Inicie o MySQL Server e conecte-se à instância desejada pelo Workbench.
2. Abra **um arquivo `.sql` por vez** usando **File > Open SQL Script**.
3. Leia o script antes de executá-lo, especialmente as instruções `DROP DATABASE`, `DROP TABLE`, `CREATE DATABASE` e `USE`.
4. Confirme qual banco está selecionado. Alguns arquivos criam ou selecionam bancos próprios; outros dependem de um banco e de tabelas que já existam.
5. Execute o script ou apenas os trechos necessários. A área **Output** do Workbench mostra erros e resultados.
6. Confira os dados com as consultas `SELECT` e pelo navegador de schemas do Workbench.

### Pelo terminal

Conecte-se ao servidor MySQL:

```bash
mysql -u root -p
```

Informe a senha quando solicitada. No prompt do MySQL, comandos SQL podem ser digitados e finalizados com `;`. Para executar um arquivo inteiro, use o comando `SOURCE` com o caminho para o arquivo, por exemplo:

```sql
SOURCE C:/caminho/para/um-arquivo.sql;
```

No Windows, o caminho pode ser informado com barras `/` ou barras invertidas duplicadas `\\`. Se o caminho contiver espaços, confira a forma de escape aceita pela sua versão do cliente; usar o Workbench costuma ser mais simples para esses arquivos.

## 🗂️ Arquivos e atividades

| Arquivo | Conteúdo observado |
| --- | --- |
| `Atividade.sql` | Cria exemplos de cadastro de alunos (`cadastroAlunos`) e cadastro de cliente pessoa jurídica (`Cadastro_de_cliente_PJ`), com tabelas, chaves estrangeiras, inserções, atualização de dados e alteração de estrutura. |
| `banco de dados II - primeiro.sql` | Cria o banco `bd_vendas` e as tabelas de produtos, endereços, clientes, pedidos e itens de pedido, incluindo relacionamentos por chaves estrangeiras. |
| `banco de dados II - Atividade.sql` | Exercício extenso do banco de vendas, com estrutura relacional e muitos registros de endereços/CEPs para Taboão da Serra, além de dados relacionados a produtos, clientes e pedidos. |
| `banco de dados II - Atividade (02).sql` | Consulta pontual à tabela `bd_vendas.tbl_produto`; depende de o banco e a tabela já existirem. |
| `Banco de Dados II - Querys.sql` | Script extenso com estrutura e dados de vendas/endereço, consultas de listagem, filtros por data, agrupamentos e funções como `COUNT`, `MIN`, `SUM` e `AVG`. |
| `Banco de Vendas.sql` | Exercício abrangente de vendas, com tabelas e dados de produtos, endereços, clientes, pedidos e itens; inclui consultas, views e triggers associadas a operações de log. |
| `primeiroBranco.sql` | Alterações na tabela `autopcas.tabela_01`, adicionando campos de estoque e classificações de produto; depende desse banco e tabela já existirem. |
| `Script DML - CEP (TS e EA).sql` | Script DML associado ao banco `autopcas` e à tabela `tabela_01`; pressupõe a estrutura criada anteriormente e inclui alteração e inclusão de registro. |

Os nomes refletem a organização atual dos arquivos e podem representar versões diferentes ou etapas sucessivas dos exercícios. Consulte o conteúdo antes de escolher qual executar.

## 🛒 Modelo de vendas

Os exercícios de vendas representam um fluxo básico de cadastro e pedidos. As tabelas principais incluem:

- **`tbl_produto` / `tbl_produtos`**: cadastro de produto, descrição, unidade, quantidade em estoque e valor. O nome varia entre os scripts.
- **`tbl_endereco`**: CEP, logradouro, bairro, cidade e estado.
- **`tbl_cliente`**: dados do cliente e referência a um endereço.
- **`tbl_pedido`**: datas do pedido e da entrega e referência ao cliente.
- **`tbl_itempedido`**: itens de cada pedido, com produto, quantidade e valor, ligados às tabelas de pedidos e produtos.

As chaves estrangeiras expressam essas relações e determinam a ordem em que as tabelas precisam ser criadas e populadas: primeiro as tabelas referenciadas, depois as que dependem delas.

## 🔎 Consultas e recursos SQL

Os arquivos contêm exemplos de consultas para:

- listar registros com `SELECT`;
- filtrar dados, inclusive por ano de nascimento;
- contar registros e agrupar por cidade, bairro ou mês com `COUNT` e `GROUP BY`;
- ordenar resultados com `ORDER BY`;
- obter menor valor com `MIN`;
- somar quantidades ou valores com `SUM`;
- calcular médias com `AVG`;
- calcular o valor total estimado do estoque a partir de quantidade e preço.

O script `Banco de Vendas.sql` também declara views para consultas de pedidos e produtos e triggers para registrar operações em uma tabela de log. Para conferir a definição exata de cada consulta, view ou trigger, abra o respectivo arquivo, pois o repositório contém versões e exercícios diferentes.

## ⚠️ Cuidados antes de executar 

- **Faça os exercícios em uma instância local/de teste.** Alguns arquivos contêm `DROP DATABASE bd_vendas` ou `DROP TABLE`, que podem apagar bancos ou tabelas existentes com esses nomes.
- **Não execute todos os arquivos em sequência sem revisão.** Há scripts que recriam estruturas, outros que pressupõem tabelas existentes e versões que usam nomes diferentes, como `tbl_produto` e `tbl_produtos`.
- **Verifique a ordem das instruções.** Uma tabela com chave estrangeira depende da tabela referenciada e de dados compatíveis já existirem.
- **Confira os bancos selecionados.** Há exercícios para `bd_vendas`, `cadastroAlunos`, `Cadastro_de_cliente_PJ` e `autopcas`. Uma instrução `USE` direciona as operações seguintes ao schema escolhido.
- **Revise scripts extensos antes de executá-los.** Os arquivos de vendas incluem muitas linhas de dados de endereços e podem demorar mais para carregar.
- **O estado final depende dos scripts executados.** Para refazer uma atividade, identifique as instruções de remoção e criação e tenha certeza de que os dados podem ser apagados.

## 📁 Organização dos arquivos

Este repositório é composto principalmente por arquivos `.sql` na raiz. Não há uma aplicação, interface gráfica própria, pacote Node ou comando de build: a execução e a visualização dos resultados são feitas por um cliente MySQL conectado ao servidor.
