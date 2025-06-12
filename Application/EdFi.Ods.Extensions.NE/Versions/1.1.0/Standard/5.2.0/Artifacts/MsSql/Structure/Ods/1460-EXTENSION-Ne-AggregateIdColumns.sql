CREATE SEQUENCE [ne].[PostGraduateActivity_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [ne].[PostGraduateActivity] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [ne].[PostGraduateActivity_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PostGraduateActivity_AggregateId] ON [ne].[PostGraduateActivity] (AggregateId);

