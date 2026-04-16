DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'eop' AND event_object_table = 'educationorganizationeducationorganizationprogram') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON eop.educationorganizationeducationorganizationprogram
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'eop' AND event_object_table = 'educationorganizationprogramauthorizedprovider') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON eop.educationorganizationprogramauthorizedprovider
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'eop' AND event_object_table = 'educationorganizationprogramprovider') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON eop.educationorganizationprogramprovider
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
