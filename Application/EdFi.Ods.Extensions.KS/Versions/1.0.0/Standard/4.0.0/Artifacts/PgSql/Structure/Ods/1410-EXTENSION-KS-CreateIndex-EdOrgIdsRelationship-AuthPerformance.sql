
CREATE INDEX IF NOT EXISTS IX_SectionEducator_SchoolId ON ks.SectionEducator(SchoolId) INCLUDE (Id);
