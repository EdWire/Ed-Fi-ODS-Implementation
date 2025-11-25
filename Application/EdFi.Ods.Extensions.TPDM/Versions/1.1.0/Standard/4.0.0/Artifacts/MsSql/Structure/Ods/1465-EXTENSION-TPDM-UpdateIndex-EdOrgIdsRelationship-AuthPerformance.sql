
DROP INDEX IF EXISTS IX_Application_EducationOrganizationId ON [tpdm].[Application];
CREATE INDEX IX_Application_EducationOrganizationId ON [tpdm].[Application](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_ApplicationEvent_EducationOrganizationId ON [tpdm].[ApplicationEvent];
CREATE INDEX IX_ApplicationEvent_EducationOrganizationId ON [tpdm].[ApplicationEvent](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Candidate_EducationOrganizationId ON [tpdm].[Candidate];
CREATE INDEX IX_Candidate_EducationOrganizationId ON [tpdm].[Candidate](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId ON [tpdm].[CandidateEducatorPreparationProgramAssociation];
CREATE INDEX IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId ON [tpdm].[CandidateEducatorPreparationProgramAssociation](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CandidateRelationshipToStaffAssociation_StaffUSI' AND object_id = OBJECT_ID('tpdm.CandidateRelationshipToStaffAssociation')) 
BEGIN
    CREATE INDEX IX_CandidateRelationshipToStaffAssociation_StaffUSI ON [tpdm].[CandidateRelationshipToStaffAssociation](StaffUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_Certification_EducationOrganizationId ON [tpdm].[Certification];
CREATE INDEX IX_Certification_EducationOrganizationId ON [tpdm].[Certification](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CertificationExam_EducationOrganizationId ON [tpdm].[CertificationExam];
CREATE INDEX IX_CertificationExam_EducationOrganizationId ON [tpdm].[CertificationExam](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CertificationExamResult_CertificationExamStudentUSI' AND object_id = OBJECT_ID('tpdm.CertificationExamResult')) 
BEGIN
    CREATE INDEX IX_CertificationExamResult_CertificationExamStudentUSI ON [tpdm].[CertificationExamResult](CertificationExamStudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_EducatorPreparationProgram_EducationOrganizationId ON [tpdm].[EducatorPreparationProgram];
CREATE INDEX IX_EducatorPreparationProgram_EducationOrganizationId ON [tpdm].[EducatorPreparationProgram](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Evaluation_EducationOrganizationId ON [tpdm].[Evaluation];
CREATE INDEX IX_Evaluation_EducationOrganizationId ON [tpdm].[Evaluation](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationElement_EducationOrganizationId ON [tpdm].[EvaluationElement];
CREATE INDEX IX_EvaluationElement_EducationOrganizationId ON [tpdm].[EvaluationElement](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationElementRating_EducationOrganizationId ON [tpdm].[EvaluationElementRating];
CREATE INDEX IX_EvaluationElementRating_EducationOrganizationId ON [tpdm].[EvaluationElementRating](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationObjective_EducationOrganizationId ON [tpdm].[EvaluationObjective];
CREATE INDEX IX_EvaluationObjective_EducationOrganizationId ON [tpdm].[EvaluationObjective](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationObjectiveRating_EducationOrganizationId ON [tpdm].[EvaluationObjectiveRating];
CREATE INDEX IX_EvaluationObjectiveRating_EducationOrganizationId ON [tpdm].[EvaluationObjectiveRating](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationRating_EducationOrganizationId ON [tpdm].[EvaluationRating];
CREATE INDEX IX_EvaluationRating_EducationOrganizationId ON [tpdm].[EvaluationRating](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_EvaluationRating_SchoolId ON [tpdm].[EvaluationRating];
CREATE INDEX IX_EvaluationRating_SchoolId ON [tpdm].[EvaluationRating](SchoolId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FieldworkExperience_EducationOrganizationId ON [tpdm].[FieldworkExperience];
CREATE INDEX IX_FieldworkExperience_EducationOrganizationId ON [tpdm].[FieldworkExperience](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_FieldworkExperience_SchoolId ON [tpdm].[FieldworkExperience];
CREATE INDEX IX_FieldworkExperience_SchoolId ON [tpdm].[FieldworkExperience](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FieldworkExperience_StudentUSI' AND object_id = OBJECT_ID('tpdm.FieldworkExperience')) 
BEGIN
    CREATE INDEX IX_FieldworkExperience_StudentUSI ON [tpdm].[FieldworkExperience](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_FieldworkExperienceSectionAssociation_SchoolId ON [tpdm].[FieldworkExperienceSectionAssociation];
CREATE INDEX IX_FieldworkExperienceSectionAssociation_SchoolId ON [tpdm].[FieldworkExperienceSectionAssociation](SchoolId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FieldworkExperienceSectionAssociation_StudentUSI' AND object_id = OBJECT_ID('tpdm.FieldworkExperienceSectionAssociation')) 
BEGIN
    CREATE INDEX IX_FieldworkExperienceSectionAssociation_StudentUSI ON [tpdm].[FieldworkExperienceSectionAssociation](StudentUSI) INCLUDE (AggregateId)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FinancialAid_StudentUSI' AND object_id = OBJECT_ID('tpdm.FinancialAid')) 
BEGIN
    CREATE INDEX IX_FinancialAid_StudentUSI ON [tpdm].[FinancialAid](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_Goal_EducationOrganizationId ON [tpdm].[Goal];
CREATE INDEX IX_Goal_EducationOrganizationId ON [tpdm].[Goal](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_OpenStaffPositionEvent_EducationOrganizationId ON [tpdm].[OpenStaffPositionEvent];
CREATE INDEX IX_OpenStaffPositionEvent_EducationOrganizationId ON [tpdm].[OpenStaffPositionEvent](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_Path_EducationOrganizationId ON [tpdm].[Path];
CREATE INDEX IX_Path_EducationOrganizationId ON [tpdm].[Path](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PathPhase_EducationOrganizationId ON [tpdm].[PathPhase];
CREATE INDEX IX_PathPhase_EducationOrganizationId ON [tpdm].[PathPhase](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PerformanceEvaluation_EducationOrganizationId ON [tpdm].[PerformanceEvaluation];
CREATE INDEX IX_PerformanceEvaluation_EducationOrganizationId ON [tpdm].[PerformanceEvaluation](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_PerformanceEvaluationRating_EducationOrganizationId ON [tpdm].[PerformanceEvaluationRating];
CREATE INDEX IX_PerformanceEvaluationRating_EducationOrganizationId ON [tpdm].[PerformanceEvaluationRating](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_QuantitativeMeasure_EducationOrganizationId ON [tpdm].[QuantitativeMeasure];
CREATE INDEX IX_QuantitativeMeasure_EducationOrganizationId ON [tpdm].[QuantitativeMeasure](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_QuantitativeMeasureScore_EducationOrganizationId ON [tpdm].[QuantitativeMeasureScore];
CREATE INDEX IX_QuantitativeMeasureScore_EducationOrganizationId ON [tpdm].[QuantitativeMeasureScore](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_RecruitmentEvent_EducationOrganizationId ON [tpdm].[RecruitmentEvent];
CREATE INDEX IX_RecruitmentEvent_EducationOrganizationId ON [tpdm].[RecruitmentEvent](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_RecruitmentEventAttendance_EducationOrganizationId ON [tpdm].[RecruitmentEventAttendance];
CREATE INDEX IX_RecruitmentEventAttendance_EducationOrganizationId ON [tpdm].[RecruitmentEventAttendance](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_RubricDimension_EducationOrganizationId ON [tpdm].[RubricDimension];
CREATE INDEX IX_RubricDimension_EducationOrganizationId ON [tpdm].[RubricDimension](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StaffEducatorPreparationProgramAssociation_EducationOrganizationId ON [tpdm].[StaffEducatorPreparationProgramAssociation];
CREATE INDEX IX_StaffEducatorPreparationProgramAssociation_EducationOrganizationId ON [tpdm].[StaffEducatorPreparationProgramAssociation](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StaffEducatorPreparationProgramAssociation_StaffUSI' AND object_id = OBJECT_ID('tpdm.StaffEducatorPreparationProgramAssociation')) 
BEGIN
    CREATE INDEX IX_StaffEducatorPreparationProgramAssociation_StaffUSI ON [tpdm].[StaffEducatorPreparationProgramAssociation](StaffUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentPath_EducationOrganizationId ON [tpdm].[StudentPath];
CREATE INDEX IX_StudentPath_EducationOrganizationId ON [tpdm].[StudentPath](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentPath_StudentUSI' AND object_id = OBJECT_ID('tpdm.StudentPath')) 
BEGIN
    CREATE INDEX IX_StudentPath_StudentUSI ON [tpdm].[StudentPath](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentPathMilestoneStatus_EducationOrganizationId ON [tpdm].[StudentPathMilestoneStatus];
CREATE INDEX IX_StudentPathMilestoneStatus_EducationOrganizationId ON [tpdm].[StudentPathMilestoneStatus](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentPathMilestoneStatus_StudentUSI' AND object_id = OBJECT_ID('tpdm.StudentPathMilestoneStatus')) 
BEGIN
    CREATE INDEX IX_StudentPathMilestoneStatus_StudentUSI ON [tpdm].[StudentPathMilestoneStatus](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentPathPhaseStatus_EducationOrganizationId ON [tpdm].[StudentPathPhaseStatus];
CREATE INDEX IX_StudentPathPhaseStatus_EducationOrganizationId ON [tpdm].[StudentPathPhaseStatus](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentPathPhaseStatus_StudentUSI' AND object_id = OBJECT_ID('tpdm.StudentPathPhaseStatus')) 
BEGIN
    CREATE INDEX IX_StudentPathPhaseStatus_StudentUSI ON [tpdm].[StudentPathPhaseStatus](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_SurveySectionAggregateResponse_EducationOrganizationId ON [tpdm].[SurveySectionAggregateResponse];
CREATE INDEX IX_SurveySectionAggregateResponse_EducationOrganizationId ON [tpdm].[SurveySectionAggregateResponse](EducationOrganizationId) INCLUDE (AggregateId);
