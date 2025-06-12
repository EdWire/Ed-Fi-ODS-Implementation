CREATE SEQUENCE [idoe].[AssessmentAccommodation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[AssessmentAccommodation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[AssessmentAccommodation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_AssessmentAccommodation_AggregateId] ON [idoe].[AssessmentAccommodation] (AggregateId);

CREATE SEQUENCE [idoe].[EducationOrganizationOtherPersonnel_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[EducationOrganizationOtherPersonnel_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_EducationOrganizationOtherPersonnel_AggregateId] ON [idoe].[EducationOrganizationOtherPersonnel] (AggregateId);

CREATE SEQUENCE [idoe].[LocalCapitalizedEquipment_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[LocalCapitalizedEquipment] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[LocalCapitalizedEquipment_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_LocalCapitalizedEquipment_AggregateId] ON [idoe].[LocalCapitalizedEquipment] (AggregateId);

CREATE SEQUENCE [idoe].[LocalSubaward_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[LocalSubaward] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[LocalSubaward_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_LocalSubaward_AggregateId] ON [idoe].[LocalSubaward] (AggregateId);

CREATE SEQUENCE [idoe].[LocalUnusedLeavePayment_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[LocalUnusedLeavePayment] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[LocalUnusedLeavePayment_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_LocalUnusedLeavePayment_AggregateId] ON [idoe].[LocalUnusedLeavePayment] (AggregateId);

CREATE SEQUENCE [idoe].[SectionDimension_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[SectionDimension] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[SectionDimension_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SectionDimension_AggregateId] ON [idoe].[SectionDimension] (AggregateId);

CREATE SEQUENCE [idoe].[StudentAccommodation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[StudentAccommodation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[StudentAccommodation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentAccommodation_AggregateId] ON [idoe].[StudentAccommodation] (AggregateId);

CREATE SEQUENCE [idoe].[StudentSchoolGraduationPlan_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[StudentSchoolGraduationPlan] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[StudentSchoolGraduationPlan_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentSchoolGraduationPlan_AggregateId] ON [idoe].[StudentSchoolGraduationPlan] (AggregateId);

CREATE SEQUENCE [idoe].[SubCategoryDimension_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [idoe].[SubCategoryDimension] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [idoe].[SubCategoryDimension_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SubCategoryDimension_AggregateId] ON [idoe].[SubCategoryDimension] (AggregateId);

