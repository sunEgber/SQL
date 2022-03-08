#按平均成绩从高到低显示所有学生的所有课程的成绩以及平均成绩
select s.s_id ,
			 s.s_name,
			 sum(case when c_id = 1 then sc.s_score else 0 end ) as 语文,
			 sum(case when c_id = 2 then sc.s_score else 0 end ) as 数学,
			 sum(case when c_id = 3 then sc.s_score else 0 end ) as 英语,
			 ifnull(round(AVG(sc.s_score),2),0) as 平均成绩
from student s left join score sc on s.s_id = sc.s_id
group by s_id
ORDER BY 平均成绩 desc