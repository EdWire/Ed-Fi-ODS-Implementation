IF OBJECT_ID(N'edfi.audit_DeleteLogs', N'U') IS NOT NULL 
    SET NOEXEC ON;
GO

CREATE TABLE [edfi].[audit_DeleteLogs]
(
    [EdFiTableName]   NVARCHAR(256),
    [EdfiPkHash]      BINARY(256),
    [DeleteProcessed] DATETIME,
    CONSTRAINT [pk_edfi_audit_DeleteLogs] 
        PRIMARY KEY ([EdFiTableName], [EdfiPkHash])
);
GO

SET NOEXEC OFF;