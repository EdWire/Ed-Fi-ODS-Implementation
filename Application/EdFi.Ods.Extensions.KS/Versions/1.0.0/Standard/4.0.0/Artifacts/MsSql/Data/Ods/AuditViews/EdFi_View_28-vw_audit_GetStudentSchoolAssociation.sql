CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentSchoolAssociation] AS
SELECT [s].[StudentUniqueId],
       [SchoolId],
       [EntryDate],
       [dg].[CodeValue] AS [GradeLevel_CodeValue],
       [SchoolYear],
       [ExitWithdrawDate],
       [dw].[CodeValue] AS [ExitWithdrawType_CodeValue],
       CAST(HASHBYTES('SHA2_256', CONCAT([EntryDate], [SchoolId], [ssa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentSchoolAssociation] AS [ssa]
         LEFT JOIN [edfi].[Student]    AS [s]
             ON [s].[StudentUSI] = [ssa].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor] AS [dg]
             ON [dg].[DescriptorId] = [ssa].[EntryGradeLevelDescriptorId]
         LEFT JOIN [edfi].[Descriptor] AS [dw]
             ON [dw].[DescriptorId] = [ssa].[ExitWithdrawTypeDescriptorId];