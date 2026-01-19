-- Table [ks].[AssessmentRequestDescriptor] --
CREATE TABLE [ks].[AssessmentRequestDescriptor] (
    [AssessmentRequestDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AssessmentRequestDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AssessmentRequestDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[CollegeCareerTypeDescriptor] --
CREATE TABLE [ks].[CollegeCareerTypeDescriptor] (
    [CollegeCareerTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CollegeCareerTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CollegeCareerTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[CourseDeliveryTypeDescriptor] --
CREATE TABLE [ks].[CourseDeliveryTypeDescriptor] (
    [CourseDeliveryTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CourseDeliveryTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CourseDeliveryTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[CourseOfferingExtension] --
CREATE TABLE [ks].[CourseOfferingExtension] (
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [CollegeCareerTypeDescriptorId] [INT] NULL,
    [CourseCredits] [DECIMAL](5, 2) NULL,
    [CourseDeliveryTypeDescriptorId] [INT] NULL,
    [CourseProgramTypeDescriptorId] [INT] NULL,
    [CourseSequence] [INT] NULL,
    [CourseTotalSequence] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CourseOfferingExtension_PK] PRIMARY KEY CLUSTERED (
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[CourseOfferingExtension] ADD CONSTRAINT [CourseOfferingExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[CourseProgramTypeDescriptor] --
CREATE TABLE [ks].[CourseProgramTypeDescriptor] (
    [CourseProgramTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CourseProgramTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CourseProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[CourseStatusDescriptor] --
CREATE TABLE [ks].[CourseStatusDescriptor] (
    [CourseStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CourseStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CourseStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[CTECertificationEarnedDescriptor] --
CREATE TABLE [ks].[CTECertificationEarnedDescriptor] (
    [CTECertificationEarnedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CTECertificationEarnedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CTECertificationEarnedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[FundingSourceDescriptor] --
CREATE TABLE [ks].[FundingSourceDescriptor] (
    [FundingSourceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FundingSourceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FundingSourceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[GradeExtension] --
CREATE TABLE [ks].[GradeExtension] (
    [BeginDate] [DATE] NOT NULL,
    [GradeTypeDescriptorId] [INT] NOT NULL,
    [GradingPeriodDescriptorId] [INT] NOT NULL,
    [GradingPeriodSequence] [INT] NOT NULL,
    [GradingPeriodSchoolYear] [SMALLINT] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CollegeCreditEarned] [DECIMAL](4, 2) NULL,
    [FirstInstructionalDate] [DATE] NULL,
    [InstructionalMinutesCompleted] [DECIMAL](7, 2) NULL,
    [LastInstructionalDate] [DATE] NULL,
    [WorkBasedLearningDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [GradeExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [GradeTypeDescriptorId] ASC,
        [GradingPeriodDescriptorId] ASC,
        [GradingPeriodSequence] ASC,
        [GradingPeriodSchoolYear] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[GradeExtension] ADD CONSTRAINT [GradeExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[ImmigrantStudentDescriptor] --
CREATE TABLE [ks].[ImmigrantStudentDescriptor] (
    [ImmigrantStudentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ImmigrantStudentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ImmigrantStudentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[LanguageInstructionProgramTypeDescriptor] --
CREATE TABLE [ks].[LanguageInstructionProgramTypeDescriptor] (
    [LanguageInstructionProgramTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [LanguageInstructionProgramTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LanguageInstructionProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[MilitaryConnectedStudentDescriptor] --
CREATE TABLE [ks].[MilitaryConnectedStudentDescriptor] (
    [MilitaryConnectedStudentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [MilitaryConnectedStudentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [MilitaryConnectedStudentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[NeglectedDelinquentStudentDescriptor] --
CREATE TABLE [ks].[NeglectedDelinquentStudentDescriptor] (
    [NeglectedDelinquentStudentDescriptorId] [INT] NOT NULL,
    CONSTRAINT [NeglectedDelinquentStudentDescriptor_PK] PRIMARY KEY CLUSTERED (
        [NeglectedDelinquentStudentDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[PostGraduationPlansDescriptor] --
CREATE TABLE [ks].[PostGraduationPlansDescriptor] (
    [PostGraduationPlansDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PostGraduationPlansDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PostGraduationPlansDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[QualifiedFor504Descriptor] --
CREATE TABLE [ks].[QualifiedFor504Descriptor] (
    [QualifiedFor504DescriptorId] [INT] NOT NULL,
    CONSTRAINT [QualifiedFor504Descriptor_PK] PRIMARY KEY CLUSTERED (
        [QualifiedFor504DescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[SchoolExtension] --
CREATE TABLE [ks].[SchoolExtension] (
    [SchoolId] [INT] NOT NULL,
    [DateClosed] [DATE] NULL,
    [DateOpened] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [SchoolExtension_PK] PRIMARY KEY CLUSTERED (
        [SchoolId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[SchoolExtension] ADD CONSTRAINT [SchoolExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[SectionEducator] --
CREATE TABLE [ks].[SectionEducator] (
    [EducatorElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [EducatorFirstName] [NVARCHAR](75) NULL,
    [EducatorLastSurname] [NVARCHAR](75) NULL,
    [EducatorMiddleName] [NVARCHAR](75) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionEducator_PK] PRIMARY KEY CLUSTERED (
        [EducatorElectronicMailAddress] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[SectionEducator] ADD CONSTRAINT [SectionEducator_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [ks].[SectionEducator] ADD CONSTRAINT [SectionEducator_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [ks].[SectionEducator] ADD CONSTRAINT [SectionEducator_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [ks].[SnackPack] --
CREATE TABLE [ks].[SnackPack] (
    [StateStudentId] [NVARCHAR](32) NOT NULL,
    [AccountabilitySchool] [NVARCHAR](75) NULL,
    [CumulativeDaysAttended] [DECIMAL](4, 1) NULL,
    [ESOLBilingualProgramEntryDate] [NVARCHAR](10) NULL,
    [ESOLBilingualProgramParticipationCode] [NVARCHAR](75) NULL,
    [FirstLanguage] [NVARCHAR](75) NULL,
    [GiftedStudentIndicator] [NVARCHAR](10) NULL,
    [GradeLevel] [NVARCHAR](75) NULL,
    [Homeless] [NVARCHAR](10) NULL,
    [Immigrant] [NVARCHAR](10) NULL,
    [KansasAtRiskProgramParticipation] [NVARCHAR](10) NULL,
    [LunchProgramEligibilityAtRiskFunding] [NVARCHAR](75) NULL,
    [MostRecentSchool] [NVARCHAR](75) NULL,
    [NeglectedDelinquentStudent] [NVARCHAR](10) NULL,
    [PrimaryDisabilityIndicator] [NVARCHAR](10) NULL,
    [Qualifiedfor504] [NVARCHAR](10) NULL,
    [ResidenceDistrict] [NVARCHAR](75) NULL,
    [SchoolEntryDate] [DATE] NULL,
    [SchoolExitWithdrawalDate] [DATE] NULL,
    [TitleIParticipation] [NVARCHAR](10) NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SnackPack_PK] PRIMARY KEY CLUSTERED (
        [StateStudentId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[SnackPack] ADD CONSTRAINT [SnackPack_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [ks].[SnackPack] ADD CONSTRAINT [SnackPack_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [ks].[SnackPack] ADD CONSTRAINT [SnackPack_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [ks].[StudentAssessmentExtension] --
CREATE TABLE [ks].[StudentAssessmentExtension] (
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [Namespace] [NVARCHAR](255) NOT NULL,
    [StudentAssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AssessmentRequestDescriptorId] [INT] NULL,
    [ProctorStaffUSI] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentAssessmentExtension_PK] PRIMARY KEY CLUSTERED (
        [AssessmentIdentifier] ASC,
        [Namespace] ASC,
        [StudentAssessmentIdentifier] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[StudentAssessmentExtension] ADD CONSTRAINT [StudentAssessmentExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[StudentEducationOrganizationAssociationCTE] --
CREATE TABLE [ks].[StudentEducationOrganizationAssociationCTE] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CertificationTermDescriptorId] [INT] NOT NULL,
    [CTECertificationDateEarned] [DATE] NOT NULL,
    [CTECertificationEarnedDescriptorId] [INT] NOT NULL,
    [GraduationYear] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationCTE_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC,
        [CertificationTermDescriptorId] ASC,
        [CTECertificationDateEarned] ASC,
        [CTECertificationEarnedDescriptorId] ASC,
        [GraduationYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[StudentEducationOrganizationAssociationCTE] ADD CONSTRAINT [StudentEducationOrganizationAssociationCTE_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[StudentEducationOrganizationAssociationExtension] --
CREATE TABLE [ks].[StudentEducationOrganizationAssociationExtension] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DistrictOfResidence] [NVARCHAR](10) NULL,
    [ImmigrantStudentDescriptorId] [INT] NULL,
    [MilitaryConnectedStudentDescriptorId] [INT] NULL,
    [NeglectedDelinquentStudentDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[StudentEducationOrganizationAssociationExtension] ADD CONSTRAINT [StudentEducationOrganizationAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[StudentEducationOrganizationAssociationTransportation] --
CREATE TABLE [ks].[StudentEducationOrganizationAssociationTransportation] (
    [EducationOrganizationId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [MilesTransported] [DECIMAL](3, 1) NULL,
    [NonResidentTransportation] [BIT] NULL,
    [TransportationFTE] [DECIMAL](2, 1) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentEducationOrganizationAssociationTransportation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[StudentEducationOrganizationAssociationTransportation] ADD CONSTRAINT [StudentEducationOrganizationAssociationTransportation_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[StudentKPATProgramAssociation] --
CREATE TABLE [ks].[StudentKPATProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    CONSTRAINT [StudentKPATProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[StudentKPPProgramAssociation] --
CREATE TABLE [ks].[StudentKPPProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    CONSTRAINT [StudentKPPProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [ks].[StudentLanguageInstructionProgramAssociationExtension] --
CREATE TABLE [ks].[StudentLanguageInstructionProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramEducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [FundingSourceDescriptorId] [INT] NULL,
    [LanguageInstructionProgramTypeDescriptorId] [INT] NULL,
    [USInitialSchoolEntryDate] [DATE] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentLanguageInstructionProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[StudentLanguageInstructionProgramAssociationExtension] ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[StudentSchoolAssociationExtension] --
CREATE TABLE [ks].[StudentSchoolAssociationExtension] (
    [EntryDate] [DATE] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AttendanceDays] [DECIMAL](4, 1) NULL,
    [CreditsEarned] [DECIMAL](9, 3) NULL,
    [CreditsRequiredToGraduate] [DECIMAL](9, 3) NULL,
    [CTEContactMinutes] [DECIMAL](3, 0) NULL,
    [FirstInstructionalDate] [DATE] NULL,
    [IndividualPlanOfStudy] [BIT] NULL,
    [LocalEducationAgencyEntryDate] [DATE] NOT NULL,
    [MembershipDays] [DECIMAL](4, 1) NULL,
    [MinutesEnrolled] [INT] NULL,
    [PostGraduationPlansDescriptorId] [INT] NULL,
    [QualifiedFor504DescriptorId] [INT] NULL,
    [StateEntryDate] [DATE] NOT NULL,
    [UnweightedGradePointAverage] [DECIMAL](3, 2) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ks].[StudentSchoolAssociationExtension] ADD CONSTRAINT [StudentSchoolAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[StudentSectionAssociationExtension] --
CREATE TABLE [ks].[StudentSectionAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CourseStatusDescriptorId] [INT] NULL,
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
ALTER TABLE [ks].[StudentSectionAssociationExtension] ADD CONSTRAINT [StudentSectionAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [ks].[WorkBasedLearningDescriptor] --
CREATE TABLE [ks].[WorkBasedLearningDescriptor] (
    [WorkBasedLearningDescriptorId] [INT] NOT NULL,
    CONSTRAINT [WorkBasedLearningDescriptor_PK] PRIMARY KEY CLUSTERED (
        [WorkBasedLearningDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

