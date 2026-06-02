
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_Application_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.Application')) 
BEGIN
    CREATE INDEX IX_Application_EducationOrganizationId ON [tpdm].[Application](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_ApplicationEvent_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.ApplicationEvent')) 
BEGIN
    CREATE INDEX IX_ApplicationEvent_EducationOrganizationId ON [tpdm].[ApplicationEvent](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_Candidate_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.Candidate')) 
BEGIN
    CREATE INDEX IX_Candidate_EducationOrganizationId ON [tpdm].[Candidate](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.CandidateEducatorPreparationProgramAssociation')) 
BEGIN
    CREATE INDEX IX_CandidateEducatorPreparationProgramAssociation_EducationOrganizationId ON [tpdm].[CandidateEducatorPreparationProgramAssociation](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_Certification_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.Certification')) 
BEGIN
    CREATE INDEX IX_Certification_EducationOrganizationId ON [tpdm].[Certification](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CertificationExam_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.CertificationExam')) 
BEGIN
    CREATE INDEX IX_CertificationExam_EducationOrganizationId ON [tpdm].[CertificationExam](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EducatorPreparationProgram_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.EducatorPreparationProgram')) 
BEGIN
    CREATE INDEX IX_EducatorPreparationProgram_EducationOrganizationId ON [tpdm].[EducatorPreparationProgram](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_Evaluation_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.Evaluation')) 
BEGIN
    CREATE INDEX IX_Evaluation_EducationOrganizationId ON [tpdm].[Evaluation](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EvaluationElement_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.EvaluationElement')) 
BEGIN
    CREATE INDEX IX_EvaluationElement_EducationOrganizationId ON [tpdm].[EvaluationElement](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EvaluationElementRating_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.EvaluationElementRating')) 
BEGIN
    CREATE INDEX IX_EvaluationElementRating_EducationOrganizationId ON [tpdm].[EvaluationElementRating](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EvaluationObjective_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.EvaluationObjective')) 
BEGIN
    CREATE INDEX IX_EvaluationObjective_EducationOrganizationId ON [tpdm].[EvaluationObjective](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EvaluationObjectiveRating_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.EvaluationObjectiveRating')) 
BEGIN
    CREATE INDEX IX_EvaluationObjectiveRating_EducationOrganizationId ON [tpdm].[EvaluationObjectiveRating](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EvaluationRating_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.EvaluationRating')) 
BEGIN
    CREATE INDEX IX_EvaluationRating_EducationOrganizationId ON [tpdm].[EvaluationRating](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EvaluationRating_SchoolId' AND object_id = OBJECT_ID('tpdm.EvaluationRating')) 
BEGIN
    CREATE INDEX IX_EvaluationRating_SchoolId ON [tpdm].[EvaluationRating](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FieldworkExperience_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.FieldworkExperience')) 
BEGIN
    CREATE INDEX IX_FieldworkExperience_EducationOrganizationId ON [tpdm].[FieldworkExperience](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FieldworkExperience_SchoolId' AND object_id = OBJECT_ID('tpdm.FieldworkExperience')) 
BEGIN
    CREATE INDEX IX_FieldworkExperience_SchoolId ON [tpdm].[FieldworkExperience](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_FieldworkExperienceSectionAssociation_SchoolId' AND object_id = OBJECT_ID('tpdm.FieldworkExperienceSectionAssociation')) 
BEGIN
    CREATE INDEX IX_FieldworkExperienceSectionAssociation_SchoolId ON [tpdm].[FieldworkExperienceSectionAssociation](SchoolId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_Goal_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.Goal')) 
BEGIN
    CREATE INDEX IX_Goal_EducationOrganizationId ON [tpdm].[Goal](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_OpenStaffPositionEvent_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.OpenStaffPositionEvent')) 
BEGIN
    CREATE INDEX IX_OpenStaffPositionEvent_EducationOrganizationId ON [tpdm].[OpenStaffPositionEvent](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PerformanceEvaluation_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.PerformanceEvaluation')) 
BEGIN
    CREATE INDEX IX_PerformanceEvaluation_EducationOrganizationId ON [tpdm].[PerformanceEvaluation](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_PerformanceEvaluationRating_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.PerformanceEvaluationRating')) 
BEGIN
    CREATE INDEX IX_PerformanceEvaluationRating_EducationOrganizationId ON [tpdm].[PerformanceEvaluationRating](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_QuantitativeMeasure_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.QuantitativeMeasure')) 
BEGIN
    CREATE INDEX IX_QuantitativeMeasure_EducationOrganizationId ON [tpdm].[QuantitativeMeasure](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_QuantitativeMeasureScore_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.QuantitativeMeasureScore')) 
BEGIN
    CREATE INDEX IX_QuantitativeMeasureScore_EducationOrganizationId ON [tpdm].[QuantitativeMeasureScore](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_RecruitmentEvent_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.RecruitmentEvent')) 
BEGIN
    CREATE INDEX IX_RecruitmentEvent_EducationOrganizationId ON [tpdm].[RecruitmentEvent](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_RecruitmentEventAttendance_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.RecruitmentEventAttendance')) 
BEGIN
    CREATE INDEX IX_RecruitmentEventAttendance_EducationOrganizationId ON [tpdm].[RecruitmentEventAttendance](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_RubricDimension_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.RubricDimension')) 
BEGIN
    CREATE INDEX IX_RubricDimension_EducationOrganizationId ON [tpdm].[RubricDimension](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StaffEducatorPreparationProgramAssociation_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.StaffEducatorPreparationProgramAssociation')) 
BEGIN
    CREATE INDEX IX_StaffEducatorPreparationProgramAssociation_EducationOrganizationId ON [tpdm].[StaffEducatorPreparationProgramAssociation](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_SurveySectionAggregateResponse_EducationOrganizationId' AND object_id = OBJECT_ID('tpdm.SurveySectionAggregateResponse')) 
BEGIN
    CREATE INDEX IX_SurveySectionAggregateResponse_EducationOrganizationId ON [tpdm].[SurveySectionAggregateResponse](EducationOrganizationId) INCLUDE (Id)
END;
