#查询选修了全部课程的学生信息
SELECT
	s.* 
FROM
	score sc
	LEFT JOIN course c ON sc.c_id = c.c_id
	LEFT JOIN student s ON sc.s_id = s.s_id 
GROUP BY
	sc.s_id 
HAVING
	count( sc.c_id ) = (
	SELECT
		count(*) 
FROM
	course)