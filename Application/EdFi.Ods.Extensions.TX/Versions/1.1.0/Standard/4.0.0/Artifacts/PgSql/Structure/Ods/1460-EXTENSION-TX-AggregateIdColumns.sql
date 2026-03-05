
CREATE SEQUENCE tx.BasicReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.BasicReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.BasicReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_BasicReportingPeriodAttendance_aggid ON tx.BasicReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.BilingualESLProgramReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.BilingualESLProgramReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_BilingualESLProgramReportingPeriodAttendance_aggid ON tx.BilingualESLProgramReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.BudgetExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.BudgetExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.BudgetExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_BudgetExt_aggid ON tx.BudgetExt (AggregateId);


CREATE SEQUENCE tx.ContractedInstructionalStaffFTEExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.ContractedInstructionalStaffFTEExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.ContractedInstructionalStaffFTEExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ContractedInstructionalStaffFTEExt_aggid ON tx.ContractedInstructionalStaffFTEExt (AggregateId);


CREATE SEQUENCE tx.CourseTranscriptExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.CourseTranscriptExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.CourseTranscriptExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CourseTranscriptExt_aggid ON tx.CourseTranscriptExt (AggregateId);


CREATE SEQUENCE tx.CTEProgramReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.CTEProgramReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.CTEProgramReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CTEProgramReportingPeriodAttendance_aggid ON tx.CTEProgramReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.DescriptorMappingHistory_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.DescriptorMappingHistory ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.DescriptorMappingHistory_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_DescriptorMappingHistory_aggid ON tx.DescriptorMappingHistory (AggregateId);


CREATE SEQUENCE tx.ExtendedSchoolYearServicesAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.ExtendedSchoolYearServicesAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ExtendedSchoolYearServicesAttendance_aggid ON tx.ExtendedSchoolYearServicesAttendance (AggregateId);


CREATE SEQUENCE tx.FlexibleBilingualESLProgramReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.FlexibleBilingualESLProgramReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_FlexibleBilingualESLProgramReportingPeriodAttendance_aggid ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.FlexibleCTEProgramReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.FlexibleCTEProgramReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_FlexibleCTEProgramReportingPeriodAttendance_aggid ON tx.FlexibleCTEProgramReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.FlexibleRegularProgramReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.FlexibleRegularProgramReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_FlexibleRegularProgramReportingPeriodAttendance_aggid ON tx.FlexibleRegularProgramReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.FlexibleSpecialEducationProgramReportingPeriodA_ec6ab0_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.FlexibleSpecialEducationProgramReportingPeriodA_ec6ab0_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_FlexibleSpecialEducationProgramReportingPeriodA_ec6ab0_aggid ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.PayrollExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.PayrollExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.PayrollExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PayrollExt_aggid ON tx.PayrollExt (AggregateId);


CREATE SEQUENCE tx.PriorYearActualExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.PriorYearActualExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.PriorYearActualExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PriorYearActualExt_aggid ON tx.PriorYearActualExt (AggregateId);


CREATE SEQUENCE tx.PriorYearLeaver_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.PriorYearLeaver ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.PriorYearLeaver_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PriorYearLeaver_aggid ON tx.PriorYearLeaver (AggregateId);


CREATE SEQUENCE tx.PriorYearLeaverParent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.PriorYearLeaverParent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.PriorYearLeaverParent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PriorYearLeaverParent_aggid ON tx.PriorYearLeaverParent (AggregateId);


CREATE SEQUENCE tx.PriorYearLeaverStudentParentAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.PriorYearLeaverStudentParentAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PriorYearLeaverStudentParentAssociation_aggid ON tx.PriorYearLeaverStudentParentAssociation (AggregateId);


CREATE SEQUENCE tx.PriorYearSSAOrgAssociationExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.PriorYearSSAOrgAssociationExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.PriorYearSSAOrgAssociationExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PriorYearSSAOrgAssociationExt_aggid ON tx.PriorYearSSAOrgAssociationExt (AggregateId);


CREATE SEQUENCE tx.ReportingPeriodExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.ReportingPeriodExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.ReportingPeriodExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ReportingPeriodExt_aggid ON tx.ReportingPeriodExt (AggregateId);


CREATE SEQUENCE tx.SharedServiceArrangementExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.SharedServiceArrangementExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.SharedServiceArrangementExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SharedServiceArrangementExt_aggid ON tx.SharedServiceArrangementExt (AggregateId);


CREATE SEQUENCE tx.SpecialEducationProgramReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.SpecialEducationProgramReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SpecialEducationProgramReportingPeriodAttendance_aggid ON tx.SpecialEducationProgramReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.SpecialProgramsReportingPeriodAttendance_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.SpecialProgramsReportingPeriodAttendance_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SpecialProgramsReportingPeriodAttendance_aggid ON tx.SpecialProgramsReportingPeriodAttendance (AggregateId);


CREATE SEQUENCE tx.SSAOrgAssociationExt_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.SSAOrgAssociationExt ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.SSAOrgAssociationExt_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SSAOrgAssociationExt_aggid ON tx.SSAOrgAssociationExt (AggregateId);


CREATE SEQUENCE tx.StudentApplication_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.StudentApplication ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.StudentApplication_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentApplication_aggid ON tx.StudentApplication (AggregateId);


CREATE SEQUENCE tx.StudentSpecialEducationProgramEligibilityAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('tx.StudentSpecialEducationProgramEligibilityAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentSpecialEducationProgramEligibilityAssociation_aggid ON tx.StudentSpecialEducationProgramEligibilityAssociation (AggregateId);

