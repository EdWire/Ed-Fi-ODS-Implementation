CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentLanguageInstructionProgramAssociationExtension] AS
SELECT [BeginDate],
       [EducationOrganizationId],
       [ProgramEducationOrganizationId],
       [ProgramName],
       [dp].[CodeValue] AS [ProgramTypeDescriptor_CodeValue],
       [s].[StudentUniqueId],
       [slip].[EndDate] AS [StudentLanguageInstruction_EndDate],
       [df].[CodeValue] AS [ESOLParticipation_FundingSource_CodeValue],
       [di].[CodeValue] AS [LanguageInstructionProgramService_CodeValue],
       [slip].[USInitialSchoolEntryDate] AS [USInitialEntryDate],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName],
                             [ProgramTypeDescriptorId], [slip].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [KS].[StudentLanguageInstructionProgramAssociationExtension] AS [slip]
         LEFT JOIN [edfi].[Student]                               AS [s]
             ON [s].[StudentUSI] = [slip].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                            AS [dp]
             ON [dp].[DescriptorId] = [slip].[ProgramTypeDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                            AS [df]
             ON [df].[DescriptorId] = [slip].[FundingSourceDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                            AS [di]
             ON [di].[DescriptorId] = [slip].[LanguageInstructionProgramTypeDescriptorId];
