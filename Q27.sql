#查询出只有两门课程的全部学生的学号和姓名
select s.s_id,s.s_name
from score sc inner join student s on sc.s_id =s.s_id
group by sc.s_id
HAVING count(sc.c_id) = 2