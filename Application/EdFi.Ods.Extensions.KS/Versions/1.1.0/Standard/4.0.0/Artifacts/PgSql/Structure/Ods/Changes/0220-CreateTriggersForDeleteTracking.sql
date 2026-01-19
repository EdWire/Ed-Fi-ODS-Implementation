DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_ks.assessmentrequestdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AssessmentRequestDescriptorId, b.codevalue, b.namespace, b.id, 'ks.AssessmentRequestDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AssessmentRequestDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'assessmentrequestdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.assessmentrequestdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.assessmentrequestdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.collegecareertypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CollegeCareerTypeDescriptorId, b.codevalue, b.namespace, b.id, 'ks.CollegeCareerTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CollegeCareerTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'collegecareertypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.collegecareertypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.collegecareertypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.coursedeliverytypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CourseDeliveryTypeDescriptorId, b.codevalue, b.namespace, b.id, 'ks.CourseDeliveryTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CourseDeliveryTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'coursedeliverytypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.coursedeliverytypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.coursedeliverytypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.courseprogramtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CourseProgramTypeDescriptorId, b.codevalue, b.namespace, b.id, 'ks.CourseProgramTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CourseProgramTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'courseprogramtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.courseprogramtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.courseprogramtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.coursestatusdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CourseStatusDescriptorId, b.codevalue, b.namespace, b.id, 'ks.CourseStatusDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CourseStatusDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'coursestatusdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.coursestatusdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.coursestatusdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.ctecertificationearneddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CTECertificationEarnedDescriptorId, b.codevalue, b.namespace, b.id, 'ks.CTECertificationEarnedDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CTECertificationEarnedDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'ctecertificationearneddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.ctecertificationearneddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.ctecertificationearneddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.fundingsourcedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.FundingSourceDescriptorId, b.codevalue, b.namespace, b.id, 'ks.FundingSourceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.FundingSourceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'fundingsourcedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.fundingsourcedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.fundingsourcedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.immigrantstudentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ImmigrantStudentDescriptorId, b.codevalue, b.namespace, b.id, 'ks.ImmigrantStudentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ImmigrantStudentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'immigrantstudentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.immigrantstudentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.immigrantstudentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.languageinstructionprogramtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.LanguageInstructionProgramTypeDescriptorId, b.codevalue, b.namespace, b.id, 'ks.LanguageInstructionProgramTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.LanguageInstructionProgramTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'languageinstructionprogramtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.languageinstructionprogramtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.languageinstructionprogramtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.militaryconnectedstudentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.MilitaryConnectedStudentDescriptorId, b.codevalue, b.namespace, b.id, 'ks.MilitaryConnectedStudentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.MilitaryConnectedStudentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'militaryconnectedstudentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.militaryconnectedstudentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.militaryconnectedstudentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.neglecteddelinquentstudentdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NeglectedDelinquentStudentDescriptorId, b.codevalue, b.namespace, b.id, 'ks.NeglectedDelinquentStudentDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NeglectedDelinquentStudentDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'neglecteddelinquentstudentdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.neglecteddelinquentstudentdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.neglecteddelinquentstudentdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.postgraduationplansdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PostGraduationPlansDescriptorId, b.codevalue, b.namespace, b.id, 'ks.PostGraduationPlansDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PostGraduationPlansDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'postgraduationplansdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.postgraduationplansdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.postgraduationplansdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.qualifiedfor504descriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.QualifiedFor504DescriptorId, b.codevalue, b.namespace, b.id, 'ks.QualifiedFor504Descriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.QualifiedFor504DescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'qualifiedfor504descriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.qualifiedfor504descriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.qualifiedfor504descriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.sectioneducator_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_ks.sectioneducator(
        oldeducatorelectronicmailaddress, oldlocalcoursecode, oldschoolid, oldschoolyear, oldsectionidentifier, oldsessionname,
        id, discriminator, changeversion)
    VALUES (
        OLD.educatorelectronicmailaddress, OLD.localcoursecode, OLD.schoolid, OLD.schoolyear, OLD.sectionidentifier, OLD.sessionname, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'sectioneducator') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.sectioneducator 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.sectioneducator_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.snackpack_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_ks.snackpack(
        oldstatestudentid,
        id, discriminator, changeversion)
    VALUES (
        OLD.statestudentid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'snackpack') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.snackpack 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.snackpack_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_ks.workbasedlearningdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.WorkBasedLearningDescriptorId, b.codevalue, b.namespace, b.id, 'ks.WorkBasedLearningDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.WorkBasedLearningDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'ks' AND event_object_table = 'workbasedlearningdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON ks.workbasedlearningdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_ks.workbasedlearningdescriptor_deleted();
END IF;

END
$$;
