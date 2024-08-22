-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='basicreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.BasicReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.BasicReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='bilingualeslprogramreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='budgetext' AND column_name='changeversion') THEN
ALTER TABLE tx.BudgetExt ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.BudgetExt ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='cteprogramreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.CTEProgramReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.CTEProgramReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='contractedinstructionalstafffteext' AND column_name='changeversion') THEN
ALTER TABLE tx.ContractedInstructionalStaffFTEExt ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.ContractedInstructionalStaffFTEExt ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='descriptormappinghistory' AND column_name='changeversion') THEN
ALTER TABLE tx.DescriptorMappingHistory ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.DescriptorMappingHistory ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='extendedschoolyearservicesattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='flexiblebilingualeslprogramreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='flexiblecteprogramreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='flexibleregularprogramreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='flexiblespecialeducationprogramreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='payrollext' AND column_name='changeversion') THEN
ALTER TABLE tx.PayrollExt ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.PayrollExt ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='prioryearactualext' AND column_name='changeversion') THEN
ALTER TABLE tx.PriorYearActualExt ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.PriorYearActualExt ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='prioryearleaver' AND column_name='changeversion') THEN
ALTER TABLE tx.PriorYearLeaver ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.PriorYearLeaver ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='prioryearleaverparent' AND column_name='changeversion') THEN
ALTER TABLE tx.PriorYearLeaverParent ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.PriorYearLeaverParent ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='prioryearleaverstudentparentassociation' AND column_name='changeversion') THEN
ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='reportingperiodext' AND column_name='changeversion') THEN
ALTER TABLE tx.ReportingPeriodExt ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.ReportingPeriodExt ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='ssaorgassociationext' AND column_name='changeversion') THEN
ALTER TABLE tx.SSAOrgAssociationExt ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.SSAOrgAssociationExt ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='sharedservicearrangementext' AND column_name='changeversion') THEN
ALTER TABLE tx.SharedServiceArrangementExt ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.SharedServiceArrangementExt ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='specialeducationprogramreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='specialprogramsreportingperiodattendance' AND column_name='changeversion') THEN
ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='studentapplication' AND column_name='changeversion') THEN
ALTER TABLE tx.StudentApplication ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.StudentApplication ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='tx' AND table_name='studentspecialeducationprogrameligibilityassociation' AND column_name='changeversion') THEN
ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
