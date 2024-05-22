USE SEDC_ACADEMY_HOMEWORK
GO

SELECT * FROM [dbo].[Student]
WHERE FirstName = 'Antonio';
GO
SELECT * FROM [dbo].[Student]
WHERE DateOfBirth > '1999.01.01'
GO
SELECT * FROM [dbo].[Student]
WHERE LastName LIKE 'J%' AND EnrolledDate >= '1998.01.01' AND  EnrolledDate <= '1998.01.31'
GO
SELECT * FROM [dbo].[Student]
ORDER BY FirstName
Go
SELECT [LastName] FROM [dbo].[Student] 
UNION 
SELECT [LastName] FROM [dbo].[Teacher]
GO

ALTER TABLE [dbo].[Course]
ADD CONSTRAINT [FK_Course_Student]
FOREIGN KEY([ID])
REFERENCES[dbo].[Student](ID)

SELECT * FROM [dbo].[Course] c
CROSS JOIN 
[dbo].[AchievementType] a

SELECT * FROM [dbo].Grade WHERE TeacherID is not NULL AND (Grade is NULL OR Grade = 0)