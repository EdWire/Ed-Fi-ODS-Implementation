BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ne.EmergencyExclusion') AND name = N'UX_EmergencyExclusion_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_EmergencyExclusion_Id ON [ne].[EmergencyExclusion]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ne.IdeaEvent') AND name = N'UX_IdeaEvent_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_IdeaEvent_Id ON [ne].[IdeaEvent]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'ne.PostGraduateActivity') AND name = N'UX_PostGraduateActivity_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_PostGraduateActivity_Id ON [ne].[PostGraduateActivity]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

