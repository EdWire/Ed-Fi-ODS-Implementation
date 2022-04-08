CREATE TRIGGER [tx].[tx_ActualExt_TR_UpdateChangeVersion] ON [tx].[ActualExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[ActualExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[ActualExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_AsOfStatusALeaver_TR_UpdateChangeVersion] ON [tx].[AsOfStatusALeaver] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[AsOfStatusALeaver]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[AsOfStatusALeaver] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_BudgetExt_TR_UpdateChangeVersion] ON [tx].[BudgetExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[BudgetExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[BudgetExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_ContractedInstructionalStaffFTEExt_TR_UpdateChangeVersion] ON [tx].[ContractedInstructionalStaffFTEExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[ContractedInstructionalStaffFTEExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[ContractedInstructionalStaffFTEExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_PayrollExt_TR_UpdateChangeVersion] ON [tx].[PayrollExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[PayrollExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[PayrollExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_SSAOrgAssociationExt_TR_UpdateChangeVersion] ON [tx].[SSAOrgAssociationExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SSAOrgAssociationExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SSAOrgAssociationExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_SharedServiceArrangementExt_TR_UpdateChangeVersion] ON [tx].[SharedServiceArrangementExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SharedServiceArrangementExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SharedServiceArrangementExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_StudentApplication_TR_UpdateChangeVersion] ON [tx].[StudentApplication] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[StudentApplication]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[StudentApplication] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_StudentSpecialEducationProgramEligibilityAssociation_TR_UpdateChangeVersion] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[StudentSpecialEducationProgramEligibilityAssociation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[StudentSpecialEducationProgramEligibilityAssociation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

