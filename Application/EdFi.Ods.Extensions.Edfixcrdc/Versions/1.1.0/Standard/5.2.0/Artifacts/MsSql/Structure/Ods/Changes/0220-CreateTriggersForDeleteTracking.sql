DROP TRIGGER IF EXISTS [edfixcrdc].[edfixcrdc_RestraintCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [edfixcrdc].[edfixcrdc_RestraintCategoryDescriptor_TR_DeleteTracking] ON [edfixcrdc].[RestraintCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.RestraintCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'edfixcrdc.RestraintCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RestraintCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [edfixcrdc].[RestraintCategoryDescriptor] ENABLE TRIGGER [edfixcrdc_RestraintCategoryDescriptor_TR_DeleteTracking]
GO


