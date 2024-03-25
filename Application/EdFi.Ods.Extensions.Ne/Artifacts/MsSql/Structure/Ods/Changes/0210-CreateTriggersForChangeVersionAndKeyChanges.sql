DROP TRIGGER IF EXISTS [ne].[ne_AssessmentAdministration_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ne].[ne_AssessmentAdministration_TR_UpdateChangeVersion] ON [ne].[AssessmentAdministration] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ne].[AssessmentAdministration]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [ne].[AssessmentAdministration] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [ne].[ne_CrisisDetails_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ne].[ne_CrisisDetails_TR_UpdateChangeVersion] ON [ne].[CrisisDetails] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ne].[CrisisDetails]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [ne].[CrisisDetails] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [ne].[ne_PostGraduateActivity_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [ne].[ne_PostGraduateActivity_TR_UpdateChangeVersion] ON [ne].[PostGraduateActivity] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [ne].[PostGraduateActivity]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [ne].[PostGraduateActivity] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

