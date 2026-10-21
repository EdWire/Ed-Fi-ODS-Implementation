-- Extended Properties [edfixcrdc].[RestraintCategoryDescriptor] --
COMMENT ON TABLE edfixcrdc.RestraintCategoryDescriptor IS 'This descriptor defines the categories of the restraint administered.';
COMMENT ON COLUMN edfixcrdc.RestraintCategoryDescriptor.RestraintCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [edfixcrdc].[RestraintEventRestraintCategory] --
COMMENT ON TABLE edfixcrdc.RestraintEventRestraintCategory IS 'The category of the restraint administered.';
COMMENT ON COLUMN edfixcrdc.RestraintEventRestraintCategory.RestraintEventIdentifier IS 'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.';
COMMENT ON COLUMN edfixcrdc.RestraintEventRestraintCategory.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN edfixcrdc.RestraintEventRestraintCategory.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN edfixcrdc.RestraintEventRestraintCategory.RestraintCategoryDescriptorId IS 'The category of the restraint administered.';

