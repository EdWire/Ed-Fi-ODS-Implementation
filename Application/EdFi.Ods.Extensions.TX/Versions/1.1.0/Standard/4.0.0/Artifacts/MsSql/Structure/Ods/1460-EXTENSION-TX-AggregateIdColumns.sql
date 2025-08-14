CREATE SEQUENCE [tx].[BasicReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[BasicReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_BasicReportingPeriodAttendance_AggregateId] ON [tx].[BasicReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[BilingualESLProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[BilingualESLProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_BilingualESLProgramReportingPeriodAttendance_AggregateId] ON [tx].[BilingualESLProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[BudgetExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[BudgetExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[BudgetExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_BudgetExt_AggregateId] ON [tx].[BudgetExt] (AggregateId);

CREATE SEQUENCE [tx].[ContractedInstructionalStaffFTEExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[ContractedInstructionalStaffFTEExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ContractedInstructionalStaffFTEExt_AggregateId] ON [tx].[ContractedInstructionalStaffFTEExt] (AggregateId);

CREATE SEQUENCE [tx].[CourseTranscriptExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[CourseTranscriptExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[CourseTranscriptExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CourseTranscriptExt_AggregateId] ON [tx].[CourseTranscriptExt] (AggregateId);

CREATE SEQUENCE [tx].[CTEProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[CTEProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_CTEProgramReportingPeriodAttendance_AggregateId] ON [tx].[CTEProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[DescriptorMappingHistory_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[DescriptorMappingHistory] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[DescriptorMappingHistory_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_DescriptorMappingHistory_AggregateId] ON [tx].[DescriptorMappingHistory] (AggregateId);

CREATE SEQUENCE [tx].[ExtendedSchoolYearServicesAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[ExtendedSchoolYearServicesAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ExtendedSchoolYearServicesAttendance_AggregateId] ON [tx].[ExtendedSchoolYearServicesAttendance] (AggregateId);

CREATE SEQUENCE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FlexibleBilingualESLProgramReportingPeriodAttendance_AggregateId] ON [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[FlexibleCTEProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[FlexibleCTEProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FlexibleCTEProgramReportingPeriodAttendance_AggregateId] ON [tx].[FlexibleCTEProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[FlexibleRegularProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[FlexibleRegularProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FlexibleRegularProgramReportingPeriodAttendance_AggregateId] ON [tx].[FlexibleRegularProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FlexibleSpecialEducationProgramReportingPeriodAttendance_AggregateId] ON [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[PayrollExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PayrollExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PayrollExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PayrollExt_AggregateId] ON [tx].[PayrollExt] (AggregateId);

CREATE SEQUENCE [tx].[PriorYearActualExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PriorYearActualExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PriorYearActualExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PriorYearActualExt_AggregateId] ON [tx].[PriorYearActualExt] (AggregateId);

CREATE SEQUENCE [tx].[PriorYearLeaver_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PriorYearLeaver] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PriorYearLeaver_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PriorYearLeaver_AggregateId] ON [tx].[PriorYearLeaver] (AggregateId);

CREATE SEQUENCE [tx].[PriorYearLeaverParent_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PriorYearLeaverParent] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PriorYearLeaverParent_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PriorYearLeaverParent_AggregateId] ON [tx].[PriorYearLeaverParent] (AggregateId);

CREATE SEQUENCE [tx].[PriorYearLeaverStudentParentAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PriorYearLeaverStudentParentAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PriorYearLeaverStudentParentAssociation_AggregateId] ON [tx].[PriorYearLeaverStudentParentAssociation] (AggregateId);

CREATE SEQUENCE [tx].[PriorYearSSAOrgAssociationExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PriorYearSSAOrgAssociationExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PriorYearSSAOrgAssociationExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PriorYearSSAOrgAssociationExt_AggregateId] ON [tx].[PriorYearSSAOrgAssociationExt] (AggregateId);

CREATE SEQUENCE [tx].[ReportingPeriodExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[ReportingPeriodExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[ReportingPeriodExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ReportingPeriodExt_AggregateId] ON [tx].[ReportingPeriodExt] (AggregateId);

CREATE SEQUENCE [tx].[SharedServiceArrangementExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SharedServiceArrangementExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SharedServiceArrangementExt_AggregateId] ON [tx].[SharedServiceArrangementExt] (AggregateId);

CREATE SEQUENCE [tx].[SpecialEducationProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SpecialEducationProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SpecialEducationProgramReportingPeriodAttendance_AggregateId] ON [tx].[SpecialEducationProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[SpecialProgramsReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SpecialProgramsReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SpecialProgramsReportingPeriodAttendance_AggregateId] ON [tx].[SpecialProgramsReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[SSAOrgAssociationExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SSAOrgAssociationExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SSAOrgAssociationExt_AggregateId] ON [tx].[SSAOrgAssociationExt] (AggregateId);

CREATE SEQUENCE [tx].[StudentApplication_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[StudentApplication] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[StudentApplication_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentApplication_AggregateId] ON [tx].[StudentApplication] (AggregateId);

CREATE SEQUENCE [tx].[StudentSpecialEducationProgramEligibilityAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[StudentSpecialEducationProgramEligibilityAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentSpecialEducationProgramEligibilityAssociation_AggregateId] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] (AggregateId);

