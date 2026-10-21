
DROP INDEX IF EXISTS IX_EmergencyExclusion_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_EmergencyExclusion_EducationOrganizationId ON ne.EmergencyExclusion(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_EmergencyExclusion_StudentUSI ON ne.EmergencyExclusion(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_IdeaEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_IdeaEvent_EducationOrganizationId ON ne.IdeaEvent(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_IdeaEvent_StudentUSI ON ne.IdeaEvent(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PostGraduateActivity_LocalEducationAgencyId;
CREATE INDEX IF NOT EXISTS IX_PostGraduateActivity_LocalEducationAgencyId ON ne.PostGraduateActivity(LocalEducationAgencyId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_PostGraduateActivity_StudentUSI ON ne.PostGraduateActivity(StudentUSI) INCLUDE (AggregateId);
