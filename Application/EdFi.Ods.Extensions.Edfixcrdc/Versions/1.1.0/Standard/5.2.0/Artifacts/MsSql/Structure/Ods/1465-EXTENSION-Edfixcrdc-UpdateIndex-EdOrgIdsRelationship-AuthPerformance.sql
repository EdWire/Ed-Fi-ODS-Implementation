
DROP INDEX IF EXISTS IX_ClassGroup_CommunityProviderId ON [edfixcrdc].[ClassGroup];
CREATE INDEX IX_ClassGroup_CommunityProviderId ON [edfixcrdc].[ClassGroup](CommunityProviderId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_CommunityProviderLocation_CommunityProviderId ON [edfixcrdc].[CommunityProviderLocation];
CREATE INDEX IX_CommunityProviderLocation_CommunityProviderId ON [edfixcrdc].[CommunityProviderLocation](CommunityProviderId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentClassGroupAssociation_CommunityProviderId ON [edfixcrdc].[StudentClassGroupAssociation];
CREATE INDEX IX_StudentClassGroupAssociation_CommunityProviderId ON [edfixcrdc].[StudentClassGroupAssociation](CommunityProviderId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentClassGroupAssociation_StudentUSI' AND object_id = OBJECT_ID('edfixcrdc.StudentClassGroupAssociation')) 
BEGIN
    CREATE INDEX IX_StudentClassGroupAssociation_StudentUSI ON [edfixcrdc].[StudentClassGroupAssociation](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentCommunityProviderLocationAssociation_CommunityProviderId ON [edfixcrdc].[StudentCommunityProviderLocationAssociation];
CREATE INDEX IX_StudentCommunityProviderLocationAssociation_CommunityProviderId ON [edfixcrdc].[StudentCommunityProviderLocationAssociation](CommunityProviderId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentCommunityProviderLocationAssociation_StudentUSI' AND object_id = OBJECT_ID('edfixcrdc.StudentCommunityProviderLocationAssociation')) 
BEGIN
    CREATE INDEX IX_StudentCommunityProviderLocationAssociation_StudentUSI ON [edfixcrdc].[StudentCommunityProviderLocationAssociation](StudentUSI) INCLUDE (AggregateId)
END;
