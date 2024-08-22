
CREATE INDEX IF NOT EXISTS IX_PostGraduateActivity_LocalEducationAgencyId ON ne.PostGraduateActivity(LocalEducationAgencyId) INCLUDE (Id);
