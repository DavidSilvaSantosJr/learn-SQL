/*
create table nomeTabela(
	coluna1 tipo restricçao       --opcopnal
	coluna2 tipo,
	...
	colunaN tipo
)
*/

--tipos de restrições
-- UNIQUE - Nao permite valores iguais
-- NOT NULLS - não permite nulos
-- primary key - junção de not null/unique
-- check - força uma condição especifica em uma coluna
--default força um valor padrão quando nenhum é passado

create table canal(
	CanalID int primary key,
	Nome varchar(150) not null,
	ContagemInscritos int default 0,
	DataCriacao int not null

);

create table video(
	VideoID int primary key,
	NomeVideo varchar(150) not null,
	Vizualizacoes int default 0,
	Likes int default 0,
	Deslikes int default 0,
	Duracao int not null,
	CanalID int foreign key references canal(CanalID)
);