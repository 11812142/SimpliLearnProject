CREATE PROCEDURE [dbo].[Updateclass]

      @p_classid int,
	  @p_class_stre varchar(20)

AS

BEGIN

    

      UPDATE  classes SET class_strength = @p_class_stre
	

      WHERE class_roomno=@p_classid

END