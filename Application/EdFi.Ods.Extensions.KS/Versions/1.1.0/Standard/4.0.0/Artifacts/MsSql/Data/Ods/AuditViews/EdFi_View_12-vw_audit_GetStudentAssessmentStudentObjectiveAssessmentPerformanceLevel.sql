CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentAssessmentStudentObjectiveAssessmentPerformanceLevel] AS
SELECT [AssessmentIdentifier],
       [sopl].[namespace],
       [s].[StudentUniqueId],
       [IdentificationCode],
       [dr].[CodeValue] AS [AssessmentReportingMethodDescriptor_CodeValue],
       [dp].[CodeValue] AS [PerformanceLevelDescriptor_CodeValue],
       [StudentAssessmentIdentifier],
       [PerformanceLevelIndicatorName] AS [PerformanceLevelMet],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [IdentificationCode],
                             [sopl].[Namespace], [PerformanceLevelDescriptorId], [StudentAssessmentIdentifier],
                             [sopl].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] AS [sopl]
         LEFT JOIN [edfi].[Student]                                       AS [s] 
             ON [s].[StudentUSI] = [sopl].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]                                    AS [dr]
             ON [dr].[DescriptorId] = [sopl].[AssessmentReportingMethodDescriptorId]
         LEFT JOIN [edfi].[Descriptor]                                    AS [dp]
             ON [dp].[DescriptorId] = [sopl].[PerformanceLevelDescriptorId];