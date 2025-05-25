Alter procedure sp_InsertStudentsData
(
	-- Parameter
	@Type nvarchar(30),
	@Student_NAME nvarchar(30) = null,
	@Student_Adress nvarchar(max) = null,
	@Student_age int = null,
	-- tbl_StudentDetail
	@Student_Id int = null,
	@Student_subject nvarchar(20) = null,
	@Student_marks decimal(18,2) = null
)
As
Begin
	-- SQL statement
	If(@Type = 'tbl_Student') -- 'tbl_Student' = 'tbl_Student'
	Begin
		Insert into tbl_Student(Student_NAME,Student_Adress,Student_age)
		values(@Student_NAME,@Student_Adress,@Student_age)
	End
	Else if(@Type = 'tbl_StudentDetail') -- 'tbl_StudentDetail' = 'tbl_StudentDetail'
	Begin
		Insert into tbl_Studentdetail(Student_Id,Student_subject,Student_marks)
		values(@Student_Id,@Student_subject,@Student_marks)
	End
	Else
	Begin
		print('Invalid value')
	End
End