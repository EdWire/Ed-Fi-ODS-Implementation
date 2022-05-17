CREATE TRIGGER [tx].[tx_ActualExt_TR_UpdateChangeVersion] ON [tx].[ActualExt] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[ActualExt]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[ActualExt] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_AsOfStatusALeavers_TR_UpdateChangeVersion] ON [tx].[AsOfStatusALeavers] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[AsOfStatusALeavers]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[AsOfStatusALeavers] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_BasicReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[BasicReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[BasicReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[BasicReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_BilingualESLProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[BilingualESLProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[BilingualESLProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[BilingualESLProgramReportingPeriodAttendance] u
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

CREATE TRIGGER [tx].[tx_CTEProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[CTEProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[CTEProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[CTEProgramReportingPeriodAttendance] u
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

CREATE TRIGGER [tx].[tx_ExtendedSchoolYearServicesAttendance_TR_UpdateChangeVersion] ON [tx].[ExtendedSchoolYearServicesAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[ExtendedSchoolYearServicesAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[ExtendedSchoolYearServicesAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_FlexibleBilingualESLProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_FlexibleCTEProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleCTEProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleCTEProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_FlexibleRegularProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleRegularProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleRegularProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_FlexibleSpecialEducationProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] u
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

CREATE TRIGGER [tx].[tx_SpecialEducationProgramReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[SpecialEducationProgramReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SpecialEducationProgramReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SpecialEducationProgramReportingPeriodAttendance] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

CREATE TRIGGER [tx].[tx_SpecialProgramsReportingPeriodAttendance_TR_UpdateChangeVersion] ON [tx].[SpecialProgramsReportingPeriodAttendance] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [tx].[SpecialProgramsReportingPeriodAttendance]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [tx].[SpecialProgramsReportingPeriodAttendance] u
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

