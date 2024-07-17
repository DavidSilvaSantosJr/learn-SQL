-- left outer joinn = left join (mesma coisa)
-- como o inner join, porém retorna valores que nao possuem registro de uma tabela.

-- descobrir quais psessoas tem cartao de credito registrados

select *
from Sales.PersonCreditCard;

select *
from Person.Person;


select PP.BusinessEntityID, PP.FirstName, SP.CreditCardID
from Person.Person PP
left join Sales.PersonCreditCard SP on SP.BusinessEntityID = PP.BusinessEntityID;

-- trazer quem nao tem registro de carto de crédito
select PP.BusinessEntityID, PP.FirstName, SP.CreditCardID
from Person.Person PP
left join Sales.PersonCreditCard SP on SP.BusinessEntityID = PP.BusinessEntityID
where SP.CreditCardID is NULL;