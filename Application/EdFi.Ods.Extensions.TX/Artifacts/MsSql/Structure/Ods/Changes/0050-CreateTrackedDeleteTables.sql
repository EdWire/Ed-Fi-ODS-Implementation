CREATE TABLE [tracked_deletes_tx].[ADAEligibilityDescriptor]
(
       ADAEligibilityDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ADAEligibilityDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ActualExt]
(
       EducationOrganizationId [INT] NOT NULL,
       FiscalYear [INT] NOT NULL,
       FunctionDescriptorId [INT] NOT NULL,
       FundDescriptorId [INT] NOT NULL,
       ObjectDescriptorId [INT] NOT NULL,
       Organization [INT] NOT NULL,
       ProgramIntentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ActualExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ApplicationTypeDescriptor]
(
       ApplicationTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ApplicationTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ArmedServicesVocAptBatteryDescriptor]
(
       ArmedServicesVocAptBatteryDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ArmedServicesVocAptBatteryDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[AsOfStatusALeavers]
(
       SchoolId [INT] NOT NULL,
       StudentUID [NVARCHAR](32) NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AsOfStatusALeavers PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[AsOfStatusLastDayEnrollmentDescriptor]
(
       AsOfStatusLastDayEnrollmentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AsOfStatusLastDayEnrollmentDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[AsOfStatusLastFridayOctoberDescriptor]
(
       AsOfStatusLastFridayOctoberDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AsOfStatusLastFridayOctoberDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[AssessmentResultsObtainedDescriptor]
(
       AssessmentResultsObtainedDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AssessmentResultsObtainedDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[AuxiliaryRoleIdDescriptor]
(
       AuxiliaryRoleIdDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_AuxiliaryRoleIdDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[BasicReportingPeriodAttendance]
(
       CalendarCode [NVARCHAR](60) NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_BasicReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[BilingualESLFundingDescriptor]
(
       BilingualESLFundingDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_BilingualESLFundingDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[BilingualESLProgramReportingPeriodAttendance]
(
       BilingualESLFundingDescriptorId [INT] NOT NULL,
       CalendarCode [NVARCHAR](60) NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_BilingualESLProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[BudgetExt]
(
       EducationOrganizationId [INT] NOT NULL,
       FiscalYear [INT] NOT NULL,
       FunctionDescriptorId [INT] NOT NULL,
       FundDescriptorId [INT] NOT NULL,
       ObjectDescriptorId [INT] NOT NULL,
       Organization [INT] NOT NULL,
       ProgramIntentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_BudgetExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[CTEProgramReportingPeriodAttendance]
(
       CalendarCode [NVARCHAR](60) NOT NULL,
       CTEServiceIdDescriptorId [INT] NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CTEProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[CTEServiceIdDescriptor]
(
       CTEServiceIdDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CTEServiceIdDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[CalendarWaiverEventTypeDescriptor]
(
       CalendarWaiverEventTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CalendarWaiverEventTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[CampusEnrollmentTypeDescriptor]
(
       CampusEnrollmentTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CampusEnrollmentTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ChildCountFundingDescriptor]
(
       ChildCountFundingDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ChildCountFundingDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ClassTypeDescriptor]
(
       ClassTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ClassTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ContractedInstructionalStaffFTEExt]
(
       EducationOrganizationId [INT] NOT NULL,
       ProgramIntentDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ContractedInstructionalStaffFTEExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[CourseSequenceDescriptor]
(
       CourseSequenceDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CourseSequenceDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[CrisisEventDescriptor]
(
       CrisisEventDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_CrisisEventDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[DyslexiaRiskDescriptor]
(
       DyslexiaRiskDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_DyslexiaRiskDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[DyslexiaScreeningExceptionReasonDescriptor]
(
       DyslexiaScreeningExceptionReasonDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_DyslexiaScreeningExceptionReasonDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[DyslexiaServicesDescriptor]
(
       DyslexiaServicesDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_DyslexiaServicesDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ELOActivityDescriptor]
(
       ELOActivityDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ELOActivityDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ELOTypeDescriptor]
(
       ELOTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ELOTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EarlyReadingIndicatorDescriptor]
(
       EarlyReadingIndicatorDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EarlyReadingIndicatorDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EconomicDisadvantageDescriptor]
(
       EconomicDisadvantageDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EconomicDisadvantageDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor]
(
       EconomicDisadvantageLastDateOfEnrollmentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EconomicDisadvantageLastDateOfEnrollmentDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EligibilityDelayReasonDescriptor]
(
       EligibilityDelayReasonDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EligibilityDelayReasonDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EmergentBilingualIndicatorDescriptor]
(
       EmergentBilingualIndicatorDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EmergentBilingualIndicatorDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EndorsementCompletedDescriptor]
(
       EndorsementCompletedDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EndorsementCompletedDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EndorsementPursuingDescriptor]
(
       EndorsementPursuingDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EndorsementPursuingDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[EvaluationDelayReasonDescriptor]
(
       EvaluationDelayReasonDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_EvaluationDelayReasonDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ExtendedSchoolYearServicesAttendance]
(
       FirstInstructionalSettingDescriptorId [INT] NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ExtendedSchoolYearServicesAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FinancialAidApplicationDescriptor]
(
       FinancialAidApplicationDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FinancialAidApplicationDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FlexAttendanceProgramDescriptor]
(
       FlexAttendanceProgramDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FlexAttendanceProgramDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]
(
       BilingualESLFundingDescriptorId [INT] NOT NULL,
       CalendarCode [NVARCHAR](60) NOT NULL,
       FlexAttendanceProgramDescriptorId [INT] NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FlexibleBilingualESLProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FlexibleCTEProgramReportingPeriodAttendance]
(
       CalendarCode [NVARCHAR](60) NOT NULL,
       FlexAttendanceProgramDescriptorId [INT] NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FlexibleCTEProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FlexibleRegularProgramReportingPeriodAttendance]
(
       CalendarCode [NVARCHAR](60) NOT NULL,
       FlexAttendanceProgramDescriptorId [INT] NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FlexibleRegularProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]
(
       CalendarCode [NVARCHAR](60) NOT NULL,
       FlexAttendanceProgramDescriptorId [INT] NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       InstructionalSettingDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FlexibleSpecialEducationProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FosterCareTypeDescriptor]
(
       FosterCareTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FosterCareTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FrequencyOfServicesDescriptor]
(
       FrequencyOfServicesDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FrequencyOfServicesDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FunctionDescriptor]
(
       FunctionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FunctionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[FundDescriptor]
(
       FundDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_FundDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[GenerationCodeDescriptor]
(
       GenerationCodeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_GenerationCodeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[GiftedTalentedProgramDescriptor]
(
       GiftedTalentedProgramDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_GiftedTalentedProgramDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[HearingAmplifAvgDailyUseDescriptor]
(
       HearingAmplifAvgDailyUseDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_HearingAmplifAvgDailyUseDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[HearingAmplificationAccessDescriptor]
(
       HearingAmplificationAccessDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_HearingAmplificationAccessDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[HearingAmplificationTypeDescriptor]
(
       HearingAmplificationTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_HearingAmplificationTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[HomelessStatusDescriptor]
(
       HomelessStatusDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_HomelessStatusDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[HomelessStatusPriorYearDescriptor]
(
       HomelessStatusPriorYearDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_HomelessStatusPriorYearDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[HoursSpentReceivingServicesDescriptor]
(
       HoursSpentReceivingServicesDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_HoursSpentReceivingServicesDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[IBCVendorDescriptor]
(
       IBCVendorDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_IBCVendorDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[InstructionalSettingDescriptor]
(
       InstructionalSettingDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_InstructionalSettingDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[LangAcqServicesProvidedDescriptor]
(
       LangAcqServicesProvidedDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_LangAcqServicesProvidedDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[MilitaryConnectedStudentDescriptor]
(
       MilitaryConnectedStudentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_MilitaryConnectedStudentDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[NSLPTypeDescriptor]
(
       NSLPTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_NSLPTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[NonCampusBasedInstructionDescriptor]
(
       NonCampusBasedInstructionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_NonCampusBasedInstructionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ObjectDescriptor]
(
       ObjectDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ObjectDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PKCurriculaDescriptor]
(
       PKCurriculaDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PKCurriculaDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PKFundingSourceDescriptor]
(
       PKFundingSourceDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PKFundingSourceDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PKProgramEvaluationTypeDescriptor]
(
       PKProgramEvaluationTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PKProgramEvaluationTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PKProgramTypeDescriptor]
(
       PKProgramTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PKProgramTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PKSchoolTypeDescriptor]
(
       PKSchoolTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PKSchoolTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PKStudentInstructionDescriptor]
(
       PKStudentInstructionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PKStudentInstructionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PKTeacherRequirementDescriptor]
(
       PKTeacherRequirementDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PKTeacherRequirementDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PPCDServiceLocationDescriptor]
(
       PPCDServiceLocationDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PPCDServiceLocationDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ParentalPermissionDescriptor]
(
       ParentalPermissionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ParentalPermissionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ParentalPermissionLastDateOfEnrollmentDescriptor]
(
       ParentalPermissionLastDateOfEnrollmentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ParentalPermissionLastDateOfEnrollmentDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PayrollActivityDescriptor]
(
       PayrollActivityDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PayrollActivityDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PayrollExt]
(
       EducationOrganizationId [INT] NOT NULL,
       FiscalYear [INT] NOT NULL,
       FunctionDescriptorId [INT] NOT NULL,
       FundDescriptorId [INT] NOT NULL,
       ObjectDescriptorId [INT] NOT NULL,
       Organization [INT] NOT NULL,
       PayrollActivityDescriptorId [INT] NOT NULL,
       ProgramIntentDescriptorId [INT] NOT NULL,
       StaffUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PayrollExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PostSecondaryCertLicensureResultDescriptor]
(
       PostSecondaryCertLicensureResultDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PostSecondaryCertLicensureResultDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PostSecondaryCertificationLicensureDescriptor]
(
       PostSecondaryCertificationLicensureDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PostSecondaryCertificationLicensureDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[PreferredHomeCommunicationMethodDescriptor]
(
       PreferredHomeCommunicationMethodDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_PreferredHomeCommunicationMethodDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ProgramIntentDescriptor]
(
       ProgramIntentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ProgramIntentDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ProgramOfStudyDescriptor]
(
       ProgramOfStudyDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ProgramOfStudyDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[RegionalDaySchoolProgramForDeafDescriptor]
(
       RegionalDaySchoolProgramForDeafDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RegionalDaySchoolProgramForDeafDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ReportAssessmentTypeDescriptor]
(
       ReportAssessmentTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ReportAssessmentTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ReportingPeriodDescriptor]
(
       ReportingPeriodDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ReportingPeriodDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[RestraintStaffTypeDescriptor]
(
       RestraintStaffTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RestraintStaffTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[RoleIdDescriptor]
(
       RoleIdDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_RoleIdDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[SPEDStudentAgeRangeDescriptor]
(
       SPEDStudentAgeRangeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SPEDStudentAgeRangeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[SSAOrgAssociationExt]
(
       EducationOrganizationId [INT] NOT NULL,
       FiscalAgentDistrictID [INT] NOT NULL,
       SSATypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SSAOrgAssociationExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[SSATypeDescriptor]
(
       SSATypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SSATypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ServiceIdDescriptor]
(
       ServiceIdDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ServiceIdDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[SharedServiceArrangementExt]
(
       EducationOrganizationId [INT] NOT NULL,
       FiscalYear [INT] NOT NULL,
       FundDescriptorId [INT] NOT NULL,
       SSAMemberDistrictID [INT] NOT NULL,
       SSATypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SharedServiceArrangementExt PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[SharedServiceArrangementStaffDescriptor]
(
       SharedServiceArrangementStaffDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SharedServiceArrangementStaffDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[SpecialEducationProgramReportingPeriodAttendance]
(
       CalendarCode [NVARCHAR](60) NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       InstructionalSettingDescriptorId [INT] NOT NULL,
       RegionalDaySchoolProgramForDeafDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SpecialEducationProgramReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[SpecialProgramsReportingPeriodAttendance]
(
       CalendarCode [NVARCHAR](60) NOT NULL,
       GradeLevelDescriptorId [INT] NOT NULL,
       ReportingPeriodDescriptorId [INT] NOT NULL,
       SchoolId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_SpecialProgramsReportingPeriodAttendance PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[StaffServiceDescriptor]
(
       StaffServiceDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StaffServiceDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[StaffTypeDescriptor]
(
       StaffTypeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StaffTypeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[StudentApplication]
(
       ApplicationIdentifier [NVARCHAR](10) NOT NULL,
       EducationOrganizationId [INT] NOT NULL,
       SchoolYear [SMALLINT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StudentApplication PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[StudentAttributionDescriptor]
(
       StudentAttributionDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StudentAttributionDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[StudentSpecialEducationProgramEligibilityAssociation]
(
       EducationOrganizationId [INT] NOT NULL,
       ProgramName [NVARCHAR](60) NOT NULL,
       ProgramTypeDescriptorId [INT] NOT NULL,
       StudentUSI [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_StudentSpecialEducationProgramEligibilityAssociation PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[TeacherIncentiveAllotmentDesignationDescriptor]
(
       TeacherIncentiveAllotmentDesignationDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_TeacherIncentiveAllotmentDesignationDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[TitleOfAssessmentDescriptor]
(
       TitleOfAssessmentDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_TitleOfAssessmentDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[ToolOrAssessmentUsedDescriptor]
(
       ToolOrAssessmentUsedDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_ToolOrAssessmentUsedDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[TruancyDescriptor]
(
       TruancyDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_TruancyDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[UnaccompaniedYouthDescriptor]
(
       UnaccompaniedYouthDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_UnaccompaniedYouthDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[UnaccompaniedYouthPriorYearDescriptor]
(
       UnaccompaniedYouthPriorYearDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_UnaccompaniedYouthPriorYearDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[UnschooledAsyleeRefugeeDescriptor]
(
       UnschooledAsyleeRefugeeDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_UnschooledAsyleeRefugeeDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
CREATE TABLE [tracked_deletes_tx].[UnschooledAsyleeRefugeePriorYearDescriptor]
(
       UnschooledAsyleeRefugeePriorYearDescriptorId [INT] NOT NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       CONSTRAINT PK_UnschooledAsyleeRefugeePriorYearDescriptor PRIMARY KEY CLUSTERED (ChangeVersion)
)
