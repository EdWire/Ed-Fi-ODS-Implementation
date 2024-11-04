DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'edfixassessmentroster' AND event_object_table = 'assessmentadministration') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfixassessmentroster.assessmentadministration
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'edfixassessmentroster' AND event_object_table = 'studentassessmentregistration') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfixassessmentroster.studentassessmentregistration
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
