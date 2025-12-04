
DROP INDEX IF EXISTS IX_Application_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_Application_EducationOrganizationId ON tpdm.Application(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ApplicationEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_ApplicationEvent_EducationOrganizationId ON tpdm.ApplicationEvent(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Candidate_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_Candidate_EducationOrganizationId ON tpdm.Candidate(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId ON tpdm.CandidateEducatorPreparationProgramAssociation(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_CandidateRelationshipToStaffAssociation_StaffUSI ON tpdm.CandidateRelationshipToStaffAssociation(StaffUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Certification_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_Certification_EducationOrganizationId ON tpdm.Certification(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CertificationExam_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_CertificationExam_EducationOrganizationId ON tpdm.CertificationExam(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_CertificationExamResult_CertificationExamStudentUSI ON tpdm.CertificationExamResult(CertificationExamStudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EducatorPreparationProgram_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_EducatorPreparationProgram_EducationOrganizationId ON tpdm.EducatorPreparationProgram(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Evaluation_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_Evaluation_EducationOrganizationId ON tpdm.Evaluation(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationElement_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_EvaluationElement_EducationOrganizationId ON tpdm.EvaluationElement(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationElementRating_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_EvaluationElementRating_EducationOrganizationId ON tpdm.EvaluationElementRating(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationObjective_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_EvaluationObjective_EducationOrganizationId ON tpdm.EvaluationObjective(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationObjectiveRating_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_EvaluationObjectiveRating_EducationOrganizationId ON tpdm.EvaluationObjectiveRating(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationRating_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_EvaluationRating_EducationOrganizationId ON tpdm.EvaluationRating(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationRating_SchoolId;
CREATE INDEX IF NOT EXISTS IX_EvaluationRating_SchoolId ON tpdm.EvaluationRating(SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FieldworkExperience_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_FieldworkExperience_EducationOrganizationId ON tpdm.FieldworkExperience(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FieldworkExperience_SchoolId;
CREATE INDEX IF NOT EXISTS IX_FieldworkExperience_SchoolId ON tpdm.FieldworkExperience(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FieldworkExperience_StudentUSI ON tpdm.FieldworkExperience(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FieldworkExperienceSectionAssociation_SchoolId;
CREATE INDEX IF NOT EXISTS IX_FieldworkExperienceSectionAssociation_SchoolId ON tpdm.FieldworkExperienceSectionAssociation(SchoolId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FieldworkExperienceSectionAssociation_StudentUSI ON tpdm.FieldworkExperienceSectionAssociation(StudentUSI) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_FinancialAid_StudentUSI ON tpdm.FinancialAid(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Goal_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_Goal_EducationOrganizationId ON tpdm.Goal(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_OpenStaffPositionEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_OpenStaffPositionEvent_EducationOrganizationId ON tpdm.OpenStaffPositionEvent(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Path_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_Path_EducationOrganizationId ON tpdm.Path(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PathPhase_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_PathPhase_EducationOrganizationId ON tpdm.PathPhase(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PerformanceEvaluation_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_PerformanceEvaluation_EducationOrganizationId ON tpdm.PerformanceEvaluation(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PerformanceEvaluationRating_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_PerformanceEvaluationRating_EducationOrganizationId ON tpdm.PerformanceEvaluationRating(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_QuantitativeMeasure_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_QuantitativeMeasure_EducationOrganizationId ON tpdm.QuantitativeMeasure(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_QuantitativeMeasureScore_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_QuantitativeMeasureScore_EducationOrganizationId ON tpdm.QuantitativeMeasureScore(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_RecruitmentEvent_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_RecruitmentEvent_EducationOrganizationId ON tpdm.RecruitmentEvent(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_RecruitmentEventAttendance_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_RecruitmentEventAttendance_EducationOrganizationId ON tpdm.RecruitmentEventAttendance(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_RubricDimension_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_RubricDimension_EducationOrganizationId ON tpdm.RubricDimension(EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StaffEducatorPreparationProgramAssociation_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StaffEducatorPreparationProgramAssociation_EducationOrganizationId ON tpdm.StaffEducatorPreparationProgramAssociation(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StaffEducatorPreparationProgramAssociation_StaffUSI ON tpdm.StaffEducatorPreparationProgramAssociation(StaffUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentPath_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentPath_EducationOrganizationId ON tpdm.StudentPath(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentPath_StudentUSI ON tpdm.StudentPath(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentPathMilestoneStatus_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentPathMilestoneStatus_EducationOrganizationId ON tpdm.StudentPathMilestoneStatus(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentPathMilestoneStatus_StudentUSI ON tpdm.StudentPathMilestoneStatus(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentPathPhaseStatus_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_StudentPathPhaseStatus_EducationOrganizationId ON tpdm.StudentPathPhaseStatus(EducationOrganizationId) INCLUDE (AggregateId);

CREATE INDEX IF NOT EXISTS IX_StudentPathPhaseStatus_StudentUSI ON tpdm.StudentPathPhaseStatus(StudentUSI) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_SurveySectionAggregateResponse_EducationOrganizationId;
CREATE INDEX IF NOT EXISTS IX_SurveySectionAggregateResponse_EducationOrganizationId ON tpdm.SurveySectionAggregateResponse(EducationOrganizationId) INCLUDE (AggregateId);
