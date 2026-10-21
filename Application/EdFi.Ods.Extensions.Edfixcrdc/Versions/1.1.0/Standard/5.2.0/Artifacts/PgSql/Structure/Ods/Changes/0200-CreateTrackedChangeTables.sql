DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_edfixcrdc') THEN
CREATE SCHEMA tracked_changes_edfixcrdc;
END IF;

END
$$;
