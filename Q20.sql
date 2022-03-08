#查询学生的总成绩并进行排名

select sc.s_id,
			 t.s_name,
			 (case when sum(sc.s_score) is null then 0 else sum(sc.s_score) end ) as sum_score
from score sc left join student t on sc.s_id=t.s_id
group by sc.s_id
order by sum(sc.s_score) desc