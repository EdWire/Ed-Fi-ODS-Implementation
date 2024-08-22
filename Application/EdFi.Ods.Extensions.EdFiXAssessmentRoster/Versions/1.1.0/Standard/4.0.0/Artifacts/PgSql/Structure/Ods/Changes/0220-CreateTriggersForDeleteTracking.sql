DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_edfixassessmentroster.assessmentadministration_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfixassessmentroster.assessmentadministration(
        oldadministrationidentifier, oldassessmentidentifier, oldassigningeducationorganizationid, oldnamespace,
        id, discriminator, changeversion)
    VALUES (
        OLD.administrationidentifier, OLD.assessmentidentifier, OLD.assigningeducationorganizationid, OLD.namespace, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'edfixassessmentroster' AND event_object_table = 'assessmentadministration') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixassessmentroster.assessmentadministration 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_edfixassessmentroster.assessmentadministration_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_edfixassessmentroster.studentassessmentregistration_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.student j0 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_edfixassessmentroster.studentassessmentregistration(
        oldadministrationidentifier, oldassessmentidentifier, oldassigningeducationorganizationid, oldeducationorganizationid, oldnamespace, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.administrationidentifier, OLD.assessmentidentifier, OLD.assigningeducationorganizationid, OLD.educationorganizationid, OLD.namespace, OLD.studentusi, dj0.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'edfixassessmentroster' AND event_object_table = 'studentassessmentregistration') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixassessmentroster.studentassessmentregistration 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_edfixassessmentroster.studentassessmentregistration_deleted();
END IF;

END
$$;
