CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentAssessment] AS
SELECT [AssessmentIdentifier],
       [namespace],
       [StudentAssessmentIdentifier],
       [s].[StudentUniqueId],
       [AdministrationDate],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [sa].[StudentUSI],
                             '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentAssessment]     AS [sa]
         LEFT JOIN [edfi].[Student] AS [s] 
             ON [sa].[StudentUSI] = [s].[StudentUSI];
