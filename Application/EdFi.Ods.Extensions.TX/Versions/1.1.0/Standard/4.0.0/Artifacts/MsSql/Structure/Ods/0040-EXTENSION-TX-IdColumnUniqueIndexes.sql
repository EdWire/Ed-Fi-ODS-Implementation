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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.CourseTranscriptExt') AND name = N'UX_CourseTranscriptExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_CourseTranscriptExt_Id ON [tx].[CourseTranscriptExt]
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ESYTierOfIntensityAttendance') AND name = N'UX_ESYTierOfIntensityAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ESYTierOfIntensityAttendance_Id ON [tx].[ESYTierOfIntensityAttendance]
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.FlexibleSpecialEducationTierOfIntensityAttendance') AND name = N'UX_FlexibleSpecialEducationTierOfIntensityAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_FlexibleSpecialEducationTierOfIntensityAttendance_Id ON [tx].[FlexibleSpecialEducationTierOfIntensityAttendance]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.GrievanceExt') AND name = N'UX_GrievanceExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_GrievanceExt_Id ON [tx].[GrievanceExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.OpenStaffPositionExt') AND name = N'UX_OpenStaffPositionExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_OpenStaffPositionExt_Id ON [tx].[OpenStaffPositionExt]
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearActualExt') AND name = N'UX_PriorYearActualExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PriorYearActualExt_Id ON [tx].[PriorYearActualExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PriorYearSSAOrgAssociationExt') AND name = N'UX_PriorYearSSAOrgAssociationExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PriorYearSSAOrgAssociationExt_Id ON [tx].[PriorYearSSAOrgAssociationExt]
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.RequisitionExt') AND name = N'UX_RequisitionExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_RequisitionExt_Id ON [tx].[RequisitionExt]
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SpecialEducationTierOfIntensityAttendance') AND name = N'UX_SpecialEducationTierOfIntensityAttendance_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SpecialEducationTierOfIntensityAttendance_Id ON [tx].[SpecialEducationTierOfIntensityAttendance]
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.SPEDVideoCameraRequestExt') AND name = N'UX_SPEDVideoCameraRequestExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SPEDVideoCameraRequestExt_Id ON [tx].[SPEDVideoCameraRequestExt]
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

