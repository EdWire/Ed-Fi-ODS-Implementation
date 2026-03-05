BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edorgprogram.EducationOrganizationEducationOrganizationProgram') AND name = N'UX_EducationOrganizationEducationOrganizationProgram_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationEducationOrganizationProgram_Id ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edorgprogram.EducationOrganizationProgramAuthorizedProvider') AND name = N'UX_EducationOrganizationProgramAuthorizedProvider_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationProgramAuthorizedProvider_Id ON [edorgprogram].[EducationOrganizationProgramAuthorizedProvider]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'edorgprogram.EducationOrganizationProgramProvider') AND name = N'UX_EducationOrganizationProgramProvider_Id')
    CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationProgramProvider_Id ON [edorgprogram].[EducationOrganizationProgramProvider]
    (Id) WITH (PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
    GO
COMMIT

