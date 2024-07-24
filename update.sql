select *
from Person.Person;

update Sales.SalesOrderDetail
set CarrierTrackingNumber = REPLACE(CarrierTrackingNumber, '-', '_')

--------------
use youtube
select *
from dbo.canal

delete from dbo.canal
where CanalID = 2