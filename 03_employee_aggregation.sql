-- Employee Filtering and Aggregation
-- Microsoft SQL Server (T-SQL) learning exercise; run against the named sample database.
-- Refurbished from a learning exercise; maintain the original learning objective.

USE Employees

-- TASK 1. Get empid, firstname, lastname, country, region, city of all employees from USA
SELECT BusinessEntityID, FirstName, LastName, CountryRegionName, StateProvinceName, City
FROM Employees
WHERE CountryRegionName = 'United States'

-- TASK 2. Get the number of employees for each specialty
SELECT JobTitle, count(*) as [Count]
FROM Employees
GROUP BY JobTitle

-- TASK 3. Count the number of people for each name
SELECT FirstName, COUNT(*) AS [Count]
FROM Employees
GROUP BY FirstName

-- TASK 4. Get the most common name
SELECT FirstName
FROM Employees
GROUP BY FirstName
HAVING COUNT(FirstName) = (SELECT TOP(1) COUNT(FirstName)
                          FROM Employees
                          GROUP BY FirstName
                          ORDER BY COUNT(FirstName) DESC)

-- TASK 5. Get the least common name
SELECT FirstName
FROM Employees
GROUP BY FirstName
HAVING COUNT(FirstName) = (SELECT TOP(1) COUNT(FirstName)
                          FROM Employees
                          GROUP BY FirstName
                          ORDER BY COUNT(FirstName) ASC)

-- TASK 6. Get the top 5 cities where the most workers are.
SELECT TOP(5) City
FROM Employees
GROUP BY City
ORDER BY COUNT(*) DESC

-- TASK 7. Get the top 5 cities, which have the most unique specialties
SELECT TOP(5) City
FROM Employees
GROUP BY City
ORDER BY COUNT(DISTINCT JobTitle) DESC

-- TASK 8. Issue mailing addresses for employees who started on 1/01/2012
SELECT EmailAddress
FROM Employees
WHERE CAST(StartDate AS date) = '20120101'

-- TASK 9. Statistics on how many employees were employed each year
SELECT YEAR(StartDate) as [Year], COUNT(FirstName) as [Count Employees]
FROM Employees
GROUP BY YEAR(StartDate)

-- TASK 10. Statistics on employees employed per country and year
SELECT YEAR(StartDate) as [YEAR], CountryRegionName, COUNT(FirstName) as [Count]
FROM Employees
GROUP BY YEAR(StartDate), CountryRegionName

-- TASK 11. Update Employees with EndDate from History
-- CAUTION: This statement modifies sample data; review before running.
UPDATE Employees
SET EndDate = History.EndDate
FROM History, Employees
WHERE History.BusinessEntityID = Employees.BusinessEntityID

-- TASK 12. Statistics on employees by start year (original exercise)
SELECT YEAR(StartDate) AS [YEAR], COUNT(BusinessEntityID) AS [Count of employees]
FROM Employees
GROUP BY YEAR(StartDate)

-- TASK 13. Count employees who have worked less than a year (original exercise)
SELECT COUNT(BusinessEntityID) AS [Count of employees]
FROM Employees
WHERE YEAR(StartDate) - YEAR(EndDate) < 1

SELECT *
FROM Employees
