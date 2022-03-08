#查询各科成绩最高分、最低分和平均分，以如下形式显示：
select sc.c_id,
			 c.c_name,
			 MAX(sc.s_score) as 最高分,
			 MIN(sc.s_score) as 最低分,
			 round(AVG(sc.s_score),2) as 平均成绩,
			 CONCAT(ROUND(sum(case when s_score >= 60 then 1 else 0 end) / count(*) * 100 , 2),'%') as 及格率,
			 CONCAT(ROUND(sum(case when s_score BETWEEN 70 and 80 then 1 else 0 end) / count(*) * 100 , 2),'%') as 中等率,
			 CONCAT(ROUND(sum(case when s_score BETWEEN 80 and 90 then 1 else 0 end) / count(*) * 100 , 2),'%') as 优良率,
			 CONCAT(ROUND(sum(case when s_score >= 90 then 1 else 0 end) / count(*) * 100 , 2),'%') as 优秀率
from score sc left join  course c on sc.c_id = c.c_id
group by c.c_id
