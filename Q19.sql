#按各科成绩进行排序，并显示排名
select 
			 row_number() over( partition by sc.c_id ORDER BY sc.s_score desc ) number,
		   c.c_name as 课程名,
			 t.s_name as 学生姓名,
			 sc.s_score as 成绩
from score sc left join course c on sc.c_id = c.c_id
			left join student t on sc.s_id = t.s_id ;
			
			

select
	(@i := case when @pre_group_id = c_id then @i + 1 else 1 end) as number,
	(@pre_group_id := c_id )as c_id,
	c_name,s_id,s_name,s_score
from (select @i := 0, @pre_group_id := 1) var
cross join (
	select c.c_id,c.c_name,s.s_id,s.s_name,s_score
	from score sc
	inner join student s on sc.s_id = s.s_id
	inner join course c on sc.c_id = c.c_id
	group by c.c_id,s.s_id
	order by c.c_id,s_score desc
) t1;

# (@i:=@i+1)代表定义一个变量，每次叠加1；
# @pre_group_id 定义一个变量，变量名为@pre_group_id
# @i:= 0， 定义一个变量i，初始化值为0
