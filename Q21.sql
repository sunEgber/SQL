#查询不同老师所教不同课程平均分从高到低显示
select t.t_id,
			 t.t_name,
			 c.c_id,
			 c.c_name,
			 round(AVG(sc.s_score),0) as avg_score
from teacher t left join course c on t.t_id = c.t_id
						   left join score sc on c.c_id = sc.c_id
group by sc.c_id
ORDER BY avg(sc.s_score) desc