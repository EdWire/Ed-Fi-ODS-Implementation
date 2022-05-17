ALTER TABLE tx.ActualExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.AsOfStatusALeavers
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.BasicReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.BudgetExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.CTEProgramReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.ContractedInstructionalStaffFTEExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.ExtendedSchoolYearServicesAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.PayrollExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.SSAOrgAssociationExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.SharedServiceArrangementExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.StudentApplication
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

