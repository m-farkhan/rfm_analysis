select 
	customerid,
	invoiceno,
	invoicedate,
	sum(quantity * unitprice) as revenue,
	country
from
	online_retail
group by
	customerid,
	invoiceno,
	invoicedate,
	country
having 	
	sum(quantity * unitprice) > 0
order by
	customerid asc,
	revenue desc
	
	
	