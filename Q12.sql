#查询至少有一门课与学号为"01"的同学所学相同的同学的信息
SELECT s.*
from student s 
where s.s_id in 
(
select sc.s_id
from score sc
inner join 
(select c_id from score where s_id = 1) sc2 
on sc.c_id = sc2.c_id
#内接寻找两表共同匹配
)