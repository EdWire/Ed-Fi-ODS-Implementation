DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_eop.educationorganizationeducationorganizationprogram_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.educationorganizationprogramtypedescriptorid;

    INSERT INTO tracked_changes_eop.educationorganizationeducationorganizationprogram(
        oldbegindate, oldeducationorganizationid, oldeducationorganizationprogramtypedescriptorid, oldeducationorganizationprogramtypedescriptornamespace, oldeducationorganizationprogramtypedescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationid, OLD.educationorganizationprogramtypedescriptorid, dj0.namespace, dj0.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'eop' AND event_object_table = 'educationorganizationeducationorganizationprogram') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON eop.educationorganizationeducationorganizationprogram 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_eop.educationorganizationeducationorganizationprogram_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_eop.educationorganizationprogramauthorizedprovider_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.educationorganizationprogramtypedescriptorid;

    INSERT INTO tracked_changes_eop.educationorganizationprogramauthorizedprovider(
        oldbegindate, oldeducationorganizationprogramtypedescriptorid, oldeducationorganizationprogramtypedescriptornamespace, oldeducationorganizationprogramtypedescriptorcodevalue, oldnameofinstitution,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationprogramtypedescriptorid, dj0.namespace, dj0.codevalue, OLD.nameofinstitution, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'eop' AND event_object_table = 'educationorganizationprogramauthorizedprovider') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON eop.educationorganizationprogramauthorizedprovider 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_eop.educationorganizationprogramauthorizedprovider_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_eop.educationorganizationprogramprovider_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_eop.educationorganizationprogramprovider(
        oldnameofinstitution,
        id, discriminator, changeversion)
    VALUES (
        OLD.nameofinstitution, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'eop' AND event_object_table = 'educationorganizationprogramprovider') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON eop.educationorganizationprogramprovider 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_eop.educationorganizationprogramprovider_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_eop.educationorganizationprogramtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EducationOrganizationProgramTypeDescriptorId, b.codevalue, b.namespace, b.id, 'eop.EducationOrganizationProgramTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EducationOrganizationProgramTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'eop' AND event_object_table = 'educationorganizationprogramtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON eop.educationorganizationprogramtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_eop.educationorganizationprogramtypedescriptor_deleted();
END IF;

END
$$;
