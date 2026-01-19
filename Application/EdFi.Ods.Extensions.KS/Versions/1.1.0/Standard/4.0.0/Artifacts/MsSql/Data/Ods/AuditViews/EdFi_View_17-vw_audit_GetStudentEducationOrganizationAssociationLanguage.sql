CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationLanguage] AS
SELECT [EducationOrganizationId],
       [s].[StudentUniqueId],
       [dl].[CodeValue] AS [Language_CodeValue],
       CAST(HASHBYTES('SHA2_256', CONCAT([EducationOrganizationId], [LanguageDescriptorId], [seoa].[StudentUSI],
                                         '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentEducationOrganizationAssociationLanguage] AS [seoa]
         LEFT JOIN [edfi].[Student]                           AS [s]
             ON [s].[StudentUSI] = [seoa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                        AS [dl]
             ON [dl].[DescriptorId] = [seoa].[LanguageDescriptorId];