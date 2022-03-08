#查询各科成绩前三名的记录
SELECT
	s.*,
	c.c_name,
	t1.s_score,
	t1.number 
FROM
	( SELECT sc.*, ROW_NUMBER() over ( PARTITION BY sc.c_id ORDER BY sc.s_score DESC ) number FROM score sc ) t1
	LEFT JOIN student s ON s.s_id = t1.s_id
	LEFT JOIN course c ON t1.c_id = c.c_id 
WHERE
	t1.number <= 3