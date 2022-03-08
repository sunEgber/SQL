#查询每门课程成绩最好的前三名

SELECT s.s_name,
			 c.c_name,
			 t1.*
FROM
	(
	SELECT
		sc.*,
		ROW_NUMBER() over ( PARTITION BY sc.c_id ORDER BY sc.s_score desc) AS 'rank' 
	FROM
	score sc
	)t1 left join student s on t1.s_id = s.s_id
			left join course  c on t1.c_id = c.c_id
where t1.rank <= 3
