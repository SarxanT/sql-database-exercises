-- Academy Database: SELECT Practice
-- Microsoft SQL Server (T-SQL) learning exercise; run against the named sample database.
-- Refurbished from a learning exercise; maintain the original learning objective.

USE Academy;

-- Original exercise answers remain commented out intentionally.
-- Uncomment and adapt individual queries to the database schema you use.

-- TASK 1
--SELECT *
--FROM DEPARTMENTS

-- TASK 2
--SELECT [Name], [Rating]
--FROM Groups

-- TASK 3
--SELECT Surname, Premium, Salary
--From Teachers

-- TASK 4
--SELECT CONCAT('The dean of faculty', [Name], ' is ', Dean)
--FROM Faculties

-- TASK 5
--SELECT [Name]
--FROM Teachers
--WHERE IsProfessor = 1 AND Salary > 1050

-- TASK 6
--SELECT [NAME]
--FROM Departments
--WHERE Financing BETWEEN 11000 AND 25000

-- TASK 7
--SELECT [Name]
--From Faculties
--Where [Name] <> 'Computer Science'

-- TASK 8
--SELECT [Name], Position
--FROM Teachers
--Where IsProfessor = 0

-- TASK 9
--SELECT Surname, Position, Salary, Premium
--FROM Teachers
--WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550

-- TASK 10
--SELECT Surname, Salary
--FROM Teachers
--WHERE IsAssistant = 1

-- TASK 11
--SELECT Surname, Position
--FROM Teachers
--WHERE EmploymentDate < '01-01-2000'

-- TASK 12
--SELECT [Name] AS Name of Department
--FROM Departments
--WHERE [Name] <= 'Software Development Department'
--ORDER BY name ASC;

-- TASK 13
--SELECT [Name]
--FROM Teachers
--WHERE Salary <= 1200 AND Premium <=1200

-- TASK 14
--SELECT [Name]
--FROM Groups
--WHERE [Year] = 5 AND Rating BETWEEN 2 AND 4

-- TASK 15
--SELECT [Name]
--FROM Teachers
--WHERE Salary < 550 OR Premium < 200
