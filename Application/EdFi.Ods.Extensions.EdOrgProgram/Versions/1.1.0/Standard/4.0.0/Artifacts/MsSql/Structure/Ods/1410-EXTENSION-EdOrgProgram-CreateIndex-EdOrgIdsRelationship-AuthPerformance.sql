
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EducationOrganizationEducationOrganizationProgram_EducationOrganizationId' AND object_id = OBJECT_ID('edorgprogram.EducationOrganizationEducationOrganizationProgram')) 
BEGIN
    CREATE INDEX IX_EducationOrganizationEducationOrganizationProgram_EducationOrganizationId ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EducationOrganizationProgramProvider_EducationOrganizationId' AND object_id = OBJECT_ID('edorgprogram.EducationOrganizationProgramProvider')) 
BEGIN
    CREATE INDEX IX_EducationOrganizationProgramProvider_EducationOrganizationId ON [edorgprogram].[EducationOrganizationProgramProvider](EducationOrganizationId) INCLUDE (Id)
END;
