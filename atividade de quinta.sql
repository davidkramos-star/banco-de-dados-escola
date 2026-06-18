 
CREATE DATABASE EscolaDB;

USE EscolaDB;


create table turmas(
id int primary key identity (1,1),
nome varchar(50) not null,
turno varchar(15),
);


CREATE TABLE ALUNOS (
id int primary key identity(1,1),
nome varchar (80) not null,
email varchar (100) unique,
turma_id int,

foreign key (turma_id)references turmas(id)
);



insert into turmas(nome,turno) values ('progamador full stack1' ,'manhã');
insert into turmas(nome,turno) values ('progamador full stack1' , 'tarde');

insert into ALUNOS(nome,email,turma_id) values ('Dk' ,'david@aluno,',1);
insert into ALUNOS(nome,email,turma_id) values ('yasmin' ,'yasmin@aluno',1);
insert into ALUNOS(nome,email,turma_id) values ('ryan' ,'ryan@aluno,',2);


SELECT 
       Alunos.nome AS ' nome do aluno',
       Alunos.email AS 'E-mail',
	   *from alunos;

SELECT 
	   turmas.nome As 'nome da turma',
	   turmas.turno As 'turno',
	   *from turmas;