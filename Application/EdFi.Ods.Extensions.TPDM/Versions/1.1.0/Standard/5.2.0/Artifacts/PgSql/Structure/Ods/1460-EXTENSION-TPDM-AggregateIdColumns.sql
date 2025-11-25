
CREATE SEQUENCE tpdm.ApplicantProfile_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.ApplicantProfile ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.ApplicantProfile_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ApplicantProfile_aggid ON tpdm.ApplicantProfile (AggregateId);


CREATE SEQUENCE tpdm.Application_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.Application ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.Application_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_Application_aggid ON tpdm.Application (AggregateId);


CREATE SEQUENCE tpdm.ApplicationEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.ApplicationEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.ApplicationEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ApplicationEvent_aggid ON tpdm.ApplicationEvent (AggregateId);


CREATE SEQUENCE tpdm.Candidate_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.Candidate ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.Candidate_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_Candidate_aggid ON tpdm.Candidate (AggregateId);


CREATE SEQUENCE tpdm.CandidateEducatorPreparationProgramAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.CandidateEducatorPreparationProgramAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.CandidateEducatorPreparationProgramAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CandidateEducatorPreparationProgramAssociation_aggid ON tpdm.CandidateEducatorPreparationProgramAssociation (AggregateId);


CREATE SEQUENCE tpdm.CandidateRelationshipToStaffAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.CandidateRelationshipToStaffAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.CandidateRelationshipToStaffAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CandidateRelationshipToStaffAssociation_aggid ON tpdm.CandidateRelationshipToStaffAssociation (AggregateId);


CREATE SEQUENCE tpdm.Certification_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.Certification ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.Certification_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_Certification_aggid ON tpdm.Certification (AggregateId);


CREATE SEQUENCE tpdm.CertificationExam_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.CertificationExam ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.CertificationExam_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CertificationExam_aggid ON tpdm.CertificationExam (AggregateId);


CREATE SEQUENCE tpdm.CertificationExamResult_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.CertificationExamResult ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.CertificationExamResult_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CertificationExamResult_aggid ON tpdm.CertificationExamResult (AggregateId);


CREATE SEQUENCE tpdm.CredentialEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.CredentialEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.CredentialEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CredentialEvent_aggid ON tpdm.CredentialEvent (AggregateId);


CREATE SEQUENCE tpdm.EducatorPreparationProgram_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.EducatorPreparationProgram ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.EducatorPreparationProgram_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EducatorPreparationProgram_aggid ON tpdm.EducatorPreparationProgram (AggregateId);


CREATE SEQUENCE tpdm.Evaluation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.Evaluation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.Evaluation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_Evaluation_aggid ON tpdm.Evaluation (AggregateId);


CREATE SEQUENCE tpdm.EvaluationElement_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.EvaluationElement ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.EvaluationElement_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EvaluationElement_aggid ON tpdm.EvaluationElement (AggregateId);


CREATE SEQUENCE tpdm.EvaluationElementRating_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.EvaluationElementRating ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.EvaluationElementRating_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EvaluationElementRating_aggid ON tpdm.EvaluationElementRating (AggregateId);


CREATE SEQUENCE tpdm.EvaluationObjective_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.EvaluationObjective ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.EvaluationObjective_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EvaluationObjective_aggid ON tpdm.EvaluationObjective (AggregateId);


CREATE SEQUENCE tpdm.EvaluationObjectiveRating_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.EvaluationObjectiveRating ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.EvaluationObjectiveRating_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EvaluationObjectiveRating_aggid ON tpdm.EvaluationObjectiveRating (AggregateId);


CREATE SEQUENCE tpdm.EvaluationRating_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.EvaluationRating ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.EvaluationRating_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EvaluationRating_aggid ON tpdm.EvaluationRating (AggregateId);


CREATE SEQUENCE tpdm.FieldworkExperience_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.FieldworkExperience ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.FieldworkExperience_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_FieldworkExperience_aggid ON tpdm.FieldworkExperience (AggregateId);


CREATE SEQUENCE tpdm.FieldworkExperienceSectionAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.FieldworkExperienceSectionAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.FieldworkExperienceSectionAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_FieldworkExperienceSectionAssociation_aggid ON tpdm.FieldworkExperienceSectionAssociation (AggregateId);


CREATE SEQUENCE tpdm.FinancialAid_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.FinancialAid ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.FinancialAid_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_FinancialAid_aggid ON tpdm.FinancialAid (AggregateId);


CREATE SEQUENCE tpdm.Goal_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.Goal ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.Goal_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_Goal_aggid ON tpdm.Goal (AggregateId);


