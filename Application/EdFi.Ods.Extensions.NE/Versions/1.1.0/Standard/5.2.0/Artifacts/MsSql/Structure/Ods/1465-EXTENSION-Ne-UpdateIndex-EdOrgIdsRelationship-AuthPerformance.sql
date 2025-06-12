
DROP INDEX IF EXISTS IX_PostGraduateActivity_LocalEducationAgencyId ON [ne].[PostGraduateActivity];
CREATE INDEX IX_PostGraduateActivity_LocalEducationAgencyId ON [ne].[PostGraduateActivity](LocalEducationAgencyId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PostGraduateActivity_StudentUSI' AND object_id = OBJECT_ID('ne.PostGraduateActivity')) 
BEGIN
    CREATE INDEX IX_PostGraduateActivity_StudentUSI ON [ne].[PostGraduateActivity](StudentUSI) INCLUDE (AggregateId)
END;
