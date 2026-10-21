ALTER TABLE [edfixcrdc].[RestraintCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_RestraintCategoryDescriptor_Descriptor] FOREIGN KEY ([RestraintCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [edfixcrdc].[RestraintEventRestraintCategory] WITH CHECK ADD CONSTRAINT [FK_RestraintEventRestraintCategory_RestraintCategoryDescriptor] FOREIGN KEY ([RestraintCategoryDescriptorId])
REFERENCES [edfixcrdc].[RestraintCategoryDescriptor] ([RestraintCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RestraintEventRestraintCategory_RestraintCategoryDescriptor]
ON [edfixcrdc].[RestraintEventRestraintCategory] ([RestraintCategoryDescriptorId] ASC)
GO

ALTER TABLE [edfixcrdc].[RestraintEventRestraintCategory] WITH CHECK ADD CONSTRAINT [FK_RestraintEventRestraintCategory_RestraintEvent] FOREIGN KEY ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[RestraintEvent] ([RestraintEventIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

