#查询下周过生日的学生

SELECT
	s.*
from 
	student s 
where
	WEEK(NOW()) + 1 = WEEK(DATE_FORMAT(s.s_birth,'%y%m%d'))