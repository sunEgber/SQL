/*统计每门课程的学生选修人数（超过5人的课程才统计）
	要求输出课程号和选修人数，查询结果按人数降序排列，若人数相同，按课程号升序排列*/
SELECT
	* 
FROM
	(
	SELECT
		sc.c_id,
		count( sc.s_id ) AS cnt_course 
	FROM
		score sc 
	GROUP BY
		sc.c_id 
	HAVING
	count( sc.s_id ) > 5 
	)t1
ORDER BY t1.cnt_course desc , t1.c_id