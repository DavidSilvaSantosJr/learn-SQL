-- verifica se o valor � umc valor pr� determinado, ou est� nuam lista de valores

select *
from Purchasing.ProductVendor
where StandardPrice in (25.77, 44.21, 27.33);