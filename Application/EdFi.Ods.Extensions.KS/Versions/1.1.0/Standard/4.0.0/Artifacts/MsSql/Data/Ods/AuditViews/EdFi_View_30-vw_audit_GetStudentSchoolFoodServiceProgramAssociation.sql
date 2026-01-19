CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentSchoolFoodServiceProgramAssociation] AS
SELECT [BeginDate],
       [EducationOrganizationId],
       [ProgramEducationOrganizationId],
       [ProgramName],
       [dp].[CodeValue] AS [ProgramTypeDescriptor_CodeValue],
       [s].[StudentUniqueId],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName],
                             [ProgramTypeDescriptorId], [sspa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentSchoolFoodServiceProgramAssociation] AS [sspa]
         LEFT JOIN [edfi].[Student]                      AS [s]
             ON [s].[StudentUSI] = [sspa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                   AS [dp]
             ON [dp].[DescriptorId] = [sspa].[ProgramTypeDescriptorId];