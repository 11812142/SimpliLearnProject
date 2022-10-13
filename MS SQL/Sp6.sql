CREATE PROCEDURE [dbo].sp_Findstudent
	@p_stuid int,
	  @p_name varchar(20) output

	

AS
	SELECT
	@p_name=student_name 
	from student	where student_id=@p_stuid;

RETURN 0