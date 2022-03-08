#查询没学过"张三"老师讲授的任一门课程的学生姓名
select s.s_name
from student s 
where s.s_id not in 
(
select distinct s_id
from course c 
			inner join teacher t on c.t_id = t.t_id
			inner join score sc on c.c_id = sc.c_id
where t.t_name = "张三"
)