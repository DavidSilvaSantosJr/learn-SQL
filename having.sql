--having é como um where, para dados agrupados.(pós group by)

/*
select coluna1, operação(coluna2)
from Tabela
Where condição
group by coluna1
having condição
*/
use AdventureWorks2017;

--encontrar nomes com ocorrencia masi de 10x

select FirstName, count(FirstName) as QtdFirstName
from Person.Person
group by FirstName
having count(FirstName) > 10;

--quais produtos que no total de vendas estão entre 162k e 500k
select ProductID, sum(LineTotal) as TotalSalesProduct
from Sales.SalesOrderDetail
group by ProductID
having sum(LineTotal) between 162000 and 500000;

-- saber quais nomes no sitema tem ocorrencia maior que 10x, e que o titulo seja de Mr.
select FirstName, count(FirstName) as QtyMrs
from Person.Person
where Person.Title = 'Mr.'
group by FirstName
having count(FirstName) > 10;

-- identificar as provincias com o maior número de cadastros no nosso sistema. selecionar as que possuem mais de 1000 registros.
select StateProvinceID, COUNT(StateProvinceID) as total_ProvinceID
from Person.Address
group by StateProvinceID
having count(stateProvinceID) >= 1000;

--encontrar produtos que tenham em media menos que 1MM em total de vendas
select ProductID, avg(LineTotal) as avgTotalSales
from Sales.SalesOrderDetail
group by ProductID
having avg(LineTotal) < 1000000;