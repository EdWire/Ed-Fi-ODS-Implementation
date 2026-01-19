CREATE OR ALTER VIEW [edfi].[vw_audit_GetStaff] AS
SELECT [StaffUniqueId],
       [FirstName],
       [LastSurname],
       CAST(HASHBYTES('SHA2_256', CONCAT([StaffUSI], '')) AS [binary](256)) AS [PkHash]
FROM [edfi].[Staff];