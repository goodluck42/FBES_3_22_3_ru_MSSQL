SELECT P.ProductName, (
    SELECT AVG(IP.UnitPrice)
    FROM Products AS IP
)
FROM Products AS P