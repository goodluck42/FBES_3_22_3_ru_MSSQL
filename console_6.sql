---- INNER JOIN
-- SELECT TOP 10 O.Freight, O.ShipName, O.ShipAddress, S.CompanyName
-- FROM [Orders] AS O
-- INNER JOIN [Shippers] AS S ON S.ShipperID = O.OrderID

-- SELECT P.ProductName, C.CategoryName
-- FROM [Products] AS P -- LEFT
-- RIGHT JOIN [Categories] AS C ON C.CategoryID = P.CategoryID -- RIGHT
-- WHERE P.CategoryID IS NULL


SELECT P.ProductName, C.CategoryName
FROM [Categories] AS C -- LEFT
LEFT JOIN [Products] AS P ON C.CategoryID = P.CategoryID -- RIGHT
WHERE P.CategoryID IS NULL

