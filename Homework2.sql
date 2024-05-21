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


CREATE TABLE [GROUP] (
   GroupId int NOT NULL PRIMARY KEY,
    Name nvarchar(255) NOT NULL,
    Academy nvarchar(255)
);
ALTER TABLE Student
ADD GroupId int 
FOREIGN KEY (GroupId) REFERENCES [Group](GroupId);

SELECT * FROM Student

--nezanm--
SELECT 
    [dbo].[Course].[Name], 
   [dbo].[AchievementType].[Name]
FROM 
    [Course].[Name] AS c
CROSS JOIN 
    [AchievementType] AS a;


	SELECT * FROM[dbo].[Teacher]
	WHERE Grade = null