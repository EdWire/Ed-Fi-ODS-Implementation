CREATE TABLE tracked_deletes_tx.ADAEligibilityDescriptor
(
       ADAEligibilityDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ADAEligibilityDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ActualExt
(
       EducationOrganizationId INT NOT NULL,
       FiscalYear INT NOT NULL,
       FunctionDescriptorId INT NOT NULL,
       FundDescriptorId INT NOT NULL,
       ObjectDescriptorId INT NOT NULL,
       Organization INT NOT NULL,
       ProgramIntentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ActualExt_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ApplicationTypeDescriptor
(
       ApplicationTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ApplicationTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ArmedServicesVocAptBatteryDescriptor
(
       ArmedServicesVocAptBatteryDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ArmedServicesVocAptBatteryDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.AsOfStatusALeavers
(
       SchoolId INT NOT NULL,
       StudentUID VARCHAR(32) NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AsOfStatusALeavers_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.AsOfStatusLastDayEnrollmentDescriptor
(
       AsOfStatusLastDayEnrollmentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AsOfStatusLastDayEnrollmentDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.AsOfStatusLastFridayOctoberDescriptor
(
       AsOfStatusLastFridayOctoberDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AsOfStatusLastFridayOctoberDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.AssessmentResultsObtainedDescriptor
(
       AssessmentResultsObtainedDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AssessmentResultsObtainedDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.AuxiliaryRoleIdDescriptor
(
       AuxiliaryRoleIdDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT AuxiliaryRoleIdDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.BasicReportingPeriodAttendance
(
       CalendarCode VARCHAR(60) NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT BasicReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.BilingualESLFundingDescriptor
(
       BilingualESLFundingDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT BilingualESLFundingDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.BilingualESLProgramReportingPeriodAttendance
(
       BilingualESLFundingDescriptorId INT NOT NULL,
       CalendarCode VARCHAR(60) NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT BilingualESLProgramReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.BudgetExt
(
       EducationOrganizationId INT NOT NULL,
       FiscalYear INT NOT NULL,
       FunctionDescriptorId INT NOT NULL,
       FundDescriptorId INT NOT NULL,
       ObjectDescriptorId INT NOT NULL,
       Organization INT NOT NULL,
       ProgramIntentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT BudgetExt_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.CTEProgramReportingPeriodAttendance
(
       CalendarCode VARCHAR(60) NOT NULL,
       CTEServiceIdDescriptorId INT NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CTEProgramReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.CTEServiceIdDescriptor
(
       CTEServiceIdDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CTEServiceIdDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.CalendarWaiverEventTypeDescriptor
(
       CalendarWaiverEventTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CalendarWaiverEventTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.CampusEnrollmentTypeDescriptor
(
       CampusEnrollmentTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CampusEnrollmentTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ChildCountFundingDescriptor
(
       ChildCountFundingDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ChildCountFundingDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ClassTypeDescriptor
(
       ClassTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ClassTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ContractedInstructionalStaffFTEExt
(
       EducationOrganizationId INT NOT NULL,
       ProgramIntentDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ContractedInstructionalStaffFTEExt_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.CourseSequenceDescriptor
(
       CourseSequenceDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CourseSequenceDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.CrisisEventDescriptor
(
       CrisisEventDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT CrisisEventDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.DyslexiaRiskDescriptor
(
       DyslexiaRiskDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT DyslexiaRiskDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.DyslexiaScreeningExceptionReasonDescriptor
(
       DyslexiaScreeningExceptionReasonDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT DyslexiaScreeningExceptionReasonDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.DyslexiaServicesDescriptor
(
       DyslexiaServicesDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT DyslexiaServicesDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ELOActivityDescriptor
(
       ELOActivityDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ELOActivityDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ELOTypeDescriptor
(
       ELOTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ELOTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EarlyReadingIndicatorDescriptor
(
       EarlyReadingIndicatorDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EarlyReadingIndicatorDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EconomicDisadvantageDescriptor
(
       EconomicDisadvantageDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EconomicDisadvantageDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor
(
       EconomicDisadvantageLastDateOfEnrollmentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EconomicDisadvantageLastDateOfEnrollmentDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EligibilityDelayReasonDescriptor
(
       EligibilityDelayReasonDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EligibilityDelayReasonDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EmergentBilingualIndicatorDescriptor
(
       EmergentBilingualIndicatorDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EmergentBilingualIndicatorDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EndorsementCompletedDescriptor
(
       EndorsementCompletedDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EndorsementCompletedDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EndorsementPursuingDescriptor
(
       EndorsementPursuingDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EndorsementPursuingDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.EvaluationDelayReasonDescriptor
(
       EvaluationDelayReasonDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT EvaluationDelayReasonDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ExtendedSchoolYearServicesAttendance
(
       FirstInstructionalSettingDescriptorId INT NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ExtendedSchoolYearServicesAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FinancialAidApplicationDescriptor
(
       FinancialAidApplicationDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FinancialAidApplicationDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FlexAttendanceProgramDescriptor
(
       FlexAttendanceProgramDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FlexAttendanceProgramDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FlexibleBilingualESLProgramReportingPeriodAttendance
(
       BilingualESLFundingDescriptorId INT NOT NULL,
       CalendarCode VARCHAR(60) NOT NULL,
       FlexAttendanceProgramDescriptorId INT NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FlexibleBilingualESLProgramReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FlexibleCTEProgramReportingPeriodAttendance
(
       CalendarCode VARCHAR(60) NOT NULL,
       FlexAttendanceProgramDescriptorId INT NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FlexibleCTEProgramReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FlexibleRegularProgramReportingPeriodAttendance
(
       CalendarCode VARCHAR(60) NOT NULL,
       FlexAttendanceProgramDescriptorId INT NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FlexibleRegularProgramReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FlexibleSpecialEducationProgramReportingPeriodAttendance
(
       CalendarCode VARCHAR(60) NOT NULL,
       FlexAttendanceProgramDescriptorId INT NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       InstructionalSettingDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FlexibleSpecialEducationProgramReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FosterCareTypeDescriptor
(
       FosterCareTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FosterCareTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FrequencyOfServicesDescriptor
(
       FrequencyOfServicesDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FrequencyOfServicesDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FunctionDescriptor
(
       FunctionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FunctionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.FundDescriptor
(
       FundDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT FundDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.GenerationCodeDescriptor
(
       GenerationCodeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT GenerationCodeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.GiftedTalentedProgramDescriptor
(
       GiftedTalentedProgramDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT GiftedTalentedProgramDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.HearingAmplifAvgDailyUseDescriptor
(
       HearingAmplifAvgDailyUseDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT HearingAmplifAvgDailyUseDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.HearingAmplificationAccessDescriptor
(
       HearingAmplificationAccessDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT HearingAmplificationAccessDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.HearingAmplificationTypeDescriptor
(
       HearingAmplificationTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT HearingAmplificationTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.HomelessStatusDescriptor
(
       HomelessStatusDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT HomelessStatusDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.HomelessStatusPriorYearDescriptor
(
       HomelessStatusPriorYearDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT HomelessStatusPriorYearDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.HoursSpentReceivingServicesDescriptor
(
       HoursSpentReceivingServicesDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT HoursSpentReceivingServicesDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.IBCVendorDescriptor
(
       IBCVendorDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT IBCVendorDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.InstructionalSettingDescriptor
(
       InstructionalSettingDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT InstructionalSettingDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.LangAcqServicesProvidedDescriptor
(
       LangAcqServicesProvidedDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT LangAcqServicesProvidedDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.MilitaryConnectedStudentDescriptor
(
       MilitaryConnectedStudentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT MilitaryConnectedStudentDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.NSLPTypeDescriptor
(
       NSLPTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT NSLPTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.NonCampusBasedInstructionDescriptor
(
       NonCampusBasedInstructionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT NonCampusBasedInstructionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ObjectDescriptor
(
       ObjectDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ObjectDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PKCurriculaDescriptor
(
       PKCurriculaDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PKCurriculaDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PKFundingSourceDescriptor
(
       PKFundingSourceDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PKFundingSourceDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PKProgramEvaluationTypeDescriptor
(
       PKProgramEvaluationTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PKProgramEvaluationTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PKProgramTypeDescriptor
(
       PKProgramTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PKProgramTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PKSchoolTypeDescriptor
(
       PKSchoolTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PKSchoolTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PKStudentInstructionDescriptor
(
       PKStudentInstructionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PKStudentInstructionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PKTeacherRequirementDescriptor
(
       PKTeacherRequirementDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PKTeacherRequirementDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PPCDServiceLocationDescriptor
(
       PPCDServiceLocationDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PPCDServiceLocationDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ParentalPermissionDescriptor
(
       ParentalPermissionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ParentalPermissionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ParentalPermissionLastDateOfEnrollmentDescriptor
(
       ParentalPermissionLastDateOfEnrollmentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ParentalPermissionLastDateOfEnrollmentDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PayrollActivityDescriptor
(
       PayrollActivityDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PayrollActivityDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PayrollExt
(
       EducationOrganizationId INT NOT NULL,
       FiscalYear INT NOT NULL,
       FunctionDescriptorId INT NOT NULL,
       FundDescriptorId INT NOT NULL,
       ObjectDescriptorId INT NOT NULL,
       Organization INT NOT NULL,
       PayrollActivityDescriptorId INT NOT NULL,
       ProgramIntentDescriptorId INT NOT NULL,
       StaffUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PayrollExt_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PostSecondaryCertLicensureResultDescriptor
(
       PostSecondaryCertLicensureResultDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PostSecondaryCertLicensureResultDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PostSecondaryCertificationLicensureDescriptor
(
       PostSecondaryCertificationLicensureDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PostSecondaryCertificationLicensureDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.PreferredHomeCommunicationMethodDescriptor
(
       PreferredHomeCommunicationMethodDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT PreferredHomeCommunicationMethodDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ProgramIntentDescriptor
(
       ProgramIntentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ProgramIntentDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ProgramOfStudyDescriptor
(
       ProgramOfStudyDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ProgramOfStudyDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.RegionalDaySchoolProgramForDeafDescriptor
(
       RegionalDaySchoolProgramForDeafDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RegionalDaySchoolProgramForDeafDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ReportAssessmentTypeDescriptor
(
       ReportAssessmentTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ReportAssessmentTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ReportingPeriodDescriptor
(
       ReportingPeriodDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ReportingPeriodDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.RestraintStaffTypeDescriptor
(
       RestraintStaffTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RestraintStaffTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.RoleIdDescriptor
(
       RoleIdDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT RoleIdDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.SPEDStudentAgeRangeDescriptor
(
       SPEDStudentAgeRangeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SPEDStudentAgeRangeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.SSAOrgAssociationExt
(
       EducationOrganizationId INT NOT NULL,
       FiscalAgentDistrictID INT NOT NULL,
       SSATypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SSAOrgAssociationExt_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.SSATypeDescriptor
(
       SSATypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SSATypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ServiceIdDescriptor
(
       ServiceIdDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ServiceIdDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.SharedServiceArrangementExt
(
       EducationOrganizationId INT NOT NULL,
       FiscalYear INT NOT NULL,
       FundDescriptorId INT NOT NULL,
       SSAMemberDistrictID INT NOT NULL,
       SSATypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SharedServiceArrangementExt_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.SharedServiceArrangementStaffDescriptor
(
       SharedServiceArrangementStaffDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SharedServiceArrangementStaffDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.SpecialEducationProgramReportingPeriodAttendance
(
       CalendarCode VARCHAR(60) NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       InstructionalSettingDescriptorId INT NOT NULL,
       RegionalDaySchoolProgramForDeafDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SpecialEducationProgramReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.SpecialProgramsReportingPeriodAttendance
(
       CalendarCode VARCHAR(60) NOT NULL,
       GradeLevelDescriptorId INT NOT NULL,
       ReportingPeriodDescriptorId INT NOT NULL,
       SchoolId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT SpecialProgramsReportingPeriodAttendance_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.StaffServiceDescriptor
(
       StaffServiceDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StaffServiceDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.StaffTypeDescriptor
(
       StaffTypeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StaffTypeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.StudentApplication
(
       ApplicationIdentifier VARCHAR(10) NOT NULL,
       EducationOrganizationId INT NOT NULL,
       SchoolYear SMALLINT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StudentApplication_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.StudentAttributionDescriptor
(
       StudentAttributionDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StudentAttributionDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.StudentSpecialEducationProgramEligibilityAssociation
(
       EducationOrganizationId INT NOT NULL,
       ProgramName VARCHAR(60) NOT NULL,
       ProgramTypeDescriptorId INT NOT NULL,
       StudentUSI INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT StudentSpecialEducationProgramEligibilityAssociation_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.TeacherIncentiveAllotmentDesignationDescriptor
(
       TeacherIncentiveAllotmentDesignationDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT TeacherIncentiveAllotmentDesignationDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.TitleOfAssessmentDescriptor
(
       TitleOfAssessmentDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT TitleOfAssessmentDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.ToolOrAssessmentUsedDescriptor
(
       ToolOrAssessmentUsedDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT ToolOrAssessmentUsedDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.TruancyDescriptor
(
       TruancyDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT TruancyDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.UnaccompaniedYouthDescriptor
(
       UnaccompaniedYouthDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT UnaccompaniedYouthDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.UnaccompaniedYouthPriorYearDescriptor
(
       UnaccompaniedYouthPriorYearDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT UnaccompaniedYouthPriorYearDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.UnschooledAsyleeRefugeeDescriptor
(
       UnschooledAsyleeRefugeeDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT UnschooledAsyleeRefugeeDescriptor_PK PRIMARY KEY (ChangeVersion)
);

CREATE TABLE tracked_deletes_tx.UnschooledAsyleeRefugeePriorYearDescriptor
(
       UnschooledAsyleeRefugeePriorYearDescriptorId INT NOT NULL,
       Id UUID NOT NULL,
       ChangeVersion BIGINT NOT NULL,
       CONSTRAINT UnschooledAsyleeRefugeePriorYearDescriptor_PK PRIMARY KEY (ChangeVersion)
);

