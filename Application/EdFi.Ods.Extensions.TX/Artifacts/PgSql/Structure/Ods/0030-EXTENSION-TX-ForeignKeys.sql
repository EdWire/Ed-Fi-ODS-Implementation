ALTER TABLE tx.ActualExt ADD CONSTRAINT FK_e3a1b1_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_e3a1b1_EducationOrganization
ON tx.ActualExt (EducationOrganizationId ASC);

ALTER TABLE tx.ActualExt ADD CONSTRAINT FK_e3a1b1_FunctionDescriptor FOREIGN KEY (FunctionDescriptorId)
REFERENCES tx.FunctionDescriptor (FunctionDescriptorId)
;

CREATE INDEX FK_e3a1b1_FunctionDescriptor
ON tx.ActualExt (FunctionDescriptorId ASC);

ALTER TABLE tx.ActualExt ADD CONSTRAINT FK_e3a1b1_FundDescriptor FOREIGN KEY (FundDescriptorId)
REFERENCES tx.FundDescriptor (FundDescriptorId)
;

CREATE INDEX FK_e3a1b1_FundDescriptor
ON tx.ActualExt (FundDescriptorId ASC);

ALTER TABLE tx.ActualExt ADD CONSTRAINT FK_e3a1b1_ObjectDescriptor FOREIGN KEY (ObjectDescriptorId)
REFERENCES tx.ObjectDescriptor (ObjectDescriptorId)
;

CREATE INDEX FK_e3a1b1_ObjectDescriptor
ON tx.ActualExt (ObjectDescriptorId ASC);

ALTER TABLE tx.ActualExt ADD CONSTRAINT FK_e3a1b1_ProgramIntentDescriptor FOREIGN KEY (ProgramIntentDescriptorId)
REFERENCES tx.ProgramIntentDescriptor (ProgramIntentDescriptorId)
;

CREATE INDEX FK_e3a1b1_ProgramIntentDescriptor
ON tx.ActualExt (ProgramIntentDescriptorId ASC);

