IF OBJECT_ID(N'edfi.audit_OrphanedKeysHash', N'U') IS NOT NULL
	SET NOEXEC ON;
GO

CREATE TABLE [edfi].[audit_OrphanedKeysHash]
(
    [TableName]     [varchar](256),
    [CommonKeyHash] [binary](256),
    [PkHash]        [binary](256),
    CONSTRAINT [pk_edfi_audit_OrphanedKeysHash]
        PRIMARY KEY ([TableName], [CommonKeyHash], [PkHash])
)
GO

SET NOEXEC OFF;
GO