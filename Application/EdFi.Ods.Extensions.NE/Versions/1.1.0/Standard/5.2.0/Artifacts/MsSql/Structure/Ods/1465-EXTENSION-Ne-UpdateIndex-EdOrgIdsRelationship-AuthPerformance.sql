
DROP INDEX IF EXISTS IX_EmergencyExclusion_EducationOrganizationId ON [ne].[EmergencyExclusion];
CREATE INDEX IX_EmergencyExclusion_EducationOrganizationId ON [ne].[EmergencyExclusion](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EmergencyExclusion_StudentUSI' AND object_id = OBJECT_ID('ne.EmergencyExclusion')) 
BEGIN
    CREATE INDEX IX_EmergencyExclusion_StudentUSI ON [ne].[EmergencyExclusion](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_IdeaEvent_EducationOrganizationId ON [ne].[IdeaEvent];
CREATE INDEX IX_IdeaEvent_EducationOrganizationId ON [ne].[IdeaEvent](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_IdeaEvent_StudentUSI' AND object_id = OBJECT_ID('ne.IdeaEvent')) 
BEGIN
    CREATE INDEX IX_IdeaEvent_StudentUSI ON [ne].[IdeaEvent](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_PostGraduateActivity_LocalEducationAgencyId ON [ne].[PostGraduateActivity];
CREATE INDEX IX_PostGraduateActivity_LocalEducationAgencyId ON [ne].[PostGraduateActivity](LocalEducationAgencyId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PostGraduateActivity_StudentUSI' AND object_id = OBJECT_ID('ne.PostGraduateActivity')) 
BEGIN
    CREATE INDEX IX_PostGraduateActivity_StudentUSI ON [ne].[PostGraduateActivity](StudentUSI) INCLUDE (AggregateId)
END;
