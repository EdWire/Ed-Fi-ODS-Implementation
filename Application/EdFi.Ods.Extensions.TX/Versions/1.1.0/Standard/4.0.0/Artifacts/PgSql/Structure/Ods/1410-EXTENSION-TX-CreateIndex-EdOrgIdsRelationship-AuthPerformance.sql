
CREATE INDEX IF NOT EXISTS IX_BasicReportingPeriodAttendance_SchoolId ON tx.BasicReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_BilingualESLProgramReportingPeriodAttendance_SchoolId ON tx.BilingualESLProgramReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_BudgetExt_EducationOrganizationId ON tx.BudgetExt(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_ContractedInstructionalStaffFTEExt_EducationOrganizationId ON tx.ContractedInstructionalStaffFTEExt(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_ContractedInstructionalStaffFTEExt_SchoolId ON tx.ContractedInstructionalStaffFTEExt(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_CTEProgramReportingPeriodAttendance_SchoolId ON tx.CTEProgramReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_DescriptorMappingHistory_EducationOrganizationId ON tx.DescriptorMappingHistory(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_ExtendedSchoolYearServicesAttendance_SchoolId ON tx.ExtendedSchoolYearServicesAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_FlexibleBilingualESLProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_FlexibleCTEProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleCTEProgramReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_FlexibleRegularProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleRegularProgramReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_PayrollExt_EducationOrganizationId ON tx.PayrollExt(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_PriorYearActualExt_EducationOrganizationId ON tx.PriorYearActualExt(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_PriorYearLeaver_SchoolId ON tx.PriorYearLeaver(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_PriorYearLeaverStudentParentAssociation_SchoolId ON tx.PriorYearLeaverStudentParentAssociation(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_ReportingPeriodExt_SchoolId ON tx.ReportingPeriodExt(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_SharedServiceArrangementExt_EducationOrganizationId ON tx.SharedServiceArrangementExt(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_SpecialEducationProgramReportingPeriodAttendance_SchoolId ON tx.SpecialEducationProgramReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_SpecialProgramsReportingPeriodAttendance_SchoolId ON tx.SpecialProgramsReportingPeriodAttendance(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_SSAOrgAssociationExt_EducationOrganizationId ON tx.SSAOrgAssociationExt(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentApplication_EducationOrganizationId ON tx.StudentApplication(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId ON tx.StudentSpecialEducationProgramEligibilityAssociation(EducationOrganizationId) INCLUDE (Id);
