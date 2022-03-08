#查询不同课程成绩相同的学生的学生编号、课程编号、学生成绩
SELECT
	sc2.s_id,
	sc2.c_id,
	sc2.s_score 
FROM
	score sc2 
WHERE
	sc2.s_score IN (
	SELECT
		sc.s_score 
	FROM
		score sc 
	GROUP BY
		sc.s_score 
	HAVING
	count(*) > 1 
	)