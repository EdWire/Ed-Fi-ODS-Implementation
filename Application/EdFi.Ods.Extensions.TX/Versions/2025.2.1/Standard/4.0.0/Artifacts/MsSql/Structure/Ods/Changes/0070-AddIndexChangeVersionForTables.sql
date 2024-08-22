BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.BasicReportingPeriodAttendance') AND name = N'UX_BasicReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_BasicReportingPeriodAttendance_ChangeVersion] ON [tx].[BasicReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.BilingualESLProgramReportingPeriodAttendance') AND name = N'UX_BilingualESLProgramReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_BilingualESLProgramReportingPeriodAttendance_ChangeVersion] ON [tx].[BilingualESLProgramReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.BudgetExt') AND name = N'UX_BudgetExt_ChangeVersion')
    CREATE INDEX [UX_BudgetExt_ChangeVersion] ON [tx].[BudgetExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.CTEProgramReportingPeriodAttendance') AND name = N'UX_CTEProgramReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_CTEProgramReportingPeriodAttendance_ChangeVersion] ON [tx].[CTEProgramReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ContractedInstructionalStaffFTEExt') AND name = N'UX_ContractedInstructionalStaffFTEExt_ChangeVersion')
    CREATE INDEX [UX_ContractedInstructionalStaffFTEExt_ChangeVersion] ON [tx].[ContractedInstructionalStaffFTEExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.DescriptorMappingHistory') AND name = N'UX_DescriptorMappingHistory_ChangeVersion')
    CREATE INDEX [UX_DescriptorMappingHistory_ChangeVersion] ON [tx].[DescriptorMappingHistory] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ExtendedSchoolYearServicesAttendance') AND name = N'UX_ExtendedSchoolYearServicesAttendance_ChangeVersion')
    CREATE INDEX [UX_ExtendedSchoolYearServicesAttendance_ChangeVersion] ON [tx].[ExtendedSchoolYearServicesAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleBilingualESLProgramReportingPeriodAttendance') AND name = N'UX_FlexibleBilingualESLProgramReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_FlexibleBilingualESLProgramReportingPeriodAttendance_ChangeVersion] ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleCTEProgramReportingPeriodAttendance') AND name = N'UX_FlexibleCTEProgramReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_FlexibleCTEProgramReportingPeriodAttendance_ChangeVersion] ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleRegularProgramReportingPeriodAttendance') AND name = N'UX_FlexibleRegularProgramReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_FlexibleRegularProgramReportingPeriodAttendance_ChangeVersion] ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleSpecialEducationProgramReportingPeriodAttendance') AND name = N'UX_FlexibleSpecialEducationProgramReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_FlexibleSpecialEducationProgramReportingPeriodAttendance_ChangeVersion] ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PayrollExt') AND name = N'UX_PayrollExt_ChangeVersion')
    CREATE INDEX [UX_PayrollExt_ChangeVersion] ON [tx].[PayrollExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearActualExt') AND name = N'UX_PriorYearActualExt_ChangeVersion')
    CREATE INDEX [UX_PriorYearActualExt_ChangeVersion] ON [tx].[PriorYearActualExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearLeaver') AND name = N'UX_PriorYearLeaver_ChangeVersion')
    CREATE INDEX [UX_PriorYearLeaver_ChangeVersion] ON [tx].[PriorYearLeaver] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearLeaverParent') AND name = N'UX_PriorYearLeaverParent_ChangeVersion')
    CREATE INDEX [UX_PriorYearLeaverParent_ChangeVersion] ON [tx].[PriorYearLeaverParent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearLeaverStudentParentAssociation') AND name = N'UX_PriorYearLeaverStudentParentAssociation_ChangeVersion')
    CREATE INDEX [UX_PriorYearLeaverStudentParentAssociation_ChangeVersion] ON [tx].[PriorYearLeaverStudentParentAssociation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ReportingPeriodExt') AND name = N'UX_ReportingPeriodExt_ChangeVersion')
    CREATE INDEX [UX_ReportingPeriodExt_ChangeVersion] ON [tx].[ReportingPeriodExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SSAOrgAssociationExt') AND name = N'UX_SSAOrgAssociationExt_ChangeVersion')
    CREATE INDEX [UX_SSAOrgAssociationExt_ChangeVersion] ON [tx].[SSAOrgAssociationExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SharedServiceArrangementExt') AND name = N'UX_SharedServiceArrangementExt_ChangeVersion')
    CREATE INDEX [UX_SharedServiceArrangementExt_ChangeVersion] ON [tx].[SharedServiceArrangementExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SpecialEducationProgramReportingPeriodAttendance') AND name = N'UX_SpecialEducationProgramReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_SpecialEducationProgramReportingPeriodAttendance_ChangeVersion] ON [tx].[SpecialEducationProgramReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SpecialProgramsReportingPeriodAttendance') AND name = N'UX_SpecialProgramsReportingPeriodAttendance_ChangeVersion')
    CREATE INDEX [UX_SpecialProgramsReportingPeriodAttendance_ChangeVersion] ON [tx].[SpecialProgramsReportingPeriodAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.StudentApplication') AND name = N'UX_StudentApplication_ChangeVersion')
    CREATE INDEX [UX_StudentApplication_ChangeVersion] ON [tx].[StudentApplication] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.StudentSpecialEducationProgramEligibilityAssociation') AND name = N'UX_StudentSpecialEducationProgramEligibilityAssociation_ChangeVersion')
    CREATE INDEX [UX_StudentSpecialEducationProgramEligibilityAssociation_ChangeVersion] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] ([ChangeVersion] ASC)
    GO
COMMIT

