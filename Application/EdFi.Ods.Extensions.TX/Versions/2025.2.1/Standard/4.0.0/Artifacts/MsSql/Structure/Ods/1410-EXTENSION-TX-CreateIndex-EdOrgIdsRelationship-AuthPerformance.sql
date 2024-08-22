
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_BasicReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.BasicReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_BasicReportingPeriodAttendance_SchoolId ON [tx].[BasicReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_BilingualESLProgramReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.BilingualESLProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_BilingualESLProgramReportingPeriodAttendance_SchoolId ON [tx].[BilingualESLProgramReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_BudgetExt_EducationOrganizationId' AND object_id = OBJECT_ID('tx.BudgetExt')) 
BEGIN
    CREATE INDEX IX_BudgetExt_EducationOrganizationId ON [tx].[BudgetExt](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_ContractedInstructionalStaffFTEExt_EducationOrganizationId' AND object_id = OBJECT_ID('tx.ContractedInstructionalStaffFTEExt')) 
BEGIN
    CREATE INDEX IX_ContractedInstructionalStaffFTEExt_EducationOrganizationId ON [tx].[ContractedInstructionalStaffFTEExt](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_ContractedInstructionalStaffFTEExt_SchoolId' AND object_id = OBJECT_ID('tx.ContractedInstructionalStaffFTEExt')) 
BEGIN
    CREATE INDEX IX_ContractedInstructionalStaffFTEExt_SchoolId ON [tx].[ContractedInstructionalStaffFTEExt](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CTEProgramReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.CTEProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_CTEProgramReportingPeriodAttendance_SchoolId ON [tx].[CTEProgramReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_DescriptorMappingHistory_EducationOrganizationId' AND object_id = OBJECT_ID('tx.DescriptorMappingHistory')) 
BEGIN
    CREATE INDEX IX_DescriptorMappingHistory_EducationOrganizationId ON [tx].[DescriptorMappingHistory](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_ExtendedSchoolYearServicesAttendance_SchoolId' AND object_id = OBJECT_ID('tx.ExtendedSchoolYearServicesAttendance')) 
BEGIN
    CREATE INDEX IX_ExtendedSchoolYearServicesAttendance_SchoolId ON [tx].[ExtendedSchoolYearServicesAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleBilingualESLProgramReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.FlexibleBilingualESLProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleBilingualESLProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleCTEProgramReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.FlexibleCTEProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleCTEProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleCTEProgramReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleRegularProgramReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.FlexibleRegularProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleRegularProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleRegularProgramReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.FlexibleSpecialEducationProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_SchoolId ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PayrollExt_EducationOrganizationId' AND object_id = OBJECT_ID('tx.PayrollExt')) 
BEGIN
    CREATE INDEX IX_PayrollExt_EducationOrganizationId ON [tx].[PayrollExt](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PriorYearActualExt_EducationOrganizationId' AND object_id = OBJECT_ID('tx.PriorYearActualExt')) 
BEGIN
    CREATE INDEX IX_PriorYearActualExt_EducationOrganizationId ON [tx].[PriorYearActualExt](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PriorYearLeaver_SchoolId' AND object_id = OBJECT_ID('tx.PriorYearLeaver')) 
BEGIN
    CREATE INDEX IX_PriorYearLeaver_SchoolId ON [tx].[PriorYearLeaver](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PriorYearLeaverStudentParentAssociation_SchoolId' AND object_id = OBJECT_ID('tx.PriorYearLeaverStudentParentAssociation')) 
BEGIN
    CREATE INDEX IX_PriorYearLeaverStudentParentAssociation_SchoolId ON [tx].[PriorYearLeaverStudentParentAssociation](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_ReportingPeriodExt_SchoolId' AND object_id = OBJECT_ID('tx.ReportingPeriodExt')) 
BEGIN
    CREATE INDEX IX_ReportingPeriodExt_SchoolId ON [tx].[ReportingPeriodExt](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SharedServiceArrangementExt_EducationOrganizationId' AND object_id = OBJECT_ID('tx.SharedServiceArrangementExt')) 
BEGIN
    CREATE INDEX IX_SharedServiceArrangementExt_EducationOrganizationId ON [tx].[SharedServiceArrangementExt](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SpecialEducationProgramReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.SpecialEducationProgramReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_SpecialEducationProgramReportingPeriodAttendance_SchoolId ON [tx].[SpecialEducationProgramReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SpecialProgramsReportingPeriodAttendance_SchoolId' AND object_id = OBJECT_ID('tx.SpecialProgramsReportingPeriodAttendance')) 
BEGIN
    CREATE INDEX IX_SpecialProgramsReportingPeriodAttendance_SchoolId ON [tx].[SpecialProgramsReportingPeriodAttendance](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SSAOrgAssociationExt_EducationOrganizationId' AND object_id = OBJECT_ID('tx.SSAOrgAssociationExt')) 
BEGIN
    CREATE INDEX IX_SSAOrgAssociationExt_EducationOrganizationId ON [tx].[SSAOrgAssociationExt](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentApplication_EducationOrganizationId' AND object_id = OBJECT_ID('tx.StudentApplication')) 
BEGIN
    CREATE INDEX IX_StudentApplication_EducationOrganizationId ON [tx].[StudentApplication](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId' AND object_id = OBJECT_ID('tx.StudentSpecialEducationProgramEligibilityAssociation')) 
BEGIN
    CREATE INDEX IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId ON [tx].[StudentSpecialEducationProgramEligibilityAssociation](EducationOrganizationId) INCLUDE (Id)
END;
