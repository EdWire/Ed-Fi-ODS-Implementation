-- Extended Properties [eop].[EducationOrganizationEducationOrganizationProgram] --
COMMENT ON TABLE eop.EducationOrganizationEducationOrganizationProgram IS 'This entiy tracks what education organizations are getting edOrgPrograms.';
COMMENT ON COLUMN eop.EducationOrganizationEducationOrganizationProgram.BeginDate IS 'Start date for the ed org program.';
COMMENT ON COLUMN eop.EducationOrganizationEducationOrganizationProgram.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN eop.EducationOrganizationEducationOrganizationProgram.EducationOrganizationProgramTypeDescriptorId IS 'The type of ed org program.';
COMMENT ON COLUMN eop.EducationOrganizationEducationOrganizationProgram.EndDate IS 'End date for the program.';
COMMENT ON COLUMN eop.EducationOrganizationEducationOrganizationProgram.NameOfInstitution IS 'The full, legally accepted name of the institution.';

-- Extended Properties [eop].[EducationOrganizationProgramAuthorizedProvider] --
COMMENT ON TABLE eop.EducationOrganizationProgramAuthorizedProvider IS 'This entiy tracks what providers are authorized to administer education organization level programs.';
COMMENT ON COLUMN eop.EducationOrganizationProgramAuthorizedProvider.BeginDate IS 'Start date for the ed org program.';
COMMENT ON COLUMN eop.EducationOrganizationProgramAuthorizedProvider.EducationOrganizationProgramTypeDescriptorId IS 'The type of ed org program that can be administered.';
COMMENT ON COLUMN eop.EducationOrganizationProgramAuthorizedProvider.NameOfInstitution IS 'The full, legally accepted name of the institution.';
COMMENT ON COLUMN eop.EducationOrganizationProgramAuthorizedProvider.EndDate IS 'End date for the program.';

-- Extended Properties [eop].[EducationOrganizationProgramProvider] --
COMMENT ON TABLE eop.EducationOrganizationProgramProvider IS 'List of providers of programs that are at the education organization level.';
COMMENT ON COLUMN eop.EducationOrganizationProgramProvider.NameOfInstitution IS 'The full, legally accepted name of the institution.';
COMMENT ON COLUMN eop.EducationOrganizationProgramProvider.EducationServiceCenterId IS 'The identifier assigned to an education service center.';

-- Extended Properties [eop].[EducationOrganizationProgramTypeDescriptor] --
COMMENT ON TABLE eop.EducationOrganizationProgramTypeDescriptor IS 'Program types that are administered at the education organization level instead of the student level.';
COMMENT ON COLUMN eop.EducationOrganizationProgramTypeDescriptor.EducationOrganizationProgramTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

