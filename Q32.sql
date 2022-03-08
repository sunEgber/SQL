#查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
select sc.*,
			avg(s_score) as avg_score,
			rank()over(order by avg(sc.s_score) desc,c_id )  as number 
FROM score sc 
GROUP BY c_id