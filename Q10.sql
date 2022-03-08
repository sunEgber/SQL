#查询学过编号为"01"但是没有学过编号为"02"的课程的同学的信息
SELECT
	s.* 
FROM
	student s 
WHERE
	s.s_id IN (
	SELECT
		sc.s_id 
	FROM
		score sc 
	WHERE
		sc.c_id = 1 
	AND sc.s_id NOT IN ( SELECT s_id FROM score WHERE c_id = 2 ) 
	)