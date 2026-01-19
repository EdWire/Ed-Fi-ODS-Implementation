CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationExtension] AS
SELECT [s].[StudentUniqueId],
       [EducationOrganizationId],
       [di].[CodeValue] AS [ImmigrantStudent_CodeValue],
       [dm].[CodeValue] AS [MilitaryStudent_CodeValue],
       [dn].[CodeValue] AS [NeglectedStudent_CodeValue],
       [DistrictOfResidence],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([EducationOrganizationId], [seoa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [ks].[StudentEducationOrganizationAssociationExtension] AS [seoa]
         LEFT JOIN [edfi].[Student]                          AS [s] 
             ON [s].[StudentUSI] = [seoa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                       AS [di]
             ON [di].[DescriptorId] = [seoa].[ImmigrantStudentDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                       AS [dm]
             ON [dm].[DescriptorId] = [seoa].[MilitaryConnectedStudentDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                       AS [dn]
             ON [dn].[DescriptorId] = [seoa].[NeglectedStudentDescriptorId];