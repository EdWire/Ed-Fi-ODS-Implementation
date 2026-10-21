-- Extended Properties [edfixcrdc].[RestraintCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the categories of the restraint administered.', @level0type=N'SCHEMA', @level0name=N'edfixcrdc', @level1type=N'TABLE', @level1name=N'RestraintCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfixcrdc', @level1type=N'TABLE', @level1name=N'RestraintCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'RestraintCategoryDescriptorId'
GO

-- Extended Properties [edfixcrdc].[RestraintEventRestraintCategory] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the restraint administered.', @level0type=N'SCHEMA', @level0name=N'edfixcrdc', @level1type=N'TABLE', @level1name=N'RestraintEventRestraintCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfixcrdc', @level1type=N'TABLE', @level1name=N'RestraintEventRestraintCategory', @level2type=N'COLUMN', @level2name=N'RestraintEventIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'edfixcrdc', @level1type=N'TABLE', @level1name=N'RestraintEventRestraintCategory', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfixcrdc', @level1type=N'TABLE', @level1name=N'RestraintEventRestraintCategory', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the restraint administered.', @level0type=N'SCHEMA', @level0name=N'edfixcrdc', @level1type=N'TABLE', @level1name=N'RestraintEventRestraintCategory', @level2type=N'COLUMN', @level2name=N'RestraintCategoryDescriptorId'
GO

