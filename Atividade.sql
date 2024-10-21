create database cadastroAlunos;

use cadastroAlunos;

create table dados(
	matricula  		int(6) primary key,
    data_nasc  		date,
    rg         		char(10),
    nome			varchar(30),
    endereco		varchar(30),
    numero_casa		varchar(5),
    bairro 			varchar(30),
    cidade			varchar(25)
);

select * from dados;

insert into dados (matricula, data_nasc, rg, nome, endereco, numero_casa, bairro, cidade) values (000001, 21.06.2024, 1234567890, "Joselino", "Rua Jatobá", "147B", "Bairro das Abelhas", "Embu das Artes"); 

update dados set data_nasc = "2024-06-21" where matricula = 000001;

alter table dados add column UF char(2) not null;

insert into dados (UF) value ("SP") where matricula = 000001;

update dados set UF = "SP" where matricula = 000001;

# NOVA BASE DE DADOS

create database Cadastro_de_cliente_PJ;

use Cadastro_de_cliente_PJ;

create table cnea(
	codigo 		varchar(9),
    descrição   varchar (25),
    id 			int auto_increment primary key
);

create table uf(
	id		 	 int auto_increment primary key,
    descrição 	 varchar(20),
    codigo		 char(2)
);

create table Dados_PJ(
	cnjp 					char(14) primary key,
    inscriçao_estadual 		char(15),
    endereco				varchar(30),
    numero					varchar(5),
    complemento				varchar(30),
    bairro					varchar(30),
    cidade					varchar(25),
    cep						char (8),
    telefone				char (14),
    responsavel_imediato	varchar(30),
    vendas					int,
    recrutaemnto_e_selecao	int,
    fornecimento			int,
    promocoes				int,
    newsletter				int,
    novos_produto			int,
    garantia				int,
    eventos					int,
    matriz					int,
    filial					int,
	cnae					int,
    uf						int,
    foreign key (cnae) references cnea(id),
	foreign key (uf) references uf(id)
);

use cnea;

select * from Dados_PJ;

drop table Dados_PJ;

insert into cnea (codigo, descrição) values (7020400, "ATIVIDADES DE CONSULTORIA EM GESTÃO EMPRESARIAL");

insert into uf (descrição,codigo) value ("São Paulo","SP");

insert into Dados_PJ value("420156908-0001","388.108.598.269","Rua Leblom","90","Ao lado da praça turistica","Jardim Angela","Embu das Artes","3090-908","11 98745-9083","Agnaldo","0","0","1","0","1","1","0","0","0","1","1","1");


