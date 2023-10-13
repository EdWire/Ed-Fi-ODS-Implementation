DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_tx.actualext_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.functiondescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.funddescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.objectdescriptorid;

    SELECT INTO dj3 * FROM edfi.descriptor j3 WHERE descriptorid = old.programintentdescriptorid;

    INSERT INTO tracked_changes_tx.actualext(
        oldbegindate, oldeducationorganizationid, oldfiscalyear, oldfunctiondescriptorid, oldfunctiondescriptornamespace, oldfunctiondescriptorcodevalue, oldfunddescriptorid, oldfunddescriptornamespace, oldfunddescriptorcodevalue, oldobjectdescriptorid, oldobjectdescriptornamespace, oldobjectdescriptorcodevalue, oldorganization, oldprogramintentdescriptorid, oldprogramintentdescriptornamespace, oldprogramintentdescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationid, OLD.fiscalyear, OLD.functiondescriptorid, dj0.namespace, dj0.codevalue, OLD.funddescriptorid, dj1.namespace, dj1.codevalue, OLD.objectdescriptorid, dj2.namespace, dj2.codevalue, OLD.organization, OLD.programintentdescriptorid, dj3.namespace, dj3.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'actualext') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.actualext 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.actualext_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.adaeligibilitydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ADAEligibilityDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ADAEligibilityDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ADAEligibilityDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'adaeligibilitydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.adaeligibilitydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.adaeligibilitydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.apioperationtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ApiOperationTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ApiOperationTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ApiOperationTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'apioperationtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.apioperationtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.apioperationtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.applicationtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ApplicationTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ApplicationTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ApplicationTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'applicationtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.applicationtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.applicationtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.armedservicesvocaptbatterydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ArmedServicesVocAptBatteryDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ArmedServicesVocAptBatteryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ArmedServicesVocAptBatteryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'armedservicesvocaptbatterydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.armedservicesvocaptbatterydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.armedservicesvocaptbatterydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.asofstatuslastdayenrollmentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AsOfStatusLastDayEnrollmentDescriptorId, b.codevalue, b.namespace, b.id, 'tx.AsOfStatusLastDayEnrollmentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AsOfStatusLastDayEnrollmentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'asofstatuslastdayenrollmentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.asofstatuslastdayenrollmentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.asofstatuslastdayenrollmentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.asofstatuslastfridayoctoberdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AsOfStatusLastFridayOctoberDescriptorId, b.codevalue, b.namespace, b.id, 'tx.AsOfStatusLastFridayOctoberDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AsOfStatusLastFridayOctoberDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'asofstatuslastfridayoctoberdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.asofstatuslastfridayoctoberdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.asofstatuslastfridayoctoberdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.assessmentresultsobtaineddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AssessmentResultsObtainedDescriptorId, b.codevalue, b.namespace, b.id, 'tx.AssessmentResultsObtainedDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AssessmentResultsObtainedDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'assessmentresultsobtaineddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.assessmentresultsobtaineddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.assessmentresultsobtaineddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.auxiliaryroleiddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AuxiliaryRoleIdDescriptorId, b.codevalue, b.namespace, b.id, 'tx.AuxiliaryRoleIdDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AuxiliaryRoleIdDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'auxiliaryroleiddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.auxiliaryroleiddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.auxiliaryroleiddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.basicreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj2 * FROM edfi.student j2 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.basicreportingperiodattendance(
        oldcalendarcode, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.calendarcode, OLD.gradeleveldescriptorid, dj0.namespace, dj0.codevalue, OLD.reportingperioddescriptorid, dj1.namespace, dj1.codevalue, OLD.schoolid, OLD.studentusi, dj2.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'basicreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.basicreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.basicreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.bilingualeslfundingdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.BilingualESLFundingDescriptorId, b.codevalue, b.namespace, b.id, 'tx.BilingualESLFundingDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.BilingualESLFundingDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'bilingualeslfundingdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.bilingualeslfundingdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.bilingualeslfundingdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.bilingualeslprogramreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.bilingualeslfundingdescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj3 * FROM edfi.student j3 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.bilingualeslprogramreportingperiodattendance(
        oldbilingualeslfundingdescriptorid, oldbilingualeslfundingdescriptornamespace, oldbilingualeslfundingdescriptorcodevalue, oldcalendarcode, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.bilingualeslfundingdescriptorid, dj0.namespace, dj0.codevalue, OLD.calendarcode, OLD.gradeleveldescriptorid, dj1.namespace, dj1.codevalue, OLD.reportingperioddescriptorid, dj2.namespace, dj2.codevalue, OLD.schoolid, OLD.studentusi, dj3.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'bilingualeslprogramreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.bilingualeslprogramreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.bilingualeslprogramreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.budgetext_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.functiondescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.funddescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.objectdescriptorid;

    SELECT INTO dj3 * FROM edfi.descriptor j3 WHERE descriptorid = old.programintentdescriptorid;

    INSERT INTO tracked_changes_tx.budgetext(
        oldbegindate, oldeducationorganizationid, oldfiscalyear, oldfunctiondescriptorid, oldfunctiondescriptornamespace, oldfunctiondescriptorcodevalue, oldfunddescriptorid, oldfunddescriptornamespace, oldfunddescriptorcodevalue, oldobjectdescriptorid, oldobjectdescriptornamespace, oldobjectdescriptorcodevalue, oldorganization, oldprogramintentdescriptorid, oldprogramintentdescriptornamespace, oldprogramintentdescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationid, OLD.fiscalyear, OLD.functiondescriptorid, dj0.namespace, dj0.codevalue, OLD.funddescriptorid, dj1.namespace, dj1.codevalue, OLD.objectdescriptorid, dj2.namespace, dj2.codevalue, OLD.organization, OLD.programintentdescriptorid, dj3.namespace, dj3.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'budgetext') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.budgetext 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.budgetext_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.calendarwaivereventtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CalendarWaiverEventTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.CalendarWaiverEventTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CalendarWaiverEventTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'calendarwaivereventtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.calendarwaivereventtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.calendarwaivereventtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.campusenrollmenttypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CampusEnrollmentTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.CampusEnrollmentTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CampusEnrollmentTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'campusenrollmenttypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.campusenrollmenttypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.campusenrollmenttypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.childcountfundingdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ChildCountFundingDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ChildCountFundingDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ChildCountFundingDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'childcountfundingdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.childcountfundingdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.childcountfundingdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.classtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ClassTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ClassTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ClassTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'classtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.classtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.classtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.contractedinstructionalstafffteext_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.programintentdescriptorid;

    INSERT INTO tracked_changes_tx.contractedinstructionalstafffteext(
        oldeducationorganizationid, oldprogramintentdescriptorid, oldprogramintentdescriptornamespace, oldprogramintentdescriptorcodevalue, oldschoolid,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, OLD.programintentdescriptorid, dj0.namespace, dj0.codevalue, OLD.schoolid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'contractedinstructionalstafffteext') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.contractedinstructionalstafffteext 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.contractedinstructionalstafffteext_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.coursesequencedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CourseSequenceDescriptorId, b.codevalue, b.namespace, b.id, 'tx.CourseSequenceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CourseSequenceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'coursesequencedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.coursesequencedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.coursesequencedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.crisiseventdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CrisisEventDescriptorId, b.codevalue, b.namespace, b.id, 'tx.CrisisEventDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CrisisEventDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'crisiseventdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.crisiseventdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.crisiseventdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.cteprogramreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.cteserviceiddescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj3 * FROM edfi.student j3 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.cteprogramreportingperiodattendance(
        oldcalendarcode, oldcteserviceiddescriptorid, oldcteserviceiddescriptornamespace, oldcteserviceiddescriptorcodevalue, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.calendarcode, OLD.cteserviceiddescriptorid, dj0.namespace, dj0.codevalue, OLD.gradeleveldescriptorid, dj1.namespace, dj1.codevalue, OLD.reportingperioddescriptorid, dj2.namespace, dj2.codevalue, OLD.schoolid, OLD.studentusi, dj3.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'cteprogramreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.cteprogramreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.cteprogramreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.cteserviceiddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CTEServiceIdDescriptorId, b.codevalue, b.namespace, b.id, 'tx.CTEServiceIdDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CTEServiceIdDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'cteserviceiddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.cteserviceiddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.cteserviceiddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.descriptormappinghistory_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_tx.descriptormappinghistory(
        olddateofoperation, oldmappednamespace, oldmappedvalue, oldnamespace, oldvalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.dateofoperation, OLD.mappednamespace, OLD.mappedvalue, OLD.namespace, OLD.value, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'descriptormappinghistory') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.descriptormappinghistory 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.descriptormappinghistory_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.dyslexiariskdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DyslexiaRiskDescriptorId, b.codevalue, b.namespace, b.id, 'tx.DyslexiaRiskDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DyslexiaRiskDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'dyslexiariskdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.dyslexiariskdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.dyslexiariskdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.dyslexiascreeningexceptionreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DyslexiaScreeningExceptionReasonDescriptorId, b.codevalue, b.namespace, b.id, 'tx.DyslexiaScreeningExceptionReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DyslexiaScreeningExceptionReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'dyslexiascreeningexceptionreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.dyslexiascreeningexceptionreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.dyslexiascreeningexceptionreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.dyslexiaservicesdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DyslexiaServicesDescriptorId, b.codevalue, b.namespace, b.id, 'tx.DyslexiaServicesDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DyslexiaServicesDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'dyslexiaservicesdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.dyslexiaservicesdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.dyslexiaservicesdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.earlyreadingindicatordescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EarlyReadingIndicatorDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EarlyReadingIndicatorDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EarlyReadingIndicatorDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'earlyreadingindicatordescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.earlyreadingindicatordescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.earlyreadingindicatordescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.economicdisadvantagedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EconomicDisadvantageDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EconomicDisadvantageDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EconomicDisadvantageDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'economicdisadvantagedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.economicdisadvantagedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.economicdisadvantagedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.eligibilitydelayreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EligibilityDelayReasonDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EligibilityDelayReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EligibilityDelayReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'eligibilitydelayreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.eligibilitydelayreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.eligibilitydelayreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.eloactivitydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ELOActivityDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ELOActivityDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ELOActivityDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'eloactivitydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.eloactivitydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.eloactivitydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.elotypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ELOTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ELOTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ELOTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'elotypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.elotypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.elotypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.emergentbilingualindicatordescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EmergentBilingualIndicatorDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EmergentBilingualIndicatorDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EmergentBilingualIndicatorDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'emergentbilingualindicatordescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.emergentbilingualindicatordescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.emergentbilingualindicatordescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.endorsementcompleteddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EndorsementCompletedDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EndorsementCompletedDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EndorsementCompletedDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'endorsementcompleteddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.endorsementcompleteddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.endorsementcompleteddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.endorsementpursuingdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EndorsementPursuingDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EndorsementPursuingDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EndorsementPursuingDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'endorsementpursuingdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.endorsementpursuingdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.endorsementpursuingdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.enrollmenttrackingverificationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EnrollmentTrackingVerificationDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EnrollmentTrackingVerificationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EnrollmentTrackingVerificationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'enrollmenttrackingverificationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.enrollmenttrackingverificationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.enrollmenttrackingverificationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.evaluationdelayreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.EvaluationDelayReasonDescriptorId, b.codevalue, b.namespace, b.id, 'tx.EvaluationDelayReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.EvaluationDelayReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'evaluationdelayreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.evaluationdelayreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.evaluationdelayreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.extendedschoolyearservicesattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.firstinstructionalsettingdescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj2 * FROM edfi.student j2 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.extendedschoolyearservicesattendance(
        oldfirstinstructionalsettingdescriptorid, oldfirstinstructionalsettingdescriptornamespace, oldfirstinstructionalsettingdescriptorcodevalue, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.firstinstructionalsettingdescriptorid, dj0.namespace, dj0.codevalue, OLD.gradeleveldescriptorid, dj1.namespace, dj1.codevalue, OLD.schoolid, OLD.studentusi, dj2.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'extendedschoolyearservicesattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.extendedschoolyearservicesattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.extendedschoolyearservicesattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.financialaidapplicationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FinancialAidApplicationDescriptorId, b.codevalue, b.namespace, b.id, 'tx.FinancialAidApplicationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FinancialAidApplicationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'financialaidapplicationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.financialaidapplicationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.financialaidapplicationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.flexattendanceprogramdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FlexAttendanceProgramDescriptorId, b.codevalue, b.namespace, b.id, 'tx.FlexAttendanceProgramDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FlexAttendanceProgramDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'flexattendanceprogramdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.flexattendanceprogramdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.flexattendanceprogramdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.flexiblebilingualeslprogramreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.descriptor%ROWTYPE;
    dj4 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.bilingualeslfundingdescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.flexattendanceprogramdescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj3 * FROM edfi.descriptor j3 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj4 * FROM edfi.student j4 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.flexiblebilingualeslprogramreportingperiodattendance(
        oldbilingualeslfundingdescriptorid, oldbilingualeslfundingdescriptornamespace, oldbilingualeslfundingdescriptorcodevalue, oldcalendarcode, oldflexattendanceprogramdescriptorid, oldflexattendanceprogramdescriptornamespace, oldflexattendanceprogramdescriptorcodevalue, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.bilingualeslfundingdescriptorid, dj0.namespace, dj0.codevalue, OLD.calendarcode, OLD.flexattendanceprogramdescriptorid, dj1.namespace, dj1.codevalue, OLD.gradeleveldescriptorid, dj2.namespace, dj2.codevalue, OLD.reportingperioddescriptorid, dj3.namespace, dj3.codevalue, OLD.schoolid, OLD.studentusi, dj4.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'flexiblebilingualeslprogramreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.flexiblebilingualeslprogramreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.flexiblebilingualeslprogramreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.flexiblecteprogramreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.flexattendanceprogramdescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj3 * FROM edfi.student j3 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.flexiblecteprogramreportingperiodattendance(
        oldcalendarcode, oldflexattendanceprogramdescriptorid, oldflexattendanceprogramdescriptornamespace, oldflexattendanceprogramdescriptorcodevalue, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.calendarcode, OLD.flexattendanceprogramdescriptorid, dj0.namespace, dj0.codevalue, OLD.gradeleveldescriptorid, dj1.namespace, dj1.codevalue, OLD.reportingperioddescriptorid, dj2.namespace, dj2.codevalue, OLD.schoolid, OLD.studentusi, dj3.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'flexiblecteprogramreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.flexiblecteprogramreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.flexiblecteprogramreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.flexibleregularprogramreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.flexattendanceprogramdescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj3 * FROM edfi.student j3 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.flexibleregularprogramreportingperiodattendance(
        oldcalendarcode, oldflexattendanceprogramdescriptorid, oldflexattendanceprogramdescriptornamespace, oldflexattendanceprogramdescriptorcodevalue, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.calendarcode, OLD.flexattendanceprogramdescriptorid, dj0.namespace, dj0.codevalue, OLD.gradeleveldescriptorid, dj1.namespace, dj1.codevalue, OLD.reportingperioddescriptorid, dj2.namespace, dj2.codevalue, OLD.schoolid, OLD.studentusi, dj3.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'flexibleregularprogramreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.flexibleregularprogramreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.flexibleregularprogramreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.flexiblespecialeducationprogramreportingperiodat_ec6ab0_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.descriptor%ROWTYPE;
    dj4 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.flexattendanceprogramdescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.instructionalsettingdescriptorid;

    SELECT INTO dj3 * FROM edfi.descriptor j3 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj4 * FROM edfi.student j4 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.flexiblespecialeducationprogramreportingperiodattendance(
        oldcalendarcode, oldflexattendanceprogramdescriptorid, oldflexattendanceprogramdescriptornamespace, oldflexattendanceprogramdescriptorcodevalue, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldinstructionalsettingdescriptorid, oldinstructionalsettingdescriptornamespace, oldinstructionalsettingdescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.calendarcode, OLD.flexattendanceprogramdescriptorid, dj0.namespace, dj0.codevalue, OLD.gradeleveldescriptorid, dj1.namespace, dj1.codevalue, OLD.instructionalsettingdescriptorid, dj2.namespace, dj2.codevalue, OLD.reportingperioddescriptorid, dj3.namespace, dj3.codevalue, OLD.schoolid, OLD.studentusi, dj4.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'flexiblespecialeducationprogramreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.flexiblespecialeducationprogramreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.flexiblespecialeducationprogramreportingperiodat_ec6ab0_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.fostercaretypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FosterCareTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.FosterCareTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FosterCareTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'fostercaretypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.fostercaretypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.fostercaretypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.frequencyofservicesdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FrequencyOfServicesDescriptorId, b.codevalue, b.namespace, b.id, 'tx.FrequencyOfServicesDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FrequencyOfServicesDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'frequencyofservicesdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.frequencyofservicesdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.frequencyofservicesdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.functiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FunctionDescriptorId, b.codevalue, b.namespace, b.id, 'tx.FunctionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FunctionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'functiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.functiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.functiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.funddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FundDescriptorId, b.codevalue, b.namespace, b.id, 'tx.FundDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FundDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'funddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.funddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.funddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.generationcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.GenerationCodeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.GenerationCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.GenerationCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'generationcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.generationcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.generationcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.giftedtalentedprogramdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.GiftedTalentedProgramDescriptorId, b.codevalue, b.namespace, b.id, 'tx.GiftedTalentedProgramDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.GiftedTalentedProgramDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'giftedtalentedprogramdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.giftedtalentedprogramdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.giftedtalentedprogramdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.hearingamplificationaccessdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.HearingAmplificationAccessDescriptorId, b.codevalue, b.namespace, b.id, 'tx.HearingAmplificationAccessDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.HearingAmplificationAccessDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'hearingamplificationaccessdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.hearingamplificationaccessdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.hearingamplificationaccessdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.hearingamplificationdailyusedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.HearingAmplificationDailyUseDescriptorId, b.codevalue, b.namespace, b.id, 'tx.HearingAmplificationDailyUseDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.HearingAmplificationDailyUseDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'hearingamplificationdailyusedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.hearingamplificationdailyusedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.hearingamplificationdailyusedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.hearingamplificationtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.HearingAmplificationTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.HearingAmplificationTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.HearingAmplificationTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'hearingamplificationtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.hearingamplificationtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.hearingamplificationtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.homelessstatusdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.HomelessStatusDescriptorId, b.codevalue, b.namespace, b.id, 'tx.HomelessStatusDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.HomelessStatusDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'homelessstatusdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.homelessstatusdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.homelessstatusdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.hoursspentreceivingservicesdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.HoursSpentReceivingServicesDescriptorId, b.codevalue, b.namespace, b.id, 'tx.HoursSpentReceivingServicesDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.HoursSpentReceivingServicesDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'hoursspentreceivingservicesdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.hoursspentreceivingservicesdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.hoursspentreceivingservicesdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.ibcvendordescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IBCVendorDescriptorId, b.codevalue, b.namespace, b.id, 'tx.IBCVendorDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IBCVendorDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'ibcvendordescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ibcvendordescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.ibcvendordescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.instructionalsettingdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.InstructionalSettingDescriptorId, b.codevalue, b.namespace, b.id, 'tx.InstructionalSettingDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.InstructionalSettingDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'instructionalsettingdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.instructionalsettingdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.instructionalsettingdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.langacqservicesprovideddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.LangAcqServicesProvidedDescriptorId, b.codevalue, b.namespace, b.id, 'tx.LangAcqServicesProvidedDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.LangAcqServicesProvidedDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'langacqservicesprovideddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.langacqservicesprovideddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.langacqservicesprovideddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.militaryconnectedstudentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.MilitaryConnectedStudentDescriptorId, b.codevalue, b.namespace, b.id, 'tx.MilitaryConnectedStudentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.MilitaryConnectedStudentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'militaryconnectedstudentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.militaryconnectedstudentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.militaryconnectedstudentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.noncampusbasedinstructiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NonCampusBasedInstructionDescriptorId, b.codevalue, b.namespace, b.id, 'tx.NonCampusBasedInstructionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NonCampusBasedInstructionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'noncampusbasedinstructiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.noncampusbasedinstructiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.noncampusbasedinstructiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.nslptypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NSLPTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.NSLPTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NSLPTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'nslptypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.nslptypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.nslptypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.objectdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ObjectDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ObjectDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ObjectDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'objectdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.objectdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.objectdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.parentalpermissiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ParentalPermissionDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ParentalPermissionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ParentalPermissionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'parentalpermissiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.parentalpermissiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.parentalpermissiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.payrollactivitydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PayrollActivityDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PayrollActivityDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PayrollActivityDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'payrollactivitydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.payrollactivitydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.payrollactivitydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.payrollext_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.descriptor%ROWTYPE;
    dj4 edfi.descriptor%ROWTYPE;
    dj5 edfi.staff%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.functiondescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.funddescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.objectdescriptorid;

    SELECT INTO dj3 * FROM edfi.descriptor j3 WHERE descriptorid = old.payrollactivitydescriptorid;

    SELECT INTO dj4 * FROM edfi.descriptor j4 WHERE descriptorid = old.programintentdescriptorid;

    SELECT INTO dj5 * FROM edfi.staff j5 WHERE staffusi = old.staffusi;

    INSERT INTO tracked_changes_tx.payrollext(
        oldbegindate, oldeducationorganizationid, oldfiscalyear, oldfunctiondescriptorid, oldfunctiondescriptornamespace, oldfunctiondescriptorcodevalue, oldfunddescriptorid, oldfunddescriptornamespace, oldfunddescriptorcodevalue, oldobjectdescriptorid, oldobjectdescriptornamespace, oldobjectdescriptorcodevalue, oldorganization, oldpayrollactivitydescriptorid, oldpayrollactivitydescriptornamespace, oldpayrollactivitydescriptorcodevalue, oldprogramintentdescriptorid, oldprogramintentdescriptornamespace, oldprogramintentdescriptorcodevalue, oldstaffusi, oldstaffuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationid, OLD.fiscalyear, OLD.functiondescriptorid, dj0.namespace, dj0.codevalue, OLD.funddescriptorid, dj1.namespace, dj1.codevalue, OLD.objectdescriptorid, dj2.namespace, dj2.codevalue, OLD.organization, OLD.payrollactivitydescriptorid, dj3.namespace, dj3.codevalue, OLD.programintentdescriptorid, dj4.namespace, dj4.codevalue, OLD.staffusi, dj5.staffuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'payrollext') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.payrollext 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.payrollext_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.pkcurriculadescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PKCurriculaDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PKCurriculaDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PKCurriculaDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'pkcurriculadescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.pkcurriculadescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.pkcurriculadescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.pkfundingsourcedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PKFundingSourceDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PKFundingSourceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PKFundingSourceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'pkfundingsourcedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.pkfundingsourcedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.pkfundingsourcedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.pkprogramevaluationtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PKProgramEvaluationTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PKProgramEvaluationTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PKProgramEvaluationTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'pkprogramevaluationtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.pkprogramevaluationtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.pkprogramevaluationtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.pkprogramtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PKProgramTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PKProgramTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PKProgramTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'pkprogramtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.pkprogramtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.pkprogramtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.pkschooltypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PKSchoolTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PKSchoolTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PKSchoolTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'pkschooltypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.pkschooltypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.pkschooltypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.pkstudentinstructiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PKStudentInstructionDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PKStudentInstructionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PKStudentInstructionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'pkstudentinstructiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.pkstudentinstructiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.pkstudentinstructiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.pkteacherrequirementdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PKTeacherRequirementDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PKTeacherRequirementDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PKTeacherRequirementDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'pkteacherrequirementdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.pkteacherrequirementdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.pkteacherrequirementdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.postsecondarycertificationlicensuredescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PostSecondaryCertificationLicensureDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PostSecondaryCertificationLicensureDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PostSecondaryCertificationLicensureDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'postsecondarycertificationlicensuredescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.postsecondarycertificationlicensuredescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.postsecondarycertificationlicensuredescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.postsecondarycertlicensureresultdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PostSecondaryCertLicensureResultDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PostSecondaryCertLicensureResultDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PostSecondaryCertLicensureResultDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'postsecondarycertlicensureresultdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.postsecondarycertlicensureresultdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.postsecondarycertlicensureresultdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.ppcdservicelocationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PPCDServiceLocationDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PPCDServiceLocationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PPCDServiceLocationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'ppcdservicelocationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ppcdservicelocationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.ppcdservicelocationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.preferredhomecommunicationmethoddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PreferredHomeCommunicationMethodDescriptorId, b.codevalue, b.namespace, b.id, 'tx.PreferredHomeCommunicationMethodDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PreferredHomeCommunicationMethodDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'preferredhomecommunicationmethoddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.preferredhomecommunicationmethoddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.preferredhomecommunicationmethoddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.prioryearleaver_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_tx.prioryearleaver(
        oldschoolid, oldstudentuid,
        id, discriminator, changeversion)
    VALUES (
        OLD.schoolid, OLD.studentuid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'prioryearleaver') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.prioryearleaver 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.prioryearleaver_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.prioryearleaverparent_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_tx.prioryearleaverparent(
        oldparentuid,
        id, discriminator, changeversion)
    VALUES (
        OLD.parentuid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'prioryearleaverparent') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.prioryearleaverparent 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.prioryearleaverparent_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.prioryearleaverstudentparentassociation_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_tx.prioryearleaverstudentparentassociation(
        oldparentuid, oldschoolid, oldstudentuid,
        id, discriminator, changeversion)
    VALUES (
        OLD.parentuid, OLD.schoolid, OLD.studentuid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'prioryearleaverstudentparentassociation') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.prioryearleaverstudentparentassociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.prioryearleaverstudentparentassociation_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.programintentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ProgramIntentDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ProgramIntentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ProgramIntentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'programintentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.programintentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.programintentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.programofstudydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ProgramOfStudyDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ProgramOfStudyDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ProgramOfStudyDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'programofstudydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.programofstudydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.programofstudydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.regionaldayschoolprogramfordeafdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.RegionalDaySchoolProgramForDeafDescriptorId, b.codevalue, b.namespace, b.id, 'tx.RegionalDaySchoolProgramForDeafDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.RegionalDaySchoolProgramForDeafDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'regionaldayschoolprogramfordeafdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.regionaldayschoolprogramfordeafdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.regionaldayschoolprogramfordeafdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.reportassessmenttypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ReportAssessmentTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ReportAssessmentTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ReportAssessmentTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'reportassessmenttypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.reportassessmenttypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.reportassessmenttypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.reportingperioddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ReportingPeriodDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ReportingPeriodDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ReportingPeriodDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'reportingperioddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.reportingperioddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.reportingperioddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.reportingperiodext_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.reportingperioddescriptorid;

    INSERT INTO tracked_changes_tx.reportingperiodext(
        oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.reportingperioddescriptorid, dj0.namespace, dj0.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'reportingperiodext') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.reportingperiodext 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.reportingperiodext_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.restraintstafftypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.RestraintStaffTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.RestraintStaffTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.RestraintStaffTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'restraintstafftypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.restraintstafftypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.restraintstafftypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.sharedservicearrangementext_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.funddescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.ssatypedescriptorid;

    INSERT INTO tracked_changes_tx.sharedservicearrangementext(
        oldeducationorganizationid, oldfiscalyear, oldfunddescriptorid, oldfunddescriptornamespace, oldfunddescriptorcodevalue, oldssamemberdistrictid, oldssatypedescriptorid, oldssatypedescriptornamespace, oldssatypedescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, OLD.fiscalyear, OLD.funddescriptorid, dj0.namespace, dj0.codevalue, OLD.ssamemberdistrictid, OLD.ssatypedescriptorid, dj1.namespace, dj1.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'sharedservicearrangementext') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.sharedservicearrangementext 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.sharedservicearrangementext_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.sharedservicearrangementstaffdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SharedServiceArrangementStaffDescriptorId, b.codevalue, b.namespace, b.id, 'tx.SharedServiceArrangementStaffDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SharedServiceArrangementStaffDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'sharedservicearrangementstaffdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.sharedservicearrangementstaffdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.sharedservicearrangementstaffdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.specialeducationprogramreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.descriptor%ROWTYPE;
    dj4 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.instructionalsettingdescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.regionaldayschoolprogramfordeafdescriptorid;

    SELECT INTO dj3 * FROM edfi.descriptor j3 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj4 * FROM edfi.student j4 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.specialeducationprogramreportingperiodattendance(
        oldcalendarcode, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldinstructionalsettingdescriptorid, oldinstructionalsettingdescriptornamespace, oldinstructionalsettingdescriptorcodevalue, oldregionaldayschoolprogramfordeafdescriptorid, oldregionaldayschoolprogramfordeafdescriptornamespace, oldregionaldayschoolprogramfordeafdescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.calendarcode, OLD.gradeleveldescriptorid, dj0.namespace, dj0.codevalue, OLD.instructionalsettingdescriptorid, dj1.namespace, dj1.codevalue, OLD.regionaldayschoolprogramfordeafdescriptorid, dj2.namespace, dj2.codevalue, OLD.reportingperioddescriptorid, dj3.namespace, dj3.codevalue, OLD.schoolid, OLD.studentusi, dj4.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'specialeducationprogramreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.specialeducationprogramreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.specialeducationprogramreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.specialprogramsreportingperiodattendance_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.gradeleveldescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.reportingperioddescriptorid;

    SELECT INTO dj2 * FROM edfi.student j2 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.specialprogramsreportingperiodattendance(
        oldcalendarcode, oldgradeleveldescriptorid, oldgradeleveldescriptornamespace, oldgradeleveldescriptorcodevalue, oldreportingperioddescriptorid, oldreportingperioddescriptornamespace, oldreportingperioddescriptorcodevalue, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.calendarcode, OLD.gradeleveldescriptorid, dj0.namespace, dj0.codevalue, OLD.reportingperioddescriptorid, dj1.namespace, dj1.codevalue, OLD.schoolid, OLD.studentusi, dj2.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'specialprogramsreportingperiodattendance') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.specialprogramsreportingperiodattendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.specialprogramsreportingperiodattendance_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.ssaorgassociationext_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.ssatypedescriptorid;

    INSERT INTO tracked_changes_tx.ssaorgassociationext(
        oldeducationorganizationid, oldfiscalagentdistrictid, oldssatypedescriptorid, oldssatypedescriptornamespace, oldssatypedescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, OLD.fiscalagentdistrictid, OLD.ssatypedescriptorid, dj0.namespace, dj0.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'ssaorgassociationext') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ssaorgassociationext 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.ssaorgassociationext_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.ssatypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SSATypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.SSATypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SSATypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'ssatypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ssatypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.ssatypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.staffservicedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffServiceDescriptorId, b.codevalue, b.namespace, b.id, 'tx.StaffServiceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffServiceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'staffservicedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.staffservicedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.staffservicedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.stafftypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffTypeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.StaffTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'stafftypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.stafftypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.stafftypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.studentapplication_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_tx.studentapplication(
        oldapplicationidentifier, oldeducationorganizationid, oldschoolyear,
        id, discriminator, changeversion)
    VALUES (
        OLD.applicationidentifier, OLD.educationorganizationid, OLD.schoolyear, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'studentapplication') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.studentapplication 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.studentapplication_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.studentattributiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StudentAttributionDescriptorId, b.codevalue, b.namespace, b.id, 'tx.StudentAttributionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StudentAttributionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'studentattributiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.studentattributiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.studentattributiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.studentspecialeducationprogrameligibilityassociation_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.programtypedescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_tx.studentspecialeducationprogrameligibilityassociation(
        oldeducationorganizationid, oldprogramname, oldprogramtypedescriptorid, oldprogramtypedescriptornamespace, oldprogramtypedescriptorcodevalue, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, OLD.programname, OLD.programtypedescriptorid, dj0.namespace, dj0.codevalue, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'studentspecialeducationprogrameligibilityassociation') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.studentspecialeducationprogrameligibilityassociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.studentspecialeducationprogrameligibilityassociation_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.teacherincentiveallotmentdesignationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TeacherIncentiveAllotmentDesignationDescriptorId, b.codevalue, b.namespace, b.id, 'tx.TeacherIncentiveAllotmentDesignationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TeacherIncentiveAllotmentDesignationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'teacherincentiveallotmentdesignationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.teacherincentiveallotmentdesignationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.teacherincentiveallotmentdesignationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.texasfirstearlyhscompletionprogramdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TexasFirstEarlyHSCompletionProgramDescriptorId, b.codevalue, b.namespace, b.id, 'tx.TexasFirstEarlyHSCompletionProgramDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TexasFirstEarlyHSCompletionProgramDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'texasfirstearlyhscompletionprogramdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.texasfirstearlyhscompletionprogramdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.texasfirstearlyhscompletionprogramdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.titleofassessmentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TitleOfAssessmentDescriptorId, b.codevalue, b.namespace, b.id, 'tx.TitleOfAssessmentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TitleOfAssessmentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'titleofassessmentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.titleofassessmentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.titleofassessmentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.toolorassessmentuseddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ToolOrAssessmentUsedDescriptorId, b.codevalue, b.namespace, b.id, 'tx.ToolOrAssessmentUsedDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ToolOrAssessmentUsedDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'toolorassessmentuseddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.toolorassessmentuseddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.toolorassessmentuseddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.truancydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TruancyDescriptorId, b.codevalue, b.namespace, b.id, 'tx.TruancyDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TruancyDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'truancydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.truancydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.truancydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.unaccompaniedyouthdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.UnaccompaniedYouthDescriptorId, b.codevalue, b.namespace, b.id, 'tx.UnaccompaniedYouthDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.UnaccompaniedYouthDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'unaccompaniedyouthdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.unaccompaniedyouthdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.unaccompaniedyouthdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_tx.unschooledasyleerefugeedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.UnschooledAsyleeRefugeeDescriptorId, b.codevalue, b.namespace, b.id, 'tx.UnschooledAsyleeRefugeeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.UnschooledAsyleeRefugeeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'tx' AND event_object_table = 'unschooledasyleerefugeedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.unschooledasyleerefugeedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_tx.unschooledasyleerefugeedescriptor_deleted();
END IF;

END
$$;
