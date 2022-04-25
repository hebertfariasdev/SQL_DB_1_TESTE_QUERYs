--FOREIGN KEY

Alter table Turmas
	add constraint fk_Alunos foreign key (id_aluno) references Alunos (id_aluno);

/*
Alter table Turmas
	add constraint fk_Curso foreign key (id_curso) references Cursos (id_curso);
*/

alter table Registro_Presenca
	add constraint fk_TurmasRP foreign key (id_turma) references Turmas (id_turma);
	
alter table Registro_Presenca
	add constraint fk_AlunoRP foreign key (id_aluno) references Alunos (id_aluno);

alter table Registro_Presenca
	add constraint fk_SituacaoRP foreign key (id_situacao) references Situacao (id_situacao);


--INSERTS

insert into dbo.Alunos
(id_aluno, nome, data_nascimento, sexo, data_cadastro, login_cadastro)
values
(1,'Alan Mazoni Alves','04/09/1989','M','02/11/2019 15:00:00','ALESS')
(2,'Alessandro Henrique Peres Porfirio','22/08/1992','M','11/12/2019 15:33:00','ALESS');

select * from Alunos;

insert into dbo.Cursos
(id_cursos, nome_curso, data_cadastro, login_cadastro)
values
(1, 'VBA I', '02/11/2019 15:00:00','ALESS');

select * from Cursos;

insert into dbo.Situacao
(id_situacao, situacao, data_cadastro, login_cadastro)
values
(1, 'Presença confirmada', '02/11/2019 15:00:00','ALESS'),
(2, 'Ausente Sem justificativa', '02/11/2019 15:00:00','ALESS'),
(3, 'Ausente Com justificativa', '02/11/2019 15:00:00','ALESS');

select * from Situacao;
