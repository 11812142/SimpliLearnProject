CREATE PROCEDURE [dbo].[Updatesubjects]

      @p_subid int,
	  @p_subname varchar(20)

AS

BEGIN

    

      UPDATE  subjects SET subjects_name = @p_subname
	

      WHERE subjects_id=@p_subid

END