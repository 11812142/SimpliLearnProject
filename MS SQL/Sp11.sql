CREATE PROCEDURE [dbo].sp_Deletemarks
	@p_id int
	
AS
	Delete from marks
	where student_id=@p_id;
RETURN 0