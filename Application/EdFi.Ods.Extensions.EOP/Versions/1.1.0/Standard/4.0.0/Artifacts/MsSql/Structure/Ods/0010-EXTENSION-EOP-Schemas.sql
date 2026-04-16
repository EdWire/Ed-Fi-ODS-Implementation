IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'eop')
EXEC sys.sp_executesql N'CREATE SCHEMA [eop]'
GO
