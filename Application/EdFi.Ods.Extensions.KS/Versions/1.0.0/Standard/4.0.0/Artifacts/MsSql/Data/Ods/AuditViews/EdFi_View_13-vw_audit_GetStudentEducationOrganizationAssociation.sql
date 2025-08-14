CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociation] AS
SELECT [EducationOrganizationId],
       [s].[StudentUniqueId],
       [d].[CodeValue] AS [SexDescriptor],
       [HispanicLatinoEthnicity],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([EducationOrganizationId], [seoa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentEducationOrganizationAssociation] AS [seoa]
         LEFT JOIN [edfi].[Student]                   AS [s] 
             ON [s].[StudentUSI] = [seoa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                AS [d] 
             ON [d].[DescriptorId] = [seoa].[SexDescriptorId];