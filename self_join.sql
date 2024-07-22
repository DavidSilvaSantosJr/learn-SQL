-- agrpa valores da mesma tabela

/*
select coluna
from tabela a, tabela b
where condição
*/

select A.ContactName, B.Region
from dbo.Customers A, dbo.Customers B
where A.Region = B.Region;

-- encontrar (nome e data de contratação) de todos os funcionários que foram contratados no mesmo ano
select N.FirstName, N.HireDate, H.FirstName, H.HireDate
from dbo.Employees N, dbo.Employees H
where datepart(year, N.HireDate) = datepart(year, H.HireDate);

-- encontrar na tabela detalhe de pedido quais produtos	tem o mesmo percentual de desconto
 select a.ProductID, a.Discount, b.ProductID,b.Discount
 from dbo.[Order Details] a, dbo.[Order Details] b
 where a.Quantity = b.Quantity
 order by a.ProductID

