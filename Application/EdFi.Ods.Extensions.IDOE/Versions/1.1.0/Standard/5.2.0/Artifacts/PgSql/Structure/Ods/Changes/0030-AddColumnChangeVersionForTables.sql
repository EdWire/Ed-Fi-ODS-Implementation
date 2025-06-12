-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='assessmentaccommodation' AND column_name='changeversion') THEN
ALTER TABLE idoe.AssessmentAccommodation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.AssessmentAccommodation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='educationorganizationotherpersonnel' AND column_name='changeversion') THEN
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='localcapitalizedequipment' AND column_name='changeversion') THEN
ALTER TABLE idoe.LocalCapitalizedEquipment ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.LocalCapitalizedEquipment ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='localsubaward' AND column_name='changeversion') THEN
ALTER TABLE idoe.LocalSubaward ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.LocalSubaward ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='localunusedleavepayment' AND column_name='changeversion') THEN
ALTER TABLE idoe.LocalUnusedLeavePayment ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.LocalUnusedLeavePayment ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='sectiondimension' AND column_name='changeversion') THEN
ALTER TABLE idoe.SectionDimension ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.SectionDimension ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='studentaccommodation' AND column_name='changeversion') THEN
ALTER TABLE idoe.StudentAccommodation ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.StudentAccommodation ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='studentschoolgraduationplan' AND column_name='changeversion') THEN
ALTER TABLE idoe.StudentSchoolGraduationPlan ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.StudentSchoolGraduationPlan ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='idoe' AND table_name='subcategorydimension' AND column_name='changeversion') THEN
ALTER TABLE idoe.SubCategoryDimension ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE idoe.SubCategoryDimension ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
