IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tx')
EXEC sys.sp_executesql N'CREATE SCHEMA [tx]'
GO
