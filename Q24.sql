#查询学生平均成绩及其名次
select 	s.*,
				t.avg_score,
				(@i:=@i+1) as number
from (select @i:=0) var 
cross join 
(
select AVG(sc.s_score) as avg_score,sc.s_id
from score sc 
group by sc.s_id
ORDER BY AVG(sc.s_score) desc 
)t left join student s on s.s_id = t.s_id