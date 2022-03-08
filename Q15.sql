#查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩

select t1.s_id,s.s_name,AVG(t1.s_score) as "平均成绩"
from score t1 left join student s on t1.s_id = s.s_id 
where t1.s_id in 
(
select sc.s_id
from score sc 
where sc.s_score < 60
GROUP BY sc.s_id
HAVING count(sc.c_id) >= 2
)
group by t1.s_id