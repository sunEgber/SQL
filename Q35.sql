#查询所有学生的课程及分数情况
select s.s_id,s.s_name,
		sum(case when sc.c_id = 1 then sc.s_score else 0 end ) as 语文,  #以学生个人ID为分组标志求和
		sum(case when sc.c_id = 2 then sc.s_score else 0 end ) as 数学,
		sum(case when sc.c_id = 3 then sc.s_score else 0 end ) as 英语
from student s
left join score sc on s.s_id = sc.s_id
group by s.s_id