#查询本周过生日的学生
select 
	s.*
from student s 
where week(now()) = week(DATE_FORMAT(s.s_birth,'%y%m%d'))