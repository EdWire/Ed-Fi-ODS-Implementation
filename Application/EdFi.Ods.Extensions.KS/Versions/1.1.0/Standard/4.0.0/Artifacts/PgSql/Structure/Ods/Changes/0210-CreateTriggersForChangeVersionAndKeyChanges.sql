DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'ks' AND event_object_table = 'sectioneducator') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON ks.sectioneducator
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.sectioneducator_keychg()
    RETURNS trigger AS
$BODY$
DECLARE
BEGIN

    -- Handle key changes
    INSERT INTO tracked_changes_ks.sectioneducator(
        oldeducatorelectronicmailaddress, oldlocalcoursecode, oldschoolid, oldschoolyear, oldsectionidentifier, oldsessionname, 
        neweducatorelectronicmailaddress, newlocalcoursecode, newschoolid, newschoolyear, newsectionidentifier, newsessionname, 
        id, changeversion)
    VALUES (
        old.educatorelectronicmailaddress, old.localcoursecode, old.schoolid, old.schoolyear, old.sectionidentifier, old.sessionname, 
        new.educatorelectronicmailaddress, new.localcoursecode, new.schoolid, new.schoolyear, new.sectionidentifier, new.sessionname, 
        old.id, (nextval('changes.changeversionsequence')));

    RETURN null;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'handlekeychanges' AND event_object_schema = 'ks' AND event_object_table = 'sectioneducator') THEN
    CREATE TRIGGER HandleKeyChanges AFTER UPDATE OF educatorelectronicmailaddress, localcoursecode, schoolid, schoolyear, sectionidentifier, sessionname ON ks.sectioneducator
        FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.sectioneducator_keychg();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'ks' AND event_object_table = 'snackpack') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON ks.snackpack
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
