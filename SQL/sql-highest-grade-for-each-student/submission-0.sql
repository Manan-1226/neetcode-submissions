-- Write your query below

with cte_1 as (
Select student_id, exam_id,score, row_number() over (partition by student_id order by score desc, exam_id) as row_rank
from exam_results
)

Select 
student_id,exam_id, score

from cte_1 
where row_rank = 1
