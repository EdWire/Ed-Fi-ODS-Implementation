DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'assessmentaccommodation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.assessmentaccommodation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'educationorganizationotherpersonnel') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.educationorganizationotherpersonnel
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'localcapitalizedequipment') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.localcapitalizedequipment
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'localsubaward') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.localsubaward
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'localunusedleavepayment') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.localunusedleavepayment
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'sectiondimension') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.sectiondimension
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'studentaccommodation') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.studentaccommodation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'studentschoolgraduationplan') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.studentschoolgraduationplan
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'idoe' AND event_object_table = 'subcategorydimension') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON idoe.subcategorydimension
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
