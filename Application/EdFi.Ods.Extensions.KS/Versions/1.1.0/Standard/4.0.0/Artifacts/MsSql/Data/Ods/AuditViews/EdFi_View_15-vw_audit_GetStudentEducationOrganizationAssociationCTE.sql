CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationCTE] AS
SELECT [s].[StudentUniqueId],
       [EducationOrganizationId],
       [dc].[CodeValue] AS [CTECertificationEarnedDescriptor_CodeValue],
       [CTECertificationDateEarned],
       [dt].[CodeValue] AS [Term_CodeValue],
       [GraduationYear],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([CTECertificationEarnedDescriptorId], [EducationOrganizationId], [seoc].[StudentUSI],
                             '')) AS [binary](256)) AS [PkHash]
FROM [ks].[StudentEducationOrganizationAssociationCTE] AS [seoc]
         LEFT JOIN [edfi].[Student]                    AS [s]
             ON [s].[StudentUSI] = [seoc].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                    [dc]
             ON [dc].[DescriptorId] = [seoc].[CTECertificationEarnedDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                 AS [dt]
             ON [dt].[DescriptorId] = [seoc].[CertificationTermDescriptorId];
