BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ActualExt') AND name = N'UX_ActualExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ActualExt_Id ON [tx].[ActualExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.BasicReportingPeriodAttendance') AND name = N'UX_BasicReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_BasicReportingPeriodAttendance_Id ON [tx].[BasicReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.BilingualESLProgramReportingPeriodAttendance') AND name = N'UX_BilingualESLProgramReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_BilingualESLProgramReportingPeriodAttendance_Id ON [tx].[BilingualESLProgramReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.BudgetExt') AND name = N'UX_BudgetExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_BudgetExt_Id ON [tx].[BudgetExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ContractedInstructionalStaffFTEExt') AND name = N'UX_ContractedInstructionalStaffFTEExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ContractedInstructionalStaffFTEExt_Id ON [tx].[ContractedInstructionalStaffFTEExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.CTEProgramReportingPeriodAttendance') AND name = N'UX_CTEProgramReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_CTEProgramReportingPeriodAttendance_Id ON [tx].[CTEProgramReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.DescriptorMappingHistory') AND name = N'UX_DescriptorMappingHistory_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_DescriptorMappingHistory_Id ON [tx].[DescriptorMappingHistory]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ExtendedSchoolYearServicesAttendance') AND name = N'UX_ExtendedSchoolYearServicesAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ExtendedSchoolYearServicesAttendance_Id ON [tx].[ExtendedSchoolYearServicesAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleBilingualESLProgramReportingPeriodAttendance') AND name = N'UX_FlexibleBilingualESLProgramReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_FlexibleBilingualESLProgramReportingPeriodAttendance_Id ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleCTEProgramReportingPeriodAttendance') AND name = N'UX_FlexibleCTEProgramReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_FlexibleCTEProgramReportingPeriodAttendance_Id ON [tx].[FlexibleCTEProgramReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleRegularProgramReportingPeriodAttendance') AND name = N'UX_FlexibleRegularProgramReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_FlexibleRegularProgramReportingPeriodAttendance_Id ON [tx].[FlexibleRegularProgramReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleSpecialEducationProgramReportingPeriodAttendance') AND name = N'UX_FlexibleSpecialEducationProgramReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_FlexibleSpecialEducationProgramReportingPeriodAttendance_Id ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PayrollExt') AND name = N'UX_PayrollExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PayrollExt_Id ON [tx].[PayrollExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearLeaver') AND name = N'UX_PriorYearLeaver_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PriorYearLeaver_Id ON [tx].[PriorYearLeaver]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearLeaverParent') AND name = N'UX_PriorYearLeaverParent_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PriorYearLeaverParent_Id ON [tx].[PriorYearLeaverParent]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearLeaverStudentParentAssociation') AND name = N'UX_PriorYearLeaverStudentParentAssociation_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PriorYearLeaverStudentParentAssociation_Id ON [tx].[PriorYearLeaverStudentParentAssociation]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ReportingPeriodExt') AND name = N'UX_ReportingPeriodExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ReportingPeriodExt_Id ON [tx].[ReportingPeriodExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SharedServiceArrangementExt') AND name = N'UX_SharedServiceArrangementExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SharedServiceArrangementExt_Id ON [tx].[SharedServiceArrangementExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SpecialEducationProgramReportingPeriodAttendance') AND name = N'UX_SpecialEducationProgramReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SpecialEducationProgramReportingPeriodAttendance_Id ON [tx].[SpecialEducationProgramReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SpecialProgramsReportingPeriodAttendance') AND name = N'UX_SpecialProgramsReportingPeriodAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SpecialProgramsReportingPeriodAttendance_Id ON [tx].[SpecialProgramsReportingPeriodAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SSAOrgAssociationExt') AND name = N'UX_SSAOrgAssociationExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SSAOrgAssociationExt_Id ON [tx].[SSAOrgAssociationExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.StudentApplication') AND name = N'UX_StudentApplication_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentApplication_Id ON [tx].[StudentApplication]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.StudentSpecialEducationProgramEligibilityAssociation') AND name = N'UX_StudentSpecialEducationProgramEligibilityAssociation_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentSpecialEducationProgramEligibilityAssociation_Id ON [tx].[StudentSpecialEducationProgramEligibilityAssociation]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

