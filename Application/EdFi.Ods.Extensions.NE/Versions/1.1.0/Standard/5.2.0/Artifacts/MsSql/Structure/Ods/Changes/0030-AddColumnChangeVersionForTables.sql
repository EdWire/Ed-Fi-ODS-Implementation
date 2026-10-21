
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[ne].[EmergencyExclusion]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [ne].[EmergencyExclusion] ADD [ChangeVersion] [BIGINT] CONSTRAINT EmergencyExclusion_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [ne].[EmergencyExclusion] DROP CONSTRAINT EmergencyExclusion_DF_ChangeVersion;
ALTER TABLE [ne].[EmergencyExclusion] ADD CONSTRAINT EmergencyExclusion_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[ne].[IdeaEvent]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [ne].[IdeaEvent] ADD [ChangeVersion] [BIGINT] CONSTRAINT IdeaEvent_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [ne].[IdeaEvent] DROP CONSTRAINT IdeaEvent_DF_ChangeVersion;
ALTER TABLE [ne].[IdeaEvent] ADD CONSTRAINT IdeaEvent_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[ne].[PostGraduateActivity]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [ne].[PostGraduateActivity] ADD [ChangeVersion] [BIGINT] CONSTRAINT PostGraduateActivity_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [ne].[PostGraduateActivity] DROP CONSTRAINT PostGraduateActivity_DF_ChangeVersion;
ALTER TABLE [ne].[PostGraduateActivity] ADD CONSTRAINT PostGraduateActivity_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


