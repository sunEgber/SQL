#查询和"01"号的同学学习的课程完全相同的其他同学的信息
select s.*
from student s 
where s.s_id in 
(
SELECT *
from score sc inner join 
(
select c_id
from score where s_id = 1
)sc2
on sc.c_id = sc2.c_id
where s_id != 1
group by sc.s_id
having count(*) = (select COUNT(*) from score WHERE s_id=1)  
#count是在groupby之后执行的，此时临时表sc2也已经被groupby分组，如果直接having count(*)=count(sc2.c_id)会出现错误
)