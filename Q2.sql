select n1.*,n2.score1,n2.score2
from student n1 
right join 
(
select DISTINCT a.s_score as score1,
								b.s_score as score2,
								a.s_id
from score  a left join score b on a.s_id = b.s_id
where 	a.c_id=1
and			b.c_id=2
and			a.s_score < b.s_score
)n2
on n1.s_id = n2.s_id