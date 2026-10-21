DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_edfixcrdc.restraintcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.RestraintCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'edfixcrdc.RestraintCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.RestraintCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'edfixcrdc' AND event_object_table = 'restraintcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON edfixcrdc.restraintcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_edfixcrdc.restraintcategorydescriptor_deleted();
END IF;

END
$$;
