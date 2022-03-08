#查询各学生的年龄(周岁)
#– 按照出生日期来算，当前月日 < 出生年月的月日则，年龄减一
SELECT 
	s.s_id,s.s_name,s.s_birth,
IF
	(
		MONTH (
		CURRENT_DATE ()) < MONTH ( s.s_birth ) 
		OR MONTH (
		CURRENT_DATE ()) = MONTH ( s.s_birth ) 
		AND DAY (
		CURRENT_DATE ()) < DAY ( s.s_birth ),
	YEAR ( CURRENT_DATE ) - YEAR ( s.s_birth ) - 1,
	YEAR ( CURRENT_DATE ) - YEAR ( s.s_birth )) as age
FROM student s 