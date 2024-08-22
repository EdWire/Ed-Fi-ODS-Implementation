
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edfixassessmentroster].[AssessmentAdministration]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] ADD [ChangeVersion] [BIGINT] CONSTRAINT AssessmentAdministration_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] DROP CONSTRAINT AssessmentAdministration_DF_ChangeVersion;
ALTER TABLE [edfixassessmentroster].[AssessmentAdministration] ADD CONSTRAINT AssessmentAdministration_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[edfixassessmentroster].[StudentAssessmentRegistration]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentAssessmentRegistration_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] DROP CONSTRAINT StudentAssessmentRegistration_DF_ChangeVersion;
ALTER TABLE [edfixassessmentroster].[StudentAssessmentRegistration] ADD CONSTRAINT StudentAssessmentRegistration_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


