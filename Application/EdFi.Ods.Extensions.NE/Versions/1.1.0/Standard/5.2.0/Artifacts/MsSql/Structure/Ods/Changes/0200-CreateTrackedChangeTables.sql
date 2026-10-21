IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_ne')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_ne]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_ne].[EmergencyExclusion]'))
CREATE TABLE [tracked_changes_ne].[EmergencyExclusion]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldExclusionDate [DATE] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewExclusionDate [DATE] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_EmergencyExclusion PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_ne].[IdeaEvent]'))
CREATE TABLE [tracked_changes_ne].[IdeaEvent]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIDEAEventDescriptorId [INT] NOT NULL,
       OldIDEAEventDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldIDEAEventDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldIDEAEventID [NVARCHAR](128) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIDEAEventDescriptorId [INT] NULL,
       NewIDEAEventDescriptorNamespace [NVARCHAR](255) NULL,
       NewIDEAEventDescriptorCodeValue [NVARCHAR](50) NULL,
       NewIDEAEventID [NVARCHAR](128) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_IdeaEvent PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_ne].[PostGraduateActivity]'))
CREATE TABLE [tracked_changes_ne].[PostGraduateActivity]
(
       OldLocalEducationAgencyId [BIGINT] NOT NULL,
       OldSchoolYear [SMALLINT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewLocalEducationAgencyId [BIGINT] NULL,
       NewSchoolYear [SMALLINT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_PostGraduateActivity PRIMARY KEY CLUSTERED (ChangeVersion)
)
