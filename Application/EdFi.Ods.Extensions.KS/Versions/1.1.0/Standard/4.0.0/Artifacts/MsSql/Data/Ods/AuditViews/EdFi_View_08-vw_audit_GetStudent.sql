CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudent] AS
SELECT [FirstName],
       [MiddleName],
       [LastSurname],
       [GenerationCodeSuffix],
       [BirthDate],
       [dc].[CodeValue] AS [BirthCountry],
       [ds].[CodeValue] AS [BirthSexDescriptor],
       [StudentUniqueId],
       CAST(HASHBYTES('SHA2_256', CONCAT([StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[Student]                  AS [s]
         LEFT JOIN [edfi].[Descriptor] AS [dc] 
             ON [dc].[DescriptorId] = [s].[BirthCountryDescriptorId]
         LEFT JOIN [edfi].[Descriptor] AS [ds] 
             ON [ds].[DescriptorId] = [s].[BirthSexDescriptorId];