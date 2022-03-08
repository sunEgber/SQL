#检索至少选修两门课程的学生学号
select 
	sc.s_id
from 
	score sc
group by 
	sc.s_id
having 
	count(sc.c_id) >= 2