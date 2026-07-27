-- Write your query below
Select seller_name 
from 
seller 
where seller_id not in 
(
Select distinct seller_id as seller_id
from orders 
where extract(year from sale_date) = '2020')
order by seller_name