CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationRace] AS
SELECT [EducationOrganizationId],
       [s].[StudentUniqueId],
       [dr].[CodeValue] AS [RaceCode],
       CAST(HASHBYTES('SHA2_256', CONCAT([EducationOrganizationId], [RaceDescriptorId], [seoa].[StudentUSI],
                                         '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentEducationOrganizationAssociationRace] AS [seoa]
         LEFT JOIN [edfi].[Student]                       AS [s]
             ON [s].[StudentUSI] = [seoa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                    AS [dr]
             ON [dr].[DescriptorId] = [seoa].[RaceDescriptorId];