#统计各科成绩各分数段人数：课程编号,课程名称,[100-85],[85-70],[70-60],[0-60]及所占百分比
select c.c_id,
			 c.c_name,
			 sum(case when sc.s_score BETWEEN 85 and 100 then 1 else 0 end) as '[85-100]',
			 CONCAT(round(sum(case when sc.s_score BETWEEN 85 and 100 then 1 else 0 end)/count(*) * 100 ,2),'%') as 百分比, 
			 sum(case when sc.s_score BETWEEN 70 and 85 then 1 else 0 end) as '[70-85]',
			 CONCAT(round(sum(case when sc.s_score BETWEEN 70 and 85 then 1 else 0 end)/count(*) * 100 ,2),'%') as 百分比,
			 sum(case when sc.s_score BETWEEN 60 and 70 then 1 else 0 end) as '[60-70]',
			 CONCAT(round(sum(case when sc.s_score BETWEEN 60 and 70 then 1 else 0 end)/count(*) * 100 ,2),'%') as 百分比,
			 sum(case when sc.s_score BETWEEN 0 and 60 then 1 else 0 end) as '[0-60]',
			 CONCAT(round(sum(case when sc.s_score BETWEEN 0 and 60 then 1 else 0 end)/count(*) * 100 ,2),'%') as 百分比
from score sc LEFT JOIN course c on sc.c_id = c.c_id
group by sc.c_id