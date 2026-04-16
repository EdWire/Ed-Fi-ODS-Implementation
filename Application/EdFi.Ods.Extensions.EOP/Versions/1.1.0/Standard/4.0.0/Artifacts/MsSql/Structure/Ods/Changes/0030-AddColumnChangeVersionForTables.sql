
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[eop].[EducationOrganizationEducationOrganizationProgram]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationEducationOrganizationProgram_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] DROP CONSTRAINT EducationOrganizationEducationOrganizationProgram_DF_ChangeVersion;
ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] ADD CONSTRAINT EducationOrganizationEducationOrganizationProgram_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[eop].[EducationOrganizationProgramAuthorizedProvider]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [eop].[EducationOrganizationProgramAuthorizedProvider] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationProgramAuthorizedProvider_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [eop].[EducationOrganizationProgramAuthorizedProvider] DROP CONSTRAINT EducationOrganizationProgramAuthorizedProvider_DF_ChangeVersion;
ALTER TABLE [eop].[EducationOrganizationProgramAuthorizedProvider] ADD CONSTRAINT EducationOrganizationProgramAuthorizedProvider_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[eop].[EducationOrganizationProgramProvider]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [eop].[EducationOrganizationProgramProvider] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationProgramProvider_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [eop].[EducationOrganizationProgramProvider] DROP CONSTRAINT EducationOrganizationProgramProvider_DF_ChangeVersion;
ALTER TABLE [eop].[EducationOrganizationProgramProvider] ADD CONSTRAINT EducationOrganizationProgramProvider_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


