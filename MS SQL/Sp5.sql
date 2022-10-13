CREATE PROCEDURE [dbo].sp_Findsubjects
	@p_subid int,
	  @p_subname varchar(20) output

	

AS
	SELECT
	@p_subname=subjects_name 
	from subjects	where subjects_id=@p_subid;

RETURN 0