DROP TRIGGER IF EXISTS [ks].[ks_AssessmentRequestDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_AssessmentRequestDescriptor_TR_DeleteTracking] ON [ks].[AssessmentRequestDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.AssessmentRequestDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.AssessmentRequestDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.AssessmentRequestDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[AssessmentRequestDescriptor] ENABLE TRIGGER [ks_AssessmentRequestDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_CollegeCareerTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_CollegeCareerTypeDescriptor_TR_DeleteTracking] ON [ks].[CollegeCareerTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CollegeCareerTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.CollegeCareerTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CollegeCareerTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[CollegeCareerTypeDescriptor] ENABLE TRIGGER [ks_CollegeCareerTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_CourseDeliveryTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_CourseDeliveryTypeDescriptor_TR_DeleteTracking] ON [ks].[CourseDeliveryTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CourseDeliveryTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.CourseDeliveryTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CourseDeliveryTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[CourseDeliveryTypeDescriptor] ENABLE TRIGGER [ks_CourseDeliveryTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_CourseProgramTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_CourseProgramTypeDescriptor_TR_DeleteTracking] ON [ks].[CourseProgramTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CourseProgramTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.CourseProgramTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CourseProgramTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[CourseProgramTypeDescriptor] ENABLE TRIGGER [ks_CourseProgramTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_CourseStatusDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_CourseStatusDescriptor_TR_DeleteTracking] ON [ks].[CourseStatusDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CourseStatusDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.CourseStatusDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CourseStatusDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[CourseStatusDescriptor] ENABLE TRIGGER [ks_CourseStatusDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_CTECertificationEarnedDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_CTECertificationEarnedDescriptor_TR_DeleteTracking] ON [ks].[CTECertificationEarnedDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.CTECertificationEarnedDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.CTECertificationEarnedDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.CTECertificationEarnedDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[CTECertificationEarnedDescriptor] ENABLE TRIGGER [ks_CTECertificationEarnedDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_FundingSourceDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_FundingSourceDescriptor_TR_DeleteTracking] ON [ks].[FundingSourceDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.FundingSourceDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.FundingSourceDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.FundingSourceDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[FundingSourceDescriptor] ENABLE TRIGGER [ks_FundingSourceDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_ImmigrantStudentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_ImmigrantStudentDescriptor_TR_DeleteTracking] ON [ks].[ImmigrantStudentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.ImmigrantStudentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.ImmigrantStudentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.ImmigrantStudentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[ImmigrantStudentDescriptor] ENABLE TRIGGER [ks_ImmigrantStudentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_LanguageInstructionProgramTypeDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_LanguageInstructionProgramTypeDescriptor_TR_DeleteTracking] ON [ks].[LanguageInstructionProgramTypeDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.LanguageInstructionProgramTypeDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.LanguageInstructionProgramTypeDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.LanguageInstructionProgramTypeDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[LanguageInstructionProgramTypeDescriptor] ENABLE TRIGGER [ks_LanguageInstructionProgramTypeDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_MilitaryConnectedStudentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_MilitaryConnectedStudentDescriptor_TR_DeleteTracking] ON [ks].[MilitaryConnectedStudentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.MilitaryConnectedStudentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.MilitaryConnectedStudentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.MilitaryConnectedStudentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[MilitaryConnectedStudentDescriptor] ENABLE TRIGGER [ks_MilitaryConnectedStudentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_NeglectedDelinquentStudentDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_NeglectedDelinquentStudentDescriptor_TR_DeleteTracking] ON [ks].[NeglectedDelinquentStudentDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.NeglectedDelinquentStudentDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.NeglectedDelinquentStudentDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.NeglectedDelinquentStudentDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[NeglectedDelinquentStudentDescriptor] ENABLE TRIGGER [ks_NeglectedDelinquentStudentDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_PostGraduationPlansDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_PostGraduationPlansDescriptor_TR_DeleteTracking] ON [ks].[PostGraduationPlansDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.PostGraduationPlansDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.PostGraduationPlansDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.PostGraduationPlansDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[PostGraduationPlansDescriptor] ENABLE TRIGGER [ks_PostGraduationPlansDescriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_QualifiedFor504Descriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_QualifiedFor504Descriptor_TR_DeleteTracking] ON [ks].[QualifiedFor504Descriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.QualifiedFor504DescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.QualifiedFor504Descriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.QualifiedFor504DescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[QualifiedFor504Descriptor] ENABLE TRIGGER [ks_QualifiedFor504Descriptor_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_SectionEducator_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_SectionEducator_TR_DeleteTracking] ON [ks].[SectionEducator] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_ks].[SectionEducator](OldEducatorElectronicMailAddress, OldLocalCourseCode, OldSchoolId, OldSchoolYear, OldSectionIdentifier, OldSessionName, Id, Discriminator, ChangeVersion)
    SELECT d.EducatorElectronicMailAddress, d.LocalCourseCode, d.SchoolId, d.SchoolYear, d.SectionIdentifier, d.SessionName, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [ks].[SectionEducator] ENABLE TRIGGER [ks_SectionEducator_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_SnackPack_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_SnackPack_TR_DeleteTracking] ON [ks].[SnackPack] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_ks].[SnackPack](OldStateStudentId, Id, Discriminator, ChangeVersion)
    SELECT d.StateStudentId, d.Id, d.Discriminator, (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
END
GO

ALTER TABLE [ks].[SnackPack] ENABLE TRIGGER [ks_SnackPack_TR_DeleteTracking]
GO


DROP TRIGGER IF EXISTS [ks].[ks_WorkBasedLearningDescriptor_TR_DeleteTracking]
GO

CREATE TRIGGER [ks].[ks_WorkBasedLearningDescriptor_TR_DeleteTracking] ON [ks].[WorkBasedLearningDescriptor] AFTER DELETE AS
BEGIN
    IF @@rowcount = 0 
        RETURN

    SET NOCOUNT ON

    INSERT INTO [tracked_changes_edfi].[Descriptor](OldDescriptorId, OldCodeValue, OldNamespace, Id, Discriminator, ChangeVersion)
    SELECT  d.WorkBasedLearningDescriptorId, b.CodeValue, b.Namespace, b.Id, 'ks.WorkBasedLearningDescriptor', (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM    deleted d
            INNER JOIN edfi.Descriptor b ON d.WorkBasedLearningDescriptorId = b.DescriptorId
END
GO

ALTER TABLE [ks].[WorkBasedLearningDescriptor] ENABLE TRIGGER [ks_WorkBasedLearningDescriptor_TR_DeleteTracking]
GO


