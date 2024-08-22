DROP TRIGGER IF EXISTS [tx].[tx_BasicReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_BasicReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[BasicReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[BasicReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[BasicReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_BilingualESLProgramReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_BilingualESLProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[BilingualESLProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[BilingualESLProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[BilingualESLProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_BudgetExt_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_BudgetExt_TR_UpdateChangeVersion] ON [tx].[BudgetExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[BudgetExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[BudgetExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_ContractedInstructionalStaffFTEExt_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_ContractedInstructionalStaffFTEExt_TR_UpdateChangeVersion] ON [tx].[ContractedInstructionalStaffFTEExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[ContractedInstructionalStaffFTEExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[ContractedInstructionalStaffFTEExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_CTEProgramReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_CTEProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[CTEProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[CTEProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[CTEProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_DescriptorMappingHistory_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_DescriptorMappingHistory_TR_UpdateChangeVersion] ON [tx].[DescriptorMappingHistory] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[DescriptorMappingHistory]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[DescriptorMappingHistory] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_ExtendedSchoolYearServicesAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_ExtendedSchoolYearServicesAttendance_TR_UpdateChangeVersion] ON [tx].[ExtendedSchoolYearServicesAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[ExtendedSchoolYearServicesAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[ExtendedSchoolYearServicesAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_FlexibleCTEProgramReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_FlexibleCTEProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleCTEProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleCTEProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_FlexibleRegularProgramReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_FlexibleRegularProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleRegularProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleRegularProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_PayrollExt_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_PayrollExt_TR_UpdateChangeVersion] ON [tx].[PayrollExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[PayrollExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[PayrollExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_PriorYearActualExt_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_PriorYearActualExt_TR_UpdateChangeVersion] ON [tx].[PriorYearActualExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[PriorYearActualExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[PriorYearActualExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_PriorYearLeaver_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_PriorYearLeaver_TR_UpdateChangeVersion] ON [tx].[PriorYearLeaver] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[PriorYearLeaver]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[PriorYearLeaver] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_PriorYearLeaverParent_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_PriorYearLeaverParent_TR_UpdateChangeVersion] ON [tx].[PriorYearLeaverParent] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[PriorYearLeaverParent]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[PriorYearLeaverParent] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_PriorYearLeaverStudentParentAssociation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_PriorYearLeaverStudentParentAssociation_TR_UpdateChangeVersion] ON [tx].[PriorYearLeaverStudentParentAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[PriorYearLeaverStudentParentAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[PriorYearLeaverStudentParentAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_ReportingPeriodExt_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_ReportingPeriodExt_TR_UpdateChangeVersion] ON [tx].[ReportingPeriodExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[ReportingPeriodExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[ReportingPeriodExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);

    -- Handle key changes
    INSERT INTO tracked_changes_tx.ReportingPeriodExt(
        OldCalendarCode, OldDate, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldSchoolYear, 
        NewCalendarCode, NewDate, NewReportingPeriodDescriptorId, NewReportingPeriodDescriptorNamespace, NewReportingPeriodDescriptorCodeValue, NewSchoolId, NewSchoolYear, 
        Id, ChangeVersion)
    SELECT
        d.CalendarCode, d.Date, d.ReportingPeriodDescriptorId, dj0.Namespace, dj0.CodeValue, d.SchoolId, d.SchoolYear, 
        i.CalendarCode, i.Date, i.ReportingPeriodDescriptorId, ij0.Namespace, ij0.CodeValue, i.SchoolId, i.SchoolYear, 
        d.Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM deleted d INNER JOIN inserted i ON d.Id = i.Id
        INNER JOIN edfi.Descriptor dj0
            ON d.ReportingPeriodDescriptorId = dj0.DescriptorId
        INNER JOIN edfi.Descriptor ij0
            ON i.ReportingPeriodDescriptorId = ij0.DescriptorId

    WHERE
        d.CalendarCode <> i.CalendarCode OR d.Date <> i.Date OR d.ReportingPeriodDescriptorId <> i.ReportingPeriodDescriptorId OR d.SchoolId <> i.SchoolId OR d.SchoolYear <> i.SchoolYear;
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_SharedServiceArrangementExt_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_SharedServiceArrangementExt_TR_UpdateChangeVersion] ON [tx].[SharedServiceArrangementExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SharedServiceArrangementExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SharedServiceArrangementExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_SpecialEducationProgramReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_SpecialEducationProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[SpecialEducationProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SpecialEducationProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SpecialEducationProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_SpecialProgramsReportingPeriodAttendance_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_SpecialProgramsReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[SpecialProgramsReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SpecialProgramsReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SpecialProgramsReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_SSAOrgAssociationExt_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_SSAOrgAssociationExt_TR_UpdateChangeVersion] ON [tx].[SSAOrgAssociationExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SSAOrgAssociationExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SSAOrgAssociationExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_StudentApplication_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_StudentApplication_TR_UpdateChangeVersion] ON [tx].[StudentApplication] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[StudentApplication]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[StudentApplication] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [tx].[tx_StudentSpecialEducationProgramEligibilityAssociation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [tx].[tx_StudentSpecialEducationProgramEligibilityAssociation_TR_UpdateChangeVersion] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[StudentSpecialEducationProgramEligibilityAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[StudentSpecialEducationProgramEligibilityAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

