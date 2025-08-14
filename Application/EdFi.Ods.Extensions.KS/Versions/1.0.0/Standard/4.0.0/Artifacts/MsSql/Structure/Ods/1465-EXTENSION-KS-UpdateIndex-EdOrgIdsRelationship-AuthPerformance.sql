
DROP INDEX IF EXISTS IX_SectionEducator_SchoolId ON [ks].[SectionEducator];
CREATE INDEX IX_SectionEducator_SchoolId ON [ks].[SectionEducator](SchoolId) INCLUDE (AggregateId);
