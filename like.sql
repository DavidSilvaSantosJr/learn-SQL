-- busca valores semelhantes

-- valor% -> busca o que cont�m o valor at� %
select *
from Person.Person
where FirstName like 'ovi%';

-- ao colocar % no in�cio, busca o que vier antes 
select *
from Person.Person
where FirstName like '%lberto';


-- ao colocar o valor ente %% busca o que vier antes e depois, que sejaigual ao que est� dentro de %%
select *
from Person.Person
where FirstName like '%berl%';