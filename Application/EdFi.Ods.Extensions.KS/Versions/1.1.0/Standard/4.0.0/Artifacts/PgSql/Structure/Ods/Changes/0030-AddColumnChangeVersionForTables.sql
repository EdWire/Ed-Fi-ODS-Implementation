-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
DO $$
BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='ks' AND table_name='sectioneducator' AND column_name='changeversion') THEN
ALTER TABLE ks.SectionEducator ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE ks.SectionEducator ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema='ks' AND table_name='snackpack' AND column_name='changeversion') THEN
ALTER TABLE ks.SnackPack ADD ChangeVersion BIGINT DEFAULT (0) NOT NULL;
ALTER TABLE ks.SnackPack ALTER ChangeVersion SET DEFAULT nextval('changes.ChangeVersionSequence');
END IF;

END
$$;
