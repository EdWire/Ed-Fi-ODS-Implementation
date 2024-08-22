ALTER TABLE [tx].[AcceleratedInstructionSubjectDescriptor] WITH CHECK ADD CONSTRAINT [FK_AcceleratedInstructionSubjectDescriptor_Descriptor] FOREIGN KEY ([AcceleratedInstructionSubjectDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ActualFunctionDescriptor] WITH CHECK ADD CONSTRAINT [FK_ActualFunctionDescriptor_Descriptor] FOREIGN KEY ([ActualFunctionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ActualFundDescriptor] WITH CHECK ADD CONSTRAINT [FK_ActualFundDescriptor_Descriptor] FOREIGN KEY ([ActualFundDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ActualObjectDescriptor] WITH CHECK ADD CONSTRAINT [FK_ActualObjectDescriptor_Descriptor] FOREIGN KEY ([ActualObjectDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ActualProgramIntentDescriptor] WITH CHECK ADD CONSTRAINT [FK_ActualProgramIntentDescriptor_Descriptor] FOREIGN KEY ([ActualProgramIntentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ADAEligibilityDescriptor] WITH CHECK ADD CONSTRAINT [FK_ADAEligibilityDescriptor_Descriptor] FOREIGN KEY ([ADAEligibilityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ApiOperationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApiOperationTypeDescriptor_Descriptor] FOREIGN KEY ([ApiOperationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ApplicationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ApplicationTypeDescriptor_Descriptor] FOREIGN KEY ([ApplicationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ArmedServicesVocAptBatteryDescriptor] WITH CHECK ADD CONSTRAINT [FK_ArmedServicesVocAptBatteryDescriptor_Descriptor] FOREIGN KEY ([ArmedServicesVocAptBatteryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[AsOfStatusLastDayEnrollmentDescriptor] WITH CHECK ADD CONSTRAINT [FK_AsOfStatusLastDayEnrollmentDescriptor_Descriptor] FOREIGN KEY ([AsOfStatusLastDayEnrollmentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[AsOfStatusLastFridayOctoberDescriptor] WITH CHECK ADD CONSTRAINT [FK_AsOfStatusLastFridayOctoberDescriptor_Descriptor] FOREIGN KEY ([AsOfStatusLastFridayOctoberDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[AssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_AssessmentExtension_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace])
REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[AssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_AssessmentExtension_ReportAssessmentTypeDescriptor] FOREIGN KEY ([ReportAssessmentTypeDescriptorId])
REFERENCES [tx].[ReportAssessmentTypeDescriptor] ([ReportAssessmentTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentExtension_ReportAssessmentTypeDescriptor]
ON [tx].[AssessmentExtension] ([ReportAssessmentTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[AssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_AssessmentExtension_TitleOfAssessmentDescriptor] FOREIGN KEY ([TitleOfAssessmentDescriptorId])
REFERENCES [tx].[TitleOfAssessmentDescriptor] ([TitleOfAssessmentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentExtension_TitleOfAssessmentDescriptor]
ON [tx].[AssessmentExtension] ([TitleOfAssessmentDescriptorId] ASC)
GO

ALTER TABLE [tx].[AssessmentResultsObtainedDescriptor] WITH CHECK ADD CONSTRAINT [FK_AssessmentResultsObtainedDescriptor_Descriptor] FOREIGN KEY ([AssessmentResultsObtainedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[AssociateDegreeIndicatorDescriptor] WITH CHECK ADD CONSTRAINT [FK_AssociateDegreeIndicatorDescriptor_Descriptor] FOREIGN KEY ([AssociateDegreeIndicatorDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[AuxiliaryRoleIdDescriptor] WITH CHECK ADD CONSTRAINT [FK_AuxiliaryRoleIdDescriptor_Descriptor] FOREIGN KEY ([AuxiliaryRoleIdDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[BasicReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BasicReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BasicReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[BasicReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[BasicReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BasicReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BasicReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[BasicReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[BasicReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BasicReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[BasicReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BasicReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_BasicReportingPeriodAttendance_Student]
ON [tx].[BasicReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[BilingualESLFundingDescriptor] WITH CHECK ADD CONSTRAINT [FK_BilingualESLFundingDescriptor_Descriptor] FOREIGN KEY ([BilingualESLFundingDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BilingualESLProgramReportingPeriodAttendance_BilingualESLFundingDescriptor] FOREIGN KEY ([BilingualESLFundingDescriptorId])
REFERENCES [tx].[BilingualESLFundingDescriptor] ([BilingualESLFundingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BilingualESLProgramReportingPeriodAttendance_BilingualESLFundingDescriptor]
ON [tx].[BilingualESLProgramReportingPeriodAttendance] ([BilingualESLFundingDescriptorId] ASC)
GO

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BilingualESLProgramReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BilingualESLProgramReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[BilingualESLProgramReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BilingualESLProgramReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BilingualESLProgramReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[BilingualESLProgramReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BilingualESLProgramReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_BilingualESLProgramReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_BilingualESLProgramReportingPeriodAttendance_Student]
ON [tx].[BilingualESLProgramReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[BudgetExt] WITH CHECK ADD CONSTRAINT [FK_BudgetExt_BudgetFunctionDescriptor] FOREIGN KEY ([BudgetFunctionDescriptorId])
REFERENCES [tx].[BudgetFunctionDescriptor] ([BudgetFunctionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BudgetExt_BudgetFunctionDescriptor]
ON [tx].[BudgetExt] ([BudgetFunctionDescriptorId] ASC)
GO

ALTER TABLE [tx].[BudgetExt] WITH CHECK ADD CONSTRAINT [FK_BudgetExt_BudgetFundDescriptor] FOREIGN KEY ([BudgetFundDescriptorId])
REFERENCES [tx].[BudgetFundDescriptor] ([BudgetFundDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BudgetExt_BudgetFundDescriptor]
ON [tx].[BudgetExt] ([BudgetFundDescriptorId] ASC)
GO

ALTER TABLE [tx].[BudgetExt] WITH CHECK ADD CONSTRAINT [FK_BudgetExt_BudgetObjectDescriptor] FOREIGN KEY ([BudgetObjectDescriptorId])
REFERENCES [tx].[BudgetObjectDescriptor] ([BudgetObjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BudgetExt_BudgetObjectDescriptor]
ON [tx].[BudgetExt] ([BudgetObjectDescriptorId] ASC)
GO

ALTER TABLE [tx].[BudgetExt] WITH CHECK ADD CONSTRAINT [FK_BudgetExt_BudgetProgramIntentDescriptor] FOREIGN KEY ([BudgetProgramIntentDescriptorId])
REFERENCES [tx].[BudgetProgramIntentDescriptor] ([BudgetProgramIntentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_BudgetExt_BudgetProgramIntentDescriptor]
ON [tx].[BudgetExt] ([BudgetProgramIntentDescriptorId] ASC)
GO

ALTER TABLE [tx].[BudgetExt] WITH CHECK ADD CONSTRAINT [FK_BudgetExt_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[BudgetFunctionDescriptor] WITH CHECK ADD CONSTRAINT [FK_BudgetFunctionDescriptor_Descriptor] FOREIGN KEY ([BudgetFunctionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[BudgetFundDescriptor] WITH CHECK ADD CONSTRAINT [FK_BudgetFundDescriptor_Descriptor] FOREIGN KEY ([BudgetFundDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[BudgetObjectDescriptor] WITH CHECK ADD CONSTRAINT [FK_BudgetObjectDescriptor_Descriptor] FOREIGN KEY ([BudgetObjectDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[BudgetProgramIntentDescriptor] WITH CHECK ADD CONSTRAINT [FK_BudgetProgramIntentDescriptor_Descriptor] FOREIGN KEY ([BudgetProgramIntentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[CalendarDateExtension] WITH CHECK ADD CONSTRAINT [FK_CalendarDateExtension_CalendarDate] FOREIGN KEY ([CalendarCode], [Date], [SchoolId], [SchoolYear])
REFERENCES [edfi].[CalendarDate] ([CalendarCode], [Date], [SchoolId], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[CalendarDateExtension] WITH CHECK ADD CONSTRAINT [FK_CalendarDateExtension_CalendarWaiverEventTypeDescriptor] FOREIGN KEY ([CalendarWaiverEventTypeDescriptorId])
REFERENCES [tx].[CalendarWaiverEventTypeDescriptor] ([CalendarWaiverEventTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CalendarDateExtension_CalendarWaiverEventTypeDescriptor]
ON [tx].[CalendarDateExtension] ([CalendarWaiverEventTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[CalendarWaiverEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CalendarWaiverEventTypeDescriptor_Descriptor] FOREIGN KEY ([CalendarWaiverEventTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[CampusEnrollmentTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CampusEnrollmentTypeDescriptor_Descriptor] FOREIGN KEY ([CampusEnrollmentTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ChildCountFundingDescriptor] WITH CHECK ADD CONSTRAINT [FK_ChildCountFundingDescriptor_Descriptor] FOREIGN KEY ([ChildCountFundingDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[CIStaffProgramIntentDescriptor] WITH CHECK ADD CONSTRAINT [FK_CIStaffProgramIntentDescriptor_Descriptor] FOREIGN KEY ([CIStaffProgramIntentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ClassTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ClassTypeDescriptor_Descriptor] FOREIGN KEY ([ClassTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] WITH CHECK ADD CONSTRAINT [FK_ContractedInstructionalStaffFTEExt_CIStaffProgramIntentDescriptor] FOREIGN KEY ([CIStaffProgramIntentDescriptorId])
REFERENCES [tx].[CIStaffProgramIntentDescriptor] ([CIStaffProgramIntentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ContractedInstructionalStaffFTEExt_CIStaffProgramIntentDescriptor]
ON [tx].[ContractedInstructionalStaffFTEExt] ([CIStaffProgramIntentDescriptorId] ASC)
GO

ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] WITH CHECK ADD CONSTRAINT [FK_ContractedInstructionalStaffFTEExt_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] WITH CHECK ADD CONSTRAINT [FK_ContractedInstructionalStaffFTEExt_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[CourseSequenceDescriptor] WITH CHECK ADD CONSTRAINT [FK_CourseSequenceDescriptor_Descriptor] FOREIGN KEY ([CourseSequenceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[CourseTranscriptExtension] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptExtension_CourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
REFERENCES [edfi].[CourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[CourseTranscriptExtension] WITH CHECK ADD CONSTRAINT [FK_CourseTranscriptExtension_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseTranscriptExtension_Section]
ON [tx].[CourseTranscriptExtension] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [tx].[CrisisEventDescriptor] WITH CHECK ADD CONSTRAINT [FK_CrisisEventDescriptor_Descriptor] FOREIGN KEY ([CrisisEventDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_CTEProgramReportingPeriodAttendance_CTEServiceIdDescriptor] FOREIGN KEY ([CTEServiceIdDescriptorId])
REFERENCES [tx].[CTEServiceIdDescriptor] ([CTEServiceIdDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CTEProgramReportingPeriodAttendance_CTEServiceIdDescriptor]
ON [tx].[CTEProgramReportingPeriodAttendance] ([CTEServiceIdDescriptorId] ASC)
GO

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_CTEProgramReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CTEProgramReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[CTEProgramReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_CTEProgramReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CTEProgramReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[CTEProgramReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_CTEProgramReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_CTEProgramReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_CTEProgramReportingPeriodAttendance_Student]
ON [tx].[CTEProgramReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[CTEServiceIdDescriptor] WITH CHECK ADD CONSTRAINT [FK_CTEServiceIdDescriptor_Descriptor] FOREIGN KEY ([CTEServiceIdDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[DescriptorMappingHistory] WITH CHECK ADD CONSTRAINT [FK_DescriptorMappingHistory_ApiOperationTypeDescriptor] FOREIGN KEY ([ApiOperationTypeDescriptorId])
REFERENCES [tx].[ApiOperationTypeDescriptor] ([ApiOperationTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DescriptorMappingHistory_ApiOperationTypeDescriptor]
ON [tx].[DescriptorMappingHistory] ([ApiOperationTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[DescriptorMappingHistory] WITH CHECK ADD CONSTRAINT [FK_DescriptorMappingHistory_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[DescriptorMappingHistory] WITH CHECK ADD CONSTRAINT [FK_DescriptorMappingHistory_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_DescriptorMappingHistory_SchoolYearType]
ON [tx].[DescriptorMappingHistory] ([SchoolYear] ASC)
GO

ALTER TABLE [tx].[DifferenceReasonHoursAcceleratedInstructionDescriptor] WITH CHECK ADD CONSTRAINT [FK_DifferenceReasonHoursAcceleratedInstructionDescriptor_Descriptor] FOREIGN KEY ([DifferenceReasonHoursAcceleratedInstructionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[DisciplineIncidentExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineIncidentExtension_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId])
REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[DyslexiaRiskDescriptor] WITH CHECK ADD CONSTRAINT [FK_DyslexiaRiskDescriptor_Descriptor] FOREIGN KEY ([DyslexiaRiskDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[DyslexiaScreeningExceptionReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_DyslexiaScreeningExceptionReasonDescriptor_Descriptor] FOREIGN KEY ([DyslexiaScreeningExceptionReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[DyslexiaServicesDescriptor] WITH CHECK ADD CONSTRAINT [FK_DyslexiaServicesDescriptor_Descriptor] FOREIGN KEY ([DyslexiaServicesDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EarlyReadingIndicatorDescriptor] WITH CHECK ADD CONSTRAINT [FK_EarlyReadingIndicatorDescriptor_Descriptor] FOREIGN KEY ([EarlyReadingIndicatorDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EconomicDisadvantageDescriptor] WITH CHECK ADD CONSTRAINT [FK_EconomicDisadvantageDescriptor_Descriptor] FOREIGN KEY ([EconomicDisadvantageDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EligibilityDelayReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_EligibilityDelayReasonDescriptor_Descriptor] FOREIGN KEY ([EligibilityDelayReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ELOActivityDescriptor] WITH CHECK ADD CONSTRAINT [FK_ELOActivityDescriptor_Descriptor] FOREIGN KEY ([ELOActivityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ELOTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ELOTypeDescriptor_Descriptor] FOREIGN KEY ([ELOTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EmergentBilingualIndicatorDescriptor] WITH CHECK ADD CONSTRAINT [FK_EmergentBilingualIndicatorDescriptor_Descriptor] FOREIGN KEY ([EmergentBilingualIndicatorDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EndorsementCompletedDescriptor] WITH CHECK ADD CONSTRAINT [FK_EndorsementCompletedDescriptor_Descriptor] FOREIGN KEY ([EndorsementCompletedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EndorsementPursuingDescriptor] WITH CHECK ADD CONSTRAINT [FK_EndorsementPursuingDescriptor_Descriptor] FOREIGN KEY ([EndorsementPursuingDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EnrollmentTrackingVerificationDescriptor] WITH CHECK ADD CONSTRAINT [FK_EnrollmentTrackingVerificationDescriptor_Descriptor] FOREIGN KEY ([EnrollmentTrackingVerificationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[EvaluationDelayReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_EvaluationDelayReasonDescriptor_Descriptor] FOREIGN KEY ([EvaluationDelayReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] WITH CHECK ADD CONSTRAINT [FK_ExtendedSchoolYearServicesAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExtendedSchoolYearServicesAttendance_GradeLevelDescriptor]
ON [tx].[ExtendedSchoolYearServicesAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] WITH CHECK ADD CONSTRAINT [FK_ExtendedSchoolYearServicesAttendance_InstructionalSettingDescriptor] FOREIGN KEY ([FirstInstructionalSettingDescriptorId])
REFERENCES [tx].[InstructionalSettingDescriptor] ([InstructionalSettingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExtendedSchoolYearServicesAttendance_InstructionalSettingDescriptor]
ON [tx].[ExtendedSchoolYearServicesAttendance] ([FirstInstructionalSettingDescriptorId] ASC)
GO

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] WITH CHECK ADD CONSTRAINT [FK_ExtendedSchoolYearServicesAttendance_InstructionalSettingDescriptor1] FOREIGN KEY ([SecondInstructionalSettingDescriptorId])
REFERENCES [tx].[InstructionalSettingDescriptor] ([InstructionalSettingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExtendedSchoolYearServicesAttendance_InstructionalSettingDescriptor1]
ON [tx].[ExtendedSchoolYearServicesAttendance] ([SecondInstructionalSettingDescriptorId] ASC)
GO

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] WITH CHECK ADD CONSTRAINT [FK_ExtendedSchoolYearServicesAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] WITH CHECK ADD CONSTRAINT [FK_ExtendedSchoolYearServicesAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_ExtendedSchoolYearServicesAttendance_Student]
ON [tx].[ExtendedSchoolYearServicesAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[FinancialAidApplicationDescriptor] WITH CHECK ADD CONSTRAINT [FK_FinancialAidApplicationDescriptor_Descriptor] FOREIGN KEY ([FinancialAidApplicationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[FlexAttendanceProgramDescriptor] WITH CHECK ADD CONSTRAINT [FK_FlexAttendanceProgramDescriptor_Descriptor] FOREIGN KEY ([FlexAttendanceProgramDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_BilingualESLFundingDescriptor] FOREIGN KEY ([BilingualESLFundingDescriptorId])
REFERENCES [tx].[BilingualESLFundingDescriptor] ([BilingualESLFundingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_BilingualESLFundingDescriptor]
ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ([BilingualESLFundingDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor] FOREIGN KEY ([FlexAttendanceProgramDescriptorId])
REFERENCES [tx].[FlexAttendanceProgramDescriptor] ([FlexAttendanceProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor]
ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ([FlexAttendanceProgramDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleBilingualESLProgramReportingPeriodAttendance_Student]
ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleCTEProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor] FOREIGN KEY ([FlexAttendanceProgramDescriptorId])
REFERENCES [tx].[FlexAttendanceProgramDescriptor] ([FlexAttendanceProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleCTEProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor]
ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] ([FlexAttendanceProgramDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleCTEProgramReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleCTEProgramReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleCTEProgramReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleCTEProgramReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleCTEProgramReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleCTEProgramReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleCTEProgramReportingPeriodAttendance_Student]
ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleRegularProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor] FOREIGN KEY ([FlexAttendanceProgramDescriptorId])
REFERENCES [tx].[FlexAttendanceProgramDescriptor] ([FlexAttendanceProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleRegularProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor]
ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] ([FlexAttendanceProgramDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleRegularProgramReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleRegularProgramReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleRegularProgramReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleRegularProgramReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleRegularProgramReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleRegularProgramReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleRegularProgramReportingPeriodAttendance_Student]
ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor] FOREIGN KEY ([FlexAttendanceProgramDescriptorId])
REFERENCES [tx].[FlexAttendanceProgramDescriptor] ([FlexAttendanceProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_FlexAttendanceProgramDescriptor]
ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ([FlexAttendanceProgramDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_InstructionalSettingDescriptor] FOREIGN KEY ([InstructionalSettingDescriptorId])
REFERENCES [tx].[InstructionalSettingDescriptor] ([InstructionalSettingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_InstructionalSettingDescriptor]
ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ([InstructionalSettingDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_FlexibleSpecialEducationProgramReportingPeriodAttendance_Student]
ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[FosterCareTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_FosterCareTypeDescriptor_Descriptor] FOREIGN KEY ([FosterCareTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[FrequencyOfServicesDescriptor] WITH CHECK ADD CONSTRAINT [FK_FrequencyOfServicesDescriptor_Descriptor] FOREIGN KEY ([FrequencyOfServicesDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[GenerationCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_GenerationCodeDescriptor_Descriptor] FOREIGN KEY ([GenerationCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[GiftedTalentedProgramDescriptor] WITH CHECK ADD CONSTRAINT [FK_GiftedTalentedProgramDescriptor_Descriptor] FOREIGN KEY ([GiftedTalentedProgramDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[HearingAmplificationAccessDescriptor] WITH CHECK ADD CONSTRAINT [FK_HearingAmplificationAccessDescriptor_Descriptor] FOREIGN KEY ([HearingAmplificationAccessDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[HearingAmplificationDailyUseDescriptor] WITH CHECK ADD CONSTRAINT [FK_HearingAmplificationDailyUseDescriptor_Descriptor] FOREIGN KEY ([HearingAmplificationDailyUseDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[HearingAmplificationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_HearingAmplificationTypeDescriptor_Descriptor] FOREIGN KEY ([HearingAmplificationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[HomelessStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_HomelessStatusDescriptor_Descriptor] FOREIGN KEY ([HomelessStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[HoursSpentReceivingServicesDescriptor] WITH CHECK ADD CONSTRAINT [FK_HoursSpentReceivingServicesDescriptor_Descriptor] FOREIGN KEY ([HoursSpentReceivingServicesDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[IBCVendorDescriptor] WITH CHECK ADD CONSTRAINT [FK_IBCVendorDescriptor_Descriptor] FOREIGN KEY ([IBCVendorDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[InstructionalSettingDescriptor] WITH CHECK ADD CONSTRAINT [FK_InstructionalSettingDescriptor_Descriptor] FOREIGN KEY ([InstructionalSettingDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[LangAcqServicesProvidedDescriptor] WITH CHECK ADD CONSTRAINT [FK_LangAcqServicesProvidedDescriptor_Descriptor] FOREIGN KEY ([LangAcqServicesProvidedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[LocalEducationAgencyExtension] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyExtension_ArmedServicesVocAptBatteryDescriptor] FOREIGN KEY ([ArmedServicesVocAptBatteryDescriptorId])
REFERENCES [tx].[ArmedServicesVocAptBatteryDescriptor] ([ArmedServicesVocAptBatteryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyExtension_ArmedServicesVocAptBatteryDescriptor]
ON [tx].[LocalEducationAgencyExtension] ([ArmedServicesVocAptBatteryDescriptorId] ASC)
GO

ALTER TABLE [tx].[LocalEducationAgencyExtension] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyExtension_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId])
REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[LocalEducationAgencyExtension] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyExtension_PKProgramEvaluationTypeDescriptor] FOREIGN KEY ([PKProgramEvaluationTypeDescriptorId])
REFERENCES [tx].[PKProgramEvaluationTypeDescriptor] ([PKProgramEvaluationTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyExtension_PKProgramEvaluationTypeDescriptor]
ON [tx].[LocalEducationAgencyExtension] ([PKProgramEvaluationTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[LocalEducationAgencyGiftedTalentedProgram] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyGiftedTalentedProgram_GiftedTalentedProgramDescriptor] FOREIGN KEY ([GiftedTalentedProgramDescriptorId])
REFERENCES [tx].[GiftedTalentedProgramDescriptor] ([GiftedTalentedProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyGiftedTalentedProgram_GiftedTalentedProgramDescriptor]
ON [tx].[LocalEducationAgencyGiftedTalentedProgram] ([GiftedTalentedProgramDescriptorId] ASC)
GO

ALTER TABLE [tx].[LocalEducationAgencyGiftedTalentedProgram] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyGiftedTalentedProgram_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId])
REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[LocalEducationAgencyProgramOfStudy] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyProgramOfStudy_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId])
REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[LocalEducationAgencyProgramOfStudy] WITH CHECK ADD CONSTRAINT [FK_LocalEducationAgencyProgramOfStudy_ProgramOfStudyDescriptor] FOREIGN KEY ([ProgramOfStudyDescriptorId])
REFERENCES [tx].[ProgramOfStudyDescriptor] ([ProgramOfStudyDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyProgramOfStudy_ProgramOfStudyDescriptor]
ON [tx].[LocalEducationAgencyProgramOfStudy] ([ProgramOfStudyDescriptorId] ASC)
GO

ALTER TABLE [tx].[MilitaryConnectedStudentDescriptor] WITH CHECK ADD CONSTRAINT [FK_MilitaryConnectedStudentDescriptor_Descriptor] FOREIGN KEY ([MilitaryConnectedStudentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[NonCampusBasedInstructionDescriptor] WITH CHECK ADD CONSTRAINT [FK_NonCampusBasedInstructionDescriptor_Descriptor] FOREIGN KEY ([NonCampusBasedInstructionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[NonEnrolledStudentUILActivityDescriptor] WITH CHECK ADD CONSTRAINT [FK_NonEnrolledStudentUILActivityDescriptor_Descriptor] FOREIGN KEY ([NonEnrolledStudentUILActivityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[NSLPTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_NSLPTypeDescriptor_Descriptor] FOREIGN KEY ([NSLPTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ParentalPermissionDescriptor] WITH CHECK ADD CONSTRAINT [FK_ParentalPermissionDescriptor_Descriptor] FOREIGN KEY ([ParentalPermissionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ParentExtension] WITH CHECK ADD CONSTRAINT [FK_ParentExtension_GenerationCodeDescriptor] FOREIGN KEY ([GenerationCodeDescriptorId])
REFERENCES [tx].[GenerationCodeDescriptor] ([GenerationCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ParentExtension_GenerationCodeDescriptor]
ON [tx].[ParentExtension] ([GenerationCodeDescriptorId] ASC)
GO

ALTER TABLE [tx].[ParentExtension] WITH CHECK ADD CONSTRAINT [FK_ParentExtension_Parent] FOREIGN KEY ([ParentUSI])
REFERENCES [edfi].[Parent] ([ParentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PayrollActivityDescriptor] WITH CHECK ADD CONSTRAINT [FK_PayrollActivityDescriptor_Descriptor] FOREIGN KEY ([PayrollActivityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PayrollExt] WITH CHECK ADD CONSTRAINT [FK_PayrollExt_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[PayrollExt] WITH CHECK ADD CONSTRAINT [FK_PayrollExt_PayrollActivityDescriptor] FOREIGN KEY ([PayrollActivityDescriptorId])
REFERENCES [tx].[PayrollActivityDescriptor] ([PayrollActivityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PayrollExt_PayrollActivityDescriptor]
ON [tx].[PayrollExt] ([PayrollActivityDescriptorId] ASC)
GO

ALTER TABLE [tx].[PayrollExt] WITH CHECK ADD CONSTRAINT [FK_PayrollExt_PayrollFunctionDescriptor] FOREIGN KEY ([PayrollFunctionDescriptorId])
REFERENCES [tx].[PayrollFunctionDescriptor] ([PayrollFunctionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PayrollExt_PayrollFunctionDescriptor]
ON [tx].[PayrollExt] ([PayrollFunctionDescriptorId] ASC)
GO

ALTER TABLE [tx].[PayrollExt] WITH CHECK ADD CONSTRAINT [FK_PayrollExt_PayrollFundDescriptor] FOREIGN KEY ([PayrollFundDescriptorId])
REFERENCES [tx].[PayrollFundDescriptor] ([PayrollFundDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PayrollExt_PayrollFundDescriptor]
ON [tx].[PayrollExt] ([PayrollFundDescriptorId] ASC)
GO

ALTER TABLE [tx].[PayrollExt] WITH CHECK ADD CONSTRAINT [FK_PayrollExt_PayrollObjectDescriptor] FOREIGN KEY ([PayrollObjectDescriptorId])
REFERENCES [tx].[PayrollObjectDescriptor] ([PayrollObjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PayrollExt_PayrollObjectDescriptor]
ON [tx].[PayrollExt] ([PayrollObjectDescriptorId] ASC)
GO

ALTER TABLE [tx].[PayrollExt] WITH CHECK ADD CONSTRAINT [FK_PayrollExt_PayrollProgramIntentDescriptor] FOREIGN KEY ([PayrollProgramIntentDescriptorId])
REFERENCES [tx].[PayrollProgramIntentDescriptor] ([PayrollProgramIntentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PayrollExt_PayrollProgramIntentDescriptor]
ON [tx].[PayrollExt] ([PayrollProgramIntentDescriptorId] ASC)
GO

ALTER TABLE [tx].[PayrollExt] WITH CHECK ADD CONSTRAINT [FK_PayrollExt_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_PayrollExt_Staff]
ON [tx].[PayrollExt] ([StaffUSI] ASC)
GO

ALTER TABLE [tx].[PayrollFunctionDescriptor] WITH CHECK ADD CONSTRAINT [FK_PayrollFunctionDescriptor_Descriptor] FOREIGN KEY ([PayrollFunctionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PayrollFundDescriptor] WITH CHECK ADD CONSTRAINT [FK_PayrollFundDescriptor_Descriptor] FOREIGN KEY ([PayrollFundDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PayrollObjectDescriptor] WITH CHECK ADD CONSTRAINT [FK_PayrollObjectDescriptor_Descriptor] FOREIGN KEY ([PayrollObjectDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PayrollProgramIntentDescriptor] WITH CHECK ADD CONSTRAINT [FK_PayrollProgramIntentDescriptor_Descriptor] FOREIGN KEY ([PayrollProgramIntentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PKCurriculaDescriptor] WITH CHECK ADD CONSTRAINT [FK_PKCurriculaDescriptor_Descriptor] FOREIGN KEY ([PKCurriculaDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PKFundingSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_PKFundingSourceDescriptor_Descriptor] FOREIGN KEY ([PKFundingSourceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PKProgramEvaluationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_PKProgramEvaluationTypeDescriptor_Descriptor] FOREIGN KEY ([PKProgramEvaluationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PKProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_PKProgramTypeDescriptor_Descriptor] FOREIGN KEY ([PKProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PKSchoolTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_PKSchoolTypeDescriptor_Descriptor] FOREIGN KEY ([PKSchoolTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PKStudentInstructionDescriptor] WITH CHECK ADD CONSTRAINT [FK_PKStudentInstructionDescriptor_Descriptor] FOREIGN KEY ([PKStudentInstructionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PKTeacherRequirementDescriptor] WITH CHECK ADD CONSTRAINT [FK_PKTeacherRequirementDescriptor_Descriptor] FOREIGN KEY ([PKTeacherRequirementDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PostSecondaryCertificationLicensureDescriptor] WITH CHECK ADD CONSTRAINT [FK_PostSecondaryCertificationLicensureDescriptor_Descriptor] FOREIGN KEY ([PostSecondaryCertificationLicensureDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PostSecondaryCertLicensureResultDescriptor] WITH CHECK ADD CONSTRAINT [FK_PostSecondaryCertLicensureResultDescriptor_Descriptor] FOREIGN KEY ([PostSecondaryCertLicensureResultDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PPCDServiceLocationDescriptor] WITH CHECK ADD CONSTRAINT [FK_PPCDServiceLocationDescriptor_Descriptor] FOREIGN KEY ([PPCDServiceLocationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PreferredHomeCommunicationMethodDescriptor] WITH CHECK ADD CONSTRAINT [FK_PreferredHomeCommunicationMethodDescriptor_Descriptor] FOREIGN KEY ([PreferredHomeCommunicationMethodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearActualExt] WITH CHECK ADD CONSTRAINT [FK_PriorYearActualExt_ActualFunctionDescriptor] FOREIGN KEY ([ActualFunctionDescriptorId])
REFERENCES [tx].[ActualFunctionDescriptor] ([ActualFunctionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearActualExt_ActualFunctionDescriptor]
ON [tx].[PriorYearActualExt] ([ActualFunctionDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearActualExt] WITH CHECK ADD CONSTRAINT [FK_PriorYearActualExt_ActualFundDescriptor] FOREIGN KEY ([ActualFundDescriptorId])
REFERENCES [tx].[ActualFundDescriptor] ([ActualFundDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearActualExt_ActualFundDescriptor]
ON [tx].[PriorYearActualExt] ([ActualFundDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearActualExt] WITH CHECK ADD CONSTRAINT [FK_PriorYearActualExt_ActualObjectDescriptor] FOREIGN KEY ([ActualObjectDescriptorId])
REFERENCES [tx].[ActualObjectDescriptor] ([ActualObjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearActualExt_ActualObjectDescriptor]
ON [tx].[PriorYearActualExt] ([ActualObjectDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearActualExt] WITH CHECK ADD CONSTRAINT [FK_PriorYearActualExt_ActualProgramIntentDescriptor] FOREIGN KEY ([ActualProgramIntentDescriptorId])
REFERENCES [tx].[ActualProgramIntentDescriptor] ([ActualProgramIntentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearActualExt_ActualProgramIntentDescriptor]
ON [tx].[PriorYearActualExt] ([ActualProgramIntentDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearActualExt] WITH CHECK ADD CONSTRAINT [FK_PriorYearActualExt_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_AsOfStatusLastFridayOctoberDescriptor] FOREIGN KEY ([AsOfStatusLastFridayOctoberDescriptorId])
REFERENCES [tx].[AsOfStatusLastFridayOctoberDescriptor] ([AsOfStatusLastFridayOctoberDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_AsOfStatusLastFridayOctoberDescriptor]
ON [tx].[PriorYearLeaver] ([AsOfStatusLastFridayOctoberDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_AssociateDegreeIndicatorDescriptor] FOREIGN KEY ([AssociateDegreeIndicatorDescriptorId])
REFERENCES [tx].[AssociateDegreeIndicatorDescriptor] ([AssociateDegreeIndicatorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_AssociateDegreeIndicatorDescriptor]
ON [tx].[PriorYearLeaver] ([AssociateDegreeIndicatorDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_CountryDescriptor] FOREIGN KEY ([BirthCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_CountryDescriptor]
ON [tx].[PriorYearLeaver] ([BirthCountryDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_EconomicDisadvantageDescriptor] FOREIGN KEY ([EconomicDisadvantageDescriptorId])
REFERENCES [tx].[EconomicDisadvantageDescriptor] ([EconomicDisadvantageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_EconomicDisadvantageDescriptor]
ON [tx].[PriorYearLeaver] ([EconomicDisadvantageDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_EmergentBilingualIndicatorDescriptor] FOREIGN KEY ([EmergentBilingualIndicatorDescriptorId])
REFERENCES [tx].[EmergentBilingualIndicatorDescriptor] ([EmergentBilingualIndicatorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_EmergentBilingualIndicatorDescriptor]
ON [tx].[PriorYearLeaver] ([EmergentBilingualIndicatorDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_ExitWithdrawTypeDescriptor] FOREIGN KEY ([ExitWithdrawTypeDescriptorId])
REFERENCES [edfi].[ExitWithdrawTypeDescriptor] ([ExitWithdrawTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_ExitWithdrawTypeDescriptor]
ON [tx].[PriorYearLeaver] ([ExitWithdrawTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_FinancialAidApplicationDescriptor] FOREIGN KEY ([FinancialAidApplicationDescriptorId])
REFERENCES [tx].[FinancialAidApplicationDescriptor] ([FinancialAidApplicationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_FinancialAidApplicationDescriptor]
ON [tx].[PriorYearLeaver] ([FinancialAidApplicationDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_FosterCareTypeDescriptor] FOREIGN KEY ([FosterCareTypeDescriptorId])
REFERENCES [tx].[FosterCareTypeDescriptor] ([FosterCareTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_FosterCareTypeDescriptor]
ON [tx].[PriorYearLeaver] ([FosterCareTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_GenerationCodeDescriptor] FOREIGN KEY ([GenerationCodeDescriptorId])
REFERENCES [tx].[GenerationCodeDescriptor] ([GenerationCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_GenerationCodeDescriptor]
ON [tx].[PriorYearLeaver] ([GenerationCodeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_GradeLevelDescriptor]
ON [tx].[PriorYearLeaver] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_HomelessStatusDescriptor] FOREIGN KEY ([HomelessStatusDescriptorId])
REFERENCES [tx].[HomelessStatusDescriptor] ([HomelessStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_HomelessStatusDescriptor]
ON [tx].[PriorYearLeaver] ([HomelessStatusDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_LanguageInstructionProgramServiceDescriptor] FOREIGN KEY ([LanguageInstructionProgramServiceDescriptorId])
REFERENCES [edfi].[LanguageInstructionProgramServiceDescriptor] ([LanguageInstructionProgramServiceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_LanguageInstructionProgramServiceDescriptor]
ON [tx].[PriorYearLeaver] ([LanguageInstructionProgramServiceDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_MilitaryConnectedStudentDescriptor] FOREIGN KEY ([MilitaryConnectedStudentDescriptorId])
REFERENCES [tx].[MilitaryConnectedStudentDescriptor] ([MilitaryConnectedStudentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_MilitaryConnectedStudentDescriptor]
ON [tx].[PriorYearLeaver] ([MilitaryConnectedStudentDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_ParentalPermissionDescriptor] FOREIGN KEY ([ParentalPermissionDescriptorId])
REFERENCES [tx].[ParentalPermissionDescriptor] ([ParentalPermissionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_ParentalPermissionDescriptor]
ON [tx].[PriorYearLeaver] ([ParentalPermissionDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_SexDescriptor]
ON [tx].[PriorYearLeaver] ([SexDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_SexDescriptor1] FOREIGN KEY ([BirthSexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_SexDescriptor1]
ON [tx].[PriorYearLeaver] ([BirthSexDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_StateAbbreviationDescriptor] FOREIGN KEY ([BirthStateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_StateAbbreviationDescriptor]
ON [tx].[PriorYearLeaver] ([BirthStateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaver] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaver_TitleIPartAParticipantDescriptor] FOREIGN KEY ([TitleIPartAParticipantDescriptorId])
REFERENCES [edfi].[TitleIPartAParticipantDescriptor] ([TitleIPartAParticipantDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaver_TitleIPartAParticipantDescriptor]
ON [tx].[PriorYearLeaver] ([TitleIPartAParticipantDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverAddress_AddressTypeDescriptor]
ON [tx].[PriorYearLeaverAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverAddress_LocaleDescriptor] FOREIGN KEY ([LocaleDescriptorId])
REFERENCES [edfi].[LocaleDescriptor] ([LocaleDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverAddress_LocaleDescriptor]
ON [tx].[PriorYearLeaverAddress] ([LocaleDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverAddress_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverAddress_StateAbbreviationDescriptor]
ON [tx].[PriorYearLeaverAddress] ([StateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverAddressPeriod] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverAddressPeriod_PriorYearLeaverAddress] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaverAddress] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverElectronicMail] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverElectronicMail_ElectronicMailTypeDescriptor] FOREIGN KEY ([ElectronicMailTypeDescriptorId])
REFERENCES [edfi].[ElectronicMailTypeDescriptor] ([ElectronicMailTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverElectronicMail_ElectronicMailTypeDescriptor]
ON [tx].[PriorYearLeaverElectronicMail] ([ElectronicMailTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverElectronicMail] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverElectronicMail_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverEndorsementCompleted] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverEndorsementCompleted_EndorsementCompletedDescriptor] FOREIGN KEY ([EndorsementCompletedDescriptorId])
REFERENCES [tx].[EndorsementCompletedDescriptor] ([EndorsementCompletedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverEndorsementCompleted_EndorsementCompletedDescriptor]
ON [tx].[PriorYearLeaverEndorsementCompleted] ([EndorsementCompletedDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverEndorsementCompleted] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverEndorsementCompleted_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverGraduationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverGraduationSet_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId])
REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverGraduationSet_AchievementCategoryDescriptor]
ON [tx].[PriorYearLeaverGraduationSet] ([AchievementCategoryDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverGraduationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverGraduationSet_DiplomaTypeDescriptor] FOREIGN KEY ([DiplomaTypeDescriptorId])
REFERENCES [edfi].[DiplomaTypeDescriptor] ([DiplomaTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverGraduationSet_DiplomaTypeDescriptor]
ON [tx].[PriorYearLeaverGraduationSet] ([DiplomaTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverGraduationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverGraduationSet_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverGraduationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverGraduationSet_TexasFirstEarlyHSCompletionProgramDescriptor] FOREIGN KEY ([TexasFirstEarlyHSCompletionProgramDescriptorId])
REFERENCES [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] ([TexasFirstEarlyHSCompletionProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverGraduationSet_TexasFirstEarlyHSCompletionProgramDescriptor]
ON [tx].[PriorYearLeaverGraduationSet] ([TexasFirstEarlyHSCompletionProgramDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverIndustryBasedCertificationSet_IBCVendorDescriptor] FOREIGN KEY ([IBCVendorDescriptorId])
REFERENCES [tx].[IBCVendorDescriptor] ([IBCVendorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverIndustryBasedCertificationSet_IBCVendorDescriptor]
ON [tx].[PriorYearLeaverIndustryBasedCertificationSet] ([IBCVendorDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverIndustryBasedCertificationSet_PostSecondaryCertificationLicensureDescriptor] FOREIGN KEY ([PostSecondaryCertificationLicensureDescriptorId])
REFERENCES [tx].[PostSecondaryCertificationLicensureDescriptor] ([PostSecondaryCertificationLicensureDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverIndustryBasedCertificationSet_PostSecondaryCertificationLicensureDescriptor]
ON [tx].[PriorYearLeaverIndustryBasedCertificationSet] ([PostSecondaryCertificationLicensureDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverIndustryBasedCertificationSet_PostSecondaryCertLicensureResultDescriptor] FOREIGN KEY ([PostSecondaryCertLicensureResultDescriptorId])
REFERENCES [tx].[PostSecondaryCertLicensureResultDescriptor] ([PostSecondaryCertLicensureResultDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverIndustryBasedCertificationSet_PostSecondaryCertLicensureResultDescriptor]
ON [tx].[PriorYearLeaverIndustryBasedCertificationSet] ([PostSecondaryCertLicensureResultDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverIndustryBasedCertificationSet_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverLanguage] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverLanguage_LanguageDescriptor]
ON [tx].[PriorYearLeaverLanguage] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverLanguage] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverLanguage_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverLanguageUse] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverLanguageUse_LanguageUseDescriptor] FOREIGN KEY ([LanguageUseDescriptorId])
REFERENCES [edfi].[LanguageUseDescriptor] ([LanguageUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverLanguageUse_LanguageUseDescriptor]
ON [tx].[PriorYearLeaverLanguageUse] ([LanguageUseDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverLanguageUse] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverLanguageUse_PriorYearLeaverLanguage] FOREIGN KEY ([SchoolId], [StudentUId], [LanguageDescriptorId])
REFERENCES [tx].[PriorYearLeaverLanguage] ([SchoolId], [StudentUId], [LanguageDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverParent] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParent_GenerationCodeDescriptor] FOREIGN KEY ([GenerationCodeDescriptorId])
REFERENCES [tx].[GenerationCodeDescriptor] ([GenerationCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParent_GenerationCodeDescriptor]
ON [tx].[PriorYearLeaverParent] ([GenerationCodeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentAddress_AddressTypeDescriptor]
ON [tx].[PriorYearLeaverParentAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentAddress_LocaleDescriptor] FOREIGN KEY ([LocaleDescriptorId])
REFERENCES [edfi].[LocaleDescriptor] ([LocaleDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentAddress_LocaleDescriptor]
ON [tx].[PriorYearLeaverParentAddress] ([LocaleDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentAddress_PriorYearLeaverParent] FOREIGN KEY ([ParentUId])
REFERENCES [tx].[PriorYearLeaverParent] ([ParentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverParentAddress] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentAddress_StateAbbreviationDescriptor]
ON [tx].[PriorYearLeaverParentAddress] ([StateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentAddressPeriod] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentAddressPeriod_PriorYearLeaverParentAddress] FOREIGN KEY ([ParentUId])
REFERENCES [tx].[PriorYearLeaverParentAddress] ([ParentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverParentElectronicMail] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentElectronicMail_ElectronicMailTypeDescriptor] FOREIGN KEY ([ElectronicMailTypeDescriptorId])
REFERENCES [edfi].[ElectronicMailTypeDescriptor] ([ElectronicMailTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentElectronicMail_ElectronicMailTypeDescriptor]
ON [tx].[PriorYearLeaverParentElectronicMail] ([ElectronicMailTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentElectronicMail] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentElectronicMail_PriorYearLeaverParent] FOREIGN KEY ([ParentUId])
REFERENCES [tx].[PriorYearLeaverParent] ([ParentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverParentPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentPersonalIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentPersonalIdentificationDocument_CountryDescriptor]
ON [tx].[PriorYearLeaverParentPersonalIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentPersonalIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [tx].[PriorYearLeaverParentPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentPersonalIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [tx].[PriorYearLeaverParentPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverParentPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentPersonalIdentificationDocument_PriorYearLeaverParent] FOREIGN KEY ([ParentUId])
REFERENCES [tx].[PriorYearLeaverParent] ([ParentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverParentTelephone] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentTelephone_PriorYearLeaverParent] FOREIGN KEY ([ParentUId])
REFERENCES [tx].[PriorYearLeaverParent] ([ParentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverParentTelephone] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverParentTelephone_TelephoneNumberTypeDescriptor] FOREIGN KEY ([TelephoneNumberTypeDescriptorId])
REFERENCES [edfi].[TelephoneNumberTypeDescriptor] ([TelephoneNumberTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverParentTelephone_TelephoneNumberTypeDescriptor]
ON [tx].[PriorYearLeaverParentTelephone] ([TelephoneNumberTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverPersonalIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverPersonalIdentificationDocument_CountryDescriptor]
ON [tx].[PriorYearLeaverPersonalIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverPersonalIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [tx].[PriorYearLeaverPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverPersonalIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [tx].[PriorYearLeaverPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverPersonalIdentificationDocument_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverRace] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverRace_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverRace] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverRace_RaceDescriptor]
ON [tx].[PriorYearLeaverRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverStudentCharacteristic] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverStudentCharacteristic_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverStudentCharacteristic] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverStudentCharacteristic_StudentCharacteristicDescriptor] FOREIGN KEY ([StudentCharacteristicDescriptorId])
REFERENCES [edfi].[StudentCharacteristicDescriptor] ([StudentCharacteristicDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverStudentCharacteristic_StudentCharacteristicDescriptor]
ON [tx].[PriorYearLeaverStudentCharacteristic] ([StudentCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverStudentParentAssociation_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverStudentParentAssociation_PriorYearLeaver]
ON [tx].[PriorYearLeaverStudentParentAssociation] ([SchoolId] ASC, [StudentUId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverStudentParentAssociation_PriorYearLeaverParent] FOREIGN KEY ([ParentUId])
REFERENCES [tx].[PriorYearLeaverParent] ([ParentUId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverStudentParentAssociation_PriorYearLeaverParent]
ON [tx].[PriorYearLeaverStudentParentAssociation] ([ParentUId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverStudentParentAssociation_RelationDescriptor] FOREIGN KEY ([RelationDescriptorId])
REFERENCES [edfi].[RelationDescriptor] ([RelationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverStudentParentAssociation_RelationDescriptor]
ON [tx].[PriorYearLeaverStudentParentAssociation] ([RelationDescriptorId] ASC)
GO

ALTER TABLE [tx].[PriorYearLeaverTelephone] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverTelephone_PriorYearLeaver] FOREIGN KEY ([SchoolId], [StudentUId])
REFERENCES [tx].[PriorYearLeaver] ([SchoolId], [StudentUId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[PriorYearLeaverTelephone] WITH CHECK ADD CONSTRAINT [FK_PriorYearLeaverTelephone_TelephoneNumberTypeDescriptor] FOREIGN KEY ([TelephoneNumberTypeDescriptorId])
REFERENCES [edfi].[TelephoneNumberTypeDescriptor] ([TelephoneNumberTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PriorYearLeaverTelephone_TelephoneNumberTypeDescriptor]
ON [tx].[PriorYearLeaverTelephone] ([TelephoneNumberTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[ProgramOfStudyDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramOfStudyDescriptor_Descriptor] FOREIGN KEY ([ProgramOfStudyDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[RegionalDaySchoolProgramForDeafDescriptor] WITH CHECK ADD CONSTRAINT [FK_RegionalDaySchoolProgramForDeafDescriptor_Descriptor] FOREIGN KEY ([RegionalDaySchoolProgramForDeafDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ReportAssessmentTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ReportAssessmentTypeDescriptor_Descriptor] FOREIGN KEY ([ReportAssessmentTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ReportingPeriodDescriptor] WITH CHECK ADD CONSTRAINT [FK_ReportingPeriodDescriptor_Descriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ReportingPeriodExt] WITH CHECK ADD CONSTRAINT [FK_ReportingPeriodExt_CalendarDate] FOREIGN KEY ([CalendarCode], [Date], [SchoolId], [SchoolYear])
REFERENCES [edfi].[CalendarDate] ([CalendarCode], [Date], [SchoolId], [SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_ReportingPeriodExt_CalendarDate]
ON [tx].[ReportingPeriodExt] ([CalendarCode] ASC, [Date] ASC, [SchoolId] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [tx].[ReportingPeriodExt] WITH CHECK ADD CONSTRAINT [FK_ReportingPeriodExt_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ReportingPeriodExt_ReportingPeriodDescriptor]
ON [tx].[ReportingPeriodExt] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_RestraintEvent] FOREIGN KEY ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[RestraintEventExtension] WITH CHECK ADD CONSTRAINT [FK_RestraintEventExtension_RestraintStaffTypeDescriptor] FOREIGN KEY ([RestraintStaffTypeDescriptorId])
REFERENCES [tx].[RestraintStaffTypeDescriptor] ([RestraintStaffTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventExtension_RestraintStaffTypeDescriptor]
ON [tx].[RestraintEventExtension] ([RestraintStaffTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[RestraintStaffTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_RestraintStaffTypeDescriptor_Descriptor] FOREIGN KEY ([RestraintStaffTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SchoolCampusEnrollmentTypeSet] WITH CHECK ADD CONSTRAINT [FK_SchoolCampusEnrollmentTypeSet_CampusEnrollmentTypeDescriptor] FOREIGN KEY ([CampusEnrollmentTypeDescriptorId])
REFERENCES [tx].[CampusEnrollmentTypeDescriptor] ([CampusEnrollmentTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolCampusEnrollmentTypeSet_CampusEnrollmentTypeDescriptor]
ON [tx].[SchoolCampusEnrollmentTypeSet] ([CampusEnrollmentTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[SchoolCampusEnrollmentTypeSet] WITH CHECK ADD CONSTRAINT [FK_SchoolCampusEnrollmentTypeSet_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SchoolCharterWaitlistSet] WITH CHECK ADD CONSTRAINT [FK_SchoolCharterWaitlistSet_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SchoolELOSet] WITH CHECK ADD CONSTRAINT [FK_SchoolELOSet_ELOTypeDescriptor] FOREIGN KEY ([ELOTypeDescriptorId])
REFERENCES [tx].[ELOTypeDescriptor] ([ELOTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolELOSet_ELOTypeDescriptor]
ON [tx].[SchoolELOSet] ([ELOTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[SchoolELOSet] WITH CHECK ADD CONSTRAINT [FK_SchoolELOSet_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SchoolELOSetELOActivitySet] WITH CHECK ADD CONSTRAINT [FK_SchoolELOSetELOActivitySet_ELOActivityDescriptor] FOREIGN KEY ([ELOActivityDescriptorId])
REFERENCES [tx].[ELOActivityDescriptor] ([ELOActivityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolELOSetELOActivitySet_ELOActivityDescriptor]
ON [tx].[SchoolELOSetELOActivitySet] ([ELOActivityDescriptorId] ASC)
GO

ALTER TABLE [tx].[SchoolELOSetELOActivitySet] WITH CHECK ADD CONSTRAINT [FK_SchoolELOSetELOActivitySet_SchoolELOSet] FOREIGN KEY ([SchoolId], [ELOTypeDescriptorId])
REFERENCES [tx].[SchoolELOSet] ([SchoolId], [ELOTypeDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SchoolNSLPTypeSet] WITH CHECK ADD CONSTRAINT [FK_SchoolNSLPTypeSet_NSLPTypeDescriptor] FOREIGN KEY ([NSLPTypeDescriptorId])
REFERENCES [tx].[NSLPTypeDescriptor] ([NSLPTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolNSLPTypeSet_NSLPTypeDescriptor]
ON [tx].[SchoolNSLPTypeSet] ([NSLPTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[SchoolNSLPTypeSet] WITH CHECK ADD CONSTRAINT [FK_SchoolNSLPTypeSet_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_ClassTypeDescriptor] FOREIGN KEY ([ClassTypeDescriptorId])
REFERENCES [tx].[ClassTypeDescriptor] ([ClassTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_ClassTypeDescriptor]
ON [tx].[SectionSet] ([ClassTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_CourseSequenceDescriptor] FOREIGN KEY ([CourseSequenceDescriptorId])
REFERENCES [tx].[CourseSequenceDescriptor] ([CourseSequenceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_CourseSequenceDescriptor]
ON [tx].[SectionSet] ([CourseSequenceDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_GradeLevelDescriptor]
ON [tx].[SectionSet] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_NonCampusBasedInstructionDescriptor] FOREIGN KEY ([NonCampusBasedInstructionDescriptorId])
REFERENCES [tx].[NonCampusBasedInstructionDescriptor] ([NonCampusBasedInstructionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_NonCampusBasedInstructionDescriptor]
ON [tx].[SectionSet] ([NonCampusBasedInstructionDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_PKCurriculaDescriptor] FOREIGN KEY ([PKCurriculaDescriptorId])
REFERENCES [tx].[PKCurriculaDescriptor] ([PKCurriculaDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_PKCurriculaDescriptor]
ON [tx].[SectionSet] ([PKCurriculaDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_PKSchoolTypeDescriptor] FOREIGN KEY ([PKSchoolTypeDescriptorId])
REFERENCES [tx].[PKSchoolTypeDescriptor] ([PKSchoolTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_PKSchoolTypeDescriptor]
ON [tx].[SectionSet] ([PKSchoolTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_PKStudentInstructionDescriptor] FOREIGN KEY ([PKStudentInstructionDescriptorId])
REFERENCES [tx].[PKStudentInstructionDescriptor] ([PKStudentInstructionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_PKStudentInstructionDescriptor]
ON [tx].[SectionSet] ([PKStudentInstructionDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_PopulationServedDescriptor] FOREIGN KEY ([PopulationServedDescriptorId])
REFERENCES [edfi].[PopulationServedDescriptor] ([PopulationServedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSet_PopulationServedDescriptor]
ON [tx].[SectionSet] ([PopulationServedDescriptorId] ASC)
GO

ALTER TABLE [tx].[SectionSet] WITH CHECK ADD CONSTRAINT [FK_SectionSet_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [tx].[SharedServiceArrangementExt] WITH CHECK ADD CONSTRAINT [FK_SharedServiceArrangementExt_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[SharedServiceArrangementExt] WITH CHECK ADD CONSTRAINT [FK_SharedServiceArrangementExt_SSAFundDescriptor] FOREIGN KEY ([SSAFundDescriptorId])
REFERENCES [tx].[SSAFundDescriptor] ([SSAFundDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SharedServiceArrangementExt_SSAFundDescriptor]
ON [tx].[SharedServiceArrangementExt] ([SSAFundDescriptorId] ASC)
GO

ALTER TABLE [tx].[SharedServiceArrangementExt] WITH CHECK ADD CONSTRAINT [FK_SharedServiceArrangementExt_SSATypeDescriptor] FOREIGN KEY ([SSATypeDescriptorId])
REFERENCES [tx].[SSATypeDescriptor] ([SSATypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SharedServiceArrangementExt_SSATypeDescriptor]
ON [tx].[SharedServiceArrangementExt] ([SSATypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[SharedServiceArrangementStaffDescriptor] WITH CHECK ADD CONSTRAINT [FK_SharedServiceArrangementStaffDescriptor_Descriptor] FOREIGN KEY ([SharedServiceArrangementStaffDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationProgramReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialEducationProgramReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[SpecialEducationProgramReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationProgramReportingPeriodAttendance_InstructionalSettingDescriptor] FOREIGN KEY ([InstructionalSettingDescriptorId])
REFERENCES [tx].[InstructionalSettingDescriptor] ([InstructionalSettingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialEducationProgramReportingPeriodAttendance_InstructionalSettingDescriptor]
ON [tx].[SpecialEducationProgramReportingPeriodAttendance] ([InstructionalSettingDescriptorId] ASC)
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationProgramReportingPeriodAttendance_RegionalDaySchoolProgramForDeafDescriptor] FOREIGN KEY ([RegionalDaySchoolProgramForDeafDescriptorId])
REFERENCES [tx].[RegionalDaySchoolProgramForDeafDescriptor] ([RegionalDaySchoolProgramForDeafDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialEducationProgramReportingPeriodAttendance_RegionalDaySchoolProgramForDeafDescriptor]
ON [tx].[SpecialEducationProgramReportingPeriodAttendance] ([RegionalDaySchoolProgramForDeafDescriptorId] ASC)
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationProgramReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialEducationProgramReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[SpecialEducationProgramReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationProgramReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationProgramReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialEducationProgramReportingPeriodAttendance_Student]
ON [tx].[SpecialEducationProgramReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialProgramsReportingPeriodAttendance_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialProgramsReportingPeriodAttendance_GradeLevelDescriptor]
ON [tx].[SpecialProgramsReportingPeriodAttendance] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialProgramsReportingPeriodAttendance_ReportingPeriodDescriptor] FOREIGN KEY ([ReportingPeriodDescriptorId])
REFERENCES [tx].[ReportingPeriodDescriptor] ([ReportingPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialProgramsReportingPeriodAttendance_ReportingPeriodDescriptor]
ON [tx].[SpecialProgramsReportingPeriodAttendance] ([ReportingPeriodDescriptorId] ASC)
GO

ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialProgramsReportingPeriodAttendance_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] WITH CHECK ADD CONSTRAINT [FK_SpecialProgramsReportingPeriodAttendance_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_SpecialProgramsReportingPeriodAttendance_Student]
ON [tx].[SpecialProgramsReportingPeriodAttendance] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[SSAFundDescriptor] WITH CHECK ADD CONSTRAINT [FK_SSAFundDescriptor_Descriptor] FOREIGN KEY ([SSAFundDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[SSAOrgAssociationExt] WITH CHECK ADD CONSTRAINT [FK_SSAOrgAssociationExt_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[SSAOrgAssociationExt] WITH CHECK ADD CONSTRAINT [FK_SSAOrgAssociationExt_SSATypeDescriptor] FOREIGN KEY ([SSATypeDescriptorId])
REFERENCES [tx].[SSATypeDescriptor] ([SSATypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SSAOrgAssociationExt_SSATypeDescriptor]
ON [tx].[SSAOrgAssociationExt] ([SSATypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[SSATypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SSATypeDescriptor_Descriptor] FOREIGN KEY ([SSATypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationExtension_SharedServiceArrangementStaffDescriptor] FOREIGN KEY ([SharedServiceArrangementStaffDescriptorId])
REFERENCES [tx].[SharedServiceArrangementStaffDescriptor] ([SharedServiceArrangementStaffDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationExtension_SharedServiceArrangementStaffDescriptor]
ON [tx].[StaffEducationOrganizationAssignmentAssociationExtension] ([SharedServiceArrangementStaffDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationExtension_StaffEducationOrganizationAssignmentAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationAssignmentAssociation] ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffServiceSet_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffServiceSet_GradeLevelDescriptor]
ON [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffServiceSet_PopulationServedDescriptor] FOREIGN KEY ([PopulationServedDescriptorId])
REFERENCES [edfi].[PopulationServedDescriptor] ([PopulationServedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffServiceSet_PopulationServedDescriptor]
ON [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] ([PopulationServedDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffServiceSet_StaffEducationOrganizationAssignmentAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationAssignmentAssociation] ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationStaffServiceSet_StaffServiceDescriptor] FOREIGN KEY ([StaffServiceDescriptorId])
REFERENCES [tx].[StaffServiceDescriptor] ([StaffServiceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationAssignmentAssociationStaffServiceSet_StaffServiceDescriptor]
ON [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] ([StaffServiceDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet_AuxiliaryRoleIdDescriptor] FOREIGN KEY ([AuxiliaryRoleIdDescriptorId])
REFERENCES [tx].[AuxiliaryRoleIdDescriptor] ([AuxiliaryRoleIdDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet_AuxiliaryRoleIdDescriptor]
ON [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] ([AuxiliaryRoleIdDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_GenerationCodeDescriptor] FOREIGN KEY ([GenerationCodeDescriptorId])
REFERENCES [tx].[GenerationCodeDescriptor] ([GenerationCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffExtension_GenerationCodeDescriptor]
ON [tx].[StaffExtension] ([GenerationCodeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_PKTeacherRequirementDescriptor] FOREIGN KEY ([PKTeacherRequirementDescriptorId])
REFERENCES [tx].[PKTeacherRequirementDescriptor] ([PKTeacherRequirementDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffExtension_PKTeacherRequirementDescriptor]
ON [tx].[StaffExtension] ([PKTeacherRequirementDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffParaprofessionalCertificationSet] WITH CHECK ADD CONSTRAINT [FK_StaffParaprofessionalCertificationSet_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffSectionAssociationExtension_SharedServiceArrangementStaffDescriptor] FOREIGN KEY ([SharedServiceArrangementStaffDescriptorId])
REFERENCES [tx].[SharedServiceArrangementStaffDescriptor] ([SharedServiceArrangementStaffDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffSectionAssociationExtension_SharedServiceArrangementStaffDescriptor]
ON [tx].[StaffSectionAssociationExtension] ([SharedServiceArrangementStaffDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffSectionAssociationExtension_StaffSectionAssociation] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StaffUSI])
REFERENCES [edfi].[StaffSectionAssociation] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StaffUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [tx].[StaffServiceDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffServiceDescriptor_Descriptor] FOREIGN KEY ([StaffServiceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffTeacherIncentiveAllotmentDesignation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherIncentiveAllotmentDesignation_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffTeacherIncentiveAllotmentDesignation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherIncentiveAllotmentDesignation_TeacherIncentiveAllotmentDesignationDescriptor] FOREIGN KEY ([TeacherIncentiveAllotmentDesignationDescriptorId])
REFERENCES [tx].[TeacherIncentiveAllotmentDesignationDescriptor] ([TeacherIncentiveAllotmentDesignationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherIncentiveAllotmentDesignation_TeacherIncentiveAllotmentDesignationDescriptor]
ON [tx].[StaffTeacherIncentiveAllotmentDesignation] ([TeacherIncentiveAllotmentDesignationDescriptorId] ASC)
GO

ALTER TABLE [tx].[StaffTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffTypeDescriptor_Descriptor] FOREIGN KEY ([StaffTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffTypeSet] WITH CHECK ADD CONSTRAINT [FK_StaffTypeSet_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StaffTypeSet] WITH CHECK ADD CONSTRAINT [FK_StaffTypeSet_StaffTypeDescriptor] FOREIGN KEY ([StaffTypeDescriptorId])
REFERENCES [tx].[StaffTypeDescriptor] ([StaffTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTypeSet_StaffTypeDescriptor]
ON [tx].[StaffTypeSet] ([StaffTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordDiplomaExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordDiplomaExtension_FinancialAidApplicationDescriptor] FOREIGN KEY ([FinancialAidApplicationDescriptorId])
REFERENCES [tx].[FinancialAidApplicationDescriptor] ([FinancialAidApplicationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordDiplomaExtension_FinancialAidApplicationDescriptor]
ON [tx].[StudentAcademicRecordDiplomaExtension] ([FinancialAidApplicationDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordDiplomaExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordDiplomaExtension_StudentAcademicRecordDiploma] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId], [DiplomaAwardDate], [DiplomaTypeDescriptorId])
REFERENCES [edfi].[StudentAcademicRecordDiploma] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId], [DiplomaAwardDate], [DiplomaTypeDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentAcademicRecordDiplomaExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordDiplomaExtension_TexasFirstEarlyHSCompletionProgramDescriptor] FOREIGN KEY ([TexasFirstEarlyHSCompletionProgramDescriptorId])
REFERENCES [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] ([TexasFirstEarlyHSCompletionProgramDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordDiplomaExtension_TexasFirstEarlyHSCompletionProgramDescriptor]
ON [tx].[StudentAcademicRecordDiplomaExtension] ([TexasFirstEarlyHSCompletionProgramDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordEndorsementCompleted] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordEndorsementCompleted_EndorsementCompletedDescriptor] FOREIGN KEY ([EndorsementCompletedDescriptorId])
REFERENCES [tx].[EndorsementCompletedDescriptor] ([EndorsementCompletedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordEndorsementCompleted_EndorsementCompletedDescriptor]
ON [tx].[StudentAcademicRecordEndorsementCompleted] ([EndorsementCompletedDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordEndorsementCompleted] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordEndorsementCompleted_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentAcademicRecordEndorsementPursuing] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordEndorsementPursuing_EndorsementPursuingDescriptor] FOREIGN KEY ([EndorsementPursuingDescriptorId])
REFERENCES [tx].[EndorsementPursuingDescriptor] ([EndorsementPursuingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordEndorsementPursuing_EndorsementPursuingDescriptor]
ON [tx].[StudentAcademicRecordEndorsementPursuing] ([EndorsementPursuingDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordEndorsementPursuing] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordEndorsementPursuing_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentAcademicRecordExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordExtension_AssociateDegreeIndicatorDescriptor] FOREIGN KEY ([AssociateDegreeIndicatorDescriptorId])
REFERENCES [tx].[AssociateDegreeIndicatorDescriptor] ([AssociateDegreeIndicatorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordExtension_AssociateDegreeIndicatorDescriptor]
ON [tx].[StudentAcademicRecordExtension] ([AssociateDegreeIndicatorDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordExtension_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentAcademicRecordIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordIndustryBasedCertificationSet_IBCVendorDescriptor] FOREIGN KEY ([IBCVendorDescriptorId])
REFERENCES [tx].[IBCVendorDescriptor] ([IBCVendorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordIndustryBasedCertificationSet_IBCVendorDescriptor]
ON [tx].[StudentAcademicRecordIndustryBasedCertificationSet] ([IBCVendorDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordIndustryBasedCertificationSet_PostSecondaryCertificationLicensureDescriptor] FOREIGN KEY ([PostSecondaryCertificationLicensureDescriptorId])
REFERENCES [tx].[PostSecondaryCertificationLicensureDescriptor] ([PostSecondaryCertificationLicensureDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordIndustryBasedCertificationSet_PostSecondaryCertificationLicensureDescriptor]
ON [tx].[StudentAcademicRecordIndustryBasedCertificationSet] ([PostSecondaryCertificationLicensureDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordIndustryBasedCertificationSet_PostSecondaryCertLicensureResultDescriptor] FOREIGN KEY ([PostSecondaryCertLicensureResultDescriptorId])
REFERENCES [tx].[PostSecondaryCertLicensureResultDescriptor] ([PostSecondaryCertLicensureResultDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAcademicRecordIndustryBasedCertificationSet_PostSecondaryCertLicensureResultDescriptor]
ON [tx].[StudentAcademicRecordIndustryBasedCertificationSet] ([PostSecondaryCertLicensureResultDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentAcademicRecordIndustryBasedCertificationSet] WITH CHECK ADD CONSTRAINT [FK_StudentAcademicRecordIndustryBasedCertificationSet_StudentAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
REFERENCES [edfi].[StudentAcademicRecord] ([EducationOrganizationId], [SchoolYear], [StudentUSI], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentAcceleratedInstructionParticipationDescriptor] WITH CHECK ADD CONSTRAINT [FK_StudentAcceleratedInstructionParticipationDescriptor_Descriptor] FOREIGN KEY ([StudentAcceleratedInstructionParticipationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_ApplicationTypeDescriptor] FOREIGN KEY ([ApplicationTypeDescriptorId])
REFERENCES [tx].[ApplicationTypeDescriptor] ([ApplicationTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_ApplicationTypeDescriptor]
ON [tx].[StudentApplication] ([ApplicationTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_CountryDescriptor] FOREIGN KEY ([BirthCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_CountryDescriptor]
ON [tx].[StudentApplication] ([BirthCountryDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_GenerationCodeDescriptor] FOREIGN KEY ([GenerationCodeDescriptorId])
REFERENCES [tx].[GenerationCodeDescriptor] ([GenerationCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_GenerationCodeDescriptor]
ON [tx].[StudentApplication] ([GenerationCodeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_GradeLevelDescriptor] FOREIGN KEY ([EntryGradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_GradeLevelDescriptor]
ON [tx].[StudentApplication] ([EntryGradeLevelDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_SchoolYearType]
ON [tx].[StudentApplication] ([SchoolYear] ASC)
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_SexDescriptor]
ON [tx].[StudentApplication] ([SexDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_SexDescriptor1] FOREIGN KEY ([BirthSexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_SexDescriptor1]
ON [tx].[StudentApplication] ([BirthSexDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplication] WITH CHECK ADD CONSTRAINT [FK_StudentApplication_StateAbbreviationDescriptor] FOREIGN KEY ([BirthStateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplication_StateAbbreviationDescriptor]
ON [tx].[StudentApplication] ([BirthStateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplicationPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_StudentApplicationPersonalIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplicationPersonalIdentificationDocument_CountryDescriptor]
ON [tx].[StudentApplicationPersonalIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplicationPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_StudentApplicationPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplicationPersonalIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [tx].[StudentApplicationPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplicationPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_StudentApplicationPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentApplicationPersonalIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [tx].[StudentApplicationPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentApplicationPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_StudentApplicationPersonalIdentificationDocument_StudentApplication] FOREIGN KEY ([ApplicationIdentifier], [EducationOrganizationId], [SchoolYear])
REFERENCES [tx].[StudentApplication] ([ApplicationIdentifier], [EducationOrganizationId], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentAttributionDescriptor] WITH CHECK ADD CONSTRAINT [FK_StudentAttributionDescriptor_Descriptor] FOREIGN KEY ([StudentAttributionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentCensusBlockGroupSet] WITH CHECK ADD CONSTRAINT [FK_StudentCensusBlockGroupSet_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentCrisisEventSet] WITH CHECK ADD CONSTRAINT [FK_StudentCrisisEventSet_CrisisEventDescriptor] FOREIGN KEY ([CrisisEventDescriptorId])
REFERENCES [tx].[CrisisEventDescriptor] ([CrisisEventDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCrisisEventSet_CrisisEventDescriptor]
ON [tx].[StudentCrisisEventSet] ([CrisisEventDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentCrisisEventSet] WITH CHECK ADD CONSTRAINT [FK_StudentCrisisEventSet_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAcceleratedInstructionSet_AcceleratedInstructionSubjectDescriptor] FOREIGN KEY ([AcceleratedInstructionSubjectDescriptorId])
REFERENCES [tx].[AcceleratedInstructionSubjectDescriptor] ([AcceleratedInstructionSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAcceleratedInstructionSet_AcceleratedInstructionSubjectDescriptor]
ON [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] ([AcceleratedInstructionSubjectDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAcceleratedInstructionSet_DifferenceReasonHoursAcceleratedInstructionDescriptor] FOREIGN KEY ([DifferenceReasonHoursAcceleratedInstructionDescriptorId])
REFERENCES [tx].[DifferenceReasonHoursAcceleratedInstructionDescriptor] ([DifferenceReasonHoursAcceleratedInstructionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAcceleratedInstructionSet_DifferenceReasonHoursAcceleratedInstructionDescriptor]
ON [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] ([DifferenceReasonHoursAcceleratedInstructionDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAcceleratedInstructionSet_StudentAcceleratedInstructionParticipationDescriptor] FOREIGN KEY ([StudentAcceleratedInstructionParticipationDescriptorId])
REFERENCES [tx].[StudentAcceleratedInstructionParticipationDescriptor] ([StudentAcceleratedInstructionParticipationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAcceleratedInstructionSet_StudentAcceleratedInstructionParticipationDescriptor]
ON [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] ([StudentAcceleratedInstructionParticipationDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationAcceleratedInstructionSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDyslexiaRiskSet_DyslexiaRiskDescriptor] FOREIGN KEY ([DyslexiaRiskDescriptorId])
REFERENCES [tx].[DyslexiaRiskDescriptor] ([DyslexiaRiskDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDyslexiaRiskSet_DyslexiaRiskDescriptor]
ON [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] ([DyslexiaRiskDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDyslexiaRiskSet_DyslexiaScreeningExceptionReasonDescriptor] FOREIGN KEY ([DyslexiaScreeningExceptionReasonDescriptorId])
REFERENCES [tx].[DyslexiaScreeningExceptionReasonDescriptor] ([DyslexiaScreeningExceptionReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDyslexiaRiskSet_DyslexiaScreeningExceptionReasonDescriptor]
ON [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] ([DyslexiaScreeningExceptionReasonDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDyslexiaRiskSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDyslexiaServicesSet_DyslexiaServicesDescriptor] FOREIGN KEY ([DyslexiaServicesDescriptorId])
REFERENCES [tx].[DyslexiaServicesDescriptor] ([DyslexiaServicesDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationDyslexiaServicesSet_DyslexiaServicesDescriptor]
ON [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] ([DyslexiaServicesDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDyslexiaServicesSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationEarlyReadingIndicatorSet_EarlyReadingIndicatorDescriptor] FOREIGN KEY ([EarlyReadingIndicatorDescriptorId])
REFERENCES [tx].[EarlyReadingIndicatorDescriptor] ([EarlyReadingIndicatorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationEarlyReadingIndicatorSet_EarlyReadingIndicatorDescriptor]
ON [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] ([EarlyReadingIndicatorDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationEarlyReadingIndicatorSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationEconomicDisadvantageSet_EconomicDisadvantageDescriptor] FOREIGN KEY ([EconomicDisadvantageDescriptorId])
REFERENCES [tx].[EconomicDisadvantageDescriptor] ([EconomicDisadvantageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationEconomicDisadvantageSet_EconomicDisadvantageDescriptor]
ON [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] ([EconomicDisadvantageDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationEconomicDisadvantageSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationEmergentBilingualSet_EmergentBilingualIndicatorDescriptor] FOREIGN KEY ([EmergentBilingualIndicatorDescriptorId])
REFERENCES [tx].[EmergentBilingualIndicatorDescriptor] ([EmergentBilingualIndicatorDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationEmergentBilingualSet_EmergentBilingualIndicatorDescriptor]
ON [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] ([EmergentBilingualIndicatorDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationEmergentBilingualSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationFosterCareTypeSet_FosterCareTypeDescriptor] FOREIGN KEY ([FosterCareTypeDescriptorId])
REFERENCES [tx].[FosterCareTypeDescriptor] ([FosterCareTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationFosterCareTypeSet_FosterCareTypeDescriptor]
ON [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] ([FosterCareTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationFosterCareTypeSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationHomelessStatusSet_HomelessStatusDescriptor] FOREIGN KEY ([HomelessStatusDescriptorId])
REFERENCES [tx].[HomelessStatusDescriptor] ([HomelessStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationHomelessStatusSet_HomelessStatusDescriptor]
ON [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] ([HomelessStatusDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationHomelessStatusSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationMilitaryConnectedStudentSet_MilitaryConnectedStudentDescriptor] FOREIGN KEY ([MilitaryConnectedStudentDescriptorId])
REFERENCES [tx].[MilitaryConnectedStudentDescriptor] ([MilitaryConnectedStudentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationMilitaryConnectedStudentSet_MilitaryConnectedStudentDescriptor]
ON [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] ([MilitaryConnectedStudentDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationMilitaryConnectedStudentSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationPKFundingSourceSet_PKFundingSourceDescriptor] FOREIGN KEY ([PKFundingSourceDescriptorId])
REFERENCES [tx].[PKFundingSourceDescriptor] ([PKFundingSourceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationPKFundingSourceSet_PKFundingSourceDescriptor]
ON [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] ([PKFundingSourceDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationPKFundingSourceSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationPKProgramTypeSet_PKProgramTypeDescriptor] FOREIGN KEY ([PKProgramTypeDescriptorId])
REFERENCES [tx].[PKProgramTypeDescriptor] ([PKProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationPKProgramTypeSet_PKProgramTypeDescriptor]
ON [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] ([PKProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationPKProgramTypeSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationTruancySet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationTruancySet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationTruancySet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationTruancySet_TruancyDescriptor] FOREIGN KEY ([TruancyDescriptorId])
REFERENCES [tx].[TruancyDescriptor] ([TruancyDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationTruancySet_TruancyDescriptor]
ON [tx].[StudentEducationOrganizationAssociationTruancySet] ([TruancyDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationUnaccompaniedYouthSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationUnaccompaniedYouthSet_UnaccompaniedYouthDescriptor] FOREIGN KEY ([UnaccompaniedYouthDescriptorId])
REFERENCES [tx].[UnaccompaniedYouthDescriptor] ([UnaccompaniedYouthDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationUnaccompaniedYouthSet_UnaccompaniedYouthDescriptor]
ON [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] ([UnaccompaniedYouthDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet_UnschooledAsyleeRefugeeDescriptor] FOREIGN KEY ([UnschooledAsyleeRefugeeDescriptorId])
REFERENCES [tx].[UnschooledAsyleeRefugeeDescriptor] ([UnschooledAsyleeRefugeeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet_UnschooledAsyleeRefugeeDescriptor]
ON [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] ([UnschooledAsyleeRefugeeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentExtension] WITH CHECK ADD CONSTRAINT [FK_StudentExtension_AsOfStatusLastDayEnrollmentDescriptor] FOREIGN KEY ([AsOfStatusLastDayEnrollmentDescriptorId])
REFERENCES [tx].[AsOfStatusLastDayEnrollmentDescriptor] ([AsOfStatusLastDayEnrollmentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentExtension_AsOfStatusLastDayEnrollmentDescriptor]
ON [tx].[StudentExtension] ([AsOfStatusLastDayEnrollmentDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentExtension] WITH CHECK ADD CONSTRAINT [FK_StudentExtension_AsOfStatusLastFridayOctoberDescriptor] FOREIGN KEY ([AsOfStatusLastFridayOctoberDescriptorId])
REFERENCES [tx].[AsOfStatusLastFridayOctoberDescriptor] ([AsOfStatusLastFridayOctoberDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentExtension_AsOfStatusLastFridayOctoberDescriptor]
ON [tx].[StudentExtension] ([AsOfStatusLastFridayOctoberDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentExtension] WITH CHECK ADD CONSTRAINT [FK_StudentExtension_GenerationCodeDescriptor] FOREIGN KEY ([GenerationCodeDescriptorId])
REFERENCES [tx].[GenerationCodeDescriptor] ([GenerationCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentExtension_GenerationCodeDescriptor]
ON [tx].[StudentExtension] ([GenerationCodeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentExtension] WITH CHECK ADD CONSTRAINT [FK_StudentExtension_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationParentalPermissionSet_ParentalPermissionDescriptor] FOREIGN KEY ([ParentalPermissionDescriptorId])
REFERENCES [tx].[ParentalPermissionDescriptor] ([ParentalPermissionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentLanguageInstructionProgramAssociationParentalPermissionSet_ParentalPermissionDescriptor]
ON [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] ([ParentalPermissionDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationParentalPermissionSet_StudentLanguageInstructionProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentLanguageInstructionProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentNonEnrolledStudentUILActivity] WITH CHECK ADD CONSTRAINT [FK_StudentNonEnrolledStudentUILActivity_NonEnrolledStudentUILActivityDescriptor] FOREIGN KEY ([NonEnrolledStudentUILActivityDescriptorId])
REFERENCES [tx].[NonEnrolledStudentUILActivityDescriptor] ([NonEnrolledStudentUILActivityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentNonEnrolledStudentUILActivity_NonEnrolledStudentUILActivityDescriptor]
ON [tx].[StudentNonEnrolledStudentUILActivity] ([NonEnrolledStudentUILActivityDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentNonEnrolledStudentUILActivity] WITH CHECK ADD CONSTRAINT [FK_StudentNonEnrolledStudentUILActivity_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentProgramAttendanceEventExtension] WITH CHECK ADD CONSTRAINT [FK_StudentProgramAttendanceEventExtension_InstructionalSettingDescriptor] FOREIGN KEY ([InstructionalSettingDescriptorId])
REFERENCES [tx].[InstructionalSettingDescriptor] ([InstructionalSettingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentProgramAttendanceEventExtension_InstructionalSettingDescriptor]
ON [tx].[StudentProgramAttendanceEventExtension] ([InstructionalSettingDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentProgramAttendanceEventExtension] WITH CHECK ADD CONSTRAINT [FK_StudentProgramAttendanceEventExtension_StudentProgramAttendanceEvent] FOREIGN KEY ([AttendanceEventCategoryDescriptorId], [EducationOrganizationId], [EventDate], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentProgramAttendanceEvent] ([AttendanceEventCategoryDescriptorId], [EducationOrganizationId], [EventDate], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_ADAEligibilityDescriptor] FOREIGN KEY ([ADAEligibilityDescriptorId])
REFERENCES [tx].[ADAEligibilityDescriptor] ([ADAEligibilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationExtension_ADAEligibilityDescriptor]
ON [tx].[StudentSchoolAssociationExtension] ([ADAEligibilityDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_EnrollmentTrackingVerificationDescriptor] FOREIGN KEY ([EnrollmentTrackingVerificationDescriptorId])
REFERENCES [tx].[EnrollmentTrackingVerificationDescriptor] ([EnrollmentTrackingVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationExtension_EnrollmentTrackingVerificationDescriptor]
ON [tx].[StudentSchoolAssociationExtension] ([EnrollmentTrackingVerificationDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_StudentAttributionDescriptor] FOREIGN KEY ([StudentAttributionDescriptorId])
REFERENCES [tx].[StudentAttributionDescriptor] ([StudentAttributionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationExtension_StudentAttributionDescriptor]
ON [tx].[StudentSchoolAssociationExtension] ([StudentAttributionDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_StudentSchoolAssociation] FOREIGN KEY ([EntryDate], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentSchoolAssociation] ([EntryDate], [SchoolId], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [tx].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationAssessment] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationAssessment_AssessmentResultsObtainedDescriptor] FOREIGN KEY ([AssessmentResultsObtainedDescriptorId])
REFERENCES [tx].[AssessmentResultsObtainedDescriptor] ([AssessmentResultsObtainedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationAssessment_AssessmentResultsObtainedDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationAssessment] ([AssessmentResultsObtainedDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationAssessment] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationAssessment_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationAssessment] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationAssessment_ToolOrAssessmentUsedDescriptor] FOREIGN KEY ([ToolOrAssessmentUsedDescriptorId])
REFERENCES [tx].[ToolOrAssessmentUsedDescriptor] ([ToolOrAssessmentUsedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationAssessment_ToolOrAssessmentUsedDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationAssessment] ([ToolOrAssessmentUsedDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisabilitySet_StudentSpecialEducationProgramAssociationDisability] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [DisabilityDescriptorId])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociationDisability] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [DisabilityDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_PreferredHomeCommunicationMethodDescriptor] FOREIGN KEY ([PreferredHomeCommunicationMethodDescriptorId])
REFERENCES [tx].[PreferredHomeCommunicationMethodDescriptor] ([PreferredHomeCommunicationMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_PreferredHomeCommunicationMethodDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationExtension] ([PreferredHomeCommunicationMethodDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationHearingAmplification_HearingAmplificationAccessDescriptor] FOREIGN KEY ([HearingAmplificationAccessDescriptorId])
REFERENCES [tx].[HearingAmplificationAccessDescriptor] ([HearingAmplificationAccessDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationHearingAmplification_HearingAmplificationAccessDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] ([HearingAmplificationAccessDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationHearingAmplification_HearingAmplificationDailyUseDescriptor] FOREIGN KEY ([HearingAmplificationDailyUseDescriptorId])
REFERENCES [tx].[HearingAmplificationDailyUseDescriptor] ([HearingAmplificationDailyUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationHearingAmplification_HearingAmplificationDailyUseDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] ([HearingAmplificationDailyUseDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationHearingAmplification_HearingAmplificationTypeDescriptor] FOREIGN KEY ([HearingAmplificationTypeDescriptorId])
REFERENCES [tx].[HearingAmplificationTypeDescriptor] ([HearingAmplificationTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationHearingAmplification_HearingAmplificationTypeDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] ([HearingAmplificationTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationHearingAmplification_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationInstructionalSettingSet] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationInstructionalSettingSet_InstructionalSettingDescriptor] FOREIGN KEY ([InstructionalSettingDescriptorId])
REFERENCES [tx].[InstructionalSettingDescriptor] ([InstructionalSettingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationInstructionalSettingSet_InstructionalSettingDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationInstructionalSettingSet] ([InstructionalSettingDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationInstructionalSettingSet] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationInstructionalSettingSet_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationLanguageAcquisition_FrequencyOfServicesDescriptor] FOREIGN KEY ([FrequencyOfServicesDescriptorId])
REFERENCES [tx].[FrequencyOfServicesDescriptor] ([FrequencyOfServicesDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationLanguageAcquisition_FrequencyOfServicesDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] ([FrequencyOfServicesDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationLanguageAcquisition_HoursSpentReceivingServicesDescriptor] FOREIGN KEY ([HoursSpentReceivingServicesDescriptorId])
REFERENCES [tx].[HoursSpentReceivingServicesDescriptor] ([HoursSpentReceivingServicesDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationLanguageAcquisition_HoursSpentReceivingServicesDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] ([HoursSpentReceivingServicesDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationLanguageAcquisition_LangAcqServicesProvidedDescriptor] FOREIGN KEY ([LangAcqServicesProvidedDescriptorId])
REFERENCES [tx].[LangAcqServicesProvidedDescriptor] ([LangAcqServicesProvidedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationLanguageAcquisition_LangAcqServicesProvidedDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] ([LangAcqServicesProvidedDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationLanguageAcquisition_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociationStudentResFacAssocSet] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociationStudentResFacAssocSet_StudentSpecialEducationPr] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [DateEnteredRF], [ResidentialFacilityId])
REFERENCES [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI], [DateEnteredRF], [ResidentialFacilityId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_ChildCountFundingDescriptor] FOREIGN KEY ([ChildCountFundingDescriptorId])
REFERENCES [tx].[ChildCountFundingDescriptor] ([ChildCountFundingDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_ChildCountFundingDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] ([ChildCountFundingDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_PPCDServiceLocationDescriptor] FOREIGN KEY ([PPCDServiceLocationDescriptorId])
REFERENCES [tx].[PPCDServiceLocationDescriptor] ([PPCDServiceLocationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_PPCDServiceLocationDescriptor]
ON [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] ([PPCDServiceLocationDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor] FOREIGN KEY ([EligibilityDelayReasonDescriptorId])
REFERENCES [tx].[EligibilityDelayReasonDescriptor] ([EligibilityDelayReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_EligibilityDelayReasonDescriptor]
ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] ([EligibilityDelayReasonDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor] FOREIGN KEY ([EvaluationDelayReasonDescriptorId])
REFERENCES [tx].[EvaluationDelayReasonDescriptor] ([EvaluationDelayReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_EvaluationDelayReasonDescriptor]
ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] ([EvaluationDelayReasonDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_Program]
ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] ([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramEligibilityAssociation_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramEligibilityAssociation_Student]
ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] ([StudentUSI] ASC)
GO

ALTER TABLE [tx].[StudentTitleIPartAProgramAssociationSet] WITH CHECK ADD CONSTRAINT [FK_StudentTitleIPartAProgramAssociationSet_StudentTitleIPartAProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentTitleIPartAProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[StudentTitleIPartAProgramAssociationSet] WITH CHECK ADD CONSTRAINT [FK_StudentTitleIPartAProgramAssociationSet_TitleIPartAParticipantDescriptor] FOREIGN KEY ([TitleIPartAParticipantDescriptorId])
REFERENCES [edfi].[TitleIPartAParticipantDescriptor] ([TitleIPartAParticipantDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentTitleIPartAProgramAssociationSet_TitleIPartAParticipantDescriptor]
ON [tx].[StudentTitleIPartAProgramAssociationSet] ([TitleIPartAParticipantDescriptorId] ASC)
GO

ALTER TABLE [tx].[TeacherIncentiveAllotmentDesignationDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherIncentiveAllotmentDesignationDescriptor_Descriptor] FOREIGN KEY ([TeacherIncentiveAllotmentDesignationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] WITH CHECK ADD CONSTRAINT [FK_TexasFirstEarlyHSCompletionProgramDescriptor_Descriptor] FOREIGN KEY ([TexasFirstEarlyHSCompletionProgramDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[TitleOfAssessmentDescriptor] WITH CHECK ADD CONSTRAINT [FK_TitleOfAssessmentDescriptor_Descriptor] FOREIGN KEY ([TitleOfAssessmentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[ToolOrAssessmentUsedDescriptor] WITH CHECK ADD CONSTRAINT [FK_ToolOrAssessmentUsedDescriptor_Descriptor] FOREIGN KEY ([ToolOrAssessmentUsedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[TruancyDescriptor] WITH CHECK ADD CONSTRAINT [FK_TruancyDescriptor_Descriptor] FOREIGN KEY ([TruancyDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[UnaccompaniedYouthDescriptor] WITH CHECK ADD CONSTRAINT [FK_UnaccompaniedYouthDescriptor_Descriptor] FOREIGN KEY ([UnaccompaniedYouthDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [tx].[UnschooledAsyleeRefugeeDescriptor] WITH CHECK ADD CONSTRAINT [FK_UnschooledAsyleeRefugeeDescriptor_Descriptor] FOREIGN KEY ([UnschooledAsyleeRefugeeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

