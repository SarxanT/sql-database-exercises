-- Academy Database: Related Tables
-- Microsoft SQL Server (T-SQL) learning exercise; run against the named sample database.
-- Refurbished from a learning exercise; maintain the original learning objective.

IF DB_ID(N'AcademyHW5') IS NULL CREATE DATABASE AcademyHW5;
GO
USE AcademyHW5;
GO

CREATE TABLE Curators
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    [Name] nvarchar(max) NOT NULL CHECK([Name] <> ''),
    Surname nvarchar(max) NOT NULL CHECK(Surname <> '')
)
GO
CREATE TABLE Faculties
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Financing MONEY NOT NULL CHECK(Financing >= 0) DEFAULT 0,
    [Name] nvarchar(100) NOT NULL CHECK([Name] <> '') UNIQUE
)
GO
CREATE TABLE Departments
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    Financing MONEY NOT NULL CHECK(Financing >= 0) DEFAULT 0,
    [Name] nvarchar(100) NOT NULL CHECK([Name] <> '') UNIQUE,
    FacultyId INT NOT NULL FOREIGN KEY REFERENCES Faculties (Id)
)
GO
CREATE TABLE Groups
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    [Name] nvarchar(10) NOT NULL CHECK([Name] <> '') UNIQUE,
    [Year] INT NOT NULL CHECK([Year] BETWEEN 1 AND 5),
    DepartmentId INT NOT NULL FOREIGN KEY REFERENCES Departments(Id)
)
GO
CREATE TABLE Subjects
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    [Name] nvarchar(100) NOT NULL CHECK([Name] <> '') UNIQUE
)
GO
CREATE TABLE Teachers
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    [Name] nvarchar(max) NOT NULL CHECK([Name] <> ''),
    Salary MONEY NOT NULL CHECK(Salary > 0),
    Surname nvarchar(max) NOT NULL CHECK(Surname <> '')
)
GO
CREATE TABLE Lectures
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    LectureRoom nvarchar(max) NOT NULL CHECK(LectureRoom <> ''),
    SubjectId INT NOT NULL FOREIGN KEY REFERENCES Subjects (Id),
    TeacherId INT NOT NULL FOREIGN KEY REFERENCES Teachers (Id)
)
GO
CREATE TABLE GroupsCurators
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    CuratorId INT NOT NULL FOREIGN KEY REFERENCES Curators (Id),
    GroupId INT NOT NULL FOREIGN KEY REFERENCES Groups (Id)
)
GO
CREATE TABLE GroupsLectures
(
    Id INT NOT NULL PRIMARY KEY IDENTITY,
    GroupId INT NOT NULL FOREIGN KEY REFERENCES Groups (Id),
    LectureId INT NOT NULL FOREIGN KEY REFERENCES Lectures (Id)
)
GO
