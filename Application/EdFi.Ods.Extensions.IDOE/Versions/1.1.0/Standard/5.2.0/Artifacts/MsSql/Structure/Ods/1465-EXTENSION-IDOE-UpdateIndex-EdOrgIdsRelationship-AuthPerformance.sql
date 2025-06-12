
DROP INDEX IF EXISTS IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId ON [idoe].[EducationOrganizationOtherPersonnel];
CREATE INDEX IX_EducationOrganizationOtherPersonnel_LocalEducationAgencyId ON [idoe].[EducationOrganizationOtherPersonnel](LocalEducationAgencyId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_LocalCapitalizedEquipment_EducationOrganizationId ON [idoe].[LocalCapitalizedEquipment];
CREATE INDEX IX_LocalCapitalizedEquipment_EducationOrganizationId ON [idoe].[LocalCapitalizedEquipment](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_LocalSubaward_EducationOrganizationId ON [idoe].[LocalSubaward];
CREATE INDEX IX_LocalSubaward_EducationOrganizationId ON [idoe].[LocalSubaward](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_LocalUnusedLeavePayment_EducationOrganizationId ON [idoe].[LocalUnusedLeavePayment];
CREATE INDEX IX_LocalUnusedLeavePayment_EducationOrganizationId ON [idoe].[LocalUnusedLeavePayment](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentAccommodation_EducationOrganizationId ON [idoe].[StudentAccommodation];
CREATE INDEX IX_StudentAccommodation_EducationOrganizationId ON [idoe].[StudentAccommodation](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAccommodation_StudentUSI' AND object_id = OBJECT_ID('idoe.StudentAccommodation')) 
BEGIN
    CREATE INDEX IX_StudentAccommodation_StudentUSI ON [idoe].[StudentAccommodation](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentSchoolGraduationPlan_EducationOrganizationId ON [idoe].[StudentSchoolGraduationPlan];
CREATE INDEX IX_StudentSchoolGraduationPlan_EducationOrganizationId ON [idoe].[StudentSchoolGraduationPlan](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentSchoolGraduationPlan_SchoolId ON [idoe].[StudentSchoolGraduationPlan];
CREATE INDEX IX_StudentSchoolGraduationPlan_SchoolId ON [idoe].[StudentSchoolGraduationPlan](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentSchoolGraduationPlan_StudentUSI' AND object_id = OBJECT_ID('idoe.StudentSchoolGraduationPlan')) 
BEGIN
    CREATE INDEX IX_StudentSchoolGraduationPlan_StudentUSI ON [idoe].[StudentSchoolGraduationPlan](StudentUSI) INCLUDE (AggregateId)
END;
