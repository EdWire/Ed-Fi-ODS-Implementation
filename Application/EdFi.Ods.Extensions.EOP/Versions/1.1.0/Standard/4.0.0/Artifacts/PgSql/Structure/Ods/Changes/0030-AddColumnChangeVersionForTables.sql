-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='eop' AND table_name='educationorganizationeducationorganizationprogram' AND column_name='changeversion') THEN
ALTER TABLE eop.EducationOrganizationEducationOrganizationProgram ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE eop.EducationOrganizationEducationOrganizationProgram ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='eop' AND table_name='educationorganizationprogramauthorizedprovider' AND column_name='changeversion') THEN
ALTER TABLE eop.EducationOrganizationProgramAuthorizedProvider ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE eop.EducationOrganizationProgramAuthorizedProvider ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='eop' AND table_name='educationorganizationprogramprovider' AND column_name='changeversion') THEN
ALTER TABLE eop.EducationOrganizationProgramProvider ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE eop.EducationOrganizationProgramProvider ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
