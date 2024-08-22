-- Table [tx].[AcceleratedInstructionSubjectDescriptor] --
CREATE TABLE [tx].[AcceleratedInstructionSubjectDescriptor] (
    [AcceleratedInstructionSubjectDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AcceleratedInstructionSubjectDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AcceleratedInstructionSubjectDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ActualFunctionDescriptor] --
CREATE TABLE [tx].[ActualFunctionDescriptor] (
    [ActualFunctionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ActualFunctionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ActualFunctionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ActualFundDescriptor] --
CREATE TABLE [tx].[ActualFundDescriptor] (
    [ActualFundDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ActualFundDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ActualFundDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ActualObjectDescriptor] --
CREATE TABLE [tx].[ActualObjectDescriptor] (
    [ActualObjectDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ActualObjectDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ActualObjectDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ActualProgramIntentDescriptor] --
CREATE TABLE [tx].[ActualProgramIntentDescriptor] (
    [ActualProgramIntentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ActualProgramIntentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ActualProgramIntentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ADAEligibilityDescriptor] --
CREATE TABLE [tx].[ADAEligibilityDescriptor] (
    [ADAEligibilityDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ADAEligibilityDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ADAEligibilityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ApiOperationTypeDescriptor] --
CREATE TABLE [tx].[ApiOperationTypeDescriptor] (
    [ApiOperationTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ApiOperationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ApiOperationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ApplicationTypeDescriptor] --
CREATE TABLE [tx].[ApplicationTypeDescriptor] (
    [ApplicationTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ApplicationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ApplicationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ArmedServicesVocAptBatteryDescriptor] --
CREATE TABLE [tx].[ArmedServicesVocAptBatteryDescriptor] (
    [ArmedServicesVocAptBatteryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ArmedServicesVocAptBatteryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ArmedServicesVocAptBatteryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[AsOfStatusLastDayEnrollmentDescriptor] --
CREATE TABLE [tx].[AsOfStatusLastDayEnrollmentDescriptor] (
    [AsOfStatusLastDayEnrollmentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AsOfStatusLastDayEnrollmentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AsOfStatusLastDayEnrollmentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[AsOfStatusLastFridayOctoberDescriptor] --
CREATE TABLE [tx].[AsOfStatusLastFridayOctoberDescriptor] (
    [AsOfStatusLastFridayOctoberDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AsOfStatusLastFridayOctoberDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AsOfStatusLastFridayOctoberDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[AssessmentExtension] --
CREATE TABLE [tx].[AssessmentExtension] (
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [ReportAssessmentTypeDescriptorId] [INT] NULL,
    [TitleOfAssessmentDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [AssessmentExtension_PK] PRIMARY KEY CLUSTERED (
        [AssessmentIdentifier] ASC,
        [Namespace] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[AssessmentExtension] ADD CONSTRAINT [AssessmentExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[AssessmentResultsObtainedDescriptor] --
CREATE TABLE [tx].[AssessmentResultsObtainedDescriptor] (
    [AssessmentResultsObtainedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AssessmentResultsObtainedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AssessmentResultsObtainedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[AssociateDegreeIndicatorDescriptor] --
CREATE TABLE [tx].[AssociateDegreeIndicatorDescriptor] (
    [AssociateDegreeIndicatorDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AssociateDegreeIndicatorDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AssociateDegreeIndicatorDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[AuxiliaryRoleIdDescriptor] --
CREATE TABLE [tx].[AuxiliaryRoleIdDescriptor] (
    [AuxiliaryRoleIdDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AuxiliaryRoleIdDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AuxiliaryRoleIdDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[BasicReportingPeriodAttendance] --
CREATE TABLE [tx].[BasicReportingPeriodAttendance] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [NumberOfHoursInRPEP] [DECIMAL](6, 2) NULL,
    [RATotalEligibleDaysPresent] [DECIMAL](4, 1) NOT NULL,
    [RSTotalEligibleDaysPresent] [DECIMAL](4, 1) NOT NULL,
    [TotalDaysAbsent] [DECIMAL](4, 1) NOT NULL,
    [TotalEligibleDaysPresent] [DECIMAL](4, 1) NOT NULL,
    [TotalIneligibleDaysPresent] [DECIMAL](4, 1) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [BasicReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [GradeLevelDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD CONSTRAINT [BasicReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD CONSTRAINT [BasicReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[BasicReportingPeriodAttendance] ADD CONSTRAINT [BasicReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[BilingualESLFundingDescriptor] --
CREATE TABLE [tx].[BilingualESLFundingDescriptor] (
    [BilingualESLFundingDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BilingualESLFundingDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BilingualESLFundingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[BilingualESLProgramReportingPeriodAttendance] --
CREATE TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] (
    [BilingualESLFundingDescriptorId] [INT] NOT NULL,
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [RATotalEligBilingualESLDaysPresent] [DECIMAL](4, 1) NULL,
    [RSTotalEligBilingualESLDaysPresent] [DECIMAL](4, 1) NULL,
    [TotalEligBilingualESLDaysPresent] [DECIMAL](4, 1) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [BilingualESLProgramReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [BilingualESLFundingDescriptorId] ASC,
        [CalendarCode] ASC,
        [GradeLevelDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT [BilingualESLProgramReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT [BilingualESLProgramReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[BilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT [BilingualESLProgramReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[BudgetExt] --
CREATE TABLE [tx].[BudgetExt] (
    [BeginDate] [DATE] NOT NULL,
    [BudgetFunctionDescriptorId] [INT] NOT NULL,
    [BudgetFundDescriptorId] [INT] NOT NULL,
    [BudgetObjectDescriptorId] [INT] NOT NULL,
    [BudgetProgramIntentDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [Organization] [INT] NOT NULL,
    [BudgetAmount] [BIGINT] NOT NULL,
    [EndDate] [DATE] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [BudgetExt_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [BudgetFunctionDescriptorId] ASC,
        [BudgetFundDescriptorId] ASC,
        [BudgetObjectDescriptorId] ASC,
        [BudgetProgramIntentDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [Organization] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[BudgetExt] ADD CONSTRAINT [BudgetExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[BudgetExt] ADD CONSTRAINT [BudgetExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[BudgetExt] ADD CONSTRAINT [BudgetExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[BudgetFunctionDescriptor] --
CREATE TABLE [tx].[BudgetFunctionDescriptor] (
    [BudgetFunctionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BudgetFunctionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BudgetFunctionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[BudgetFundDescriptor] --
CREATE TABLE [tx].[BudgetFundDescriptor] (
    [BudgetFundDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BudgetFundDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BudgetFundDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[BudgetObjectDescriptor] --
CREATE TABLE [tx].[BudgetObjectDescriptor] (
    [BudgetObjectDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BudgetObjectDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BudgetObjectDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[BudgetProgramIntentDescriptor] --
CREATE TABLE [tx].[BudgetProgramIntentDescriptor] (
    [BudgetProgramIntentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BudgetProgramIntentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BudgetProgramIntentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[CalendarDateExtension] --
CREATE TABLE [tx].[CalendarDateExtension] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [Date] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CalendarWaiverEventTypeDescriptorId] [INT] NULL,
    [SchoolDayInstructionalMinutes] [INT] NULL,
    [SchoolDayOperationalMinutes] [INT] NULL,
    [SchoolDayWaiverMinutes] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CalendarDateExtension_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [Date] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[CalendarDateExtension] ADD CONSTRAINT [CalendarDateExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[CalendarWaiverEventTypeDescriptor] --
CREATE TABLE [tx].[CalendarWaiverEventTypeDescriptor] (
    [CalendarWaiverEventTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CalendarWaiverEventTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CalendarWaiverEventTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[CampusEnrollmentTypeDescriptor] --
CREATE TABLE [tx].[CampusEnrollmentTypeDescriptor] (
    [CampusEnrollmentTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CampusEnrollmentTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CampusEnrollmentTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ChildCountFundingDescriptor] --
CREATE TABLE [tx].[ChildCountFundingDescriptor] (
    [ChildCountFundingDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ChildCountFundingDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ChildCountFundingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[CIStaffProgramIntentDescriptor] --
CREATE TABLE [tx].[CIStaffProgramIntentDescriptor] (
    [CIStaffProgramIntentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CIStaffProgramIntentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CIStaffProgramIntentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ClassTypeDescriptor] --
CREATE TABLE [tx].[ClassTypeDescriptor] (
    [ClassTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ClassTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ClassTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ContractedInstructionalStaffFTEExt] --
CREATE TABLE [tx].[ContractedInstructionalStaffFTEExt] (
    [CIStaffProgramIntentDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [TotalContractedInstrStaffFTE] [DECIMAL](5, 2) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ContractedInstructionalStaffFTEExt_PK] PRIMARY KEY CLUSTERED (
        [CIStaffProgramIntentDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD CONSTRAINT [ContractedInstructionalStaffFTEExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD CONSTRAINT [ContractedInstructionalStaffFTEExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[ContractedInstructionalStaffFTEExt] ADD CONSTRAINT [ContractedInstructionalStaffFTEExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[CourseSequenceDescriptor] --
CREATE TABLE [tx].[CourseSequenceDescriptor] (
    [CourseSequenceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CourseSequenceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CourseSequenceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[CourseTranscriptExtension] --
CREATE TABLE [tx].[CourseTranscriptExtension] (
    [CourseAttemptResultDescriptorId] [INT] NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [CourseEducationOrganizationId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [ATCIndicator] [BIT] NULL,
    [CollegeCreditHours] [INT] NULL,
    [DualCreditIndicator] [BIT] NULL,
    [LocalCourseCode] [NVARCHAR](60) NULL,
    [SchoolId] [INT] NULL,
    [SectionIdentifier] [NVARCHAR](255) NULL,
    [SessionName] [NVARCHAR](60) NULL,
    [SummerSchoolIndicator] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CourseTranscriptExtension_PK] PRIMARY KEY CLUSTERED (
        [CourseAttemptResultDescriptorId] ASC,
        [CourseCode] ASC,
        [CourseEducationOrganizationId] ASC,
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[CourseTranscriptExtension] ADD CONSTRAINT [CourseTranscriptExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[CrisisEventDescriptor] --
CREATE TABLE [tx].[CrisisEventDescriptor] (
    [CrisisEventDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CrisisEventDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CrisisEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[CTEProgramReportingPeriodAttendance] --
CREATE TABLE [tx].[CTEProgramReportingPeriodAttendance] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [CTEServiceIdDescriptorId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EligibleDaysPresentV1] [DECIMAL](4, 1) NULL,
    [EligibleDaysPresentV2] [DECIMAL](4, 1) NULL,
    [EligibleDaysPresentV3] [DECIMAL](4, 1) NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [RAEligibleDaysPresentV1] [DECIMAL](4, 1) NULL,
    [RAEligibleDaysPresentV2] [DECIMAL](4, 1) NULL,
    [RAEligibleDaysPresentV3] [DECIMAL](4, 1) NULL,
    [RSEligibleDaysPresentV1] [DECIMAL](4, 1) NULL,
    [RSEligibleDaysPresentV2] [DECIMAL](4, 1) NULL,
    [RSEligibleDaysPresentV3] [DECIMAL](4, 1) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CTEProgramReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [CTEServiceIdDescriptorId] ASC,
        [GradeLevelDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD CONSTRAINT [CTEProgramReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD CONSTRAINT [CTEProgramReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[CTEProgramReportingPeriodAttendance] ADD CONSTRAINT [CTEProgramReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[CTEServiceIdDescriptor] --
CREATE TABLE [tx].[CTEServiceIdDescriptor] (
    [CTEServiceIdDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CTEServiceIdDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CTEServiceIdDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[DescriptorMappingHistory] --
CREATE TABLE [tx].[DescriptorMappingHistory] (
    [DateOfOperation] [DATETIME2](7) NOT NULL,
    [MappedNamespace] [NVARCHAR](255) NOT NULL,
    [MappedValue] [NVARCHAR](50) NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [Value] [NVARCHAR](50) NOT NULL,
    [AccountName] [NVARCHAR](100) NULL,
    [ApiOperationTypeDescriptorId] [INT] NOT NULL,
    [DescriptorMappingId] [NVARCHAR](36) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [DescriptorMappingHistory_PK] PRIMARY KEY CLUSTERED (
        [DateOfOperation] ASC,
        [MappedNamespace] ASC,
        [MappedValue] ASC,
        [Namespace] ASC,
        [Value] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[DescriptorMappingHistory] ADD CONSTRAINT [DescriptorMappingHistory_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[DescriptorMappingHistory] ADD CONSTRAINT [DescriptorMappingHistory_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[DescriptorMappingHistory] ADD CONSTRAINT [DescriptorMappingHistory_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[DifferenceReasonHoursAcceleratedInstructionDescriptor] --
CREATE TABLE [tx].[DifferenceReasonHoursAcceleratedInstructionDescriptor] (
    [DifferenceReasonHoursAcceleratedInstructionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DifferenceReasonHoursAcceleratedInstructionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DifferenceReasonHoursAcceleratedInstructionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[DisciplineActionExtension] --
CREATE TABLE [tx].[DisciplineActionExtension] (
    [DisciplineActionIdentifier] [NVARCHAR](32) NOT NULL,
    [DisciplineDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ActualLengthOfDisciplinaryAssignment] [INT] NULL,
    [InconsistentCodeOfConduct] [BIT] NULL,
    [NonMembershipDisciplineRestraintIndicator] [BIT] NULL,
    [OfficialLengthOfDisciplinaryAssignment] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineActionExtension_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionIdentifier] ASC,
        [DisciplineDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[DisciplineActionExtension] ADD CONSTRAINT [DisciplineActionExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[DisciplineIncidentExtension] --
CREATE TABLE [tx].[DisciplineIncidentExtension] (
    [IncidentIdentifier] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SafeSupportiveSchoolProgramTeamReview] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineIncidentExtension_PK] PRIMARY KEY CLUSTERED (
        [IncidentIdentifier] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[DisciplineIncidentExtension] ADD CONSTRAINT [DisciplineIncidentExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[DyslexiaRiskDescriptor] --
CREATE TABLE [tx].[DyslexiaRiskDescriptor] (
    [DyslexiaRiskDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DyslexiaRiskDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DyslexiaRiskDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[DyslexiaScreeningExceptionReasonDescriptor] --
CREATE TABLE [tx].[DyslexiaScreeningExceptionReasonDescriptor] (
    [DyslexiaScreeningExceptionReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DyslexiaScreeningExceptionReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DyslexiaScreeningExceptionReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[DyslexiaServicesDescriptor] --
CREATE TABLE [tx].[DyslexiaServicesDescriptor] (
    [DyslexiaServicesDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DyslexiaServicesDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DyslexiaServicesDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EarlyReadingIndicatorDescriptor] --
CREATE TABLE [tx].[EarlyReadingIndicatorDescriptor] (
    [EarlyReadingIndicatorDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EarlyReadingIndicatorDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EarlyReadingIndicatorDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EconomicDisadvantageDescriptor] --
CREATE TABLE [tx].[EconomicDisadvantageDescriptor] (
    [EconomicDisadvantageDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EconomicDisadvantageDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EconomicDisadvantageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EligibilityDelayReasonDescriptor] --
CREATE TABLE [tx].[EligibilityDelayReasonDescriptor] (
    [EligibilityDelayReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EligibilityDelayReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EligibilityDelayReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ELOActivityDescriptor] --
CREATE TABLE [tx].[ELOActivityDescriptor] (
    [ELOActivityDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ELOActivityDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ELOActivityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ELOTypeDescriptor] --
CREATE TABLE [tx].[ELOTypeDescriptor] (
    [ELOTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ELOTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ELOTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EmergentBilingualIndicatorDescriptor] --
CREATE TABLE [tx].[EmergentBilingualIndicatorDescriptor] (
    [EmergentBilingualIndicatorDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EmergentBilingualIndicatorDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EmergentBilingualIndicatorDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EndorsementCompletedDescriptor] --
CREATE TABLE [tx].[EndorsementCompletedDescriptor] (
    [EndorsementCompletedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EndorsementCompletedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EndorsementCompletedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EndorsementPursuingDescriptor] --
CREATE TABLE [tx].[EndorsementPursuingDescriptor] (
    [EndorsementPursuingDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EndorsementPursuingDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EndorsementPursuingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EnrollmentTrackingVerificationDescriptor] --
CREATE TABLE [tx].[EnrollmentTrackingVerificationDescriptor] (
    [EnrollmentTrackingVerificationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EnrollmentTrackingVerificationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EnrollmentTrackingVerificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[EvaluationDelayReasonDescriptor] --
CREATE TABLE [tx].[EvaluationDelayReasonDescriptor] (
    [EvaluationDelayReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EvaluationDelayReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EvaluationDelayReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ExtendedSchoolYearServicesAttendance] --
CREATE TABLE [tx].[ExtendedSchoolYearServicesAttendance] (
    [FirstInstructionalSettingDescriptorId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SecondInstructionalSettingDescriptorId] [INT] NULL,
    [TotalESYContactHoursInFirstInstructionalSetting] [DECIMAL](4, 1) NOT NULL,
    [TotalESYContactHoursInSecondInstructionalSetting] [DECIMAL](4, 1) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ExtendedSchoolYearServicesAttendance_PK] PRIMARY KEY CLUSTERED (
        [FirstInstructionalSettingDescriptorId] ASC,
        [GradeLevelDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD CONSTRAINT [ExtendedSchoolYearServicesAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD CONSTRAINT [ExtendedSchoolYearServicesAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[ExtendedSchoolYearServicesAttendance] ADD CONSTRAINT [ExtendedSchoolYearServicesAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[FinancialAidApplicationDescriptor] --
CREATE TABLE [tx].[FinancialAidApplicationDescriptor] (
    [FinancialAidApplicationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FinancialAidApplicationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FinancialAidApplicationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[FlexAttendanceProgramDescriptor] --
CREATE TABLE [tx].[FlexAttendanceProgramDescriptor] (
    [FlexAttendanceProgramDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FlexAttendanceProgramDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FlexAttendanceProgramDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] --
CREATE TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] (
    [BilingualESLFundingDescriptorId] [INT] NOT NULL,
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [FlexAttendanceProgramDescriptorId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [FlexTotalEligBilingualESLDaysPresent] [DECIMAL](4, 1) NOT NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [FlexibleBilingualESLProgramReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [BilingualESLFundingDescriptorId] ASC,
        [CalendarCode] ASC,
        [FlexAttendanceProgramDescriptorId] ASC,
        [GradeLevelDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleBilingualESLProgramReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleBilingualESLProgramReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleBilingualESLProgramReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[FlexibleCTEProgramReportingPeriodAttendance] --
CREATE TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [FlexAttendanceProgramDescriptorId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [FlexAttendTotalCareerTechMinutesPresent] [INT] NOT NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [FlexibleCTEProgramReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [FlexAttendanceProgramDescriptorId] ASC,
        [GradeLevelDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleCTEProgramReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleCTEProgramReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[FlexibleCTEProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleCTEProgramReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[FlexibleRegularProgramReportingPeriodAttendance] --
CREATE TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [FlexAttendanceProgramDescriptorId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [FlexAttendTotalEligibleMinutesPresent] [INT] NOT NULL,
    [FlexAttendTotalIneligibleMinutesPresent] [INT] NOT NULL,
    [FlexTotalEligPregRelSvcsDaysPresent] [DECIMAL](4, 1) NULL,
    [FlexTotalEligResidentialFacilityDaysPresent] [DECIMAL](4, 1) NULL,
    [FlexTotalEligSpEdMainstreamDaysPresent] [DECIMAL](4, 1) NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [FlexibleRegularProgramReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [FlexAttendanceProgramDescriptorId] ASC,
        [GradeLevelDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleRegularProgramReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleRegularProgramReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[FlexibleRegularProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleRegularProgramReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] --
CREATE TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [FlexAttendanceProgramDescriptorId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [InstructionalSettingDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [FlexAttendDaysEligibleInInstrSetting] [DECIMAL](4, 1) NOT NULL,
    [FlexAttendExcessMinutesInInstrSetting] [INT] NOT NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [FlexibleSpecialEducationProgramReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [FlexAttendanceProgramDescriptorId] ASC,
        [GradeLevelDescriptorId] ASC,
        [InstructionalSettingDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleSpecialEducationProgramReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleSpecialEducationProgramReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT [FlexibleSpecialEducationProgramReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[FosterCareTypeDescriptor] --
CREATE TABLE [tx].[FosterCareTypeDescriptor] (
    [FosterCareTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FosterCareTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FosterCareTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[FrequencyOfServicesDescriptor] --
CREATE TABLE [tx].[FrequencyOfServicesDescriptor] (
    [FrequencyOfServicesDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FrequencyOfServicesDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FrequencyOfServicesDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[GenerationCodeDescriptor] --
CREATE TABLE [tx].[GenerationCodeDescriptor] (
    [GenerationCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [GenerationCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [GenerationCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[GiftedTalentedProgramDescriptor] --
CREATE TABLE [tx].[GiftedTalentedProgramDescriptor] (
    [GiftedTalentedProgramDescriptorId] [INT] NOT NULL,
    CONSTRAINT [GiftedTalentedProgramDescriptor_PK] PRIMARY KEY CLUSTERED (
        [GiftedTalentedProgramDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[HearingAmplificationAccessDescriptor] --
CREATE TABLE [tx].[HearingAmplificationAccessDescriptor] (
    [HearingAmplificationAccessDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HearingAmplificationAccessDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HearingAmplificationAccessDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[HearingAmplificationDailyUseDescriptor] --
CREATE TABLE [tx].[HearingAmplificationDailyUseDescriptor] (
    [HearingAmplificationDailyUseDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HearingAmplificationDailyUseDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HearingAmplificationDailyUseDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[HearingAmplificationTypeDescriptor] --
CREATE TABLE [tx].[HearingAmplificationTypeDescriptor] (
    [HearingAmplificationTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HearingAmplificationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HearingAmplificationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[HomelessStatusDescriptor] --
CREATE TABLE [tx].[HomelessStatusDescriptor] (
    [HomelessStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HomelessStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HomelessStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[HoursSpentReceivingServicesDescriptor] --
CREATE TABLE [tx].[HoursSpentReceivingServicesDescriptor] (
    [HoursSpentReceivingServicesDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HoursSpentReceivingServicesDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HoursSpentReceivingServicesDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[IBCVendorDescriptor] --
CREATE TABLE [tx].[IBCVendorDescriptor] (
    [IBCVendorDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IBCVendorDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IBCVendorDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[InstructionalSettingDescriptor] --
CREATE TABLE [tx].[InstructionalSettingDescriptor] (
    [InstructionalSettingDescriptorId] [INT] NOT NULL,
    CONSTRAINT [InstructionalSettingDescriptor_PK] PRIMARY KEY CLUSTERED (
        [InstructionalSettingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[LangAcqServicesProvidedDescriptor] --
CREATE TABLE [tx].[LangAcqServicesProvidedDescriptor] (
    [LangAcqServicesProvidedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [LangAcqServicesProvidedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LangAcqServicesProvidedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[LocalEducationAgencyExtension] --
CREATE TABLE [tx].[LocalEducationAgencyExtension] (
    [LocalEducationAgencyId] [INT] NOT NULL,
    [ArmedServicesVocAptBatteryDescriptorId] [INT] NULL,
    [FamilyEngagementPlanLink] [NVARCHAR](200) NULL,
    [PKProgramEvaluationTypeDescriptorId] [INT] NULL,
    [TotalCostSchoolBoardRequests] [INT] NULL,
    [TotalNumSchoolBoardRequests] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalEducationAgencyExtension_PK] PRIMARY KEY CLUSTERED (
        [LocalEducationAgencyId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[LocalEducationAgencyExtension] ADD CONSTRAINT [LocalEducationAgencyExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[LocalEducationAgencyGiftedTalentedProgram] --
CREATE TABLE [tx].[LocalEducationAgencyGiftedTalentedProgram] (
    [LocalEducationAgencyId] [INT] NOT NULL,
    [GiftedTalentedProgramDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalEducationAgencyGiftedTalentedProgram_PK] PRIMARY KEY CLUSTERED (
        [LocalEducationAgencyId] ASC,
        [GiftedTalentedProgramDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[LocalEducationAgencyGiftedTalentedProgram] ADD CONSTRAINT [LocalEducationAgencyGiftedTalentedProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[LocalEducationAgencyProgramOfStudy] --
CREATE TABLE [tx].[LocalEducationAgencyProgramOfStudy] (
    [LocalEducationAgencyId] [INT] NOT NULL,
    [ProgramOfStudyDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalEducationAgencyProgramOfStudy_PK] PRIMARY KEY CLUSTERED (
        [LocalEducationAgencyId] ASC,
        [ProgramOfStudyDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[LocalEducationAgencyProgramOfStudy] ADD CONSTRAINT [LocalEducationAgencyProgramOfStudy_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[MilitaryConnectedStudentDescriptor] --
CREATE TABLE [tx].[MilitaryConnectedStudentDescriptor] (
    [MilitaryConnectedStudentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [MilitaryConnectedStudentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [MilitaryConnectedStudentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[NonCampusBasedInstructionDescriptor] --
CREATE TABLE [tx].[NonCampusBasedInstructionDescriptor] (
    [NonCampusBasedInstructionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NonCampusBasedInstructionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NonCampusBasedInstructionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[NonEnrolledStudentUILActivityDescriptor] --
CREATE TABLE [tx].[NonEnrolledStudentUILActivityDescriptor] (
    [NonEnrolledStudentUILActivityDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NonEnrolledStudentUILActivityDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NonEnrolledStudentUILActivityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[NSLPTypeDescriptor] --
CREATE TABLE [tx].[NSLPTypeDescriptor] (
    [NSLPTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NSLPTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NSLPTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ParentalPermissionDescriptor] --
CREATE TABLE [tx].[ParentalPermissionDescriptor] (
    [ParentalPermissionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ParentalPermissionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ParentalPermissionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ParentExtension] --
CREATE TABLE [tx].[ParentExtension] (
    [ParentUSI] [INT] NOT NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [ParentExtension_PK] PRIMARY KEY CLUSTERED (
        [ParentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[ParentExtension] ADD CONSTRAINT [ParentExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PayrollActivityDescriptor] --
CREATE TABLE [tx].[PayrollActivityDescriptor] (
    [PayrollActivityDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PayrollActivityDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PayrollActivityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PayrollExt] --
CREATE TABLE [tx].[PayrollExt] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [Organization] [INT] NOT NULL,
    [PayrollActivityDescriptorId] [INT] NOT NULL,
    [PayrollFunctionDescriptorId] [INT] NOT NULL,
    [PayrollFundDescriptorId] [INT] NOT NULL,
    [PayrollObjectDescriptorId] [INT] NOT NULL,
    [PayrollProgramIntentDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [PayrollAmount] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PayrollExt_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [Organization] ASC,
        [PayrollActivityDescriptorId] ASC,
        [PayrollFunctionDescriptorId] ASC,
        [PayrollFundDescriptorId] ASC,
        [PayrollObjectDescriptorId] ASC,
        [PayrollProgramIntentDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PayrollExt] ADD CONSTRAINT [PayrollExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[PayrollExt] ADD CONSTRAINT [PayrollExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[PayrollExt] ADD CONSTRAINT [PayrollExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[PayrollFunctionDescriptor] --
CREATE TABLE [tx].[PayrollFunctionDescriptor] (
    [PayrollFunctionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PayrollFunctionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PayrollFunctionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PayrollFundDescriptor] --
CREATE TABLE [tx].[PayrollFundDescriptor] (
    [PayrollFundDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PayrollFundDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PayrollFundDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PayrollObjectDescriptor] --
CREATE TABLE [tx].[PayrollObjectDescriptor] (
    [PayrollObjectDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PayrollObjectDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PayrollObjectDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PayrollProgramIntentDescriptor] --
CREATE TABLE [tx].[PayrollProgramIntentDescriptor] (
    [PayrollProgramIntentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PayrollProgramIntentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PayrollProgramIntentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PKCurriculaDescriptor] --
CREATE TABLE [tx].[PKCurriculaDescriptor] (
    [PKCurriculaDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PKCurriculaDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PKCurriculaDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PKFundingSourceDescriptor] --
CREATE TABLE [tx].[PKFundingSourceDescriptor] (
    [PKFundingSourceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PKFundingSourceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PKFundingSourceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PKProgramEvaluationTypeDescriptor] --
CREATE TABLE [tx].[PKProgramEvaluationTypeDescriptor] (
    [PKProgramEvaluationTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PKProgramEvaluationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PKProgramEvaluationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PKProgramTypeDescriptor] --
CREATE TABLE [tx].[PKProgramTypeDescriptor] (
    [PKProgramTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PKProgramTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PKProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PKSchoolTypeDescriptor] --
CREATE TABLE [tx].[PKSchoolTypeDescriptor] (
    [PKSchoolTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PKSchoolTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PKSchoolTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PKStudentInstructionDescriptor] --
CREATE TABLE [tx].[PKStudentInstructionDescriptor] (
    [PKStudentInstructionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PKStudentInstructionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PKStudentInstructionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PKTeacherRequirementDescriptor] --
CREATE TABLE [tx].[PKTeacherRequirementDescriptor] (
    [PKTeacherRequirementDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PKTeacherRequirementDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PKTeacherRequirementDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PostSecondaryCertificationLicensureDescriptor] --
CREATE TABLE [tx].[PostSecondaryCertificationLicensureDescriptor] (
    [PostSecondaryCertificationLicensureDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PostSecondaryCertificationLicensureDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PostSecondaryCertificationLicensureDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PostSecondaryCertLicensureResultDescriptor] --
CREATE TABLE [tx].[PostSecondaryCertLicensureResultDescriptor] (
    [PostSecondaryCertLicensureResultDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PostSecondaryCertLicensureResultDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PostSecondaryCertLicensureResultDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PPCDServiceLocationDescriptor] --
CREATE TABLE [tx].[PPCDServiceLocationDescriptor] (
    [PPCDServiceLocationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PPCDServiceLocationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PPCDServiceLocationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PreferredHomeCommunicationMethodDescriptor] --
CREATE TABLE [tx].[PreferredHomeCommunicationMethodDescriptor] (
    [PreferredHomeCommunicationMethodDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PreferredHomeCommunicationMethodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PreferredHomeCommunicationMethodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[PriorYearActualExt] --
CREATE TABLE [tx].[PriorYearActualExt] (
    [ActualFunctionDescriptorId] [INT] NOT NULL,
    [ActualFundDescriptorId] [INT] NOT NULL,
    [ActualObjectDescriptorId] [INT] NOT NULL,
    [ActualProgramIntentDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [Organization] [INT] NOT NULL,
    [ActualAmount] [BIGINT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PriorYearActualExt_PK] PRIMARY KEY CLUSTERED (
        [ActualFunctionDescriptorId] ASC,
        [ActualFundDescriptorId] ASC,
        [ActualObjectDescriptorId] ASC,
        [ActualProgramIntentDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [Organization] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearActualExt] ADD CONSTRAINT [PriorYearActualExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[PriorYearActualExt] ADD CONSTRAINT [PriorYearActualExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[PriorYearActualExt] ADD CONSTRAINT [PriorYearActualExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[PriorYearLeaver] --
CREATE TABLE [tx].[PriorYearLeaver] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [AsOfStatusLastFridayOctoberDescriptorId] [INT] NOT NULL,
    [AssociateDegreeIndicatorDescriptorId] [INT] NULL,
    [BirthCity] [NVARCHAR](30) NULL,
    [BirthCountryDescriptorId] [INT] NULL,
    [BirthDate] [DATE] NOT NULL,
    [BirthInternationalProvince] [NVARCHAR](150) NULL,
    [BirthSexDescriptorId] [INT] NULL,
    [BirthStateAbbreviationDescriptorId] [INT] NULL,
    [DateEnteredUS] [DATE] NULL,
    [EconomicDisadvantageDescriptorId] [INT] NULL,
    [EmergentBilingualIndicatorDescriptorId] [INT] NULL,
    [ExitWithdrawDate] [DATE] NULL,
    [ExitWithdrawTypeDescriptorId] [INT] NOT NULL,
    [FinancialAidApplicationDescriptorId] [INT] NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [FosterCareTypeDescriptorId] [INT] NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [HispanicLatinoEthnicity] [BIT] NULL,
    [HomelessStatusDescriptorId] [INT] NULL,
    [LanguageInstructionProgramServiceDescriptorId] [INT] NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [LocalStudentId] [NVARCHAR](9) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [MilitaryConnectedStudentDescriptorId] [INT] NULL,
    [MultipleBirthStatus] [BIT] NULL,
    [ParentalPermissionDescriptorId] [INT] NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [SexDescriptorId] [INT] NULL,
    [SpecialEducationStudent] [BIT] NULL,
    [StudentId] [NVARCHAR](9) NOT NULL,
    [TitleIPartAParticipantDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PriorYearLeaver_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaver] ADD CONSTRAINT [PriorYearLeaver_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[PriorYearLeaver] ADD CONSTRAINT [PriorYearLeaver_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[PriorYearLeaver] ADD CONSTRAINT [PriorYearLeaver_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[PriorYearLeaverAddress] --
CREATE TABLE [tx].[PriorYearLeaverAddress] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [CongressionalDistrict] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [LocaleDescriptorId] [INT] NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverAddress_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverAddress] ADD CONSTRAINT [PriorYearLeaverAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverAddressPeriod] --
CREATE TABLE [tx].[PriorYearLeaverAddressPeriod] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverAddressPeriod_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverAddressPeriod] ADD CONSTRAINT [PriorYearLeaverAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverElectronicMail] --
CREATE TABLE [tx].[PriorYearLeaverElectronicMail] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [ElectronicMailTypeDescriptorId] [INT] NOT NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [PrimaryEmailAddressIndicator] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverElectronicMail_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [ElectronicMailAddress] ASC,
        [ElectronicMailTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverElectronicMail] ADD CONSTRAINT [PriorYearLeaverElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverEndorsementCompleted] --
CREATE TABLE [tx].[PriorYearLeaverEndorsementCompleted] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [EndorsementCompletedDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverEndorsementCompleted_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [EndorsementCompletedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverEndorsementCompleted] ADD CONSTRAINT [PriorYearLeaverEndorsementCompleted_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverGraduationSet] --
CREATE TABLE [tx].[PriorYearLeaverGraduationSet] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [AchievementCategoryDescriptorId] [INT] NOT NULL,
    [DiplomaAwardDate] [DATE] NOT NULL,
    [DiplomaTypeDescriptorId] [INT] NOT NULL,
    [DistingLevelAchievementGraduate] [BIT] NULL,
    [IndividualGraduationCommitteeGraduateIndicator] [BIT] NULL,
    [MilitaryEnlistmentIndicator] [BIT] NULL,
    [TexasFirstEarlyHSCompletionProgramDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverGraduationSet_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverGraduationSet] ADD CONSTRAINT [PriorYearLeaverGraduationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverIndustryBasedCertificationSet] --
CREATE TABLE [tx].[PriorYearLeaverIndustryBasedCertificationSet] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [DateCertTaken] [DATE] NOT NULL,
    [IBCVendorDescriptorId] [INT] NOT NULL,
    [PostSecondaryCertificationLicensureDescriptorId] [INT] NOT NULL,
    [PostSecondaryCertLicensureResultDescriptorId] [INT] NOT NULL,
    [IBCExamFeeAmount] [DECIMAL](5, 2) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverIndustryBasedCertificationSet_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [DateCertTaken] ASC,
        [IBCVendorDescriptorId] ASC,
        [PostSecondaryCertificationLicensureDescriptorId] ASC,
        [PostSecondaryCertLicensureResultDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverIndustryBasedCertificationSet] ADD CONSTRAINT [PriorYearLeaverIndustryBasedCertificationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverLanguage] --
CREATE TABLE [tx].[PriorYearLeaverLanguage] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverLanguage_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [LanguageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverLanguage] ADD CONSTRAINT [PriorYearLeaverLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverLanguageUse] --
CREATE TABLE [tx].[PriorYearLeaverLanguageUse] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [LanguageUseDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverLanguageUse_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [LanguageDescriptorId] ASC,
        [LanguageUseDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverLanguageUse] ADD CONSTRAINT [PriorYearLeaverLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverParent] --
CREATE TABLE [tx].[PriorYearLeaverParent] (
    [ParentUId] [NVARCHAR](32) NOT NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PriorYearLeaverParent_PK] PRIMARY KEY CLUSTERED (
        [ParentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverParent] ADD CONSTRAINT [PriorYearLeaverParent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[PriorYearLeaverParent] ADD CONSTRAINT [PriorYearLeaverParent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[PriorYearLeaverParent] ADD CONSTRAINT [PriorYearLeaverParent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[PriorYearLeaverParentAddress] --
CREATE TABLE [tx].[PriorYearLeaverParentAddress] (
    [ParentUId] [NVARCHAR](32) NOT NULL,
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [CongressionalDistrict] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [LocaleDescriptorId] [INT] NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverParentAddress_PK] PRIMARY KEY CLUSTERED (
        [ParentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverParentAddress] ADD CONSTRAINT [PriorYearLeaverParentAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverParentAddressPeriod] --
CREATE TABLE [tx].[PriorYearLeaverParentAddressPeriod] (
    [ParentUId] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverParentAddressPeriod_PK] PRIMARY KEY CLUSTERED (
        [ParentUId] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverParentAddressPeriod] ADD CONSTRAINT [PriorYearLeaverParentAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverParentElectronicMail] --
CREATE TABLE [tx].[PriorYearLeaverParentElectronicMail] (
    [ParentUId] [NVARCHAR](32) NOT NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [ElectronicMailTypeDescriptorId] [INT] NOT NULL,
    [PrimaryEmailAddressIndicator] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverParentElectronicMail_PK] PRIMARY KEY CLUSTERED (
        [ParentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverParentElectronicMail] ADD CONSTRAINT [PriorYearLeaverParentElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverParentPersonalIdentificationDocument] --
CREATE TABLE [tx].[PriorYearLeaverParentPersonalIdentificationDocument] (
    [ParentUId] [NVARCHAR](32) NOT NULL,
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverParentPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [ParentUId] ASC,
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverParentPersonalIdentificationDocument] ADD CONSTRAINT [PriorYearLeaverParentPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverParentTelephone] --
CREATE TABLE [tx].[PriorYearLeaverParentTelephone] (
    [ParentUId] [NVARCHAR](32) NOT NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [OrderOfPriority] [INT] NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [TelephoneNumberTypeDescriptorId] [INT] NOT NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverParentTelephone_PK] PRIMARY KEY CLUSTERED (
        [ParentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverParentTelephone] ADD CONSTRAINT [PriorYearLeaverParentTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverPersonalIdentificationDocument] --
CREATE TABLE [tx].[PriorYearLeaverPersonalIdentificationDocument] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverPersonalIdentificationDocument] ADD CONSTRAINT [PriorYearLeaverPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverRace] --
CREATE TABLE [tx].[PriorYearLeaverRace] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [RaceDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverRace_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [RaceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverRace] ADD CONSTRAINT [PriorYearLeaverRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverStudentCharacteristic] --
CREATE TABLE [tx].[PriorYearLeaverStudentCharacteristic] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [StudentCharacteristicDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverStudentCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [StudentCharacteristicDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverStudentCharacteristic] ADD CONSTRAINT [PriorYearLeaverStudentCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[PriorYearLeaverStudentParentAssociation] --
CREATE TABLE [tx].[PriorYearLeaverStudentParentAssociation] (
    [ParentUId] [NVARCHAR](32) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [ContactPriority] [INT] NULL,
    [RelationDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PriorYearLeaverStudentParentAssociation_PK] PRIMARY KEY CLUSTERED (
        [ParentUId] ASC,
        [SchoolId] ASC,
        [StudentUId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ADD CONSTRAINT [PriorYearLeaverStudentParentAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ADD CONSTRAINT [PriorYearLeaverStudentParentAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[PriorYearLeaverStudentParentAssociation] ADD CONSTRAINT [PriorYearLeaverStudentParentAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[PriorYearLeaverTelephone] --
CREATE TABLE [tx].[PriorYearLeaverTelephone] (
    [SchoolId] [INT] NOT NULL,
    [StudentUId] [NVARCHAR](32) NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [TelephoneNumberTypeDescriptorId] [INT] NOT NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [OrderOfPriority] [INT] NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [PriorYearLeaverTelephone_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUId] ASC,
        [TelephoneNumber] ASC,
        [TelephoneNumberTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[PriorYearLeaverTelephone] ADD CONSTRAINT [PriorYearLeaverTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[ProgramOfStudyDescriptor] --
CREATE TABLE [tx].[ProgramOfStudyDescriptor] (
    [ProgramOfStudyDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProgramOfStudyDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramOfStudyDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[RegionalDaySchoolProgramForDeafDescriptor] --
CREATE TABLE [tx].[RegionalDaySchoolProgramForDeafDescriptor] (
    [RegionalDaySchoolProgramForDeafDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RegionalDaySchoolProgramForDeafDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RegionalDaySchoolProgramForDeafDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ReportAssessmentTypeDescriptor] --
CREATE TABLE [tx].[ReportAssessmentTypeDescriptor] (
    [ReportAssessmentTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ReportAssessmentTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ReportAssessmentTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ReportingPeriodDescriptor] --
CREATE TABLE [tx].[ReportingPeriodDescriptor] (
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ReportingPeriodDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ReportingPeriodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ReportingPeriodExt] --
CREATE TABLE [tx].[ReportingPeriodExt] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [Date] [DATE] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NOT NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ReportingPeriodExt_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [Date] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[ReportingPeriodExt] ADD CONSTRAINT [ReportingPeriodExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[ReportingPeriodExt] ADD CONSTRAINT [ReportingPeriodExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[ReportingPeriodExt] ADD CONSTRAINT [ReportingPeriodExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[RestraintEventExtension] --
CREATE TABLE [tx].[RestraintEventExtension] (
    [RestraintEventIdentifier] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [NonMembershipDisciplineRestraintIndicator] [BIT] NULL,
    [RestraintStaffTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [RestraintEventExtension_PK] PRIMARY KEY CLUSTERED (
        [RestraintEventIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[RestraintEventExtension] ADD CONSTRAINT [RestraintEventExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[RestraintStaffTypeDescriptor] --
CREATE TABLE [tx].[RestraintStaffTypeDescriptor] (
    [RestraintStaffTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RestraintStaffTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RestraintStaffTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[SchoolCampusEnrollmentTypeSet] --
CREATE TABLE [tx].[SchoolCampusEnrollmentTypeSet] (
    [SchoolId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [CampusEnrollmentTypeDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolCampusEnrollmentTypeSet_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolCampusEnrollmentTypeSet] ADD CONSTRAINT [SchoolCampusEnrollmentTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolCharterWaitlistSet] --
CREATE TABLE [tx].[SchoolCharterWaitlistSet] (
    [SchoolId] [INT] NOT NULL,
    [CharterAdmissionWaitlist] [BIT] NOT NULL,
    [CharterEducationalEnrollmentCapacity] [INT] NOT NULL,
    [NumberCharterStudentsEnrolled] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolCharterWaitlistSet_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolCharterWaitlistSet] ADD CONSTRAINT [SchoolCharterWaitlistSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolELOSet] --
CREATE TABLE [tx].[SchoolELOSet] (
    [SchoolId] [INT] NOT NULL,
    [ELOTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolELOSet_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [ELOTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolELOSet] ADD CONSTRAINT [SchoolELOSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolELOSetELOActivitySet] --
CREATE TABLE [tx].[SchoolELOSetELOActivitySet] (
    [SchoolId] [INT] NOT NULL,
    [ELOTypeDescriptorId] [INT] NOT NULL,
    [ELOActivityDescriptorId] [INT] NOT NULL,
    [ELODaysScheduledPerYear] [INT] NOT NULL,
    [ELOMinutesScheduledPerDay] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolELOSetELOActivitySet_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [ELOTypeDescriptorId] ASC,
        [ELOActivityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolELOSetELOActivitySet] ADD CONSTRAINT [SchoolELOSetELOActivitySet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolExtension] --
CREATE TABLE [tx].[SchoolExtension] (
    [SchoolId] [INT] NOT NULL,
    [AdditionalDaysProgram] [BIT] NULL,
    [ExpandedLearningOpportunity] [BIT] NULL,
    [NumberOfBullyingIncidents] [INT] NULL,
    [NumberOfCyberbullyingIncidents] [INT] NULL,
    [PKFullDayWaiver] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolExtension_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolExtension] ADD CONSTRAINT [SchoolExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolNSLPTypeSet] --
CREATE TABLE [tx].[SchoolNSLPTypeSet] (
    [SchoolId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [NSLPTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolNSLPTypeSet_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolNSLPTypeSet] ADD CONSTRAINT [SchoolNSLPTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SectionSet] --
CREATE TABLE [tx].[SectionSet] (
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [ChildCareOperationNumber] [NVARCHAR](8) NULL,
    [ClassTypeDescriptorId] [INT] NULL,
    [CourseSequenceDescriptorId] [INT] NOT NULL,
    [CTEHours] [INT] NULL,
    [EndDate] [DATE] NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [HighQualityPKProgram] [BIT] NULL,
    [NonCampusBasedInstructionDescriptorId] [INT] NULL,
    [PKCurriculaDescriptorId] [INT] NULL,
    [PKSchoolTypeDescriptorId] [INT] NULL,
    [PKStudentInstructionDescriptorId] [INT] NULL,
    [PopulationServedDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SectionSet_PK] PRIMARY KEY CLUSTERED (
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SectionSet] ADD CONSTRAINT [SectionSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SharedServiceArrangementExt] --
CREATE TABLE [tx].[SharedServiceArrangementExt] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [SSAFundDescriptorId] [INT] NOT NULL,
    [SSAMemberDistrictId] [INT] NOT NULL,
    [SSATypeDescriptorId] [INT] NOT NULL,
    [ActualAmount] [BIGINT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SharedServiceArrangementExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [SSAFundDescriptorId] ASC,
        [SSAMemberDistrictId] ASC,
        [SSATypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD CONSTRAINT [SharedServiceArrangementExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD CONSTRAINT [SharedServiceArrangementExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[SharedServiceArrangementExt] ADD CONSTRAINT [SharedServiceArrangementExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[SharedServiceArrangementStaffDescriptor] --
CREATE TABLE [tx].[SharedServiceArrangementStaffDescriptor] (
    [SharedServiceArrangementStaffDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SharedServiceArrangementStaffDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SharedServiceArrangementStaffDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[SpecialEducationProgramReportingPeriodAttendance] --
CREATE TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [InstructionalSettingDescriptorId] [INT] NOT NULL,
    [RegionalDaySchoolProgramForDeafDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EligibleDaysPresentInInstrSetting] [DECIMAL](4, 1) NULL,
    [ExcessHoursInInstructionalSetting] [DECIMAL](6, 3) NULL,
    [LEAOfRDSPDService] [INT] NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [RAEligibleDaysPresentInInstrSetting] [DECIMAL](4, 1) NULL,
    [RAExcessHoursInInstructionalSetting] [DECIMAL](6, 3) NULL,
    [RSEligibleDaysPresentInInstrSetting] [DECIMAL](4, 1) NULL,
    [RSExcessHoursInInstructionalSetting] [DECIMAL](6, 3) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SpecialEducationProgramReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [GradeLevelDescriptorId] ASC,
        [InstructionalSettingDescriptorId] ASC,
        [RegionalDaySchoolProgramForDeafDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT [SpecialEducationProgramReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT [SpecialEducationProgramReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[SpecialEducationProgramReportingPeriodAttendance] ADD CONSTRAINT [SpecialEducationProgramReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[SpecialProgramsReportingPeriodAttendance] --
CREATE TABLE [tx].[SpecialProgramsReportingPeriodAttendance] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ReportingPeriodDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [NumberDaysTaught] [INT] NOT NULL,
    [RATotalEligPregRelSvcsDaysPresent] [DECIMAL](4, 1) NULL,
    [RATotalEligResidentialFacilityDaysPresent] [DECIMAL](4, 1) NULL,
    [RATotalEligSpEdMainstreamDaysPresent] [DECIMAL](4, 1) NULL,
    [RSTotalEligPregRelSvcsDaysPresent] [DECIMAL](4, 1) NULL,
    [RSTotalEligResidentialFacilityDaysPresent] [DECIMAL](4, 1) NULL,
    [RSTotalEligSpEdMainstreamDaysPresent] [DECIMAL](4, 1) NULL,
    [TotalEligPregRelSvcsDaysPresent] [DECIMAL](4, 1) NULL,
    [TotalEligResidentialFacilityDaysPresent] [DECIMAL](4, 1) NULL,
    [TotalEligSpEdMainstreamDaysPresent] [DECIMAL](4, 1) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SpecialProgramsReportingPeriodAttendance_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [GradeLevelDescriptorId] ASC,
        [ReportingPeriodDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD CONSTRAINT [SpecialProgramsReportingPeriodAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD CONSTRAINT [SpecialProgramsReportingPeriodAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[SpecialProgramsReportingPeriodAttendance] ADD CONSTRAINT [SpecialProgramsReportingPeriodAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[SSAFundDescriptor] --
CREATE TABLE [tx].[SSAFundDescriptor] (
    [SSAFundDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SSAFundDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SSAFundDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[SSAOrgAssociationExt] --
CREATE TABLE [tx].[SSAOrgAssociationExt] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalAgentDistrictId] [INT] NOT NULL,
    [SSATypeDescriptorId] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SSAOrgAssociationExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FiscalAgentDistrictId] ASC,
        [SSATypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD CONSTRAINT [SSAOrgAssociationExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD CONSTRAINT [SSAOrgAssociationExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[SSAOrgAssociationExt] ADD CONSTRAINT [SSAOrgAssociationExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[SSATypeDescriptor] --
CREATE TABLE [tx].[SSATypeDescriptor] (
    [SSATypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SSATypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SSATypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[StaffEducationOrganizationAssignmentAssociationExtension] --
CREATE TABLE [tx].[StaffEducationOrganizationAssignmentAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffClassificationDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [SharedServiceArrangementStaffDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StaffClassificationDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] --
CREATE TABLE [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffClassificationDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [StaffServiceBeginDate] [DATE] NOT NULL,
    [StaffServiceDescriptorId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [MonthlyMinutes] [INT] NULL,
    [NumberOfStudentsInClass] [INT] NULL,
    [PopulationServedDescriptorId] [INT] NULL,
    [StaffServiceEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationAssignmentAssociationStaffServiceSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StaffClassificationDescriptorId] ASC,
        [StaffUSI] ASC,
        [StaffServiceBeginDate] ASC,
        [StaffServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociationStaffServiceSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] --
CREATE TABLE [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [AuxiliaryRoleIdDescriptorId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC,
        [AuxiliaryRoleIdDescriptorId] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffEducationOrganizationEmploymentAssociationExtension] --
CREATE TABLE [tx].[StaffEducationOrganizationEmploymentAssociationExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [NumberDaysEmployed] [INT] NULL,
    [PercentDayEmployed] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffEducationOrganizationEmploymentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffExtension] --
CREATE TABLE [tx].[StaffExtension] (
    [StaffUSI] [INT] NOT NULL,
    [AdditionalDaysProgramTeacher] [BIT] NULL,
    [CreditableYearOfService] [BIT] NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [PKTeacherRequirementDescriptorId] [INT] NULL,
    [StaffDoNotReportTSDS] [BIT] NULL,
    [StaffId] [NVARCHAR](9) NOT NULL,
    [TotalYearsPriorTeachingExperience] [INT] NULL,
    [TotalYearsProfExperience] [INT] NULL,
    [YearsExperienceInDistrict] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffExtension_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffExtension] ADD CONSTRAINT [StaffExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffParaprofessionalCertificationSet] --
CREATE TABLE [tx].[StaffParaprofessionalCertificationSet] (
    [StaffUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [ParaprofessionalCertification] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffParaprofessionalCertificationSet_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffParaprofessionalCertificationSet] ADD CONSTRAINT [StaffParaprofessionalCertificationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffSectionAssociationExtension] --
CREATE TABLE [tx].[StaffSectionAssociationExtension] (
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [MonthlyMinutes] [INT] NULL,
    [NumberDaysTaughtWeek1] [INT] NULL,
    [NumberDaysTaughtWeek2] [INT] NULL,
    [NumberDaysTaughtWeek3] [INT] NULL,
    [NumberDaysTaughtWeek4] [INT] NULL,
    [NumberMinutesTaughtWeek1] [INT] NULL,
    [NumberMinutesTaughtWeek2] [INT] NULL,
    [NumberMinutesTaughtWeek3] [INT] NULL,
    [NumberMinutesTaughtWeek4] [INT] NULL,
    [NumberOfStudentsInClass] [INT] NULL,
    [SharedServiceArrangementStaffDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffSectionAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffSectionAssociationExtension] ADD CONSTRAINT [StaffSectionAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffServiceDescriptor] --
CREATE TABLE [tx].[StaffServiceDescriptor] (
    [StaffServiceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffServiceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[StaffTeacherIncentiveAllotmentDesignation] --
CREATE TABLE [tx].[StaffTeacherIncentiveAllotmentDesignation] (
    [StaffUSI] [INT] NOT NULL,
    [TeacherIncentiveAllotmentDesignationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffTeacherIncentiveAllotmentDesignation_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC,
        [TeacherIncentiveAllotmentDesignationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffTeacherIncentiveAllotmentDesignation] ADD CONSTRAINT [StaffTeacherIncentiveAllotmentDesignation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffTypeDescriptor] --
CREATE TABLE [tx].[StaffTypeDescriptor] (
    [StaffTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StaffTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[StaffTypeSet] --
CREATE TABLE [tx].[StaffTypeSet] (
    [StaffUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [StaffTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffTypeSet_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffTypeSet] ADD CONSTRAINT [StaffTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAcademicRecordDiplomaExtension] --
CREATE TABLE [tx].[StudentAcademicRecordDiplomaExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [DiplomaAwardDate] [DATE] NOT NULL,
    [DiplomaTypeDescriptorId] [INT] NOT NULL,
    [DistingLevelAchievementGraduate] [BIT] NULL,
    [FinancialAidApplicationDescriptorId] [INT] NULL,
    [IndividualGraduationCommitteeGraduateIndicator] [BIT] NULL,
    [MilitaryEnlistmentIndicator] [BIT] NULL,
    [TexasFirstEarlyHSCompletionProgramDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAcademicRecordDiplomaExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC,
        [DiplomaAwardDate] ASC,
        [DiplomaTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentAcademicRecordDiplomaExtension] ADD CONSTRAINT [StudentAcademicRecordDiplomaExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAcademicRecordEndorsementCompleted] --
CREATE TABLE [tx].[StudentAcademicRecordEndorsementCompleted] (
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [EndorsementCompletedDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAcademicRecordEndorsementCompleted_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC,
        [EndorsementCompletedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentAcademicRecordEndorsementCompleted] ADD CONSTRAINT [StudentAcademicRecordEndorsementCompleted_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAcademicRecordEndorsementPursuing] --
CREATE TABLE [tx].[StudentAcademicRecordEndorsementPursuing] (
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [EndorsementPursuingDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAcademicRecordEndorsementPursuing_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC,
        [EndorsementPursuingDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentAcademicRecordEndorsementPursuing] ADD CONSTRAINT [StudentAcademicRecordEndorsementPursuing_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAcademicRecordExtension] --
CREATE TABLE [tx].[StudentAcademicRecordExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AssociateDegreeIndicatorDescriptorId] [INT] NULL,
    [FHSPDistingLevelParticipant] [BIT] NULL,
    [FHSPParticipant] [BIT] NULL,
    [IndividualGraduationCommitteeReview] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAcademicRecordExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentAcademicRecordExtension] ADD CONSTRAINT [StudentAcademicRecordExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAcademicRecordIndustryBasedCertificationSet] --
CREATE TABLE [tx].[StudentAcademicRecordIndustryBasedCertificationSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [DateCertTaken] [DATE] NOT NULL,
    [IBCVendorDescriptorId] [INT] NOT NULL,
    [PostSecondaryCertificationLicensureDescriptorId] [INT] NOT NULL,
    [PostSecondaryCertLicensureResultDescriptorId] [INT] NOT NULL,
    [IBCExamFeeAmount] [DECIMAL](5, 2) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAcademicRecordIndustryBasedCertificationSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC,
        [DateCertTaken] ASC,
        [IBCVendorDescriptorId] ASC,
        [PostSecondaryCertificationLicensureDescriptorId] ASC,
        [PostSecondaryCertLicensureResultDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentAcademicRecordIndustryBasedCertificationSet] ADD CONSTRAINT [StudentAcademicRecordIndustryBasedCertificationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAcceleratedInstructionParticipationDescriptor] --
CREATE TABLE [tx].[StudentAcceleratedInstructionParticipationDescriptor] (
    [StudentAcceleratedInstructionParticipationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StudentAcceleratedInstructionParticipationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StudentAcceleratedInstructionParticipationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[StudentApplication] --
CREATE TABLE [tx].[StudentApplication] (
    [ApplicationIdentifier] [NVARCHAR](10) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [ApplicationDate] [DATE] NOT NULL,
    [ApplicationTypeDescriptorId] [INT] NOT NULL,
    [BirthCity] [NVARCHAR](30) NULL,
    [BirthCountryDescriptorId] [INT] NULL,
    [BirthDate] [DATE] NOT NULL,
    [BirthInternationalProvince] [NVARCHAR](150) NULL,
    [BirthSexDescriptorId] [INT] NULL,
    [BirthStateAbbreviationDescriptorId] [INT] NULL,
    [DateEnteredUS] [DATE] NULL,
    [EntryGradeLevelDescriptorId] [INT] NOT NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [MultipleBirthStatus] [BIT] NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [SexDescriptorId] [INT] NOT NULL,
    [StudentId] [NVARCHAR](9) NOT NULL,
    [StudentUId] [NVARCHAR](10) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentApplication_PK] PRIMARY KEY CLUSTERED (
        [ApplicationIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentApplication] ADD CONSTRAINT [StudentApplication_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[StudentApplication] ADD CONSTRAINT [StudentApplication_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[StudentApplication] ADD CONSTRAINT [StudentApplication_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[StudentApplicationPersonalIdentificationDocument] --
CREATE TABLE [tx].[StudentApplicationPersonalIdentificationDocument] (
    [ApplicationIdentifier] [NVARCHAR](10) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentApplicationPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [ApplicationIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentApplicationPersonalIdentificationDocument] ADD CONSTRAINT [StudentApplicationPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAttributionDescriptor] --
CREATE TABLE [tx].[StudentAttributionDescriptor] (
    [StudentAttributionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StudentAttributionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StudentAttributionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[StudentCensusBlockGroupSet] --
CREATE TABLE [tx].[StudentCensusBlockGroupSet] (
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [StudentCensusBlockGroup] [NVARCHAR](12) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCensusBlockGroupSet_PK] PRIMARY KEY CLUSTERED (
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentCensusBlockGroupSet] ADD CONSTRAINT [StudentCensusBlockGroupSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentCrisisEventSet] --
CREATE TABLE [tx].[StudentCrisisEventSet] (
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [CrisisEventDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCrisisEventSet_PK] PRIMARY KEY CLUSTERED (
        [StudentUSI] ASC,
        [BeginDate] ASC,
        [CrisisEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentCrisisEventSet] ADD CONSTRAINT [StudentCrisisEventSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AcceleratedInstructionSubjectDescriptorId] [INT] NOT NULL,
    [StudentAcceleratedInstructionParticipationDescriptorId] [INT] NOT NULL,
    [AssignedHoursAcceleratedInstruction] [DECIMAL](4, 2) NULL,
    [CompletedHoursAcceleratedInstruction] [DECIMAL](4, 2) NULL,
    [DifferenceReasonHoursAcceleratedInstructionDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationAcceleratedInstructionSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [AcceleratedInstructionSubjectDescriptorId] ASC,
        [StudentAcceleratedInstructionParticipationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationAcceleratedInstructionSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationAcceleratedInstructionSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [DyslexiaRiskDescriptorId] [INT] NOT NULL,
    [DyslexiaScreeningExceptionReasonDescriptorId] [INT] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaRiskSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaRiskSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [DyslexiaServicesDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaServicesSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC,
        [DyslexiaServicesDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaServicesSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EarlyReadingIndicatorDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationEarlyReadingIndicatorSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationEarlyReadingIndicatorSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EconomicDisadvantageDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationEconomicDisadvantageSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationEconomicDisadvantageSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EmergentBilingualIndicatorDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationEmergentBilingualSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationEmergentBilingualSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationExtension] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StudentAcceleratedEducationPlan] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [FosterCareTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationFosterCareTypeSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationFosterCareTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [HomelessStatusDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationHomelessStatusSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationHomelessStatusSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [MilitaryConnectedStudentDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationMilitaryConnectedStudentSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationMilitaryConnectedStudentSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [OrderOfPKFundingSource] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [PKFundingSourceDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationPKFundingSourceSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC,
        [OrderOfPKFundingSource] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationPKFundingSourceSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [PKProgramTypeDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationPKProgramTypeSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC,
        [PKProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationPKProgramTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationTruancySet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationTruancySet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DateMet] [DATE] NOT NULL,
    [TruancyDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationTruancySet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [DateMet] ASC,
        [TruancyDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationTruancySet] ADD CONSTRAINT [StudentEducationOrganizationAssociationTruancySet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [UnaccompaniedYouthDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationUnaccompaniedYouthSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationUnaccompaniedYouthSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [UnschooledAsyleeRefugeeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentExtension] --
CREATE TABLE [tx].[StudentExtension] (
    [StudentUSI] [INT] NOT NULL,
    [AsOfStatusLastDayEnrollmentDescriptorId] [INT] NULL,
    [AsOfStatusLastFridayOctoberDescriptorId] [INT] NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [LocalStudentId] [NVARCHAR](9) NULL,
    [StudentDoNotReportTSDS] [BIT] NULL,
    [StudentId] [NVARCHAR](9) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentExtension_PK] PRIMARY KEY CLUSTERED (
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentExtension] ADD CONSTRAINT [StudentExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] --
CREATE TABLE [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ParentalPermissionSetBeginDate] [DATE] NOT NULL,
    [ParentalPermissionDescriptorId] [INT] NOT NULL,
    [ParentalPermissionSetEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentLanguageInstructionProgramAssociationParentalPermissionSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [ParentalPermissionSetBeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationParentalPermissionSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentNonEnrolledStudentUILActivity] --
CREATE TABLE [tx].[StudentNonEnrolledStudentUILActivity] (
    [StudentUSI] [INT] NOT NULL,
    [NonEnrolledStudentUILActivityDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentNonEnrolledStudentUILActivity_PK] PRIMARY KEY CLUSTERED (
        [StudentUSI] ASC,
        [NonEnrolledStudentUILActivityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentNonEnrolledStudentUILActivity] ADD CONSTRAINT [StudentNonEnrolledStudentUILActivity_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentProgramAttendanceEventExtension] --
CREATE TABLE [tx].[StudentProgramAttendanceEventExtension] (
    [AttendanceEventCategoryDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [EventDate] [DATE] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [InstructionalSettingDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentProgramAttendanceEventExtension_PK] PRIMARY KEY CLUSTERED (
        [AttendanceEventCategoryDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [EventDate] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentProgramAttendanceEventExtension] ADD CONSTRAINT [StudentProgramAttendanceEventExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSchoolAssociationExtension] --
CREATE TABLE [tx].[StudentSchoolAssociationExtension] (
    [EntryDate] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ADAEligibilityDescriptorId] [INT] NULL,
    [CampusIdOfAccountability] [INT] NULL,
    [CampusIdOfResidence] [INT] NULL,
    [EnrollmentTrackingVerificationDescriptorId] [INT] NULL,
    [StudentAttributionDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSchoolAssociationExtension] ADD CONSTRAINT [StudentSchoolAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSectionAssociationExtension] --
CREATE TABLE [tx].[StudentSectionAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CourseCompletionIndicator] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSectionAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSectionAssociationExtension] ADD CONSTRAINT [StudentSectionAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationAssessment] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationAssessment] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ToolOrAssessmentUsedDescriptorId] [INT] NOT NULL,
    [AssessmentResultsObtainedDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationAssessment_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [ToolOrAssessmentUsedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationAssessment] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationAssessment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilitySetBeginDate] [DATE] NOT NULL,
    [DisabilitySetEndDate] [DATE] NULL,
    [EligibilityDateDisabilities] [DATE] NULL,
    [OrderOfDisability] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilitySet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [DisabilityDescriptorId] ASC,
        [DisabilitySetBeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilitySet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationExtension] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [PreferredHomeCommunicationMethodDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationExtension] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [HearingAmplificationTypeDescriptorId] [INT] NOT NULL,
    [HearingAmplificationAccessDescriptorId] [INT] NULL,
    [HearingAmplificationDailyUseDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationHearingAmplification_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [HearingAmplificationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationHearingAmplification_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationInstructionalSettingSet] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationInstructionalSettingSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [InstructionalSettingBeginDate] [DATE] NOT NULL,
    [InstructionalSettingDescriptorId] [INT] NOT NULL,
    [InstructionalSettingEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationInstructionalSettingSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [InstructionalSettingBeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationInstructionalSettingSet] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationInstructionalSettingSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [LangAcqServicesProvidedDescriptorId] [INT] NOT NULL,
    [FrequencyOfServicesDescriptorId] [INT] NULL,
    [HoursSpentReceivingServicesDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationLanguageAcquisition_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [LangAcqServicesProvidedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationLanguageAcquisition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DateEnteredRF] [DATE] NOT NULL,
    [ResidentialFacilityId] [INT] NOT NULL,
    [DateExitedRF] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [DateEnteredRF] ASC,
        [ResidentialFacilityId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociationStudentResFacAssocSet] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociationStudentResFacAssocSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DateEnteredRF] [DATE] NOT NULL,
    [ResidentialFacilityId] [INT] NOT NULL,
    [StudentResFacAssocSetBeginDate] [DATE] NOT NULL,
    [AttendanceZoneCampus] [INT] NOT NULL,
    [CampusIdOfEnrollmentSchoolDayLength] [INT] NULL,
    [EducatedAtResidentialFacility] [BIT] NULL,
    [NumberOtherStudentsAssignedSameSurrogateParent] [INT] NULL,
    [ResidentialFacilityStudentSchoolDayLength] [INT] NULL,
    [StudentResFacAssocSetEndDate] [DATE] NULL,
    [SurrogateParentAssigned] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociationStudentResFacAssocSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [DateEnteredRF] ASC,
        [ResidentialFacilityId] ASC,
        [StudentResFacAssocSetBeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociationStudentResFacAssocSet] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociationStudentResFacAssocSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ProgramBeginDate] [DATE] NOT NULL,
    [ChildCountFundingDescriptorId] [INT] NULL,
    [LEAOfRDSPDService] [INT] NULL,
    [MedicallyFragile] [BIT] NULL,
    [MultiplyDisabled] [BIT] NULL,
    [PPCDServiceLocationDescriptorId] [INT] NULL,
    [ProgramEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [ProgramBeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramEligibilityAssociation] --
CREATE TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] (
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ConsentToEvaluationReceivedDate] [DATE] NULL,
    [EligibilityDelayReasonDescriptorId] [INT] NULL,
    [EligibilityDeterminationDate] [DATE] NULL,
    [EligibilityEvaluationDate] [DATE] NULL,
    [EvaluationDelayDays] [INT] NULL,
    [EvaluationDelayReasonDescriptorId] [INT] NULL,
    [IDEAIndicator] [BIT] NULL,
    [OriginalECIServicesDate] [DATE] NULL,
    [TransitionConferenceDate] [DATE] NULL,
    [TransitionNotificationDate] [DATE] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramEligibilityAssociation] ADD CONSTRAINT [StudentSpecialEducationProgramEligibilityAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[StudentTitleIPartAProgramAssociationSet] --
CREATE TABLE [tx].[StudentTitleIPartAProgramAssociationSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StudentTitleIPartAProgramAssociationSetBeginDate] [DATE] NOT NULL,
    [StudentTitleIPartAProgramAssociationSetEndDate] [DATE] NULL,
    [TitleIPartAParticipantDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentTitleIPartAProgramAssociationSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [StudentTitleIPartAProgramAssociationSetBeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentTitleIPartAProgramAssociationSet] ADD CONSTRAINT [StudentTitleIPartAProgramAssociationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[TeacherIncentiveAllotmentDesignationDescriptor] --
CREATE TABLE [tx].[TeacherIncentiveAllotmentDesignationDescriptor] (
    [TeacherIncentiveAllotmentDesignationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TeacherIncentiveAllotmentDesignationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherIncentiveAllotmentDesignationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] --
CREATE TABLE [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] (
    [TexasFirstEarlyHSCompletionProgramDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TexasFirstEarlyHSCompletionProgramDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TexasFirstEarlyHSCompletionProgramDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[TitleOfAssessmentDescriptor] --
CREATE TABLE [tx].[TitleOfAssessmentDescriptor] (
    [TitleOfAssessmentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TitleOfAssessmentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TitleOfAssessmentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ToolOrAssessmentUsedDescriptor] --
CREATE TABLE [tx].[ToolOrAssessmentUsedDescriptor] (
    [ToolOrAssessmentUsedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ToolOrAssessmentUsedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ToolOrAssessmentUsedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[TruancyDescriptor] --
CREATE TABLE [tx].[TruancyDescriptor] (
    [TruancyDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TruancyDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TruancyDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[UnaccompaniedYouthDescriptor] --
CREATE TABLE [tx].[UnaccompaniedYouthDescriptor] (
    [UnaccompaniedYouthDescriptorId] [INT] NOT NULL,
    CONSTRAINT [UnaccompaniedYouthDescriptor_PK] PRIMARY KEY CLUSTERED (
        [UnaccompaniedYouthDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[UnschooledAsyleeRefugeeDescriptor] --
CREATE TABLE [tx].[UnschooledAsyleeRefugeeDescriptor] (
    [UnschooledAsyleeRefugeeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [UnschooledAsyleeRefugeeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [UnschooledAsyleeRefugeeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

