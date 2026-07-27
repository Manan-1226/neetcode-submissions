-- Write your query below


Select 
 c.name 

from 
customers c
where c.id
not in (Select distinct customer_id as id from orders)
