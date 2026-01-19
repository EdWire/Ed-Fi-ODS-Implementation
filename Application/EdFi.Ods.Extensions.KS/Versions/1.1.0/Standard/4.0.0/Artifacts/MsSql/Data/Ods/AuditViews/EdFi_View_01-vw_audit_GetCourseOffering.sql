CREATE OR ALTER VIEW [edfi].[vw_audit_GetCourseOffering] AS
SELECT [LocalCourseCode],
       [SchoolId],
       [CourseCode],
       [EducationOrganizationId],
       [SchoolYear],
       [SessionName],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[CourseOffering];