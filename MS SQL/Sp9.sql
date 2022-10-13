CREATE PROCEDURE [dbo].sp_Deletestudent
	@p_id int
	
AS
	Delete from student
	where student_id=@p_id;
RETURN 0