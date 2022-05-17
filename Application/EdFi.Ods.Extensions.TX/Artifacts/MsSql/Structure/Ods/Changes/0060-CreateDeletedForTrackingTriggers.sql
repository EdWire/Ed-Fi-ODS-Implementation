CREATE TRIGGER [tx].[tx_ADAEligibilityDescriptor_TR_DeleteTracking] ON [tx].[ADAEligibilityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ADAEligibilityDescriptor](ADAEligibilityDescriptorId, Id, ChangeVersion)
    SELECT  d.ADAEligibilityDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ADAEligibilityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ADAEligibilityDescriptor] ENABLE TRIGGER [tx_ADAEligibilityDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ActualExt_TR_DeleteTracking] ON [tx].[ActualExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ActualExt](EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId, Id, ChangeVersion)
    SELECT  EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[ActualExt] ENABLE TRIGGER [tx_ActualExt_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ApplicationTypeDescriptor_TR_DeleteTracking] ON [tx].[ApplicationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ApplicationTypeDescriptor](ApplicationTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.ApplicationTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ApplicationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ApplicationTypeDescriptor] ENABLE TRIGGER [tx_ApplicationTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ArmedServicesVocAptBatteryDescriptor_TR_DeleteTracking] ON [tx].[ArmedServicesVocAptBatteryDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ArmedServicesVocAptBatteryDescriptor](ArmedServicesVocAptBatteryDescriptorId, Id, ChangeVersion)
    SELECT  d.ArmedServicesVocAptBatteryDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ArmedServicesVocAptBatteryDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ArmedServicesVocAptBatteryDescriptor] ENABLE TRIGGER [tx_ArmedServicesVocAptBatteryDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_AsOfStatusALeavers_TR_DeleteTracking] ON [tx].[AsOfStatusALeavers] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[AsOfStatusALeavers](SchoolId, StudentUID, Id, ChangeVersion)
    SELECT  SchoolId, StudentUID, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[AsOfStatusALeavers] ENABLE TRIGGER [tx_AsOfStatusALeavers_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_AsOfStatusLastDayEnrollmentDescriptor_TR_DeleteTracking] ON [tx].[AsOfStatusLastDayEnrollmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[AsOfStatusLastDayEnrollmentDescriptor](AsOfStatusLastDayEnrollmentDescriptorId, Id, ChangeVersion)
    SELECT  d.AsOfStatusLastDayEnrollmentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AsOfStatusLastDayEnrollmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AsOfStatusLastDayEnrollmentDescriptor] ENABLE TRIGGER [tx_AsOfStatusLastDayEnrollmentDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_AsOfStatusLastFridayOctoberDescriptor_TR_DeleteTracking] ON [tx].[AsOfStatusLastFridayOctoberDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[AsOfStatusLastFridayOctoberDescriptor](AsOfStatusLastFridayOctoberDescriptorId, Id, ChangeVersion)
    SELECT  d.AsOfStatusLastFridayOctoberDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AsOfStatusLastFridayOctoberDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AsOfStatusLastFridayOctoberDescriptor] ENABLE TRIGGER [tx_AsOfStatusLastFridayOctoberDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_AssessmentResultsObtainedDescriptor_TR_DeleteTracking] ON [tx].[AssessmentResultsObtainedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[AssessmentResultsObtainedDescriptor](AssessmentResultsObtainedDescriptorId, Id, ChangeVersion)
    SELECT  d.AssessmentResultsObtainedDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AssessmentResultsObtainedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AssessmentResultsObtainedDescriptor] ENABLE TRIGGER [tx_AssessmentResultsObtainedDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_AuxiliaryRoleIdDescriptor_TR_DeleteTracking] ON [tx].[AuxiliaryRoleIdDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[AuxiliaryRoleIdDescriptor](AuxiliaryRoleIdDescriptorId, Id, ChangeVersion)
    SELECT  d.AuxiliaryRoleIdDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AuxiliaryRoleIdDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[AuxiliaryRoleIdDescriptor] ENABLE TRIGGER [tx_AuxiliaryRoleIdDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_BasicReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[BasicReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[BasicReportingPeriodAttendance](CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[BasicReportingPeriodAttendance] ENABLE TRIGGER [tx_BasicReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_BilingualESLFundingDescriptor_TR_DeleteTracking] ON [tx].[BilingualESLFundingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[BilingualESLFundingDescriptor](BilingualESLFundingDescriptorId, Id, ChangeVersion)
    SELECT  d.BilingualESLFundingDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.BilingualESLFundingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[BilingualESLFundingDescriptor] ENABLE TRIGGER [tx_BilingualESLFundingDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_BilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[BilingualESLProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[BilingualESLProgramReportingPeriodAttendance](BilingualESLFundingDescriptorId, CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  BilingualESLFundingDescriptorId, CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_BilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_BudgetExt_TR_DeleteTracking] ON [tx].[BudgetExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[BudgetExt](EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId, Id, ChangeVersion)
    SELECT  EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[BudgetExt] ENABLE TRIGGER [tx_BudgetExt_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_CTEProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[CTEProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[CTEProgramReportingPeriodAttendance](CalendarCode, CTEServiceIdDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  CalendarCode, CTEServiceIdDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_CTEProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_CTEServiceIdDescriptor_TR_DeleteTracking] ON [tx].[CTEServiceIdDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[CTEServiceIdDescriptor](CTEServiceIdDescriptorId, Id, ChangeVersion)
    SELECT  d.CTEServiceIdDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CTEServiceIdDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CTEServiceIdDescriptor] ENABLE TRIGGER [tx_CTEServiceIdDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_CalendarWaiverEventTypeDescriptor_TR_DeleteTracking] ON [tx].[CalendarWaiverEventTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[CalendarWaiverEventTypeDescriptor](CalendarWaiverEventTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.CalendarWaiverEventTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CalendarWaiverEventTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CalendarWaiverEventTypeDescriptor] ENABLE TRIGGER [tx_CalendarWaiverEventTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_CampusEnrollmentTypeDescriptor_TR_DeleteTracking] ON [tx].[CampusEnrollmentTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[CampusEnrollmentTypeDescriptor](CampusEnrollmentTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.CampusEnrollmentTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CampusEnrollmentTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CampusEnrollmentTypeDescriptor] ENABLE TRIGGER [tx_CampusEnrollmentTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ChildCountFundingDescriptor_TR_DeleteTracking] ON [tx].[ChildCountFundingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ChildCountFundingDescriptor](ChildCountFundingDescriptorId, Id, ChangeVersion)
    SELECT  d.ChildCountFundingDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ChildCountFundingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ChildCountFundingDescriptor] ENABLE TRIGGER [tx_ChildCountFundingDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ClassTypeDescriptor_TR_DeleteTracking] ON [tx].[ClassTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ClassTypeDescriptor](ClassTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.ClassTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ClassTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ClassTypeDescriptor] ENABLE TRIGGER [tx_ClassTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ContractedInstructionalStaffFTEExt_TR_DeleteTracking] ON [tx].[ContractedInstructionalStaffFTEExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ContractedInstructionalStaffFTEExt](EducationOrganizationId, ProgramIntentDescriptorId, SchoolId, Id, ChangeVersion)
    SELECT  EducationOrganizationId, ProgramIntentDescriptorId, SchoolId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ENABLE TRIGGER [tx_ContractedInstructionalStaffFTEExt_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_CourseSequenceDescriptor_TR_DeleteTracking] ON [tx].[CourseSequenceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[CourseSequenceDescriptor](CourseSequenceDescriptorId, Id, ChangeVersion)
    SELECT  d.CourseSequenceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CourseSequenceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CourseSequenceDescriptor] ENABLE TRIGGER [tx_CourseSequenceDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_CrisisEventDescriptor_TR_DeleteTracking] ON [tx].[CrisisEventDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[CrisisEventDescriptor](CrisisEventDescriptorId, Id, ChangeVersion)
    SELECT  d.CrisisEventDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CrisisEventDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[CrisisEventDescriptor] ENABLE TRIGGER [tx_CrisisEventDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_DyslexiaRiskDescriptor_TR_DeleteTracking] ON [tx].[DyslexiaRiskDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[DyslexiaRiskDescriptor](DyslexiaRiskDescriptorId, Id, ChangeVersion)
    SELECT  d.DyslexiaRiskDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DyslexiaRiskDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[DyslexiaRiskDescriptor] ENABLE TRIGGER [tx_DyslexiaRiskDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_DyslexiaScreeningExceptionReasonDescriptor_TR_DeleteTracking] ON [tx].[DyslexiaScreeningExceptionReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[DyslexiaScreeningExceptionReasonDescriptor](DyslexiaScreeningExceptionReasonDescriptorId, Id, ChangeVersion)
    SELECT  d.DyslexiaScreeningExceptionReasonDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DyslexiaScreeningExceptionReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[DyslexiaScreeningExceptionReasonDescriptor] ENABLE TRIGGER [tx_DyslexiaScreeningExceptionReasonDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_DyslexiaServicesDescriptor_TR_DeleteTracking] ON [tx].[DyslexiaServicesDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[DyslexiaServicesDescriptor](DyslexiaServicesDescriptorId, Id, ChangeVersion)
    SELECT  d.DyslexiaServicesDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.DyslexiaServicesDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[DyslexiaServicesDescriptor] ENABLE TRIGGER [tx_DyslexiaServicesDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ELOActivityDescriptor_TR_DeleteTracking] ON [tx].[ELOActivityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ELOActivityDescriptor](ELOActivityDescriptorId, Id, ChangeVersion)
    SELECT  d.ELOActivityDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ELOActivityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ELOActivityDescriptor] ENABLE TRIGGER [tx_ELOActivityDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ELOTypeDescriptor_TR_DeleteTracking] ON [tx].[ELOTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ELOTypeDescriptor](ELOTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.ELOTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ELOTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ELOTypeDescriptor] ENABLE TRIGGER [tx_ELOTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EarlyReadingIndicatorDescriptor_TR_DeleteTracking] ON [tx].[EarlyReadingIndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EarlyReadingIndicatorDescriptor](EarlyReadingIndicatorDescriptorId, Id, ChangeVersion)
    SELECT  d.EarlyReadingIndicatorDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EarlyReadingIndicatorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EarlyReadingIndicatorDescriptor] ENABLE TRIGGER [tx_EarlyReadingIndicatorDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EconomicDisadvantageDescriptor_TR_DeleteTracking] ON [tx].[EconomicDisadvantageDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EconomicDisadvantageDescriptor](EconomicDisadvantageDescriptorId, Id, ChangeVersion)
    SELECT  d.EconomicDisadvantageDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EconomicDisadvantageDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EconomicDisadvantageDescriptor] ENABLE TRIGGER [tx_EconomicDisadvantageDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EconomicDisadvantageLastDateOfEnrollmentDescriptor_TR_DeleteTracking] ON [tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor](EconomicDisadvantageLastDateOfEnrollmentDescriptorId, Id, ChangeVersion)
    SELECT  d.EconomicDisadvantageLastDateOfEnrollmentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EconomicDisadvantageLastDateOfEnrollmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor] ENABLE TRIGGER [tx_EconomicDisadvantageLastDateOfEnrollmentDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EligibilityDelayReasonDescriptor_TR_DeleteTracking] ON [tx].[EligibilityDelayReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EligibilityDelayReasonDescriptor](EligibilityDelayReasonDescriptorId, Id, ChangeVersion)
    SELECT  d.EligibilityDelayReasonDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EligibilityDelayReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EligibilityDelayReasonDescriptor] ENABLE TRIGGER [tx_EligibilityDelayReasonDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EmergentBilingualIndicatorDescriptor_TR_DeleteTracking] ON [tx].[EmergentBilingualIndicatorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EmergentBilingualIndicatorDescriptor](EmergentBilingualIndicatorDescriptorId, Id, ChangeVersion)
    SELECT  d.EmergentBilingualIndicatorDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EmergentBilingualIndicatorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EmergentBilingualIndicatorDescriptor] ENABLE TRIGGER [tx_EmergentBilingualIndicatorDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EndorsementCompletedDescriptor_TR_DeleteTracking] ON [tx].[EndorsementCompletedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EndorsementCompletedDescriptor](EndorsementCompletedDescriptorId, Id, ChangeVersion)
    SELECT  d.EndorsementCompletedDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EndorsementCompletedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EndorsementCompletedDescriptor] ENABLE TRIGGER [tx_EndorsementCompletedDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EndorsementPursuingDescriptor_TR_DeleteTracking] ON [tx].[EndorsementPursuingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EndorsementPursuingDescriptor](EndorsementPursuingDescriptorId, Id, ChangeVersion)
    SELECT  d.EndorsementPursuingDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EndorsementPursuingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EndorsementPursuingDescriptor] ENABLE TRIGGER [tx_EndorsementPursuingDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_EvaluationDelayReasonDescriptor_TR_DeleteTracking] ON [tx].[EvaluationDelayReasonDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[EvaluationDelayReasonDescriptor](EvaluationDelayReasonDescriptorId, Id, ChangeVersion)
    SELECT  d.EvaluationDelayReasonDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.EvaluationDelayReasonDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[EvaluationDelayReasonDescriptor] ENABLE TRIGGER [tx_EvaluationDelayReasonDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ExtendedSchoolYearServicesAttendance_TR_DeleteTracking] ON [tx].[ExtendedSchoolYearServicesAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ExtendedSchoolYearServicesAttendance](FirstInstructionalSettingDescriptorId, GradeLevelDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  FirstInstructionalSettingDescriptorId, GradeLevelDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ENABLE TRIGGER [tx_ExtendedSchoolYearServicesAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FinancialAidApplicationDescriptor_TR_DeleteTracking] ON [tx].[FinancialAidApplicationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FinancialAidApplicationDescriptor](FinancialAidApplicationDescriptorId, Id, ChangeVersion)
    SELECT  d.FinancialAidApplicationDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FinancialAidApplicationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FinancialAidApplicationDescriptor] ENABLE TRIGGER [tx_FinancialAidApplicationDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FlexAttendanceProgramDescriptor_TR_DeleteTracking] ON [tx].[FlexAttendanceProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FlexAttendanceProgramDescriptor](FlexAttendanceProgramDescriptorId, Id, ChangeVersion)
    SELECT  d.FlexAttendanceProgramDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FlexAttendanceProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FlexAttendanceProgramDescriptor] ENABLE TRIGGER [tx_FlexAttendanceProgramDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FlexibleBilingualESLProgramReportingPeriodAttendance](BilingualESLFundingDescriptorId, CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  BilingualESLFundingDescriptorId, CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FlexibleCTEProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FlexibleCTEProgramReportingPeriodAttendance](CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleCTEProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FlexibleRegularProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FlexibleRegularProgramReportingPeriodAttendance](CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleRegularProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance](CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, InstructionalSettingDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, InstructionalSettingDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FosterCareTypeDescriptor_TR_DeleteTracking] ON [tx].[FosterCareTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FosterCareTypeDescriptor](FosterCareTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.FosterCareTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FosterCareTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FosterCareTypeDescriptor] ENABLE TRIGGER [tx_FosterCareTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FrequencyOfServicesDescriptor_TR_DeleteTracking] ON [tx].[FrequencyOfServicesDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FrequencyOfServicesDescriptor](FrequencyOfServicesDescriptorId, Id, ChangeVersion)
    SELECT  d.FrequencyOfServicesDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FrequencyOfServicesDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FrequencyOfServicesDescriptor] ENABLE TRIGGER [tx_FrequencyOfServicesDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FunctionDescriptor_TR_DeleteTracking] ON [tx].[FunctionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FunctionDescriptor](FunctionDescriptorId, Id, ChangeVersion)
    SELECT  d.FunctionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FunctionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FunctionDescriptor] ENABLE TRIGGER [tx_FunctionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_FundDescriptor_TR_DeleteTracking] ON [tx].[FundDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[FundDescriptor](FundDescriptorId, Id, ChangeVersion)
    SELECT  d.FundDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FundDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[FundDescriptor] ENABLE TRIGGER [tx_FundDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_GenerationCodeDescriptor_TR_DeleteTracking] ON [tx].[GenerationCodeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[GenerationCodeDescriptor](GenerationCodeDescriptorId, Id, ChangeVersion)
    SELECT  d.GenerationCodeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.GenerationCodeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[GenerationCodeDescriptor] ENABLE TRIGGER [tx_GenerationCodeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_GiftedTalentedProgramDescriptor_TR_DeleteTracking] ON [tx].[GiftedTalentedProgramDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[GiftedTalentedProgramDescriptor](GiftedTalentedProgramDescriptorId, Id, ChangeVersion)
    SELECT  d.GiftedTalentedProgramDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.GiftedTalentedProgramDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[GiftedTalentedProgramDescriptor] ENABLE TRIGGER [tx_GiftedTalentedProgramDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_HearingAmplifAvgDailyUseDescriptor_TR_DeleteTracking] ON [tx].[HearingAmplifAvgDailyUseDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[HearingAmplifAvgDailyUseDescriptor](HearingAmplifAvgDailyUseDescriptorId, Id, ChangeVersion)
    SELECT  d.HearingAmplifAvgDailyUseDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HearingAmplifAvgDailyUseDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HearingAmplifAvgDailyUseDescriptor] ENABLE TRIGGER [tx_HearingAmplifAvgDailyUseDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_HearingAmplificationAccessDescriptor_TR_DeleteTracking] ON [tx].[HearingAmplificationAccessDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[HearingAmplificationAccessDescriptor](HearingAmplificationAccessDescriptorId, Id, ChangeVersion)
    SELECT  d.HearingAmplificationAccessDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HearingAmplificationAccessDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HearingAmplificationAccessDescriptor] ENABLE TRIGGER [tx_HearingAmplificationAccessDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_HearingAmplificationTypeDescriptor_TR_DeleteTracking] ON [tx].[HearingAmplificationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[HearingAmplificationTypeDescriptor](HearingAmplificationTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.HearingAmplificationTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HearingAmplificationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HearingAmplificationTypeDescriptor] ENABLE TRIGGER [tx_HearingAmplificationTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_HomelessStatusDescriptor_TR_DeleteTracking] ON [tx].[HomelessStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[HomelessStatusDescriptor](HomelessStatusDescriptorId, Id, ChangeVersion)
    SELECT  d.HomelessStatusDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HomelessStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HomelessStatusDescriptor] ENABLE TRIGGER [tx_HomelessStatusDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_HomelessStatusPriorYearDescriptor_TR_DeleteTracking] ON [tx].[HomelessStatusPriorYearDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[HomelessStatusPriorYearDescriptor](HomelessStatusPriorYearDescriptorId, Id, ChangeVersion)
    SELECT  d.HomelessStatusPriorYearDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HomelessStatusPriorYearDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HomelessStatusPriorYearDescriptor] ENABLE TRIGGER [tx_HomelessStatusPriorYearDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_HoursSpentReceivingServicesDescriptor_TR_DeleteTracking] ON [tx].[HoursSpentReceivingServicesDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[HoursSpentReceivingServicesDescriptor](HoursSpentReceivingServicesDescriptorId, Id, ChangeVersion)
    SELECT  d.HoursSpentReceivingServicesDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.HoursSpentReceivingServicesDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[HoursSpentReceivingServicesDescriptor] ENABLE TRIGGER [tx_HoursSpentReceivingServicesDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_IBCVendorDescriptor_TR_DeleteTracking] ON [tx].[IBCVendorDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[IBCVendorDescriptor](IBCVendorDescriptorId, Id, ChangeVersion)
    SELECT  d.IBCVendorDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.IBCVendorDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[IBCVendorDescriptor] ENABLE TRIGGER [tx_IBCVendorDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_InstructionalSettingDescriptor_TR_DeleteTracking] ON [tx].[InstructionalSettingDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[InstructionalSettingDescriptor](InstructionalSettingDescriptorId, Id, ChangeVersion)
    SELECT  d.InstructionalSettingDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.InstructionalSettingDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[InstructionalSettingDescriptor] ENABLE TRIGGER [tx_InstructionalSettingDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_LangAcqServicesProvidedDescriptor_TR_DeleteTracking] ON [tx].[LangAcqServicesProvidedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[LangAcqServicesProvidedDescriptor](LangAcqServicesProvidedDescriptorId, Id, ChangeVersion)
    SELECT  d.LangAcqServicesProvidedDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.LangAcqServicesProvidedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[LangAcqServicesProvidedDescriptor] ENABLE TRIGGER [tx_LangAcqServicesProvidedDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_MilitaryConnectedStudentDescriptor_TR_DeleteTracking] ON [tx].[MilitaryConnectedStudentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[MilitaryConnectedStudentDescriptor](MilitaryConnectedStudentDescriptorId, Id, ChangeVersion)
    SELECT  d.MilitaryConnectedStudentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MilitaryConnectedStudentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[MilitaryConnectedStudentDescriptor] ENABLE TRIGGER [tx_MilitaryConnectedStudentDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_NSLPTypeDescriptor_TR_DeleteTracking] ON [tx].[NSLPTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[NSLPTypeDescriptor](NSLPTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.NSLPTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NSLPTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[NSLPTypeDescriptor] ENABLE TRIGGER [tx_NSLPTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_NonCampusBasedInstructionDescriptor_TR_DeleteTracking] ON [tx].[NonCampusBasedInstructionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[NonCampusBasedInstructionDescriptor](NonCampusBasedInstructionDescriptorId, Id, ChangeVersion)
    SELECT  d.NonCampusBasedInstructionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NonCampusBasedInstructionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[NonCampusBasedInstructionDescriptor] ENABLE TRIGGER [tx_NonCampusBasedInstructionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ObjectDescriptor_TR_DeleteTracking] ON [tx].[ObjectDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ObjectDescriptor](ObjectDescriptorId, Id, ChangeVersion)
    SELECT  d.ObjectDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ObjectDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ObjectDescriptor] ENABLE TRIGGER [tx_ObjectDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PKCurriculaDescriptor_TR_DeleteTracking] ON [tx].[PKCurriculaDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PKCurriculaDescriptor](PKCurriculaDescriptorId, Id, ChangeVersion)
    SELECT  d.PKCurriculaDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKCurriculaDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKCurriculaDescriptor] ENABLE TRIGGER [tx_PKCurriculaDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PKFundingSourceDescriptor_TR_DeleteTracking] ON [tx].[PKFundingSourceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PKFundingSourceDescriptor](PKFundingSourceDescriptorId, Id, ChangeVersion)
    SELECT  d.PKFundingSourceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKFundingSourceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKFundingSourceDescriptor] ENABLE TRIGGER [tx_PKFundingSourceDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PKProgramEvaluationTypeDescriptor_TR_DeleteTracking] ON [tx].[PKProgramEvaluationTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PKProgramEvaluationTypeDescriptor](PKProgramEvaluationTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.PKProgramEvaluationTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKProgramEvaluationTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKProgramEvaluationTypeDescriptor] ENABLE TRIGGER [tx_PKProgramEvaluationTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PKProgramTypeDescriptor_TR_DeleteTracking] ON [tx].[PKProgramTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PKProgramTypeDescriptor](PKProgramTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.PKProgramTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKProgramTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKProgramTypeDescriptor] ENABLE TRIGGER [tx_PKProgramTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PKSchoolTypeDescriptor_TR_DeleteTracking] ON [tx].[PKSchoolTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PKSchoolTypeDescriptor](PKSchoolTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.PKSchoolTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKSchoolTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKSchoolTypeDescriptor] ENABLE TRIGGER [tx_PKSchoolTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PKStudentInstructionDescriptor_TR_DeleteTracking] ON [tx].[PKStudentInstructionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PKStudentInstructionDescriptor](PKStudentInstructionDescriptorId, Id, ChangeVersion)
    SELECT  d.PKStudentInstructionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKStudentInstructionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKStudentInstructionDescriptor] ENABLE TRIGGER [tx_PKStudentInstructionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PKTeacherRequirementDescriptor_TR_DeleteTracking] ON [tx].[PKTeacherRequirementDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PKTeacherRequirementDescriptor](PKTeacherRequirementDescriptorId, Id, ChangeVersion)
    SELECT  d.PKTeacherRequirementDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PKTeacherRequirementDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PKTeacherRequirementDescriptor] ENABLE TRIGGER [tx_PKTeacherRequirementDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PPCDServiceLocationDescriptor_TR_DeleteTracking] ON [tx].[PPCDServiceLocationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PPCDServiceLocationDescriptor](PPCDServiceLocationDescriptorId, Id, ChangeVersion)
    SELECT  d.PPCDServiceLocationDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PPCDServiceLocationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PPCDServiceLocationDescriptor] ENABLE TRIGGER [tx_PPCDServiceLocationDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ParentalPermissionDescriptor_TR_DeleteTracking] ON [tx].[ParentalPermissionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ParentalPermissionDescriptor](ParentalPermissionDescriptorId, Id, ChangeVersion)
    SELECT  d.ParentalPermissionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ParentalPermissionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ParentalPermissionDescriptor] ENABLE TRIGGER [tx_ParentalPermissionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ParentalPermissionLastDateOfEnrollmentDescriptor_TR_DeleteTracking] ON [tx].[ParentalPermissionLastDateOfEnrollmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ParentalPermissionLastDateOfEnrollmentDescriptor](ParentalPermissionLastDateOfEnrollmentDescriptorId, Id, ChangeVersion)
    SELECT  d.ParentalPermissionLastDateOfEnrollmentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ParentalPermissionLastDateOfEnrollmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ParentalPermissionLastDateOfEnrollmentDescriptor] ENABLE TRIGGER [tx_ParentalPermissionLastDateOfEnrollmentDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PayrollActivityDescriptor_TR_DeleteTracking] ON [tx].[PayrollActivityDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PayrollActivityDescriptor](PayrollActivityDescriptorId, Id, ChangeVersion)
    SELECT  d.PayrollActivityDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PayrollActivityDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PayrollActivityDescriptor] ENABLE TRIGGER [tx_PayrollActivityDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PayrollExt_TR_DeleteTracking] ON [tx].[PayrollExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PayrollExt](EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, PayrollActivityDescriptorId, ProgramIntentDescriptorId, StaffUSI, Id, ChangeVersion)
    SELECT  EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, PayrollActivityDescriptorId, ProgramIntentDescriptorId, StaffUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[PayrollExt] ENABLE TRIGGER [tx_PayrollExt_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PostSecondaryCertLicensureResultDescriptor_TR_DeleteTracking] ON [tx].[PostSecondaryCertLicensureResultDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PostSecondaryCertLicensureResultDescriptor](PostSecondaryCertLicensureResultDescriptorId, Id, ChangeVersion)
    SELECT  d.PostSecondaryCertLicensureResultDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PostSecondaryCertLicensureResultDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PostSecondaryCertLicensureResultDescriptor] ENABLE TRIGGER [tx_PostSecondaryCertLicensureResultDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PostSecondaryCertificationLicensureDescriptor_TR_DeleteTracking] ON [tx].[PostSecondaryCertificationLicensureDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PostSecondaryCertificationLicensureDescriptor](PostSecondaryCertificationLicensureDescriptorId, Id, ChangeVersion)
    SELECT  d.PostSecondaryCertificationLicensureDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PostSecondaryCertificationLicensureDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PostSecondaryCertificationLicensureDescriptor] ENABLE TRIGGER [tx_PostSecondaryCertificationLicensureDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_PreferredHomeCommunicationMethodDescriptor_TR_DeleteTracking] ON [tx].[PreferredHomeCommunicationMethodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[PreferredHomeCommunicationMethodDescriptor](PreferredHomeCommunicationMethodDescriptorId, Id, ChangeVersion)
    SELECT  d.PreferredHomeCommunicationMethodDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PreferredHomeCommunicationMethodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[PreferredHomeCommunicationMethodDescriptor] ENABLE TRIGGER [tx_PreferredHomeCommunicationMethodDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ProgramIntentDescriptor_TR_DeleteTracking] ON [tx].[ProgramIntentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ProgramIntentDescriptor](ProgramIntentDescriptorId, Id, ChangeVersion)
    SELECT  d.ProgramIntentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ProgramIntentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ProgramIntentDescriptor] ENABLE TRIGGER [tx_ProgramIntentDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ProgramOfStudyDescriptor_TR_DeleteTracking] ON [tx].[ProgramOfStudyDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ProgramOfStudyDescriptor](ProgramOfStudyDescriptorId, Id, ChangeVersion)
    SELECT  d.ProgramOfStudyDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ProgramOfStudyDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ProgramOfStudyDescriptor] ENABLE TRIGGER [tx_ProgramOfStudyDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_RegionalDaySchoolProgramForDeafDescriptor_TR_DeleteTracking] ON [tx].[RegionalDaySchoolProgramForDeafDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[RegionalDaySchoolProgramForDeafDescriptor](RegionalDaySchoolProgramForDeafDescriptorId, Id, ChangeVersion)
    SELECT  d.RegionalDaySchoolProgramForDeafDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RegionalDaySchoolProgramForDeafDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[RegionalDaySchoolProgramForDeafDescriptor] ENABLE TRIGGER [tx_RegionalDaySchoolProgramForDeafDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ReportAssessmentTypeDescriptor_TR_DeleteTracking] ON [tx].[ReportAssessmentTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ReportAssessmentTypeDescriptor](ReportAssessmentTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.ReportAssessmentTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReportAssessmentTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ReportAssessmentTypeDescriptor] ENABLE TRIGGER [tx_ReportAssessmentTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ReportingPeriodDescriptor_TR_DeleteTracking] ON [tx].[ReportingPeriodDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ReportingPeriodDescriptor](ReportingPeriodDescriptorId, Id, ChangeVersion)
    SELECT  d.ReportingPeriodDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ReportingPeriodDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ReportingPeriodDescriptor] ENABLE TRIGGER [tx_ReportingPeriodDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_RestraintStaffTypeDescriptor_TR_DeleteTracking] ON [tx].[RestraintStaffTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[RestraintStaffTypeDescriptor](RestraintStaffTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.RestraintStaffTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RestraintStaffTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[RestraintStaffTypeDescriptor] ENABLE TRIGGER [tx_RestraintStaffTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_RoleIdDescriptor_TR_DeleteTracking] ON [tx].[RoleIdDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[RoleIdDescriptor](RoleIdDescriptorId, Id, ChangeVersion)
    SELECT  d.RoleIdDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.RoleIdDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[RoleIdDescriptor] ENABLE TRIGGER [tx_RoleIdDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_SPEDStudentAgeRangeDescriptor_TR_DeleteTracking] ON [tx].[SPEDStudentAgeRangeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[SPEDStudentAgeRangeDescriptor](SPEDStudentAgeRangeDescriptorId, Id, ChangeVersion)
    SELECT  d.SPEDStudentAgeRangeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SPEDStudentAgeRangeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[SPEDStudentAgeRangeDescriptor] ENABLE TRIGGER [tx_SPEDStudentAgeRangeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_SSAOrgAssociationExt_TR_DeleteTracking] ON [tx].[SSAOrgAssociationExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[SSAOrgAssociationExt](EducationOrganizationId, FiscalAgentDistrictID, SSATypeDescriptorId, Id, ChangeVersion)
    SELECT  EducationOrganizationId, FiscalAgentDistrictID, SSATypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[SSAOrgAssociationExt] ENABLE TRIGGER [tx_SSAOrgAssociationExt_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_SSATypeDescriptor_TR_DeleteTracking] ON [tx].[SSATypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[SSATypeDescriptor](SSATypeDescriptorId, Id, ChangeVersion)
    SELECT  d.SSATypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SSATypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[SSATypeDescriptor] ENABLE TRIGGER [tx_SSATypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ServiceIdDescriptor_TR_DeleteTracking] ON [tx].[ServiceIdDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ServiceIdDescriptor](ServiceIdDescriptorId, Id, ChangeVersion)
    SELECT  d.ServiceIdDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ServiceIdDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ServiceIdDescriptor] ENABLE TRIGGER [tx_ServiceIdDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_SharedServiceArrangementExt_TR_DeleteTracking] ON [tx].[SharedServiceArrangementExt] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[SharedServiceArrangementExt](EducationOrganizationId, FiscalYear, FundDescriptorId, SSAMemberDistrictID, SSATypeDescriptorId, Id, ChangeVersion)
    SELECT  EducationOrganizationId, FiscalYear, FundDescriptorId, SSAMemberDistrictID, SSATypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[SharedServiceArrangementExt] ENABLE TRIGGER [tx_SharedServiceArrangementExt_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_SharedServiceArrangementStaffDescriptor_TR_DeleteTracking] ON [tx].[SharedServiceArrangementStaffDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[SharedServiceArrangementStaffDescriptor](SharedServiceArrangementStaffDescriptorId, Id, ChangeVersion)
    SELECT  d.SharedServiceArrangementStaffDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.SharedServiceArrangementStaffDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[SharedServiceArrangementStaffDescriptor] ENABLE TRIGGER [tx_SharedServiceArrangementStaffDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_SpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[SpecialEducationProgramReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[SpecialEducationProgramReportingPeriodAttendance](CalendarCode, GradeLevelDescriptorId, InstructionalSettingDescriptorId, RegionalDaySchoolProgramForDeafDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  CalendarCode, GradeLevelDescriptorId, InstructionalSettingDescriptorId, RegionalDaySchoolProgramForDeafDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ENABLE TRIGGER [tx_SpecialEducationProgramReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_SpecialProgramsReportingPeriodAttendance_TR_DeleteTracking] ON [tx].[SpecialProgramsReportingPeriodAttendance] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[SpecialProgramsReportingPeriodAttendance](CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    SELECT  CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ENABLE TRIGGER [tx_SpecialProgramsReportingPeriodAttendance_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_StaffServiceDescriptor_TR_DeleteTracking] ON [tx].[StaffServiceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[StaffServiceDescriptor](StaffServiceDescriptorId, Id, ChangeVersion)
    SELECT  d.StaffServiceDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffServiceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[StaffServiceDescriptor] ENABLE TRIGGER [tx_StaffServiceDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_StaffTypeDescriptor_TR_DeleteTracking] ON [tx].[StaffTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[StaffTypeDescriptor](StaffTypeDescriptorId, Id, ChangeVersion)
    SELECT  d.StaffTypeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StaffTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[StaffTypeDescriptor] ENABLE TRIGGER [tx_StaffTypeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_StudentApplication_TR_DeleteTracking] ON [tx].[StudentApplication] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[StudentApplication](ApplicationIdentifier, EducationOrganizationId, SchoolYear, Id, ChangeVersion)
    SELECT  ApplicationIdentifier, EducationOrganizationId, SchoolYear, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[StudentApplication] ENABLE TRIGGER [tx_StudentApplication_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_StudentAttributionDescriptor_TR_DeleteTracking] ON [tx].[StudentAttributionDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[StudentAttributionDescriptor](StudentAttributionDescriptorId, Id, ChangeVersion)
    SELECT  d.StudentAttributionDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.StudentAttributionDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[StudentAttributionDescriptor] ENABLE TRIGGER [tx_StudentAttributionDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_StudentSpecialEducationProgramEligibilityAssociation_TR_DeleteTracking] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[StudentSpecialEducationProgramEligibilityAssociation](EducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, Id, ChangeVersion)
    SELECT  EducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ENABLE TRIGGER [tx_StudentSpecialEducationProgramEligibilityAssociation_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_TeacherIncentiveAllotmentDesignationDescriptor_TR_DeleteTracking] ON [tx].[TeacherIncentiveAllotmentDesignationDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[TeacherIncentiveAllotmentDesignationDescriptor](TeacherIncentiveAllotmentDesignationDescriptorId, Id, ChangeVersion)
    SELECT  d.TeacherIncentiveAllotmentDesignationDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TeacherIncentiveAllotmentDesignationDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[TeacherIncentiveAllotmentDesignationDescriptor] ENABLE TRIGGER [tx_TeacherIncentiveAllotmentDesignationDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_TitleOfAssessmentDescriptor_TR_DeleteTracking] ON [tx].[TitleOfAssessmentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[TitleOfAssessmentDescriptor](TitleOfAssessmentDescriptorId, Id, ChangeVersion)
    SELECT  d.TitleOfAssessmentDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TitleOfAssessmentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[TitleOfAssessmentDescriptor] ENABLE TRIGGER [tx_TitleOfAssessmentDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_ToolOrAssessmentUsedDescriptor_TR_DeleteTracking] ON [tx].[ToolOrAssessmentUsedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[ToolOrAssessmentUsedDescriptor](ToolOrAssessmentUsedDescriptorId, Id, ChangeVersion)
    SELECT  d.ToolOrAssessmentUsedDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ToolOrAssessmentUsedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[ToolOrAssessmentUsedDescriptor] ENABLE TRIGGER [tx_ToolOrAssessmentUsedDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_TruancyDescriptor_TR_DeleteTracking] ON [tx].[TruancyDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[TruancyDescriptor](TruancyDescriptorId, Id, ChangeVersion)
    SELECT  d.TruancyDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.TruancyDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[TruancyDescriptor] ENABLE TRIGGER [tx_TruancyDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_UnaccompaniedYouthDescriptor_TR_DeleteTracking] ON [tx].[UnaccompaniedYouthDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[UnaccompaniedYouthDescriptor](UnaccompaniedYouthDescriptorId, Id, ChangeVersion)
    SELECT  d.UnaccompaniedYouthDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.UnaccompaniedYouthDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[UnaccompaniedYouthDescriptor] ENABLE TRIGGER [tx_UnaccompaniedYouthDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_UnaccompaniedYouthPriorYearDescriptor_TR_DeleteTracking] ON [tx].[UnaccompaniedYouthPriorYearDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[UnaccompaniedYouthPriorYearDescriptor](UnaccompaniedYouthPriorYearDescriptorId, Id, ChangeVersion)
    SELECT  d.UnaccompaniedYouthPriorYearDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.UnaccompaniedYouthPriorYearDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[UnaccompaniedYouthPriorYearDescriptor] ENABLE TRIGGER [tx_UnaccompaniedYouthPriorYearDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_UnschooledAsyleeRefugeeDescriptor_TR_DeleteTracking] ON [tx].[UnschooledAsyleeRefugeeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[UnschooledAsyleeRefugeeDescriptor](UnschooledAsyleeRefugeeDescriptorId, Id, ChangeVersion)
    SELECT  d.UnschooledAsyleeRefugeeDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.UnschooledAsyleeRefugeeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[UnschooledAsyleeRefugeeDescriptor] ENABLE TRIGGER [tx_UnschooledAsyleeRefugeeDescriptor_TR_DeleteTracking]
GO


CREATE TRIGGER [tx].[tx_UnschooledAsyleeRefugeePriorYearDescriptor_TR_DeleteTracking] ON [tx].[UnschooledAsyleeRefugeePriorYearDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_deletes_tx].[UnschooledAsyleeRefugeePriorYearDescriptor](UnschooledAsyleeRefugeePriorYearDescriptorId, Id, ChangeVersion)
    SELECT  d.UnschooledAsyleeRefugeePriorYearDescriptorId, Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.UnschooledAsyleeRefugeePriorYearDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [tx].[UnschooledAsyleeRefugeePriorYearDescriptor] ENABLE TRIGGER [tx_UnschooledAsyleeRefugeePriorYearDescriptor_TR_DeleteTracking]
GO


