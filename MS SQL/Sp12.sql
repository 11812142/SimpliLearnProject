CREATE PROCEDURE [dbo].sp_Findmarks
	@p_studid int,
	  @p_mark_studname varchar(20) output,
	  @p_marks_submarks int output

	

AS
	SELECT
	@p_mark_studname=student_name,@p_marks_submarks=subject_marks 
	from marks	where student_id=@p_studid;

RETURN 0