#查询本月过生日的学生

SELECT
	s.*
FROM
	student s
WHERE 
	MONTH(CURRENT_DATE()) = MONTH(DATE_FORMAT(s.s_birth,'%y%m%d'))