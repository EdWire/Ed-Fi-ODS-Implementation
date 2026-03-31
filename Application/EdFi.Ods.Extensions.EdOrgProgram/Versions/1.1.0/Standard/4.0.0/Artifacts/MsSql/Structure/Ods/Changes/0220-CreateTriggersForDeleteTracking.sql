DROP TRIGGER IF EXISTS [edorgprogram].[edorgprogram_EducationOrganizationEducationOrganizationProgram_TR_DeleteTracking]
GO

CREATE TRIGGER [edorgprogram].[edorgprogram_EducationOrganizationEducationOrganizationProgram_TR_DeleteTracking] ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edorgprogram].[EducationOrganizationEducationOrganizationProgram](OldBeginDate, OldEducationOrganizationId, OldEducationOrganizationProgramTypeDescriptorId, OldEducationOrganizationProgramTypeDescriptorNamespace, OldEducationOrganizationProgramTypeDescriptorCodeValue, Id, Discriminator, ChangeVersion)
    SELECT d.BeginDate, d.EducationOrganizationId, d.EducationOrganizationProgramTypeDescriptorId, j0.Namespace, j0.CodeValue, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.EducationOrganizationProgramTypeDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ENABLE TRIGGER [edorgprogram_EducationOrganizationEducationOrganizationProgram_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [edorgprogram].[edorgprogram_EducationOrganizationProgramAuthorizedProvider_TR_DeleteTracking]
GO

CREATE TRIGGER [edorgprogram].[edorgprogram_EducationOrganizationProgramAuthorizedProvider_TR_DeleteTracking] ON [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edorgprogram].[EducationOrganizationProgramAuthorizedProvider](OldBeginDate, OldEducationOrganizationProgramTypeDescriptorId, OldEducationOrganizationProgramTypeDescriptorNamespace, OldEducationOrganizationProgramTypeDescriptorCodeValue, OldNameOfInstitution, Id, Discriminator, ChangeVersion)
    SELECT d.BeginDate, d.EducationOrganizationProgramTypeDescriptorId, j0.Namespace, j0.CodeValue, d.NameOfInstitution, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.EducationOrganizationProgramTypeDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ENABLE TRIGGER [edorgprogram_EducationOrganizationProgramAuthorizedProvider_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [edorgprogram].[edorgprogram_EducationOrganizationProgramProvider_TR_DeleteTracking]
GO

CREATE TRIGGER [edorgprogram].[edorgprogram_EducationOrganizationProgramProvider_TR_DeleteTracking] ON [edorgprogram].[EducationOrganizationProgramProvider] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edorgprogram].[EducationOrganizationProgramProvider](OldNameOfInstitution, Id, Discriminator, ChangeVersion)
    SELECT d.NameOfInstitution, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] ENABLE TRIGGER [edorgprogram_EducationOrganizationProgramProvider_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [edorgprogram].[edorgprogram_EducationOrganizationProgramTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [edorgprogram].[edorgprogram_EducationOrganizationProgramTypeDescriptor_TR_DeleteTracking] ON [edorgprogram].[EducationOrganizationProgramTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EducationOrganizationProgramTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edorgprogram.EducationOrganizationProgramTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EducationOrganizationProgramTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edorgprogram].[EducationOrganizationProgramTypeDescriptor] ENABLE TRIGGER [edorgprogram_EducationOrganizationProgramTypeDescriptor_TR_DeleteTracking]
GO


