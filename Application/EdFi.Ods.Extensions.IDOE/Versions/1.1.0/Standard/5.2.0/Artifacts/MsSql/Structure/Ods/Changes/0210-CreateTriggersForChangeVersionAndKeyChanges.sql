DROP TRIGGER IF EXISTS [idoe].[idoe_AssessmentAccommodation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_AssessmentAccommodation_TR_UpdateChangeVersion] ON [idoe].[AssessmentAccommodation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[AssessmentAccommodation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[AssessmentAccommodation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_EducationOrganizationOtherPersonnel_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_EducationOrganizationOtherPersonnel_TR_UpdateChangeVersion] ON [idoe].[EducationOrganizationOtherPersonnel] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[EducationOrganizationOtherPersonnel]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[EducationOrganizationOtherPersonnel] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_LocalCapitalizedEquipment_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_LocalCapitalizedEquipment_TR_UpdateChangeVersion] ON [idoe].[LocalCapitalizedEquipment] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[LocalCapitalizedEquipment]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[LocalCapitalizedEquipment] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_LocalSubaward_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_LocalSubaward_TR_UpdateChangeVersion] ON [idoe].[LocalSubaward] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[LocalSubaward]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[LocalSubaward] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_LocalUnusedLeavePayment_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_LocalUnusedLeavePayment_TR_UpdateChangeVersion] ON [idoe].[LocalUnusedLeavePayment] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[LocalUnusedLeavePayment]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[LocalUnusedLeavePayment] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_SectionDimension_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_SectionDimension_TR_UpdateChangeVersion] ON [idoe].[SectionDimension] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[SectionDimension]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[SectionDimension] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_StudentAccommodation_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_StudentAccommodation_TR_UpdateChangeVersion] ON [idoe].[StudentAccommodation] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[StudentAccommodation]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[StudentAccommodation] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_StudentSchoolGraduationPlan_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_StudentSchoolGraduationPlan_TR_UpdateChangeVersion] ON [idoe].[StudentSchoolGraduationPlan] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[StudentSchoolGraduationPlan]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[StudentSchoolGraduationPlan] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [idoe].[idoe_SubCategoryDimension_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [idoe].[idoe_SubCategoryDimension_TR_UpdateChangeVersion] ON [idoe].[SubCategoryDimension] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [idoe].[SubCategoryDimension]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [idoe].[SubCategoryDimension] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

