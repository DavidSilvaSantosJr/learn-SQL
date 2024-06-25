select count(distinct Title)
from person.Person;

/* quantos produtos caastrados existem na tabela de pordutos*/
select count(*)
from Production.Product;

/*quantos tamanhos de produtos existem cadastrados na tabela*/
select count(Size)
from Production.Product

/*quantos tamanhos diferentes de produtos existem cadastrados na tabela*/
select count(distinct Size)
from Production.Product
