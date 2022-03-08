#查询任何一门课程成绩在70分以上的学生姓名、课程名称和分数
SELECT
	s.s_name,
	c.c_name,
	sc.s_score 
FROM
	score sc
	LEFT JOIN student s ON sc.s_id = s.s_id
	LEFT JOIN course c ON sc.c_id = c.c_id 
WHERE
	sc.s_score > 70 
GROUP BY
	s.s_id #通过分组，只保留一个具有同样值的元组