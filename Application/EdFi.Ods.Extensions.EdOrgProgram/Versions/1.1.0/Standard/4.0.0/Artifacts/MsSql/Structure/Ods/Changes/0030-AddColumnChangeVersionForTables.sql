
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edorgprogram].[EducationOrganizationEducationOrganizationProgram]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationEducationOrganizationProgram_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] DROP CONSTRAINT EducationOrganizationEducationOrganizationProgram_DF_ChangeVersion;
ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ADD CONSTRAINT EducationOrganizationEducationOrganizationProgram_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edorgprogram].[EducationOrganizationProgramAuthorizedProvider]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationProgramAuthorizedProvider_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] DROP CONSTRAINT EducationOrganizationProgramAuthorizedProvider_DF_ChangeVersion;
ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ADD CONSTRAINT EducationOrganizationProgramAuthorizedProvider_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edorgprogram].[EducationOrganizationProgramProvider]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationProgramProvider_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] DROP CONSTRAINT EducationOrganizationProgramProvider_DF_ChangeVersion;
ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] ADD CONSTRAINT EducationOrganizationProgramProvider_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


