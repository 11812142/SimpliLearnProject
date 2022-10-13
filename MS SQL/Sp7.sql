CREATE PROCEDURE [dbo].sp_Findclass
	@p_classid int,
	  @p_class_st varchar(20) output

	

AS
	SELECT
	@p_class_st=class_strength 
	from classes	where class_roomno=@p_classid;

RETURN 0