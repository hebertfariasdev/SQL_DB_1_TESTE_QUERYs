create table Alunos
(
	id_aluno int primary key not null,
	nome varchar(200) not null,
	data_nascimento date not null,
	sexo varchar(1) not null, --m para Masculino ou F para Feminino
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

create table Situacao
(
	id_situacao int primary key not null,
	situacao varchar(25) not null,
	data_cadastro datetime,
	login_cadastro varchar(15)
);

create table Cursos
(
	id_cursos int primary key not null,
	nome_curso varchar(200) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

create table Turmas
(
	id_turma int primary key not null,
	id_aluno int not null,
	id_curso int not null,
	valor_turma numeric(15,2) not null,
	data_inicio date not null,
	data_termino date,
	data_cadastro datetime not null,
	login_cadastro varchar(15)
);

create table Registro_Presenca
(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date not null,
	data_cadastro date not null,
	login_cadstro varchar(15) not null
);