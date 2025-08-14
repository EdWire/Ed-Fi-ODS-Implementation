
DROP INDEX IF EXISTS IX_SectionEducator_SchoolId;
CREATE INDEX IF NOT EXISTS IX_SectionEducator_SchoolId ON ks.SectionEducator(SchoolId) INCLUDE (AggregateId);
