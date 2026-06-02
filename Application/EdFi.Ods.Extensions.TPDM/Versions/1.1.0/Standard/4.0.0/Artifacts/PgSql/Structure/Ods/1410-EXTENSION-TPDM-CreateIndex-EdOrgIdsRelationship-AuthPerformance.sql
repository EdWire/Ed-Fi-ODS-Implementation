
CREATE INDEX IF NOT EXISTS IX_Application_EducationOrganizationId ON tpdm.Application(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_ApplicationEvent_EducationOrganizationId ON tpdm.ApplicationEvent(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_Candidate_EducationOrganizationId ON tpdm.Candidate(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId ON tpdm.CandidateEducatorPreparationProgramAssociation(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_Certification_EducationOrganizationId ON tpdm.Certification(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_CertificationExam_EducationOrganizationId ON tpdm.CertificationExam(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_EducatorPreparationProgram_EducationOrganizationId ON tpdm.EducatorPreparationProgram(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_Evaluation_EducationOrganizationId ON tpdm.Evaluation(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_EvaluationElement_EducationOrganizationId ON tpdm.EvaluationElement(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_EvaluationElementRating_EducationOrganizationId ON tpdm.EvaluationElementRating(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_EvaluationObjective_EducationOrganizationId ON tpdm.EvaluationObjective(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_EvaluationObjectiveRating_EducationOrganizationId ON tpdm.EvaluationObjectiveRating(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_EvaluationRating_EducationOrganizationId ON tpdm.EvaluationRating(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_EvaluationRating_SchoolId ON tpdm.EvaluationRating(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_FieldworkExperience_EducationOrganizationId ON tpdm.FieldworkExperience(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_FieldworkExperience_SchoolId ON tpdm.FieldworkExperience(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_FieldworkExperienceSectionAssociation_SchoolId ON tpdm.FieldworkExperienceSectionAssociation(SchoolId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_Goal_EducationOrganizationId ON tpdm.Goal(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_OpenStaffPositionEvent_EducationOrganizationId ON tpdm.OpenStaffPositionEvent(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_PerformanceEvaluation_EducationOrganizationId ON tpdm.PerformanceEvaluation(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_PerformanceEvaluationRating_EducationOrganizationId ON tpdm.PerformanceEvaluationRating(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_QuantitativeMeasure_EducationOrganizationId ON tpdm.QuantitativeMeasure(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_QuantitativeMeasureScore_EducationOrganizationId ON tpdm.QuantitativeMeasureScore(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_RecruitmentEvent_EducationOrganizationId ON tpdm.RecruitmentEvent(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_RecruitmentEventAttendance_EducationOrganizationId ON tpdm.RecruitmentEventAttendance(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_RubricDimension_EducationOrganizationId ON tpdm.RubricDimension(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StaffEducatorPreparationProgramAssociation_EducationOrganizationId ON tpdm.StaffEducatorPreparationProgramAssociation(EducationOrganizationId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_SurveySectionAggregateResponse_EducationOrganizationId ON tpdm.SurveySectionAggregateResponse(EducationOrganizationId) INCLUDE (Id);
