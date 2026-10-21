DROP TRIGGER IF EXISTS [ne].[ne_EmergencyExclusion_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ne].[ne_EmergencyExclusion_TR_UpdateChangeVersion] ON [ne].[EmergencyExclusion] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ne].[EmergencyExclusion]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [ne].[EmergencyExclusion] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [ne].[ne_IdeaEvent_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ne].[ne_IdeaEvent_TR_UpdateChangeVersion] ON [ne].[IdeaEvent] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ne].[IdeaEvent]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [ne].[IdeaEvent] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [ne].[ne_PostGraduateActivity_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ne].[ne_PostGraduateActivity_TR_UpdateChangeVersion] ON [ne].[PostGraduateActivity] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ne].[PostGraduateActivity]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [ne].[PostGraduateActivity] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

