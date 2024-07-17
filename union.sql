--combina dois ou mais reultados de um select em apenas um resultado
select FirstName
from Person.Person
Where Title = 'Ms.'
union
select FirstName
from Person.Person
Where MiddleName = 'A';