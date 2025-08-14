CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationStudentCharacteristic] AS
SELECT [EducationOrganizationId],
       [s].[StudentUniqueId],
       [dc].[CodeValue] AS [StudentCharacteristicDescriptor_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([EducationOrganizationId], [StudentCharacteristicDescriptorId], [seoa].[StudentUSI],
                             '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] AS [seoa]
         LEFT JOIN [edfi].[Student]                                        AS [s]
             ON [s].[StudentUSI] = [seoa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                                     AS [dc]
             ON [dc].[DescriptorId] = [seoa].[StudentCharacteristicDescriptorId];