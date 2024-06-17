/*
select colun1,coluna2mcoluna_n
from banco de dados
where condição
*/

select *
from Person.Person
where FirstName = 'anna' and LastName = 'Miller';

select *
from Production.Product
where ListPrice >= 1345 and ListPrice <= 2000;


select *
from Production.Product
where Color <> 'red' and ProductLine = 'R';

/* encontrar as peças que pesam entre 500kg e 700kg */
select *
from Production.Product
where Weight > '500' and Weight < 700 and WeightUnitMeasureCode = 'G';

/* buscar todos os empregados casados e assalariados */
select *
from HumanResources.Employee
where MaritalStatus = 'M' and SalariedFlag = 1;


/* encontrar o email de Peter Krebs */
select *
from HumanResources.Employee
--where MaritalStatus = 'M' and SalariedFlag = 1;