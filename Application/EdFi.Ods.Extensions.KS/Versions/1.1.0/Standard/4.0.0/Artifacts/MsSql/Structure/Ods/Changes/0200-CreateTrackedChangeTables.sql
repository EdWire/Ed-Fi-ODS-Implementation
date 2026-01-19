IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_ks')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_ks]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_ks].[SectionEducator]'))
CREATE TABLE [tracked_changes_ks].[SectionEducator]
(
       OldEducatorElectronicMailAddress [NVARCHAR](128) NOT NULL,
       OldLocalCourseCode [NVARCHAR](60) NOT NULL,
       OldSchoolId [INT] NOT NULL,
       OldSchoolYear [SMALLINT] NOT NULL,
       OldSectionIdentifier [NVARCHAR](255) NOT NULL,
       OldSessionName [NVARCHAR](60) NOT NULL,
       NewEducatorElectronicMailAddress [NVARCHAR](128) NULL,
       NewLocalCourseCode [NVARCHAR](60) NULL,
       NewSchoolId [INT] NULL,
       NewSchoolYear [SMALLINT] NULL,
       NewSectionIdentifier [NVARCHAR](255) NULL,
       NewSessionName [NVARCHAR](60) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SectionEducator PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_ks].[SnackPack]'))
CREATE TABLE [tracked_changes_ks].[SnackPack]
(
       OldStateStudentId [NVARCHAR](32) NOT NULL,
       NewStateStudentId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SnackPack PRIMARY KEY CLUSTERED (ChangeVersion)
)
