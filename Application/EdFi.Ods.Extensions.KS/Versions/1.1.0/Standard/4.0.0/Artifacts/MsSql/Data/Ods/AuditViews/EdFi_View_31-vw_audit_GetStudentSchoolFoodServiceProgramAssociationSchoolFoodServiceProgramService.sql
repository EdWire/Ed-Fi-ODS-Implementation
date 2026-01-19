CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] AS
SELECT [BeginDate],
       [EducationOrganizationId],
       [ProgramEducationOrganizationId],
       [ProgramName],
       [dp].[CodeValue] AS [ProgramTypeDescriptor_CodeValue],
       [s].[StudentUniqueId],
       [df].[CodeValue] AS [SchoolFoodServiceProgramService_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName],
                             [ProgramTypeDescriptorId], [SchoolFoodServiceProgramServiceDescriptorId],
                             [sfps].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] AS [sfps]
         LEFT JOIN [edfi].[Student]                                                     AS [s]
             ON [s].[StudentUSI] = [sfps].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                                                  AS [dp]
             ON [dp].[DescriptorId] = [sfps].[ProgramTypeDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                                                  AS [df]
             ON [df].[DescriptorId] = [sfps].[SchoolFoodServiceProgramServiceDescriptorId];
