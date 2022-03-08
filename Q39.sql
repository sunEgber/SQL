#求每门课程的学生人数
select 
	c.c_name,
	COUNT(sc.s_id) as cnt_student
from 
	score sc
	left join course c on sc.c_id = c.c_id
GROUP BY
	c.c_id