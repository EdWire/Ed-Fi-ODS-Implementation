BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ne.EmergencyExclusion') AND name = N'UX_EmergencyExclusion_ChangeVersion')
    CREATE INDEX [UX_EmergencyExclusion_ChangeVersion] ON [ne].[EmergencyExclusion] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ne.IdeaEvent') AND name = N'UX_IdeaEvent_ChangeVersion')
    CREATE INDEX [UX_IdeaEvent_ChangeVersion] ON [ne].[IdeaEvent] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ne.PostGraduateActivity') AND name = N'UX_PostGraduateActivity_ChangeVersion')
    CREATE INDEX [UX_PostGraduateActivity_ChangeVersion] ON [ne].[PostGraduateActivity] ([ChangeVersion] ASC)
    GO
COMMIT

