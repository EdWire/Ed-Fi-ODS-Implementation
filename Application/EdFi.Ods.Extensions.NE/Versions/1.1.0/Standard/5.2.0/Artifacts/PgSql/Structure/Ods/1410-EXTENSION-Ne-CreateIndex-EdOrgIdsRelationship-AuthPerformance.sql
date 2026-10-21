
CREATE INDEX IF NOT EXISTS IX_EmergencyExclusion_EducationOrganizationId ON ne.EmergencyExclusion(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_IdeaEvent_EducationOrganizationId ON ne.IdeaEvent(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_PostGraduateActivity_LocalEducationAgencyId ON ne.PostGraduateActivity(LocalEducationAgencyId) INCLUDE (Id);
