IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'idoe')
EXEC sys.sp_executesql N'CREATE SCHEMA [idoe]'
GO
