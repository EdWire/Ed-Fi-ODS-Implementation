DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_idoe.accreditationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AccreditationDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.AccreditationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AccreditationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'accreditationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.accreditationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.accreditationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.admcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ADMCodeDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.ADMCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ADMCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'admcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.admcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.admcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.alternativeeducationeligibilityreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AlternativeEducationEligibilityReasonDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.AlternativeEducationEligibilityReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AlternativeEducationEligibilityReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'alternativeeducationeligibilityreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.alternativeeducationeligibilityreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.alternativeeducationeligibilityreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.arrestreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ArrestReasonDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.ArrestReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ArrestReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'arrestreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.arrestreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.arrestreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.assessmentaccommodation_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.accommodationdescriptorid;

    INSERT INTO tracked_changes_idoe.assessmentaccommodation(
        oldaccommodationdescriptorid, oldaccommodationdescriptornamespace, oldaccommodationdescriptorcodevalue, oldassessmentidentifier, oldnamespace,
        id, discriminator, changeversion)
    VALUES (
        OLD.accommodationdescriptorid, dj0.namespace, dj0.codevalue, OLD.assessmentidentifier, OLD.namespace, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'assessmentaccommodation') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.assessmentaccommodation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.assessmentaccommodation_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.circumstancesrelevanttotimelinedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CircumstancesRelevantToTimelineDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.CircumstancesRelevantToTimelineDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CircumstancesRelevantToTimelineDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'circumstancesrelevanttotimelinedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.circumstancesrelevanttotimelinedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.circumstancesrelevanttotimelinedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.criminalgangrelatedeventdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CriminalGangRelatedEventDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.CriminalGangRelatedEventDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CriminalGangRelatedEventDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'criminalgangrelatedeventdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.criminalgangrelatedeventdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.criminalgangrelatedeventdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.disciplineactionservicedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DisciplineActionServiceDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.DisciplineActionServiceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DisciplineActionServiceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'disciplineactionservicedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.disciplineactionservicedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.disciplineactionservicedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.educationorganizationotherpersonnel_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.otherpersonnelcategorydescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.otherpersonneltitledescriptorid;

    INSERT INTO tracked_changes_idoe.educationorganizationotherpersonnel(
        oldlocaleducationagencyid, oldotherpersonnelcategorydescriptorid, oldotherpersonnelcategorydescriptornamespace, oldotherpersonnelcategorydescriptorcodevalue, oldotherpersonneltitledescriptorid, oldotherpersonneltitledescriptornamespace, oldotherpersonneltitledescriptorcodevalue,
        id, discriminator, changeversion)
    VALUES (
        OLD.localeducationagencyid, OLD.otherpersonnelcategorydescriptorid, dj0.namespace, dj0.codevalue, OLD.otherpersonneltitledescriptorid, dj1.namespace, dj1.codevalue, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'educationorganizationotherpersonnel') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.educationorganizationotherpersonnel 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.educationorganizationotherpersonnel_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.ellinstrumentuseddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ELLInstrumentUsedDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.ELLInstrumentUsedDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ELLInstrumentUsedDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'ellinstrumentuseddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.ellinstrumentuseddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.ellinstrumentuseddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.localcapitalizedequipment_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_idoe.localcapitalizedequipment(
        oldaccountidentifier, oldasofdate, oldeducationorganizationid, oldfiscalyear, oldrecordidentifier,
        id, discriminator, changeversion)
    VALUES (
        OLD.accountidentifier, OLD.asofdate, OLD.educationorganizationid, OLD.fiscalyear, OLD.recordidentifier, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'localcapitalizedequipment') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.localcapitalizedequipment 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.localcapitalizedequipment_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.localsubaward_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_idoe.localsubaward(
        oldaccountidentifier, oldasofdate, oldeducationorganizationid, oldfiscalyear, oldrecordidentifier,
        id, discriminator, changeversion)
    VALUES (
        OLD.accountidentifier, OLD.asofdate, OLD.educationorganizationid, OLD.fiscalyear, OLD.recordidentifier, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'localsubaward') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.localsubaward 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.localsubaward_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.localunusedleavepayment_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_idoe.localunusedleavepayment(
        oldaccountidentifier, oldasofdate, oldeducationorganizationid, oldfiscalyear, oldrecordidentifier,
        id, discriminator, changeversion)
    VALUES (
        OLD.accountidentifier, OLD.asofdate, OLD.educationorganizationid, OLD.fiscalyear, OLD.recordidentifier, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'localunusedleavepayment') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.localunusedleavepayment 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.localunusedleavepayment_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.otherpersonnelcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.OtherPersonnelCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.OtherPersonnelCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.OtherPersonnelCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'otherpersonnelcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.otherpersonnelcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.otherpersonnelcategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.otherpersonneltitledescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.OtherPersonnelTitleDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.OtherPersonnelTitleDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.OtherPersonnelTitleDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'otherpersonneltitledescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.otherpersonneltitledescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.otherpersonneltitledescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.programmeetingtimedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ProgramMeetingTimeDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.ProgramMeetingTimeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ProgramMeetingTimeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'programmeetingtimedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.programmeetingtimedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.programmeetingtimedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.sectiondimension_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_idoe.sectiondimension(
        oldcode, oldfiscalyear,
        id, discriminator, changeversion)
    VALUES (
        OLD.code, OLD.fiscalyear, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'sectiondimension') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.sectiondimension 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.sectiondimension_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.studentaccommodation_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.accommodationdescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_idoe.studentaccommodation(
        oldaccommodationdescriptorid, oldaccommodationdescriptornamespace, oldaccommodationdescriptorcodevalue, oldassessmentidentifier, oldeducationorganizationid, oldnamespace, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.accommodationdescriptorid, dj0.namespace, dj0.codevalue, OLD.assessmentidentifier, OLD.educationorganizationid, OLD.namespace, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'studentaccommodation') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.studentaccommodation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.studentaccommodation_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.studentarrestdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StudentArrestDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.StudentArrestDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StudentArrestDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'studentarrestdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.studentarrestdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.studentarrestdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.studentschoolgraduationplan_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.graduationplantypedescriptorid;

    SELECT INTO dj1 * FROM edfi.student j1 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_idoe.studentschoolgraduationplan(
        oldbegindate, oldeducationorganizationid, oldgraduationplantypedescriptorid, oldgraduationplantypedescriptornamespace, oldgraduationplantypedescriptorcodevalue, oldgraduationschoolyear, oldschoolid, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.educationorganizationid, OLD.graduationplantypedescriptorid, dj0.namespace, dj0.codevalue, OLD.graduationschoolyear, OLD.schoolid, OLD.studentusi, dj1.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'studentschoolgraduationplan') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.studentschoolgraduationplan 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.studentschoolgraduationplan_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.subcategorydimension_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_idoe.subcategorydimension(
        oldcode, oldfiscalyear,
        id, discriminator, changeversion)
    VALUES (
        OLD.code, OLD.fiscalyear, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'subcategorydimension') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.subcategorydimension 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.subcategorydimension_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_idoe.timelinecompliancedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TimelineComplianceDescriptorId, b.codevalue, b.namespace, b.id, 'idoe.TimelineComplianceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TimelineComplianceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'idoe' AND event_object_table = 'timelinecompliancedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON idoe.timelinecompliancedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_idoe.timelinecompliancedescriptor_deleted();
END IF;

END
$$;
