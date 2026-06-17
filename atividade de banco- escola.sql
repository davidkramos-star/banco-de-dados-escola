 
CREATE DATABASE EscolaDB;

USE EscolaDB;




.




CREATE TABLE ALUNOS (
id int primary key identity(1,1),
nome varchar (80) not null,
email varchar (100) unique,
turma_id int

foreign key (turma_id)references turmas(id)
);

create table turmas(
id int primary key identity (1,1),
nome varchar(50) not null,
turno varchar(15),
);
