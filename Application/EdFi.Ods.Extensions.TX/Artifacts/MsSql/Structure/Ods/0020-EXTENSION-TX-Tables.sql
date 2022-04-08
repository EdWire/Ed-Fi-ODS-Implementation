-- Table [tx].[ActualExt] --
CREATE TABLE [tx].[ActualExt] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [FunctionDescriptorId] [INT] NOT NULL,
    [FundDescriptorId] [INT] NOT NULL,
    [ObjectDescriptorId] [INT] NOT NULL,
    [Organization] [INT] NOT NULL,
    [ProgramIntentDescriptorId] [INT] NOT NULL,
    [ActualAmount] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ActualExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [FunctionDescriptorId] ASC,
        [FundDescriptorId] ASC,
        [ObjectDescriptorId] ASC,
        [Organization] ASC,
        [ProgramIntentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[ActualExt] ADD CONSTRAINT [ActualExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[ActualExt] ADD CONSTRAINT [ActualExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[ActualExt] ADD CONSTRAINT [ActualExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[ADAEligibilityDescriptor] --
CREATE TABLE [tx].[ADAEligibilityDescriptor] (
    [ADAEligibilityDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ADAEligibilityDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ADAEligibilityDescriptorId] ASC
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

-- Table [tx].[AsOfStatusALeaver] --
CREATE TABLE [tx].[AsOfStatusALeaver] (
    [SchoolId] [INT] NOT NULL,
    [StudentUID] [NVARCHAR](10) NOT NULL,
    [SexDescriptorId] [INT] NULL,
    [HispanicLatinoEthnicity] [BIT] NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [ExitWithdrawTypeDescriptorId] [INT] NULL,
    [LocalStudentID] [NVARCHAR](9) NOT NULL,
    [StudentID] [NVARCHAR](9) NOT NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [StudentAttributionDescriptorId] [INT] NULL,
    [AssociateDegreeIndicator] [BIT] NULL,
    [AsOfStatusLastFridayOctoberDescriptorId] [INT] NULL,
    [HomelessStatusPriorYearDescriptorId] [INT] NULL,
    [UnaccompaniedYouthPriorYearDescriptorId] [INT] NULL,
    [UnschooledAsyleeRefugeePriorYearDescriptorId] [INT] NULL,
    [EconomicDisadvantageLastDateOfEnrollmentDescriptorId] [INT] NULL,
    [ParentalPermissionLastDateOfEnrollmentDescriptorId] [INT] NULL,
    [MigrantPriorYear] [BIT] NULL,
    [AdultPreviousAttendancePriorYear] [BIT] NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [BirthDate] [DATE] NOT NULL,
    [BirthCity] [NVARCHAR](30) NULL,
    [BirthStateAbbreviationDescriptorId] [INT] NULL,
    [BirthInternationalProvince] [NVARCHAR](150) NULL,
    [BirthCountryDescriptorId] [INT] NULL,
    [DateEnteredUS] [DATE] NULL,
    [MultipleBirthStatus] [BIT] NULL,
    [BirthSexDescriptorId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AsOfStatusALeaver_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[AsOfStatusALeaver] ADD CONSTRAINT [AsOfStatusALeaver_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[AsOfStatusALeaver] ADD CONSTRAINT [AsOfStatusALeaver_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[AsOfStatusALeaver] ADD CONSTRAINT [AsOfStatusALeaver_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[AsOfStatusALeaverDiploma] --
CREATE TABLE [tx].[AsOfStatusALeaverDiploma] (
    [SchoolId] [INT] NOT NULL,
    [StudentUID] [NVARCHAR](10) NOT NULL,
    [AchievementTitle] [NVARCHAR](60) NULL,
    [AchievementCategoryDescriptorId] [INT] NULL,
    [AchievementCategorySystem] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerOriginURL] [NVARCHAR](255) NULL,
    [Criteria] [NVARCHAR](150) NULL,
    [CriteriaURL] [NVARCHAR](255) NULL,
    [EvidenceStatement] [NVARCHAR](150) NULL,
    [ImageURL] [NVARCHAR](255) NULL,
    [DiplomaAwardDate] [DATE] NOT NULL,
    [DiplomaLevelDescriptorId] [INT] NULL,
    [DiplomaTypeDescriptorId] [INT] NOT NULL,
    [CTECompleter] [BIT] NULL,
    [DiplomaDescription] [NVARCHAR](80) NULL,
    [DiplomaAwardExpiresDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [AsOfStatusALeaverDiploma_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC,
        [StudentUID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[AsOfStatusALeaverDiploma] ADD CONSTRAINT [AsOfStatusALeaverDiploma_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[AsOfStatusALeaverIndustryBasedCertificationSet] --
CREATE TABLE [tx].[AsOfStatusALeaverIndustryBasedCertificationSet] (
    [BeginDate] [DATE] NOT NULL,
    [DateCertEarned] [DATE] NOT NULL,
    [IBCVendorDescriptorId] [INT] NOT NULL,
    [PostSecondaryCertificationLicensureDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUID] [NVARCHAR](10) NOT NULL,
    [IBCExamFeeAmount] [DECIMAL](5, 2) NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [AsOfStatusALeaverIndustryBasedCertificationSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [DateCertEarned] ASC,
        [IBCVendorDescriptorId] ASC,
        [PostSecondaryCertificationLicensureDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[AsOfStatusALeaverIndustryBasedCertificationSet] ADD CONSTRAINT [AsOfStatusALeaverIndustryBasedCertificationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[AsOfStatusALeaverPersonalIdentificationDocument] --
CREATE TABLE [tx].[AsOfStatusALeaverPersonalIdentificationDocument] (
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUID] [NVARCHAR](10) NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [AsOfStatusALeaverPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[AsOfStatusALeaverPersonalIdentificationDocument] ADD CONSTRAINT [AsOfStatusALeaverPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[AsOfStatusALeaverRace] --
CREATE TABLE [tx].[AsOfStatusALeaverRace] (
    [RaceDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUID] [NVARCHAR](10) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [AsOfStatusALeaverRace_PK] PRIMARY KEY CLUSTERED (
        [RaceDescriptorId] ASC,
        [SchoolId] ASC,
        [StudentUID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[AsOfStatusALeaverRace] ADD CONSTRAINT [AsOfStatusALeaverRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
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
    [TitleOfAssessmentDescriptorId] [INT] NULL,
    [ReportAssessmentTypeDescriptorId] [INT] NULL,
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

-- Table [tx].[AuxiliaryRoleIdDescriptor] --
CREATE TABLE [tx].[AuxiliaryRoleIdDescriptor] (
    [AuxiliaryRoleIdDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AuxiliaryRoleIdDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AuxiliaryRoleIdDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[BudgetExt] --
CREATE TABLE [tx].[BudgetExt] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [FunctionDescriptorId] [INT] NOT NULL,
    [FundDescriptorId] [INT] NOT NULL,
    [ObjectDescriptorId] [INT] NOT NULL,
    [Organization] [INT] NOT NULL,
    [ProgramIntentDescriptorId] [INT] NOT NULL,
    [BudgetAmount] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [BudgetExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [FunctionDescriptorId] ASC,
        [FundDescriptorId] ASC,
        [ObjectDescriptorId] ASC,
        [Organization] ASC,
        [ProgramIntentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[BudgetExt] ADD CONSTRAINT [BudgetExt_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [tx].[BudgetExt] ADD CONSTRAINT [BudgetExt_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [tx].[BudgetExt] ADD CONSTRAINT [BudgetExt_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [tx].[CalendarDateExtension] --
CREATE TABLE [tx].[CalendarDateExtension] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [Date] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CalendarWaiverEventTypeDescriptorId] [INT] NULL,
    [SchoolDayOperationalMinutes] [INT] NULL,
    [SchoolDayInstructionalMinutes] [INT] NULL,
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

-- Table [tx].[ClassPeriodExtension] --
CREATE TABLE [tx].[ClassPeriodExtension] (
    [ClassPeriodName] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [BeginDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [ClassPeriodExtension_PK] PRIMARY KEY CLUSTERED (
        [ClassPeriodName] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[ClassPeriodExtension] ADD CONSTRAINT [ClassPeriodExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
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
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramIntentDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [TotalContractedInstrStaffFTE] [DECIMAL](5, 2) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ContractedInstructionalStaffFTEExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProgramIntentDescriptorId] ASC,
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
    [CollegeCreditHours] [INT] NULL,
    [CourseSequenceDescriptorId] [INT] NULL,
    [DualCreditIndicator] [BIT] NULL,
    [ATCIndicator] [BIT] NULL,
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

-- Table [tx].[DisciplineActionExtension] --
CREATE TABLE [tx].[DisciplineActionExtension] (
    [DisciplineActionIdentifier] [NVARCHAR](20) NOT NULL,
    [DisciplineDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ActualLengthOfDisciplinaryAssignment] [INT] NULL,
    [OfficialLengthOfDisciplinaryAssignment] [INT] NULL,
    [InconsistentCodeOfConduct] [BIT] NULL,
    [NonMembershipDisciplineRestraintIndicator] [BIT] NULL,
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

-- Table [tx].[DyslexiaRiskDescriptor] --
CREATE TABLE [tx].[DyslexiaRiskDescriptor] (
    [DyslexiaRiskDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DyslexiaRiskDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DyslexiaRiskDescriptorId] ASC
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

-- Table [tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor] --
CREATE TABLE [tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor] (
    [EconomicDisadvantageLastDateOfEnrollmentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EconomicDisadvantageLastDateOfEnrollmentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EconomicDisadvantageLastDateOfEnrollmentDescriptorId] ASC
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

-- Table [tx].[EvaluationDelayReasonDescriptor] --
CREATE TABLE [tx].[EvaluationDelayReasonDescriptor] (
    [EvaluationDelayReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EvaluationDelayReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EvaluationDelayReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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

-- Table [tx].[FunctionDescriptor] --
CREATE TABLE [tx].[FunctionDescriptor] (
    [FunctionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FunctionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FunctionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[FundDescriptor] --
CREATE TABLE [tx].[FundDescriptor] (
    [FundDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FundDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FundDescriptorId] ASC
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

-- Table [tx].[HearingAmplifAvgDailyUseDescriptor] --
CREATE TABLE [tx].[HearingAmplifAvgDailyUseDescriptor] (
    [HearingAmplifAvgDailyUseDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HearingAmplifAvgDailyUseDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HearingAmplifAvgDailyUseDescriptorId] ASC
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

-- Table [tx].[HomelessStatusPriorYearDescriptor] --
CREATE TABLE [tx].[HomelessStatusPriorYearDescriptor] (
    [HomelessStatusPriorYearDescriptorId] [INT] NOT NULL,
    CONSTRAINT [HomelessStatusPriorYearDescriptor_PK] PRIMARY KEY CLUSTERED (
        [HomelessStatusPriorYearDescriptorId] ASC
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

-- Table [tx].[LangAcqServicesProvidedDescriptor] --
CREATE TABLE [tx].[LangAcqServicesProvidedDescriptor] (
    [LangAcqServicesProvidedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [LangAcqServicesProvidedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LangAcqServicesProvidedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[LocalEducationAgencyChildCareOperationNumber] --
CREATE TABLE [tx].[LocalEducationAgencyChildCareOperationNumber] (
    [ChildCareOperationNumber] [NVARCHAR](8) NOT NULL,
    [LocalEducationAgencyId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalEducationAgencyChildCareOperationNumber_PK] PRIMARY KEY CLUSTERED (
        [ChildCareOperationNumber] ASC,
        [LocalEducationAgencyId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[LocalEducationAgencyChildCareOperationNumber] ADD CONSTRAINT [LocalEducationAgencyChildCareOperationNumber_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[LocalEducationAgencyExtension] --
CREATE TABLE [tx].[LocalEducationAgencyExtension] (
    [LocalEducationAgencyId] [INT] NOT NULL,
    [TotalNumSchoolBoardRequests] [INT] NULL,
    [TotalCostSchoolBoardRequests] [INT] NULL,
    [FamilyEngagementPlanLink] [NVARCHAR](200) NULL,
    [ArmedServicesVocAptBatteryDescriptorId] [INT] NULL,
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
    [GiftedTalentedProgramDescriptorId] [INT] NOT NULL,
    [LocalEducationAgencyId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalEducationAgencyGiftedTalentedProgram_PK] PRIMARY KEY CLUSTERED (
        [GiftedTalentedProgramDescriptorId] ASC,
        [LocalEducationAgencyId] ASC
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

-- Table [tx].[NSLPTypeDescriptor] --
CREATE TABLE [tx].[NSLPTypeDescriptor] (
    [NSLPTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NSLPTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NSLPTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ObjectDescriptor] --
CREATE TABLE [tx].[ObjectDescriptor] (
    [ObjectDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ObjectDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ObjectDescriptorId] ASC
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

-- Table [tx].[ParentalPermissionLastDateOfEnrollmentDescriptor] --
CREATE TABLE [tx].[ParentalPermissionLastDateOfEnrollmentDescriptor] (
    [ParentalPermissionLastDateOfEnrollmentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ParentalPermissionLastDateOfEnrollmentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ParentalPermissionLastDateOfEnrollmentDescriptorId] ASC
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
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [FunctionDescriptorId] [INT] NOT NULL,
    [FundDescriptorId] [INT] NOT NULL,
    [ObjectDescriptorId] [INT] NOT NULL,
    [Organization] [INT] NOT NULL,
    [PayrollActivityDescriptorId] [INT] NOT NULL,
    [ProgramIntentDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [PayrollAmount] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PayrollExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [FunctionDescriptorId] ASC,
        [FundDescriptorId] ASC,
        [ObjectDescriptorId] ASC,
        [Organization] ASC,
        [PayrollActivityDescriptorId] ASC,
        [ProgramIntentDescriptorId] ASC,
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

-- Table [tx].[ProgramIntentDescriptor] --
CREATE TABLE [tx].[ProgramIntentDescriptor] (
    [ProgramIntentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProgramIntentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramIntentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[ProgramOfStudyDescriptor] --
CREATE TABLE [tx].[ProgramOfStudyDescriptor] (
    [ProgramOfStudyDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProgramOfStudyDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramOfStudyDescriptorId] ASC
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

-- Table [tx].[RestraintEventExtension] --
CREATE TABLE [tx].[RestraintEventExtension] (
    [RestraintEventIdentifier] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [RestraintStaffTypeDescriptorId] [INT] NULL,
    [NonMembershipDisciplineRestraintIndicator] [BIT] NULL,
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

-- Table [tx].[RoleIdDescriptor] --
CREATE TABLE [tx].[RoleIdDescriptor] (
    [RoleIdDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RoleIdDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RoleIdDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[SchoolCampusEnrollmentTypeSet] --
CREATE TABLE [tx].[SchoolCampusEnrollmentTypeSet] (
    [BeginDate] [DATE] NOT NULL,
    [CampusEnrollmentTypeDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolCampusEnrollmentTypeSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [CampusEnrollmentTypeDescriptorId] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolCampusEnrollmentTypeSet] ADD CONSTRAINT [SchoolCampusEnrollmentTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolCharterWaitlistSet] --
CREATE TABLE [tx].[SchoolCharterWaitlistSet] (
    [BeginDate] [DATE] NOT NULL,
    [CharterAdmissionWaitlist] [BIT] NOT NULL,
    [CharterEducationalEnrollmentCapacity] [INT] NOT NULL,
    [NumberCharterStudentsEnrolled] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolCharterWaitlistSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [CharterAdmissionWaitlist] ASC,
        [CharterEducationalEnrollmentCapacity] ASC,
        [NumberCharterStudentsEnrolled] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolCharterWaitlistSet] ADD CONSTRAINT [SchoolCharterWaitlistSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolELOSet] --
CREATE TABLE [tx].[SchoolELOSet] (
    [BeginDate] [DATE] NOT NULL,
    [ELOTypeDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolELOSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [ELOTypeDescriptorId] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolELOSet] ADD CONSTRAINT [SchoolELOSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolELOSetELOActivitySet] --
CREATE TABLE [tx].[SchoolELOSetELOActivitySet] (
    [BeginDate] [DATE] NOT NULL,
    [ELOActivityDescriptorId] [INT] NOT NULL,
    [ELOTypeDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [ELODaysScheduledPerYear] [INT] NOT NULL,
    [ELOMinutesScheduledPerDay] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolELOSetELOActivitySet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [ELOActivityDescriptorId] ASC,
        [ELOTypeDescriptorId] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolELOSetELOActivitySet] ADD CONSTRAINT [SchoolELOSetELOActivitySet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SchoolExtension] --
CREATE TABLE [tx].[SchoolExtension] (
    [SchoolId] [INT] NOT NULL,
    [PKFullDayWaiver] [BIT] NULL,
    [AdditionalDaysProgram] [BIT] NULL,
    [NumberOfBullyingIncidents] [INT] NULL,
    [NumberOfCyberbullyingIncidents] [INT] NULL,
    [ExpandedLearningOpportunity] [BIT] NULL,
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
    [BeginDate] [DATE] NOT NULL,
    [NSLPTypeDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolNSLPTypeSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [NSLPTypeDescriptorId] ASC,
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SchoolNSLPTypeSet] ADD CONSTRAINT [SchoolNSLPTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[SectionSet] --
CREATE TABLE [tx].[SectionSet] (
    [BeginDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [PopulationServedDescriptorId] [INT] NULL,
    [CourseSequenceDescriptorId] [INT] NULL,
    [NonCampusBasedInstructionDescriptorId] [INT] NULL,
    [PKCurriculaDescriptorId] [INT] NULL,
    [HighQualityPKProgram] [BIT] NULL,
    [PKStudentInstructionDescriptorId] [INT] NULL,
    [PKSchoolTypeDescriptorId] [INT] NULL,
    [PKProgramEvaluationTypeDescriptorId] [INT] NULL,
    [CTEHours] [DATE] NULL,
    [ClassTypeDescriptorId] [INT] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SectionSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[SectionSet] ADD CONSTRAINT [SectionSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[ServiceIdDescriptor] --
CREATE TABLE [tx].[ServiceIdDescriptor] (
    [ServiceIdDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ServiceIdDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ServiceIdDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [tx].[SharedServiceArrangementExt] --
CREATE TABLE [tx].[SharedServiceArrangementExt] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [FundDescriptorId] [INT] NOT NULL,
    [SSAMemberDistrictID] [INT] NOT NULL,
    [SSATypeDescriptorId] [INT] NOT NULL,
    [ActualAmount] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SharedServiceArrangementExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [FundDescriptorId] ASC,
        [SSAMemberDistrictID] ASC,
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

-- Table [tx].[SSAOrgAssociationExt] --
CREATE TABLE [tx].[SSAOrgAssociationExt] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FiscalAgentDistrictID] [INT] NOT NULL,
    [SSATypeDescriptorId] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SSAOrgAssociationExt_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FiscalAgentDistrictID] ASC,
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
    [StaffServiceDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [PopulationServedDescriptorId] [INT] NULL,
    [MonthlyMinutes] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationAssignmentAssociationStaffServiceSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StaffClassificationDescriptorId] ASC,
        [StaffServiceDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociationStaffServiceSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] --
CREATE TABLE [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] (
    [AuxiliaryRoleIdDescriptorId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet_PK] PRIMARY KEY CLUSTERED (
        [AuxiliaryRoleIdDescriptorId] ASC,
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
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
    [PercentDayEmployed] [INT] NULL,
    [NumberDaysEmployed] [INT] NULL,
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
    [CreditableYearOfService] [BIT] NULL,
    [YearsExperienceInDistrict] [INT] NULL,
    [StaffID] [NVARCHAR](9) NOT NULL,
    [PKTeacherRequirementDescriptorId] [INT] NULL,
    [TotalYearsProfExperience] [INT] NULL,
    [TotalYearsPriorTeachingExperience] [INT] NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [AdditionalDaysProgramTeacher] [BIT] NULL,
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
    [BeginDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [ParaprofessionalCertification] [BIT] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffParaprofessionalCertificationSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
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
    [NumberOfStudentInClass] [INT] NULL,
    [MonthlyMinutes] [INT] NULL,
    [NumberDaysTaughtWeek1] [INT] NULL,
    [NumberDaysTaughtWeek2] [INT] NULL,
    [NumberDaysTaughtWeek3] [INT] NULL,
    [NumberDaysTaughtWeek4] [INT] NULL,
    [NumberMinutesTaughtWeek1] [INT] NULL,
    [NumberMinutesTaughtWeek2] [INT] NULL,
    [NumberMinutesTaughtWeek3] [INT] NULL,
    [NumberMinutesTaughtWeek4] [INT] NULL,
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

-- Table [tx].[StaffTeacherIncentiveAllotmentDesignationCode] --
CREATE TABLE [tx].[StaffTeacherIncentiveAllotmentDesignationCode] (
    [StaffUSI] [INT] NOT NULL,
    [TeacherIncentiveAllotmentDesignationCodeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffTeacherIncentiveAllotmentDesignationCode_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC,
        [TeacherIncentiveAllotmentDesignationCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffTeacherIncentiveAllotmentDesignationCode] ADD CONSTRAINT [StaffTeacherIncentiveAllotmentDesignationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
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
    [BeginDate] [DATE] NOT NULL,
    [StaffTypeDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffTypeSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [StaffTypeDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StaffTypeSet] ADD CONSTRAINT [StaffTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentAcademicRecordEndorsementPursuing] --
CREATE TABLE [tx].[StudentAcademicRecordEndorsementPursuing] (
    [EducationOrganizationId] [INT] NOT NULL,
    [EndorsementPursuingDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAcademicRecordEndorsementPursuing_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EndorsementPursuingDescriptorId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC
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
    [AssociateDegreeIndicator] [BIT] NULL,
    [IndividualGraduationCommitteeReview] [BIT] NULL,
    [FHSPParticipant] [BIT] NULL,
    [FHSPDistingLevelParticipant] [BIT] NULL,
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
    [BeginDate] [DATE] NOT NULL,
    [DateCertEarned] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [IBCVendorDescriptorId] [INT] NOT NULL,
    [PostSecondaryCertificationLicensureDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [IBCExamFeeAmount] [DECIMAL](5, 2) NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAcademicRecordIndustryBasedCertificationSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [DateCertEarned] ASC,
        [EducationOrganizationId] ASC,
        [IBCVendorDescriptorId] ASC,
        [PostSecondaryCertificationLicensureDescriptorId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentAcademicRecordIndustryBasedCertificationSet] ADD CONSTRAINT [StudentAcademicRecordIndustryBasedCertificationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentApplication] --
CREATE TABLE [tx].[StudentApplication] (
    [ApplicationIdentifier] [NVARCHAR](10) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUID] [NVARCHAR](10) NULL,
    [SexDescriptorId] [INT] NOT NULL,
    [EntryGradeLevelDescriptorId] [INT] NOT NULL,
    [ApplicationDate] [DATE] NOT NULL,
    [ApplicationTypeDescriptorId] [INT] NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [BirthDate] [DATE] NOT NULL,
    [BirthCity] [NVARCHAR](30) NULL,
    [BirthStateAbbreviationDescriptorId] [INT] NULL,
    [BirthInternationalProvince] [NVARCHAR](150) NULL,
    [BirthCountryDescriptorId] [INT] NULL,
    [DateEnteredUS] [DATE] NULL,
    [MultipleBirthStatus] [BIT] NULL,
    [BirthSexDescriptorId] [INT] NULL,
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
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentApplicationPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [ApplicationIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC,
        [SchoolYear] ASC
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
    [BeginDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [StudentCensusBlockGroup] [NVARCHAR](12) NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCensusBlockGroupSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentCensusBlockGroupSet] ADD CONSTRAINT [StudentCensusBlockGroupSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentCrisisEventSet] --
CREATE TABLE [tx].[StudentCrisisEventSet] (
    [BeginDate] [DATE] NOT NULL,
    [CrisisEventDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCrisisEventSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [CrisisEventDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentCrisisEventSet] ADD CONSTRAINT [StudentCrisisEventSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] (
    [BeginDate] [DATE] NOT NULL,
    [DyslexiaRiskDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaRiskSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [DyslexiaRiskDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaRiskSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] (
    [BeginDate] [DATE] NOT NULL,
    [DyslexiaServicesDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaServicesSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [DyslexiaServicesDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationDyslexiaServicesSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] (
    [BeginDate] [DATE] NOT NULL,
    [EarlyReadingIndicatorDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationEarlyReadingIndicatorSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EarlyReadingIndicatorDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationEarlyReadingIndicatorSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] (
    [BeginDate] [DATE] NOT NULL,
    [EconomicDisadvantageDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationEconomicDisadvantageSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EconomicDisadvantageDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationEconomicDisadvantageSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [EmergentBilingualIndicatorDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationEmergentBilingualSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [EmergentBilingualIndicatorDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationEmergentBilingualSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FosterCareTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationFosterCareTypeSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [FosterCareTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationFosterCareTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [HomelessStatusDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationHomelessStatusSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [HomelessStatusDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationHomelessStatusSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationLanguageSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationLanguageSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationLanguageSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [LanguageDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationLanguageSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguageSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationLanguageSetLanguageUse] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationLanguageSetLanguageUse] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [LanguageUseDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationLanguageSetLanguageUse_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [LanguageDescriptorId] ASC,
        [LanguageUseDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationLanguageSetLanguageUse] ADD CONSTRAINT [StudentEducationOrganizationAssociationLanguageSetLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [MilitaryConnectedStudentDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationMilitaryConnectedStudentSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [MilitaryConnectedStudentDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationMilitaryConnectedStudentSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [OrderOfPKFundingSource] [INT] NOT NULL,
    [PKFundingSourceDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationPKFundingSourceSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [OrderOfPKFundingSource] ASC,
        [PKFundingSourceDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationPKFundingSourceSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [PKProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationPKProgramTypeSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [PKProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationPKProgramTypeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationTruancySet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationTruancySet] (
    [DateMet] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TruancyDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationTruancySet_PK] PRIMARY KEY CLUSTERED (
        [DateMet] ASC,
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [TruancyDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationTruancySet] ADD CONSTRAINT [StudentEducationOrganizationAssociationTruancySet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [UnaccompaniedYouthDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationUnaccompaniedYouthSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [UnaccompaniedYouthDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationUnaccompaniedYouthSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] --
CREATE TABLE [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [UnschooledAsyleeRefugeeDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [UnschooledAsyleeRefugeeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] ADD CONSTRAINT [StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentExtension] --
CREATE TABLE [tx].[StudentExtension] (
    [StudentUSI] [INT] NOT NULL,
    [LocalStudentID] [NVARCHAR](9) NULL,
    [StudentID] [NVARCHAR](9) NOT NULL,
    [GenerationCodeDescriptorId] [INT] NULL,
    [AsOfStatusLastFridayOctoberDescriptorId] [INT] NULL,
    [AsOfStatusLastDayEnrollmentDescriptorId] [INT] NULL,
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
    [ParentalPermissionDescriptorId] [INT] NOT NULL,
    [ParentPermissionSetBeginDate] [DATE] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ParentPermissionSetEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentLanguageInstructionProgramAssociationParentalPermissionSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ParentalPermissionDescriptorId] ASC,
        [ParentPermissionSetBeginDate] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationParentalPermissionSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSchoolAssociationExtension] --
CREATE TABLE [tx].[StudentSchoolAssociationExtension] (
    [EntryDate] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ADAEligibilityDescriptorId] [INT] NULL,
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
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilitySetBeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EligibilityDateDisabilities] [DATE] NULL,
    [DisabilitySetEndDate] [DATE] NULL,
    [OrderOfDisability] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilitySet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [DisabilityDescriptorId] ASC,
        [DisabilitySetBeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilitySet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationESYProgramAssociation] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationESYProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TotalESYContactHoursInstructionalSetting] [DECIMAL](4, 1) NOT NULL,
    [OrderOfSpecialEducationSetting] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationESYProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [TotalESYContactHoursInstructionalSetting] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationESYProgramAssociation] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationESYProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
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
    [HearingAmplificationTypeDescriptorId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [HearingAmplificationAccessDescriptorId] [INT] NULL,
    [HearingAmplifAvgDailyUseDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationHearingAmplification_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [HearingAmplificationTypeDescriptorId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationHearingAmplification_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [LangAcqServicesProvidedDescriptorId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [FrequencyOfServicesDescriptorId] [INT] NOT NULL,
    [HoursSpentReceivingServicesDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationLanguageAcquisition_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [LangAcqServicesProvidedDescriptorId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationLanguageAcquisition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationSpecialEducationSettingSet] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationSpecialEducationSettingSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [OrderOfSpecialEducationSetting] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [SettingBeginDate] [DATE] NOT NULL,
    [SpecialEducationSettingDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SettingEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationSettingSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [OrderOfSpecialEducationSetting] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [SettingBeginDate] ASC,
        [SpecialEducationSettingDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationSpecialEducationSettingSet] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationSettingSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [DateEnteredRF] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [ResidentialFacilityID] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DateExitedRF] [DATE] NULL,
    [CampusIDOfEnrollment] [INT] NOT NULL,
    [AttendanceZoneCampus] [INT] NOT NULL,
    [EducatedAtResidentialFacility] [BIT] NOT NULL,
    [SurrogateParentAssigned] [BIT] NOT NULL,
    [NumberOtherStudentsAssignedSameSurrogateParent] [INT] NULL,
    [ResidentialFacilityStudentSchoolDayLength] [INT] NOT NULL,
    [CampusIDOfEnrollmentSchoolDayLength] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [DateEnteredRF] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [ResidentialFacilityID] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] --
CREATE TABLE [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramBeginDate] [DATE] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [MedicallyFragile] [BIT] NULL,
    [MultiplyDisabled] [BIT] NULL,
    [LEAOfRDSPDService] [INT] NULL,
    [ChildCountFundingDescriptorId] [INT] NULL,
    [PPCDServiceLocationDescriptorId] [INT] NULL,
    [ProgramEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramBeginDate] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
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
    [EligibilityEvaluationDate] [DATE] NULL,
    [EvaluationDelayDays] [INT] NULL,
    [EvaluationDelayReasonDescriptorId] [INT] NULL,
    [EligibilityDeterminationDate] [DATE] NULL,
    [IDEAIndicator] [BIT] NULL,
    [OriginalECIServicesDate] [DATE] NULL,
    [TransitionNotificationDate] [DATE] NULL,
    [TransitionConferenceDate] [DATE] NULL,
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
    [StudentTitleIPartAProgramAssociationSetBeginDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [TitleIPartAParticipantDescriptorId] [INT] NOT NULL,
    [StudentTitleIPartAProgramAssociationSetEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentTitleIPartAProgramAssociationSet_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentTitleIPartAProgramAssociationSetBeginDate] ASC,
        [StudentUSI] ASC,
        [TitleIPartAParticipantDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tx].[StudentTitleIPartAProgramAssociationSet] ADD CONSTRAINT [StudentTitleIPartAProgramAssociationSet_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [tx].[TeacherIncentiveAllotmentDesignationCodeDescriptor] --
CREATE TABLE [tx].[TeacherIncentiveAllotmentDesignationCodeDescriptor] (
    [TeacherIncentiveAllotmentDesignationCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TeacherIncentiveAllotmentDesignationCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherIncentiveAllotmentDesignationCodeDescriptorId] ASC
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

-- Table [tx].[UnaccompaniedYouthPriorYearDescriptor] --
CREATE TABLE [tx].[UnaccompaniedYouthPriorYearDescriptor] (
    [UnaccompaniedYouthPriorYearDescriptorId] [INT] NOT NULL,
    CONSTRAINT [UnaccompaniedYouthPriorYearDescriptor_PK] PRIMARY KEY CLUSTERED (
        [UnaccompaniedYouthPriorYearDescriptorId] ASC
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

-- Table [tx].[UnschooledAsyleeRefugeePriorYearDescriptor] --
CREATE TABLE [tx].[UnschooledAsyleeRefugeePriorYearDescriptor] (
    [UnschooledAsyleeRefugeePriorYearDescriptorId] [INT] NOT NULL,
    CONSTRAINT [UnschooledAsyleeRefugeePriorYearDescriptor_PK] PRIMARY KEY CLUSTERED (
        [UnschooledAsyleeRefugeePriorYearDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

