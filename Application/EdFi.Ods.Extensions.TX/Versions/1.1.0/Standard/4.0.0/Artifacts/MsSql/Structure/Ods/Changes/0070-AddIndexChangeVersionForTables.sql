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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.CourseTranscriptExt') AND name = N'UX_CourseTranscriptExt_ChangeVersion')
    CREATE INDEX [UX_CourseTranscriptExt_ChangeVersion] ON [tx].[CourseTranscriptExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.DescriptorMappingHistory') AND name = N'UX_DescriptorMappingHistory_ChangeVersion')
    CREATE INDEX [UX_DescriptorMappingHistory_ChangeVersion] ON [tx].[DescriptorMappingHistory] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ESYTierOfIntensityAttendance') AND name = N'UX_ESYTierOfIntensityAttendance_ChangeVersion')
    CREATE INDEX [UX_ESYTierOfIntensityAttendance_ChangeVersion] ON [tx].[ESYTierOfIntensityAttendance] ([ChangeVersion] ASC)
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleSpecialEducationTierOfIntensityAttendance') AND name = N'UX_FlexibleSpecialEducationTierOfIntensityAttendance_ChangeVersion')
    CREATE INDEX [UX_FlexibleSpecialEducationTierOfIntensityAttendance_ChangeVersion] ON [tx].[FlexibleSpecialEducationTierOfIntensityAttendance] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.GrievanceExt') AND name = N'UX_GrievanceExt_ChangeVersion')
    CREATE INDEX [UX_GrievanceExt_ChangeVersion] ON [tx].[GrievanceExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.OpenStaffPositionExt') AND name = N'UX_OpenStaffPositionExt_ChangeVersion')
    CREATE INDEX [UX_OpenStaffPositionExt_ChangeVersion] ON [tx].[OpenStaffPositionExt] ([ChangeVersion] ASC)
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearSSAOrgAssociationExt') AND name = N'UX_PriorYearSSAOrgAssociationExt_ChangeVersion')
    CREATE INDEX [UX_PriorYearSSAOrgAssociationExt_ChangeVersion] ON [tx].[PriorYearSSAOrgAssociationExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ReportingPeriodExt') AND name = N'UX_ReportingPeriodExt_ChangeVersion')
    CREATE INDEX [UX_ReportingPeriodExt_ChangeVersion] ON [tx].[ReportingPeriodExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.RequisitionExt') AND name = N'UX_RequisitionExt_ChangeVersion')
    CREATE INDEX [UX_RequisitionExt_ChangeVersion] ON [tx].[RequisitionExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SPEDVideoCameraRequestExt') AND name = N'UX_SPEDVideoCameraRequestExt_ChangeVersion')
    CREATE INDEX [UX_SPEDVideoCameraRequestExt_ChangeVersion] ON [tx].[SPEDVideoCameraRequestExt] ([ChangeVersion] ASC)
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SpecialEducationTierOfIntensityAttendance') AND name = N'UX_SpecialEducationTierOfIntensityAttendance_ChangeVersion')
    CREATE INDEX [UX_SpecialEducationTierOfIntensityAttendance_ChangeVersion] ON [tx].[SpecialEducationTierOfIntensityAttendance] ([ChangeVersion] ASC)
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

