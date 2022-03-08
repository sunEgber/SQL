#查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩
select a.s_id,a.s_name,COUNT(b.c_id),IFNULL(SUM(b.s_score),0)
from student a left join score b on a.s_id=b.s_id
group by a.s_id