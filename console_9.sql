-- ACID
-- A - Atomicity
-- C - Consistency
-- I - Isolation
-- D - Durability

CREATE TABLE Cards
(
    [Number] NVARCHAR(16) NOT NULL,
    [Balance] DECIMAL,
    [Expires] DATE
)
GO
insert into Cards (Number, Balance, Expires) values ('4041371106964', 71, '5/17/2023');
insert into Cards (Number, Balance, Expires) values ('4041376943544', 46, '3/25/2023');
insert into Cards (Number, Balance, Expires) values ('4799797324688678', 16, '4/8/2023');
insert into Cards (Number, Balance, Expires) values ('4659359747642078', 98, '8/9/2023');
insert into Cards (Number, Balance, Expires) values ('4041376106662', 94, '5/2/2023');
insert into Cards (Number, Balance, Expires) values ('4041590964376464', 61, '10/21/2023');
insert into Cards (Number, Balance, Expires) values ('4041371680189642', 50, '10/24/2023');
insert into Cards (Number, Balance, Expires) values ('4041596500892', 27, '5/5/2023');
insert into Cards (Number, Balance, Expires) values ('4518115940410', 56, '2/6/2023');
insert into Cards (Number, Balance, Expires) values ('4041593708126', 70, '9/8/2023');

CREATE PROCEDURE [WithDraw]
    @Amount DECIMAL, @From NVARCHAR(16), @To NVARCHAR(16)
AS
BEGIN
BEGIN TRANSACTION

UPDATE [Cards]
SET Balance = Balance - @Amount
WHERE Number = @From

IF ((SELECT [Balance] FROM [Cards] WHERE [Number] = @From) < 0)
BEGIN
    PRINT N'Rollback transaction'
    ROLLBACK TRANSACTION
END

SAVE TRANSACTION [SufficientFunds]

UPDATE [Cards]
SET Balance = Balance + @Amount
WHERE Number = @To

-- ROLLBACK TRANSACTION [SufficientFunds]

COMMIT TRANSACTION
END

--
DECLARE @Amount DECIMAL
SET @Amount = 2

DECLARE @From NVARCHAR(16)
SET @From = N'4041596500892'

DECLARE @To NVARCHAR(16)
SET @To = N'4041376943544'

EXECUTE dbo.WithDraw @Amount, @From, @To

--
-- SET implicit_transactions ON
--
-- UPDATE [Cards]
-- SET [Balance] = 100
-- GO
-- UPDATE [Cards]
-- SET [Balance] = [Balance] + 100
--
-- COMMIT TRANSACTION