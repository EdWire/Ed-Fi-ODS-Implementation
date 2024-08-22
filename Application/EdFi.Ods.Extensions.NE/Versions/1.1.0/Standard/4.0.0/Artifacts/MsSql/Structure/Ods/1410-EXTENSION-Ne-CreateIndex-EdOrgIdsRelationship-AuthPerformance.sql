
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PostGraduateActivity_LocalEducationAgencyId' AND object_id = OBJECT_ID('ne.PostGraduateActivity')) 
BEGIN
    CREATE INDEX IX_PostGraduateActivity_LocalEducationAgencyId ON [ne].[PostGraduateActivity](LocalEducationAgencyId) INCLUDE (Id)
END;
