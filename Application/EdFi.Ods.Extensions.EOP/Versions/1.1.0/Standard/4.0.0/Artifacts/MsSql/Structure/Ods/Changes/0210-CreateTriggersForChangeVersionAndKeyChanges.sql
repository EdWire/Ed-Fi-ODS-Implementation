DROP TRIGGER IF EXISTS [eop].[eop_EducationOrganizationEducationOrganizationProgram_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [eop].[eop_EducationOrganizationEducationOrganizationProgram_TR_UpdateChangeVersion] ON [eop].[EducationOrganizationEducationOrganizationProgram] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [eop].[EducationOrganizationEducationOrganizationProgram]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [eop].[EducationOrganizationEducationOrganizationProgram] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [eop].[eop_EducationOrganizationProgramAuthorizedProvider_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [eop].[eop_EducationOrganizationProgramAuthorizedProvider_TR_UpdateChangeVersion] ON [eop].[EducationOrganizationProgramAuthorizedProvider] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [eop].[EducationOrganizationProgramAuthorizedProvider]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [eop].[EducationOrganizationProgramAuthorizedProvider] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [eop].[eop_EducationOrganizationProgramProvider_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [eop].[eop_EducationOrganizationProgramProvider_TR_UpdateChangeVersion] ON [eop].[EducationOrganizationProgramProvider] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [eop].[EducationOrganizationProgramProvider]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [eop].[EducationOrganizationProgramProvider] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

