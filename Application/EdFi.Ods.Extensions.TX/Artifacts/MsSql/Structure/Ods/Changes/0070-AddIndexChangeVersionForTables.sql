BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ActualExt') AND name = N'UX_ActualExt_ChangeVersion')
    CREATE INDEX [UX_ActualExt_ChangeVersion] ON [tx].[ActualExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.AsOfStatusALeaver') AND name = N'UX_AsOfStatusALeaver_ChangeVersion')
    CREATE INDEX [UX_AsOfStatusALeaver_ChangeVersion] ON [tx].[AsOfStatusALeaver] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.BudgetExt') AND name = N'UX_BudgetExt_ChangeVersion')
    CREATE INDEX [UX_BudgetExt_ChangeVersion] ON [tx].[BudgetExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.ContractedInstructionalStaffFTEExt') AND name = N'UX_ContractedInstructionalStaffFTEExt_ChangeVersion')
    CREATE INDEX [UX_ContractedInstructionalStaffFTEExt_ChangeVersion] ON [tx].[ContractedInstructionalStaffFTEExt] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.PayrollExt') AND name = N'UX_PayrollExt_ChangeVersion')
    CREATE INDEX [UX_PayrollExt_ChangeVersion] ON [tx].[PayrollExt] ([ChangeVersion] ASC)
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
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.StudentApplication') AND name = N'UX_StudentApplication_ChangeVersion')
    CREATE INDEX [UX_StudentApplication_ChangeVersion] ON [tx].[StudentApplication] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'tx.StudentSpecialEducationProgramEligibilityAssociation') AND name = N'UX_StudentSpecialEducationProgramEligibilityAssociation_ChangeVersion')
    CREATE INDEX [UX_StudentSpecialEducationProgramEligibilityAssociation_ChangeVersion] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] ([ChangeVersion] ASC)
    GO
COMMIT

