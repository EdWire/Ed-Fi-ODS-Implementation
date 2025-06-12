IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_idoe')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_idoe]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[AssessmentAccommodation]'))
CREATE TABLE [tracked_changes_idoe].[AssessmentAccommodation]
(
       OldAccommodationDescriptorId [INT] NOT NULL,
       OldAccommodationDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldAccommodationDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldAssessmentIdentifier [NVARCHAR](60) NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       NewAccommodationDescriptorId [INT] NULL,
       NewAccommodationDescriptorNamespace [NVARCHAR](255) NULL,
       NewAccommodationDescriptorCodeValue [NVARCHAR](50) NULL,
       NewAssessmentIdentifier [NVARCHAR](60) NULL,
       NewNamespace [NVARCHAR](255) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_AssessmentAccommodation PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[EducationOrganizationOtherPersonnel]'))
CREATE TABLE [tracked_changes_idoe].[EducationOrganizationOtherPersonnel]
(
       OldLocalEducationAgencyId [BIGINT] NOT NULL,
       OldOtherPersonnelCategoryDescriptorId [INT] NOT NULL,
       OldOtherPersonnelCategoryDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldOtherPersonnelCategoryDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldOtherPersonnelTitleDescriptorId [INT] NOT NULL,
       OldOtherPersonnelTitleDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldOtherPersonnelTitleDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       NewLocalEducationAgencyId [BIGINT] NULL,
       NewOtherPersonnelCategoryDescriptorId [INT] NULL,
       NewOtherPersonnelCategoryDescriptorNamespace [NVARCHAR](255) NULL,
       NewOtherPersonnelCategoryDescriptorCodeValue [NVARCHAR](50) NULL,
       NewOtherPersonnelTitleDescriptorId [INT] NULL,
       NewOtherPersonnelTitleDescriptorNamespace [NVARCHAR](255) NULL,
       NewOtherPersonnelTitleDescriptorCodeValue [NVARCHAR](50) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_EducationOrganizationOtherPersonnel PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[LocalCapitalizedEquipment]'))
CREATE TABLE [tracked_changes_idoe].[LocalCapitalizedEquipment]
(
       OldAccountIdentifier [NVARCHAR](50) NOT NULL,
       OldAsOfDate [DATE] NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       OldRecordIdentifier [NVARCHAR](100) NOT NULL,
       NewAccountIdentifier [NVARCHAR](50) NULL,
       NewAsOfDate [DATE] NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewFiscalYear [INT] NULL,
       NewRecordIdentifier [NVARCHAR](100) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_LocalCapitalizedEquipment PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[LocalSubaward]'))
CREATE TABLE [tracked_changes_idoe].[LocalSubaward]
(
       OldAccountIdentifier [NVARCHAR](50) NOT NULL,
       OldAsOfDate [DATE] NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       OldRecordIdentifier [NVARCHAR](100) NOT NULL,
       NewAccountIdentifier [NVARCHAR](50) NULL,
       NewAsOfDate [DATE] NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewFiscalYear [INT] NULL,
       NewRecordIdentifier [NVARCHAR](100) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_LocalSubaward PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[LocalUnusedLeavePayment]'))
CREATE TABLE [tracked_changes_idoe].[LocalUnusedLeavePayment]
(
       OldAccountIdentifier [NVARCHAR](50) NOT NULL,
       OldAsOfDate [DATE] NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       OldRecordIdentifier [NVARCHAR](100) NOT NULL,
       NewAccountIdentifier [NVARCHAR](50) NULL,
       NewAsOfDate [DATE] NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewFiscalYear [INT] NULL,
       NewRecordIdentifier [NVARCHAR](100) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_LocalUnusedLeavePayment PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[SectionDimension]'))
CREATE TABLE [tracked_changes_idoe].[SectionDimension]
(
       OldCode [NVARCHAR](16) NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       NewCode [NVARCHAR](16) NULL,
       NewFiscalYear [INT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SectionDimension PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[StudentAccommodation]'))
CREATE TABLE [tracked_changes_idoe].[StudentAccommodation]
(
       OldAccommodationDescriptorId [INT] NOT NULL,
       OldAccommodationDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldAccommodationDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldAssessmentIdentifier [NVARCHAR](60) NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldNamespace [NVARCHAR](255) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewAccommodationDescriptorId [INT] NULL,
       NewAccommodationDescriptorNamespace [NVARCHAR](255) NULL,
       NewAccommodationDescriptorCodeValue [NVARCHAR](50) NULL,
       NewAssessmentIdentifier [NVARCHAR](60) NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewNamespace [NVARCHAR](255) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentAccommodation PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[StudentSchoolGraduationPlan]'))
CREATE TABLE [tracked_changes_idoe].[StudentSchoolGraduationPlan]
(
       OldBeginDate [DATE] NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldGraduationPlanTypeDescriptorId [INT] NOT NULL,
       OldGraduationPlanTypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldGraduationPlanTypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldGraduationSchoolYear [SMALLINT] NOT NULL,
       OldSchoolId [BIGINT] NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewBeginDate [DATE] NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewGraduationPlanTypeDescriptorId [INT] NULL,
       NewGraduationPlanTypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewGraduationPlanTypeDescriptorCodeValue [NVARCHAR](50) NULL,
       NewGraduationSchoolYear [SMALLINT] NULL,
       NewSchoolId [BIGINT] NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentSchoolGraduationPlan PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_idoe].[SubCategoryDimension]'))
CREATE TABLE [tracked_changes_idoe].[SubCategoryDimension]
(
       OldCode [NVARCHAR](16) NOT NULL,
       OldFiscalYear [INT] NOT NULL,
       NewCode [NVARCHAR](16) NULL,
       NewFiscalYear [INT] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_SubCategoryDimension PRIMARY KEY CLUSTERED (ChangeVersion)
)
