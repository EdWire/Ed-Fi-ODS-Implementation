
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId' AND object_id = OBJECT_ID('idoe.EducationOrganizationOtherPersonnel')) 
BEGIN
    CREATE INDEX IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId ON [idoe].[EducationOrganizationOtherPersonnel](LocalEducationAgencyId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_LocalCapitalizedEquipment_EducationOrganizationId' AND object_id = OBJECT_ID('idoe.LocalCapitalizedEquipment')) 
BEGIN
    CREATE INDEX IX_LocalCapitalizedEquipment_EducationOrganizationId ON [idoe].[LocalCapitalizedEquipment](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_LocalSubaward_EducationOrganizationId' AND object_id = OBJECT_ID('idoe.LocalSubaward')) 
BEGIN
    CREATE INDEX IX_LocalSubaward_EducationOrganizationId ON [idoe].[LocalSubaward](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_LocalUnusedLeavePayment_EducationOrganizationId' AND object_id = OBJECT_ID('idoe.LocalUnusedLeavePayment')) 
BEGIN
    CREATE INDEX IX_LocalUnusedLeavePayment_EducationOrganizationId ON [idoe].[LocalUnusedLeavePayment](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAccommodation_EducationOrganizationId' AND object_id = OBJECT_ID('idoe.StudentAccommodation')) 
BEGIN
    CREATE INDEX IX_StudentAccommodation_EducationOrganizationId ON [idoe].[StudentAccommodation](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentSchoolGraduationPlan_EducationOrganizationId' AND object_id = OBJECT_ID('idoe.StudentSchoolGraduationPlan')) 
BEGIN
    CREATE INDEX IX_StudentSchoolGraduationPlan_EducationOrganizationId ON [idoe].[StudentSchoolGraduationPlan](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentSchoolGraduationPlan_SchoolId' AND object_id = OBJECT_ID('idoe.StudentSchoolGraduationPlan')) 
BEGIN
    CREATE INDEX IX_StudentSchoolGraduationPlan_SchoolId ON [idoe].[StudentSchoolGraduationPlan](SchoolId) INCLUDE (Id)
END;
