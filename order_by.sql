select *
from Person.Person
order by FirstName asc; -- ascendente // desc: decrecente

/*filtar por suas ou mais colunas tbm tem como*/
select FirstName, MiddleName
from Person.Person
order by FirstName asc, MiddleName desc; -- ascendente // desc: decrecente

/*obter o productID dos 10 produtos mais caros cadastrados no sistema, listando de forma decrecente*/
select top 10 ProductID, ListPrice
from Production.Product
order by ListPrice desc;

/*obter o nome e número do produto de  produtos que tem o productID entre 1~4 */
-- soluction 1
select Name, ProductNumber, ProductID
from Production.Product
where ProductID >= 1 and ProductID<=4;

-- soluction 2
select top 4 Name, ProductNumber
from Production.Product
order by ProductID asc;

