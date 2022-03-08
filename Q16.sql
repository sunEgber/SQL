#检索"01"课程分数小于60，按分数降序排列的学生信息
select s.*,t1.s_score
from student s INNER JOIN 
(
select sc.s_id,sc.s_score
from score sc
where sc.c_id = 1 and sc.s_score < 60
)t1 on s.s_id = t1.s_id
ORDER BY t1.s_score desc