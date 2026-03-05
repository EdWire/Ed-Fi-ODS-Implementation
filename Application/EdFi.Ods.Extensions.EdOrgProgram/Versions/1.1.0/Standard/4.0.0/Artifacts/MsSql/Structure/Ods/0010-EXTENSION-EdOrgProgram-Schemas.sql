IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'edorgprogram')
EXEC sys.sp_executesql N'CREATE SCHEMA [edorgprogram]'
GO
