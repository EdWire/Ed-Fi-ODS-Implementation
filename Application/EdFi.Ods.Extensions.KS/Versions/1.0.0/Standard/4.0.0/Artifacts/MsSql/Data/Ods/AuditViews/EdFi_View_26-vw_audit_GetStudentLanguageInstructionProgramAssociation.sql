CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentLanguageInstructionProgramAssociation] AS
SELECT [BeginDate],
       [EducationOrganizationId],
       [ProgramEducationOrganizationId],
       [ProgramName],
       [dp].[CodeValue] AS [ProgramTypeDescriptor_CodeValue],
       [s].[StudentUniqueId],
       [Dosage],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName],
                             [ProgramTypeDescriptorId], [slpa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentLanguageInstructionProgramAssociation] AS [slpa]
         LEFT JOIN [edfi].[Student]                        AS [s]
             ON [s].[StudentUSI] = [slpa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                     AS [dp]
             ON [dp].[DescriptorId] = [slpa].[ProgramTypeDescriptorId];