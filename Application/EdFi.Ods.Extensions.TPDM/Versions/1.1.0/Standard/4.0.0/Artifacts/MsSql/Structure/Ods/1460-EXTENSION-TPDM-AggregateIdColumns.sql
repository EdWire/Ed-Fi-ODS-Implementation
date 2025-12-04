CREATE SEQUENCE [tpdm].[ApplicantProfile_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[ApplicantProfile] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[ApplicantProfile_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ApplicantProfile_AggregateId] ON [tpdm].[ApplicantProfile] (AggregateId);

CREATE SEQUENCE [tpdm].[Application_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[Application] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[Application_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_Application_AggregateId] ON [tpdm].[Application] (AggregateId);

CREATE SEQUENCE [tpdm].[ApplicationEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[ApplicationEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[ApplicationEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ApplicationEvent_AggregateId] ON [tpdm].[ApplicationEvent] (AggregateId);

CREATE SEQUENCE [tpdm].[Candidate_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[Candidate] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[Candidate_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_Candidate_AggregateId] ON [tpdm].[Candidate] (AggregateId);

CREATE SEQUENCE [tpdm].[CandidateEducatorPreparationProgramAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[CandidateEducatorPreparationProgramAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[CandidateEducatorPreparationProgramAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CandidateEducatorPreparationProgramAssociation_AggregateId] ON [tpdm].[CandidateEducatorPreparationProgramAssociation] (AggregateId);

CREATE SEQUENCE [tpdm].[CandidateRelationshipToStaffAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[CandidateRelationshipToStaffAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[CandidateRelationshipToStaffAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CandidateRelationshipToStaffAssociation_AggregateId] ON [tpdm].[CandidateRelationshipToStaffAssociation] (AggregateId);

CREATE SEQUENCE [tpdm].[Certification_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[Certification] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[Certification_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_Certification_AggregateId] ON [tpdm].[Certification] (AggregateId);

CREATE SEQUENCE [tpdm].[CertificationExam_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[CertificationExam] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[CertificationExam_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CertificationExam_AggregateId] ON [tpdm].[CertificationExam] (AggregateId);

CREATE SEQUENCE [tpdm].[CertificationExamResult_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[CertificationExamResult] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[CertificationExamResult_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CertificationExamResult_AggregateId] ON [tpdm].[CertificationExamResult] (AggregateId);

CREATE SEQUENCE [tpdm].[CredentialEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[CredentialEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[CredentialEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CredentialEvent_AggregateId] ON [tpdm].[CredentialEvent] (AggregateId);

CREATE SEQUENCE [tpdm].[EducatorPreparationProgram_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[EducatorPreparationProgram] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[EducatorPreparationProgram_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducatorPreparationProgram_AggregateId] ON [tpdm].[EducatorPreparationProgram] (AggregateId);

CREATE SEQUENCE [tpdm].[Evaluation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[Evaluation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[Evaluation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_Evaluation_AggregateId] ON [tpdm].[Evaluation] (AggregateId);

CREATE SEQUENCE [tpdm].[EvaluationElement_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[EvaluationElement] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[EvaluationElement_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EvaluationElement_AggregateId] ON [tpdm].[EvaluationElement] (AggregateId);

CREATE SEQUENCE [tpdm].[EvaluationElementRating_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[EvaluationElementRating] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[EvaluationElementRating_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EvaluationElementRating_AggregateId] ON [tpdm].[EvaluationElementRating] (AggregateId);

CREATE SEQUENCE [tpdm].[EvaluationObjective_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[EvaluationObjective] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[EvaluationObjective_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EvaluationObjective_AggregateId] ON [tpdm].[EvaluationObjective] (AggregateId);

CREATE SEQUENCE [tpdm].[EvaluationObjectiveRating_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[EvaluationObjectiveRating] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[EvaluationObjectiveRating_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EvaluationObjectiveRating_AggregateId] ON [tpdm].[EvaluationObjectiveRating] (AggregateId);

CREATE SEQUENCE [tpdm].[EvaluationRating_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[EvaluationRating] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[EvaluationRating_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EvaluationRating_AggregateId] ON [tpdm].[EvaluationRating] (AggregateId);

CREATE SEQUENCE [tpdm].[FieldworkExperience_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[FieldworkExperience] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[FieldworkExperience_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FieldworkExperience_AggregateId] ON [tpdm].[FieldworkExperience] (AggregateId);

CREATE SEQUENCE [tpdm].[FieldworkExperienceSectionAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[FieldworkExperienceSectionAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[FieldworkExperienceSectionAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FieldworkExperienceSectionAssociation_AggregateId] ON [tpdm].[FieldworkExperienceSectionAssociation] (AggregateId);

CREATE SEQUENCE [tpdm].[FinancialAid_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[FinancialAid] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[FinancialAid_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FinancialAid_AggregateId] ON [tpdm].[FinancialAid] (AggregateId);

CREATE SEQUENCE [tpdm].[Goal_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[Goal] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[Goal_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_Goal_AggregateId] ON [tpdm].[Goal] (AggregateId);

CREATE SEQUENCE [tpdm].[OpenStaffPositionEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[OpenStaffPositionEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[OpenStaffPositionEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_OpenStaffPositionEvent_AggregateId] ON [tpdm].[OpenStaffPositionEvent] (AggregateId);

CREATE SEQUENCE [tpdm].[Path_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[Path] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[Path_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_Path_AggregateId] ON [tpdm].[Path] (AggregateId);

CREATE SEQUENCE [tpdm].[PathMilestone_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[PathMilestone] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[PathMilestone_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PathMilestone_AggregateId] ON [tpdm].[PathMilestone] (AggregateId);

CREATE SEQUENCE [tpdm].[PathPhase_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[PathPhase] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[PathPhase_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PathPhase_AggregateId] ON [tpdm].[PathPhase] (AggregateId);

CREATE SEQUENCE [tpdm].[PerformanceEvaluation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[PerformanceEvaluation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[PerformanceEvaluation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PerformanceEvaluation_AggregateId] ON [tpdm].[PerformanceEvaluation] (AggregateId);

CREATE SEQUENCE [tpdm].[PerformanceEvaluationRating_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[PerformanceEvaluationRating] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[PerformanceEvaluationRating_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PerformanceEvaluationRating_AggregateId] ON [tpdm].[PerformanceEvaluationRating] (AggregateId);

CREATE SEQUENCE [tpdm].[ProfessionalDevelopmentEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[ProfessionalDevelopmentEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[ProfessionalDevelopmentEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ProfessionalDevelopmentEvent_AggregateId] ON [tpdm].[ProfessionalDevelopmentEvent] (AggregateId);

CREATE SEQUENCE [tpdm].[ProfessionalDevelopmentEventAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[ProfessionalDevelopmentEventAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[ProfessionalDevelopmentEventAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ProfessionalDevelopmentEventAttendance_AggregateId] ON [tpdm].[ProfessionalDevelopmentEventAttendance] (AggregateId);

CREATE SEQUENCE [tpdm].[QuantitativeMeasure_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[QuantitativeMeasure] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[QuantitativeMeasure_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_QuantitativeMeasure_AggregateId] ON [tpdm].[QuantitativeMeasure] (AggregateId);

CREATE SEQUENCE [tpdm].[QuantitativeMeasureScore_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[QuantitativeMeasureScore] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[QuantitativeMeasureScore_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_QuantitativeMeasureScore_AggregateId] ON [tpdm].[QuantitativeMeasureScore] (AggregateId);

CREATE SEQUENCE [tpdm].[RecruitmentEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[RecruitmentEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[RecruitmentEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_RecruitmentEvent_AggregateId] ON [tpdm].[RecruitmentEvent] (AggregateId);

CREATE SEQUENCE [tpdm].[RecruitmentEventAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[RecruitmentEventAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[RecruitmentEventAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_RecruitmentEventAttendance_AggregateId] ON [tpdm].[RecruitmentEventAttendance] (AggregateId);

CREATE SEQUENCE [tpdm].[RubricDimension_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[RubricDimension] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[RubricDimension_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_RubricDimension_AggregateId] ON [tpdm].[RubricDimension] (AggregateId);

CREATE SEQUENCE [tpdm].[StaffEducatorPreparationProgramAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[StaffEducatorPreparationProgramAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[StaffEducatorPreparationProgramAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StaffEducatorPreparationProgramAssociation_AggregateId] ON [tpdm].[StaffEducatorPreparationProgramAssociation] (AggregateId);

CREATE SEQUENCE [tpdm].[StudentPath_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[StudentPath] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[StudentPath_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentPath_AggregateId] ON [tpdm].[StudentPath] (AggregateId);

CREATE SEQUENCE [tpdm].[StudentPathMilestoneStatus_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[StudentPathMilestoneStatus] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[StudentPathMilestoneStatus_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentPathMilestoneStatus_AggregateId] ON [tpdm].[StudentPathMilestoneStatus] (AggregateId);

CREATE SEQUENCE [tpdm].[StudentPathPhaseStatus_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[StudentPathPhaseStatus] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[StudentPathPhaseStatus_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentPathPhaseStatus_AggregateId] ON [tpdm].[StudentPathPhaseStatus] (AggregateId);

CREATE SEQUENCE [tpdm].[SurveyResponsePersonTargetAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[SurveyResponsePersonTargetAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[SurveyResponsePersonTargetAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SurveyResponsePersonTargetAssociation_AggregateId] ON [tpdm].[SurveyResponsePersonTargetAssociation] (AggregateId);

CREATE SEQUENCE [tpdm].[SurveySectionAggregateResponse_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[SurveySectionAggregateResponse] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[SurveySectionAggregateResponse_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SurveySectionAggregateResponse_AggregateId] ON [tpdm].[SurveySectionAggregateResponse] (AggregateId);

CREATE SEQUENCE [tpdm].[SurveySectionResponsePersonTargetAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tpdm].[SurveySectionResponsePersonTargetAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tpdm].[SurveySectionResponsePersonTargetAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SurveySectionResponsePersonTargetAssociation_AggregateId] ON [tpdm].[SurveySectionResponsePersonTargetAssociation] (AggregateId);

