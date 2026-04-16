BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'eop.EducationOrganizationEducationOrganizationProgram') AND name = N'UX_EducationOrganizationEducationOrganizationProgram_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationEducationOrganizationProgram_ChangeVersion] ON [eop].[EducationOrganizationEducationOrganizationProgram] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'eop.EducationOrganizationProgramAuthorizedProvider') AND name = N'UX_EducationOrganizationProgramAuthorizedProvider_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationProgramAuthorizedProvider_ChangeVersion] ON [eop].[EducationOrganizationProgramAuthorizedProvider] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'eop.EducationOrganizationProgramProvider') AND name = N'UX_EducationOrganizationProgramProvider_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationProgramProvider_ChangeVersion] ON [eop].[EducationOrganizationProgramProvider] ([ChangeVersion] ASC)
    GO
COMMIT

