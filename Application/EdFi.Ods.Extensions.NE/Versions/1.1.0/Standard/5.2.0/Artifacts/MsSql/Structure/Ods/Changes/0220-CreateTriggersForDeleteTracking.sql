DROP TRIGGER IF EXISTS [ne].[ne_EarlyLearningSettingDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_EarlyLearningSettingDescriptor_TR_DeleteTracking] ON [ne].[EarlyLearningSettingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EarlyLearningSettingDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.EarlyLearningSettingDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EarlyLearningSettingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[EarlyLearningSettingDescriptor] ENABLE TRIGGER [ne_EarlyLearningSettingDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_EmergencyExclusion_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_EmergencyExclusion_TR_DeleteTracking] ON [ne].[EmergencyExclusion] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_ne].[EmergencyExclusion](OldEducationOrganizationId, OldExclusionDate, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.ExclusionDate, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO

ALTER TABLE [ne].[EmergencyExclusion] ENABLE TRIGGER [ne_EmergencyExclusion_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_EmergencyExclusionReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_EmergencyExclusionReasonDescriptor_TR_DeleteTracking] ON [ne].[EmergencyExclusionReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EmergencyExclusionReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.EmergencyExclusionReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EmergencyExclusionReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[EmergencyExclusionReasonDescriptor] ENABLE TRIGGER [ne_EmergencyExclusionReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_EventComplianceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_EventComplianceDescriptor_TR_DeleteTracking] ON [ne].[EventComplianceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EventComplianceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.EventComplianceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EventComplianceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[EventComplianceDescriptor] ENABLE TRIGGER [ne_EventComplianceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_EventReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_EventReasonDescriptor_TR_DeleteTracking] ON [ne].[EventReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EventReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.EventReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EventReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[EventReasonDescriptor] ENABLE TRIGGER [ne_EventReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_IdeaEvent_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_IdeaEvent_TR_DeleteTracking] ON [ne].[IdeaEvent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_ne].[IdeaEvent](OldEducationOrganizationId, OldIDEAEventDescriptorId, OldIDEAEventDescriptorNamespace, OldIDEAEventDescriptorCodeValue, OldIDEAEventID, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.IDEAEventDescriptorId, j0.Namespace, j0.CodeValue, d.IDEAEventID, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.IDEAEventDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [ne].[IdeaEvent] ENABLE TRIGGER [ne_IdeaEvent_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_IDEAEventDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_IDEAEventDescriptor_TR_DeleteTracking] ON [ne].[IDEAEventDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IDEAEventDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.IDEAEventDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IDEAEventDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[IDEAEventDescriptor] ENABLE TRIGGER [ne_IDEAEventDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_ImmigrantIndicatorDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_ImmigrantIndicatorDescriptor_TR_DeleteTracking] ON [ne].[ImmigrantIndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ImmigrantIndicatorDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.ImmigrantIndicatorDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ImmigrantIndicatorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[ImmigrantIndicatorDescriptor] ENABLE TRIGGER [ne_ImmigrantIndicatorDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_PartCTransitionDelayReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_PartCTransitionDelayReasonDescriptor_TR_DeleteTracking] ON [ne].[PartCTransitionDelayReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PartCTransitionDelayReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.PartCTransitionDelayReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PartCTransitionDelayReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[PartCTransitionDelayReasonDescriptor] ENABLE TRIGGER [ne_PartCTransitionDelayReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_PlacementTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_PlacementTypeDescriptor_TR_DeleteTracking] ON [ne].[PlacementTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PlacementTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.PlacementTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PlacementTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[PlacementTypeDescriptor] ENABLE TRIGGER [ne_PlacementTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_PositionTitleDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_PositionTitleDescriptor_TR_DeleteTracking] ON [ne].[PositionTitleDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PositionTitleDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.PositionTitleDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PositionTitleDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[PositionTitleDescriptor] ENABLE TRIGGER [ne_PositionTitleDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_PostGraduateActivity_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_PostGraduateActivity_TR_DeleteTracking] ON [ne].[PostGraduateActivity] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_ne].[PostGraduateActivity](OldLocalEducationAgencyId, OldSchoolYear, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.LocalEducationAgencyId, d.SchoolYear, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO

ALTER TABLE [ne].[PostGraduateActivity] ENABLE TRIGGER [ne_PostGraduateActivity_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_PostGraduateActivityDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_PostGraduateActivityDescriptor_TR_DeleteTracking] ON [ne].[PostGraduateActivityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PostGraduateActivityDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.PostGraduateActivityDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PostGraduateActivityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[PostGraduateActivityDescriptor] ENABLE TRIGGER [ne_PostGraduateActivityDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_PostGraduateActivityDeterminationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_PostGraduateActivityDeterminationDescriptor_TR_DeleteTracking] ON [ne].[PostGraduateActivityDeterminationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PostGraduateActivityDeterminationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.PostGraduateActivityDeterminationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PostGraduateActivityDeterminationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[PostGraduateActivityDeterminationDescriptor] ENABLE TRIGGER [ne_PostGraduateActivityDeterminationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_SectionDeliveryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_SectionDeliveryDescriptor_TR_DeleteTracking] ON [ne].[SectionDeliveryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SectionDeliveryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.SectionDeliveryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SectionDeliveryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[SectionDeliveryDescriptor] ENABLE TRIGGER [ne_SectionDeliveryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_SpecialEducationProgramDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_SpecialEducationProgramDescriptor_TR_DeleteTracking] ON [ne].[SpecialEducationProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SpecialEducationProgramDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.SpecialEducationProgramDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SpecialEducationProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[SpecialEducationProgramDescriptor] ENABLE TRIGGER [ne_SpecialEducationProgramDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ne].[ne_UnilateralRemovalDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ne].[ne_UnilateralRemovalDescriptor_TR_DeleteTracking] ON [ne].[UnilateralRemovalDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.UnilateralRemovalDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ne.UnilateralRemovalDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.UnilateralRemovalDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ne].[UnilateralRemovalDescriptor] ENABLE TRIGGER [ne_UnilateralRemovalDescriptor_TR_DeleteTracking]
GO


