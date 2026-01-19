CREATE OR ALTER VIEW [edfi].[vw_audit_GetCourseOfferingExtension] AS
SELECT [LocalCourseCode],
       [SchoolId],
       [SchoolYear],
       [SessionName],
       [CourseCredits],
       [CourseSequence],
       [CourseTotalSequence],
       [cdt].[CodeValue] AS [CourseDeliveryType_CodeValue],
       [cpt].[CodeValue] AS [CourseProgramType_CodeValue],
       [cct].[CodeValue] AS [CourseCollegeCareer_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([LocalCourseCode],
                             [SchoolId],
                             [SchoolYear],
                             [SessionName],
                             '')
            ) AS BINARY(256)) AS [PkHash]
FROM [ks].[CourseOfferingExtension] AS [coe]
         LEFT JOIN [edfi].[Descriptor] [cdt] 
             ON [coe].[CourseDeliveryTypeDescriptorId] = [cdt].[DescriptorId]
         LEFT JOIN [edfi].[Descriptor] [cpt] 
             ON [coe].[CourseProgramTypeDescriptorId] = [cpt].[DescriptorId]
         LEFT JOIN [edfi].[Descriptor] [cct] 
             ON [coe].[CollegeCareerTypeDescriptorId] = [cct].[DescriptorId];