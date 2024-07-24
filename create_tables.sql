/*
create table nomeTabela(
	coluna1 tipo restric�ao       --opcopnal
	coluna2 tipo,
	...
	colunaN tipo
)
*/

--tipos de restri��es
-- UNIQUE - Nao permite valores iguais
-- NOT NULLS - n�o permite nulos
-- primary key - jun��o de not null/unique
-- check - for�a uma condi��o especifica em uma coluna
--default for�a um valor padr�o quando nenhum � passado

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