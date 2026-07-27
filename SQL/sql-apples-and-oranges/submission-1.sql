-- Write your query below
with apple_cte as(
Select * from sales
where fruit = 'apples'
)
Select 
coalesce(ac.sale_date, oc.sale_date) as sale_date, 
(ac.sold_num - oc.sold_num) as diff
from 
apple_cte ac
full outer join 
(Select * from sales where fruit = 'oranges') oc 
on 
ac.sale_date = oc.sale_date
order by sale_date
