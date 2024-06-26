-- verifica se o valor é umc valor pré determinado, ou está nuam lista de valores

select *
from Purchasing.ProductVendor
where StandardPrice in (25.77, 44.21, 27.33);