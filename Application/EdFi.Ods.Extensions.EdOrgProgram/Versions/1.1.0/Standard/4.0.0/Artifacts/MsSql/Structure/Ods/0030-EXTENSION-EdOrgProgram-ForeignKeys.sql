ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramProvider] FOREIGN KEY ([EducationOrganizationProgramProviderId])
REFERENCES [edorgprogram].[EducationOrganizationProgramProvider] ([EducationOrganizationProgramProviderId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramProvider]
ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ([EducationOrganizationProgramProviderId] ASC)
GO

ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramTypeDescriptor] FOREIGN KEY ([EducationOrganizationProgramTypeDescriptorId])
REFERENCES [edorgprogram].[EducationOrganizationProgramTypeDescriptor] ([EducationOrganizationProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramTypeDescriptor]
ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ([EducationOrganizationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramProvider] FOREIGN KEY ([EducationOrganizationProgramProviderId])
REFERENCES [edorgprogram].[EducationOrganizationProgramProvider] ([EducationOrganizationProgramProviderId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramProvider]
ON [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ([EducationOrganizationProgramProviderId] ASC)
GO

ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramTypeDescriptor] FOREIGN KEY ([EducationOrganizationProgramTypeDescriptorId])
REFERENCES [edorgprogram].[EducationOrganizationProgramTypeDescriptor] ([EducationOrganizationProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramTypeDescriptor]
ON [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ([EducationOrganizationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramProvider_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [edorgprogram].[EducationOrganizationProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramTypeDescriptor_Descriptor] FOREIGN KEY ([EducationOrganizationProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

