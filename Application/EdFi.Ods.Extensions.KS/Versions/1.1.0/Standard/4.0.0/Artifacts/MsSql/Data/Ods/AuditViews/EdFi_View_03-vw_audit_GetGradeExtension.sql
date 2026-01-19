CREATE OR ALTER VIEW [edfi].[vw_audit_GetGradeExtension]
AS
SELECT DISTINCT
       [ge].[BeginDate],
       [ge].[LocalCourseCode],
       [ge].[SchoolId],
       [ge].[SchoolYear],
       [ge].[GradingPeriodSchoolYear],
       [ge].[SectionIdentifier],
       [ge].[SessionName],
       [s].[StudentUniqueId],
       [ge].[GradingPeriodSequence],
       [dt].[CodeValue] AS [GradeType_CodeValue],
       [dp].[CodeValue] AS [GradingPeriod_CodeValue],
       [g].[LetterGradeEarned],
       [g].[NumericGradeEarned],
       [WorkBasedLearning],
       [CollegeCreditEarned],
       [FirstInstructionalDate],
       [LastInstructionalDate],
       [InstructionalMinutesCompleted],
       CAST(HASHBYTES(
                         'SHA2_256',
                         CONCAT(
                                   [ge].[BeginDate],
                                   [ge].[GradeTypeDescriptorId],
                                   [ge].[GradingPeriodDescriptorId],
                                   [ge].[GradingPeriodSchoolYear],
                                   [ge].[GradingPeriodSequence],
                                   [ge].[LocalCourseCode],
                                   [ge].[SchoolId],
                                   [ge].[SchoolYear],
                                   [ge].[SectionIdentifier],
                                   [ge].[SessionName],
                                   [ge].[StudentUSI],
                                   ''
                               )
                     ) AS [BINARY](256)) AS [PkHash]
FROM [ks].[GradeExtension] AS [ge]
    LEFT JOIN [edfi].[Grade] AS [g]
        ON g.BeginDate = ge.BeginDate
           AND g.GradeTypeDescriptorId = ge.GradeTypeDescriptorId
           AND g.GradingPeriodDescriptorId = ge.GradingPeriodDescriptorId
           AND g.GradingPeriodSchoolYear = ge.GradingPeriodSchoolYear
           AND g.GradingPeriodSequence = ge.GradingPeriodSequence
           AND g.LocalCourseCode = ge.LocalCourseCode
           AND g.SchoolId = ge.SchoolId
           AND g.SchoolYear = ge.SchoolYear
           AND g.SectionIdentifier = ge.SectionIdentifier
           AND g.SessionName = ge.SessionName
           AND g.StudentUSI = ge.StudentUSI
    LEFT JOIN [edfi].[Student] AS [s]
        ON [s].[StudentUSI] = [ge].[StudentUSI]
    LEFT JOIN [edfi].[Descriptor] AS [dt]
        ON [dt].[DescriptorId] = [ge].[GradeTypeDescriptorId]
    LEFT JOIN [edfi].[Descriptor] AS [dp]
        ON [dp].[DescriptorId] = [ge].[GradingPeriodDescriptorId];