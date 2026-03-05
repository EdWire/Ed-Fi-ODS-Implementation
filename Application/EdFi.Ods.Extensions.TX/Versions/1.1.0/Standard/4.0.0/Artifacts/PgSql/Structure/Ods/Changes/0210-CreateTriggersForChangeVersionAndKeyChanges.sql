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

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'coursetranscriptext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.coursetranscriptext
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.coursetranscriptext_keychg()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    ij0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    ij1 edfi.descriptor%ROWTYPE;
    dj2 edfi.student%ROWTYPE;
    ij2 edfi.student%ROWTYPE;
    dj3 edfi.descriptor%ROWTYPE;
    ij3 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.courseattemptresultdescriptorid;
    SELECT INTO ij0 * FROM edfi.descriptor j0 WHERE descriptorid = new.courseattemptresultdescriptorid;
    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.coursesequencedescriptorid;
    SELECT INTO ij1 * FROM edfi.descriptor j1 WHERE descriptorid = new.coursesequencedescriptorid;
    SELECT INTO dj2 * FROM edfi.student j2 WHERE studentusi = old.studentusi;
    SELECT INTO ij2 * FROM edfi.student j2 WHERE studentusi = new.studentusi;
    SELECT INTO dj3 * FROM edfi.descriptor j3 WHERE descriptorid = old.termdescriptorid;
    SELECT INTO ij3 * FROM edfi.descriptor j3 WHERE descriptorid = new.termdescriptorid;

    -- Handle key changes
    INSERT INTO tracked_changes_tx.coursetranscriptext(
        oldcourseattemptresultdescriptorid, oldcourseattemptresultdescriptornamespace, oldcourseattemptresultdescriptorcodevalue, oldcoursecoursecode, oldcoursecourseeducationorganizationid, oldcoursesequencedescriptorid, oldcoursesequencedescriptornamespace, oldcoursesequencedescriptorcodevalue, oldeducationorganizationid, oldlocalcoursecode, oldschoolid, oldschoolyear, oldsectionidentifier, oldsessionname, oldstudentusi, oldstudentuniqueid, oldtermdescriptorid, oldtermdescriptornamespace, oldtermdescriptorcodevalue, 
        newcourseattemptresultdescriptorid, newcourseattemptresultdescriptornamespace, newcourseattemptresultdescriptorcodevalue, newcoursecoursecode, newcoursecourseeducationorganizationid, newcoursesequencedescriptorid, newcoursesequencedescriptornamespace, newcoursesequencedescriptorcodevalue, neweducationorganizationid, newlocalcoursecode, newschoolid, newschoolyear, newsectionidentifier, newsessionname, newstudentusi, newstudentuniqueid, newtermdescriptorid, newtermdescriptornamespace, newtermdescriptorcodevalue, 
        id, changeversion)
    VALUES (
        old.courseattemptresultdescriptorid, dj0.namespace, dj0.codevalue, old.coursecoursecode, old.coursecourseeducationorganizationid, old.coursesequencedescriptorid, dj1.namespace, dj1.codevalue, old.educationorganizationid, old.localcoursecode, old.schoolid, old.schoolyear, old.sectionidentifier, old.sessionname, old.studentusi, dj2.studentuniqueid, old.termdescriptorid, dj3.namespace, dj3.codevalue, 
        new.courseattemptresultdescriptorid, ij0.namespace, ij0.codevalue, new.coursecoursecode, new.coursecourseeducationorganizationid, new.coursesequencedescriptorid, ij1.namespace, ij1.codevalue, new.educationorganizationid, new.localcoursecode, new.schoolid, new.schoolyear, new.sectionidentifier, new.sessionname, new.studentusi, ij2.studentuniqueid, new.termdescriptorid, ij3.namespace, ij3.codevalue, 
        old.id, (nextval('changes.changeversionsequence')));

    RETURN null;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'handlekeychanges' AND event_object_schema = 'tx' AND event_object_table = 'coursetranscriptext') THEN
    CREATE TRIGGER HandleKeyChanges AFTER UPDATE OF courseattemptresultdescriptorid, coursecoursecode, coursecourseeducationorganizationid, coursesequencedescriptorid, educationorganizationid, localcoursecode, schoolid, schoolyear, sectionidentifier, sessionname, studentusi, termdescriptorid ON tx.coursetranscriptext
        FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.coursetranscriptext_keychg();
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

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'tx' AND event_object_table = 'prioryearssaorgassociationext') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.prioryearssaorgassociationext
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
