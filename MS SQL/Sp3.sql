CREATE PROCEDURE [dbo].[Updatestudent]

      @p_stuid int,
	  @p_stuname varchar(20)

AS

BEGIN

    

      UPDATE  student SET student_name = @p_stuname
	

      WHERE student_id=@p_stuid

END