DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_wi.certificatedprogramstatusdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CertificatedProgramStatusDescriptorId, b.codevalue, b.namespace, b.id, 'wi.CertificatedProgramStatusDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CertificatedProgramStatusDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'wi' AND event_object_table = 'certificatedprogramstatusdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON wi.certificatedprogramstatusdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_wi.certificatedprogramstatusdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_wi.countdatenamedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CountDateNameDescriptorId, b.codevalue, b.namespace, b.id, 'wi.CountDateNameDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CountDateNameDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'wi' AND event_object_table = 'countdatenamedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON wi.countdatenamedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_wi.countdatenamedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_wi.countdatereceivingservicedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CountDateReceivingServiceDescriptorId, b.codevalue, b.namespace, b.id, 'wi.CountDateReceivingServiceDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CountDateReceivingServiceDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'wi' AND event_object_table = 'countdatereceivingservicedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON wi.countdatereceivingservicedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_wi.countdatereceivingservicedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_wi.cteprogramareadescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.CteProgramAreaDescriptorId, b.codevalue, b.namespace, b.id, 'wi.CteProgramAreaDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.CteProgramAreaDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'wi' AND event_object_table = 'cteprogramareadescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON wi.cteprogramareadescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_wi.cteprogramareadescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_wi.iaccodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IacCodeDescriptorId, b.codevalue, b.namespace, b.id, 'wi.IacCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IacCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'wi' AND event_object_table = 'iaccodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON wi.iaccodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_wi.iaccodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_wi.modifiedtermdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ModifiedTermDescriptorId, b.codevalue, b.namespace, b.id, 'wi.ModifiedTermDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ModifiedTermDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'wi' AND event_object_table = 'modifiedtermdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON wi.modifiedtermdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_wi.modifiedtermdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_wi.rccplacementtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.RccPlacementTypeDescriptorId, b.codevalue, b.namespace, b.id, 'wi.RccPlacementTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.RccPlacementTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'wi' AND event_object_table = 'rccplacementtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON wi.rccplacementtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_wi.rccplacementtypedescriptor_deleted();
END IF;

END
$$;
