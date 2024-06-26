-- busca valores semelhantes

-- valor% -> busca o que contém o valor até %
select *
from Person.Person
where FirstName like 'ovi%';

-- ao colocar % no início, busca o que vier antes 
select *
from Person.Person
where FirstName like '%lberto';


-- ao colocar o valor ente %% busca o que vier antes e depois, que sejaigual ao que está dentro de %%
select *
from Person.Person
where FirstName like '%berl%';