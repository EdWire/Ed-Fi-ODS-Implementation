CREATE OR ALTER VIEW [edfi].[vw_audit_GetGrade] AS
SELECT [BeginDate],
       [LocalCourseCode],
       [SchoolId],
       [SchoolYear],
       [GradingPeriodSchoolYear],
       [SectionIdentifier],
       [SessionName],
       [s].[StudentUniqueId],
       [GradingPeriodSequence],
       [dt].[CodeValue] AS [GradeType_CodeValue],
       [dp].[CodeValue] AS [GradingPeriod_CodeValue],
       [LetterGradeEarned],
       [NumericGradeEarned],
       CAST(HASHBYTES('SHA2_256', CONCAT([g].[BeginDate], [g].[GradeTypeDescriptorId], [g].[GradingPeriodDescriptorId],
                                         [g].[GradingPeriodSchoolYear], [g].[GradingPeriodSequence],
                                         [g].[LocalCourseCode], [g].[SchoolId], [g].[SchoolYear],
                                         [g].[SectionIdentifier], [g].[SessionName], [g].[StudentUSI],
                                         '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[Grade]                    AS [g]
         LEFT JOIN [edfi].[Student]    AS [s] 
             ON [s].[StudentUSI] = [g].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor] AS [dt] 
             ON [dt].[DescriptorId] = [g].[GradeTypeDescriptorId]
         LEFT JOIN [edfi].[Descriptor] AS [dp] 
             ON [dp].[DescriptorId] = [g].[GradingPeriodDescriptorId];