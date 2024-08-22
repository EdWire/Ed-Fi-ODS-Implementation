DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'basicreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.basicreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'bilingualeslprogramreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.bilingualeslprogramreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'budgetext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.budgetext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'contractedinstructionalstafffteext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.contractedinstructionalstafffteext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'cteprogramreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.cteprogramreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'descriptormappinghistory') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.descriptormappinghistory
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'extendedschoolyearservicesattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.extendedschoolyearservicesattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'flexiblebilingualeslprogramreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.flexiblebilingualeslprogramreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'flexiblecteprogramreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.flexiblecteprogramreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'flexibleregularprogramreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.flexibleregularprogramreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'flexiblespecialeducationprogramreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.flexiblespecialeducationprogramreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'payrollext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.payrollext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'prioryearactualext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.prioryearactualext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'prioryearleaver') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.prioryearleaver
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'prioryearleaverparent') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.prioryearleaverparent
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'prioryearleaverstudentparentassociation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.prioryearleaverstudentparentassociation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'reportingperiodext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.reportingperiodext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.reportingperiodext_keychg()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    ij0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.reportingperioddescriptorid;
    SELECT INTO ij0 * FROM edfi.descriptor j0 WHERE descriptorid = new.reportingperioddescriptorid;

    -- Handle key changes
    INSERT INTO tracked_changes_tx.reportingperiodext(
        oldcalendarcode, olddate, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldschoolyear, 
        newcalendarcode, newdate, newreportingperioddescriptorid, newreportingperioddescriptornamespace, newreportingperioddescriptorcodevalue, newschoolid, newschoolyear, 
        id, changeversion)
    VALUES (
        old.calendarcode, old.date, old.reportingperioddescriptorid, dj0.namespace, dj0.codevalue, old.schoolid, old.schoolyear, 
        new.calendarcode, new.date, new.reportingperioddescriptorid, ij0.namespace, ij0.codevalue, new.schoolid, new.schoolyear, 
        old.id, (nextval('changes.changeversionsequence')));

    RETURN null;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'handlekeychanges' AND event_object_schema = 'tx' AND event_object_table = 'reportingperiodext') THEN
    CREATE TRIGGER HandleKeyChanges AFTER UPDATE OF calendarcode, date, reportingperioddescriptorid, schoolid, schoolyear ON tx.reportingperiodext
        FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.reportingperiodext_keychg();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'sharedservicearrangementext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.sharedservicearrangementext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'specialeducationprogramreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.specialeducationprogramreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'specialprogramsreportingperiodattendance') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.specialprogramsreportingperiodattendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'ssaorgassociationext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.ssaorgassociationext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'studentapplication') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.studentapplication
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'studentspecialeducationprogrameligibilityassociation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.studentspecialeducationprogrameligibilityassociation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
