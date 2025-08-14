
DROP INDEX IF EXISTS IX_BasicReportingPeriodAttendance_SchoolId ON [tx].[BasicReportingPeriodAttendance];
CREATE INDEX IX_BasicReportingPeriodAttendance_SchoolId ON [tx].[BasicReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_BasicReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.BasicReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_BasicReportingPeriodAttendance_StudentUSI ON [tx].[BasicReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_BilingualESLProgramReportingPeriodAttendance_SchoolId ON [tx].[BilingualESLProgramReportingPeriodAttendance];
CREATE INDEX IX_BilingualESLProgramReportingPeriodAttendance_SchoolId ON [tx].[BilingualESLProgramReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_BilingualESLProgramReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.BilingualESLProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_BilingualESLProgramReportingPeriodAttendance_StudentUSI ON [tx].[BilingualESLProgramReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_BudgetExt_EducationOrganizationId ON [tx].[BudgetExt];
CREATE INDEX IX_BudgetExt_EducationOrganizationId ON [tx].[BudgetExt](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ContractedInstructionalStaffFTEExt_EducationOrganizationId ON [tx].[ContractedInstructionalStaffFTEExt];
CREATE INDEX IX_ContractedInstructionalStaffFTEExt_EducationOrganizationId ON [tx].[ContractedInstructionalStaffFTEExt](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ContractedInstructionalStaffFTEExt_SchoolId ON [tx].[ContractedInstructionalStaffFTEExt];
CREATE INDEX IX_ContractedInstructionalStaffFTEExt_SchoolId ON [tx].[ContractedInstructionalStaffFTEExt](SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CourseTranscriptExt_EducationOrganizationId ON [tx].[CourseTranscriptExt];
CREATE INDEX IX_CourseTranscriptExt_EducationOrganizationId ON [tx].[CourseTranscriptExt](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CourseTranscriptExt_SchoolId ON [tx].[CourseTranscriptExt];
CREATE INDEX IX_CourseTranscriptExt_SchoolId ON [tx].[CourseTranscriptExt](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CourseTranscriptExt_StudentUSI' AND object_id = OBJECT_ID('tx.CourseTranscriptExt')) 
BEGIN
    CREATE INDEX IX_CourseTranscriptExt_StudentUSI ON [tx].[CourseTranscriptExt](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_CTEProgramReportingPeriodAttendance_SchoolId ON [tx].[CTEProgramReportingPeriodAttendance];
CREATE INDEX IX_CTEProgramReportingPeriodAttendance_SchoolId ON [tx].[CTEProgramReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CTEProgramReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.CTEProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_CTEProgramReportingPeriodAttendance_StudentUSI ON [tx].[CTEProgramReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_DescriptorMappingHistory_EducationOrganizationId ON [tx].[DescriptorMappingHistory];
CREATE INDEX IX_DescriptorMappingHistory_EducationOrganizationId ON [tx].[DescriptorMappingHistory](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ExtendedSchoolYearServicesAttendance_SchoolId ON [tx].[ExtendedSchoolYearServicesAttendance];
CREATE INDEX IX_ExtendedSchoolYearServicesAttendance_SchoolId ON [tx].[ExtendedSchoolYearServicesAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_ExtendedSchoolYearServicesAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.ExtendedSchoolYearServicesAttendance')) 
BEGIN
    CREATE INDEX IX_ExtendedSchoolYearServicesAttendance_StudentUSI ON [tx].[ExtendedSchoolYearServicesAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_FlexibleBilingualESLProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance];
CREATE INDEX IX_FlexibleBilingualESLProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleBilingualESLProgramReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.FlexibleBilingualESLProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleBilingualESLProgramReportingPeriodAttendance_StudentUSI ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_FlexibleCTEProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleCTEProgramReportingPeriodAttendance];
CREATE INDEX IX_FlexibleCTEProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleCTEProgramReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleCTEProgramReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.FlexibleCTEProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleCTEProgramReportingPeriodAttendance_StudentUSI ON [tx].[FlexibleCTEProgramReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_FlexibleRegularProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleRegularProgramReportingPeriodAttendance];
CREATE INDEX IX_FlexibleRegularProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleRegularProgramReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleRegularProgramReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.FlexibleRegularProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleRegularProgramReportingPeriodAttendance_StudentUSI ON [tx].[FlexibleRegularProgramReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance];
CREATE INDEX IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.FlexibleSpecialEducationProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_StudentUSI ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_PayrollExt_EducationOrganizationId ON [tx].[PayrollExt];
CREATE INDEX IX_PayrollExt_EducationOrganizationId ON [tx].[PayrollExt](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PayrollExt_StaffUSI' AND object_id = OBJECT_ID('tx.PayrollExt')) 
BEGIN
    CREATE INDEX IX_PayrollExt_StaffUSI ON [tx].[PayrollExt](StaffUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_PriorYearActualExt_EducationOrganizationId ON [tx].[PriorYearActualExt];
CREATE INDEX IX_PriorYearActualExt_EducationOrganizationId ON [tx].[PriorYearActualExt](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PriorYearLeaver_SchoolId ON [tx].[PriorYearLeaver];
CREATE INDEX IX_PriorYearLeaver_SchoolId ON [tx].[PriorYearLeaver](SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PriorYearLeaverStudentParentAssociation_SchoolId ON [tx].[PriorYearLeaverStudentParentAssociation];
CREATE INDEX IX_PriorYearLeaverStudentParentAssociation_SchoolId ON [tx].[PriorYearLeaverStudentParentAssociation](SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PriorYearSSAOrgAssociationExt_EducationOrganizationId ON [tx].[PriorYearSSAOrgAssociationExt];
CREATE INDEX IX_PriorYearSSAOrgAssociationExt_EducationOrganizationId ON [tx].[PriorYearSSAOrgAssociationExt](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ReportingPeriodExt_SchoolId ON [tx].[ReportingPeriodExt];
CREATE INDEX IX_ReportingPeriodExt_SchoolId ON [tx].[ReportingPeriodExt](SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SharedServiceArrangementExt_EducationOrganizationId ON [tx].[SharedServiceArrangementExt];
CREATE INDEX IX_SharedServiceArrangementExt_EducationOrganizationId ON [tx].[SharedServiceArrangementExt](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SpecialEducationProgramReportingPeriodAttendance_SchoolId ON [tx].[SpecialEducationProgramReportingPeriodAttendance];
CREATE INDEX IX_SpecialEducationProgramReportingPeriodAttendance_SchoolId ON [tx].[SpecialEducationProgramReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SpecialEducationProgramReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.SpecialEducationProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_SpecialEducationProgramReportingPeriodAttendance_StudentUSI ON [tx].[SpecialEducationProgramReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_SpecialProgramsReportingPeriodAttendance_SchoolId ON [tx].[SpecialProgramsReportingPeriodAttendance];
CREATE INDEX IX_SpecialProgramsReportingPeriodAttendance_SchoolId ON [tx].[SpecialProgramsReportingPeriodAttendance](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SpecialProgramsReportingPeriodAttendance_StudentUSI' AND object_id = OBJECT_ID('tx.SpecialProgramsReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_SpecialProgramsReportingPeriodAttendance_StudentUSI ON [tx].[SpecialProgramsReportingPeriodAttendance](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_SSAOrgAssociationExt_EducationOrganizationId ON [tx].[SSAOrgAssociationExt];
CREATE INDEX IX_SSAOrgAssociationExt_EducationOrganizationId ON [tx].[SSAOrgAssociationExt](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentApplication_EducationOrganizationId ON [tx].[StudentApplication];
CREATE INDEX IX_StudentApplication_EducationOrganizationId ON [tx].[StudentApplication](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId ON [tx].[StudentSpecialEducationProgramEligibilityAssociation];
CREATE INDEX IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId ON [tx].[StudentSpecialEducationProgramEligibilityAssociation](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentSpecialEducationProgramEligibilityAssociation_StudentUSI' AND object_id = OBJECT_ID('tx.StudentSpecialEducationProgramEligibilityAssociation')) 
BEGIN
    CREATE INDEX IX_StudentSpecialEducationProgramEligibilityAssociation_StudentUSI ON [tx].[StudentSpecialEducationProgramEligibilityAssociation](StudentUSI) INCLUDE (AggregateId)
END;
