CREATE OR ALTER VIEW [edfi].[vw_audit_GetSection] AS
SELECT [LocalCourseCode],
       [SchoolId],
       [SchoolYear],
       [SectionIdentifier],
       [SessionName],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName],
                             '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[Section];