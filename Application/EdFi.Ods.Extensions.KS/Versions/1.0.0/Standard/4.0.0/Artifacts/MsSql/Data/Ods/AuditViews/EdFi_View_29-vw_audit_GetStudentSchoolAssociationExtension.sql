CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentSchoolAssociationExtension] AS
SELECT [s].[StudentUniqueId],
       [SchoolId],
       [EntryDate],
       [LocalEducationAgencyEntryDate],
       [StateEntryDate],
       [FirstInstructionalDate],
       [MembershipDays],
       [AttendanceDays],
       [MinutesEnrolled],
       [UnweightedGradePointAverage],
       [dp].[CodeValue] AS [PostGraduationPlans_CodeValue],
       [CTEContactMinutes],
       [IndividualPlanOfStudy],
       [dq].[CodeValue] AS [Qualified504_CodeValue],
       [CreditsEarned],
       [CreditsRequiredToGraduate],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([EntryDate], [SchoolId], [ssae].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [ks].[StudentSchoolAssociationExtension] AS [ssae]
         LEFT JOIN [edfi].[Student]           AS [s]
             ON [s].[StudentUSI] = [ssae].[StudentUSI]
         LEFT JOIN [edfi].[Descriptor]        AS [dp]
             ON [dp].[DescriptorId] = [ssae].[PostGraduationPlansDescriptorId]
         LEFT JOIN [edfi].[Descriptor]        AS [dq]
             ON [dq].[DescriptorId] = [ssae].[QualifiedFor504DescriptorId];
