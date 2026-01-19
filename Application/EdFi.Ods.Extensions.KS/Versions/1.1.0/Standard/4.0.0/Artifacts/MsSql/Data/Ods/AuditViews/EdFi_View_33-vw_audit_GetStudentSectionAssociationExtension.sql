CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentSectionAssociationExtension] AS
SELECT [BeginDate],
       [LocalCourseCode],
       [SchoolId],
       [SchoolYear],
       [SectionIdentifier],
       [SessionName],
       [s].[StudentUniqueId],
       [dc].[CodeValue] AS [CourseStatus_CodeValue],
       CAST(HASHBYTES('SHA2_256', CONCAT([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier],
                                         [SessionName], [ssae].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [ks].[StudentSectionAssociationExtension] AS [ssae]
         LEFT JOIN [edfi].[Student]            AS [s]
             ON [s].[StudentUSI] = [ssae].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]         AS [dc]
             ON [dc].[DescriptorId] = [ssae].[CourseStatusDescriptorId];
