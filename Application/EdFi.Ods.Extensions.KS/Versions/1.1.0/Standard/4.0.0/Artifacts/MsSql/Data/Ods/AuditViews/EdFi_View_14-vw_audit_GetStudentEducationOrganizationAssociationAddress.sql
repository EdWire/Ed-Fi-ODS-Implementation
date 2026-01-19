CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationAddress] AS
SELECT [EducationOrganizationId],
       [s].[StudentUniqueId],
       [StreetNumberName],
       [City],
       [PostalCode],
       [ds].[CodeValue] AS [StateAbbreviation_CodeValue],
       [da].[CodeValue] AS [AddressType_CodeValue],
       CAST(HASHBYTES('SHA2_256', CONCAT([AddressTypeDescriptorId], [City], [EducationOrganizationId], [PostalCode],
                                         [StateAbbreviationDescriptorId], [StreetNumberName], [seoa].[StudentUSI],
                                         '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentEducationOrganizationAssociationAddress] AS [seoa]
         LEFT JOIN [edfi].[Student]                          AS [s] 
             ON [s].[StudentUSI] = [seoa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                       AS [ds]
             ON [ds].[DescriptorId] = [seoa].[StateAbbreviationDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                       AS [da]
             ON [da].[DescriptorId] = [seoa].[AddressTypeDescriptorId];