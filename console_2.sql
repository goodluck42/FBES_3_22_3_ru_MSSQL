-- SELECT [C].[ContactTitle] AS CN, [ContactTitle]
-- FROM [Customers] AS C
-- WHERE [ContactTitle] <> N'Owner'

GO

-- SELECT *
-- FROM [Customers] AS C
-- WHERE [C].[ContactTitle] LIKE N'%Sales%'

GO

-- SELECT TOP 1 *
-- FROM [Customers] AS C
-- WHERE [C].[ContactTitle] LIKE N'[а-я]Sales%'
-- ORDER BY [C].[ContactName]



GO

CREATE TABLE [Items]
(
    [Id] INT PRIMARY KEY IDENTITY(1, 1),
    [Name] VARCHAR(450) UNIQUE,
    [Quantity] INT CHECK([Quantity] > 0),
    [Description] VARCHAR(MAX)
)

-- INSERT INTO [Items]
-- VALUES ('Sausage', 1, 'Good and healthy sausage!'),
--        ('Potato', 6, 'Good and healthy potato!'),
--        ('Tomator', 6, 'Good and healthy tomator!'),
--        ('Cucumber', 6, 'Good and healthy cucumber!'),
--        ('Cheese', 6, 'Good and healthy cheese!'),
--        ('Fish', 6, 'Good and healthy fish!');

DELETE FROM [Items]
WHERE [Items].[Name] = 'Cucumber'

-- INSERT INTO [Items]
-- VALUES ('Cucumber', 6, 'Good and healthy cucumber!')

-- UPDATE [Items]
-- SET [Items].[Name] = 'Tomato'
-- WHERE [Items].[Id] = 3
