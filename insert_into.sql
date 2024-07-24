-- inserindo valores no banco de dados

insert into dbo.canal(
	CanalID,
	Nome,
	ContagemInscritos,
	DataCriacao
)
values
(2,'canalYTBR',0,1),
(3,'outro',0,1);

select *
from dbo.canal

--inserindo valores de outras tabelas
select *
into tabelaNova
from canal;

select *
from tabelaNova