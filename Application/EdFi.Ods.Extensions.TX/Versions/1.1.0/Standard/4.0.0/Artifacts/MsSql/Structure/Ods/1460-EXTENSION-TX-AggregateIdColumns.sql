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

CREATE SEQUENCE [tx].[ESYTierOfIntensityAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[ESYTierOfIntensityAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[ESYTierOfIntensityAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ESYTierOfIntensityAttendance_AggregateId] ON [tx].[ESYTierOfIntensityAttendance] (AggregateId);

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

CREATE SEQUENCE [tx].[FlexibleSpecialEducationTierOfIntensityAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[FlexibleSpecialEducationTierOfIntensityAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[FlexibleSpecialEducationTierOfIntensityAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_FlexibleSpecialEducationTierOfIntensityAttendance_AggregateId] ON [tx].[FlexibleSpecialEducationTierOfIntensityAttendance] (AggregateId);

CREATE SEQUENCE [tx].[GrievanceExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[GrievanceExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[GrievanceExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_GrievanceExt_AggregateId] ON [tx].[GrievanceExt] (AggregateId);

CREATE SEQUENCE [tx].[OpenStaffPositionExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[OpenStaffPositionExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[OpenStaffPositionExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_OpenStaffPositionExt_AggregateId] ON [tx].[OpenStaffPositionExt] (AggregateId);

CREATE SEQUENCE [tx].[PayrollExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PayrollExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PayrollExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PayrollExt_AggregateId] ON [tx].[PayrollExt] (AggregateId);

CREATE SEQUENCE [tx].[PriorYearActualExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PriorYearActualExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PriorYearActualExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PriorYearActualExt_AggregateId] ON [tx].[PriorYearActualExt] (AggregateId);

CREATE SEQUENCE [tx].[PriorYearSSAOrgAssociationExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[PriorYearSSAOrgAssociationExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[PriorYearSSAOrgAssociationExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_PriorYearSSAOrgAssociationExt_AggregateId] ON [tx].[PriorYearSSAOrgAssociationExt] (AggregateId);

CREATE SEQUENCE [tx].[ReportingPeriodExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[ReportingPeriodExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[ReportingPeriodExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_ReportingPeriodExt_AggregateId] ON [tx].[ReportingPeriodExt] (AggregateId);

CREATE SEQUENCE [tx].[RequisitionExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[RequisitionExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[RequisitionExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_RequisitionExt_AggregateId] ON [tx].[RequisitionExt] (AggregateId);

CREATE SEQUENCE [tx].[SharedServiceArrangementExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SharedServiceArrangementExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SharedServiceArrangementExt_AggregateId] ON [tx].[SharedServiceArrangementExt] (AggregateId);

CREATE SEQUENCE [tx].[SpecialEducationProgramReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SpecialEducationProgramReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SpecialEducationProgramReportingPeriodAttendance_AggregateId] ON [tx].[SpecialEducationProgramReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[SpecialEducationTierOfIntensityAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SpecialEducationTierOfIntensityAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SpecialEducationTierOfIntensityAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SpecialEducationTierOfIntensityAttendance_AggregateId] ON [tx].[SpecialEducationTierOfIntensityAttendance] (AggregateId);

CREATE SEQUENCE [tx].[SpecialProgramsReportingPeriodAttendance_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SpecialProgramsReportingPeriodAttendance_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SpecialProgramsReportingPeriodAttendance_AggregateId] ON [tx].[SpecialProgramsReportingPeriodAttendance] (AggregateId);

CREATE SEQUENCE [tx].[SPEDVideoCameraRequestExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SPEDVideoCameraRequestExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SPEDVideoCameraRequestExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SPEDVideoCameraRequestExt_AggregateId] ON [tx].[SPEDVideoCameraRequestExt] (AggregateId);

CREATE SEQUENCE [tx].[SSAOrgAssociationExt_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[SSAOrgAssociationExt_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_SSAOrgAssociationExt_AggregateId] ON [tx].[SSAOrgAssociationExt] (AggregateId);

CREATE SEQUENCE [tx].[StudentApplication_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[StudentApplication] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[StudentApplication_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentApplication_AggregateId] ON [tx].[StudentApplication] (AggregateId);

CREATE SEQUENCE [tx].[StudentSpecialEducationProgramEligibilityAssociation_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [tx].[StudentSpecialEducationProgramEligibilityAssociation_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentSpecialEducationProgramEligibilityAssociation_AggregateId] ON [tx].[StudentSpecialEducationProgramEligibilityAssociation] (AggregateId);

