
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SectionEducator_SchoolId' AND object_id = OBJECT_ID('ks.SectionEducator')) 
BEGIN
    CREATE INDEX IX_SectionEducator_SchoolId ON [ks].[SectionEducator](SchoolId) INCLUDE (Id)
END;
