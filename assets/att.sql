--criando banco de dados cadasto
create database cadastro;
--criando tabela pessoas
create table pessoas( 
    nome varchar(30), 
    idade tinyint(3), 
    sexo char(1), 
    peso float, 
    altura float, 
    nacionalidade varchar(20) 
);
--apagando tudo pra começar denovo de maneira melhor
drop database cadastro;
--criando banco de dados cadastro com utf8
create database cadastro; 
DEFAULT CHARACTER set utf8;
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE pessoas( id int not null AUTO_INCREMENT, nome varchar(30) NOT NULL, nascimento DATE, sexo ENUM('M','F'), peso DECIMAL(5,2), altura DECIMAL (3,2), nacionalidade VARCHAR(20) DEFAULT 'brasil', PRIMARY KEY (id) )DEFAULT CHARSET = utf8

--DDL Data Definition Language
create database
create table
alter table
drop table

--DML Data Manipulation Language
insert into
update -> atualiza um dado especifico, utilizando o where
delete -> apaga uma linha especifica
truncate -> apaga todos os dados de uma tabela


INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade) VALUES ('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil')

desc pessoas;
DESCRIBE pessoas;

alter table pessoas
add COLUMN profissao varchar(10);

alter table pessoas
drop COLUMN profissao;

alter table pessoas
add COLUMN profissao varchar(10) after nome;

alter table pessoas
add codigo int first;

alter table pessoas
modify column varchar(20) not null;

alter TABLE pessoas CHANGE COLUMN profissao prof varchar(20);

alter table pessoas
rename to gafanhotos;

CREATE TABLE IF NOT EXISTS cursos(
    nome varchar(30) not null UNIQUE,
    descricao text,
    carga int unsigned,
    totaulas int,
    ano year DEFAULT '2016'
) DEFAULT CHARSET = utf8;


alter table cursos add column idcurso int first;
alter table cursos add PRIMARY key (idcurso);
insert into cursos VALUES ('1', 'HTML4', 'Cursos de HTML5', '40', '37', '2014'), ('2', 'Algoritmos', 'Logica de programação', '20', '15', '2014'), ('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'), ('4', 'PHP', 'Curso de PhP para iniciantes', '40', '20', '2010'), ('5', 'Jarva', 'Indodução a linguagem java', '10', '29', '2000'), ('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'), ('7', 'Word', 'Curso completo de word', '40', '30', '2016'), ('8', 'Sapateado', 'Danças ritmicas', '40', '30', '2018'), ('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'), ('10', 'Youtuber', 'Gerar Polêmica e ganhar inscitos', '5', '2', '2018');

update cursos 
set nome ='HTML5' 
where idcurso = 1;

update cursos 
set nome ='PHP',  ano = '2015'
where idcurso = 4;

update cursos 
set nome ='Java', carga = '40', ano = '2015'
where idcurso = 5
LIMIT 1;

delete from cursos
where idcursos = 8;

delete from cursos
where ano = 2018
limit 3;

truncate table cursos;