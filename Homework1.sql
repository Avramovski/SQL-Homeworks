USE [master]
GO
CREATE DATABASE [HOMEWORK1]
GO
USE [HOMEWORK1]
Go
CREATE TABLE [Student](
FirstName NVARCHAR (20)  not null,
LastName VARCHAR (50)not null,
DateOfBirth DATE not null,
EnrolledDate INT not null,
NationalIdNumber INT not null,
StudentCardNumber INT not null
)
GO

SELECT * FROM dbo.Student


CREATE TABLE [Teacher](
Id INT not null,
FirstName NVARCHAR (20)  not null,
LastName VARCHAR (50)not null,
DateOfBirth DATE not null,
AcademicRank INT not null,
HireDate DATE NOT NULL,
)

SELECT * FROM dbo.Teacher

CREATE TABLE [Grade](
	Id INT not null,
	StudentId INT not null,
	CourseId INT not null,
	Grade INT not null,
	Comment NVARCHAR(100) NOT NULL,
	CreatedDate DATETIME not null,
	
)
SELECT * FROM dbo.Grade

CREATE TABLE [Course](
Id INT   NULL,
[Name] NVARCHAR(30)  NULL,
Credit  INT  NULL,
AcademicYear DATE NULL,
Semester INT NULL
)

SELECT * FROM dbo.Course

CREATE TABLE [GradeDetails](
Id INT   NULL,
GradeId INT not null,
AchievementTypeId INT NOT NULL,
AchievementPoints INT NOT NULL,
AchievementMaxPoints INT NOT NULL,
AchievementDate DATE NOT NULL,
)

SELECT * FROM dbo.GradeDetails

CREATE TABLE AchievementType(
Id INT   NULL,
[Name] NVARCHAR(30)  NULL,
Decription VARCHAR (100) NULL,
ParticipationRate INT NULL
)

SELECT * FROM dbo.AchievementType