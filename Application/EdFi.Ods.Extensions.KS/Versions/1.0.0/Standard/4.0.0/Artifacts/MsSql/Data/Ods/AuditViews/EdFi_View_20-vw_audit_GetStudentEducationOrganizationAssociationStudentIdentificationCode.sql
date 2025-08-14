CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationStudentIdentificationCode] AS
SELECT [AssigningOrganizationIdentificationCode],
       [EducationOrganizationId],
       [IdentificationCode],
       [s].[StudentUniqueId],
       [di].[CodeValue] AS [StudentIdentificationSystem_CodeValue],
       CAST(HASHBYTES('SHA2_256', CONCAT([AssigningOrganizationIdentificationCode], [EducationOrganizationId],
                                         [StudentIdentificationSystemDescriptorId], [seoa].[StudentUSI],
                                         '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentEducationOrganizationAssociationStudentIdentificationCode] AS [seoa]
         LEFT JOIN [edfi].[Student]                                            AS [s]
             ON [s].[StudentUSI] = [seoa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                                         AS [di]
             ON [di].[DescriptorId] = [seoa].[StudentIdentificationSystemDescriptorId];
