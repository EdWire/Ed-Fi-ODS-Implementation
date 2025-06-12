DROP TRIGGER IF EXISTS [idoe].[idoe_AccreditationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_AccreditationDescriptor_TR_DeleteTracking] ON [idoe].[AccreditationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AccreditationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.AccreditationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AccreditationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[AccreditationDescriptor] ENABLE TRIGGER [idoe_AccreditationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_ADMCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_ADMCodeDescriptor_TR_DeleteTracking] ON [idoe].[ADMCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ADMCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.ADMCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ADMCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[ADMCodeDescriptor] ENABLE TRIGGER [idoe_ADMCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_AlternativeEducationEligibilityReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_AlternativeEducationEligibilityReasonDescriptor_TR_DeleteTracking] ON [idoe].[AlternativeEducationEligibilityReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AlternativeEducationEligibilityReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.AlternativeEducationEligibilityReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AlternativeEducationEligibilityReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[AlternativeEducationEligibilityReasonDescriptor] ENABLE TRIGGER [idoe_AlternativeEducationEligibilityReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_ArrestReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_ArrestReasonDescriptor_TR_DeleteTracking] ON [idoe].[ArrestReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ArrestReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.ArrestReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ArrestReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[ArrestReasonDescriptor] ENABLE TRIGGER [idoe_ArrestReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_AssessmentAccommodation_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_AssessmentAccommodation_TR_DeleteTracking] ON [idoe].[AssessmentAccommodation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[AssessmentAccommodation](OldAccommodationDescriptorId, OldAccommodationDescriptorNamespace, OldAccommodationDescriptorCodeValue, OldAssessmentIdentifier, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT d.AccommodationDescriptorId, j0.Namespace, j0.CodeValue, d.AssessmentIdentifier, d.Namespace, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.AccommodationDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [idoe].[AssessmentAccommodation] ENABLE TRIGGER [idoe_AssessmentAccommodation_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_CircumstancesRelevantToTimelineDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_CircumstancesRelevantToTimelineDescriptor_TR_DeleteTracking] ON [idoe].[CircumstancesRelevantToTimelineDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CircumstancesRelevantToTimelineDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.CircumstancesRelevantToTimelineDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CircumstancesRelevantToTimelineDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[CircumstancesRelevantToTimelineDescriptor] ENABLE TRIGGER [idoe_CircumstancesRelevantToTimelineDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_CriminalGangRelatedEventDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_CriminalGangRelatedEventDescriptor_TR_DeleteTracking] ON [idoe].[CriminalGangRelatedEventDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CriminalGangRelatedEventDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.CriminalGangRelatedEventDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CriminalGangRelatedEventDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[CriminalGangRelatedEventDescriptor] ENABLE TRIGGER [idoe_CriminalGangRelatedEventDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_DisciplineActionServiceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_DisciplineActionServiceDescriptor_TR_DeleteTracking] ON [idoe].[DisciplineActionServiceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DisciplineActionServiceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.DisciplineActionServiceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DisciplineActionServiceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[DisciplineActionServiceDescriptor] ENABLE TRIGGER [idoe_DisciplineActionServiceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_EducationOrganizationOtherPersonnel_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_EducationOrganizationOtherPersonnel_TR_DeleteTracking] ON [idoe].[EducationOrganizationOtherPersonnel] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[EducationOrganizationOtherPersonnel](OldLocalEducationAgencyId, OldOtherPersonnelCategoryDescriptorId, OldOtherPersonnelCategoryDescriptorNamespace, OldOtherPersonnelCategoryDescriptorCodeValue, OldOtherPersonnelTitleDescriptorId, OldOtherPersonnelTitleDescriptorNamespace, OldOtherPersonnelTitleDescriptorCodeValue, Id, Discriminator, ChangeVersion)
    SELECT d.LocalEducationAgencyId, d.OtherPersonnelCategoryDescriptorId, j0.Namespace, j0.CodeValue, d.OtherPersonnelTitleDescriptorId, j1.Namespace, j1.CodeValue, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.OtherPersonnelCategoryDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.OtherPersonnelTitleDescriptorId = j1.DescriptorId
END
GO

ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ENABLE TRIGGER [idoe_EducationOrganizationOtherPersonnel_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_ELLInstrumentUsedDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_ELLInstrumentUsedDescriptor_TR_DeleteTracking] ON [idoe].[ELLInstrumentUsedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ELLInstrumentUsedDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.ELLInstrumentUsedDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ELLInstrumentUsedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[ELLInstrumentUsedDescriptor] ENABLE TRIGGER [idoe_ELLInstrumentUsedDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_LocalCapitalizedEquipment_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_LocalCapitalizedEquipment_TR_DeleteTracking] ON [idoe].[LocalCapitalizedEquipment] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[LocalCapitalizedEquipment](OldAccountIdentifier, OldAsOfDate, OldEducationOrganizationId, OldFiscalYear, OldRecordIdentifier, Id, Discriminator, ChangeVersion)
    SELECT d.AccountIdentifier, d.AsOfDate, d.EducationOrganizationId, d.FiscalYear, d.RecordIdentifier, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [idoe].[LocalCapitalizedEquipment] ENABLE TRIGGER [idoe_LocalCapitalizedEquipment_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_LocalSubaward_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_LocalSubaward_TR_DeleteTracking] ON [idoe].[LocalSubaward] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[LocalSubaward](OldAccountIdentifier, OldAsOfDate, OldEducationOrganizationId, OldFiscalYear, OldRecordIdentifier, Id, Discriminator, ChangeVersion)
    SELECT d.AccountIdentifier, d.AsOfDate, d.EducationOrganizationId, d.FiscalYear, d.RecordIdentifier, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [idoe].[LocalSubaward] ENABLE TRIGGER [idoe_LocalSubaward_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_LocalUnusedLeavePayment_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_LocalUnusedLeavePayment_TR_DeleteTracking] ON [idoe].[LocalUnusedLeavePayment] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[LocalUnusedLeavePayment](OldAccountIdentifier, OldAsOfDate, OldEducationOrganizationId, OldFiscalYear, OldRecordIdentifier, Id, Discriminator, ChangeVersion)
    SELECT d.AccountIdentifier, d.AsOfDate, d.EducationOrganizationId, d.FiscalYear, d.RecordIdentifier, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [idoe].[LocalUnusedLeavePayment] ENABLE TRIGGER [idoe_LocalUnusedLeavePayment_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_OtherPersonnelCategoryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_OtherPersonnelCategoryDescriptor_TR_DeleteTracking] ON [idoe].[OtherPersonnelCategoryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.OtherPersonnelCategoryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.OtherPersonnelCategoryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.OtherPersonnelCategoryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[OtherPersonnelCategoryDescriptor] ENABLE TRIGGER [idoe_OtherPersonnelCategoryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_OtherPersonnelTitleDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_OtherPersonnelTitleDescriptor_TR_DeleteTracking] ON [idoe].[OtherPersonnelTitleDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.OtherPersonnelTitleDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.OtherPersonnelTitleDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.OtherPersonnelTitleDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[OtherPersonnelTitleDescriptor] ENABLE TRIGGER [idoe_OtherPersonnelTitleDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_ProgramMeetingTimeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_ProgramMeetingTimeDescriptor_TR_DeleteTracking] ON [idoe].[ProgramMeetingTimeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ProgramMeetingTimeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.ProgramMeetingTimeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ProgramMeetingTimeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[ProgramMeetingTimeDescriptor] ENABLE TRIGGER [idoe_ProgramMeetingTimeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_SectionDimension_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_SectionDimension_TR_DeleteTracking] ON [idoe].[SectionDimension] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[SectionDimension](OldCode, OldFiscalYear, Id, Discriminator, ChangeVersion)
    SELECT d.Code, d.FiscalYear, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [idoe].[SectionDimension] ENABLE TRIGGER [idoe_SectionDimension_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_StudentAccommodation_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_StudentAccommodation_TR_DeleteTracking] ON [idoe].[StudentAccommodation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[StudentAccommodation](OldAccommodationDescriptorId, OldAccommodationDescriptorNamespace, OldAccommodationDescriptorCodeValue, OldAssessmentIdentifier, OldEducationOrganizationId, OldNamespace, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.AccommodationDescriptorId, j0.Namespace, j0.CodeValue, d.AssessmentIdentifier, d.EducationOrganizationId, d.Namespace, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.AccommodationDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [idoe].[StudentAccommodation] ENABLE TRIGGER [idoe_StudentAccommodation_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_StudentArrestDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_StudentArrestDescriptor_TR_DeleteTracking] ON [idoe].[StudentArrestDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StudentArrestDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.StudentArrestDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StudentArrestDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[StudentArrestDescriptor] ENABLE TRIGGER [idoe_StudentArrestDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_StudentSchoolGraduationPlan_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_StudentSchoolGraduationPlan_TR_DeleteTracking] ON [idoe].[StudentSchoolGraduationPlan] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[StudentSchoolGraduationPlan](OldBeginDate, OldEducationOrganizationId, OldGraduationPlanTypeDescriptorId, OldGraduationPlanTypeDescriptorNamespace, OldGraduationPlanTypeDescriptorCodeValue, OldGraduationSchoolYear, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.BeginDate, d.EducationOrganizationId, d.GraduationPlanTypeDescriptorId, j0.Namespace, j0.CodeValue, d.GraduationSchoolYear, d.SchoolId, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.GraduationPlanTypeDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [idoe].[StudentSchoolGraduationPlan] ENABLE TRIGGER [idoe_StudentSchoolGraduationPlan_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_SubCategoryDimension_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_SubCategoryDimension_TR_DeleteTracking] ON [idoe].[SubCategoryDimension] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_idoe].[SubCategoryDimension](OldCode, OldFiscalYear, Id, Discriminator, ChangeVersion)
    SELECT d.Code, d.FiscalYear, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [idoe].[SubCategoryDimension] ENABLE TRIGGER [idoe_SubCategoryDimension_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [idoe].[idoe_TimelineComplianceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [idoe].[idoe_TimelineComplianceDescriptor_TR_DeleteTracking] ON [idoe].[TimelineComplianceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TimelineComplianceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'idoe.TimelineComplianceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TimelineComplianceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [idoe].[TimelineComplianceDescriptor] ENABLE TRIGGER [idoe_TimelineComplianceDescriptor_TR_DeleteTracking]
GO


