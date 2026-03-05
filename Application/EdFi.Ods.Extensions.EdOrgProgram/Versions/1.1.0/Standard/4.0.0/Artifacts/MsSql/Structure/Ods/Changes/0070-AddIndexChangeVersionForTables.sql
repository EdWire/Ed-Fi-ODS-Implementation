BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edorgprogram.EducationOrganizationEducationOrganizationProgram') AND name = N'UX_EducationOrganizationEducationOrganizationProgram_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationEducationOrganizationProgram_ChangeVersion] ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edorgprogram.EducationOrganizationProgramAuthorizedProvider') AND name = N'UX_EducationOrganizationProgramAuthorizedProvider_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationProgramAuthorizedProvider_ChangeVersion] ON [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edorgprogram.EducationOrganizationProgramProvider') AND name = N'UX_EducationOrganizationProgramProvider_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationProgramProvider_ChangeVersion] ON [edorgprogram].[EducationOrganizationProgramProvider] ([ChangeVersion] ASC)
    GO
COMMIT

