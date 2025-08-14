CREATE OR ALTER VIEW [edfi].[vw_audit_GetStudentEducationOrganizationAssociationTransportation] AS
SELECT [EducationOrganizationId],
       [s].[StudentUniqueId],
       [MilesTransported],
       [TransportationFTE],
       [NonResidentTransportation],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([EducationOrganizationId], [seot].[StudentUSI], '')) AS [binary](256)) AS [PkHash]
FROM [ks].[StudentEducationOrganizationAssociationTransportation] AS [seot]
         LEFT JOIN [edfi].[Student]                               AS [s]
             ON [s].[StudentUSI] = [seot].[StudentUSI];