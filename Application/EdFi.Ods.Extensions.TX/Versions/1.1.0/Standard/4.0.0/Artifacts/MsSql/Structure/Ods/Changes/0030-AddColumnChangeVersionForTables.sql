
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[BasicReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT BasicReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[BasicReportingPeriodAttendance] DROP CONSTRAINT BasicReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD CONSTRAINT BasicReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[BilingualESLProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT BilingualESLProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] DROP CONSTRAINT BilingualESLProgramReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT BilingualESLProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[BudgetExt]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[BudgetExt] ADD [ChangeVersion] [BIGINT] CONSTRAINT BudgetExt_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[BudgetExt] DROP CONSTRAINT BudgetExt_DF_ChangeVersion;
ALTER TABLE [tx].[BudgetExt] ADD CONSTRAINT BudgetExt_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[CTEProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT CTEProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] DROP CONSTRAINT CTEProgramReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD CONSTRAINT CTEProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[ContractedInstructionalStaffFTEExt]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD [ChangeVersion] [BIGINT] CONSTRAINT ContractedInstructionalStaffFTEExt_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] DROP CONSTRAINT ContractedInstructionalStaffFTEExt_DF_ChangeVersion;
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD CONSTRAINT ContractedInstructionalStaffFTEExt_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[DescriptorMappingHistory]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[DescriptorMappingHistory] ADD [ChangeVersion] [BIGINT] CONSTRAINT DescriptorMappingHistory_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[DescriptorMappingHistory] DROP CONSTRAINT DescriptorMappingHistory_DF_ChangeVersion;
ALTER TABLE [tx].[DescriptorMappingHistory] ADD CONSTRAINT DescriptorMappingHistory_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[ExtendedSchoolYearServicesAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT ExtendedSchoolYearServicesAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] DROP CONSTRAINT ExtendedSchoolYearServicesAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD CONSTRAINT ExtendedSchoolYearServicesAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT FlexibleBilingualESLProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] DROP CONSTRAINT FlexibleBilingualESLProgramReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT FlexibleBilingualESLProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleCTEProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT FlexibleCTEProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] DROP CONSTRAINT FlexibleCTEProgramReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD CONSTRAINT FlexibleCTEProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleRegularProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT FlexibleRegularProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] DROP CONSTRAINT FlexibleRegularProgramReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD CONSTRAINT FlexibleRegularProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT FlexibleSpecialEducationProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] DROP CONSTRAINT FlexibleSpecialEducationProgramReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT FlexibleSpecialEducationProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[PayrollExt]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[PayrollExt] ADD [ChangeVersion] [BIGINT] CONSTRAINT PayrollExt_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[PayrollExt] DROP CONSTRAINT PayrollExt_DF_ChangeVersion;
ALTER TABLE [tx].[PayrollExt] ADD CONSTRAINT PayrollExt_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[PriorYearActualExt]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[PriorYearActualExt] ADD [ChangeVersion] [BIGINT] CONSTRAINT PriorYearActualExt_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[PriorYearActualExt] DROP CONSTRAINT PriorYearActualExt_DF_ChangeVersion;
ALTER TABLE [tx].[PriorYearActualExt] ADD CONSTRAINT PriorYearActualExt_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[PriorYearLeaver]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[PriorYearLeaver] ADD [ChangeVersion] [BIGINT] CONSTRAINT PriorYearLeaver_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[PriorYearLeaver] DROP CONSTRAINT PriorYearLeaver_DF_ChangeVersion;
ALTER TABLE [tx].[PriorYearLeaver] ADD CONSTRAINT PriorYearLeaver_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[PriorYearLeaverParent]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[PriorYearLeaverParent] ADD [ChangeVersion] [BIGINT] CONSTRAINT PriorYearLeaverParent_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[PriorYearLeaverParent] DROP CONSTRAINT PriorYearLeaverParent_DF_ChangeVersion;
ALTER TABLE [tx].[PriorYearLeaverParent] ADD CONSTRAINT PriorYearLeaverParent_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[PriorYearLeaverStudentParentAssociation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ADD [ChangeVersion] [BIGINT] CONSTRAINT PriorYearLeaverStudentParentAssociation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] DROP CONSTRAINT PriorYearLeaverStudentParentAssociation_DF_ChangeVersion;
ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ADD CONSTRAINT PriorYearLeaverStudentParentAssociation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[ReportingPeriodExt]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[ReportingPeriodExt] ADD [ChangeVersion] [BIGINT] CONSTRAINT ReportingPeriodExt_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[ReportingPeriodExt] DROP CONSTRAINT ReportingPeriodExt_DF_ChangeVersion;
ALTER TABLE [tx].[ReportingPeriodExt] ADD CONSTRAINT ReportingPeriodExt_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SSAOrgAssociationExt]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD [ChangeVersion] [BIGINT] CONSTRAINT SSAOrgAssociationExt_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[SSAOrgAssociationExt] DROP CONSTRAINT SSAOrgAssociationExt_DF_ChangeVersion;
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD CONSTRAINT SSAOrgAssociationExt_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SharedServiceArrangementExt]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD [ChangeVersion] [BIGINT] CONSTRAINT SharedServiceArrangementExt_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[SharedServiceArrangementExt] DROP CONSTRAINT SharedServiceArrangementExt_DF_ChangeVersion;
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD CONSTRAINT SharedServiceArrangementExt_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SpecialEducationProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT SpecialEducationProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] DROP CONSTRAINT SpecialEducationProgramReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT SpecialEducationProgramReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SpecialProgramsReportingPeriodAttendance]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] CONSTRAINT SpecialProgramsReportingPeriodAttendance_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] DROP CONSTRAINT SpecialProgramsReportingPeriodAttendance_DF_ChangeVersion;
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD CONSTRAINT SpecialProgramsReportingPeriodAttendance_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[StudentApplication]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[StudentApplication] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentApplication_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[StudentApplication] DROP CONSTRAINT StudentApplication_DF_ChangeVersion;
ALTER TABLE [tx].[StudentApplication] ADD CONSTRAINT StudentApplication_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[StudentSpecialEducationProgramEligibilityAssociation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentSpecialEducationProgramEligibilityAssociation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] DROP CONSTRAINT StudentSpecialEducationProgramEligibilityAssociation_DF_ChangeVersion;
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD CONSTRAINT StudentSpecialEducationProgramEligibilityAssociation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


