
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EducationOrganizationEducationOrganizationProgram_EducationOrganizationId' AND object_id = OBJECT_ID('eop.EducationOrganizationEducationOrganizationProgram')) 
BEGIN
    CREATE INDEX IX_EducationOrganizationEducationOrganizationProgram_EducationOrganizationId ON [eop].[EducationOrganizationEducationOrganizationProgram](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_EducationOrganizationProgramProvider_EducationServiceCenterId' AND object_id = OBJECT_ID('eop.EducationOrganizationProgramProvider')) 
BEGIN
    CREATE INDEX IX_EducationOrganizationProgramProvider_EducationServiceCenterId ON [eop].[EducationOrganizationProgramProvider](EducationServiceCenterId) INCLUDE (Id)
END;
