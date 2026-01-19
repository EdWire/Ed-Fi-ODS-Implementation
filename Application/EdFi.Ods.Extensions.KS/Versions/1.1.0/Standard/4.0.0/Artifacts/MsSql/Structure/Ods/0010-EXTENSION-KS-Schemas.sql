IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'ks')
EXEC sys.sp_executesql N'CREATE SCHEMA [ks]'
GO
