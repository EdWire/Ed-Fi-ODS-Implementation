-- Table [edfixcrdc].[RestraintCategoryDescriptor] --
CREATE TABLE [edfixcrdc].[RestraintCategoryDescriptor] (
    [RestraintCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RestraintCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RestraintCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [edfixcrdc].[RestraintEventRestraintCategory] --
CREATE TABLE [edfixcrdc].[RestraintEventRestraintCategory] (
    [RestraintEventIdentifier] [NVARCHAR](36) NOT NULL,
    [SchoolId] [BIGINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [RestraintCategoryDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME2] NOT NULL,
    CONSTRAINT [RestraintEventRestraintCategory_PK] PRIMARY KEY CLUSTERED (
        [RestraintEventIdentifier] ASC,
        [SchoolId] ASC,
        [StudentUSI] ASC,
        [RestraintCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [edfixcrdc].[RestraintEventRestraintCategory] ADD CONSTRAINT [RestraintEventRestraintCategory_DF_CreateDate] DEFAULT (getutcdate()) FOR [CreateDate]
GO

