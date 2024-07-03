/*sum -> soma da coluna*/
use AdventureWorks2017;

select top 15 sum(LineTotal)
as TotalOrders -- cria o nome da coluna com o resultado
from Sales.SalesOrderDetail;

/*min -> menor valor da coluna*/
select top 15 min(LineTotal)
as MinOrder-- cria o nome da coluna com o resultado
from Sales.SalesOrderDetail;

/*max -> maior valor da coluna*/
select top 15 max(LineTotal)
as MaxOrder-- cria o nome da coluna com o resultado
from Sales.SalesOrderDetail;

/*avg -> media dos valores da coluna*/
select top 15 avg(LineTotal)
as AvgOrders-- cria o nome da coluna com o resultado
from Sales.SalesOrderDetail;