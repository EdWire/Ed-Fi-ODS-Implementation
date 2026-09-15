
DROP INDEX IF EXISTS IX_BasicReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_BasicReportingPeriodAttendance_SchoolId ON tx.BasicReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_BasicReportingPeriodAttendance_StudentUSI ON tx.BasicReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_BilingualESLProgramReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_BilingualESLProgramReportingPeriodAttendance_SchoolId ON tx.BilingualESLProgramReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_BilingualESLProgramReportingPeriodAttendance_StudentUSI ON tx.BilingualESLProgramReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_BudgetExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_BudgetExt_EducationOrganizationId ON tx.BudgetExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ContractedInstructionalStaffFTEExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_ContractedInstructionalStaffFTEExt_EducationOrganizationId ON tx.ContractedInstructionalStaffFTEExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ContractedInstructionalStaffFTEExt_SchoolId;
CREATE INDEX IF NOT EXISTS IX_ContractedInstructionalStaffFTEExt_SchoolId ON tx.ContractedInstructionalStaffFTEExt(SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CourseTranscriptExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_CourseTranscriptExt_EducationOrganizationId ON tx.CourseTranscriptExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CourseTranscriptExt_SchoolId;
CREATE INDEX IF NOT EXISTS IX_CourseTranscriptExt_SchoolId ON tx.CourseTranscriptExt(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_CourseTranscriptExt_StudentUSI ON tx.CourseTranscriptExt(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CTEProgramReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_CTEProgramReportingPeriodAttendance_SchoolId ON tx.CTEProgramReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_CTEProgramReportingPeriodAttendance_StudentUSI ON tx.CTEProgramReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_DescriptorMappingHistory_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_DescriptorMappingHistory_EducationOrganizationId ON tx.DescriptorMappingHistory(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ESYTierOfIntensityAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_ESYTierOfIntensityAttendance_SchoolId ON tx.ESYTierOfIntensityAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_ESYTierOfIntensityAttendance_StudentUSI ON tx.ESYTierOfIntensityAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FlexibleBilingualESLProgramReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_FlexibleBilingualESLProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FlexibleBilingualESLProgramReportingPeriodAttendance_StudentUSI ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FlexibleCTEProgramReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_FlexibleCTEProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleCTEProgramReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FlexibleCTEProgramReportingPeriodAttendance_StudentUSI ON tx.FlexibleCTEProgramReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FlexibleRegularProgramReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_FlexibleRegularProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleRegularProgramReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FlexibleRegularProgramReportingPeriodAttendance_StudentUSI ON tx.FlexibleRegularProgramReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_SchoolId ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_StudentUSI ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FlexibleSpecialEducationTierOfIntensityAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_FlexibleSpecialEducationTierOfIntensityAttendance_SchoolId ON tx.FlexibleSpecialEducationTierOfIntensityAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FlexibleSpecialEducationTierOfIntensityAttendance_StudentUSI ON tx.FlexibleSpecialEducationTierOfIntensityAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_GrievanceExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_GrievanceExt_EducationOrganizationId ON tx.GrievanceExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_OpenStaffPositionExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_OpenStaffPositionExt_EducationOrganizationId ON tx.OpenStaffPositionExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PayrollExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_PayrollExt_EducationOrganizationId ON tx.PayrollExt(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_PayrollExt_StaffUSI ON tx.PayrollExt(StaffUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PriorYearActualExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_PriorYearActualExt_EducationOrganizationId ON tx.PriorYearActualExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PriorYearSSAOrgAssociationExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_PriorYearSSAOrgAssociationExt_EducationOrganizationId ON tx.PriorYearSSAOrgAssociationExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ReportingPeriodExt_SchoolId;
CREATE INDEX IF NOT EXISTS IX_ReportingPeriodExt_SchoolId ON tx.ReportingPeriodExt(SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_RequisitionExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_RequisitionExt_EducationOrganizationId ON tx.RequisitionExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SharedServiceArrangementExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_SharedServiceArrangementExt_EducationOrganizationId ON tx.SharedServiceArrangementExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SpecialEducationProgramReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_SpecialEducationProgramReportingPeriodAttendance_SchoolId ON tx.SpecialEducationProgramReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_SpecialEducationProgramReportingPeriodAttendance_StudentUSI ON tx.SpecialEducationProgramReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SpecialEducationTierOfIntensityAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_SpecialEducationTierOfIntensityAttendance_SchoolId ON tx.SpecialEducationTierOfIntensityAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_SpecialEducationTierOfIntensityAttendance_StudentUSI ON tx.SpecialEducationTierOfIntensityAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SpecialProgramsReportingPeriodAttendance_SchoolId;
CREATE INDEX IF NOT EXISTS IX_SpecialProgramsReportingPeriodAttendance_SchoolId ON tx.SpecialProgramsReportingPeriodAttendance(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_SpecialProgramsReportingPeriodAttendance_StudentUSI ON tx.SpecialProgramsReportingPeriodAttendance(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SPEDVideoCameraRequestExt_SchoolId;
CREATE INDEX IF NOT EXISTS IX_SPEDVideoCameraRequestExt_SchoolId ON tx.SPEDVideoCameraRequestExt(SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SSAOrgAssociationExt_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_SSAOrgAssociationExt_EducationOrganizationId ON tx.SSAOrgAssociationExt(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentApplication_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentApplication_EducationOrganizationId ON tx.StudentApplication(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentSpecialEducationProgramEligibilityAssociation_EducationOrganizationId ON tx.StudentSpecialEducationProgramEligibilityAssociation(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentSpecialEducationProgramEligibilityAssociation_StudentUSI ON tx.StudentSpecialEducationProgramEligibilityAssociation(StudentUSI) INCLUDE (AggregateId);
