#查询平均成绩小于60分的同学的学生编号和学生姓名和平均成绩(包括有成绩的和无成绩的)
select t1.s_id,t1.s_name,ifnull(round(t2.avg_score,2),0) as avg_score
from student t1 left join
( 
select s_id,AVG(s_score) as avg_score
from score
group by s_id
)t2
on t1.s_id=t2.s_id
where t2.avg_score < 60 or t2.avg_score is null