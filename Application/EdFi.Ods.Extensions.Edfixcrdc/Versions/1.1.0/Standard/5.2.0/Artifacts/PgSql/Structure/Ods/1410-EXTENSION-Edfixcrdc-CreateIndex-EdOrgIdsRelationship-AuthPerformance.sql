
CREATE INDEX IF NOT EXISTS IX_ClassGroup_CommunityProviderId ON edfixcrdc.ClassGroup(CommunityProviderId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_CommunityProviderLocation_CommunityProviderId ON edfixcrdc.CommunityProviderLocation(CommunityProviderId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentClassGroupAssociation_CommunityProviderId ON edfixcrdc.StudentClassGroupAssociation(CommunityProviderId) INCLUDE (Id);

CREATE INDEX IF NOT EXISTS IX_StudentCommunityProviderLocationAssociation_CommunityProviderId ON edfixcrdc.StudentCommunityProviderLocationAssociation(CommunityProviderId) INCLUDE (Id);
