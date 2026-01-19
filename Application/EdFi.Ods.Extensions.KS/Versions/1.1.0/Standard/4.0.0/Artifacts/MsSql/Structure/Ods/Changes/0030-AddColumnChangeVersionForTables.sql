
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[ks].[SectionEducator]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [ks].[SectionEducator] ADD [ChangeVersion] [BIGINT] CONSTRAINT SectionEducator_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [ks].[SectionEducator] DROP CONSTRAINT SectionEducator_DF_ChangeVersion;
ALTER TABLE [ks].[SectionEducator] ADD CONSTRAINT SectionEducator_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[ks].[SnackPack]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [ks].[SnackPack] ADD [ChangeVersion] [BIGINT] CONSTRAINT SnackPack_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [ks].[SnackPack] DROP CONSTRAINT SnackPack_DF_ChangeVersion;
ALTER TABLE [ks].[SnackPack] ADD CONSTRAINT SnackPack_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


