
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_ClassGroup_CommunityProviderId' AND object_id = OBJECT_ID('edfixcrdc.ClassGroup')) 
BEGIN
    CREATE INDEX IX_ClassGroup_CommunityProviderId ON [edfixcrdc].[ClassGroup](CommunityProviderId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_CommunityProviderLocation_CommunityProviderId' AND object_id = OBJECT_ID('edfixcrdc.CommunityProviderLocation')) 
BEGIN
    CREATE INDEX IX_CommunityProviderLocation_CommunityProviderId ON [edfixcrdc].[CommunityProviderLocation](CommunityProviderId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentClassGroupAssociation_CommunityProviderId' AND object_id = OBJECT_ID('edfixcrdc.StudentClassGroupAssociation')) 
BEGIN
    CREATE INDEX IX_StudentClassGroupAssociation_CommunityProviderId ON [edfixcrdc].[StudentClassGroupAssociation](CommunityProviderId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentCommunityProviderLocationAssociation_CommunityProviderId' AND object_id = OBJECT_ID('edfixcrdc.StudentCommunityProviderLocationAssociation')) 
BEGIN
    CREATE INDEX IX_StudentCommunityProviderLocationAssociation_CommunityProviderId ON [edfixcrdc].[StudentCommunityProviderLocationAssociation](CommunityProviderId) INCLUDE (Id)
END;
