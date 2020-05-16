USE [PMC]

ALTER DATABASE [PMC] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- https://docs.microsoft.com/ru-ru/sql/t-sql/database-console-commands/dbcc-checktable-transact-sql?view=sql-server-ver15

DBCC CHECKTABLE([_AccOpt], REPAIR_ALLOW_DATA_LOSS);
GO

-- https://docs.microsoft.com/ru-ru/sql/t-sql/database-console-commands/dbcc-checkconstraints-transact-sql?view=sql-server-ver15

DBCC CHECKCONSTRAINTS("_AccOpt")
GO

ALTER DATABASE [PMC] SET MULTI_USER WITH ROLLBACK IMMEDIATE;
GO