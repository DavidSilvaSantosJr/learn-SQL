-- primary key: valor que identifica unicamente uma tabela.
--foreign key: chave estrangeira que faz referencia tabela original

-- businessEntidyId, FirstName, LastName, EmailAdrress

select top 2 *
from Person.Person;

select top 2 *
from Person.EmailAddress;

-- juntando as informações
/*
select P.BusinessEntityID, P.FirstName,(conteúdos da primeira tabela) PE.BusinessEntityID (conteúdos da 2° tabela)
from Person.Person as P (1° tabela)
inner join Person.EmailAddress PE (segunda tabela) on p.BusinessEntityID(coluna em comum que junta as informações) = PE.BusinessEntityID
*/

--encontrar o nome dos produtos e informações das subcategorias
-- listpreice, nom de produto, nome da subcategoria

select Production.Product.ListPrice, Production.Product.Name, Production.ProductSubcategory.Name as SubCategoryName
from Production.Product
inner join Production.ProductSubcategory on Production.ProductSubcategory.ProductSubcategoryID = Production.Product.ProductSubcategoryID;

-- produto cartesiano = juntar tudos das tabelas
select *
from Person.BusinessEntityAddress BEA
inner join Person.Address PA on PA.AddressID = BEA.AddressID;

-- fazer uma qurey para juntar bussinessEntityID, Name, PhonenumberTypeID, PhoneNumber
select top 1 *
from Person.PersonPhone;
select top 1 *
from Person.PhoneNumberType;

select Person.PhoneNumberType.PhoneNumberTypeID, Person.PhoneNumberType.Name, Person.PersonPhone.BusinessEntityID, Person.PersonPhone.PhoneNumber
from Person.PhoneNumberType
inner join Person.PersonPhone on PersonPhone.PhoneNumberTypeID = PhoneNumberType.PhoneNumberTypeID;

-- trazer AddresID, City, stateProvinceID, Nome do estado
select Person.Address.AddressID, Person.Address.City, Person.Address.StateProvinceID, Person.StateProvince.Name
from Person.Address
inner join Person.StateProvince on Person.StateProvince.StateProvinceID = Person.Address.StateProvinceID;