CREATE SEQUENCE tpdm.OpenStaffPositionEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.OpenStaffPositionEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.OpenStaffPositionEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_OpenStaffPositionEvent_aggid ON tpdm.OpenStaffPositionEvent (AggregateId);


CREATE SEQUENCE tpdm.Path_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.Path ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.Path_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_Path_aggid ON tpdm.Path (AggregateId);


CREATE SEQUENCE tpdm.PathMilestone_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.PathMilestone ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.PathMilestone_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PathMilestone_aggid ON tpdm.PathMilestone (AggregateId);


CREATE SEQUENCE tpdm.PathPhase_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.PathPhase ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.PathPhase_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PathPhase_aggid ON tpdm.PathPhase (AggregateId);


CREATE SEQUENCE tpdm.PerformanceEvaluation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.PerformanceEvaluation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.PerformanceEvaluation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PerformanceEvaluation_aggid ON tpdm.PerformanceEvaluation (AggregateId);


CREATE SEQUENCE tpdm.PerformanceEvaluationRating_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.PerformanceEvaluationRating ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.PerformanceEvaluationRating_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PerformanceEvaluationRating_aggid ON tpdm.PerformanceEvaluationRating (AggregateId);


CREATE SEQUENCE tpdm.ProfessionalDevelopmentEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.ProfessionalDevelopmentEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.ProfessionalDevelopmentEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ProfessionalDevelopmentEvent_aggid ON tpdm.ProfessionalDevelopmentEvent (AggregateId);


CREATE SEQUENCE tpdm.ProfessionalDevelopmentEventAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.ProfessionalDevelopmentEventAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.ProfessionalDevelopmentEventAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ProfessionalDevelopmentEventAttendance_aggid ON tpdm.ProfessionalDevelopmentEventAttendance (AggregateId);


CREATE SEQUENCE tpdm.QuantitativeMeasure_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.QuantitativeMeasure ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.QuantitativeMeasure_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_QuantitativeMeasure_aggid ON tpdm.QuantitativeMeasure (AggregateId);


CREATE SEQUENCE tpdm.QuantitativeMeasureScore_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.QuantitativeMeasureScore ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.QuantitativeMeasureScore_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_QuantitativeMeasureScore_aggid ON tpdm.QuantitativeMeasureScore (AggregateId);


CREATE SEQUENCE tpdm.RecruitmentEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.RecruitmentEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.RecruitmentEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_RecruitmentEvent_aggid ON tpdm.RecruitmentEvent (AggregateId);


CREATE SEQUENCE tpdm.RecruitmentEventAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.RecruitmentEventAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.RecruitmentEventAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_RecruitmentEventAttendance_aggid ON tpdm.RecruitmentEventAttendance (AggregateId);


CREATE SEQUENCE tpdm.RubricDimension_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.RubricDimension ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.RubricDimension_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_RubricDimension_aggid ON tpdm.RubricDimension (AggregateId);


CREATE SEQUENCE tpdm.StaffEducatorPreparationProgramAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.StaffEducatorPreparationProgramAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.StaffEducatorPreparationProgramAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StaffEducatorPreparationProgramAssociation_aggid ON tpdm.StaffEducatorPreparationProgramAssociation (AggregateId);


CREATE SEQUENCE tpdm.StudentPath_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.StudentPath ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.StudentPath_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentPath_aggid ON tpdm.StudentPath (AggregateId);


CREATE SEQUENCE tpdm.StudentPathMilestoneStatus_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.StudentPathMilestoneStatus ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.StudentPathMilestoneStatus_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentPathMilestoneStatus_aggid ON tpdm.StudentPathMilestoneStatus (AggregateId);


CREATE SEQUENCE tpdm.StudentPathPhaseStatus_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.StudentPathPhaseStatus ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.StudentPathPhaseStatus_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentPathPhaseStatus_aggid ON tpdm.StudentPathPhaseStatus (AggregateId);


CREATE SEQUENCE tpdm.SurveyResponsePersonTargetAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.SurveyResponsePersonTargetAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.SurveyResponsePersonTargetAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SurveyResponsePersonTargetAssociation_aggid ON tpdm.SurveyResponsePersonTargetAssociation (AggregateId);


CREATE SEQUENCE tpdm.SurveySectionAggregateResponse_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.SurveySectionAggregateResponse ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.SurveySectionAggregateResponse_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SurveySectionAggregateResponse_aggid ON tpdm.SurveySectionAggregateResponse (AggregateId);


CREATE SEQUENCE tpdm.SurveySectionResponsePersonTargetAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tpdm.SurveySectionResponsePersonTargetAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tpdm.SurveySectionResponsePersonTargetAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SurveySectionResponsePersonTargetAssociation_aggid ON tpdm.SurveySectionResponsePersonTargetAssociation (AggregateId);

