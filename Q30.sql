#查询同名同性学生名单，并统计同名人数
select s.*,count(*) as cnt_student
from student s 
group by s_name,s.s_sex
having count(*) > 1