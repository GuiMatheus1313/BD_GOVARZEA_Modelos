create database GoVarzea_bd;

<!-- drop database GoVarzea_bd; -->

use GoVarzea_bd;

create table Estado(
	sigla char(2) primary key,
	nome varchar(20) not null,
);


create table Cidade(
	codigo int identity primary key,
	nome varchar(20) not null,
	fk_estado char(2) not null,
	constraint fk_estado Foreign key(fk_estado) references Estado(sigla)
);



create table Endereco(
	CEP varchar(10) primary key,
	logradouro varchar(40) not null,
	numero int(5) not null,
	fk_cidade int not null,
	constraint fk_cidade Foreign key(fk_cidade) references Cidade(codigo)
);

create table Calendario(
	codigo int identity primary key,
	data_calendario datetime not null
);

create table Prioridade_evento(
	codigo int identity primary key,
	nivel varchar(12) not null
);

create table Pessoas(
	CPF bigint primary key,
	nome varchar(50) not null,
	fk_endereco varchar(10) not null,
	constraint fk_endereco foreign key(fk_endereco) references Endereco(CEP)
);

create table Pessoas_telefone(
	fk_cpf bigint,
	telefone bigint(11),
	constraint fkpk_cpf_telefone primary key(fk_cpf, telefone),
	constraint fk_cpf foreign key(fk_cpf) references Pessoas(CPF)
);

create table Pessoas_email(
	fk_cpf bigint,
	email varchar(50),
	constraint fkpk_cpf_email primary key(fk_cpf, email),
	constraint fk_cpf_pessoa foreign key(fk_cpf) references Pessoas(CPF)
);

create table Evento(
	codigo int identity primary key,
	data datetime not null,
	fk_prioridade int,
	constraint fk_prioridade foreign key(fk_prioridade) references Prioridade_evento(codigo)
);

create table Juiz(
	fk_cpf bigint primary key,
	geolocalizacao varchar(100) not null
	constraint fk_cpf7 foreign key(fk_cpf) references Pessoas(CPF)
);

create table Dirigente(
	fk_cpf bigint primary key
	constraint fk_cpf2 foreign key(fk_cpf) references Pessoas(CPF)
);

create table Jogador_posicao(
	codigo int identity primary key,
	posicao varchar(20) not null
);

create table Jogador(
	fk_cpf bigint primary key,
	fk_posicao int not null, 
	constraint fk_cpf3 foreign key(fk_cpf) references Pessoas(CPF),
	constraint fk_posicao foreign key(fk_posicao) references Jogador_posicao(codigo)
);

create table Torcedor(
	fk_cpf bigint primary key
	constraint fk_cpf4 foreign key(fk_cpf) references Pessoas(CPF)
);

create table Dono_comercio(
	fk_cpf bigint primary key,
	geolocalizacao varchar(100) not null
	constraint fk_cpf5 foreign key(fk_cpf) references Pessoas(CPF)
);

create table Patrocinador(
	fk_cpf bigint primary key,
	constraint fk_cpf6 foreign key(fk_cpf) references Pessoas(CPF)
);

create table Empresa(
	CNPJ bigint primary key,
	fk_endereco varchar(10) not null,
	nome varchar(30) not null,
	logomarca varchar(200) null,
	fk_dono bigint null,
	fk_patrocinador bigint null
	constraint fk_dono foreign key(fk_dono) references Dono_comercio(fk_cpf),
	constraint fk_patrocinador foreign key(fk_patrocinador) references Patrocinador(fk_cpf)
);

create table Empresa_telefone(
	fk_CNPJ bigint,
	telefone bigint
	constraint fkpk_cnpj_telefone primary key(fk_CNPJ, telefone)
	constraint fk_cnpj foreign key(fk_CNPJ) references Empresa(CNPJ)
);


create table Amistoso(
	codevento int 
	codamistoso int identity,
	constraint pk_codevento_codamistoso primary key(codevento, codamistoso)
	constraint fk_codevento foreign key(codevento) references Evento(codigo)
);

create table Liga(
	codevento int,
	codliga int identity,
	constraint pk_codevento_codliga primary key(codevento, codliga),
	constraint fk_codevento2 foreign key(codevento) references Evento(codigo)
);

