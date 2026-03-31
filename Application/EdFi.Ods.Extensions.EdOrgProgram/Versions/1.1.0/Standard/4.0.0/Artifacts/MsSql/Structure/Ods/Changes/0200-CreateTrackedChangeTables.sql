IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_edorgprogram')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_edorgprogram]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_edorgprogram].[EducationOrganizationEducationOrganizationProgram]'))
CREATE TABLE [tracked_changes_edorgprogram].[EducationOrganizationEducationOrganizationProgram]
(
       OldBeginDate [DATE] NOT NULL,
       OldEducationOrganizationId [INT] NOT NULL,
       OldEducationOrganizationProgramTypeDescriptorId [INT] NOT NULL,
       OldEducationOrganizationProgramTypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldEducationOrganizationProgramTypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       NewBeginDate [DATE] NULL,
       NewEducationOrganizationId [INT] NULL,
       NewEducationOrganizationProgramTypeDescriptorId [INT] NULL,
       NewEducationOrganizationProgramTypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewEducationOrganizationProgramTypeDescriptorCodeValue [NVARCHAR](50) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_EducationOrganizationEducationOrganizationProgram PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_edorgprogram].[EducationOrganizationProgramAuthorizedProvider]'))
CREATE TABLE [tracked_changes_edorgprogram].[EducationOrganizationProgramAuthorizedProvider]
(
       OldBeginDate [DATE] NOT NULL,
       OldEducationOrganizationProgramTypeDescriptorId [INT] NOT NULL,
       OldEducationOrganizationProgramTypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldEducationOrganizationProgramTypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldNameOfInstitution [NVARCHAR](75) NOT NULL,
       NewBeginDate [DATE] NULL,
       NewEducationOrganizationProgramTypeDescriptorId [INT] NULL,
       NewEducationOrganizationProgramTypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewEducationOrganizationProgramTypeDescriptorCodeValue [NVARCHAR](50) NULL,
       NewNameOfInstitution [NVARCHAR](75) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_EducationOrganizationProgramAuthorizedProvider PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_edorgprogram].[EducationOrganizationProgramProvider]'))
CREATE TABLE [tracked_changes_edorgprogram].[EducationOrganizationProgramProvider]
(
       OldNameOfInstitution [NVARCHAR](75) NOT NULL,
       NewNameOfInstitution [NVARCHAR](75) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_EducationOrganizationProgramProvider PRIMARY KEY CLUSTERED (ChangeVersion)
)
