CREATE OR ALTER VIEW [edfi].[vw_audit_GetSectionEducator] AS
SELECT [LocalCourseCode],
       [SchoolId],
       [SchoolYear],
       [SectionIdentifier],
       [SessionName],
       [EducatorElectronicMailAddress],
       [EducatorFirstName],
       [EducatorMiddleName],
       [EducatorLastSurname] AS [EducatorLastName],
       CAST(HASHBYTES('SHA2_256', CONCAT([EducatorElectronicMailAddress], [LocalCourseCode], [SchoolId], [SchoolYear],
                                         [SectionIdentifier], [SessionName], '')) AS [binary](256)) AS [PkHash]
FROM [ks].[SectionEducator];