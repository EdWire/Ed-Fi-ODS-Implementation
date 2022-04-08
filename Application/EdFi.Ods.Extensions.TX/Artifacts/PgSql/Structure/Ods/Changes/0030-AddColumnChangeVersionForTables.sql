ALTER TABLE tx.ActualExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.AsOfStatusALeaver
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.BudgetExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.ContractedInstructionalStaffFTEExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.PayrollExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.SSAOrgAssociationExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.SharedServiceArrangementExt
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.StudentApplication
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation
ADD ChangeVersion BIGINT DEFAULT nextval('changes.ChangeVersionSequence') NOT NULL;

