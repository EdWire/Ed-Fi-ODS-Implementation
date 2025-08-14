CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentSectionAssociation] AS
SELECT [BeginDate],
       [LocalCourseCode],
       [SchoolId],
       [SchoolYear],
       [SectionIdentifier],
       [SessionName],
       [s].[StudentUniqueId],
       CAST(HASHBYTES('SHA2_256', CONCAT([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier],
                                         [SessionName], [ssa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentSectionAssociation] AS [ssa]
         LEFT JOIN [edfi].[Student]     AS [s]
             ON [s].[StudentUSI] = [ssa].[StudentUSI];