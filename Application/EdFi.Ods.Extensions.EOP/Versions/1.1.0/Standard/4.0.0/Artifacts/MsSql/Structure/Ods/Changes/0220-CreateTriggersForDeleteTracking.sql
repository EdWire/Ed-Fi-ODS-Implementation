DROP TRIGGER IF EXISTS [eop].[eop_EducationOrganizationEducationOrganizationProgram_TR_DeleteTracking]
GO

CREATE TRIGGER [eop].[eop_EducationOrganizationEducationOrganizationProgram_TR_DeleteTracking] ON [eop].[EducationOrganizationEducationOrganizationProgram] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_eop].[EducationOrganizationEducationOrganizationProgram](OldBeginDate, OldEducationOrganizationId, OldEducationOrganizationProgramTypeDescriptorId, OldEducationOrganizationProgramTypeDescriptorNamespace, OldEducationOrganizationProgramTypeDescriptorCodeValue, Id, Discriminator, ChangeVersion)
    SELECT d.BeginDate, d.EducationOrganizationId, d.EducationOrganizationProgramTypeDescriptorId, j0.Namespace, j0.CodeValue, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.EducationOrganizationProgramTypeDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] ENABLE TRIGGER [eop_EducationOrganizationEducationOrganizationProgram_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [eop].[eop_EducationOrganizationProgramAuthorizedProvider_TR_DeleteTracking]
GO

CREATE TRIGGER [eop].[eop_EducationOrganizationProgramAuthorizedProvider_TR_DeleteTracking] ON [eop].[EducationOrganizationProgramAuthorizedProvider] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_eop].[EducationOrganizationProgramAuthorizedProvider](OldBeginDate, OldEducationOrganizationProgramTypeDescriptorId, OldEducationOrganizationProgramTypeDescriptorNamespace, OldEducationOrganizationProgramTypeDescriptorCodeValue, OldNameOfInstitution, Id, Discriminator, ChangeVersion)
    SELECT d.BeginDate, d.EducationOrganizationProgramTypeDescriptorId, j0.Namespace, j0.CodeValue, d.NameOfInstitution, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.EducationOrganizationProgramTypeDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [eop].[EducationOrganizationProgramAuthorizedProvider] ENABLE TRIGGER [eop_EducationOrganizationProgramAuthorizedProvider_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [eop].[eop_EducationOrganizationProgramProvider_TR_DeleteTracking]
GO

CREATE TRIGGER [eop].[eop_EducationOrganizationProgramProvider_TR_DeleteTracking] ON [eop].[EducationOrganizationProgramProvider] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_eop].[EducationOrganizationProgramProvider](OldNameOfInstitution, Id, Discriminator, ChangeVersion)
    SELECT d.NameOfInstitution, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [eop].[EducationOrganizationProgramProvider] ENABLE TRIGGER [eop_EducationOrganizationProgramProvider_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [eop].[eop_EducationOrganizationProgramTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [eop].[eop_EducationOrganizationProgramTypeDescriptor_TR_DeleteTracking] ON [eop].[EducationOrganizationProgramTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EducationOrganizationProgramTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'eop.EducationOrganizationProgramTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EducationOrganizationProgramTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [eop].[EducationOrganizationProgramTypeDescriptor] ENABLE TRIGGER [eop_EducationOrganizationProgramTypeDescriptor_TR_DeleteTracking]
GO


