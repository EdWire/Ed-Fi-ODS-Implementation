CREATE SEQUENCE [edorgprogram].[EducationOrganizationEducationOrganizationProgram_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edorgprogram].[EducationOrganizationEducationOrganizationProgram_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducationOrganizationEducationOrganizationProgram_AggregateId] ON [edorgprogram].[EducationOrganizationEducationOrganizationProgram] (AggregateId);

CREATE SEQUENCE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edorgprogram].[EducationOrganizationProgramAuthorizedProvider_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducationOrganizationProgramAuthorizedProvider_AggregateId] ON [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] (AggregateId);

CREATE SEQUENCE [edorgprogram].[EducationOrganizationProgramProvider_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [edorgprogram].[EducationOrganizationProgramProvider_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducationOrganizationProgramProvider_AggregateId] ON [edorgprogram].[EducationOrganizationProgramProvider] (AggregateId);

