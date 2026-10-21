DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'ne' AND event_object_table = 'emergencyexclusion') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON ne.emergencyexclusion
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'ne' AND event_object_table = 'ideaevent') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON ne.ideaevent
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'ne' AND event_object_table = 'postgraduateactivity') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON ne.postgraduateactivity
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
