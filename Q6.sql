#查询"李"姓老师的数量
select COUNT(a.t_name) as num_teacher
from teacher a
where a.t_name like "李%"