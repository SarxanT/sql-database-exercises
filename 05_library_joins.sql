-- Library Database: Joins
-- Microsoft SQL Server (T-SQL) learning exercise; run against the named sample database.
-- Refurbished from a learning exercise; maintain the original learning objective.

USE Library

/* 1. Minimum number of pages of books by each publishing house */
SELECT P.[Name], MIN(B.Pages) AS [Min Count]
FROM Press AS P INNER JOIN Books AS B ON P.Id = B.Id_Press
GROUP BY P.[Name]
GO

/* 2. Publishers with books averaging more than 100 pages */
SELECT P.[Name], AVG(B.Pages)
FROM Press AS P INNER JOIN Books AS B ON P.Id = B.Id_Press
GROUP BY P.[Name]
HAVING AVG(B.Pages) > 100
GO

/* 3. Total pages published by BHV and Binom */
SELECT P.[Name] AS [P_NAME], SUM(B.Pages) AS [SUM OF PAGES]
FROM Press AS P INNER JOIN Books AS B ON P.Id = B.Id_Press
WHERE P.[Name] = 'BHV' OR P.[Name] = 'Binom'
GROUP BY P.[Name]
GO

/* 4. Students who borrowed books from January 1, 2001 to today */
SELECT ST.FirstName
FROM S_Cards AS SC INNER JOIN Students AS ST ON SC.Id_Student = ST.Id
WHERE SC.DateOut >= '20010101' AND SC.DateOut <= GETDATE()
GO

/* 5. Students currently borrowing Windows 2000 Registry */
SELECT ST.FirstName + ' ' + ST.LastName AS FullName, SC.DateIn, B.[Name]
FROM S_Cards AS SC INNER JOIN Students AS ST ON SC.Id_Student = ST.Id
INNER JOIN Books AS B ON SC.Id_Book = B.Id
WHERE SC.DateIn IS NULL AND B.[Name] = 'Windows 2000 Registry'
GO

/* 6. Authors whose average book length exceeds 600 pages */
SELECT A.Id, A.FirstName, A.LastName
FROM Books AS B RIGHT JOIN Authors AS A ON B.Id_Author = A.Id
GROUP BY A.Id, A.FirstName, A.LastName
HAVING AVG(B.Pages) > 600
GO

/* 7. Publishers with more than 700 total published pages */
SELECT P.Id, P.[Name]
FROM Books AS B INNER JOIN Press AS P ON B.Id_Press = P.Id
GROUP BY P.[Name], P.Id
HAVING SUM(B.Pages) > 700
