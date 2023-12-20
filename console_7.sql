-- CREATE VIEW [Top10ExpensiveProducts] AS
-- SELECT TOP 10 P.ProductName, P.UnitPrice
-- FROM [Products] AS P
-- ORDER BY P.UnitPrice DESC

-- SELECT * FROM Top10ExpensiveProducts

-- CREATE VIEW [EmployeesData] AS
-- SELECT E.FirstName, E.LastName, E.Title
-- FROM Employees AS E

-- SELECT * FROM [Employees]
-- SELECT * FROM [EmployeesData]

-- UPDATE [EmployeesData]
-- SET [EmployeesData].FirstName = N'Gleb'
-- WHERE [EmployeesData].FirstName = N'Nancy'


-- ALTER VIEW [EmployeesData] AS
-- SELECT E.FirstName, E.LastName, E.Title, E.Country
-- FROM [Employees] AS E

-- SELECT *
-- FROM [EmployeesData] AS ED
-- WHERE ED.Country = N'USA'

-- DROP VIEW [Top10ExpensiveProducts]

SELECT ED.FirstName, ED.Title, CountryName = CASE
WHEN ED.Country = N'USA' THEN N'The United States of America'
WHEN ED.Country = N'UK' THEN 'United Kingdom'
ELSE ED.Country
END
FROM [EmployeesData] AS ED


SELECT * FROM [Invoices]