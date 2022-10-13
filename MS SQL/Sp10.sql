CREATE PROCEDURE [dbo].sp_Deleteclass
	@p_id1 int
	
AS
	Delete from classes
	where class_roomno=@p_id1;
RETURN 0