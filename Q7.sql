#询学过"张三"老师授课的同学的信息
select *
from student
where s_id in
(
select s_id
from score t1 
inner join   #内连和外连的区别 
(
select c.c_id
from teacher t inner join course c on t.t_id=c.t_id
where t.t_name = "张三"
)t2	on t1.c_id=t2.c_id
)