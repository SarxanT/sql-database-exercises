-- Academy Database: Basic Tables
-- Microsoft SQL Server (T-SQL) learning exercise; run against the named sample database.
-- Refurbished from a learning exercise; maintain the original learning objective.

IF DB_ID(N'Academy') IS NULL CREATE DATABASE Academy;
GO
USE Academy;
GO
IF OBJECT_ID(N'dbo.Groups', N'U') IS NOT NULL DROP TABLE dbo.Groups;

CREATE TABLE Groups
(
    ID Int PRIMARY KEY IDENTITY,
    [Name] nvarchar(10) NOT NULL UNIQUE CHECK ([Name] <> ''),
    Rating Int NOT NULL CHECK (Rating >=0 AND Rating <6),
    [Year] Int NOT NULL CHECK ([Year] >=0 AND [Year] <6)
)
GO
IF OBJECT_ID(N'dbo.Chairs', N'U') IS NOT NULL DROP TABLE dbo.Chairs;

CREATE TABLE Chairs
(
    ID Int PRIMARY KEY IDENTITY(1,1),
    Financing Money NOT NULL DEFAULT 0 CHECK (Financing >=0),
    [Name] nvarchar(100) NOT NULL UNIQUE CHECK ([Name] <> '')
)
GO
IF OBJECT_ID(N'dbo.Faculties', N'U') IS NOT NULL DROP TABLE dbo.Faculties;

CREATE TABLE Faculties
(
    ID Int PRIMARY KEY IDENTITY,
    [Name] nvarchar(100) NOT NULL UNIQUE CHECK ([Name] <>'')
)
GO
IF OBJECT_ID(N'dbo.Teachers', N'U') IS NOT NULL DROP TABLE dbo.Teachers;

CREATE TABLE Teachers
(
    ID Int PRIMARY KEY NOT NULL IDENTITY,
    EmploymentDate date NOT NULL CHECK (EmploymentDate > '19900101'),
    [Name] nvarchar(max) NOT NULL CHECK ([Name] <> ''),
    Premium money NOT NULL CHECK (Premium >= 0) DEFAULT 0,
    Salary money NOT NULL CHECK (Salary >0),
    Surname nvarchar(max) NOT NULL CHECK (Surname <> '')
)

SELECT * FROM Groups;
SELECT * FROM Chairs;
SELECT * FROM Faculties;
SELECT * FROM Teachers;
