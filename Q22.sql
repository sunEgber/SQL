#查询所有课程的成绩第2名到第3名的学生信息及该课程成绩
SELECT s.*,
			 t1.number,
			 t1.s_score
from student s left join 
(
select sc.s_id,
ROW_NUMBER()over(PARTITION by sc.c_id order by sc.s_score desc ) number,
sc.s_score
from  score sc 
) t1 on s.s_id = t1.s_id
where t1.number in (2,3)