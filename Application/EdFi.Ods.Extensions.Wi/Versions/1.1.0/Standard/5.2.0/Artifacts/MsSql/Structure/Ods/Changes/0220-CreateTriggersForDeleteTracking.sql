DROP TRIGGER IF EXISTS [wi].[wi_CertificatedProgramStatusDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [wi].[wi_CertificatedProgramStatusDescriptor_TR_DeleteTracking] ON [wi].[CertificatedProgramStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CertificatedProgramStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'wi.CertificatedProgramStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CertificatedProgramStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [wi].[CertificatedProgramStatusDescriptor] ENABLE TRIGGER [wi_CertificatedProgramStatusDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [wi].[wi_CountDateNameDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [wi].[wi_CountDateNameDescriptor_TR_DeleteTracking] ON [wi].[CountDateNameDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CountDateNameDescriptorId, b.CodeValue, b.Namespace, b.Id, 'wi.CountDateNameDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CountDateNameDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [wi].[CountDateNameDescriptor] ENABLE TRIGGER [wi_CountDateNameDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [wi].[wi_CountDateReceivingServiceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [wi].[wi_CountDateReceivingServiceDescriptor_TR_DeleteTracking] ON [wi].[CountDateReceivingServiceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CountDateReceivingServiceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'wi.CountDateReceivingServiceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CountDateReceivingServiceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [wi].[CountDateReceivingServiceDescriptor] ENABLE TRIGGER [wi_CountDateReceivingServiceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [wi].[wi_CteProgramAreaDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [wi].[wi_CteProgramAreaDescriptor_TR_DeleteTracking] ON [wi].[CteProgramAreaDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CteProgramAreaDescriptorId, b.CodeValue, b.Namespace, b.Id, 'wi.CteProgramAreaDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CteProgramAreaDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [wi].[CteProgramAreaDescriptor] ENABLE TRIGGER [wi_CteProgramAreaDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [wi].[wi_IacCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [wi].[wi_IacCodeDescriptor_TR_DeleteTracking] ON [wi].[IacCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IacCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'wi.IacCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IacCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [wi].[IacCodeDescriptor] ENABLE TRIGGER [wi_IacCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [wi].[wi_ModifiedTermDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [wi].[wi_ModifiedTermDescriptor_TR_DeleteTracking] ON [wi].[ModifiedTermDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ModifiedTermDescriptorId, b.CodeValue, b.Namespace, b.Id, 'wi.ModifiedTermDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ModifiedTermDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [wi].[ModifiedTermDescriptor] ENABLE TRIGGER [wi_ModifiedTermDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [wi].[wi_RccPlacementTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [wi].[wi_RccPlacementTypeDescriptor_TR_DeleteTracking] ON [wi].[RccPlacementTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.RccPlacementTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'wi.RccPlacementTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RccPlacementTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [wi].[RccPlacementTypeDescriptor] ENABLE TRIGGER [wi_RccPlacementTypeDescriptor_TR_DeleteTracking]
GO


