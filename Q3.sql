#查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
select t1.s_id,
			 t1.s_name,
			 ROUND(t2.avg_score,2) as avg_score
from student t1 inner join
(
select s_id,AVG(s_score) as avg_score
from score
group by s_id
having avg_score >=60
)t2 
on t1.s_id=t2.s_id