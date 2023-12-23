-- CREATE TYPE CategoryName
-- FROM NVARCHAR(15);

-- CREATE TYPE GetProductsByCategoryName_Result AS TABLE
-- (
--     ProductId INT,
--     ProductName NVARCHAR(40)
-- );


CREATE FUNCTION GetProductsByCategoryName(@CategoryName AS CategoryName)
    RETURNS @Result TABLE
                    (
                        ProductId   INT,
                        ProductName NVARCHAR(40)
                    )
AS
BEGIN
    INSERT INTO @Result
    SELECT P.ProductID, P.ProductName
    FROM Products AS P
             INNER JOIN Categories AS C on P.CategoryID = C.CategoryID
    WHERE C.CategoryName = N'Beverages'
    RETURN
END

CREATE FUNCTION GetProductPrice(@ProductId AS INT)
    RETURNS MONEY -- Scalar (single) value
AS
BEGIN
    DECLARE @Price MONEY; -- local variable

    SET @Price = -1 -- set variable to 1

    SELECT @Price = P.UnitPrice
    FROM Products AS P
    WHERE P.ProductID = @ProductID

    RETURN @Price
END


-- SELECT dbo.GetProductPrice(-25) AS Result

ALTER PROCEDURE ProductsBetween @Begin AS MONEY,
                                @End AS MONEY
AS
BEGIN
    SELECT *
    FROM Products AS P
    WHERE P.UnitPrice BETWEEN @Begin AND @End
    ORDER BY P.UnitPrice
END
GO

CREATE TYPE ProductInfo AS TABLE
(
    ProductId INT,
    ProductName NVARCHAR(40)
);

GO
ALTER PROCEDURE GetAvailableProducts
AS
BEGIN
    SELECT P.ProductID, P.ProductName
    FROM Products AS P
    WHERE P.UnitsInStock <> 0
    RETURN;
END
GO
--
-- DECLARE @Result ProductInfo;
--
-- INSERT INTO @Result
-- EXECUTE dbo.GetAvailableProducts
--
--
-- SELECT * FROM @Result
--------------------

ALTER PROCEDURE GetAvailableProductCount
@OutputResult AS INT OUTPUT
AS
    BEGIN
        SELECT @OutputResult = COUNT(P.ProductID)
        FROM Products AS P
        WHERE P.UnitsInStock <> 0

        SELECT P.ProductID, P.ProductName
        FROM Products AS P
        WHERE P.UnitsInStock <> 0
    END


DECLARE @ProdCount INT
DECLARE @Prods ProductInfo;


INSERT INTO @Prods
EXECUTE dbo.GetAvailableProductCount @OutputResult = @ProdCount OUTPUT

SELECT @ProdCount
SELECT * FROM @Prods


---------------


DECLARE @ProdId INT

SET @ProdId = 6


DECLARE @UnitsInStock INT

SELECT @UnitsInStock = P.UnitsInStock
FROM Products AS P
WHERE P.ProductID = @ProdId

IF (@UnitsInStock = 0)
BEGIN
   SELECT N'Product is not available!'
END
ELSE
BEGIN
    SELECT N'Product available!'
END



