#查询课程名称为"数学"，且分数低于60的学生姓名和分数
select s.s_name,sc.s_score
from score sc left join student s on sc.s_id = s.s_id
							left join course c  on sc.c_id = c.c_id
where c.c_name = '数学'
			and  sc.s_score < 60