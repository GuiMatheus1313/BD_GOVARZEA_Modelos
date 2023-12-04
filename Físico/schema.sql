create database GoVarzea_bd;

<!--drop database GoVarzea_bd; -->

use GoVarzea_bd;

create table Estado(
	sigla char primary key,
	nome varchar(20) not null,
);

create table Cidade(
	codigo int identity primary key,
	nome varchar(20) not null,
	fk_estado char not null
	Foreign key(fk_estado) references Estado(sigla)
);

create table Endereco(
	CEP varchar(10) primary key,
	logradouro varchar(40) not null,
	numero int not null,
	fk_cidade int not null,
	Foreign key(fk_cidade) references Cidade(codigo)
);

create table Calendario(
	codigo int identity,
	data_calendario datetime,
	constraint pk_codigo_data primary key(codigo, data_calendario)
);

create table Prioridade_evento(
	codigo int identity primary key,
	nivel varchar(12) not null
);

create table Pessoas(
	CPF bigint primary key,
	nome varchar not null,
	fk_endereco varchar(10) not null,
	constraint fk_endereco foreign key(fk_endereco) references Endereco(CEP)
);

create table Pessoas_telefone(
	fk_cpf bigint,
	telefone bigint,
	constraint fkpk_cpf_telefone primary key(fk_cpf, telefone)
);

create table Pessoas_email(
	fk_cpf bigint,
	email varchar(50),
	constraint fkpk_cpf_email primary key(fk_cpf, email)
);

create table Evento(
	codigo int identity primary key,
	data datetime not null,
	fk_prioridade int,
	constraint fk_prioridade foreign key(fk_prioridade) references Prioridade_evento(codigo)
);

create table Dirigente(
	fk_cpf bigint primary key
	constraint fk_cpf foreign key(fk_cpf) references Pessoas(CPF)
);

create table Jogador_posicao(
	codigo int identity primary key,
	posicao varchar(20) not null
);

create table Jogador(
	fk_cpf bigint primary key,
	fk_posicao int not null, 
	constraint fk_cpf foreign key(fk_cpf) references Pessoas(CPF),
	constraint fk_posicao foreign key(fk_posicao) references Jogador_posicao(codigo)
);

create table Torcedor(
	fk_cpf bigint primary key
	constraint fk_cpf foreign key(fk_cpf) references Pessoas(CPF)
);

create table Dono_comercio(
	fk_cpf bigint primary key,
	geolocalizacao varchar not null
	constraint fk_cpf foreign key(fk_cpf) references Pessoas(CPF)
);

create table Patrocinador(
	fk_cpf bigint primary key
	constraint fk_cpf foreign key(fk_cpf) references Pessoas(CPF)
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
	codamistoso int identity primary key,
	constraint fk_codamistoso foreign key(codamistoso) references Evento(codigo)
);

create table Liga(
	codliga int identity primary key,
	constraint fk_codamistoso foreign key(codliga) references Evento(codigo)
);

create table Copa(
	codcopa int identity primary key,
	constraint fk_codcopa foreign key(codcopa) references Evento(codigo)
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
	constraint fk_endereco foreign key(fk_endereco) references Endereco(CEP),
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
	constraint fk_associacao foreign key(fk_associacao) references Associacao(codigo),
	constraint fk_patrocinador foreign key(fk_patrocinador) references Patrocinador(fk_cpf),
	constraint fk_amistoso foreign key(fk_amistoso) references Amistoso(codamistoso),
	constraint fk_liga foreign key(fk_liga) references Liga(codliga),
	constraint fk_copa foreign key(fk_copa) references Copa(codcopa)
);

create table Letra_divisao(
	codigo int identity primary key,
	letra char not null
);

create table Time_divisoes(
	fk_codtime int not null, 
	fk_divisao int not null,
	constraint fkpk_codtime_divisao primary key(fk_codtime, fk_divisao),
	constraint fk_codtime foreign key(fk_codtime) references Time(codigo),
	constraint fk_divisao foreign key(fk_divisao) references Letra_divisao(codigo)
);

create table Jogador_time(
	fk_codtime int not null,
	fk_jogador bigint not null
	constraint fk_codtime foreign key(fk_codtime) references Time(codigo),
	constraint fk_jogador foreign key(fk_jogador) references Jogador(fk_cpf),

