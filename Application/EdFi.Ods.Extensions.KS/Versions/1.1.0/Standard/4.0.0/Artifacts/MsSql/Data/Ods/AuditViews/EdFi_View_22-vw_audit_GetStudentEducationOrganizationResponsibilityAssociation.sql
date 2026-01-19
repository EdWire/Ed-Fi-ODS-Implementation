CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationResponsibilityAssociation] AS
SELECT [s].[StudentUniqueId],
       [BeginDate],
       [EducationOrganizationId],
       [d].[CodeValue] AS [Responsibility_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [seor].[StudentUSI],
                             '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentEducationOrganizationResponsibilityAssociation] AS [seor]
         LEFT JOIN [edfi].[Student]                                 AS [s]
             ON [s].[StudentUSI] = [seor].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                              AS [d]
             ON [d].[DescriptorId] = [seor].[ResponsibilityDescriptorId];