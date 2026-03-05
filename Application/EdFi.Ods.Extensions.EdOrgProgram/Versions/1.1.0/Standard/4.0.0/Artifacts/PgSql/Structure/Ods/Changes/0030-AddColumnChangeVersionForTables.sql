-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='edorgprogram' AND table_name='educationorganizationeducationorganizationprogram' AND column_name='changeversion') THEN
ALTER TABLE edorgprogram.EducationOrganizationEducationOrganizationProgram ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE edorgprogram.EducationOrganizationEducationOrganizationProgram ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='edorgprogram' AND table_name='educationorganizationprogramauthorizedprovider' AND column_name='changeversion') THEN
ALTER TABLE edorgprogram.EducationOrganizationProgramAuthorizedProvider ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE edorgprogram.EducationOrganizationProgramAuthorizedProvider ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='edorgprogram' AND table_name='educationorganizationprogramprovider' AND column_name='changeversion') THEN
ALTER TABLE edorgprogram.EducationOrganizationProgramProvider ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE edorgprogram.EducationOrganizationProgramProvider ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
