-- SELECT *
-- FROM Products AS P
-- WHERE P.UnitPrice > (
--     SELECT AVG(P.UnitPrice)
--     FROM Products AS P
-- )
-- ORDER BY P.UnitPrice


-- SELECT P.ProductName, (SELECT C.CategoryName
--                        FROM Categories AS C
--                        WHERE P.CategoryID = C.CategoryID) AS CategoryName
-- FROM Products AS P

-- SELECT *
-- FROM Products AS P
-- ORDER BY P.ProductID
-- OFFSET 10 ROWS
-- FETCH NEXT 5 ROWS ONLY

--- UNION
-- SELECT TOP 5 P.ProductID AS Id, P.ProductName AS Name
-- FROM Products AS P
-- UNION
-- SELECT TOP 10 P.ProductID AS Id, P.ProductName AS Name
-- FROM Products AS P


---- UNION ALL

-- SELECT TOP 5 P.ProductID AS Id, P.ProductName AS Name
-- FROM Products AS P
-- UNION ALL
-- SELECT TOP 10 P.ProductID AS Id, P.ProductName AS Name
-- FROM Products AS P

---- INTERSECT
-- (
--     SELECT *
--     FROM (SELECT P.ProductID AS Id, P.ProductName AS Name
--     FROM Products AS P
--     ORDER BY P.ProductID
--     OFFSET 25 ROWS
--     FETCH NEXT 10 ROWS ONLY) AS R
-- )
-- INTERSECT
-- (
--     SELECT *
--     FROM(SELECT P.ProductID AS Id, P.ProductName AS Name
--     FROM Products AS P
--     ORDER BY P.ProductID
--     OFFSET 30 ROWS FETCH NEXT 10 ROWS ONLY) AS R2
-- )


---- EXCEPT

(
    SELECT *
    FROM (SELECT P.ProductID AS Id, P.ProductName AS Name
    FROM Products AS P
    ORDER BY P.ProductID
    OFFSET 25 ROWS
    FETCH NEXT 10 ROWS ONLY) AS R
)
EXCEPT
(
    SELECT *
    FROM(SELECT P.ProductID AS Id, P.ProductName AS Name
    FROM Products AS P
    ORDER BY P.ProductID
    OFFSET 30 ROWS FETCH NEXT 10 ROWS ONLY) AS R2
)