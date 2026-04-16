CREATE SEQUENCE [eop].[EducationOrganizationEducationOrganizationProgram_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [eop].[EducationOrganizationEducationOrganizationProgram] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [eop].[EducationOrganizationEducationOrganizationProgram_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducationOrganizationEducationOrganizationProgram_AggregateId] ON [eop].[EducationOrganizationEducationOrganizationProgram] (AggregateId);

CREATE SEQUENCE [eop].[EducationOrganizationProgramAuthorizedProvider_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [eop].[EducationOrganizationProgramAuthorizedProvider] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [eop].[EducationOrganizationProgramAuthorizedProvider_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducationOrganizationProgramAuthorizedProvider_AggregateId] ON [eop].[EducationOrganizationProgramAuthorizedProvider] (AggregateId);

CREATE SEQUENCE [eop].[EducationOrganizationProgramProvider_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [eop].[EducationOrganizationProgramProvider] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [eop].[EducationOrganizationProgramProvider_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducationOrganizationProgramProvider_AggregateId] ON [eop].[EducationOrganizationProgramProvider] (AggregateId);

