-- Extended Properties [edorgprogram].[EducationOrganizationEducationOrganizationProgram] --
COMMENT ON TABLE edorgprogram.EducationOrganizationEducationOrganizationProgram IS 'This entiy tracks what education organizations are getting edOrgPrograms.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationEducationOrganizationProgram.BeginDate IS 'Start date for the ed org program.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationEducationOrganizationProgram.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationEducationOrganizationProgram.EducationOrganizationProgramTypeDescriptorId IS 'The type of ed org program.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationEducationOrganizationProgram.EndDate IS 'End date for the program.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationEducationOrganizationProgram.NameOfInstitution IS 'The full, legally accepted name of the institution.';

-- Extended Properties [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] --
COMMENT ON TABLE edorgprogram.EducationOrganizationProgramAuthorizedProvider IS 'This entiy tracks what providers are authorized to administer education organization level programs.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationProgramAuthorizedProvider.BeginDate IS 'Start date for the ed org program.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationProgramAuthorizedProvider.EducationOrganizationProgramTypeDescriptorId IS 'The type of ed org program that can be administered.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationProgramAuthorizedProvider.NameOfInstitution IS 'The full, legally accepted name of the institution.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationProgramAuthorizedProvider.EndDate IS 'End date for the program.';

-- Extended Properties [edorgprogram].[EducationOrganizationProgramProvider] --
COMMENT ON TABLE edorgprogram.EducationOrganizationProgramProvider IS 'List of providers of programs that are at the education organization level.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationProgramProvider.NameOfInstitution IS 'The full, legally accepted name of the institution.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationProgramProvider.EducationServiceCenterId IS 'The identifier assigned to an education service center.';

-- Extended Properties [edorgprogram].[EducationOrganizationProgramTypeDescriptor] --
COMMENT ON TABLE edorgprogram.EducationOrganizationProgramTypeDescriptor IS 'Program types that are administered at the education organization level instead of the student level.';
COMMENT ON COLUMN edorgprogram.EducationOrganizationProgramTypeDescriptor.EducationOrganizationProgramTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

