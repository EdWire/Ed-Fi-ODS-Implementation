CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentAssessmentStudentObjectiveAssessment] AS
SELECT [AssessmentIdentifier],
       [Namespace],
       [s].[StudentUniqueId],
       [IdentificationCode],
       [StudentAssessmentIdentifier],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier],
                             [ssoa].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentAssessmentStudentObjectiveAssessment] AS [ssoa]
         LEFT JOIN [edfi].[Student]                       AS [s] 
             ON [s].[StudentUSI] = [ssoa].[StudentUSI];