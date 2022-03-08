#查询平均成绩大于等于85的所有学生的学号、姓名和平均成绩
SELECT s.s_id,s_name,t1.avg_score
from student s
			inner join  
(
select sc.s_id,round(avg(sc.s_score),2) as avg_score
from score sc
GROUP BY sc.s_id
HAVING avg(sc.s_score) >= 85
)t1 on s.s_id = t1.s_id
