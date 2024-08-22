-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='edfixassessmentroster' AND table_name='assessmentadministration' AND column_name='changeversion') THEN
ALTER TABLE edfixassessmentroster.AssessmentAdministration ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE edfixassessmentroster.AssessmentAdministration ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='edfixassessmentroster' AND table_name='studentassessmentregistration' AND column_name='changeversion') THEN
ALTER TABLE edfixassessmentroster.StudentAssessmentRegistration ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE edfixassessmentroster.StudentAssessmentRegistration ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
