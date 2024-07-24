select *
from Sales.SalesOrderDetail


select UnitPrice / LineTotal
from Sales.SalesOrderDetail

--arredondar ->ROUND(coluna, casasDecimais)
select round(avg(LineTotal), 2)
from Sales.SalesOrderDetail