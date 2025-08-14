CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentAssessmentExtension] AS
SELECT [AssessmentIdentifier],
       [sse].[Namespace],
       [StudentAssessmentIdentifier],
       [s].[StudentUniqueId],
       [st].[StaffUniqueId] AS [ProctorIdentifier],
       [da].[CodeValue] AS [AssessmentRequest_CodeValue],
       CAST(HASHBYTES('SHA2_256', CONCAT([AssessmentIdentifier], [sse].[Namespace], [StudentAssessmentIdentifier],
                                         [sse].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [ks].[StudentAssessmentExtension] AS [sse]
         LEFT JOIN [edfi].[Student]    AS [s] 
             ON [s].[StudentUSI] = [sse].[StudentUSI]
         LEFT JOIN [edfi].[Staff]      AS [st] 
             ON [st].[StaffUSI] = [sse].[ProctorStaffUSI]
         LEFT JOIN [edfi].[Descriptor] AS [da] 
             ON [da].[DescriptorId] = [sse].[AssessmentRequestDescriptorId];