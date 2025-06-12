BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.AssessmentAccommodation') AND name = N'UX_AssessmentAccommodation_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_AssessmentAccommodation_Id ON [idoe].[AssessmentAccommodation]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.EducationOrganizationOtherPersonnel') AND name = N'UX_EducationOrganizationOtherPersonnel_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationOtherPersonnel_Id ON [idoe].[EducationOrganizationOtherPersonnel]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.LocalCapitalizedEquipment') AND name = N'UX_LocalCapitalizedEquipment_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_LocalCapitalizedEquipment_Id ON [idoe].[LocalCapitalizedEquipment]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.LocalSubaward') AND name = N'UX_LocalSubaward_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_LocalSubaward_Id ON [idoe].[LocalSubaward]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.LocalUnusedLeavePayment') AND name = N'UX_LocalUnusedLeavePayment_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_LocalUnusedLeavePayment_Id ON [idoe].[LocalUnusedLeavePayment]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.SectionDimension') AND name = N'UX_SectionDimension_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SectionDimension_Id ON [idoe].[SectionDimension]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.StudentAccommodation') AND name = N'UX_StudentAccommodation_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentAccommodation_Id ON [idoe].[StudentAccommodation]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.StudentSchoolGraduationPlan') AND name = N'UX_StudentSchoolGraduationPlan_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_StudentSchoolGraduationPlan_Id ON [idoe].[StudentSchoolGraduationPlan]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'idoe.SubCategoryDimension') AND name = N'UX_SubCategoryDimension_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_SubCategoryDimension_Id ON [idoe].[SubCategoryDimension]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

