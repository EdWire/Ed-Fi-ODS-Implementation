DROP TRIGGER IF EXISTS [edorgprogram].[edorgprogram_EducationOrganizationEducationOrganizationProgram_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [edorgprogram].[edorgprogram_EducationOrganizationEducationOrganizationProgram_TR_UpdateChangeVersion] ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edorgprogram].[EducationOrganizationEducationOrganizationProgram]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edorgprogram].[EducationOrganizationEducationOrganizationProgram] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [edorgprogram].[edorgprogram_EducationOrganizationProgramAuthorizedProvider_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [edorgprogram].[edorgprogram_EducationOrganizationProgramAuthorizedProvider_TR_UpdateChangeVersion] ON [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [edorgprogram].[edorgprogram_EducationOrganizationProgramProvider_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [edorgprogram].[edorgprogram_EducationOrganizationProgramProvider_TR_UpdateChangeVersion] ON [edorgprogram].[EducationOrganizationProgramProvider] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [edorgprogram].[EducationOrganizationProgramProvider]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [edorgprogram].[EducationOrganizationProgramProvider] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

