#查询课程不及格的学生
SELECT
	s.s_name,
	c.c_name,
	sc.s_score 
FROM
	score sc
	LEFT JOIN student s ON sc.s_id = s.s_id
	LEFT JOIN course c ON sc.c_id = c.c_id 
WHERE
	sc.s_score < 60