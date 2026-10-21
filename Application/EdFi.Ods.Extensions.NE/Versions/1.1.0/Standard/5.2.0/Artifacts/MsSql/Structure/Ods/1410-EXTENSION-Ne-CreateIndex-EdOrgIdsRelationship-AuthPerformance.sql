
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EmergencyExclusion_EducationOrganizationId' AND object_id = OBJECT_ID('ne.EmergencyExclusion')) 
BEGIN
    CREATE INDEX IX_EmergencyExclusion_EducationOrganizationId ON [ne].[EmergencyExclusion](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IdeaEvent_EducationOrganizationId' AND object_id = OBJECT_ID('ne.IdeaEvent')) 
BEGIN
    CREATE INDEX IX_IdeaEvent_EducationOrganizationId ON [ne].[IdeaEvent](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PostGraduateActivity_LocalEducationAgencyId' AND object_id = OBJECT_ID('ne.PostGraduateActivity')) 
BEGIN
    CREATE INDEX IX_PostGraduateActivity_LocalEducationAgencyId ON [ne].[PostGraduateActivity](LocalEducationAgencyId) INCLUDE (Id)
END;
