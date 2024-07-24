select *
from Person.person

-- concatenar
select concat(FirstName, ' ',LastName) as NameConcat
from Person.person;

-- tudo maiusculo/minusculo
select upper(FirstNAme) as UF, LOWER(LastName) as LL
from Person.person;

-- tamanho da string
select len(FirstNAme) as LF, FirstName
from Person.person;

-- substring -> extrai um pedaço de string ->substring(coluna, start,qtdCaracteres)
select substring(FirstName,2,3) as subs2_3, FirstName
from Person.person;

select replace(ProductNumber, '-','_') as productNumber
from Production.Product