create table Copa(
	codevento int,
	codcopa int identity,
	constraint pk_codevento_codcopa primary key(codevento, codcopa),
	constraint fk_codevento3 foreign key(codevento) references Evento(codigo)
);

create table Associacao(
	codigo int identity primary key,
	nome varchar(20) not null,
	camisa1 varchar(10) not null,
	camisa2 varchar(10) null,
	bandeira varchar(200) null
);

create table Campos(
	codigo int identity primary key,
	fk_endereco varchar(10) not null,
	fk_associacao int not null,
	fk_amistoso int null,
	fk_liga int null,
	fk_copa int null
	constraint fk_endereco2 foreign key(fk_endereco) references Endereco(CEP),
	constraint fk_associacao foreign key(fk_associacao) references Associacao(codigo),
	constraint fk_amistoso foreign key(fk_amistoso) references Amistoso(codamistoso),
	constraint fk_liga foreign key(fk_liga) references Liga(codliga),
	constraint fk_copa foreign key(fk_copa) references Copa(codcopa)
);

create table Time(
	codigo int identity primary key, 
	nome varchar(20) not null, 
	brasao varchar(200) null, 
	fk_associacao int not null, 
	fk_patrocinador bigint null, 
	fk_amistoso int null, 
	fk_liga int null, 
	fk_copa int null,
	constraint fk_associacao2 foreign key(fk_associacao) references Associacao(codigo),
	constraint fk_patrocinador2 foreign key(fk_patrocinador) references Patrocinador(fk_cpf),
	constraint fk_amistoso2 foreign key(fk_amistoso) references Amistoso(codamistoso),
	constraint fk_liga2 foreign key(fk_liga) references Liga(codliga),
	constraint fk_copa2 foreign key(fk_copa) references Copa(codcopa)
);

create table Letra_divisao(
	codigo int identity primary key,
	letra char not null
);

create table Time_divisoes(
	fk_codtime int, 
	fk_divisao int,
	constraint fkpk_codtime_divisao primary key(fk_codtime, fk_divisao),
	constraint fk_codtime foreign key(fk_codtime) references Time(codigo),
	constraint fk_divisao foreign key(fk_divisao) references Letra_divisao(codigo)
);

create table Jogador_time(
	fk_codtime int not null,
	fk_jogador bigint not null
	constraint fkpk_codtime_jogador primary key(fk_codtime, fk_jogador),
	constraint fk_codtime2 foreign key(fk_codtime) references Time(codigo),
	constraint fk_jogador foreign key(fk_jogador) references Jogador(fk_cpf),
);

create table Jogos(
	codigo int identity primary key,
	fk_associacao int not null,
	fk_calendario int not null,
	fk_evento int not null,
	constraint fk_associacao3 foreign key(fk_associacao) references Associacao(codigo),
	constraint fk_calendario foreign key(fk_calendario) references Calendario(codigo),
	constraint fk_evento foreign key(fk_evento) references Evento(codigo)
);

create table Jogos_time(
	fk_jogo int, 
	fk_time int,
	constraint fkpk_jogo_time primary key(fk_jogo, fk_time),
	constraint fk_jogo foreign key(fk_jogo) references Jogos(codigo),
	constraint fk_time foreign key(fk_time) references Time(codigo)
);

create table Dirigentes_ligas(
	CPF_dirigente bigint,
	fk_liga int,
	constraint fkpk_dirigente_liga primary key(CPF_dirigente, fk_liga),
	constraint fk_dirigente foreign key(CPF_dirigente) references Dirigente(fk_cpf),
	constraint fk_liga3 foreign key(fk_liga) references Liga(codliga)
);

create table Dirigentes_copas(
	CPF_dirigente bigint,
	fk_copa int,
	constraint fkpk_dirigente_copa primary key(CPF_dirigente, fk_copa),
	constraint fk_dirigente2 foreign key(CPF_dirigente) references Dirigente(fk_cpf),
	constraint fk_copa3 foreign key(fk_copa) references Copa(codcopa)
);


create table Pessoas_torcedoras(
	fk_pessoa bigint,
	fk_time int,
	constraint fkpk_pessoa_time primary key(fk_pessoa, fk_time),
	constraint fk_pessoa foreign key(fk_pessoa) references Pessoas(CPF),
	constraint fk_time3 foreign key(fk_time) references Time(codigo)
);