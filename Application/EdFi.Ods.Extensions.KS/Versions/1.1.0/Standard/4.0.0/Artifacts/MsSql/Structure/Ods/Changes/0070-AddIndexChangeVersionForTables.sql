BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ks.SectionEducator') AND name = N'UX_SectionEducator_ChangeVersion')
    CREATE INDEX [UX_SectionEducator_ChangeVersion] ON [ks].[SectionEducator] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ks.SnackPack') AND name = N'UX_SnackPack_ChangeVersion')
    CREATE INDEX [UX_SnackPack_ChangeVersion] ON [ks].[SnackPack] ([ChangeVersion] ASC)
    GO
COMMIT

