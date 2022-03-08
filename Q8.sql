#查询没学过"张三"老师授课的同学的信息
select s.*
from student s
where s.s_id not in 
(
select distinct sc.s_id
from score sc inner join   #内连和外连的区别
(
select c.c_id
from teacher t inner join course c on t.t_id = c.t_id
where t.t_name="张三"
)t2 on sc.c_id=t2.c_id
)