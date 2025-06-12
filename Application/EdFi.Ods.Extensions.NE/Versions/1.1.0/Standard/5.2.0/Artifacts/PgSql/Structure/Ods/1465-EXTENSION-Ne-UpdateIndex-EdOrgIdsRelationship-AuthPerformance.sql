
DROP INDEX IF EXISTS IX_PostGraduateActivity_LocalEducationAgencyId;
CREATE INDEX IF NOT EXISTS IX_PostGraduateActivity_LocalEducationAgencyId ON ne.PostGraduateActivity(LocalEducationAgencyId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_PostGraduateActivity_StudentUSI ON ne.PostGraduateActivity(StudentUSI) INCLUDE (AggregateId);
