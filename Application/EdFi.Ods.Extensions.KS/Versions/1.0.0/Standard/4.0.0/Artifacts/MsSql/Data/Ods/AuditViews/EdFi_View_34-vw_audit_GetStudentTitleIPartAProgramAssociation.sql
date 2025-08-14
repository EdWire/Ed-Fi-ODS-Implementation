CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentTitleIPartAProgramAssociation] AS
SELECT [BeginDate],
       [EducationOrganizationId],
       [ProgramEducationOrganizationId],
       [ProgramName],
       [dp].[CodeValue] AS [ProgramTypeDescriptor_CodeValue],
       [s].[StudentUniqueId],
       [dt].[CodeValue] AS [TitleIPartAParticipant_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName],
                             [ProgramTypeDescriptorId], [stpa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentTitleIPartAProgramAssociation] AS [stpa]
         LEFT JOIN [edfi].[Student]                AS [s]
             ON [s].[StudentUSI] = [stpa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]             AS [dp]
             ON [dp].[DescriptorId] = [stpa].[ProgramTypeDescriptorId]
         LEFT JOIN [edfi].[Descriptor]             AS [dt]
             ON [dt].[DescriptorId] = [stpa].[TitleIPartAParticipantDescriptorId];