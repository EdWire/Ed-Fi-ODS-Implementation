BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ActualExt') AND name = N'UX_ActualExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_ActualExt_Id ON [tx].[ActualExt]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.AsOfStatusALeaver') AND name = N'UX_AsOfStatusALeaver_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_AsOfStatusALeaver_Id ON [tx].[AsOfStatusALeaver]
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PayrollExt') AND name = N'UX_PayrollExt_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PayrollExt_Id ON [tx].[PayrollExt]
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

