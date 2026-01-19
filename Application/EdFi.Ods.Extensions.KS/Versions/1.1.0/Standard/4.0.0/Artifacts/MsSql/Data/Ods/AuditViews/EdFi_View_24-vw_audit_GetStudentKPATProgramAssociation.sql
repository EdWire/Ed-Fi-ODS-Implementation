CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentKPATProgramAssociation] AS
SELECT [BeginDate],
       [EducationOrganizationId],
       [ProgramEducationOrganizationId],
       [s].[StudentUniqueId],
       [ProgramName],
       [dp].[CodeValue] AS [ProgramTypeDescriptor_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName],
                             [ProgramTypeDescriptorId], [skpa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [ks].[StudentKPATProgramAssociation] AS [skpa]
         LEFT JOIN [edfi].[Student]       AS [s]
             ON [s].[StudentUSI] = [skpa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]    AS [dp]
             ON [dp].[DescriptorId] = [skpa].[ProgramTypeDescriptorId];