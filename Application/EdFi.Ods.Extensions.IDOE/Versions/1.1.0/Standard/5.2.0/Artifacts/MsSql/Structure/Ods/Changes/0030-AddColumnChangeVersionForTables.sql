
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[AssessmentAccommodation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[AssessmentAccommodation] ADD [ChangeVersion] [BIGINT] CONSTRAINT AssessmentAccommodation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[AssessmentAccommodation] DROP CONSTRAINT AssessmentAccommodation_DF_ChangeVersion;
ALTER TABLE [idoe].[AssessmentAccommodation] ADD CONSTRAINT AssessmentAccommodation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[EducationOrganizationOtherPersonnel]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD [ChangeVersion] [BIGINT] CONSTRAINT EducationOrganizationOtherPersonnel_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] DROP CONSTRAINT EducationOrganizationOtherPersonnel_DF_ChangeVersion;
ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] ADD CONSTRAINT EducationOrganizationOtherPersonnel_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[LocalCapitalizedEquipment]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[LocalCapitalizedEquipment] ADD [ChangeVersion] [BIGINT] CONSTRAINT LocalCapitalizedEquipment_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[LocalCapitalizedEquipment] DROP CONSTRAINT LocalCapitalizedEquipment_DF_ChangeVersion;
ALTER TABLE [idoe].[LocalCapitalizedEquipment] ADD CONSTRAINT LocalCapitalizedEquipment_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[LocalSubaward]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[LocalSubaward] ADD [ChangeVersion] [BIGINT] CONSTRAINT LocalSubaward_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[LocalSubaward] DROP CONSTRAINT LocalSubaward_DF_ChangeVersion;
ALTER TABLE [idoe].[LocalSubaward] ADD CONSTRAINT LocalSubaward_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[LocalUnusedLeavePayment]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[LocalUnusedLeavePayment] ADD [ChangeVersion] [BIGINT] CONSTRAINT LocalUnusedLeavePayment_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[LocalUnusedLeavePayment] DROP CONSTRAINT LocalUnusedLeavePayment_DF_ChangeVersion;
ALTER TABLE [idoe].[LocalUnusedLeavePayment] ADD CONSTRAINT LocalUnusedLeavePayment_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[SectionDimension]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[SectionDimension] ADD [ChangeVersion] [BIGINT] CONSTRAINT SectionDimension_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[SectionDimension] DROP CONSTRAINT SectionDimension_DF_ChangeVersion;
ALTER TABLE [idoe].[SectionDimension] ADD CONSTRAINT SectionDimension_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[StudentAccommodation]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[StudentAccommodation] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentAccommodation_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[StudentAccommodation] DROP CONSTRAINT StudentAccommodation_DF_ChangeVersion;
ALTER TABLE [idoe].[StudentAccommodation] ADD CONSTRAINT StudentAccommodation_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[StudentSchoolGraduationPlan]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[StudentSchoolGraduationPlan] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentSchoolGraduationPlan_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[StudentSchoolGraduationPlan] DROP CONSTRAINT StudentSchoolGraduationPlan_DF_ChangeVersion;
ALTER TABLE [idoe].[StudentSchoolGraduationPlan] ADD CONSTRAINT StudentSchoolGraduationPlan_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[idoe].[SubCategoryDimension]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [idoe].[SubCategoryDimension] ADD [ChangeVersion] [BIGINT] CONSTRAINT SubCategoryDimension_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [idoe].[SubCategoryDimension] DROP CONSTRAINT SubCategoryDimension_DF_ChangeVersion;
ALTER TABLE [idoe].[SubCategoryDimension] ADD CONSTRAINT SubCategoryDimension_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


