-- divide o resultado da pesquisa em  grupos

/*
select coluna1, funcao_agregacao(coluna2)
from tabela
groupy by coluna1
*/

select SpecialOfferID, sum(UnitPrice) as SumPrices
from Sales.SalesOrderDetail
group by SpecialOfferID
order by SpecialOfferID asc;


-- quantos produtos foram vendidos até hoje
select ProductID, count(ProductID) as Sales
from Sales.SalesOrderDetail
group by ProductID;

--quantos nomes de cada nome temos cadastrados no banco de dados
select FirstName, count(FirstName)
as QtdFirstName
from Person.Person
group by FirstName;

-- média de preços para os produtos de prata (silver)
select Color, avg(listPrice) as SilverAvg
from Production.Product
where Color = 'silver'
group by Color;

-- Quantas pessoas tem o mesmo middlename
select MiddleName, count(MiddleName)
as QtdMiddleName
from Person.Person
group by MiddleName;

-- média da quantidade de cada produto vendido na 
select ProductID, avg(OrderQty) as AvgProductSale
from Sales.SalesOrderDetail
group by ProductID;

--10 vendas que no total tiveram os maiores valores de vendas por produto do maior para o menor
select top 10 ProductID, sum(LineTotal) as TotalSale
from Sales.SalesOrderDetail
group by ProductID
order by sum(LineTotal) desc;

-- quantos produtos e qual a quantidade media de produtos temos cadastrados nas nossa ordem de serviço, agrupados por produtos
