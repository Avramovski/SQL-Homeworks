DECLARE @FirstName NVARCHAR(50)
SET @FirstName= 'Antonio'
SELECT*
FROM[dbo].[Student] 
WHERE FirstName=@FirstName
GO

DECLARE @StudentInfo TABLE
(StudentId INT NOT NULL,
StudentName NVARCHAR(100) NOT NULL,
DateOfBirth DATE NOT NULL)

INSERT INTO @StudentInfo(StudentId,StudentName,DateOfBirth)
SELECT Id,FirstName,DateOfBirth
FROM [dbo].[Student]
WHERE Gender='F'
SELECT * FROM @StudentInfo
GO

CREATE TABLE #EnrolledTable 
(LastName NVARCHAR(100),
EnrolledDate DATE)
GO

INSERT INTO #EnrolledTable (LastName,EnrolledDate)
SELECT LastName, EnrolledDate
FROM [dbo].[Student]
WHERE Gender='M' AND FirstName LIKE 'A%'

SELECT * FROM #EnrolledTable
SELECT * FROM [dbo].[Student]
SELECT * FROM [dbo].Student  
WHERE LEN(LastName)=7

SELECT * FROM [dbo].[Teacher] WHERE LEN(FirstName)<5 AND LEFT(FirstName,3)=LEFT (LastName,3)

