CREATE PROCEDURE [dbo].sp_Deletesubjects
	@p_id int
	
AS
	Delete from subjects
	where subjects_id=@p_id;
RETURN 0