use AdventureWorks2017;

/* Quantos produtos temos cadastrados no sistema  que custam mais que $1500,00.00 ? */
select count(ListPrice)
from Production.Product
where ListPrice >= 1500;

/*Quantas pessoas temos com o sobrenome que inicia com a letra P?*/
select COUNT(LastName)
from Person.Person
where LastName LIKE 'p%';

/*Em quantas cidades únicas estão cadastradas nossos clientes?*/
select COUNT(distinct (City))
from Person.Address;

/*Quais são as cidades únicas que temos cadastrados em nosso sistema?*/
select distinct (City)
from Person.Address;

/*Quantos produtos vermelhos tem preco entre 500 a 1000 $ ?*/
select count(color)
from Production.Product
where Color in ('red') and
ListPrice between 500 and 1000;

/*quantos produtos cadastrados tem a palavra 'road' no nome deles?*/
select count(Name)
from Production.Product
where Name like '%road%';