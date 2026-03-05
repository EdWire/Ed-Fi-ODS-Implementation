DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_edorgprogram.educationorganizationeducationorganizationprogram_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.educationorganizationprogramtypedescriptorid;

    INSERT INTO tracked_changes_edorgprogram.educationorganizationeducationorganizationprogram(
        oldbegindate, oldeducationorganizationid, oldeducationorganizationprogramtypedescriptorid, oldeducationorganizationprogramtypedescriptornamespace, oldeducationorganizationprogramtypedescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationid, OLD.educationorganizationprogramtypedescriptorid, dj0.namespace, dj0.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'edorgprogram' AND event_object_table = 'educationorganizationeducationorganizationprogram') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON edorgprogram.educationorganizationeducationorganizationprogram 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_edorgprogram.educationorganizationeducationorganizationprogram_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_edorgprogram.educationorganizationprogramauthorizedprovider_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.educationorganizationprogramtypedescriptorid;

    INSERT INTO tracked_changes_edorgprogram.educationorganizationprogramauthorizedprovider(
        oldbegindate, oldeducationorganizationprogramproviderid, oldeducationorganizationprogramtypedescriptorid, oldeducationorganizationprogramtypedescriptornamespace, oldeducationorganizationprogramtypedescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationprogramproviderid, OLD.educationorganizationprogramtypedescriptorid, dj0.namespace, dj0.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'edorgprogram' AND event_object_table = 'educationorganizationprogramauthorizedprovider') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON edorgprogram.educationorganizationprogramauthorizedprovider 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_edorgprogram.educationorganizationprogramauthorizedprovider_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_edorgprogram.educationorganizationprogramprovider_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edorgprogram.educationorganizationprogramprovider(
        oldeducationorganizationprogramproviderid,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationprogramproviderid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'edorgprogram' AND event_object_table = 'educationorganizationprogramprovider') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON edorgprogram.educationorganizationprogramprovider 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_edorgprogram.educationorganizationprogramprovider_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_edorgprogram.educationorganizationprogramtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EducationOrganizationProgramTypeDescriptorId, b.codevalue, b.namespace, b.id, 'edorgprogram.EducationOrganizationProgramTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EducationOrganizationProgramTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'edorgprogram' AND event_object_table = 'educationorganizationprogramtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON edorgprogram.educationorganizationprogramtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_edorgprogram.educationorganizationprogramtypedescriptor_deleted();
END IF;

END
$$;
