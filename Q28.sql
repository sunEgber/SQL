#查询男生、女生人数
select
			(sum(case when s.s_sex = '男' then 1 else 0 end)) as Mela_number,
			(sum(case when s.s_sex = '女' then 1 else 0 end)) as Femela_number
from student s



select s.s_sex,count(*) as cnt_sex
from student s
group by s.s_sex