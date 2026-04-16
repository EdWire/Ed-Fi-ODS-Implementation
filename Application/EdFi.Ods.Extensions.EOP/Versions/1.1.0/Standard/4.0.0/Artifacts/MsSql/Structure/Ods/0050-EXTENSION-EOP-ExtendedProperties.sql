-- Extended Properties [eop].[EducationOrganizationEducationOrganizationProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entiy tracks what education organizations are getting edOrgPrograms.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationEducationOrganizationProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the ed org program.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationEducationOrganizationProgram', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationEducationOrganizationProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of ed org program.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationEducationOrganizationProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the program.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationEducationOrganizationProgram', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationEducationOrganizationProgram', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO

-- Extended Properties [eop].[EducationOrganizationProgramAuthorizedProvider] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entiy tracks what providers are authorized to administer education organization level programs.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramAuthorizedProvider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the ed org program.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramAuthorizedProvider', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of ed org program that can be administered.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramAuthorizedProvider', @level2type=N'COLUMN', @level2name=N'EducationOrganizationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramAuthorizedProvider', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the program.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramAuthorizedProvider', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [eop].[EducationOrganizationProgramProvider] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'List of providers of programs that are at the education organization level.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramProvider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramProvider', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education service center.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramProvider', @level2type=N'COLUMN', @level2name=N'EducationServiceCenterId'
GO

-- Extended Properties [eop].[EducationOrganizationProgramTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Program types that are administered at the education organization level instead of the student level.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'eop', @level1type=N'TABLE', @level1name=N'EducationOrganizationProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'EducationOrganizationProgramTypeDescriptorId'
GO

