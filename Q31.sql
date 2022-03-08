#查询1990年出生的学生名单
select *
from student s
where year(s.s_birth) = 1990