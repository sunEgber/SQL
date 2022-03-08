#查询没有学全所有课程的同学的信息  
SELECT
	s.* 
FROM
	student s
where s.s_id	not in 
(
select sc.s_id
from score sc
group by sc.s_id
having count(*) = (select COUNT(*) from course )#学全的反面
) 