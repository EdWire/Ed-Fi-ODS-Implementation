CREATE SEQUENCE [edfixcrdc].[ClassGroup_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edfixcrdc].[ClassGroup] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edfixcrdc].[ClassGroup_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ClassGroup_AggregateId] ON [edfixcrdc].[ClassGroup] (AggregateId);

CREATE SEQUENCE [edfixcrdc].[CommunityProviderLocation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edfixcrdc].[CommunityProviderLocation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edfixcrdc].[CommunityProviderLocation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CommunityProviderLocation_AggregateId] ON [edfixcrdc].[CommunityProviderLocation] (AggregateId);

CREATE SEQUENCE [edfixcrdc].[StudentClassGroupAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edfixcrdc].[StudentClassGroupAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edfixcrdc].[StudentClassGroupAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentClassGroupAssociation_AggregateId] ON [edfixcrdc].[StudentClassGroupAssociation] (AggregateId);

CREATE SEQUENCE [edfixcrdc].[StudentCommunityProviderLocationAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edfixcrdc].[StudentCommunityProviderLocationAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edfixcrdc].[StudentCommunityProviderLocationAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentCommunityProviderLocationAssociation_AggregateId] ON [edfixcrdc].[StudentCommunityProviderLocationAssociation] (AggregateId);

