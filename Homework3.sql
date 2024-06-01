SELECT * FROM [dbo].[Grade]
SELECT * FROM[dbo].[Teacher]

SELECT t.ID, t.FirstName, COUNT(g.Grade) 
AS NumberOfGrades
FROM [dbo].[Teacher] t
JOIN 
[dbo].[Grade] g ON t.ID = g.TeacherID
GROUP BY t.ID, t.FirstName;

SELECT COUNT(*) 
AS GradesPerTeacher
FROM [dbo].[Teacher] t
INNER JOIN 
[dbo].[Student] s ON t.ID=s.ID
WHERE s.ID <100
GO

SELECT Max(g.Grade)AS MaximalGrade,
AVG(g.Grade) AS AverageGrade 
FROM [dbo].[Student]s
 JOIN 
 [dbo].[Grade] g ON s.Id=g.StudentID
GROUP BY s.Id
GO
SELECT 
    s.Id as StudentId, 
    COUNT(g.Grade) AS TotalGrades, 
    MAX(g.Grade) AS MaximalGrade, 
    AVG(g.Grade) AS AverageGrade, 
    s.FirstName, 
    s.LastName
FROM 
    [dbo].[Student] s
JOIN 
    [dbo].[Grade] g 
    ON s.Id = g.StudentId
GROUP BY 
    s.Id, s.FirstName, s.LastName
HAVING 
    MAX(g.Grade) = AVG(g.Grade)
GO


SELECT s.Id as StudentId,
COUNT(g.Grade) AS Grade ,
MAX (g.Grade) AS MaxGrade,
AVG(g.Grade) AS AvgGrade,
s.FirstName,s.LastName
FROM 
[dbo].[Student] s
INNER JOIN 
[dbo].[Grade] g ON s.Id=g.StudentID
GROUP BY s.Id,s.FirstName,s.LastName
GO
CREATE VIEW VW_StudentsGrades AS
SELECT s.Id AS StudentId,
COUNT (g.Grade) AS GradeCount
FROM [dbo].Student s
JOIN 
[dbo].[Grade] g ON s.ID=g.StudentID
GROUP BY
s.ID
GO
SELECT VW_StudentsGrades.GradeCount AS GradeCount, VW_StudentsGrades.StudentId AS StudentID FROM VW_StudentsGrades

ALTER VIEW VW_StudentsGrades AS
SELECT s.FirstName,
s.LastName,
COUNT(g.Grade) AS GradeCount 
FROM [dbo].[Student] s
JOIN 
[dbo].[Grade] g ON s.Id=g.StudentID 
GROUP BY s.FirstName, s.LastName
GO
SELECT * FROM VW_StudentsGrades

SELECT * 
FROM VW_StudentGrades
ORDER BY GradeCOUNT DESC