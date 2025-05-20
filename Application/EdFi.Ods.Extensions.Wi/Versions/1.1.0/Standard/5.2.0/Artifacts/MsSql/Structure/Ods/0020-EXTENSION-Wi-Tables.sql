-- Table [wi].[CertificatedProgramStatusDescriptor] --
CREATE TABLE [wi].[CertificatedProgramStatusDescriptor] (
    [CertificatedProgramStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CertificatedProgramStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CertificatedProgramStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [wi].[CountDateNameDescriptor] --
CREATE TABLE [wi].[CountDateNameDescriptor] (
    [CountDateNameDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CountDateNameDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CountDateNameDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [wi].[CountDateReceivingServiceDescriptor] --
CREATE TABLE [wi].[CountDateReceivingServiceDescriptor] (
    [CountDateReceivingServiceDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CountDateReceivingServiceDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CountDateReceivingServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [wi].[CourseOfferingCareerPathway] --
CREATE TABLE [wi].[CourseOfferingCareerPathway] (
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [CareerPathwayDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [CourseOfferingCareerPathway_PK] PRIMARY KEY CLUSTERED (
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SessionName] ASC,
        [CareerPathwayDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[CourseOfferingCareerPathway] ADD CONSTRAINT [CourseOfferingCareerPathway_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[CteProgramAreaDescriptor] --
CREATE TABLE [wi].[CteProgramAreaDescriptor] (
    [CteProgramAreaDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CteProgramAreaDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CteProgramAreaDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [wi].[DisciplineActionExtension] --
CREATE TABLE [wi].[DisciplineActionExtension] (
    [DisciplineActionIdentifier] [NVARCHAR](36) NOT NULL,
    [DisciplineDate] [DATE] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [EarlyReinstatementCondition] [BIT] NULL,
    [ModifiedTermDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [DisciplineActionExtension_PK] PRIMARY KEY CLUSTERED (
        [DisciplineActionIdentifier] ASC,
        [DisciplineDate] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[DisciplineActionExtension] ADD CONSTRAINT [DisciplineActionExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[GradeExtension] --
CREATE TABLE [wi].[GradeExtension] (
    [BeginDate] [DATE] NOT NULL,
    [GradeTypeDescriptorId] [INT] NOT NULL,
    [GradingPeriodDescriptorId] [INT] NOT NULL,
    [GradingPeriodName] [NVARCHAR](60) NOT NULL,
    [GradingPeriodSchoolYear] [SMALLINT] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CertificatedProgramStatusDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [GradeExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [GradeTypeDescriptorId] ASC,
        [GradingPeriodDescriptorId] ASC,
        [GradingPeriodName] ASC,
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
ALTER TABLE [wi].[GradeExtension] ADD CONSTRAINT [GradeExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[GraduationPlanExtension] --
CREATE TABLE [wi].[GraduationPlanExtension] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [GraduationPlanTypeDescriptorId] [INT] NOT NULL,
    [GraduationSchoolYear] [SMALLINT] NOT NULL,
    [CivicsExam] [BIT] NOT NULL,
    [CommunityService] [DECIMAL](5, 2) NOT NULL,
    [MiscellaneousRequiredCredits] [NVARCHAR](900) NULL,
    [NonHsHealthEducationCredits] [DECIMAL](9, 3) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [GraduationPlanExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [GraduationPlanTypeDescriptorId] ASC,
        [GraduationSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[GraduationPlanExtension] ADD CONSTRAINT [GraduationPlanExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[IacCodeDescriptor] --
CREATE TABLE [wi].[IacCodeDescriptor] (
    [IacCodeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [IacCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [IacCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [wi].[ModifiedTermDescriptor] --
CREATE TABLE [wi].[ModifiedTermDescriptor] (
    [ModifiedTermDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ModifiedTermDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ModifiedTermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [wi].[RccPlacementTypeDescriptor] --
CREATE TABLE [wi].[RccPlacementTypeDescriptor] (
    [RccPlacementTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RccPlacementTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RccPlacementTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [wi].[StaffEducationOrganizationEmploymentAssociationExtension] --
CREATE TABLE [wi].[StaffEducationOrganizationEmploymentAssociationExtension] (
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [EmploymentStatusDescriptorId] [INT] NOT NULL,
    [HireDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [LocalPersonIdentificationCode] [NVARCHAR](60) NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [EmploymentStatusDescriptorId] ASC,
        [HireDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[StaffEducationOrganizationEmploymentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationEmploymentAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[StudentCTEProgramAssociationCTEConcentrationCteProgramArea] --
CREATE TABLE [wi].[StudentCTEProgramAssociationCTEConcentrationCteProgramArea] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CteProgramAreaDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationCTEConcentrationCteProgramArea_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC,
        [CteProgramAreaDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[StudentCTEProgramAssociationCTEConcentrationCteProgramArea] ADD CONSTRAINT [StudentCTEProgramAssociationCTEConcentrationCteProgramArea_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[StudentCTEProgramAssociationExtension] --
CREATE TABLE [wi].[StudentCTEProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CertificatedProgramStatusDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentCTEProgramAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramEducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[StudentCTEProgramAssociationExtension] ADD CONSTRAINT [StudentCTEProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[StudentDisciplineIncidentBehaviorAssociationExtension] --
CREATE TABLE [wi].[StudentDisciplineIncidentBehaviorAssociationExtension] (
    [BehaviorDescriptorId] [INT] NOT NULL,
    [IncidentIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [SeriousBodilyInjury] [BIT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BehaviorDescriptorId] ASC,
        [IncidentIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[StudentDisciplineIncidentBehaviorAssociationExtension] ADD CONSTRAINT [StudentDisciplineIncidentBehaviorAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[StudentSchoolAssociationExtension] --
CREATE TABLE [wi].[StudentSchoolAssociationExtension] (
    [EntryDate] [DATE] NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ActualDaysAttendance] [DECIMAL](4, 1) NULL,
    [PartTimeInstructionalMinutes] [INT] NULL,
    [PossibleDaysAttendance] [DECIMAL](4, 1) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[StudentSchoolAssociationExtension] ADD CONSTRAINT [StudentSchoolAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[StudentSchoolAssociationReceivingService] --
CREATE TABLE [wi].[StudentSchoolAssociationReceivingService] (
    [EntryDate] [DATE] NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CountDateNameDescriptorId] [INT] NOT NULL,
    [CountDateReceivingServiceDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolAssociationReceivingService_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC,
        [CountDateNameDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[StudentSchoolAssociationReceivingService] ADD CONSTRAINT [StudentSchoolAssociationReceivingService_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[StudentSchoolAssociationResidencyPeriod] --
CREATE TABLE [wi].[StudentSchoolAssociationResidencyPeriod] (
    [EntryDate] [DATE] NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [ResidencyStatusDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [ResidentLocalEducationAgencyId] [BIGINT] NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [StudentSchoolAssociationResidencyPeriod_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC,
        [BeginDate] ASC,
        [ResidencyStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [wi].[StudentSchoolAssociationResidencyPeriod] ADD CONSTRAINT [StudentSchoolAssociationResidencyPeriod_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

-- Table [wi].[StudentSpecialEducationProgramAssociationExtension] --
CREATE TABLE [wi].[StudentSpecialEducationProgramAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramEducationOrganizationId] [BIGINT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [FapeResponsibleSchoolId] [BIGINT] NOT NULL,
    [RccCity] [NVARCHAR](30) NULL,
    [RccCommunityProviderId] [BIGINT] NULL,
    [RccNameOfInstitution] [NVARCHAR](75) NULL,
    [RccPlacementTypeDescriptorId] [INT] NULL,
    [RccStateAbbreviationDescriptorId] [INT] NULL,
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
ALTER TABLE [wi].[StudentSpecialEducationProgramAssociationExtension] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationExtension_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

