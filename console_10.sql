CREATE TABLE [Accounts]
(
    [Id] INT PRIMARY KEY IDENTITY,
    [Login] NVARCHAR(128) UNIQUE,
    [PasswordHash] NVARCHAR(256)
);

CREATE TABLE [DeletedAccounts]
(
    [Id] INT PRIMARY KEY IDENTITY,
    [Login] NVARCHAR(128) UNIQUE,
    [PasswordHash] NVARCHAR(256),
    [DeletedTimestamp] DATETIME,
    [Expires] DATETIME
)
GO
CREATE TRIGGER [AccountsOnInsert] ON [Accounts]
    AFTER INSERT
AS
BEGIN
    SELECT * FROM inserted
    PRINT N'Inserted'
END
----
ALTER TRIGGER [OnAccountDelete] ON [Accounts]
AFTER DELETE
    AS
BEGIN
    DECLARE @Now DATETIME

    SET @Now = CAST(SYSDATETIME() AS DATETIME)
PRINT N'Deleted!'
    INSERT INTO [DeletedAccounts]
    SELECT D.Login, D.PasswordHash, @Now AS [DeletedTimestamp], DATEADD(MONTH, 1, @Now) AS [Expires] FROM [DELETED] AS D
END

CREATE TRIGGER [Test123] ON DATABASE
AFTER DROP_TABLE
    AS
    BEGIN

    END


-- --
-- INSERT INTO [Accounts]
-- VALUES (N'Login11', N'abcdqwert123'),
-- (N'Login12', N'xop123');


SELECT * FROM [Accounts]

DELETE FROM [Accounts]
WHERE [Id] = 3