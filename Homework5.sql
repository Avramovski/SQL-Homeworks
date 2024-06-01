USE SEDC_ACADEMY_HOMEWORK

CREATE OR ALTER PROCEDURE dbo.usp_CreateGrade
(
    @StudentID INT,
    @TeacherID INT,
    @Grade TINYINT,
    @Comment NVARCHAR(MAX),
    @CreatedDate DATETIME
)
AS
BEGIN
INSERT INTO dbo.Grade(StudentId,TeacherId,Grade,Comment,CreatedDate)
VALUES(@StudentID,@TeacherID,@Grade,@Comment,@CreatedDate)
SELECT COUNT(g.StudentID)FROM dbo.Grade g 

SELECT MAX(Grade) AS MaxGrade
FROM dbo.Grade
WHERE StudentID=@StudentID AND TeacherId=@TeacherID
END
 GO
EXEC dbo.usp_CreateGrade 
    @StudentID = 50, 
    @TeacherID = 1, 
    @Grade = 9, 
    @Comment = 'Excellent performance', 
    @CreatedDate = '2024-05-30'
	GO

CREATE OR ALTER PROCEDURE dbo.usp_CreateGradeDetail
(
@GradeID INT,
@AchievementTypeID INT,
@AchievementPoints SMALLINT,
@AchievementMaxPoints SMALLINT,
@AchievementDate DATE
)
AS
BEGIN
INSERT INTO [dbo].[GradeDetails](GradeID,AchievementTypeID,AchievementPoints,AchievementMaxPoints,AchievementDate)
VALUES(@GradeID,@AchievementTypeID,@AchievementPoints,@AchievementMaxPoints,@AchievementDate)
SELECT SUM(CAST(gd.AchievementPoints AS INT)/CAST(gd.AchievementMaxPoints AS INT)*CAST([at].ParticipationRate AS INT)) FROM [dbo].[GradeDetails] gd
INNER JOIN [dbo].[AchievementType] [at] ON gd.ID=[at].ID
END

EXEC dbo.usp_CreateGradeDetail
@GradeId=5,
@AchievementTypeID=5,
@AchievementPoints=50,
@AchievementMaxPoints=80,
@AchievementDate ='2020-01-11'

SELECT * FROM [dbo].[GradeDetails]