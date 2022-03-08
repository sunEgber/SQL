#查询名字中含有"风"字的学生信息
select s.*
from student s
where s.s_name like '%风%'