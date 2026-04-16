ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramProvider] FOREIGN KEY ([NameOfInstitution])
REFERENCES [eop].[EducationOrganizationProgramProvider] ([NameOfInstitution])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramProvider]
ON [eop].[EducationOrganizationEducationOrganizationProgram] ([NameOfInstitution] ASC)
GO

ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramTypeDescriptor] FOREIGN KEY ([EducationOrganizationProgramTypeDescriptorId])
REFERENCES [eop].[EducationOrganizationProgramTypeDescriptor] ([EducationOrganizationProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationEducationOrganizationProgram_EducationOrganizationProgramTypeDescriptor]
ON [eop].[EducationOrganizationEducationOrganizationProgram] ([EducationOrganizationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [eop].[EducationOrganizationProgramAuthorizedProvider] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramProvider] FOREIGN KEY ([NameOfInstitution])
REFERENCES [eop].[EducationOrganizationProgramProvider] ([NameOfInstitution])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramProvider]
ON [eop].[EducationOrganizationProgramAuthorizedProvider] ([NameOfInstitution] ASC)
GO

ALTER TABLE [eop].[EducationOrganizationProgramAuthorizedProvider] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramTypeDescriptor] FOREIGN KEY ([EducationOrganizationProgramTypeDescriptorId])
REFERENCES [eop].[EducationOrganizationProgramTypeDescriptor] ([EducationOrganizationProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationProgramAuthorizedProvider_EducationOrganizationProgramTypeDescriptor]
ON [eop].[EducationOrganizationProgramAuthorizedProvider] ([EducationOrganizationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [eop].[EducationOrganizationProgramProvider] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramProvider_EducationServiceCenter] FOREIGN KEY ([EducationServiceCenterId])
REFERENCES [edfi].[EducationServiceCenter] ([EducationServiceCenterId])
GO

ALTER TABLE [eop].[EducationOrganizationProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationProgramTypeDescriptor_Descriptor] FOREIGN KEY ([EducationOrganizationProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

