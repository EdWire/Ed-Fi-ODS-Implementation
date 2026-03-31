-- Table [edorgprogram].[EducationOrganizationEducationOrganizationProgram] --
CREATE TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [EducationOrganizationProgramTypeDescriptorId] [INT] NOT NULL,
    [EndDate] [DATE] NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationEducationOrganizationProgram_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [EducationOrganizationProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ADD CONSTRAINT [EducationOrganizationEducationOrganizationProgram_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ADD CONSTRAINT [EducationOrganizationEducationOrganizationProgram_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationEducationOrganizationProgram] ADD CONSTRAINT [EducationOrganizationEducationOrganizationProgram_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] --
CREATE TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationProgramTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [EndDate] [DATE] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationProgramAuthorizedProvider_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationProgramTypeDescriptorId] ASC,
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ADD CONSTRAINT [EducationOrganizationProgramAuthorizedProvider_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ADD CONSTRAINT [EducationOrganizationProgramAuthorizedProvider_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationProgramAuthorizedProvider] ADD CONSTRAINT [EducationOrganizationProgramAuthorizedProvider_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [edorgprogram].[EducationOrganizationProgramProvider] --
CREATE TABLE [edorgprogram].[EducationOrganizationProgramProvider] (
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [EducationServiceCenterId] [INT] NULL,
    [Discriminator] [NVARCHAR](128) NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    [LastModifiedDate] [DATETIME2] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationProgramProvider_PK] PRIMARY KEY CLUSTERED (
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] ADD CONSTRAINT [EducationOrganizationProgramProvider_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] ADD CONSTRAINT [EducationOrganizationProgramProvider_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [edorgprogram].[EducationOrganizationProgramProvider] ADD CONSTRAINT [EducationOrganizationProgramProvider_DF_LastModifiedDate] DEFAULT (getutcdate()) FOR [LastModifiedDate]
GO

-- Table [edorgprogram].[EducationOrganizationProgramTypeDescriptor] --
CREATE TABLE [edorgprogram].[EducationOrganizationProgramTypeDescriptor] (
    [EducationOrganizationProgramTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EducationOrganizationProgramTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

