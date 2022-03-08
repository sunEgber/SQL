#查询选修"张三"老师所授课程的学生中，成绩最高的学生信息及其成绩
SELECT
	s.*,
	t1.s_score 
FROM
	student s
	INNER JOIN (
	SELECT
		sc.s_id,
		sc.s_score 
	FROM
		score sc
		INNER JOIN course c ON sc.c_id = c.c_id
		INNER JOIN teacher t ON c.t_id = t.t_id 
	WHERE
		t.t_name = '张三' 
	HAVING
	MAX( sc.s_score ) 
	) t1 ON s.s_id = t1.s_id