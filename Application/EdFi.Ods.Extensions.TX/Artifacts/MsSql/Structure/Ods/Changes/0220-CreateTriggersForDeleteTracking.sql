DROP TRIGGER IF EXISTS [tx].[tx_ActualExt_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ActualExt_TR_DeleteTracking] ON [tx].[ActualExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[ActualExt](OldActualFunctionDescriptorId, OldActualFunctionDescriptorNamespace, OldActualFunctionDescriptorCodeValue, OldActualFundDescriptorId, OldActualFundDescriptorNamespace, OldActualFundDescriptorCodeValue, OldActualObjectDescriptorId, OldActualObjectDescriptorNamespace, OldActualObjectDescriptorCodeValue, OldActualProgramIntentDescriptorId, OldActualProgramIntentDescriptorNamespace, OldActualProgramIntentDescriptorCodeValue, OldBeginDate, OldEducationOrganizationId, OldFiscalYear, OldOrganization, Id, Discriminator, ChangeVersion)
    SELECT d.ActualFunctionDescriptorId, j0.Namespace, j0.CodeValue, d.ActualFundDescriptorId, j1.Namespace, j1.CodeValue, d.ActualObjectDescriptorId, j2.Namespace, j2.CodeValue, d.ActualProgramIntentDescriptorId, j3.Namespace, j3.CodeValue, d.BeginDate, d.EducationOrganizationId, d.FiscalYear, d.Organization, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.ActualFunctionDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.ActualFundDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.ActualObjectDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Descriptor j3
            ON d.ActualProgramIntentDescriptorId = j3.DescriptorId
END
GO

ALTER TABLE [tx].[ActualExt] ENABLE TRIGGER [tx_ActualExt_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ActualFunctionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ActualFunctionDescriptor_TR_DeleteTracking] ON [tx].[ActualFunctionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ActualFunctionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ActualFunctionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ActualFunctionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ActualFunctionDescriptor] ENABLE TRIGGER [tx_ActualFunctionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ActualFundDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ActualFundDescriptor_TR_DeleteTracking] ON [tx].[ActualFundDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ActualFundDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ActualFundDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ActualFundDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ActualFundDescriptor] ENABLE TRIGGER [tx_ActualFundDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ActualObjectDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ActualObjectDescriptor_TR_DeleteTracking] ON [tx].[ActualObjectDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ActualObjectDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ActualObjectDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ActualObjectDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ActualObjectDescriptor] ENABLE TRIGGER [tx_ActualObjectDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ActualProgramIntentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ActualProgramIntentDescriptor_TR_DeleteTracking] ON [tx].[ActualProgramIntentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ActualProgramIntentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ActualProgramIntentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ActualProgramIntentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ActualProgramIntentDescriptor] ENABLE TRIGGER [tx_ActualProgramIntentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ADAEligibilityDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ADAEligibilityDescriptor_TR_DeleteTracking] ON [tx].[ADAEligibilityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ADAEligibilityDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ADAEligibilityDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ADAEligibilityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ADAEligibilityDescriptor] ENABLE TRIGGER [tx_ADAEligibilityDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ApiOperationTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ApiOperationTypeDescriptor_TR_DeleteTracking] ON [tx].[ApiOperationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ApiOperationTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ApiOperationTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ApiOperationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ApiOperationTypeDescriptor] ENABLE TRIGGER [tx_ApiOperationTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ApplicationTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ApplicationTypeDescriptor_TR_DeleteTracking] ON [tx].[ApplicationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ApplicationTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ApplicationTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ApplicationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ApplicationTypeDescriptor] ENABLE TRIGGER [tx_ApplicationTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ArmedServicesVocAptBatteryDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ArmedServicesVocAptBatteryDescriptor_TR_DeleteTracking] ON [tx].[ArmedServicesVocAptBatteryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ArmedServicesVocAptBatteryDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ArmedServicesVocAptBatteryDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ArmedServicesVocAptBatteryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ArmedServicesVocAptBatteryDescriptor] ENABLE TRIGGER [tx_ArmedServicesVocAptBatteryDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_AsOfStatusLastDayEnrollmentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_AsOfStatusLastDayEnrollmentDescriptor_TR_DeleteTracking] ON [tx].[AsOfStatusLastDayEnrollmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AsOfStatusLastDayEnrollmentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.AsOfStatusLastDayEnrollmentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AsOfStatusLastDayEnrollmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AsOfStatusLastDayEnrollmentDescriptor] ENABLE TRIGGER [tx_AsOfStatusLastDayEnrollmentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_AsOfStatusLastFridayOctoberDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_AsOfStatusLastFridayOctoberDescriptor_TR_DeleteTracking] ON [tx].[AsOfStatusLastFridayOctoberDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AsOfStatusLastFridayOctoberDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.AsOfStatusLastFridayOctoberDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AsOfStatusLastFridayOctoberDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AsOfStatusLastFridayOctoberDescriptor] ENABLE TRIGGER [tx_AsOfStatusLastFridayOctoberDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_AssessmentResultsObtainedDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_AssessmentResultsObtainedDescriptor_TR_DeleteTracking] ON [tx].[AssessmentResultsObtainedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AssessmentResultsObtainedDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.AssessmentResultsObtainedDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AssessmentResultsObtainedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AssessmentResultsObtainedDescriptor] ENABLE TRIGGER [tx_AssessmentResultsObtainedDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_AssociateDegreeIndicatorDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_AssociateDegreeIndicatorDescriptor_TR_DeleteTracking] ON [tx].[AssociateDegreeIndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AssociateDegreeIndicatorDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.AssociateDegreeIndicatorDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AssociateDegreeIndicatorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AssociateDegreeIndicatorDescriptor] ENABLE TRIGGER [tx_AssociateDegreeIndicatorDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_AuxiliaryRoleIdDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_AuxiliaryRoleIdDescriptor_TR_DeleteTracking] ON [tx].[AuxiliaryRoleIdDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AuxiliaryRoleIdDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.AuxiliaryRoleIdDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AuxiliaryRoleIdDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AuxiliaryRoleIdDescriptor] ENABLE TRIGGER [tx_AuxiliaryRoleIdDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BasicReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BasicReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[BasicReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[BasicReportingPeriodAttendance](OldCalendarCode, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.CalendarCode, d.GradeLevelDescriptorId, j0.Namespace, j0.CodeValue, d.ReportingPeriodDescriptorId, j1.Namespace, j1.CodeValue, d.SchoolId, d.StudentUSI, j2.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.GradeLevelDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.ReportingPeriodDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Student j2
            ON d.StudentUSI = j2.StudentUSI
END
GO

ALTER TABLE [tx].[BasicReportingPeriodAttendance] ENABLE TRIGGER [tx_BasicReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BilingualESLFundingDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BilingualESLFundingDescriptor_TR_DeleteTracking] ON [tx].[BilingualESLFundingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BilingualESLFundingDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.BilingualESLFundingDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BilingualESLFundingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[BilingualESLFundingDescriptor] ENABLE TRIGGER [tx_BilingualESLFundingDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[BilingualESLProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[BilingualESLProgramReportingPeriodAttendance](OldBilingualESLFundingDescriptorId, OldBilingualESLFundingDescriptorNamespace, OldBilingualESLFundingDescriptorCodeValue, OldCalendarCode, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.BilingualESLFundingDescriptorId, j0.Namespace, j0.CodeValue, d.CalendarCode, d.GradeLevelDescriptorId, j1.Namespace, j1.CodeValue, d.ReportingPeriodDescriptorId, j2.Namespace, j2.CodeValue, d.SchoolId, d.StudentUSI, j3.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.BilingualESLFundingDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.GradeLevelDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.ReportingPeriodDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Student j3
            ON d.StudentUSI = j3.StudentUSI
END
GO

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_BilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BudgetExt_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BudgetExt_TR_DeleteTracking] ON [tx].[BudgetExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[BudgetExt](OldBeginDate, OldBudgetFunctionDescriptorId, OldBudgetFunctionDescriptorNamespace, OldBudgetFunctionDescriptorCodeValue, OldBudgetFundDescriptorId, OldBudgetFundDescriptorNamespace, OldBudgetFundDescriptorCodeValue, OldBudgetObjectDescriptorId, OldBudgetObjectDescriptorNamespace, OldBudgetObjectDescriptorCodeValue, OldBudgetProgramIntentDescriptorId, OldBudgetProgramIntentDescriptorNamespace, OldBudgetProgramIntentDescriptorCodeValue, OldEducationOrganizationId, OldFiscalYear, OldOrganization, Id, Discriminator, ChangeVersion)
    SELECT d.BeginDate, d.BudgetFunctionDescriptorId, j0.Namespace, j0.CodeValue, d.BudgetFundDescriptorId, j1.Namespace, j1.CodeValue, d.BudgetObjectDescriptorId, j2.Namespace, j2.CodeValue, d.BudgetProgramIntentDescriptorId, j3.Namespace, j3.CodeValue, d.EducationOrganizationId, d.FiscalYear, d.Organization, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.BudgetFunctionDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.BudgetFundDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.BudgetObjectDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Descriptor j3
            ON d.BudgetProgramIntentDescriptorId = j3.DescriptorId
END
GO

ALTER TABLE [tx].[BudgetExt] ENABLE TRIGGER [tx_BudgetExt_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BudgetFunctionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BudgetFunctionDescriptor_TR_DeleteTracking] ON [tx].[BudgetFunctionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BudgetFunctionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.BudgetFunctionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BudgetFunctionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[BudgetFunctionDescriptor] ENABLE TRIGGER [tx_BudgetFunctionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BudgetFundDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BudgetFundDescriptor_TR_DeleteTracking] ON [tx].[BudgetFundDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BudgetFundDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.BudgetFundDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BudgetFundDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[BudgetFundDescriptor] ENABLE TRIGGER [tx_BudgetFundDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BudgetObjectDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BudgetObjectDescriptor_TR_DeleteTracking] ON [tx].[BudgetObjectDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BudgetObjectDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.BudgetObjectDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BudgetObjectDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[BudgetObjectDescriptor] ENABLE TRIGGER [tx_BudgetObjectDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_BudgetProgramIntentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_BudgetProgramIntentDescriptor_TR_DeleteTracking] ON [tx].[BudgetProgramIntentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.BudgetProgramIntentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.BudgetProgramIntentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BudgetProgramIntentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[BudgetProgramIntentDescriptor] ENABLE TRIGGER [tx_BudgetProgramIntentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_CalendarWaiverEventTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_CalendarWaiverEventTypeDescriptor_TR_DeleteTracking] ON [tx].[CalendarWaiverEventTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CalendarWaiverEventTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.CalendarWaiverEventTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CalendarWaiverEventTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CalendarWaiverEventTypeDescriptor] ENABLE TRIGGER [tx_CalendarWaiverEventTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_CampusEnrollmentTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_CampusEnrollmentTypeDescriptor_TR_DeleteTracking] ON [tx].[CampusEnrollmentTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CampusEnrollmentTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.CampusEnrollmentTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CampusEnrollmentTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CampusEnrollmentTypeDescriptor] ENABLE TRIGGER [tx_CampusEnrollmentTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ChildCountFundingDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ChildCountFundingDescriptor_TR_DeleteTracking] ON [tx].[ChildCountFundingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ChildCountFundingDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ChildCountFundingDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ChildCountFundingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ChildCountFundingDescriptor] ENABLE TRIGGER [tx_ChildCountFundingDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_CIStaffProgramIntentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_CIStaffProgramIntentDescriptor_TR_DeleteTracking] ON [tx].[CIStaffProgramIntentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CIStaffProgramIntentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.CIStaffProgramIntentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CIStaffProgramIntentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CIStaffProgramIntentDescriptor] ENABLE TRIGGER [tx_CIStaffProgramIntentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ClassTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ClassTypeDescriptor_TR_DeleteTracking] ON [tx].[ClassTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ClassTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ClassTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ClassTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ClassTypeDescriptor] ENABLE TRIGGER [tx_ClassTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ContractedInstructionalStaffFTEExt_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ContractedInstructionalStaffFTEExt_TR_DeleteTracking] ON [tx].[ContractedInstructionalStaffFTEExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[ContractedInstructionalStaffFTEExt](OldCIStaffProgramIntentDescriptorId, OldCIStaffProgramIntentDescriptorNamespace, OldCIStaffProgramIntentDescriptorCodeValue, OldEducationOrganizationId, OldSchoolId, Id, Discriminator, ChangeVersion)
    SELECT d.CIStaffProgramIntentDescriptorId, j0.Namespace, j0.CodeValue, d.EducationOrganizationId, d.SchoolId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.CIStaffProgramIntentDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ENABLE TRIGGER [tx_ContractedInstructionalStaffFTEExt_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_CourseSequenceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_CourseSequenceDescriptor_TR_DeleteTracking] ON [tx].[CourseSequenceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CourseSequenceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.CourseSequenceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CourseSequenceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CourseSequenceDescriptor] ENABLE TRIGGER [tx_CourseSequenceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_CrisisEventDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_CrisisEventDescriptor_TR_DeleteTracking] ON [tx].[CrisisEventDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CrisisEventDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.CrisisEventDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CrisisEventDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CrisisEventDescriptor] ENABLE TRIGGER [tx_CrisisEventDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_CTEProgramReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_CTEProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[CTEProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[CTEProgramReportingPeriodAttendance](OldCalendarCode, OldCTEServiceIdDescriptorId, OldCTEServiceIdDescriptorNamespace, OldCTEServiceIdDescriptorCodeValue, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.CalendarCode, d.CTEServiceIdDescriptorId, j0.Namespace, j0.CodeValue, d.GradeLevelDescriptorId, j1.Namespace, j1.CodeValue, d.ReportingPeriodDescriptorId, j2.Namespace, j2.CodeValue, d.SchoolId, d.StudentUSI, j3.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.CTEServiceIdDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.GradeLevelDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.ReportingPeriodDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Student j3
            ON d.StudentUSI = j3.StudentUSI
END
GO

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_CTEProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_CTEServiceIdDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_CTEServiceIdDescriptor_TR_DeleteTracking] ON [tx].[CTEServiceIdDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CTEServiceIdDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.CTEServiceIdDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CTEServiceIdDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CTEServiceIdDescriptor] ENABLE TRIGGER [tx_CTEServiceIdDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_DescriptorMappingHistory_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_DescriptorMappingHistory_TR_DeleteTracking] ON [tx].[DescriptorMappingHistory] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[DescriptorMappingHistory](OldDateOfOperation, OldMappedNamespace, OldMappedValue, OldNamespace, OldValue, Id, Discriminator, ChangeVersion)
    SELECT d.DateOfOperation, d.MappedNamespace, d.MappedValue, d.Namespace, d.Value, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[DescriptorMappingHistory] ENABLE TRIGGER [tx_DescriptorMappingHistory_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_DyslexiaRiskDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_DyslexiaRiskDescriptor_TR_DeleteTracking] ON [tx].[DyslexiaRiskDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DyslexiaRiskDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.DyslexiaRiskDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DyslexiaRiskDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[DyslexiaRiskDescriptor] ENABLE TRIGGER [tx_DyslexiaRiskDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_DyslexiaScreeningExceptionReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_DyslexiaScreeningExceptionReasonDescriptor_TR_DeleteTracking] ON [tx].[DyslexiaScreeningExceptionReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DyslexiaScreeningExceptionReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.DyslexiaScreeningExceptionReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DyslexiaScreeningExceptionReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[DyslexiaScreeningExceptionReasonDescriptor] ENABLE TRIGGER [tx_DyslexiaScreeningExceptionReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_DyslexiaServicesDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_DyslexiaServicesDescriptor_TR_DeleteTracking] ON [tx].[DyslexiaServicesDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.DyslexiaServicesDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.DyslexiaServicesDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DyslexiaServicesDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[DyslexiaServicesDescriptor] ENABLE TRIGGER [tx_DyslexiaServicesDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EarlyReadingIndicatorDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EarlyReadingIndicatorDescriptor_TR_DeleteTracking] ON [tx].[EarlyReadingIndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EarlyReadingIndicatorDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EarlyReadingIndicatorDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EarlyReadingIndicatorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EarlyReadingIndicatorDescriptor] ENABLE TRIGGER [tx_EarlyReadingIndicatorDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EconomicDisadvantageDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EconomicDisadvantageDescriptor_TR_DeleteTracking] ON [tx].[EconomicDisadvantageDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EconomicDisadvantageDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EconomicDisadvantageDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EconomicDisadvantageDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EconomicDisadvantageDescriptor] ENABLE TRIGGER [tx_EconomicDisadvantageDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EligibilityDelayReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EligibilityDelayReasonDescriptor_TR_DeleteTracking] ON [tx].[EligibilityDelayReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EligibilityDelayReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EligibilityDelayReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EligibilityDelayReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EligibilityDelayReasonDescriptor] ENABLE TRIGGER [tx_EligibilityDelayReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ELOActivityDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ELOActivityDescriptor_TR_DeleteTracking] ON [tx].[ELOActivityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ELOActivityDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ELOActivityDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ELOActivityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ELOActivityDescriptor] ENABLE TRIGGER [tx_ELOActivityDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ELOTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ELOTypeDescriptor_TR_DeleteTracking] ON [tx].[ELOTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ELOTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ELOTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ELOTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ELOTypeDescriptor] ENABLE TRIGGER [tx_ELOTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EmergentBilingualIndicatorDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EmergentBilingualIndicatorDescriptor_TR_DeleteTracking] ON [tx].[EmergentBilingualIndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EmergentBilingualIndicatorDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EmergentBilingualIndicatorDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EmergentBilingualIndicatorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EmergentBilingualIndicatorDescriptor] ENABLE TRIGGER [tx_EmergentBilingualIndicatorDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EndorsementCompletedDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EndorsementCompletedDescriptor_TR_DeleteTracking] ON [tx].[EndorsementCompletedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EndorsementCompletedDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EndorsementCompletedDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EndorsementCompletedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EndorsementCompletedDescriptor] ENABLE TRIGGER [tx_EndorsementCompletedDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EndorsementPursuingDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EndorsementPursuingDescriptor_TR_DeleteTracking] ON [tx].[EndorsementPursuingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EndorsementPursuingDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EndorsementPursuingDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EndorsementPursuingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EndorsementPursuingDescriptor] ENABLE TRIGGER [tx_EndorsementPursuingDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EnrollmentTrackingVerificationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EnrollmentTrackingVerificationDescriptor_TR_DeleteTracking] ON [tx].[EnrollmentTrackingVerificationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EnrollmentTrackingVerificationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EnrollmentTrackingVerificationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EnrollmentTrackingVerificationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EnrollmentTrackingVerificationDescriptor] ENABLE TRIGGER [tx_EnrollmentTrackingVerificationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_EvaluationDelayReasonDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_EvaluationDelayReasonDescriptor_TR_DeleteTracking] ON [tx].[EvaluationDelayReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.EvaluationDelayReasonDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.EvaluationDelayReasonDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EvaluationDelayReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EvaluationDelayReasonDescriptor] ENABLE TRIGGER [tx_EvaluationDelayReasonDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ExtendedSchoolYearServicesAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ExtendedSchoolYearServicesAttendance_TR_DeleteTracking] ON [tx].[ExtendedSchoolYearServicesAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[ExtendedSchoolYearServicesAttendance](OldFirstInstructionalSettingDescriptorId, OldFirstInstructionalSettingDescriptorNamespace, OldFirstInstructionalSettingDescriptorCodeValue, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.FirstInstructionalSettingDescriptorId, j0.Namespace, j0.CodeValue, d.GradeLevelDescriptorId, j1.Namespace, j1.CodeValue, d.SchoolId, d.StudentUSI, j2.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.FirstInstructionalSettingDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.GradeLevelDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Student j2
            ON d.StudentUSI = j2.StudentUSI
END
GO

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ENABLE TRIGGER [tx_ExtendedSchoolYearServicesAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FinancialAidApplicationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FinancialAidApplicationDescriptor_TR_DeleteTracking] ON [tx].[FinancialAidApplicationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FinancialAidApplicationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.FinancialAidApplicationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FinancialAidApplicationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FinancialAidApplicationDescriptor] ENABLE TRIGGER [tx_FinancialAidApplicationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FlexAttendanceProgramDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FlexAttendanceProgramDescriptor_TR_DeleteTracking] ON [tx].[FlexAttendanceProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FlexAttendanceProgramDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.FlexAttendanceProgramDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FlexAttendanceProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FlexAttendanceProgramDescriptor] ENABLE TRIGGER [tx_FlexAttendanceProgramDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[FlexibleBilingualESLProgramReportingPeriodAttendance](OldBilingualESLFundingDescriptorId, OldBilingualESLFundingDescriptorNamespace, OldBilingualESLFundingDescriptorCodeValue, OldCalendarCode, OldFlexAttendanceProgramDescriptorId, OldFlexAttendanceProgramDescriptorNamespace, OldFlexAttendanceProgramDescriptorCodeValue, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.BilingualESLFundingDescriptorId, j0.Namespace, j0.CodeValue, d.CalendarCode, d.FlexAttendanceProgramDescriptorId, j1.Namespace, j1.CodeValue, d.GradeLevelDescriptorId, j2.Namespace, j2.CodeValue, d.ReportingPeriodDescriptorId, j3.Namespace, j3.CodeValue, d.SchoolId, d.StudentUSI, j4.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.BilingualESLFundingDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.FlexAttendanceProgramDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.GradeLevelDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Descriptor j3
            ON d.ReportingPeriodDescriptorId = j3.DescriptorId
        INNER JOIN edfi.Student j4
            ON d.StudentUSI = j4.StudentUSI
END
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FlexibleCTEProgramReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FlexibleCTEProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[FlexibleCTEProgramReportingPeriodAttendance](OldCalendarCode, OldFlexAttendanceProgramDescriptorId, OldFlexAttendanceProgramDescriptorNamespace, OldFlexAttendanceProgramDescriptorCodeValue, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.CalendarCode, d.FlexAttendanceProgramDescriptorId, j0.Namespace, j0.CodeValue, d.GradeLevelDescriptorId, j1.Namespace, j1.CodeValue, d.ReportingPeriodDescriptorId, j2.Namespace, j2.CodeValue, d.SchoolId, d.StudentUSI, j3.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.FlexAttendanceProgramDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.GradeLevelDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.ReportingPeriodDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Student j3
            ON d.StudentUSI = j3.StudentUSI
END
GO

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleCTEProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FlexibleRegularProgramReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FlexibleRegularProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[FlexibleRegularProgramReportingPeriodAttendance](OldCalendarCode, OldFlexAttendanceProgramDescriptorId, OldFlexAttendanceProgramDescriptorNamespace, OldFlexAttendanceProgramDescriptorCodeValue, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.CalendarCode, d.FlexAttendanceProgramDescriptorId, j0.Namespace, j0.CodeValue, d.GradeLevelDescriptorId, j1.Namespace, j1.CodeValue, d.ReportingPeriodDescriptorId, j2.Namespace, j2.CodeValue, d.SchoolId, d.StudentUSI, j3.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.FlexAttendanceProgramDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.GradeLevelDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.ReportingPeriodDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Student j3
            ON d.StudentUSI = j3.StudentUSI
END
GO

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleRegularProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance](OldCalendarCode, OldFlexAttendanceProgramDescriptorId, OldFlexAttendanceProgramDescriptorNamespace, OldFlexAttendanceProgramDescriptorCodeValue, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldInstructionalSettingDescriptorId, OldInstructionalSettingDescriptorNamespace, OldInstructionalSettingDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.CalendarCode, d.FlexAttendanceProgramDescriptorId, j0.Namespace, j0.CodeValue, d.GradeLevelDescriptorId, j1.Namespace, j1.CodeValue, d.InstructionalSettingDescriptorId, j2.Namespace, j2.CodeValue, d.ReportingPeriodDescriptorId, j3.Namespace, j3.CodeValue, d.SchoolId, d.StudentUSI, j4.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.FlexAttendanceProgramDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.GradeLevelDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.InstructionalSettingDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Descriptor j3
            ON d.ReportingPeriodDescriptorId = j3.DescriptorId
        INNER JOIN edfi.Student j4
            ON d.StudentUSI = j4.StudentUSI
END
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FosterCareTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FosterCareTypeDescriptor_TR_DeleteTracking] ON [tx].[FosterCareTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FosterCareTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.FosterCareTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FosterCareTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FosterCareTypeDescriptor] ENABLE TRIGGER [tx_FosterCareTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_FrequencyOfServicesDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_FrequencyOfServicesDescriptor_TR_DeleteTracking] ON [tx].[FrequencyOfServicesDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FrequencyOfServicesDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.FrequencyOfServicesDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FrequencyOfServicesDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FrequencyOfServicesDescriptor] ENABLE TRIGGER [tx_FrequencyOfServicesDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_GenerationCodeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_GenerationCodeDescriptor_TR_DeleteTracking] ON [tx].[GenerationCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.GenerationCodeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.GenerationCodeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.GenerationCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[GenerationCodeDescriptor] ENABLE TRIGGER [tx_GenerationCodeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_GiftedTalentedProgramDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_GiftedTalentedProgramDescriptor_TR_DeleteTracking] ON [tx].[GiftedTalentedProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.GiftedTalentedProgramDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.GiftedTalentedProgramDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.GiftedTalentedProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[GiftedTalentedProgramDescriptor] ENABLE TRIGGER [tx_GiftedTalentedProgramDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_HearingAmplificationAccessDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_HearingAmplificationAccessDescriptor_TR_DeleteTracking] ON [tx].[HearingAmplificationAccessDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.HearingAmplificationAccessDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.HearingAmplificationAccessDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HearingAmplificationAccessDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HearingAmplificationAccessDescriptor] ENABLE TRIGGER [tx_HearingAmplificationAccessDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_HearingAmplificationDailyUseDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_HearingAmplificationDailyUseDescriptor_TR_DeleteTracking] ON [tx].[HearingAmplificationDailyUseDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.HearingAmplificationDailyUseDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.HearingAmplificationDailyUseDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HearingAmplificationDailyUseDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HearingAmplificationDailyUseDescriptor] ENABLE TRIGGER [tx_HearingAmplificationDailyUseDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_HearingAmplificationTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_HearingAmplificationTypeDescriptor_TR_DeleteTracking] ON [tx].[HearingAmplificationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.HearingAmplificationTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.HearingAmplificationTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HearingAmplificationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HearingAmplificationTypeDescriptor] ENABLE TRIGGER [tx_HearingAmplificationTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_HomelessStatusDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_HomelessStatusDescriptor_TR_DeleteTracking] ON [tx].[HomelessStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.HomelessStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.HomelessStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HomelessStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HomelessStatusDescriptor] ENABLE TRIGGER [tx_HomelessStatusDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_HoursSpentReceivingServicesDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_HoursSpentReceivingServicesDescriptor_TR_DeleteTracking] ON [tx].[HoursSpentReceivingServicesDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.HoursSpentReceivingServicesDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.HoursSpentReceivingServicesDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HoursSpentReceivingServicesDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HoursSpentReceivingServicesDescriptor] ENABLE TRIGGER [tx_HoursSpentReceivingServicesDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_IBCVendorDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_IBCVendorDescriptor_TR_DeleteTracking] ON [tx].[IBCVendorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.IBCVendorDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.IBCVendorDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IBCVendorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[IBCVendorDescriptor] ENABLE TRIGGER [tx_IBCVendorDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_InstructionalSettingDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_InstructionalSettingDescriptor_TR_DeleteTracking] ON [tx].[InstructionalSettingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.InstructionalSettingDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.InstructionalSettingDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.InstructionalSettingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[InstructionalSettingDescriptor] ENABLE TRIGGER [tx_InstructionalSettingDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_LangAcqServicesProvidedDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_LangAcqServicesProvidedDescriptor_TR_DeleteTracking] ON [tx].[LangAcqServicesProvidedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.LangAcqServicesProvidedDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.LangAcqServicesProvidedDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.LangAcqServicesProvidedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[LangAcqServicesProvidedDescriptor] ENABLE TRIGGER [tx_LangAcqServicesProvidedDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_MilitaryConnectedStudentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_MilitaryConnectedStudentDescriptor_TR_DeleteTracking] ON [tx].[MilitaryConnectedStudentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.MilitaryConnectedStudentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.MilitaryConnectedStudentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MilitaryConnectedStudentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[MilitaryConnectedStudentDescriptor] ENABLE TRIGGER [tx_MilitaryConnectedStudentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_NonCampusBasedInstructionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_NonCampusBasedInstructionDescriptor_TR_DeleteTracking] ON [tx].[NonCampusBasedInstructionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NonCampusBasedInstructionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.NonCampusBasedInstructionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NonCampusBasedInstructionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[NonCampusBasedInstructionDescriptor] ENABLE TRIGGER [tx_NonCampusBasedInstructionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_NonEnrolledStudentUILActivityDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_NonEnrolledStudentUILActivityDescriptor_TR_DeleteTracking] ON [tx].[NonEnrolledStudentUILActivityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NonEnrolledStudentUILActivityDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.NonEnrolledStudentUILActivityDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NonEnrolledStudentUILActivityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[NonEnrolledStudentUILActivityDescriptor] ENABLE TRIGGER [tx_NonEnrolledStudentUILActivityDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_NSLPTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_NSLPTypeDescriptor_TR_DeleteTracking] ON [tx].[NSLPTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NSLPTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.NSLPTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NSLPTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[NSLPTypeDescriptor] ENABLE TRIGGER [tx_NSLPTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ParentalPermissionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ParentalPermissionDescriptor_TR_DeleteTracking] ON [tx].[ParentalPermissionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ParentalPermissionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ParentalPermissionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ParentalPermissionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ParentalPermissionDescriptor] ENABLE TRIGGER [tx_ParentalPermissionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PayrollActivityDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PayrollActivityDescriptor_TR_DeleteTracking] ON [tx].[PayrollActivityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PayrollActivityDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PayrollActivityDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PayrollActivityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PayrollActivityDescriptor] ENABLE TRIGGER [tx_PayrollActivityDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PayrollExt_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PayrollExt_TR_DeleteTracking] ON [tx].[PayrollExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[PayrollExt](OldBeginDate, OldEducationOrganizationId, OldFiscalYear, OldOrganization, OldPayrollActivityDescriptorId, OldPayrollActivityDescriptorNamespace, OldPayrollActivityDescriptorCodeValue, OldPayrollFunctionDescriptorId, OldPayrollFunctionDescriptorNamespace, OldPayrollFunctionDescriptorCodeValue, OldPayrollFundDescriptorId, OldPayrollFundDescriptorNamespace, OldPayrollFundDescriptorCodeValue, OldPayrollObjectDescriptorId, OldPayrollObjectDescriptorNamespace, OldPayrollObjectDescriptorCodeValue, OldPayrollProgramIntentDescriptorId, OldPayrollProgramIntentDescriptorNamespace, OldPayrollProgramIntentDescriptorCodeValue, OldStaffUSI, OldStaffUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.BeginDate, d.EducationOrganizationId, d.FiscalYear, d.Organization, d.PayrollActivityDescriptorId, j0.Namespace, j0.CodeValue, d.PayrollFunctionDescriptorId, j1.Namespace, j1.CodeValue, d.PayrollFundDescriptorId, j2.Namespace, j2.CodeValue, d.PayrollObjectDescriptorId, j3.Namespace, j3.CodeValue, d.PayrollProgramIntentDescriptorId, j4.Namespace, j4.CodeValue, d.StaffUSI, j5.StaffUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.PayrollActivityDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.PayrollFunctionDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.PayrollFundDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Descriptor j3
            ON d.PayrollObjectDescriptorId = j3.DescriptorId
        INNER JOIN edfi.Descriptor j4
            ON d.PayrollProgramIntentDescriptorId = j4.DescriptorId
        INNER JOIN edfi.Staff j5
            ON d.StaffUSI = j5.StaffUSI
END
GO

ALTER TABLE [tx].[PayrollExt] ENABLE TRIGGER [tx_PayrollExt_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PayrollFunctionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PayrollFunctionDescriptor_TR_DeleteTracking] ON [tx].[PayrollFunctionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PayrollFunctionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PayrollFunctionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PayrollFunctionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PayrollFunctionDescriptor] ENABLE TRIGGER [tx_PayrollFunctionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PayrollFundDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PayrollFundDescriptor_TR_DeleteTracking] ON [tx].[PayrollFundDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PayrollFundDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PayrollFundDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PayrollFundDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PayrollFundDescriptor] ENABLE TRIGGER [tx_PayrollFundDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PayrollObjectDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PayrollObjectDescriptor_TR_DeleteTracking] ON [tx].[PayrollObjectDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PayrollObjectDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PayrollObjectDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PayrollObjectDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PayrollObjectDescriptor] ENABLE TRIGGER [tx_PayrollObjectDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PayrollProgramIntentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PayrollProgramIntentDescriptor_TR_DeleteTracking] ON [tx].[PayrollProgramIntentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PayrollProgramIntentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PayrollProgramIntentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PayrollProgramIntentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PayrollProgramIntentDescriptor] ENABLE TRIGGER [tx_PayrollProgramIntentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PKCurriculaDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PKCurriculaDescriptor_TR_DeleteTracking] ON [tx].[PKCurriculaDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PKCurriculaDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PKCurriculaDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKCurriculaDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKCurriculaDescriptor] ENABLE TRIGGER [tx_PKCurriculaDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PKFundingSourceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PKFundingSourceDescriptor_TR_DeleteTracking] ON [tx].[PKFundingSourceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PKFundingSourceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PKFundingSourceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKFundingSourceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKFundingSourceDescriptor] ENABLE TRIGGER [tx_PKFundingSourceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PKProgramEvaluationTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PKProgramEvaluationTypeDescriptor_TR_DeleteTracking] ON [tx].[PKProgramEvaluationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PKProgramEvaluationTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PKProgramEvaluationTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKProgramEvaluationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKProgramEvaluationTypeDescriptor] ENABLE TRIGGER [tx_PKProgramEvaluationTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PKProgramTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PKProgramTypeDescriptor_TR_DeleteTracking] ON [tx].[PKProgramTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PKProgramTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PKProgramTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKProgramTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKProgramTypeDescriptor] ENABLE TRIGGER [tx_PKProgramTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PKSchoolTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PKSchoolTypeDescriptor_TR_DeleteTracking] ON [tx].[PKSchoolTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PKSchoolTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PKSchoolTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKSchoolTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKSchoolTypeDescriptor] ENABLE TRIGGER [tx_PKSchoolTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PKStudentInstructionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PKStudentInstructionDescriptor_TR_DeleteTracking] ON [tx].[PKStudentInstructionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PKStudentInstructionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PKStudentInstructionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKStudentInstructionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKStudentInstructionDescriptor] ENABLE TRIGGER [tx_PKStudentInstructionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PKTeacherRequirementDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PKTeacherRequirementDescriptor_TR_DeleteTracking] ON [tx].[PKTeacherRequirementDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PKTeacherRequirementDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PKTeacherRequirementDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKTeacherRequirementDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKTeacherRequirementDescriptor] ENABLE TRIGGER [tx_PKTeacherRequirementDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PostSecondaryCertificationLicensureDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PostSecondaryCertificationLicensureDescriptor_TR_DeleteTracking] ON [tx].[PostSecondaryCertificationLicensureDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PostSecondaryCertificationLicensureDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PostSecondaryCertificationLicensureDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PostSecondaryCertificationLicensureDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PostSecondaryCertificationLicensureDescriptor] ENABLE TRIGGER [tx_PostSecondaryCertificationLicensureDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PostSecondaryCertLicensureResultDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PostSecondaryCertLicensureResultDescriptor_TR_DeleteTracking] ON [tx].[PostSecondaryCertLicensureResultDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PostSecondaryCertLicensureResultDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PostSecondaryCertLicensureResultDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PostSecondaryCertLicensureResultDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PostSecondaryCertLicensureResultDescriptor] ENABLE TRIGGER [tx_PostSecondaryCertLicensureResultDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PPCDServiceLocationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PPCDServiceLocationDescriptor_TR_DeleteTracking] ON [tx].[PPCDServiceLocationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PPCDServiceLocationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PPCDServiceLocationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PPCDServiceLocationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PPCDServiceLocationDescriptor] ENABLE TRIGGER [tx_PPCDServiceLocationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PreferredHomeCommunicationMethodDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PreferredHomeCommunicationMethodDescriptor_TR_DeleteTracking] ON [tx].[PreferredHomeCommunicationMethodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PreferredHomeCommunicationMethodDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.PreferredHomeCommunicationMethodDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PreferredHomeCommunicationMethodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PreferredHomeCommunicationMethodDescriptor] ENABLE TRIGGER [tx_PreferredHomeCommunicationMethodDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PriorYearLeaver_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PriorYearLeaver_TR_DeleteTracking] ON [tx].[PriorYearLeaver] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[PriorYearLeaver](OldSchoolId, OldStudentUId, Id, Discriminator, ChangeVersion)
    SELECT d.SchoolId, d.StudentUId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[PriorYearLeaver] ENABLE TRIGGER [tx_PriorYearLeaver_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PriorYearLeaverParent_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PriorYearLeaverParent_TR_DeleteTracking] ON [tx].[PriorYearLeaverParent] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[PriorYearLeaverParent](OldParentUId, Id, Discriminator, ChangeVersion)
    SELECT d.ParentUId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[PriorYearLeaverParent] ENABLE TRIGGER [tx_PriorYearLeaverParent_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_PriorYearLeaverStudentParentAssociation_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_PriorYearLeaverStudentParentAssociation_TR_DeleteTracking] ON [tx].[PriorYearLeaverStudentParentAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[PriorYearLeaverStudentParentAssociation](OldParentUId, OldSchoolId, OldStudentUId, Id, Discriminator, ChangeVersion)
    SELECT d.ParentUId, d.SchoolId, d.StudentUId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ENABLE TRIGGER [tx_PriorYearLeaverStudentParentAssociation_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ProgramOfStudyDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ProgramOfStudyDescriptor_TR_DeleteTracking] ON [tx].[ProgramOfStudyDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ProgramOfStudyDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ProgramOfStudyDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ProgramOfStudyDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ProgramOfStudyDescriptor] ENABLE TRIGGER [tx_ProgramOfStudyDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_RegionalDaySchoolProgramForDeafDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_RegionalDaySchoolProgramForDeafDescriptor_TR_DeleteTracking] ON [tx].[RegionalDaySchoolProgramForDeafDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.RegionalDaySchoolProgramForDeafDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.RegionalDaySchoolProgramForDeafDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RegionalDaySchoolProgramForDeafDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[RegionalDaySchoolProgramForDeafDescriptor] ENABLE TRIGGER [tx_RegionalDaySchoolProgramForDeafDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ReportAssessmentTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ReportAssessmentTypeDescriptor_TR_DeleteTracking] ON [tx].[ReportAssessmentTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ReportAssessmentTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ReportAssessmentTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReportAssessmentTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ReportAssessmentTypeDescriptor] ENABLE TRIGGER [tx_ReportAssessmentTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ReportingPeriodDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ReportingPeriodDescriptor_TR_DeleteTracking] ON [tx].[ReportingPeriodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ReportingPeriodDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ReportingPeriodDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReportingPeriodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ReportingPeriodDescriptor] ENABLE TRIGGER [tx_ReportingPeriodDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ReportingPeriodExt_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ReportingPeriodExt_TR_DeleteTracking] ON [tx].[ReportingPeriodExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[ReportingPeriodExt](OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, Id, Discriminator, ChangeVersion)
    SELECT d.ReportingPeriodDescriptorId, j0.Namespace, j0.CodeValue, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.ReportingPeriodDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [tx].[ReportingPeriodExt] ENABLE TRIGGER [tx_ReportingPeriodExt_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_RestraintStaffTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_RestraintStaffTypeDescriptor_TR_DeleteTracking] ON [tx].[RestraintStaffTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.RestraintStaffTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.RestraintStaffTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RestraintStaffTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[RestraintStaffTypeDescriptor] ENABLE TRIGGER [tx_RestraintStaffTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_SharedServiceArrangementExt_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_SharedServiceArrangementExt_TR_DeleteTracking] ON [tx].[SharedServiceArrangementExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[SharedServiceArrangementExt](OldEducationOrganizationId, OldFiscalYear, OldSSAFundDescriptorId, OldSSAFundDescriptorNamespace, OldSSAFundDescriptorCodeValue, OldSSAMemberDistrictId, OldSSATypeDescriptorId, OldSSATypeDescriptorNamespace, OldSSATypeDescriptorCodeValue, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.FiscalYear, d.SSAFundDescriptorId, j0.Namespace, j0.CodeValue, d.SSAMemberDistrictId, d.SSATypeDescriptorId, j1.Namespace, j1.CodeValue, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.SSAFundDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.SSATypeDescriptorId = j1.DescriptorId
END
GO

ALTER TABLE [tx].[SharedServiceArrangementExt] ENABLE TRIGGER [tx_SharedServiceArrangementExt_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_SharedServiceArrangementStaffDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_SharedServiceArrangementStaffDescriptor_TR_DeleteTracking] ON [tx].[SharedServiceArrangementStaffDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SharedServiceArrangementStaffDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.SharedServiceArrangementStaffDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SharedServiceArrangementStaffDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[SharedServiceArrangementStaffDescriptor] ENABLE TRIGGER [tx_SharedServiceArrangementStaffDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_SpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_SpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[SpecialEducationProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[SpecialEducationProgramReportingPeriodAttendance](OldCalendarCode, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldInstructionalSettingDescriptorId, OldInstructionalSettingDescriptorNamespace, OldInstructionalSettingDescriptorCodeValue, OldRegionalDaySchoolProgramForDeafDescriptorId, OldRegionalDaySchoolProgramForDeafDescriptorNamespace, OldRegionalDaySchoolProgramForDeafDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.CalendarCode, d.GradeLevelDescriptorId, j0.Namespace, j0.CodeValue, d.InstructionalSettingDescriptorId, j1.Namespace, j1.CodeValue, d.RegionalDaySchoolProgramForDeafDescriptorId, j2.Namespace, j2.CodeValue, d.ReportingPeriodDescriptorId, j3.Namespace, j3.CodeValue, d.SchoolId, d.StudentUSI, j4.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.GradeLevelDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.InstructionalSettingDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Descriptor j2
            ON d.RegionalDaySchoolProgramForDeafDescriptorId = j2.DescriptorId
        INNER JOIN edfi.Descriptor j3
            ON d.ReportingPeriodDescriptorId = j3.DescriptorId
        INNER JOIN edfi.Student j4
            ON d.StudentUSI = j4.StudentUSI
END
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_SpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_SpecialProgramsReportingPeriodAttendance_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_SpecialProgramsReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[SpecialProgramsReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[SpecialProgramsReportingPeriodAttendance](OldCalendarCode, OldGradeLevelDescriptorId, OldGradeLevelDescriptorNamespace, OldGradeLevelDescriptorCodeValue, OldReportingPeriodDescriptorId, OldReportingPeriodDescriptorNamespace, OldReportingPeriodDescriptorCodeValue, OldSchoolId, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.CalendarCode, d.GradeLevelDescriptorId, j0.Namespace, j0.CodeValue, d.ReportingPeriodDescriptorId, j1.Namespace, j1.CodeValue, d.SchoolId, d.StudentUSI, j2.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.GradeLevelDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Descriptor j1
            ON d.ReportingPeriodDescriptorId = j1.DescriptorId
        INNER JOIN edfi.Student j2
            ON d.StudentUSI = j2.StudentUSI
END
GO

ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ENABLE TRIGGER [tx_SpecialProgramsReportingPeriodAttendance_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_SSAFundDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_SSAFundDescriptor_TR_DeleteTracking] ON [tx].[SSAFundDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SSAFundDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.SSAFundDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SSAFundDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[SSAFundDescriptor] ENABLE TRIGGER [tx_SSAFundDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_SSAOrgAssociationExt_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_SSAOrgAssociationExt_TR_DeleteTracking] ON [tx].[SSAOrgAssociationExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[SSAOrgAssociationExt](OldEducationOrganizationId, OldFiscalAgentDistrictId, OldSSATypeDescriptorId, OldSSATypeDescriptorNamespace, OldSSATypeDescriptorCodeValue, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.FiscalAgentDistrictId, d.SSATypeDescriptorId, j0.Namespace, j0.CodeValue, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.SSATypeDescriptorId = j0.DescriptorId
END
GO

ALTER TABLE [tx].[SSAOrgAssociationExt] ENABLE TRIGGER [tx_SSAOrgAssociationExt_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_SSATypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_SSATypeDescriptor_TR_DeleteTracking] ON [tx].[SSATypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.SSATypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.SSATypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SSATypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[SSATypeDescriptor] ENABLE TRIGGER [tx_SSATypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_StaffServiceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_StaffServiceDescriptor_TR_DeleteTracking] ON [tx].[StaffServiceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffServiceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.StaffServiceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffServiceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[StaffServiceDescriptor] ENABLE TRIGGER [tx_StaffServiceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_StaffTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_StaffTypeDescriptor_TR_DeleteTracking] ON [tx].[StaffTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StaffTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.StaffTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[StaffTypeDescriptor] ENABLE TRIGGER [tx_StaffTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_StudentApplication_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_StudentApplication_TR_DeleteTracking] ON [tx].[StudentApplication] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[StudentApplication](OldApplicationIdentifier, OldEducationOrganizationId, OldSchoolYear, Id, Discriminator, ChangeVersion)
    SELECT d.ApplicationIdentifier, d.EducationOrganizationId, d.SchoolYear, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[StudentApplication] ENABLE TRIGGER [tx_StudentApplication_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_StudentAttributionDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_StudentAttributionDescriptor_TR_DeleteTracking] ON [tx].[StudentAttributionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.StudentAttributionDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.StudentAttributionDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StudentAttributionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[StudentAttributionDescriptor] ENABLE TRIGGER [tx_StudentAttributionDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_StudentSpecialEducationProgramEligibilityAssociation_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_StudentSpecialEducationProgramEligibilityAssociation_TR_DeleteTracking] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_tx].[StudentSpecialEducationProgramEligibilityAssociation](OldEducationOrganizationId, OldProgramName, OldProgramTypeDescriptorId, OldProgramTypeDescriptorNamespace, OldProgramTypeDescriptorCodeValue, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.EducationOrganizationId, d.ProgramName, d.ProgramTypeDescriptorId, j0.Namespace, j0.CodeValue, d.StudentUSI, j1.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Descriptor j0
            ON d.ProgramTypeDescriptorId = j0.DescriptorId
        INNER JOIN edfi.Student j1
            ON d.StudentUSI = j1.StudentUSI
END
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ENABLE TRIGGER [tx_StudentSpecialEducationProgramEligibilityAssociation_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_TeacherIncentiveAllotmentDesignationDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_TeacherIncentiveAllotmentDesignationDescriptor_TR_DeleteTracking] ON [tx].[TeacherIncentiveAllotmentDesignationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TeacherIncentiveAllotmentDesignationDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.TeacherIncentiveAllotmentDesignationDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TeacherIncentiveAllotmentDesignationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[TeacherIncentiveAllotmentDesignationDescriptor] ENABLE TRIGGER [tx_TeacherIncentiveAllotmentDesignationDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_TexasFirstEarlyHSCompletionProgramDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_TexasFirstEarlyHSCompletionProgramDescriptor_TR_DeleteTracking] ON [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TexasFirstEarlyHSCompletionProgramDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.TexasFirstEarlyHSCompletionProgramDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TexasFirstEarlyHSCompletionProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] ENABLE TRIGGER [tx_TexasFirstEarlyHSCompletionProgramDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_TitleOfAssessmentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_TitleOfAssessmentDescriptor_TR_DeleteTracking] ON [tx].[TitleOfAssessmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TitleOfAssessmentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.TitleOfAssessmentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TitleOfAssessmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[TitleOfAssessmentDescriptor] ENABLE TRIGGER [tx_TitleOfAssessmentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_ToolOrAssessmentUsedDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_ToolOrAssessmentUsedDescriptor_TR_DeleteTracking] ON [tx].[ToolOrAssessmentUsedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ToolOrAssessmentUsedDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.ToolOrAssessmentUsedDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ToolOrAssessmentUsedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ToolOrAssessmentUsedDescriptor] ENABLE TRIGGER [tx_ToolOrAssessmentUsedDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_TruancyDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_TruancyDescriptor_TR_DeleteTracking] ON [tx].[TruancyDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.TruancyDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.TruancyDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TruancyDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[TruancyDescriptor] ENABLE TRIGGER [tx_TruancyDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_UnaccompaniedYouthDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_UnaccompaniedYouthDescriptor_TR_DeleteTracking] ON [tx].[UnaccompaniedYouthDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.UnaccompaniedYouthDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.UnaccompaniedYouthDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.UnaccompaniedYouthDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[UnaccompaniedYouthDescriptor] ENABLE TRIGGER [tx_UnaccompaniedYouthDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [tx].[tx_UnschooledAsyleeRefugeeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [tx].[tx_UnschooledAsyleeRefugeeDescriptor_TR_DeleteTracking] ON [tx].[UnschooledAsyleeRefugeeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.UnschooledAsyleeRefugeeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'tx.UnschooledAsyleeRefugeeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.UnschooledAsyleeRefugeeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[UnschooledAsyleeRefugeeDescriptor] ENABLE TRIGGER [tx_UnschooledAsyleeRefugeeDescriptor_TR_DeleteTracking]
GO


