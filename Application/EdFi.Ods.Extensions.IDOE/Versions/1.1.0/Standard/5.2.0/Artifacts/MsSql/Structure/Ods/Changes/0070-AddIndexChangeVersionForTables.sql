BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.AssessmentAccommodation') AND name = N'UX_AssessmentAccommodation_ChangeVersion')
    CREATE INDEX [UX_AssessmentAccommodation_ChangeVersion] ON [idoe].[AssessmentAccommodation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.EducationOrganizationOtherPersonnel') AND name = N'UX_EducationOrganizationOtherPersonnel_ChangeVersion')
    CREATE INDEX [UX_EducationOrganizationOtherPersonnel_ChangeVersion] ON [idoe].[EducationOrganizationOtherPersonnel] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.LocalCapitalizedEquipment') AND name = N'UX_LocalCapitalizedEquipment_ChangeVersion')
    CREATE INDEX [UX_LocalCapitalizedEquipment_ChangeVersion] ON [idoe].[LocalCapitalizedEquipment] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.LocalSubaward') AND name = N'UX_LocalSubaward_ChangeVersion')
    CREATE INDEX [UX_LocalSubaward_ChangeVersion] ON [idoe].[LocalSubaward] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.LocalUnusedLeavePayment') AND name = N'UX_LocalUnusedLeavePayment_ChangeVersion')
    CREATE INDEX [UX_LocalUnusedLeavePayment_ChangeVersion] ON [idoe].[LocalUnusedLeavePayment] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.SectionDimension') AND name = N'UX_SectionDimension_ChangeVersion')
    CREATE INDEX [UX_SectionDimension_ChangeVersion] ON [idoe].[SectionDimension] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.StudentAccommodation') AND name = N'UX_StudentAccommodation_ChangeVersion')
    CREATE INDEX [UX_StudentAccommodation_ChangeVersion] ON [idoe].[StudentAccommodation] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.StudentSchoolGraduationPlan') AND name = N'UX_StudentSchoolGraduationPlan_ChangeVersion')
    CREATE INDEX [UX_StudentSchoolGraduationPlan_ChangeVersion] ON [idoe].[StudentSchoolGraduationPlan] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.SubCategoryDimension') AND name = N'UX_SubCategoryDimension_ChangeVersion')
    CREATE INDEX [UX_SubCategoryDimension_ChangeVersion] ON [idoe].[SubCategoryDimension] ([ChangeVersion] ASC)
    GO
COMMIT

