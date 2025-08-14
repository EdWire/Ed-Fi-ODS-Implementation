CREATE SEQUENCE [ks].[SectionEducator_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [ks].[SectionEducator] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [ks].[SectionEducator_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SectionEducator_AggregateId] ON [ks].[SectionEducator] (AggregateId);

CREATE SEQUENCE [ks].[SnackPack_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [ks].[SnackPack] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [ks].[SnackPack_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SnackPack_AggregateId] ON [ks].[SnackPack] (AggregateId);

