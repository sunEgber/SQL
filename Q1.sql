select n1.s_id,
			 n2.s_name,
			 n2.s_birth,
			 n2.s_sex,
			 n1.score1,
			 n1.score2 
from 
(
select a.s_id,
			 a.s_score as score1,
			 b.s_score as score2
from score a join score b on a.s_score > b.s_score
where a.c_id = 1 
	and b.c_id = 2
	and a.s_id = b.s_id
)n1
left join 
(
select *
from student 
)n2
on n1.s_id = n2.s_id

#用的最直接的方法，从成绩表中筛选出符合条件的id以及成绩，再和身份信息链接
#1-6行是为了让数据排列看起来更符合自己的习惯
