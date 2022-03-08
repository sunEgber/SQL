 #查询每门课程被选修的学生数
 select c.c_id,c.c_name,t1.number
 from course c left join 
 (
 select sc.*,COUNT(s_id) as number
 from score sc 
 group by c_id
 )t1 on c.c_id = t1.c_id	