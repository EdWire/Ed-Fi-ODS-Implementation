DROP TRIGGER IF EXISTS [edfixassessmentroster].[edfixassessmentroster_AssessmentAdministration_TR_DeleteTracking]
GO

CREATE TRIGGER [edfixassessmentroster].[edfixassessmentroster_AssessmentAdministration_TR_DeleteTracking] ON [edfixassessmentroster].[AssessmentAdministration] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfixassessmentroster].[AssessmentAdministration](OldAdministrationIdentifier, OldAssessmentIdentifier, OldAssigningEducationOrganizationId, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT d.AdministrationIdentifier, d.AssessmentIdentifier, d.AssigningEducationOrganizationId, d.Namespace, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] ENABLE TRIGGER [edfixassessmentroster_AssessmentAdministration_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [edfixassessmentroster].[edfixassessmentroster_StudentAssessmentRegistration_TR_DeleteTracking]
GO

CREATE TRIGGER [edfixassessmentroster].[edfixassessmentroster_StudentAssessmentRegistration_TR_DeleteTracking] ON [edfixassessmentroster].[StudentAssessmentRegistration] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfixassessmentroster].[StudentAssessmentRegistration](OldAdministrationIdentifier, OldAssessmentIdentifier, OldAssigningEducationOrganizationId, OldEducationOrganizationId, OldNamespace, OldStudentUSI, OldStudentUniqueId, Id, Discriminator, ChangeVersion)
    SELECT d.AdministrationIdentifier, d.AssessmentIdentifier, d.AssigningEducationOrganizationId, d.EducationOrganizationId, d.Namespace, d.StudentUSI, j0.StudentUniqueId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
        INNER JOIN edfi.Student j0
            ON d.StudentUSI = j0.StudentUSI
END
GO

ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] ENABLE TRIGGER [edfixassessmentroster_StudentAssessmentRegistration_TR_DeleteTracking]
GO


