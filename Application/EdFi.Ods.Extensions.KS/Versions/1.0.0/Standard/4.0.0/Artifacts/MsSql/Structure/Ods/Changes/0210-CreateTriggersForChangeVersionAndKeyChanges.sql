DROP TRIGGER IF EXISTS [ks].[ks_SectionEducator_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ks].[ks_SectionEducator_TR_UpdateChangeVersion] ON [ks].[SectionEducator] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE u
    SET 
        ChangeVersion = NEXT VALUE FOR [changes].[ChangeVersionSequence],
        LastModifiedDate = 
            CASE 
                WHEN i.LastModifiedDate = d.LastModifiedDate THEN GETUTCDATE()
                ELSE i.LastModifiedDate
            END
    FROM [ks].[SectionEducator] u
    INNER JOIN inserted i ON i.Id = u.Id
    INNER JOIN deleted d ON d.Id = u.Id;

    -- Handle key changes
    INSERT INTO tracked_changes_ks.SectionEducator(
        OldEducatorElectronicMailAddress, OldLocalCourseCode, OldSchoolId, OldSchoolYear, OldSectionIdentifier, OldSessionName, 
        NewEducatorElectronicMailAddress, NewLocalCourseCode, NewSchoolId, NewSchoolYear, NewSectionIdentifier, NewSessionName, 
        Id, ChangeVersion)
    SELECT
        d.EducatorElectronicMailAddress, d.LocalCourseCode, d.SchoolId, d.SchoolYear, d.SectionIdentifier, d.SessionName, 
        i.EducatorElectronicMailAddress, i.LocalCourseCode, i.SchoolId, i.SchoolYear, i.SectionIdentifier, i.SessionName, 
        d.Id, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM deleted d INNER JOIN inserted i ON d.Id = i.Id

    WHERE
        d.EducatorElectronicMailAddress <> i.EducatorElectronicMailAddress OR d.LocalCourseCode <> i.LocalCourseCode OR d.SchoolId <> i.SchoolId OR d.SchoolYear <> i.SchoolYear OR d.SectionIdentifier <> i.SectionIdentifier OR d.SessionName <> i.SessionName;
END	
GO

DROP TRIGGER IF EXISTS [ks].[ks_SnackPack_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ks].[ks_SnackPack_TR_UpdateChangeVersion] ON [ks].[SnackPack] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ks].[SnackPack]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [ks].[SnackPack] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

