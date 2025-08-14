CREATE OR ALTER VIEW [edfi].[vw_audit_GetStaffSectionAssociation] AS
SELECT [BeginDate],
       [LocalCourseCode],
       [SchoolId],
       [SchoolYear],
       [SectionIdentifier],
       [SessionName],
       [s].[StaffUniqueId],
       [d].[CodeValue] AS [ClassroomPositionDescriptor_CodeValue],
       CAST(HASHBYTES('SHA2_256',
                      CONCAT([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName],
                             [ssa].[StaffUSI], '')) AS [binary](256)) 
           AS [PkHash]
FROM [edfi].[StaffSectionAssociation]  AS [ssa]
         LEFT JOIN [edfi].[Staff]      AS [s] 
             ON [ssa].[StaffUSI] = [s].[StaffUSI]
         LEFT JOIN [edfi].[Descriptor] AS [d] 
             ON [d].[DescriptorId] = [ssa].[ClassroomPositionDescriptorId];