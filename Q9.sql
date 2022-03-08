#查询学过编号为"01"并且也学过编号为"02"的课程的同学的信息
SELECT s.*
from student s 
where s.s_id in 
(
select sc.s_id
from score sc
where sc.c_id in (1,2)  #多条件筛选
GROUP BY sc.s_id
HAVING COUNT(sc.c_id) = 2
)