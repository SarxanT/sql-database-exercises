-- Library Database: UNION and Joins
-- Microsoft SQL Server (T-SQL) learning exercise; run against the named sample database.
-- Refurbished from a learning exercise; maintain the original learning objective.

SELECT s.Id, s.FirstName, s.LastName, B.Name
FROM Students as s inner join S_Cards as sc
on s.Id = sc.Id_Student
INNER JOIN Books AS b
ON b.Id = sc.Id_Book

union

SELECT t.Id, t.FirstName, t.LastName, B.Name
FROM Teachers AS T
inner join T_Cards as tc
on T.Id = tc.Id_Teacher
INNER JOIN Books AS b
on tc.Id_Book = b.Id

/* 9 */

SELECT AU.FirstName + ' ' + AU.LastName AS [Popular Author], COUNT(SC.Id_Book) as [Numbers Used]
FROM Students AS S INNER JOIN S_Cards AS SC
ON S.Id = SC.Id_Student
INNER JOIN Books AS B
ON B.Id = SC.Id_Book
INNER JOIN Authors AS AU
ON B.Id_Author = AU.Id
GROUP BY AU.FirstName, au.LastName, SC.Id_Book
HAVING MAX(SC.Id_Book) = COUNT(SC.Id_Book)

SELECT TOP (3) COUNT(SC.Id_Book)
FROM S_Cards AS SC
GROUP BY Id_Book
