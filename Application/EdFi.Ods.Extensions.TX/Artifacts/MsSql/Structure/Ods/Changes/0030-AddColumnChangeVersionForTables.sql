IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[ActualExt]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[ActualExt] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[AsOfStatusALeavers]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[AsOfStatusALeavers] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[BasicReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[BilingualESLProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[BudgetExt]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[BudgetExt] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[CTEProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[ContractedInstructionalStaffFTEExt]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[ExtendedSchoolYearServicesAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleBilingualESLProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleCTEProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleRegularProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[PayrollExt]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[PayrollExt] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SSAOrgAssociationExt]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SharedServiceArrangementExt]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SpecialEducationProgramReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[SpecialProgramsReportingPeriodAttendance]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[StudentApplication]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[StudentApplication] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[tx].[StudentSpecialEducationProgramEligibilityAssociation]') AND name = 'ChangeVersion')
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD [ChangeVersion] [BIGINT] DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) NOT NULL;

