-- Table [idoe].[AccreditationDescriptor] --
CREATE TABLE [idoe].[AccreditationDescriptor] (
    [AccreditationDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AccreditationDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AccreditationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[ADMCodeDescriptor] --
CREATE TABLE [idoe].[ADMCodeDescriptor] (
    [ADMCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ADMCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ADMCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[AlternativeEducationEligibilityReasonDescriptor] --
CREATE TABLE [idoe].[AlternativeEducationEligibilityReasonDescriptor] (
    [AlternativeEducationEligibilityReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AlternativeEducationEligibilityReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AlternativeEducationEligibilityReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[ArrestReasonDescriptor] --
CREATE TABLE [idoe].[ArrestReasonDescriptor] (
    [ArrestReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ArrestReasonDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ArrestReasonDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[AssessmentAccommodation] --
CREATE TABLE [idoe].[AssessmentAccommodation] (
    [AccommodationDescriptorId] [INT] NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AssessmentAccommodation_PK] PRIMARY KEY CLUSTERED (
        [AccommodationDescriptorId] ASC,
        [AssessmentIdentifier] ASC,
        [Namespace] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT [AssessmentAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT [AssessmentAccommodation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT [AssessmentAccommodation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[CalendarDateExtension] --
CREATE TABLE [idoe].[CalendarDateExtension] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [Date] [DATE] NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [EventDuration] [DECIMAL](3, 2) NULL,
    [EventMinutes] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CalendarDateExtension_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [Date] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[CalendarDateExtension] ADD CONSTRAINT [CalendarDateExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[CalendarExtension] --
CREATE TABLE [idoe].[CalendarExtension] (
    [CalendarCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [InstructionalTimeInMinutesIndicator] [BIT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CalendarExtension_PK] PRIMARY KEY CLUSTERED (
        [CalendarCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[CalendarExtension] ADD CONSTRAINT [CalendarExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[CircumstancesRelevantToTimelineDescriptor] --
CREATE TABLE [idoe].[CircumstancesRelevantToTimelineDescriptor] (
    [CircumstancesRelevantToTimelineDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CircumstancesRelevantToTimelineDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CircumstancesRelevantToTimelineDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[CriminalGangRelatedEventDescriptor] --
CREATE TABLE [idoe].[CriminalGangRelatedEventDescriptor] (
    [CriminalGangRelatedEventDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CriminalGangRelatedEventDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CriminalGangRelatedEventDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[DisciplineActionExtension] --
CREATE TABLE [idoe].[DisciplineActionExtension] (
    [DisciplineActionIdentifier] [NVARCHAR](36) NOT NULL,
    [DisciplineDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ArrestReasonDescriptorId] [INT] NULL,
    [DisciplineActionServiceDescriptorId] [INT] NULL,
    [InterimAlternativeEducationSetting] [BIT] NULL,
    [StudentArrestDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineActionExtension_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionIdentifier] ASC,
        [DisciplineDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[DisciplineActionExtension] ADD CONSTRAINT [DisciplineActionExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[DisciplineActionServiceDescriptor] --
CREATE TABLE [idoe].[DisciplineActionServiceDescriptor] (
    [DisciplineActionServiceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [DisciplineActionServiceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[EducationOrganizationOtherPersonnel] --
CREATE TABLE [idoe].[EducationOrganizationOtherPersonnel] (
    [LocalEducationAgencyId] [BIGINT] NOT NULL,
    [OtherPersonnelCategoryDescriptorId] [INT] NOT NULL,
    [OtherPersonnelTitleDescriptorId] [INT] NOT NULL,
    [FullTimeEquivalency] [DECIMAL](9, 4) NULL,
    [OtherPersonnelCount] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationOtherPersonnel_PK] PRIMARY KEY CLUSTERED (
        [LocalEducationAgencyId] ASC,
        [OtherPersonnelCategoryDescriptorId] ASC,
        [OtherPersonnelTitleDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT [EducationOrganizationOtherPersonnel_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT [EducationOrganizationOtherPersonnel_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT [EducationOrganizationOtherPersonnel_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[ELLInstrumentUsedDescriptor] --
CREATE TABLE [idoe].[ELLInstrumentUsedDescriptor] (
    [ELLInstrumentUsedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ELLInstrumentUsedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ELLInstrumentUsedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[LocalAccountExtension] --
CREATE TABLE [idoe].[LocalAccountExtension] (
    [AccountIdentifier] [NVARCHAR](50) NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [FunctionCode] [NVARCHAR](16) NULL,
    [FundCode] [NVARCHAR](16) NULL,
    [ObjectCode] [NVARCHAR](16) NULL,
    [OperationalUnitCode] [NVARCHAR](16) NULL,
    [SectionCode] [NVARCHAR](16) NOT NULL,
    [SubCategoryCode] [NVARCHAR](16) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [LocalAccountExtension_PK] PRIMARY KEY CLUSTERED (
        [AccountIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[LocalAccountExtension] ADD CONSTRAINT [LocalAccountExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[LocalCapitalizedEquipment] --
CREATE TABLE [idoe].[LocalCapitalizedEquipment] (
    [AccountIdentifier] [NVARCHAR](50) NOT NULL,
    [AsOfDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [RecordIdentifier] [NVARCHAR](100) NOT NULL,
    [AcquisitionDate] [DATE] NULL,
    [CapitalizedThreshold] [MONEY] NOT NULL,
    [EquipmentDescription] [NVARCHAR](100) NULL,
    [EquipmentType] [NVARCHAR](100) NOT NULL,
    [FinancialCollectionDescriptorId] [INT] NOT NULL,
    [PaymentAmount] [MONEY] NOT NULL,
    [PerUnitCost] [MONEY] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [LocalCapitalizedEquipment_PK] PRIMARY KEY CLUSTERED (
        [AccountIdentifier] ASC,
        [AsOfDate] ASC,
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [RecordIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[LocalCapitalizedEquipment] ADD CONSTRAINT [LocalCapitalizedEquipment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[LocalCapitalizedEquipment] ADD CONSTRAINT [LocalCapitalizedEquipment_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[LocalCapitalizedEquipment] ADD CONSTRAINT [LocalCapitalizedEquipment_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[LocalSubaward] --
CREATE TABLE [idoe].[LocalSubaward] (
    [AccountIdentifier] [NVARCHAR](50) NOT NULL,
    [AsOfDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [RecordIdentifier] [NVARCHAR](100) NOT NULL,
    [ContractNumberOfYears] [INT] NOT NULL,
    [DepartmentName] [NVARCHAR](60) NOT NULL,
    [Excess50k] [MONEY] NOT NULL,
    [ExpenditureAmount] [MONEY] NOT NULL,
    [FinancialCollectionDescriptorId] [INT] NOT NULL,
    [First50k] [MONEY] NOT NULL,
    [SubawardAmount] [MONEY] NOT NULL,
    [VendorOrganizationName] [NVARCHAR](100) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [LocalSubaward_PK] PRIMARY KEY CLUSTERED (
        [AccountIdentifier] ASC,
        [AsOfDate] ASC,
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [RecordIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[LocalSubaward] ADD CONSTRAINT [LocalSubaward_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[LocalSubaward] ADD CONSTRAINT [LocalSubaward_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[LocalSubaward] ADD CONSTRAINT [LocalSubaward_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[LocalUnusedLeavePayment] --
CREATE TABLE [idoe].[LocalUnusedLeavePayment] (
    [AccountIdentifier] [NVARCHAR](50) NOT NULL,
    [AsOfDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [RecordIdentifier] [NVARCHAR](100) NOT NULL,
    [DirectUnusedLeavePaymentAmount] [MONEY] NOT NULL,
    [EmployeeName] [NVARCHAR](80) NOT NULL,
    [FinancialCollectionDescriptorId] [INT] NOT NULL,
    [IndirectUnusedLeavePaymentAmount] [MONEY] NOT NULL,
    [JobTitle] [NVARCHAR](100) NULL,
    [PaymentDate] [DATE] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [LocalUnusedLeavePayment_PK] PRIMARY KEY CLUSTERED (
        [AccountIdentifier] ASC,
        [AsOfDate] ASC,
        [EducationOrganizationId] ASC,
        [FiscalYear] ASC,
        [RecordIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[LocalUnusedLeavePayment] ADD CONSTRAINT [LocalUnusedLeavePayment_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[LocalUnusedLeavePayment] ADD CONSTRAINT [LocalUnusedLeavePayment_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[LocalUnusedLeavePayment] ADD CONSTRAINT [LocalUnusedLeavePayment_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[OtherPersonnelCategoryDescriptor] --
CREATE TABLE [idoe].[OtherPersonnelCategoryDescriptor] (
    [OtherPersonnelCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [OtherPersonnelCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OtherPersonnelCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[OtherPersonnelTitleDescriptor] --
CREATE TABLE [idoe].[OtherPersonnelTitleDescriptor] (
    [OtherPersonnelTitleDescriptorId] [INT] NOT NULL,
    CONSTRAINT [OtherPersonnelTitleDescriptor_PK] PRIMARY KEY CLUSTERED (
        [OtherPersonnelTitleDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[ProgramMeetingTimeDescriptor] --
CREATE TABLE [idoe].[ProgramMeetingTimeDescriptor] (
    [ProgramMeetingTimeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProgramMeetingTimeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramMeetingTimeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[SchoolExtension] --
CREATE TABLE [idoe].[SchoolExtension] (
    [SchoolId] [BIGINT] NOT NULL,
    [AccreditationDescriptorId] [INT] NULL,
    [ChoiceIndicator] [BIT] NULL,
    [FreewayBeginDate] [DATE] NULL,
    [FreewayEndDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolExtension_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[SchoolExtension] ADD CONSTRAINT [SchoolExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[SectionDimension] --
CREATE TABLE [idoe].[SectionDimension] (
    [Code] [NVARCHAR](16) NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [CodeName] [NVARCHAR](100) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionDimension_PK] PRIMARY KEY CLUSTERED (
        [Code] ASC,
        [FiscalYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[SectionDimension] ADD CONSTRAINT [SectionDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[SectionDimension] ADD CONSTRAINT [SectionDimension_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[SectionDimension] ADD CONSTRAINT [SectionDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[StaffEducationOrganizationEmploymentAssociationContract] --
CREATE TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationContract] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [ContractDays] [INT] NOT NULL,
    [ContractSalary] [INT] NOT NULL,
    [PercentTitleISalary] [INT] NOT NULL,
    [SupplementalSalary] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationContract_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationContract] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationContract_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
CREATE TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [YearsOfPriorProfessionalExperience] [DECIMAL](5, 2) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentAccommodation] --
CREATE TABLE [idoe].[StudentAccommodation] (
    [AccommodationDescriptorId] [INT] NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentAccommodation_PK] PRIMARY KEY CLUSTERED (
        [AccommodationDescriptorId] ASC,
        [AssessmentIdentifier] ASC,
        [EducationOrganizationId] ASC,
        [Namespace] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentAccommodation] ADD CONSTRAINT [StudentAccommodation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[StudentAccommodation] ADD CONSTRAINT [StudentAccommodation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[StudentAccommodation] ADD CONSTRAINT [StudentAccommodation_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[StudentAlternativeEducationProgramAssociation] --
CREATE TABLE [idoe].[StudentAlternativeEducationProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AlternativeEducationEligibilityReasonDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StudentAlternativeEducationProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] --
CREATE TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ProgramMeetingTimeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAlternativeEducationProgramAssociationProgramMeetingTime_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [ProgramMeetingTimeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] ADD CONSTRAINT [StudentAlternativeEducationProgramAssociationProgramMeetingTime_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentArrestDescriptor] --
CREATE TABLE [idoe].[StudentArrestDescriptor] (
    [StudentArrestDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StudentArrestDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StudentArrestDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [idoe].[StudentContactAssociationExtension] --
CREATE TABLE [idoe].[StudentContactAssociationExtension] (
    [ContactUSI] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [LegalDesignee] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentContactAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [ContactUSI] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentContactAssociationExtension] ADD CONSTRAINT [StudentContactAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] --
CREATE TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] (
    [BehaviorDescriptorId] [INT] NOT NULL,
    [IncidentIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CriminalGangRelatedEventDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BehaviorDescriptorId] ASC,
        [IncidentIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentEducationOrganizationAssociationExtension] --
CREATE TABLE [idoe].[StudentEducationOrganizationAssociationExtension] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ELLInstrumentUsedDescriptorId] [INT] NULL,
    [USInitialSchoolEntry] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] --
CREATE TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ResponsibilityDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SchoolCorpEducationOrganizationId] [BIGINT] NOT NULL,
    [SchoolCorpResponsibilityDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ResponsibilityDescriptorId] ASC,
        [StudentUSI] ASC,
        [SchoolCorpEducationOrganizationId] ASC,
        [SchoolCorpResponsibilityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] --
CREATE TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ResponsibilityDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ADMCodeDescriptorId] [INT] NULL,
    [InstructionalDays] [INT] NULL,
    [InstructionalMinutes] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ResponsibilityDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationResponsibilityAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentSchoolGraduationPlan] --
CREATE TABLE [idoe].[StudentSchoolGraduationPlan] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [GraduationPlanTypeDescriptorId] [INT] NOT NULL,
    [GraduationSchoolYear] [SMALLINT] NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StudentSchoolGraduationPlan_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [GraduationPlanTypeDescriptorId] ASC,
        [GraduationSchoolYear] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentSchoolGraduationPlan] ADD CONSTRAINT [StudentSchoolGraduationPlan_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[StudentSchoolGraduationPlan] ADD CONSTRAINT [StudentSchoolGraduationPlan_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[StudentSchoolGraduationPlan] ADD CONSTRAINT [StudentSchoolGraduationPlan_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] --
CREATE TABLE [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [GraduationPlanTypeDescriptorId] [INT] NOT NULL,
    [GraduationSchoolYear] [SMALLINT] NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AlternativeEducationOrganizationId] [BIGINT] NOT NULL,
    [AlternativeGraduationPlanTypeDescriptorId] [INT] NOT NULL,
    [AlternativeGraduationSchoolYear] [SMALLINT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolGraduationPlanAlternativeGraduationPlan_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [GraduationPlanTypeDescriptorId] ASC,
        [GraduationSchoolYear] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC,
        [AlternativeEducationOrganizationId] ASC,
        [AlternativeGraduationPlanTypeDescriptorId] ASC,
        [AlternativeGraduationSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] ADD CONSTRAINT [StudentSchoolGraduationPlanAlternativeGraduationPlan_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[StudentSpecialEducationProgramAssociationExtension] --
CREATE TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CircumstancesRelevantToTimelineDescriptorId] [INT] NULL,
    [FirstStepsTransitionDate] [DATE] NULL,
    [ParentalConsentDate] [DATE] NULL,
    [TimelineComplianceDescriptorId] [INT] NULL,
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
ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [idoe].[SubCategoryDimension] --
CREATE TABLE [idoe].[SubCategoryDimension] (
    [Code] [NVARCHAR](16) NOT NULL,
    [FiscalYear] [INT] NOT NULL,
    [CodeName] [NVARCHAR](100) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SubCategoryDimension_PK] PRIMARY KEY CLUSTERED (
        [Code] ASC,
        [FiscalYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [idoe].[SubCategoryDimension] ADD CONSTRAINT [SubCategoryDimension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [idoe].[SubCategoryDimension] ADD CONSTRAINT [SubCategoryDimension_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [idoe].[SubCategoryDimension] ADD CONSTRAINT [SubCategoryDimension_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [idoe].[TimelineComplianceDescriptor] --
CREATE TABLE [idoe].[TimelineComplianceDescriptor] (
    [TimelineComplianceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TimelineComplianceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TimelineComplianceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

