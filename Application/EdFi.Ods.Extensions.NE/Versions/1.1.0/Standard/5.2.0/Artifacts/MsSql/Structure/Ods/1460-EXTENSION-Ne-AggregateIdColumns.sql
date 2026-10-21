CREATE SEQUENCE [ne].[EmergencyExclusion_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [ne].[EmergencyExclusion] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [ne].[EmergencyExclusion_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EmergencyExclusion_AggregateId] ON [ne].[EmergencyExclusion] (AggregateId);

CREATE SEQUENCE [ne].[IdeaEvent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [ne].[IdeaEvent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [ne].[IdeaEvent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_IdeaEvent_AggregateId] ON [ne].[IdeaEvent] (AggregateId);

CREATE SEQUENCE [ne].[PostGraduateActivity_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [ne].[PostGraduateActivity] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [ne].[PostGraduateActivity_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PostGraduateActivity_AggregateId] ON [ne].[PostGraduateActivity] (AggregateId);

