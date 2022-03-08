#查询课程编号为01且课程成绩在80分以上的学生的学号和姓名
SELECT
	sc.s_id,
	s.s_name 
FROM
	score sc
	LEFT JOIN student s ON sc.s_id = s.s_id 
WHERE
	sc.c_id = 1 
	AND sc.s_score >= 80