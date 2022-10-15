CREATE PROCEDURE [dbo].[Updatemarks]

      @p_studid int,
	  @p_studname varchar(20),
	  @p_submarks int
AS

BEGIN

    

      UPDATE  marks SET student_name = @p_studname,subject_marks=@p_submarks
	

      WHERE student_id=@p_studid

END