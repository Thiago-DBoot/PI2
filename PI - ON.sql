create database databasepi;

use databasepi;

select * from vagas;

CREATE TABLE vagas(
idvaga int primary key  auto_increment,
descricao varchar(45) not null,
req_obrigatorios varchar(45) not null,
req_desejaveis varchar(45),
remuneracao float not null,
aberta tinyint default '1', -- 1 true aberta -- 0 false fechada --
beneficios varchar(45) not null,
local_trabalho varchar(45) not null
) auto_increment = 1000; -- inicia codigo da vaga(idvaga) com valor 1000 --


