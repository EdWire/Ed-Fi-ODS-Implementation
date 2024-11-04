
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAssessmentRegistration_AssigningEducationOrganizationId' AND object_id = OBJECT_ID('edfixassessmentroster.StudentAssessmentRegistration')) 
BEGIN
    CREATE INDEX IX_StudentAssessmentRegistration_AssigningEducationOrganizationId ON [edfixassessmentroster].[StudentAssessmentRegistration](AssigningEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAssessmentRegistration_EducationOrganizationId' AND object_id = OBJECT_ID('edfixassessmentroster.StudentAssessmentRegistration')) 
BEGIN
    CREATE INDEX IX_StudentAssessmentRegistration_EducationOrganizationId ON [edfixassessmentroster].[StudentAssessmentRegistration](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentAssessmentRegistration_SchoolId' AND object_id = OBJECT_ID('edfixassessmentroster.StudentAssessmentRegistration')) 
BEGIN
    CREATE INDEX IX_StudentAssessmentRegistration_SchoolId ON [edfixassessmentroster].[StudentAssessmentRegistration](SchoolId) INCLUDE (Id)
END;