ALTER TABLE tx.ADAEligibilityDescriptor ADD CONSTRAINT FK_30a385_Descriptor FOREIGN KEY (ADAEligibilityDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ApiOperationTypeDescriptor ADD CONSTRAINT FK_354a01_Descriptor FOREIGN KEY (ApiOperationTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ApplicationTypeDescriptor ADD CONSTRAINT FK_431e6e_Descriptor FOREIGN KEY (ApplicationTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ArmedServicesVocAptBatteryDescriptor ADD CONSTRAINT FK_0fe69e_Descriptor FOREIGN KEY (ArmedServicesVocAptBatteryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.AsOfStatusLastDayEnrollmentDescriptor ADD CONSTRAINT FK_9546f9_Descriptor FOREIGN KEY (AsOfStatusLastDayEnrollmentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.AsOfStatusLastFridayOctoberDescriptor ADD CONSTRAINT FK_6abcc4_Descriptor FOREIGN KEY (AsOfStatusLastFridayOctoberDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.AssessmentExtension ADD CONSTRAINT FK_75a008_Assessment FOREIGN KEY (AssessmentIdentifier, Namespace)
REFERENCES edfi.Assessment (AssessmentIdentifier, Namespace)
ON DELETE CASCADE
;

ALTER TABLE tx.AssessmentExtension ADD CONSTRAINT FK_75a008_ReportAssessmentTypeDescriptor FOREIGN KEY (ReportAssessmentTypeDescriptorId)
REFERENCES tx.ReportAssessmentTypeDescriptor (ReportAssessmentTypeDescriptorId)
;

CREATE INDEX FK_75a008_ReportAssessmentTypeDescriptor
ON tx.AssessmentExtension (ReportAssessmentTypeDescriptorId ASC);

ALTER TABLE tx.AssessmentExtension ADD CONSTRAINT FK_75a008_TitleOfAssessmentDescriptor FOREIGN KEY (TitleOfAssessmentDescriptorId)
REFERENCES tx.TitleOfAssessmentDescriptor (TitleOfAssessmentDescriptorId)
;

CREATE INDEX FK_75a008_TitleOfAssessmentDescriptor
ON tx.AssessmentExtension (TitleOfAssessmentDescriptorId ASC);

ALTER TABLE tx.AssessmentResultsObtainedDescriptor ADD CONSTRAINT FK_71bf40_Descriptor FOREIGN KEY (AssessmentResultsObtainedDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.AuxiliaryRoleIdDescriptor ADD CONSTRAINT FK_a387fa_Descriptor FOREIGN KEY (AuxiliaryRoleIdDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.BasicReportingPeriodAttendance ADD CONSTRAINT FK_e8a05a_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_e8a05a_GradeLevelDescriptor
ON tx.BasicReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.BasicReportingPeriodAttendance ADD CONSTRAINT FK_e8a05a_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_e8a05a_ReportingPeriodDescriptor
ON tx.BasicReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.BasicReportingPeriodAttendance ADD CONSTRAINT FK_e8a05a_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_e8a05a_School
ON tx.BasicReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.BasicReportingPeriodAttendance ADD CONSTRAINT FK_e8a05a_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_e8a05a_Student
ON tx.BasicReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.BilingualESLFundingDescriptor ADD CONSTRAINT FK_dd890a_Descriptor FOREIGN KEY (BilingualESLFundingDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_017565_BilingualESLFundingDescriptor FOREIGN KEY (BilingualESLFundingDescriptorId)
REFERENCES tx.BilingualESLFundingDescriptor (BilingualESLFundingDescriptorId)
;

CREATE INDEX FK_017565_BilingualESLFundingDescriptor
ON tx.BilingualESLProgramReportingPeriodAttendance (BilingualESLFundingDescriptorId ASC);

ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_017565_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_017565_GradeLevelDescriptor
ON tx.BilingualESLProgramReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_017565_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_017565_ReportingPeriodDescriptor
ON tx.BilingualESLProgramReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_017565_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_017565_School
ON tx.BilingualESLProgramReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_017565_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_017565_Student
ON tx.BilingualESLProgramReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.BudgetExt ADD CONSTRAINT FK_1c17d1_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_1c17d1_EducationOrganization
ON tx.BudgetExt (EducationOrganizationId ASC);

ALTER TABLE tx.BudgetExt ADD CONSTRAINT FK_1c17d1_FunctionDescriptor FOREIGN KEY (FunctionDescriptorId)
REFERENCES tx.FunctionDescriptor (FunctionDescriptorId)
;

CREATE INDEX FK_1c17d1_FunctionDescriptor
ON tx.BudgetExt (FunctionDescriptorId ASC);

ALTER TABLE tx.BudgetExt ADD CONSTRAINT FK_1c17d1_FundDescriptor FOREIGN KEY (FundDescriptorId)
REFERENCES tx.FundDescriptor (FundDescriptorId)
;

CREATE INDEX FK_1c17d1_FundDescriptor
ON tx.BudgetExt (FundDescriptorId ASC);

ALTER TABLE tx.BudgetExt ADD CONSTRAINT FK_1c17d1_ObjectDescriptor FOREIGN KEY (ObjectDescriptorId)
REFERENCES tx.ObjectDescriptor (ObjectDescriptorId)
;

CREATE INDEX FK_1c17d1_ObjectDescriptor
ON tx.BudgetExt (ObjectDescriptorId ASC);

ALTER TABLE tx.BudgetExt ADD CONSTRAINT FK_1c17d1_ProgramIntentDescriptor FOREIGN KEY (ProgramIntentDescriptorId)
REFERENCES tx.ProgramIntentDescriptor (ProgramIntentDescriptorId)
;

CREATE INDEX FK_1c17d1_ProgramIntentDescriptor
ON tx.BudgetExt (ProgramIntentDescriptorId ASC);

ALTER TABLE tx.CalendarDateExtension ADD CONSTRAINT FK_1a442d_CalendarDate FOREIGN KEY (CalendarCode, Date, SchoolId, SchoolYear)
REFERENCES edfi.CalendarDate (CalendarCode, Date, SchoolId, SchoolYear)
ON DELETE CASCADE
;

ALTER TABLE tx.CalendarDateExtension ADD CONSTRAINT FK_1a442d_CalendarWaiverEventTypeDescriptor FOREIGN KEY (CalendarWaiverEventTypeDescriptorId)
REFERENCES tx.CalendarWaiverEventTypeDescriptor (CalendarWaiverEventTypeDescriptorId)
;

CREATE INDEX FK_1a442d_CalendarWaiverEventTypeDescriptor
ON tx.CalendarDateExtension (CalendarWaiverEventTypeDescriptorId ASC);

ALTER TABLE tx.CalendarWaiverEventTypeDescriptor ADD CONSTRAINT FK_67c32c_Descriptor FOREIGN KEY (CalendarWaiverEventTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.CampusEnrollmentTypeDescriptor ADD CONSTRAINT FK_267eea_Descriptor FOREIGN KEY (CampusEnrollmentTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ChildCountFundingDescriptor ADD CONSTRAINT FK_d43015_Descriptor FOREIGN KEY (ChildCountFundingDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ClassTypeDescriptor ADD CONSTRAINT FK_b9ac1a_Descriptor FOREIGN KEY (ClassTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ContractedInstructionalStaffFTEExt ADD CONSTRAINT FK_c6c091_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_c6c091_EducationOrganization
ON tx.ContractedInstructionalStaffFTEExt (EducationOrganizationId ASC);

ALTER TABLE tx.ContractedInstructionalStaffFTEExt ADD CONSTRAINT FK_c6c091_ProgramIntentDescriptor FOREIGN KEY (ProgramIntentDescriptorId)
REFERENCES tx.ProgramIntentDescriptor (ProgramIntentDescriptorId)
;

CREATE INDEX FK_c6c091_ProgramIntentDescriptor
ON tx.ContractedInstructionalStaffFTEExt (ProgramIntentDescriptorId ASC);

ALTER TABLE tx.ContractedInstructionalStaffFTEExt ADD CONSTRAINT FK_c6c091_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_c6c091_School
ON tx.ContractedInstructionalStaffFTEExt (SchoolId ASC);

ALTER TABLE tx.CourseSequenceDescriptor ADD CONSTRAINT FK_caa0d1_Descriptor FOREIGN KEY (CourseSequenceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.CourseTranscriptExtension ADD CONSTRAINT FK_440c5c_CourseTranscript FOREIGN KEY (CourseAttemptResultDescriptorId, CourseCode, CourseEducationOrganizationId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
REFERENCES edfi.CourseTranscript (CourseAttemptResultDescriptorId, CourseCode, CourseEducationOrganizationId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.CrisisEventDescriptor ADD CONSTRAINT FK_92ffef_Descriptor FOREIGN KEY (CrisisEventDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.CTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_61641a_CTEServiceIdDescriptor FOREIGN KEY (CTEServiceIdDescriptorId)
REFERENCES tx.CTEServiceIdDescriptor (CTEServiceIdDescriptorId)
;

CREATE INDEX FK_61641a_CTEServiceIdDescriptor
ON tx.CTEProgramReportingPeriodAttendance (CTEServiceIdDescriptorId ASC);

ALTER TABLE tx.CTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_61641a_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_61641a_GradeLevelDescriptor
ON tx.CTEProgramReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.CTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_61641a_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_61641a_ReportingPeriodDescriptor
ON tx.CTEProgramReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.CTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_61641a_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_61641a_School
ON tx.CTEProgramReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.CTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_61641a_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_61641a_Student
ON tx.CTEProgramReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.CTEServiceIdDescriptor ADD CONSTRAINT FK_80f1cf_Descriptor FOREIGN KEY (CTEServiceIdDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.DescriptorMappingHistory ADD CONSTRAINT FK_18b242_ApiOperationTypeDescriptor FOREIGN KEY (ApiOperationTypeDescriptorId)
REFERENCES tx.ApiOperationTypeDescriptor (ApiOperationTypeDescriptorId)
;

CREATE INDEX FK_18b242_ApiOperationTypeDescriptor
ON tx.DescriptorMappingHistory (ApiOperationTypeDescriptorId ASC);

ALTER TABLE tx.DescriptorMappingHistory ADD CONSTRAINT FK_18b242_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_18b242_EducationOrganization
ON tx.DescriptorMappingHistory (EducationOrganizationId ASC);

ALTER TABLE tx.DescriptorMappingHistory ADD CONSTRAINT FK_18b242_SchoolYearType FOREIGN KEY (SchoolYear)
REFERENCES edfi.SchoolYearType (SchoolYear)
;

CREATE INDEX FK_18b242_SchoolYearType
ON tx.DescriptorMappingHistory (SchoolYear ASC);

ALTER TABLE tx.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineAction FOREIGN KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
REFERENCES edfi.DisciplineAction (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.DisciplineIncidentExtension ADD CONSTRAINT FK_cde8b8_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
ON DELETE CASCADE
;

ALTER TABLE tx.DyslexiaRiskDescriptor ADD CONSTRAINT FK_c7e986_Descriptor FOREIGN KEY (DyslexiaRiskDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.DyslexiaScreeningExceptionReasonDescriptor ADD CONSTRAINT FK_346a35_Descriptor FOREIGN KEY (DyslexiaScreeningExceptionReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.DyslexiaServicesDescriptor ADD CONSTRAINT FK_657245_Descriptor FOREIGN KEY (DyslexiaServicesDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EarlyReadingIndicatorDescriptor ADD CONSTRAINT FK_32b0d4_Descriptor FOREIGN KEY (EarlyReadingIndicatorDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EconomicDisadvantageDescriptor ADD CONSTRAINT FK_143b51_Descriptor FOREIGN KEY (EconomicDisadvantageDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EligibilityDelayReasonDescriptor ADD CONSTRAINT FK_be0937_Descriptor FOREIGN KEY (EligibilityDelayReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ELOActivityDescriptor ADD CONSTRAINT FK_e5d744_Descriptor FOREIGN KEY (ELOActivityDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ELOTypeDescriptor ADD CONSTRAINT FK_4b20b3_Descriptor FOREIGN KEY (ELOTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EmergentBilingualIndicatorDescriptor ADD CONSTRAINT FK_531d85_Descriptor FOREIGN KEY (EmergentBilingualIndicatorDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EndorsementCompletedDescriptor ADD CONSTRAINT FK_4f6fa2_Descriptor FOREIGN KEY (EndorsementCompletedDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EndorsementPursuingDescriptor ADD CONSTRAINT FK_824701_Descriptor FOREIGN KEY (EndorsementPursuingDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EnrollmentTrackingVerificationDescriptor ADD CONSTRAINT FK_b82747_Descriptor FOREIGN KEY (EnrollmentTrackingVerificationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.EvaluationDelayReasonDescriptor ADD CONSTRAINT FK_db2c46_Descriptor FOREIGN KEY (EvaluationDelayReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ADD CONSTRAINT FK_25d61d_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_25d61d_GradeLevelDescriptor
ON tx.ExtendedSchoolYearServicesAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ADD CONSTRAINT FK_25d61d_InstructionalSettingDescriptor FOREIGN KEY (FirstInstructionalSettingDescriptorId)
REFERENCES tx.InstructionalSettingDescriptor (InstructionalSettingDescriptorId)
;

CREATE INDEX FK_25d61d_InstructionalSettingDescriptor
ON tx.ExtendedSchoolYearServicesAttendance (FirstInstructionalSettingDescriptorId ASC);

ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ADD CONSTRAINT FK_25d61d_InstructionalSettingDescriptor1 FOREIGN KEY (SecondInstructionalSettingDescriptorId)
REFERENCES tx.InstructionalSettingDescriptor (InstructionalSettingDescriptorId)
;

CREATE INDEX FK_25d61d_InstructionalSettingDescriptor1
ON tx.ExtendedSchoolYearServicesAttendance (SecondInstructionalSettingDescriptorId ASC);

ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ADD CONSTRAINT FK_25d61d_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_25d61d_School
ON tx.ExtendedSchoolYearServicesAttendance (SchoolId ASC);

ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ADD CONSTRAINT FK_25d61d_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_25d61d_Student
ON tx.ExtendedSchoolYearServicesAttendance (StudentUSI ASC);

ALTER TABLE tx.FinancialAidApplicationDescriptor ADD CONSTRAINT FK_8da767_Descriptor FOREIGN KEY (FinancialAidApplicationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.FlexAttendanceProgramDescriptor ADD CONSTRAINT FK_49bd90_Descriptor FOREIGN KEY (FlexAttendanceProgramDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_2f01d3_BilingualESLFundingDescriptor FOREIGN KEY (BilingualESLFundingDescriptorId)
REFERENCES tx.BilingualESLFundingDescriptor (BilingualESLFundingDescriptorId)
;

CREATE INDEX FK_2f01d3_BilingualESLFundingDescriptor
ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance (BilingualESLFundingDescriptorId ASC);

ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_2f01d3_FlexAttendanceProgramDescriptor FOREIGN KEY (FlexAttendanceProgramDescriptorId)
REFERENCES tx.FlexAttendanceProgramDescriptor (FlexAttendanceProgramDescriptorId)
;

CREATE INDEX FK_2f01d3_FlexAttendanceProgramDescriptor
ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance (FlexAttendanceProgramDescriptorId ASC);

ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_2f01d3_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_2f01d3_GradeLevelDescriptor
ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_2f01d3_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_2f01d3_ReportingPeriodDescriptor
ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_2f01d3_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_2f01d3_School
ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD CONSTRAINT FK_2f01d3_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_2f01d3_Student
ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_7fbeac_FlexAttendanceProgramDescriptor FOREIGN KEY (FlexAttendanceProgramDescriptorId)
REFERENCES tx.FlexAttendanceProgramDescriptor (FlexAttendanceProgramDescriptorId)
;

CREATE INDEX FK_7fbeac_FlexAttendanceProgramDescriptor
ON tx.FlexibleCTEProgramReportingPeriodAttendance (FlexAttendanceProgramDescriptorId ASC);

ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_7fbeac_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_7fbeac_GradeLevelDescriptor
ON tx.FlexibleCTEProgramReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_7fbeac_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_7fbeac_ReportingPeriodDescriptor
ON tx.FlexibleCTEProgramReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_7fbeac_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_7fbeac_School
ON tx.FlexibleCTEProgramReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ADD CONSTRAINT FK_7fbeac_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_7fbeac_Student
ON tx.FlexibleCTEProgramReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ADD CONSTRAINT FK_5d87d6_FlexAttendanceProgramDescriptor FOREIGN KEY (FlexAttendanceProgramDescriptorId)
REFERENCES tx.FlexAttendanceProgramDescriptor (FlexAttendanceProgramDescriptorId)
;

CREATE INDEX FK_5d87d6_FlexAttendanceProgramDescriptor
ON tx.FlexibleRegularProgramReportingPeriodAttendance (FlexAttendanceProgramDescriptorId ASC);

ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ADD CONSTRAINT FK_5d87d6_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_5d87d6_GradeLevelDescriptor
ON tx.FlexibleRegularProgramReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ADD CONSTRAINT FK_5d87d6_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_5d87d6_ReportingPeriodDescriptor
ON tx.FlexibleRegularProgramReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ADD CONSTRAINT FK_5d87d6_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_5d87d6_School
ON tx.FlexibleRegularProgramReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ADD CONSTRAINT FK_5d87d6_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_5d87d6_Student
ON tx.FlexibleRegularProgramReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_ec6ab0_FlexAttendanceProgramDescriptor FOREIGN KEY (FlexAttendanceProgramDescriptorId)
REFERENCES tx.FlexAttendanceProgramDescriptor (FlexAttendanceProgramDescriptorId)
;

CREATE INDEX FK_ec6ab0_FlexAttendanceProgramDescriptor
ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (FlexAttendanceProgramDescriptorId ASC);

ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_ec6ab0_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_ec6ab0_GradeLevelDescriptor
ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_ec6ab0_InstructionalSettingDescriptor FOREIGN KEY (InstructionalSettingDescriptorId)
REFERENCES tx.InstructionalSettingDescriptor (InstructionalSettingDescriptorId)
;

CREATE INDEX FK_ec6ab0_InstructionalSettingDescriptor
ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (InstructionalSettingDescriptorId ASC);

ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_ec6ab0_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_ec6ab0_ReportingPeriodDescriptor
ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_ec6ab0_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_ec6ab0_School
ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_ec6ab0_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_ec6ab0_Student
ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.FosterCareTypeDescriptor ADD CONSTRAINT FK_37638d_Descriptor FOREIGN KEY (FosterCareTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.FrequencyOfServicesDescriptor ADD CONSTRAINT FK_5bb1c4_Descriptor FOREIGN KEY (FrequencyOfServicesDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.FunctionDescriptor ADD CONSTRAINT FK_8397f0_Descriptor FOREIGN KEY (FunctionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.FundDescriptor ADD CONSTRAINT FK_f23409_Descriptor FOREIGN KEY (FundDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.GenerationCodeDescriptor ADD CONSTRAINT FK_de43bd_Descriptor FOREIGN KEY (GenerationCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.GiftedTalentedProgramDescriptor ADD CONSTRAINT FK_df2027_Descriptor FOREIGN KEY (GiftedTalentedProgramDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.HearingAmplificationAccessDescriptor ADD CONSTRAINT FK_b259d5_Descriptor FOREIGN KEY (HearingAmplificationAccessDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.HearingAmplificationDailyUseDescriptor ADD CONSTRAINT FK_b313f5_Descriptor FOREIGN KEY (HearingAmplificationDailyUseDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.HearingAmplificationTypeDescriptor ADD CONSTRAINT FK_1dc881_Descriptor FOREIGN KEY (HearingAmplificationTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.HomelessStatusDescriptor ADD CONSTRAINT FK_edabb2_Descriptor FOREIGN KEY (HomelessStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.HoursSpentReceivingServicesDescriptor ADD CONSTRAINT FK_8a7f6a_Descriptor FOREIGN KEY (HoursSpentReceivingServicesDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.IBCVendorDescriptor ADD CONSTRAINT FK_3685a9_Descriptor FOREIGN KEY (IBCVendorDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.InstructionalSettingDescriptor ADD CONSTRAINT FK_d9876b_Descriptor FOREIGN KEY (InstructionalSettingDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.LangAcqServicesProvidedDescriptor ADD CONSTRAINT FK_45dbdd_Descriptor FOREIGN KEY (LangAcqServicesProvidedDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.LocalEducationAgencyExtension ADD CONSTRAINT FK_bf6aa4_ArmedServicesVocAptBatteryDescriptor FOREIGN KEY (ArmedServicesVocAptBatteryDescriptorId)
REFERENCES tx.ArmedServicesVocAptBatteryDescriptor (ArmedServicesVocAptBatteryDescriptorId)
;

CREATE INDEX FK_bf6aa4_ArmedServicesVocAptBatteryDescriptor
ON tx.LocalEducationAgencyExtension (ArmedServicesVocAptBatteryDescriptorId ASC);

ALTER TABLE tx.LocalEducationAgencyExtension ADD CONSTRAINT FK_bf6aa4_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
ON DELETE CASCADE
;

ALTER TABLE tx.LocalEducationAgencyExtension ADD CONSTRAINT FK_bf6aa4_PKProgramEvaluationTypeDescriptor FOREIGN KEY (PKProgramEvaluationTypeDescriptorId)
REFERENCES tx.PKProgramEvaluationTypeDescriptor (PKProgramEvaluationTypeDescriptorId)
;

CREATE INDEX FK_bf6aa4_PKProgramEvaluationTypeDescriptor
ON tx.LocalEducationAgencyExtension (PKProgramEvaluationTypeDescriptorId ASC);

ALTER TABLE tx.LocalEducationAgencyGiftedTalentedProgram ADD CONSTRAINT FK_d75cf1_GiftedTalentedProgramDescriptor FOREIGN KEY (GiftedTalentedProgramDescriptorId)
REFERENCES tx.GiftedTalentedProgramDescriptor (GiftedTalentedProgramDescriptorId)
;

CREATE INDEX FK_d75cf1_GiftedTalentedProgramDescriptor
ON tx.LocalEducationAgencyGiftedTalentedProgram (GiftedTalentedProgramDescriptorId ASC);

ALTER TABLE tx.LocalEducationAgencyGiftedTalentedProgram ADD CONSTRAINT FK_d75cf1_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
ON DELETE CASCADE
;

CREATE INDEX FK_d75cf1_LocalEducationAgency
ON tx.LocalEducationAgencyGiftedTalentedProgram (LocalEducationAgencyId ASC);

ALTER TABLE tx.LocalEducationAgencyProgramOfStudy ADD CONSTRAINT FK_e73931_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
ON DELETE CASCADE
;

CREATE INDEX FK_e73931_LocalEducationAgency
ON tx.LocalEducationAgencyProgramOfStudy (LocalEducationAgencyId ASC);

ALTER TABLE tx.LocalEducationAgencyProgramOfStudy ADD CONSTRAINT FK_e73931_ProgramOfStudyDescriptor FOREIGN KEY (ProgramOfStudyDescriptorId)
REFERENCES tx.ProgramOfStudyDescriptor (ProgramOfStudyDescriptorId)
;

CREATE INDEX FK_e73931_ProgramOfStudyDescriptor
ON tx.LocalEducationAgencyProgramOfStudy (ProgramOfStudyDescriptorId ASC);

ALTER TABLE tx.MilitaryConnectedStudentDescriptor ADD CONSTRAINT FK_ed0d8f_Descriptor FOREIGN KEY (MilitaryConnectedStudentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.NonCampusBasedInstructionDescriptor ADD CONSTRAINT FK_20c17b_Descriptor FOREIGN KEY (NonCampusBasedInstructionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.NSLPTypeDescriptor ADD CONSTRAINT FK_bbdb8c_Descriptor FOREIGN KEY (NSLPTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ObjectDescriptor ADD CONSTRAINT FK_bd38bc_Descriptor FOREIGN KEY (ObjectDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ParentalPermissionDescriptor ADD CONSTRAINT FK_2e2fcb_Descriptor FOREIGN KEY (ParentalPermissionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ParentExtension ADD CONSTRAINT FK_32099d_GenerationCodeDescriptor FOREIGN KEY (GenerationCodeDescriptorId)
REFERENCES tx.GenerationCodeDescriptor (GenerationCodeDescriptorId)
;

CREATE INDEX FK_32099d_GenerationCodeDescriptor
ON tx.ParentExtension (GenerationCodeDescriptorId ASC);

ALTER TABLE tx.ParentExtension ADD CONSTRAINT FK_32099d_Parent FOREIGN KEY (ParentUSI)
REFERENCES edfi.Parent (ParentUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.PayrollActivityDescriptor ADD CONSTRAINT FK_14baac_Descriptor FOREIGN KEY (PayrollActivityDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PayrollExt ADD CONSTRAINT FK_4c1df0_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_4c1df0_EducationOrganization
ON tx.PayrollExt (EducationOrganizationId ASC);

ALTER TABLE tx.PayrollExt ADD CONSTRAINT FK_4c1df0_FunctionDescriptor FOREIGN KEY (FunctionDescriptorId)
REFERENCES tx.FunctionDescriptor (FunctionDescriptorId)
;

CREATE INDEX FK_4c1df0_FunctionDescriptor
ON tx.PayrollExt (FunctionDescriptorId ASC);

ALTER TABLE tx.PayrollExt ADD CONSTRAINT FK_4c1df0_FundDescriptor FOREIGN KEY (FundDescriptorId)
REFERENCES tx.FundDescriptor (FundDescriptorId)
;

CREATE INDEX FK_4c1df0_FundDescriptor
ON tx.PayrollExt (FundDescriptorId ASC);

ALTER TABLE tx.PayrollExt ADD CONSTRAINT FK_4c1df0_ObjectDescriptor FOREIGN KEY (ObjectDescriptorId)
REFERENCES tx.ObjectDescriptor (ObjectDescriptorId)
;

CREATE INDEX FK_4c1df0_ObjectDescriptor
ON tx.PayrollExt (ObjectDescriptorId ASC);

ALTER TABLE tx.PayrollExt ADD CONSTRAINT FK_4c1df0_PayrollActivityDescriptor FOREIGN KEY (PayrollActivityDescriptorId)
REFERENCES tx.PayrollActivityDescriptor (PayrollActivityDescriptorId)
;

CREATE INDEX FK_4c1df0_PayrollActivityDescriptor
ON tx.PayrollExt (PayrollActivityDescriptorId ASC);

ALTER TABLE tx.PayrollExt ADD CONSTRAINT FK_4c1df0_ProgramIntentDescriptor FOREIGN KEY (ProgramIntentDescriptorId)
REFERENCES tx.ProgramIntentDescriptor (ProgramIntentDescriptorId)
;

CREATE INDEX FK_4c1df0_ProgramIntentDescriptor
ON tx.PayrollExt (ProgramIntentDescriptorId ASC);

ALTER TABLE tx.PayrollExt ADD CONSTRAINT FK_4c1df0_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_4c1df0_Staff
ON tx.PayrollExt (StaffUSI ASC);

ALTER TABLE tx.PKCurriculaDescriptor ADD CONSTRAINT FK_774b17_Descriptor FOREIGN KEY (PKCurriculaDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PKFundingSourceDescriptor ADD CONSTRAINT FK_7899e4_Descriptor FOREIGN KEY (PKFundingSourceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PKProgramEvaluationTypeDescriptor ADD CONSTRAINT FK_59c8e2_Descriptor FOREIGN KEY (PKProgramEvaluationTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PKProgramTypeDescriptor ADD CONSTRAINT FK_518704_Descriptor FOREIGN KEY (PKProgramTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PKSchoolTypeDescriptor ADD CONSTRAINT FK_397c9d_Descriptor FOREIGN KEY (PKSchoolTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PKStudentInstructionDescriptor ADD CONSTRAINT FK_9eeea5_Descriptor FOREIGN KEY (PKStudentInstructionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PKTeacherRequirementDescriptor ADD CONSTRAINT FK_9d024a_Descriptor FOREIGN KEY (PKTeacherRequirementDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PostSecondaryCertificationLicensureDescriptor ADD CONSTRAINT FK_aa9201_Descriptor FOREIGN KEY (PostSecondaryCertificationLicensureDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PostSecondaryCertLicensureResultDescriptor ADD CONSTRAINT FK_d604a7_Descriptor FOREIGN KEY (PostSecondaryCertLicensureResultDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PPCDServiceLocationDescriptor ADD CONSTRAINT FK_f2b293_Descriptor FOREIGN KEY (PPCDServiceLocationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PreferredHomeCommunicationMethodDescriptor ADD CONSTRAINT FK_694683_Descriptor FOREIGN KEY (PreferredHomeCommunicationMethodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_AsOfStatusLastFridayOctoberDescriptor FOREIGN KEY (AsOfStatusLastFridayOctoberDescriptorId)
REFERENCES tx.AsOfStatusLastFridayOctoberDescriptor (AsOfStatusLastFridayOctoberDescriptorId)
;

CREATE INDEX FK_51b088_AsOfStatusLastFridayOctoberDescriptor
ON tx.PriorYearLeaver (AsOfStatusLastFridayOctoberDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_CountryDescriptor FOREIGN KEY (BirthCountryDescriptorId)
REFERENCES edfi.CountryDescriptor (CountryDescriptorId)
;

CREATE INDEX FK_51b088_CountryDescriptor
ON tx.PriorYearLeaver (BirthCountryDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_EconomicDisadvantageDescriptor FOREIGN KEY (EconomicDisadvantageDescriptorId)
REFERENCES tx.EconomicDisadvantageDescriptor (EconomicDisadvantageDescriptorId)
;

CREATE INDEX FK_51b088_EconomicDisadvantageDescriptor
ON tx.PriorYearLeaver (EconomicDisadvantageDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_EmergentBilingualIndicatorDescriptor FOREIGN KEY (EmergentBilingualIndicatorDescriptorId)
REFERENCES tx.EmergentBilingualIndicatorDescriptor (EmergentBilingualIndicatorDescriptorId)
;

CREATE INDEX FK_51b088_EmergentBilingualIndicatorDescriptor
ON tx.PriorYearLeaver (EmergentBilingualIndicatorDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_ExitWithdrawTypeDescriptor FOREIGN KEY (ExitWithdrawTypeDescriptorId)
REFERENCES edfi.ExitWithdrawTypeDescriptor (ExitWithdrawTypeDescriptorId)
;

CREATE INDEX FK_51b088_ExitWithdrawTypeDescriptor
ON tx.PriorYearLeaver (ExitWithdrawTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_FinancialAidApplicationDescriptor FOREIGN KEY (FinancialAidApplicationDescriptorId)
REFERENCES tx.FinancialAidApplicationDescriptor (FinancialAidApplicationDescriptorId)
;

CREATE INDEX FK_51b088_FinancialAidApplicationDescriptor
ON tx.PriorYearLeaver (FinancialAidApplicationDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_FosterCareTypeDescriptor FOREIGN KEY (FosterCareTypeDescriptorId)
REFERENCES tx.FosterCareTypeDescriptor (FosterCareTypeDescriptorId)
;

CREATE INDEX FK_51b088_FosterCareTypeDescriptor
ON tx.PriorYearLeaver (FosterCareTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_GenerationCodeDescriptor FOREIGN KEY (GenerationCodeDescriptorId)
REFERENCES tx.GenerationCodeDescriptor (GenerationCodeDescriptorId)
;

CREATE INDEX FK_51b088_GenerationCodeDescriptor
ON tx.PriorYearLeaver (GenerationCodeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_51b088_GradeLevelDescriptor
ON tx.PriorYearLeaver (GradeLevelDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_HomelessStatusDescriptor FOREIGN KEY (HomelessStatusDescriptorId)
REFERENCES tx.HomelessStatusDescriptor (HomelessStatusDescriptorId)
;

CREATE INDEX FK_51b088_HomelessStatusDescriptor
ON tx.PriorYearLeaver (HomelessStatusDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_LanguageDescriptor FOREIGN KEY (LanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_51b088_LanguageDescriptor
ON tx.PriorYearLeaver (LanguageDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_LanguageInstructionProgramServiceDescriptor FOREIGN KEY (LanguageInstructionProgramServiceDescriptorId)
REFERENCES edfi.LanguageInstructionProgramServiceDescriptor (LanguageInstructionProgramServiceDescriptorId)
;

CREATE INDEX FK_51b088_LanguageInstructionProgramServiceDescriptor
ON tx.PriorYearLeaver (LanguageInstructionProgramServiceDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_LanguageUseDescriptor FOREIGN KEY (LanguageUseDescriptorId)
REFERENCES edfi.LanguageUseDescriptor (LanguageUseDescriptorId)
;

CREATE INDEX FK_51b088_LanguageUseDescriptor
ON tx.PriorYearLeaver (LanguageUseDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_MilitaryConnectedStudentDescriptor FOREIGN KEY (MilitaryConnectedStudentDescriptorId)
REFERENCES tx.MilitaryConnectedStudentDescriptor (MilitaryConnectedStudentDescriptorId)
;

CREATE INDEX FK_51b088_MilitaryConnectedStudentDescriptor
ON tx.PriorYearLeaver (MilitaryConnectedStudentDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_ParentalPermissionDescriptor FOREIGN KEY (ParentalPermissionDescriptorId)
REFERENCES tx.ParentalPermissionDescriptor (ParentalPermissionDescriptorId)
;

CREATE INDEX FK_51b088_ParentalPermissionDescriptor
ON tx.PriorYearLeaver (ParentalPermissionDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_51b088_School
ON tx.PriorYearLeaver (SchoolId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_SexDescriptor FOREIGN KEY (SexDescriptorId)
REFERENCES edfi.SexDescriptor (SexDescriptorId)
;

CREATE INDEX FK_51b088_SexDescriptor
ON tx.PriorYearLeaver (SexDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_SexDescriptor1 FOREIGN KEY (BirthSexDescriptorId)
REFERENCES edfi.SexDescriptor (SexDescriptorId)
;

CREATE INDEX FK_51b088_SexDescriptor1
ON tx.PriorYearLeaver (BirthSexDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_StateAbbreviationDescriptor FOREIGN KEY (BirthStateAbbreviationDescriptorId)
REFERENCES edfi.StateAbbreviationDescriptor (StateAbbreviationDescriptorId)
;

CREATE INDEX FK_51b088_StateAbbreviationDescriptor
ON tx.PriorYearLeaver (BirthStateAbbreviationDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaver ADD CONSTRAINT FK_51b088_TitleIPartAParticipantDescriptor FOREIGN KEY (TitleIPartAParticipantDescriptorId)
REFERENCES edfi.TitleIPartAParticipantDescriptor (TitleIPartAParticipantDescriptorId)
;

CREATE INDEX FK_51b088_TitleIPartAParticipantDescriptor
ON tx.PriorYearLeaver (TitleIPartAParticipantDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverAddress ADD CONSTRAINT FK_5bc904_AddressTypeDescriptor FOREIGN KEY (AddressTypeDescriptorId)
REFERENCES edfi.AddressTypeDescriptor (AddressTypeDescriptorId)
;

CREATE INDEX FK_5bc904_AddressTypeDescriptor
ON tx.PriorYearLeaverAddress (AddressTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverAddress ADD CONSTRAINT FK_5bc904_LocaleDescriptor FOREIGN KEY (LocaleDescriptorId)
REFERENCES edfi.LocaleDescriptor (LocaleDescriptorId)
;

CREATE INDEX FK_5bc904_LocaleDescriptor
ON tx.PriorYearLeaverAddress (LocaleDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverAddress ADD CONSTRAINT FK_5bc904_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

ALTER TABLE tx.PriorYearLeaverAddress ADD CONSTRAINT FK_5bc904_StateAbbreviationDescriptor FOREIGN KEY (StateAbbreviationDescriptorId)
REFERENCES edfi.StateAbbreviationDescriptor (StateAbbreviationDescriptorId)
;

CREATE INDEX FK_5bc904_StateAbbreviationDescriptor
ON tx.PriorYearLeaverAddress (StateAbbreviationDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverAddressPeriod ADD CONSTRAINT FK_350f84_PriorYearLeaverAddress FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaverAddress (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_350f84_PriorYearLeaverAddress
ON tx.PriorYearLeaverAddressPeriod (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverElectronicMail ADD CONSTRAINT FK_6e3dfd_ElectronicMailTypeDescriptor FOREIGN KEY (ElectronicMailTypeDescriptorId)
REFERENCES edfi.ElectronicMailTypeDescriptor (ElectronicMailTypeDescriptorId)
;

CREATE INDEX FK_6e3dfd_ElectronicMailTypeDescriptor
ON tx.PriorYearLeaverElectronicMail (ElectronicMailTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverElectronicMail ADD CONSTRAINT FK_6e3dfd_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_6e3dfd_PriorYearLeaver
ON tx.PriorYearLeaverElectronicMail (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverEndorsementCompleted ADD CONSTRAINT FK_c169a2_EndorsementCompletedDescriptor FOREIGN KEY (EndorsementCompletedDescriptorId)
REFERENCES tx.EndorsementCompletedDescriptor (EndorsementCompletedDescriptorId)
;

CREATE INDEX FK_c169a2_EndorsementCompletedDescriptor
ON tx.PriorYearLeaverEndorsementCompleted (EndorsementCompletedDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverEndorsementCompleted ADD CONSTRAINT FK_c169a2_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_c169a2_PriorYearLeaver
ON tx.PriorYearLeaverEndorsementCompleted (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverGraduationSet ADD CONSTRAINT FK_724ce1_AchievementCategoryDescriptor FOREIGN KEY (AchievementCategoryDescriptorId)
REFERENCES edfi.AchievementCategoryDescriptor (AchievementCategoryDescriptorId)
;

CREATE INDEX FK_724ce1_AchievementCategoryDescriptor
ON tx.PriorYearLeaverGraduationSet (AchievementCategoryDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverGraduationSet ADD CONSTRAINT FK_724ce1_DiplomaTypeDescriptor FOREIGN KEY (DiplomaTypeDescriptorId)
REFERENCES edfi.DiplomaTypeDescriptor (DiplomaTypeDescriptorId)
;

CREATE INDEX FK_724ce1_DiplomaTypeDescriptor
ON tx.PriorYearLeaverGraduationSet (DiplomaTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverGraduationSet ADD CONSTRAINT FK_724ce1_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

ALTER TABLE tx.PriorYearLeaverGraduationSet ADD CONSTRAINT FK_724ce1_TexasFirstEarlyHSCompletionProgramDescriptor FOREIGN KEY (TexasFirstEarlyHSCompletionProgramDescriptorId)
REFERENCES tx.TexasFirstEarlyHSCompletionProgramDescriptor (TexasFirstEarlyHSCompletionProgramDescriptorId)
;

CREATE INDEX FK_724ce1_TexasFirstEarlyHSCompletionProgramDescriptor
ON tx.PriorYearLeaverGraduationSet (TexasFirstEarlyHSCompletionProgramDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverIndustryBasedCertificationSet ADD CONSTRAINT FK_2afa39_IBCVendorDescriptor FOREIGN KEY (IBCVendorDescriptorId)
REFERENCES tx.IBCVendorDescriptor (IBCVendorDescriptorId)
;

CREATE INDEX FK_2afa39_IBCVendorDescriptor
ON tx.PriorYearLeaverIndustryBasedCertificationSet (IBCVendorDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverIndustryBasedCertificationSet ADD CONSTRAINT FK_2afa39_PostSecondaryCertificationLicensureDescriptor FOREIGN KEY (PostSecondaryCertificationLicensureDescriptorId)
REFERENCES tx.PostSecondaryCertificationLicensureDescriptor (PostSecondaryCertificationLicensureDescriptorId)
;

CREATE INDEX FK_2afa39_PostSecondaryCertificationLicensureDescriptor
ON tx.PriorYearLeaverIndustryBasedCertificationSet (PostSecondaryCertificationLicensureDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverIndustryBasedCertificationSet ADD CONSTRAINT FK_2afa39_PostSecondaryCertLicensureResultDescriptor FOREIGN KEY (PostSecondaryCertLicensureResultDescriptorId)
REFERENCES tx.PostSecondaryCertLicensureResultDescriptor (PostSecondaryCertLicensureResultDescriptorId)
;

CREATE INDEX FK_2afa39_PostSecondaryCertLicensureResultDescriptor
ON tx.PriorYearLeaverIndustryBasedCertificationSet (PostSecondaryCertLicensureResultDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverIndustryBasedCertificationSet ADD CONSTRAINT FK_2afa39_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_2afa39_PriorYearLeaver
ON tx.PriorYearLeaverIndustryBasedCertificationSet (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverParent ADD CONSTRAINT FK_09795e_GenerationCodeDescriptor FOREIGN KEY (GenerationCodeDescriptorId)
REFERENCES tx.GenerationCodeDescriptor (GenerationCodeDescriptorId)
;

CREATE INDEX FK_09795e_GenerationCodeDescriptor
ON tx.PriorYearLeaverParent (GenerationCodeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentAddress ADD CONSTRAINT FK_b0697e_AddressTypeDescriptor FOREIGN KEY (AddressTypeDescriptorId)
REFERENCES edfi.AddressTypeDescriptor (AddressTypeDescriptorId)
;

CREATE INDEX FK_b0697e_AddressTypeDescriptor
ON tx.PriorYearLeaverParentAddress (AddressTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentAddress ADD CONSTRAINT FK_b0697e_LocaleDescriptor FOREIGN KEY (LocaleDescriptorId)
REFERENCES edfi.LocaleDescriptor (LocaleDescriptorId)
;

CREATE INDEX FK_b0697e_LocaleDescriptor
ON tx.PriorYearLeaverParentAddress (LocaleDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentAddress ADD CONSTRAINT FK_b0697e_PriorYearLeaverParent FOREIGN KEY (ParentUId)
REFERENCES tx.PriorYearLeaverParent (ParentUId)
ON DELETE CASCADE
;

ALTER TABLE tx.PriorYearLeaverParentAddress ADD CONSTRAINT FK_b0697e_StateAbbreviationDescriptor FOREIGN KEY (StateAbbreviationDescriptorId)
REFERENCES edfi.StateAbbreviationDescriptor (StateAbbreviationDescriptorId)
;

CREATE INDEX FK_b0697e_StateAbbreviationDescriptor
ON tx.PriorYearLeaverParentAddress (StateAbbreviationDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentAddressPeriod ADD CONSTRAINT FK_d5a727_PriorYearLeaverParentAddress FOREIGN KEY (ParentUId)
REFERENCES tx.PriorYearLeaverParentAddress (ParentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_d5a727_PriorYearLeaverParentAddress
ON tx.PriorYearLeaverParentAddressPeriod (ParentUId ASC);

ALTER TABLE tx.PriorYearLeaverParentElectronicMail ADD CONSTRAINT FK_02c265_ElectronicMailTypeDescriptor FOREIGN KEY (ElectronicMailTypeDescriptorId)
REFERENCES edfi.ElectronicMailTypeDescriptor (ElectronicMailTypeDescriptorId)
;

CREATE INDEX FK_02c265_ElectronicMailTypeDescriptor
ON tx.PriorYearLeaverParentElectronicMail (ElectronicMailTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentElectronicMail ADD CONSTRAINT FK_02c265_PriorYearLeaverParent FOREIGN KEY (ParentUId)
REFERENCES tx.PriorYearLeaverParent (ParentUId)
ON DELETE CASCADE
;

ALTER TABLE tx.PriorYearLeaverParentPersonalIdentificationDocument ADD CONSTRAINT FK_0d5ded_CountryDescriptor FOREIGN KEY (IssuerCountryDescriptorId)
REFERENCES edfi.CountryDescriptor (CountryDescriptorId)
;

CREATE INDEX FK_0d5ded_CountryDescriptor
ON tx.PriorYearLeaverParentPersonalIdentificationDocument (IssuerCountryDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentPersonalIdentificationDocument ADD CONSTRAINT FK_0d5ded_IdentificationDocumentUseDescriptor FOREIGN KEY (IdentificationDocumentUseDescriptorId)
REFERENCES edfi.IdentificationDocumentUseDescriptor (IdentificationDocumentUseDescriptorId)
;

CREATE INDEX FK_0d5ded_IdentificationDocumentUseDescriptor
ON tx.PriorYearLeaverParentPersonalIdentificationDocument (IdentificationDocumentUseDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentPersonalIdentificationDocument ADD CONSTRAINT FK_0d5ded_PersonalInformationVerificationDescriptor FOREIGN KEY (PersonalInformationVerificationDescriptorId)
REFERENCES edfi.PersonalInformationVerificationDescriptor (PersonalInformationVerificationDescriptorId)
;

CREATE INDEX FK_0d5ded_PersonalInformationVerificationDescriptor
ON tx.PriorYearLeaverParentPersonalIdentificationDocument (PersonalInformationVerificationDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverParentPersonalIdentificationDocument ADD CONSTRAINT FK_0d5ded_PriorYearLeaverParent FOREIGN KEY (ParentUId)
REFERENCES tx.PriorYearLeaverParent (ParentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_0d5ded_PriorYearLeaverParent
ON tx.PriorYearLeaverParentPersonalIdentificationDocument (ParentUId ASC);

ALTER TABLE tx.PriorYearLeaverParentTelephone ADD CONSTRAINT FK_25cd97_PriorYearLeaverParent FOREIGN KEY (ParentUId)
REFERENCES tx.PriorYearLeaverParent (ParentUId)
ON DELETE CASCADE
;

ALTER TABLE tx.PriorYearLeaverParentTelephone ADD CONSTRAINT FK_25cd97_TelephoneNumberTypeDescriptor FOREIGN KEY (TelephoneNumberTypeDescriptorId)
REFERENCES edfi.TelephoneNumberTypeDescriptor (TelephoneNumberTypeDescriptorId)
;

CREATE INDEX FK_25cd97_TelephoneNumberTypeDescriptor
ON tx.PriorYearLeaverParentTelephone (TelephoneNumberTypeDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverPersonalIdentificationDocument ADD CONSTRAINT FK_86e78d_CountryDescriptor FOREIGN KEY (IssuerCountryDescriptorId)
REFERENCES edfi.CountryDescriptor (CountryDescriptorId)
;

CREATE INDEX FK_86e78d_CountryDescriptor
ON tx.PriorYearLeaverPersonalIdentificationDocument (IssuerCountryDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverPersonalIdentificationDocument ADD CONSTRAINT FK_86e78d_IdentificationDocumentUseDescriptor FOREIGN KEY (IdentificationDocumentUseDescriptorId)
REFERENCES edfi.IdentificationDocumentUseDescriptor (IdentificationDocumentUseDescriptorId)
;

CREATE INDEX FK_86e78d_IdentificationDocumentUseDescriptor
ON tx.PriorYearLeaverPersonalIdentificationDocument (IdentificationDocumentUseDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverPersonalIdentificationDocument ADD CONSTRAINT FK_86e78d_PersonalInformationVerificationDescriptor FOREIGN KEY (PersonalInformationVerificationDescriptorId)
REFERENCES edfi.PersonalInformationVerificationDescriptor (PersonalInformationVerificationDescriptorId)
;

CREATE INDEX FK_86e78d_PersonalInformationVerificationDescriptor
ON tx.PriorYearLeaverPersonalIdentificationDocument (PersonalInformationVerificationDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverPersonalIdentificationDocument ADD CONSTRAINT FK_86e78d_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_86e78d_PriorYearLeaver
ON tx.PriorYearLeaverPersonalIdentificationDocument (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverRace ADD CONSTRAINT FK_be0169_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_be0169_PriorYearLeaver
ON tx.PriorYearLeaverRace (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverRace ADD CONSTRAINT FK_be0169_RaceDescriptor FOREIGN KEY (RaceDescriptorId)
REFERENCES edfi.RaceDescriptor (RaceDescriptorId)
;

CREATE INDEX FK_be0169_RaceDescriptor
ON tx.PriorYearLeaverRace (RaceDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverStudentCharacteristic ADD CONSTRAINT FK_401263_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_401263_PriorYearLeaver
ON tx.PriorYearLeaverStudentCharacteristic (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverStudentCharacteristic ADD CONSTRAINT FK_401263_StudentCharacteristicDescriptor FOREIGN KEY (StudentCharacteristicDescriptorId)
REFERENCES edfi.StudentCharacteristicDescriptor (StudentCharacteristicDescriptorId)
;

CREATE INDEX FK_401263_StudentCharacteristicDescriptor
ON tx.PriorYearLeaverStudentCharacteristic (StudentCharacteristicDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ADD CONSTRAINT FK_88af9a_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
;

CREATE INDEX FK_88af9a_PriorYearLeaver
ON tx.PriorYearLeaverStudentParentAssociation (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ADD CONSTRAINT FK_88af9a_PriorYearLeaverParent FOREIGN KEY (ParentUId)
REFERENCES tx.PriorYearLeaverParent (ParentUId)
;

CREATE INDEX FK_88af9a_PriorYearLeaverParent
ON tx.PriorYearLeaverStudentParentAssociation (ParentUId ASC);

ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ADD CONSTRAINT FK_88af9a_RelationDescriptor FOREIGN KEY (RelationDescriptorId)
REFERENCES edfi.RelationDescriptor (RelationDescriptorId)
;

CREATE INDEX FK_88af9a_RelationDescriptor
ON tx.PriorYearLeaverStudentParentAssociation (RelationDescriptorId ASC);

ALTER TABLE tx.PriorYearLeaverTelephone ADD CONSTRAINT FK_92c3bc_PriorYearLeaver FOREIGN KEY (SchoolId, StudentUId)
REFERENCES tx.PriorYearLeaver (SchoolId, StudentUId)
ON DELETE CASCADE
;

CREATE INDEX FK_92c3bc_PriorYearLeaver
ON tx.PriorYearLeaverTelephone (SchoolId ASC, StudentUId ASC);

ALTER TABLE tx.PriorYearLeaverTelephone ADD CONSTRAINT FK_92c3bc_TelephoneNumberTypeDescriptor FOREIGN KEY (TelephoneNumberTypeDescriptorId)
REFERENCES edfi.TelephoneNumberTypeDescriptor (TelephoneNumberTypeDescriptorId)
;

CREATE INDEX FK_92c3bc_TelephoneNumberTypeDescriptor
ON tx.PriorYearLeaverTelephone (TelephoneNumberTypeDescriptorId ASC);

ALTER TABLE tx.ProgramIntentDescriptor ADD CONSTRAINT FK_8b9399_Descriptor FOREIGN KEY (ProgramIntentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ProgramOfStudyDescriptor ADD CONSTRAINT FK_a1877b_Descriptor FOREIGN KEY (ProgramOfStudyDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.RegionalDaySchoolProgramForDeafDescriptor ADD CONSTRAINT FK_03c542_Descriptor FOREIGN KEY (RegionalDaySchoolProgramForDeafDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ReportAssessmentTypeDescriptor ADD CONSTRAINT FK_b75bf0_Descriptor FOREIGN KEY (ReportAssessmentTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ReportingPeriodDescriptor ADD CONSTRAINT FK_e66997_Descriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ReportingPeriodExt ADD CONSTRAINT FK_f0bf2c_CalendarDate FOREIGN KEY (CalendarCode, Date, SchoolId, SchoolYear)
REFERENCES edfi.CalendarDate (CalendarCode, Date, SchoolId, SchoolYear)
;

CREATE INDEX FK_f0bf2c_CalendarDate
ON tx.ReportingPeriodExt (CalendarCode ASC, Date ASC, SchoolId ASC, SchoolYear ASC);

ALTER TABLE tx.ReportingPeriodExt ADD CONSTRAINT FK_f0bf2c_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

ALTER TABLE tx.RestraintEventExtension ADD CONSTRAINT FK_cb239e_RestraintEvent FOREIGN KEY (RestraintEventIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.RestraintEvent (RestraintEventIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.RestraintEventExtension ADD CONSTRAINT FK_cb239e_RestraintStaffTypeDescriptor FOREIGN KEY (RestraintStaffTypeDescriptorId)
REFERENCES tx.RestraintStaffTypeDescriptor (RestraintStaffTypeDescriptorId)
;

CREATE INDEX FK_cb239e_RestraintStaffTypeDescriptor
ON tx.RestraintEventExtension (RestraintStaffTypeDescriptorId ASC);

ALTER TABLE tx.RestraintStaffTypeDescriptor ADD CONSTRAINT FK_b85a98_Descriptor FOREIGN KEY (RestraintStaffTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.SchoolCampusEnrollmentTypeSet ADD CONSTRAINT FK_a6d25b_CampusEnrollmentTypeDescriptor FOREIGN KEY (CampusEnrollmentTypeDescriptorId)
REFERENCES tx.CampusEnrollmentTypeDescriptor (CampusEnrollmentTypeDescriptorId)
;

CREATE INDEX FK_a6d25b_CampusEnrollmentTypeDescriptor
ON tx.SchoolCampusEnrollmentTypeSet (CampusEnrollmentTypeDescriptorId ASC);

ALTER TABLE tx.SchoolCampusEnrollmentTypeSet ADD CONSTRAINT FK_a6d25b_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_a6d25b_School
ON tx.SchoolCampusEnrollmentTypeSet (SchoolId ASC);

ALTER TABLE tx.SchoolCharterWaitlistSet ADD CONSTRAINT FK_739ae9_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

ALTER TABLE tx.SchoolELOSet ADD CONSTRAINT FK_1e38b8_ELOTypeDescriptor FOREIGN KEY (ELOTypeDescriptorId)
REFERENCES tx.ELOTypeDescriptor (ELOTypeDescriptorId)
;

CREATE INDEX FK_1e38b8_ELOTypeDescriptor
ON tx.SchoolELOSet (ELOTypeDescriptorId ASC);

ALTER TABLE tx.SchoolELOSet ADD CONSTRAINT FK_1e38b8_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_1e38b8_School
ON tx.SchoolELOSet (SchoolId ASC);

ALTER TABLE tx.SchoolELOSetELOActivitySet ADD CONSTRAINT FK_ab736c_ELOActivityDescriptor FOREIGN KEY (ELOActivityDescriptorId)
REFERENCES tx.ELOActivityDescriptor (ELOActivityDescriptorId)
;

CREATE INDEX FK_ab736c_ELOActivityDescriptor
ON tx.SchoolELOSetELOActivitySet (ELOActivityDescriptorId ASC);

ALTER TABLE tx.SchoolELOSetELOActivitySet ADD CONSTRAINT FK_ab736c_SchoolELOSet FOREIGN KEY (ELOTypeDescriptorId, SchoolId)
REFERENCES tx.SchoolELOSet (ELOTypeDescriptorId, SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_ab736c_SchoolELOSet
ON tx.SchoolELOSetELOActivitySet (ELOTypeDescriptorId ASC, SchoolId ASC);

ALTER TABLE tx.SchoolExtension ADD CONSTRAINT FK_2199be_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

ALTER TABLE tx.SchoolNSLPTypeSet ADD CONSTRAINT FK_469b34_NSLPTypeDescriptor FOREIGN KEY (NSLPTypeDescriptorId)
REFERENCES tx.NSLPTypeDescriptor (NSLPTypeDescriptorId)
;

CREATE INDEX FK_469b34_NSLPTypeDescriptor
ON tx.SchoolNSLPTypeSet (NSLPTypeDescriptorId ASC);

ALTER TABLE tx.SchoolNSLPTypeSet ADD CONSTRAINT FK_469b34_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

CREATE INDEX FK_469b34_School
ON tx.SchoolNSLPTypeSet (SchoolId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_ClassTypeDescriptor FOREIGN KEY (ClassTypeDescriptorId)
REFERENCES tx.ClassTypeDescriptor (ClassTypeDescriptorId)
;

CREATE INDEX FK_fb389a_ClassTypeDescriptor
ON tx.SectionSet (ClassTypeDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_CourseSequenceDescriptor FOREIGN KEY (CourseSequenceDescriptorId)
REFERENCES tx.CourseSequenceDescriptor (CourseSequenceDescriptorId)
;

CREATE INDEX FK_fb389a_CourseSequenceDescriptor
ON tx.SectionSet (CourseSequenceDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_fb389a_GradeLevelDescriptor
ON tx.SectionSet (GradeLevelDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_NonCampusBasedInstructionDescriptor FOREIGN KEY (NonCampusBasedInstructionDescriptorId)
REFERENCES tx.NonCampusBasedInstructionDescriptor (NonCampusBasedInstructionDescriptorId)
;

CREATE INDEX FK_fb389a_NonCampusBasedInstructionDescriptor
ON tx.SectionSet (NonCampusBasedInstructionDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_PKCurriculaDescriptor FOREIGN KEY (PKCurriculaDescriptorId)
REFERENCES tx.PKCurriculaDescriptor (PKCurriculaDescriptorId)
;

CREATE INDEX FK_fb389a_PKCurriculaDescriptor
ON tx.SectionSet (PKCurriculaDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_PKSchoolTypeDescriptor FOREIGN KEY (PKSchoolTypeDescriptorId)
REFERENCES tx.PKSchoolTypeDescriptor (PKSchoolTypeDescriptorId)
;

CREATE INDEX FK_fb389a_PKSchoolTypeDescriptor
ON tx.SectionSet (PKSchoolTypeDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_PKStudentInstructionDescriptor FOREIGN KEY (PKStudentInstructionDescriptorId)
REFERENCES tx.PKStudentInstructionDescriptor (PKStudentInstructionDescriptorId)
;

CREATE INDEX FK_fb389a_PKStudentInstructionDescriptor
ON tx.SectionSet (PKStudentInstructionDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_PopulationServedDescriptor FOREIGN KEY (PopulationServedDescriptorId)
REFERENCES edfi.PopulationServedDescriptor (PopulationServedDescriptorId)
;

CREATE INDEX FK_fb389a_PopulationServedDescriptor
ON tx.SectionSet (PopulationServedDescriptorId ASC);

ALTER TABLE tx.SectionSet ADD CONSTRAINT FK_fb389a_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

CREATE INDEX FK_fb389a_Section
ON tx.SectionSet (LocalCourseCode ASC, SchoolId ASC, SchoolYear ASC, SectionIdentifier ASC, SessionName ASC);

ALTER TABLE tx.SharedServiceArrangementExt ADD CONSTRAINT FK_0acbb2_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_0acbb2_EducationOrganization
ON tx.SharedServiceArrangementExt (EducationOrganizationId ASC);

ALTER TABLE tx.SharedServiceArrangementExt ADD CONSTRAINT FK_0acbb2_FundDescriptor FOREIGN KEY (FundDescriptorId)
REFERENCES tx.FundDescriptor (FundDescriptorId)
;

CREATE INDEX FK_0acbb2_FundDescriptor
ON tx.SharedServiceArrangementExt (FundDescriptorId ASC);

ALTER TABLE tx.SharedServiceArrangementExt ADD CONSTRAINT FK_0acbb2_SSATypeDescriptor FOREIGN KEY (SSATypeDescriptorId)
REFERENCES tx.SSATypeDescriptor (SSATypeDescriptorId)
;

CREATE INDEX FK_0acbb2_SSATypeDescriptor
ON tx.SharedServiceArrangementExt (SSATypeDescriptorId ASC);

ALTER TABLE tx.SharedServiceArrangementStaffDescriptor ADD CONSTRAINT FK_fed43a_Descriptor FOREIGN KEY (SharedServiceArrangementStaffDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_aae1c0_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_aae1c0_GradeLevelDescriptor
ON tx.SpecialEducationProgramReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_aae1c0_InstructionalSettingDescriptor FOREIGN KEY (InstructionalSettingDescriptorId)
REFERENCES tx.InstructionalSettingDescriptor (InstructionalSettingDescriptorId)
;

CREATE INDEX FK_aae1c0_InstructionalSettingDescriptor
ON tx.SpecialEducationProgramReportingPeriodAttendance (InstructionalSettingDescriptorId ASC);

ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_aae1c0_RegionalDaySchoolProgramForDeafDescriptor FOREIGN KEY (RegionalDaySchoolProgramForDeafDescriptorId)
REFERENCES tx.RegionalDaySchoolProgramForDeafDescriptor (RegionalDaySchoolProgramForDeafDescriptorId)
;

CREATE INDEX FK_aae1c0_RegionalDaySchoolProgramForDeafDescriptor
ON tx.SpecialEducationProgramReportingPeriodAttendance (RegionalDaySchoolProgramForDeafDescriptorId ASC);

ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_aae1c0_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_aae1c0_ReportingPeriodDescriptor
ON tx.SpecialEducationProgramReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_aae1c0_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_aae1c0_School
ON tx.SpecialEducationProgramReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD CONSTRAINT FK_aae1c0_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_aae1c0_Student
ON tx.SpecialEducationProgramReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ADD CONSTRAINT FK_6c730f_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_6c730f_GradeLevelDescriptor
ON tx.SpecialProgramsReportingPeriodAttendance (GradeLevelDescriptorId ASC);

ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ADD CONSTRAINT FK_6c730f_ReportingPeriodDescriptor FOREIGN KEY (ReportingPeriodDescriptorId)
REFERENCES tx.ReportingPeriodDescriptor (ReportingPeriodDescriptorId)
;

CREATE INDEX FK_6c730f_ReportingPeriodDescriptor
ON tx.SpecialProgramsReportingPeriodAttendance (ReportingPeriodDescriptorId ASC);

ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ADD CONSTRAINT FK_6c730f_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

CREATE INDEX FK_6c730f_School
ON tx.SpecialProgramsReportingPeriodAttendance (SchoolId ASC);

ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ADD CONSTRAINT FK_6c730f_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_6c730f_Student
ON tx.SpecialProgramsReportingPeriodAttendance (StudentUSI ASC);

ALTER TABLE tx.SSAOrgAssociationExt ADD CONSTRAINT FK_67e71e_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_67e71e_EducationOrganization
ON tx.SSAOrgAssociationExt (EducationOrganizationId ASC);

ALTER TABLE tx.SSAOrgAssociationExt ADD CONSTRAINT FK_67e71e_SSATypeDescriptor FOREIGN KEY (SSATypeDescriptorId)
REFERENCES tx.SSATypeDescriptor (SSATypeDescriptorId)
;

CREATE INDEX FK_67e71e_SSATypeDescriptor
ON tx.SSAOrgAssociationExt (SSATypeDescriptorId ASC);

ALTER TABLE tx.SSATypeDescriptor ADD CONSTRAINT FK_d05b67_Descriptor FOREIGN KEY (SSATypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationExtension ADD CONSTRAINT FK_6ea356_SharedServiceArrangementStaffDescriptor FOREIGN KEY (SharedServiceArrangementStaffDescriptorId)
REFERENCES tx.SharedServiceArrangementStaffDescriptor (SharedServiceArrangementStaffDescriptorId)
;

CREATE INDEX FK_6ea356_SharedServiceArrangementStaffDescriptor
ON tx.StaffEducationOrganizationAssignmentAssociationExtension (SharedServiceArrangementStaffDescriptorId ASC);

ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationExtension ADD CONSTRAINT FK_6ea356_StaffEducationOrganizationAssignmentAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationAssignmentAssociation (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet ADD CONSTRAINT FK_0bf4c3_GradeLevelDescriptor FOREIGN KEY (GradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_0bf4c3_GradeLevelDescriptor
ON tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet (GradeLevelDescriptorId ASC);

ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet ADD CONSTRAINT FK_0bf4c3_PopulationServedDescriptor FOREIGN KEY (PopulationServedDescriptorId)
REFERENCES edfi.PopulationServedDescriptor (PopulationServedDescriptorId)
;

CREATE INDEX FK_0bf4c3_PopulationServedDescriptor
ON tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet (PopulationServedDescriptorId ASC);

ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet ADD CONSTRAINT FK_0bf4c3_StaffEducationOrganizationAssignmentAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationAssignmentAssociation (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_0bf4c3_StaffEducationOrganizationAssignmentAssociation
ON tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet (BeginDate ASC, EducationOrganizationId ASC, StaffClassificationDescriptorId ASC, StaffUSI ASC);

ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet ADD CONSTRAINT FK_0bf4c3_StaffServiceDescriptor FOREIGN KEY (StaffServiceDescriptorId)
REFERENCES tx.StaffServiceDescriptor (StaffServiceDescriptorId)
;

CREATE INDEX FK_0bf4c3_StaffServiceDescriptor
ON tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet (StaffServiceDescriptorId ASC);

ALTER TABLE tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 ADD CONSTRAINT FK_116d82_AuxiliaryRoleIdDescriptor FOREIGN KEY (AuxiliaryRoleIdDescriptorId)
REFERENCES tx.AuxiliaryRoleIdDescriptor (AuxiliaryRoleIdDescriptorId)
;

CREATE INDEX FK_116d82_AuxiliaryRoleIdDescriptor
ON tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 (AuxiliaryRoleIdDescriptorId ASC);

ALTER TABLE tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 ADD CONSTRAINT FK_116d82_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_116d82_StaffEducationOrganizationEmploymentAssociation
ON tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 (EducationOrganizationId ASC, EmploymentStatusDescriptorId ASC, HireDate ASC, StaffUSI ASC);

ALTER TABLE tx.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.StaffExtension ADD CONSTRAINT FK_d7b81a_GenerationCodeDescriptor FOREIGN KEY (GenerationCodeDescriptorId)
REFERENCES tx.GenerationCodeDescriptor (GenerationCodeDescriptorId)
;

CREATE INDEX FK_d7b81a_GenerationCodeDescriptor
ON tx.StaffExtension (GenerationCodeDescriptorId ASC);

ALTER TABLE tx.StaffExtension ADD CONSTRAINT FK_d7b81a_PKTeacherRequirementDescriptor FOREIGN KEY (PKTeacherRequirementDescriptorId)
REFERENCES tx.PKTeacherRequirementDescriptor (PKTeacherRequirementDescriptorId)
;

CREATE INDEX FK_d7b81a_PKTeacherRequirementDescriptor
ON tx.StaffExtension (PKTeacherRequirementDescriptorId ASC);

ALTER TABLE tx.StaffExtension ADD CONSTRAINT FK_d7b81a_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.StaffParaprofessionalCertificationSet ADD CONSTRAINT FK_6f863a_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.StaffSectionAssociationExtension ADD CONSTRAINT FK_2dc783_SharedServiceArrangementStaffDescriptor FOREIGN KEY (SharedServiceArrangementStaffDescriptorId)
REFERENCES tx.SharedServiceArrangementStaffDescriptor (SharedServiceArrangementStaffDescriptorId)
;

CREATE INDEX FK_2dc783_SharedServiceArrangementStaffDescriptor
ON tx.StaffSectionAssociationExtension (SharedServiceArrangementStaffDescriptorId ASC);

ALTER TABLE tx.StaffSectionAssociationExtension ADD CONSTRAINT FK_2dc783_StaffSectionAssociation FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StaffUSI)
REFERENCES edfi.StaffSectionAssociation (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StaffUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE tx.StaffServiceDescriptor ADD CONSTRAINT FK_616c9d_Descriptor FOREIGN KEY (StaffServiceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.StaffTeacherIncentiveAllotmentDesignation ADD CONSTRAINT FK_8696d2_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_8696d2_Staff
ON tx.StaffTeacherIncentiveAllotmentDesignation (StaffUSI ASC);

ALTER TABLE tx.StaffTeacherIncentiveAllotmentDesignation ADD CONSTRAINT FK_8696d2_TeacherIncentiveAllotmentDesignationDescriptor FOREIGN KEY (TeacherIncentiveAllotmentDesignationDescriptorId)
REFERENCES tx.TeacherIncentiveAllotmentDesignationDescriptor (TeacherIncentiveAllotmentDesignationDescriptorId)
;

CREATE INDEX FK_8696d2_TeacherIncentiveAllotmentDesignationDescriptor
ON tx.StaffTeacherIncentiveAllotmentDesignation (TeacherIncentiveAllotmentDesignationDescriptorId ASC);

ALTER TABLE tx.StaffTypeDescriptor ADD CONSTRAINT FK_ea8b84_Descriptor FOREIGN KEY (StaffTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.StaffTypeSet ADD CONSTRAINT FK_d5c242_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_d5c242_Staff
ON tx.StaffTypeSet (StaffUSI ASC);

ALTER TABLE tx.StaffTypeSet ADD CONSTRAINT FK_d5c242_StaffTypeDescriptor FOREIGN KEY (StaffTypeDescriptorId)
REFERENCES tx.StaffTypeDescriptor (StaffTypeDescriptorId)
;

CREATE INDEX FK_d5c242_StaffTypeDescriptor
ON tx.StaffTypeSet (StaffTypeDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordDiplomaExtension ADD CONSTRAINT FK_0ccf8d_FinancialAidApplicationDescriptor FOREIGN KEY (FinancialAidApplicationDescriptorId)
REFERENCES tx.FinancialAidApplicationDescriptor (FinancialAidApplicationDescriptorId)
;

CREATE INDEX FK_0ccf8d_FinancialAidApplicationDescriptor
ON tx.StudentAcademicRecordDiplomaExtension (FinancialAidApplicationDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordDiplomaExtension ADD CONSTRAINT FK_0ccf8d_StudentAcademicRecordDiploma FOREIGN KEY (DiplomaAwardDate, DiplomaTypeDescriptorId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
REFERENCES edfi.StudentAcademicRecordDiploma (DiplomaAwardDate, DiplomaTypeDescriptorId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.StudentAcademicRecordDiplomaExtension ADD CONSTRAINT FK_0ccf8d_TexasFirstEarlyHSCompletionProgramDescriptor FOREIGN KEY (TexasFirstEarlyHSCompletionProgramDescriptorId)
REFERENCES tx.TexasFirstEarlyHSCompletionProgramDescriptor (TexasFirstEarlyHSCompletionProgramDescriptorId)
;

CREATE INDEX FK_0ccf8d_TexasFirstEarlyHSCompletionProgramDescriptor
ON tx.StudentAcademicRecordDiplomaExtension (TexasFirstEarlyHSCompletionProgramDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordEndorsementCompleted ADD CONSTRAINT FK_c8af00_EndorsementCompletedDescriptor FOREIGN KEY (EndorsementCompletedDescriptorId)
REFERENCES tx.EndorsementCompletedDescriptor (EndorsementCompletedDescriptorId)
;

CREATE INDEX FK_c8af00_EndorsementCompletedDescriptor
ON tx.StudentAcademicRecordEndorsementCompleted (EndorsementCompletedDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordEndorsementCompleted ADD CONSTRAINT FK_c8af00_StudentAcademicRecord FOREIGN KEY (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
REFERENCES edfi.StudentAcademicRecord (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_c8af00_StudentAcademicRecord
ON tx.StudentAcademicRecordEndorsementCompleted (EducationOrganizationId ASC, SchoolYear ASC, StudentUSI ASC, TermDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordEndorsementPursuing ADD CONSTRAINT FK_a79ab1_EndorsementPursuingDescriptor FOREIGN KEY (EndorsementPursuingDescriptorId)
REFERENCES tx.EndorsementPursuingDescriptor (EndorsementPursuingDescriptorId)
;

CREATE INDEX FK_a79ab1_EndorsementPursuingDescriptor
ON tx.StudentAcademicRecordEndorsementPursuing (EndorsementPursuingDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordEndorsementPursuing ADD CONSTRAINT FK_a79ab1_StudentAcademicRecord FOREIGN KEY (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
REFERENCES edfi.StudentAcademicRecord (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_a79ab1_StudentAcademicRecord
ON tx.StudentAcademicRecordEndorsementPursuing (EducationOrganizationId ASC, SchoolYear ASC, StudentUSI ASC, TermDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordExtension ADD CONSTRAINT FK_ee832f_StudentAcademicRecord FOREIGN KEY (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
REFERENCES edfi.StudentAcademicRecord (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet ADD CONSTRAINT FK_d9663e_IBCVendorDescriptor FOREIGN KEY (IBCVendorDescriptorId)
REFERENCES tx.IBCVendorDescriptor (IBCVendorDescriptorId)
;

CREATE INDEX FK_d9663e_IBCVendorDescriptor
ON tx.StudentAcademicRecordIndustryBasedCertificationSet (IBCVendorDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet ADD CONSTRAINT FK_d9663e_PostSecondaryCertificationLicensureDescriptor FOREIGN KEY (PostSecondaryCertificationLicensureDescriptorId)
REFERENCES tx.PostSecondaryCertificationLicensureDescriptor (PostSecondaryCertificationLicensureDescriptorId)
;

CREATE INDEX FK_d9663e_PostSecondaryCertificationLicensureDescriptor
ON tx.StudentAcademicRecordIndustryBasedCertificationSet (PostSecondaryCertificationLicensureDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet ADD CONSTRAINT FK_d9663e_PostSecondaryCertLicensureResultDescriptor FOREIGN KEY (PostSecondaryCertLicensureResultDescriptorId)
REFERENCES tx.PostSecondaryCertLicensureResultDescriptor (PostSecondaryCertLicensureResultDescriptorId)
;

CREATE INDEX FK_d9663e_PostSecondaryCertLicensureResultDescriptor
ON tx.StudentAcademicRecordIndustryBasedCertificationSet (PostSecondaryCertLicensureResultDescriptorId ASC);

ALTER TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet ADD CONSTRAINT FK_d9663e_StudentAcademicRecord FOREIGN KEY (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
REFERENCES edfi.StudentAcademicRecord (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
ON DELETE CASCADE
;

CREATE INDEX FK_d9663e_StudentAcademicRecord
ON tx.StudentAcademicRecordIndustryBasedCertificationSet (EducationOrganizationId ASC, SchoolYear ASC, StudentUSI ASC, TermDescriptorId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_ApplicationTypeDescriptor FOREIGN KEY (ApplicationTypeDescriptorId)
REFERENCES tx.ApplicationTypeDescriptor (ApplicationTypeDescriptorId)
;

CREATE INDEX FK_a84252_ApplicationTypeDescriptor
ON tx.StudentApplication (ApplicationTypeDescriptorId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_CountryDescriptor FOREIGN KEY (BirthCountryDescriptorId)
REFERENCES edfi.CountryDescriptor (CountryDescriptorId)
;

CREATE INDEX FK_a84252_CountryDescriptor
ON tx.StudentApplication (BirthCountryDescriptorId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_a84252_EducationOrganization
ON tx.StudentApplication (EducationOrganizationId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_GenerationCodeDescriptor FOREIGN KEY (GenerationCodeDescriptorId)
REFERENCES tx.GenerationCodeDescriptor (GenerationCodeDescriptorId)
;

CREATE INDEX FK_a84252_GenerationCodeDescriptor
ON tx.StudentApplication (GenerationCodeDescriptorId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_GradeLevelDescriptor FOREIGN KEY (EntryGradeLevelDescriptorId)
REFERENCES edfi.GradeLevelDescriptor (GradeLevelDescriptorId)
;

CREATE INDEX FK_a84252_GradeLevelDescriptor
ON tx.StudentApplication (EntryGradeLevelDescriptorId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_SchoolYearType FOREIGN KEY (SchoolYear)
REFERENCES edfi.SchoolYearType (SchoolYear)
;

CREATE INDEX FK_a84252_SchoolYearType
ON tx.StudentApplication (SchoolYear ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_SexDescriptor FOREIGN KEY (SexDescriptorId)
REFERENCES edfi.SexDescriptor (SexDescriptorId)
;

CREATE INDEX FK_a84252_SexDescriptor
ON tx.StudentApplication (SexDescriptorId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_SexDescriptor1 FOREIGN KEY (BirthSexDescriptorId)
REFERENCES edfi.SexDescriptor (SexDescriptorId)
;

CREATE INDEX FK_a84252_SexDescriptor1
ON tx.StudentApplication (BirthSexDescriptorId ASC);

ALTER TABLE tx.StudentApplication ADD CONSTRAINT FK_a84252_StateAbbreviationDescriptor FOREIGN KEY (BirthStateAbbreviationDescriptorId)
REFERENCES edfi.StateAbbreviationDescriptor (StateAbbreviationDescriptorId)
;

CREATE INDEX FK_a84252_StateAbbreviationDescriptor
ON tx.StudentApplication (BirthStateAbbreviationDescriptorId ASC);

ALTER TABLE tx.StudentApplicationPersonalIdentificationDocument ADD CONSTRAINT FK_0f94ef_CountryDescriptor FOREIGN KEY (IssuerCountryDescriptorId)
REFERENCES edfi.CountryDescriptor (CountryDescriptorId)
;

CREATE INDEX FK_0f94ef_CountryDescriptor
ON tx.StudentApplicationPersonalIdentificationDocument (IssuerCountryDescriptorId ASC);

ALTER TABLE tx.StudentApplicationPersonalIdentificationDocument ADD CONSTRAINT FK_0f94ef_IdentificationDocumentUseDescriptor FOREIGN KEY (IdentificationDocumentUseDescriptorId)
REFERENCES edfi.IdentificationDocumentUseDescriptor (IdentificationDocumentUseDescriptorId)
;

CREATE INDEX FK_0f94ef_IdentificationDocumentUseDescriptor
ON tx.StudentApplicationPersonalIdentificationDocument (IdentificationDocumentUseDescriptorId ASC);

ALTER TABLE tx.StudentApplicationPersonalIdentificationDocument ADD CONSTRAINT FK_0f94ef_PersonalInformationVerificationDescriptor FOREIGN KEY (PersonalInformationVerificationDescriptorId)
REFERENCES edfi.PersonalInformationVerificationDescriptor (PersonalInformationVerificationDescriptorId)
;

CREATE INDEX FK_0f94ef_PersonalInformationVerificationDescriptor
ON tx.StudentApplicationPersonalIdentificationDocument (PersonalInformationVerificationDescriptorId ASC);

ALTER TABLE tx.StudentApplicationPersonalIdentificationDocument ADD CONSTRAINT FK_0f94ef_StudentApplication FOREIGN KEY (ApplicationIdentifier, EducationOrganizationId, SchoolYear)
REFERENCES tx.StudentApplication (ApplicationIdentifier, EducationOrganizationId, SchoolYear)
ON DELETE CASCADE
;

CREATE INDEX FK_0f94ef_StudentApplication
ON tx.StudentApplicationPersonalIdentificationDocument (ApplicationIdentifier ASC, EducationOrganizationId ASC, SchoolYear ASC);

ALTER TABLE tx.StudentAttributionDescriptor ADD CONSTRAINT FK_a794ed_Descriptor FOREIGN KEY (StudentAttributionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.StudentCensusBlockGroupSet ADD CONSTRAINT FK_1ea5ac_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_1ea5ac_Student
ON tx.StudentCensusBlockGroupSet (StudentUSI ASC);

ALTER TABLE tx.StudentCrisisEventSet ADD CONSTRAINT FK_4935ad_CrisisEventDescriptor FOREIGN KEY (CrisisEventDescriptorId)
REFERENCES tx.CrisisEventDescriptor (CrisisEventDescriptorId)
;

CREATE INDEX FK_4935ad_CrisisEventDescriptor
ON tx.StudentCrisisEventSet (CrisisEventDescriptorId ASC);

ALTER TABLE tx.StudentCrisisEventSet ADD CONSTRAINT FK_4935ad_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_4935ad_Student
ON tx.StudentCrisisEventSet (StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationDyslexiaRiskSet ADD CONSTRAINT FK_923e97_DyslexiaRiskDescriptor FOREIGN KEY (DyslexiaRiskDescriptorId)
REFERENCES tx.DyslexiaRiskDescriptor (DyslexiaRiskDescriptorId)
;

CREATE INDEX FK_923e97_DyslexiaRiskDescriptor
ON tx.StudentEducationOrganizationAssociationDyslexiaRiskSet (DyslexiaRiskDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationDyslexiaRiskSet ADD CONSTRAINT FK_923e97_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_923e97_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationDyslexiaRiskSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationDyslexiaServicesSet ADD CONSTRAINT FK_1c3e4b_DyslexiaServicesDescriptor FOREIGN KEY (DyslexiaServicesDescriptorId)
REFERENCES tx.DyslexiaServicesDescriptor (DyslexiaServicesDescriptorId)
;

CREATE INDEX FK_1c3e4b_DyslexiaServicesDescriptor
ON tx.StudentEducationOrganizationAssociationDyslexiaServicesSet (DyslexiaServicesDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationDyslexiaServicesSet ADD CONSTRAINT FK_1c3e4b_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_1c3e4b_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationDyslexiaServicesSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet ADD CONSTRAINT FK_314fe6_EarlyReadingIndicatorDescriptor FOREIGN KEY (EarlyReadingIndicatorDescriptorId)
REFERENCES tx.EarlyReadingIndicatorDescriptor (EarlyReadingIndicatorDescriptorId)
;

CREATE INDEX FK_314fe6_EarlyReadingIndicatorDescriptor
ON tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet (EarlyReadingIndicatorDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet ADD CONSTRAINT FK_314fe6_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_314fe6_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet ADD CONSTRAINT FK_c93358_EconomicDisadvantageDescriptor FOREIGN KEY (EconomicDisadvantageDescriptorId)
REFERENCES tx.EconomicDisadvantageDescriptor (EconomicDisadvantageDescriptorId)
;

CREATE INDEX FK_c93358_EconomicDisadvantageDescriptor
ON tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet (EconomicDisadvantageDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet ADD CONSTRAINT FK_c93358_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_c93358_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet ADD CONSTRAINT FK_c61124_EmergentBilingualIndicatorDescriptor FOREIGN KEY (EmergentBilingualIndicatorDescriptorId)
REFERENCES tx.EmergentBilingualIndicatorDescriptor (EmergentBilingualIndicatorDescriptorId)
;

CREATE INDEX FK_c61124_EmergentBilingualIndicatorDescriptor
ON tx.StudentEducationOrganizationAssociationEmergentBilingualSet (EmergentBilingualIndicatorDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet ADD CONSTRAINT FK_c61124_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_c61124_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationEmergentBilingualSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet ADD CONSTRAINT FK_284815_FosterCareTypeDescriptor FOREIGN KEY (FosterCareTypeDescriptorId)
REFERENCES tx.FosterCareTypeDescriptor (FosterCareTypeDescriptorId)
;

CREATE INDEX FK_284815_FosterCareTypeDescriptor
ON tx.StudentEducationOrganizationAssociationFosterCareTypeSet (FosterCareTypeDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet ADD CONSTRAINT FK_284815_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_284815_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationFosterCareTypeSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet ADD CONSTRAINT FK_7c6325_HomelessStatusDescriptor FOREIGN KEY (HomelessStatusDescriptorId)
REFERENCES tx.HomelessStatusDescriptor (HomelessStatusDescriptorId)
;

CREATE INDEX FK_7c6325_HomelessStatusDescriptor
ON tx.StudentEducationOrganizationAssociationHomelessStatusSet (HomelessStatusDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet ADD CONSTRAINT FK_7c6325_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_7c6325_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationHomelessStatusSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 ADD CONSTRAINT FK_662c97_MilitaryConnectedStudentDescriptor FOREIGN KEY (MilitaryConnectedStudentDescriptorId)
REFERENCES tx.MilitaryConnectedStudentDescriptor (MilitaryConnectedStudentDescriptorId)
;

CREATE INDEX FK_662c97_MilitaryConnectedStudentDescriptor
ON tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 (MilitaryConnectedStudentDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 ADD CONSTRAINT FK_662c97_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_662c97_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationPKFundingSourceSet ADD CONSTRAINT FK_b43545_PKFundingSourceDescriptor FOREIGN KEY (PKFundingSourceDescriptorId)
REFERENCES tx.PKFundingSourceDescriptor (PKFundingSourceDescriptorId)
;

CREATE INDEX FK_b43545_PKFundingSourceDescriptor
ON tx.StudentEducationOrganizationAssociationPKFundingSourceSet (PKFundingSourceDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationPKFundingSourceSet ADD CONSTRAINT FK_b43545_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_b43545_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationPKFundingSourceSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationPKProgramTypeSet ADD CONSTRAINT FK_8c0e7a_PKProgramTypeDescriptor FOREIGN KEY (PKProgramTypeDescriptorId)
REFERENCES tx.PKProgramTypeDescriptor (PKProgramTypeDescriptorId)
;

CREATE INDEX FK_8c0e7a_PKProgramTypeDescriptor
ON tx.StudentEducationOrganizationAssociationPKProgramTypeSet (PKProgramTypeDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationPKProgramTypeSet ADD CONSTRAINT FK_8c0e7a_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_8c0e7a_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationPKProgramTypeSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationTruancySet ADD CONSTRAINT FK_4aff7a_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_4aff7a_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationTruancySet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationTruancySet ADD CONSTRAINT FK_4aff7a_TruancyDescriptor FOREIGN KEY (TruancyDescriptorId)
REFERENCES tx.TruancyDescriptor (TruancyDescriptorId)
;

CREATE INDEX FK_4aff7a_TruancyDescriptor
ON tx.StudentEducationOrganizationAssociationTruancySet (TruancyDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet ADD CONSTRAINT FK_547fb9_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_547fb9_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet ADD CONSTRAINT FK_547fb9_UnaccompaniedYouthDescriptor FOREIGN KEY (UnaccompaniedYouthDescriptorId)
REFERENCES tx.UnaccompaniedYouthDescriptor (UnaccompaniedYouthDescriptorId)
;

CREATE INDEX FK_547fb9_UnaccompaniedYouthDescriptor
ON tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet (UnaccompaniedYouthDescriptorId ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b ADD CONSTRAINT FK_9fcf9b_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_9fcf9b_StudentEducationOrganizationAssociation
ON tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b (EducationOrganizationId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b ADD CONSTRAINT FK_9fcf9b_UnschooledAsyleeRefugeeDescriptor FOREIGN KEY (UnschooledAsyleeRefugeeDescriptorId)
REFERENCES tx.UnschooledAsyleeRefugeeDescriptor (UnschooledAsyleeRefugeeDescriptorId)
;

CREATE INDEX FK_9fcf9b_UnschooledAsyleeRefugeeDescriptor
ON tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b (UnschooledAsyleeRefugeeDescriptorId ASC);

ALTER TABLE tx.StudentExtension ADD CONSTRAINT FK_f25437_AsOfStatusLastDayEnrollmentDescriptor FOREIGN KEY (AsOfStatusLastDayEnrollmentDescriptorId)
REFERENCES tx.AsOfStatusLastDayEnrollmentDescriptor (AsOfStatusLastDayEnrollmentDescriptorId)
;

CREATE INDEX FK_f25437_AsOfStatusLastDayEnrollmentDescriptor
ON tx.StudentExtension (AsOfStatusLastDayEnrollmentDescriptorId ASC);

ALTER TABLE tx.StudentExtension ADD CONSTRAINT FK_f25437_AsOfStatusLastFridayOctoberDescriptor FOREIGN KEY (AsOfStatusLastFridayOctoberDescriptorId)
REFERENCES tx.AsOfStatusLastFridayOctoberDescriptor (AsOfStatusLastFridayOctoberDescriptorId)
;

CREATE INDEX FK_f25437_AsOfStatusLastFridayOctoberDescriptor
ON tx.StudentExtension (AsOfStatusLastFridayOctoberDescriptorId ASC);

ALTER TABLE tx.StudentExtension ADD CONSTRAINT FK_f25437_GenerationCodeDescriptor FOREIGN KEY (GenerationCodeDescriptorId)
REFERENCES tx.GenerationCodeDescriptor (GenerationCodeDescriptorId)
;

CREATE INDEX FK_f25437_GenerationCodeDescriptor
ON tx.StudentExtension (GenerationCodeDescriptorId ASC);

ALTER TABLE tx.StudentExtension ADD CONSTRAINT FK_f25437_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 ADD CONSTRAINT FK_710c81_ParentalPermissionDescriptor FOREIGN KEY (ParentalPermissionDescriptorId)
REFERENCES tx.ParentalPermissionDescriptor (ParentalPermissionDescriptorId)
;

CREATE INDEX FK_710c81_ParentalPermissionDescriptor
ON tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 (ParentalPermissionDescriptorId ASC);

ALTER TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 ADD CONSTRAINT FK_710c81_StudentLanguageInstructionProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentLanguageInstructionProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_710c81_StudentLanguageInstructionProgramAssociation
ON tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentProgramAttendanceEventExtension ADD CONSTRAINT FK_3d547c_InstructionalSettingDescriptor FOREIGN KEY (InstructionalSettingDescriptorId)
REFERENCES tx.InstructionalSettingDescriptor (InstructionalSettingDescriptorId)
;

CREATE INDEX FK_3d547c_InstructionalSettingDescriptor
ON tx.StudentProgramAttendanceEventExtension (InstructionalSettingDescriptorId ASC);

ALTER TABLE tx.StudentProgramAttendanceEventExtension ADD CONSTRAINT FK_3d547c_StudentProgramAttendanceEvent FOREIGN KEY (AttendanceEventCategoryDescriptorId, EducationOrganizationId, EventDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentProgramAttendanceEvent (AttendanceEventCategoryDescriptorId, EducationOrganizationId, EventDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_ADAEligibilityDescriptor FOREIGN KEY (ADAEligibilityDescriptorId)
REFERENCES tx.ADAEligibilityDescriptor (ADAEligibilityDescriptorId)
;

CREATE INDEX FK_880cb1_ADAEligibilityDescriptor
ON tx.StudentSchoolAssociationExtension (ADAEligibilityDescriptorId ASC);

ALTER TABLE tx.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_EnrollmentTrackingVerificationDescriptor FOREIGN KEY (EnrollmentTrackingVerificationDescriptorId)
REFERENCES tx.EnrollmentTrackingVerificationDescriptor (EnrollmentTrackingVerificationDescriptorId)
;

CREATE INDEX FK_880cb1_EnrollmentTrackingVerificationDescriptor
ON tx.StudentSchoolAssociationExtension (EnrollmentTrackingVerificationDescriptorId ASC);

ALTER TABLE tx.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_StudentAttributionDescriptor FOREIGN KEY (StudentAttributionDescriptorId)
REFERENCES tx.StudentAttributionDescriptor (StudentAttributionDescriptorId)
;

CREATE INDEX FK_880cb1_StudentAttributionDescriptor
ON tx.StudentSchoolAssociationExtension (StudentAttributionDescriptorId ASC);

ALTER TABLE tx.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_StudentSchoolAssociation FOREIGN KEY (EntryDate, SchoolId, StudentUSI)
REFERENCES edfi.StudentSchoolAssociation (EntryDate, SchoolId, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE tx.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_StudentSectionAssociation FOREIGN KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
REFERENCES edfi.StudentSectionAssociation (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE tx.StudentSpecialEducationProgramAssociationAssessment ADD CONSTRAINT FK_b4944f_AssessmentResultsObtainedDescriptor FOREIGN KEY (AssessmentResultsObtainedDescriptorId)
REFERENCES tx.AssessmentResultsObtainedDescriptor (AssessmentResultsObtainedDescriptorId)
;

CREATE INDEX FK_b4944f_AssessmentResultsObtainedDescriptor
ON tx.StudentSpecialEducationProgramAssociationAssessment (AssessmentResultsObtainedDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationAssessment ADD CONSTRAINT FK_b4944f_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_b4944f_StudentSpecialEducationProgramAssociation
ON tx.StudentSpecialEducationProgramAssociationAssessment (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationAssessment ADD CONSTRAINT FK_b4944f_ToolOrAssessmentUsedDescriptor FOREIGN KEY (ToolOrAssessmentUsedDescriptorId)
REFERENCES tx.ToolOrAssessmentUsedDescriptor (ToolOrAssessmentUsedDescriptorId)
;

CREATE INDEX FK_b4944f_ToolOrAssessmentUsedDescriptor
ON tx.StudentSpecialEducationProgramAssociationAssessment (ToolOrAssessmentUsedDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationDisabilitySet ADD CONSTRAINT FK_1cff3b_StudentSpecialEducationProgramAssociationDisability FOREIGN KEY (BeginDate, DisabilityDescriptorId, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociationDisability (BeginDate, DisabilityDescriptorId, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_1cff3b_StudentSpecialEducationProgramAssociationDisability
ON tx.StudentSpecialEducationProgramAssociationDisabilitySet (BeginDate ASC, DisabilityDescriptorId ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_PreferredHomeCommunicationMethodDescriptor FOREIGN KEY (PreferredHomeCommunicationMethodDescriptorId)
REFERENCES tx.PreferredHomeCommunicationMethodDescriptor (PreferredHomeCommunicationMethodDescriptorId)
;

CREATE INDEX FK_3da84f_PreferredHomeCommunicationMethodDescriptor
ON tx.StudentSpecialEducationProgramAssociationExtension (PreferredHomeCommunicationMethodDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification ADD CONSTRAINT FK_e27839_HearingAmplificationAccessDescriptor FOREIGN KEY (HearingAmplificationAccessDescriptorId)
REFERENCES tx.HearingAmplificationAccessDescriptor (HearingAmplificationAccessDescriptorId)
;

CREATE INDEX FK_e27839_HearingAmplificationAccessDescriptor
ON tx.StudentSpecialEducationProgramAssociationHearingAmplification (HearingAmplificationAccessDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification ADD CONSTRAINT FK_e27839_HearingAmplificationDailyUseDescriptor FOREIGN KEY (HearingAmplificationDailyUseDescriptorId)
REFERENCES tx.HearingAmplificationDailyUseDescriptor (HearingAmplificationDailyUseDescriptorId)
;

CREATE INDEX FK_e27839_HearingAmplificationDailyUseDescriptor
ON tx.StudentSpecialEducationProgramAssociationHearingAmplification (HearingAmplificationDailyUseDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification ADD CONSTRAINT FK_e27839_HearingAmplificationTypeDescriptor FOREIGN KEY (HearingAmplificationTypeDescriptorId)
REFERENCES tx.HearingAmplificationTypeDescriptor (HearingAmplificationTypeDescriptorId)
;

CREATE INDEX FK_e27839_HearingAmplificationTypeDescriptor
ON tx.StudentSpecialEducationProgramAssociationHearingAmplification (HearingAmplificationTypeDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification ADD CONSTRAINT FK_e27839_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_e27839_StudentSpecialEducationProgramAssociation
ON tx.StudentSpecialEducationProgramAssociationHearingAmplification (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 ADD CONSTRAINT FK_718180_InstructionalSettingDescriptor FOREIGN KEY (InstructionalSettingDescriptorId)
REFERENCES tx.InstructionalSettingDescriptor (InstructionalSettingDescriptorId)
;

CREATE INDEX FK_718180_InstructionalSettingDescriptor
ON tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 (InstructionalSettingDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 ADD CONSTRAINT FK_718180_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_718180_StudentSpecialEducationProgramAssociation
ON tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition ADD CONSTRAINT FK_1b8016_FrequencyOfServicesDescriptor FOREIGN KEY (FrequencyOfServicesDescriptorId)
REFERENCES tx.FrequencyOfServicesDescriptor (FrequencyOfServicesDescriptorId)
;

CREATE INDEX FK_1b8016_FrequencyOfServicesDescriptor
ON tx.StudentSpecialEducationProgramAssociationLanguageAcquisition (FrequencyOfServicesDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition ADD CONSTRAINT FK_1b8016_HoursSpentReceivingServicesDescriptor FOREIGN KEY (HoursSpentReceivingServicesDescriptorId)
REFERENCES tx.HoursSpentReceivingServicesDescriptor (HoursSpentReceivingServicesDescriptorId)
;

CREATE INDEX FK_1b8016_HoursSpentReceivingServicesDescriptor
ON tx.StudentSpecialEducationProgramAssociationLanguageAcquisition (HoursSpentReceivingServicesDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition ADD CONSTRAINT FK_1b8016_LangAcqServicesProvidedDescriptor FOREIGN KEY (LangAcqServicesProvidedDescriptorId)
REFERENCES tx.LangAcqServicesProvidedDescriptor (LangAcqServicesProvidedDescriptorId)
;

CREATE INDEX FK_1b8016_LangAcqServicesProvidedDescriptor
ON tx.StudentSpecialEducationProgramAssociationLanguageAcquisition (LangAcqServicesProvidedDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition ADD CONSTRAINT FK_1b8016_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_1b8016_StudentSpecialEducationProgramAssociation
ON tx.StudentSpecialEducationProgramAssociationLanguageAcquisition (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7 ADD CONSTRAINT FK_36c8d7_StudentSpecialEducationProgramAssociationStudentResident_727129 FOREIGN KEY (BeginDate, DateEnteredRF, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, ResidentialFacilityId, StudentUSI)
REFERENCES tx.StudentSpecialEducationProgramAssociationStudentResident_727129 (BeginDate, DateEnteredRF, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, ResidentialFacilityId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_36c8d7_StudentSpecialEducationProgramAssociationStudentResident_727129
ON tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7 (BeginDate ASC, DateEnteredRF ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, ResidentialFacilityId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_727129 ADD CONSTRAINT FK_727129_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_727129_StudentSpecialEducationProgramAssociation
ON tx.StudentSpecialEducationProgramAssociationStudentResident_727129 (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 ADD CONSTRAINT FK_54e394_ChildCountFundingDescriptor FOREIGN KEY (ChildCountFundingDescriptorId)
REFERENCES tx.ChildCountFundingDescriptor (ChildCountFundingDescriptorId)
;

CREATE INDEX FK_54e394_ChildCountFundingDescriptor
ON tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 (ChildCountFundingDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 ADD CONSTRAINT FK_54e394_PPCDServiceLocationDescriptor FOREIGN KEY (PPCDServiceLocationDescriptorId)
REFERENCES tx.PPCDServiceLocationDescriptor (PPCDServiceLocationDescriptorId)
;

CREATE INDEX FK_54e394_PPCDServiceLocationDescriptor
ON tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 (PPCDServiceLocationDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 ADD CONSTRAINT FK_54e394_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_54e394_StudentSpecialEducationProgramAssociation
ON tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ADD CONSTRAINT FK_fcb699_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_fcb699_EducationOrganization
ON tx.StudentSpecialEducationProgramEligibilityAssociation (EducationOrganizationId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ADD CONSTRAINT FK_fcb699_EligibilityDelayReasonDescriptor FOREIGN KEY (EligibilityDelayReasonDescriptorId)
REFERENCES tx.EligibilityDelayReasonDescriptor (EligibilityDelayReasonDescriptorId)
;

CREATE INDEX FK_fcb699_EligibilityDelayReasonDescriptor
ON tx.StudentSpecialEducationProgramEligibilityAssociation (EligibilityDelayReasonDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ADD CONSTRAINT FK_fcb699_EvaluationDelayReasonDescriptor FOREIGN KEY (EvaluationDelayReasonDescriptorId)
REFERENCES tx.EvaluationDelayReasonDescriptor (EvaluationDelayReasonDescriptorId)
;

CREATE INDEX FK_fcb699_EvaluationDelayReasonDescriptor
ON tx.StudentSpecialEducationProgramEligibilityAssociation (EvaluationDelayReasonDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ADD CONSTRAINT FK_fcb699_Program FOREIGN KEY (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
REFERENCES edfi.Program (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId)
;

CREATE INDEX FK_fcb699_Program
ON tx.StudentSpecialEducationProgramEligibilityAssociation (EducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC);

ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ADD CONSTRAINT FK_fcb699_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

CREATE INDEX FK_fcb699_Student
ON tx.StudentSpecialEducationProgramEligibilityAssociation (StudentUSI ASC);

ALTER TABLE tx.StudentTitleIPartAProgramAssociationSet ADD CONSTRAINT FK_19febe_StudentTitleIPartAProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentTitleIPartAProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

CREATE INDEX FK_19febe_StudentTitleIPartAProgramAssociation
ON tx.StudentTitleIPartAProgramAssociationSet (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE tx.StudentTitleIPartAProgramAssociationSet ADD CONSTRAINT FK_19febe_TitleIPartAParticipantDescriptor FOREIGN KEY (TitleIPartAParticipantDescriptorId)
REFERENCES edfi.TitleIPartAParticipantDescriptor (TitleIPartAParticipantDescriptorId)
;

CREATE INDEX FK_19febe_TitleIPartAParticipantDescriptor
ON tx.StudentTitleIPartAProgramAssociationSet (TitleIPartAParticipantDescriptorId ASC);

ALTER TABLE tx.TeacherIncentiveAllotmentDesignationDescriptor ADD CONSTRAINT FK_a503c7_Descriptor FOREIGN KEY (TeacherIncentiveAllotmentDesignationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.TexasFirstEarlyHSCompletionProgramDescriptor ADD CONSTRAINT FK_94f244_Descriptor FOREIGN KEY (TexasFirstEarlyHSCompletionProgramDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.TitleOfAssessmentDescriptor ADD CONSTRAINT FK_1414cc_Descriptor FOREIGN KEY (TitleOfAssessmentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.ToolOrAssessmentUsedDescriptor ADD CONSTRAINT FK_6260b1_Descriptor FOREIGN KEY (ToolOrAssessmentUsedDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.TruancyDescriptor ADD CONSTRAINT FK_329761_Descriptor FOREIGN KEY (TruancyDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.UnaccompaniedYouthDescriptor ADD CONSTRAINT FK_290148_Descriptor FOREIGN KEY (UnaccompaniedYouthDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE tx.UnschooledAsyleeRefugeeDescriptor ADD CONSTRAINT FK_445a9c_Descriptor FOREIGN KEY (UnschooledAsyleeRefugeeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

