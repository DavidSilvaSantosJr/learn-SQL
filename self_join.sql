-- agrpa valores da mesma tabela

/*
select coluna
from tabela a, tabela b
where condi��o
*/

select A.ContactName, B.Region
from dbo.Customers A, dbo.Customers B
where A.Region = B.Region;

-- encontrar (nome e data de contrata��o) de todos os funcion�rios que foram contratados no mesmo ano
select N.FirstName, N.HireDate, H.FirstName, H.HireDate
from dbo.Employees N, dbo.Employees H
where datepart(year, N.HireDate) = datepart(year, H.HireDate);

-- encontrar na tabela detalhe de pedido quais produtos	tem o mesmo percentual de desconto
