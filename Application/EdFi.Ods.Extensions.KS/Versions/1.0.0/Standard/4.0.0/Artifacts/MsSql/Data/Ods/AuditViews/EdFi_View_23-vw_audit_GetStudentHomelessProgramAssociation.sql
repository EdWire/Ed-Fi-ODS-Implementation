CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentHomelessProgramAssociation] AS
SELECT [BeginDate],
       [s].[StudentUniqueId],
       [dh].[CodeValue] AS [HomelessPrimaryNighttimeResidence_CodeValue],
       [HomelessUnaccompaniedYouth],
       [EducationOrganizationId],
       [ProgramEducationOrganizationId],
       [ProgramName],
       [dp].[CodeValue] AS [ProgramType_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName],
                             [ProgramTypeDescriptorId], [shpa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentHomelessProgramAssociation] AS [shpa]
         LEFT JOIN [edfi].[Student]             AS [s]
             ON [s].[StudentUSI] = [shpa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]          AS [dh]
             ON [dh].[DescriptorId] = [shpa].[HomelessPrimaryNighttimeResidenceDescriptorId]
         LEFT JOIN [edfi].[Descriptor]          AS [dp]
             ON [dp].[DescriptorId] = [shpa].[ProgramTypeDescriptorId];
