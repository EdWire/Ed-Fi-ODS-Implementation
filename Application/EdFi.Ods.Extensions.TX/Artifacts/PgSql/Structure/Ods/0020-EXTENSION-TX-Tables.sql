-- Table tx.ActualExt --
CREATE TABLE tx.ActualExt (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    FiscalYear INT NOT NULL,
    FunctionDescriptorId INT NOT NULL,
    FundDescriptorId INT NOT NULL,
    ObjectDescriptorId INT NOT NULL,
    Organization INT NOT NULL,
    ProgramIntentDescriptorId INT NOT NULL,
    ActualAmount DECIMAL(10, 0) NOT NULL,
    EndDate DATE NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ActualExt_PK PRIMARY KEY (BeginDate, EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId)
);
ALTER TABLE tx.ActualExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.ActualExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.ActualExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.ADAEligibilityDescriptor --
CREATE TABLE tx.ADAEligibilityDescriptor (
    ADAEligibilityDescriptorId INT NOT NULL,
    CONSTRAINT ADAEligibilityDescriptor_PK PRIMARY KEY (ADAEligibilityDescriptorId)
);

-- Table tx.ApiOperationTypeDescriptor --
CREATE TABLE tx.ApiOperationTypeDescriptor (
    ApiOperationTypeDescriptorId INT NOT NULL,
    CONSTRAINT ApiOperationTypeDescriptor_PK PRIMARY KEY (ApiOperationTypeDescriptorId)
);

-- Table tx.ApplicationTypeDescriptor --
CREATE TABLE tx.ApplicationTypeDescriptor (
    ApplicationTypeDescriptorId INT NOT NULL,
    CONSTRAINT ApplicationTypeDescriptor_PK PRIMARY KEY (ApplicationTypeDescriptorId)
);

-- Table tx.ArmedServicesVocAptBatteryDescriptor --
CREATE TABLE tx.ArmedServicesVocAptBatteryDescriptor (
    ArmedServicesVocAptBatteryDescriptorId INT NOT NULL,
    CONSTRAINT ArmedServicesVocAptBatteryDescriptor_PK PRIMARY KEY (ArmedServicesVocAptBatteryDescriptorId)
);

-- Table tx.AsOfStatusLastDayEnrollmentDescriptor --
CREATE TABLE tx.AsOfStatusLastDayEnrollmentDescriptor (
    AsOfStatusLastDayEnrollmentDescriptorId INT NOT NULL,
    CONSTRAINT AsOfStatusLastDayEnrollmentDescriptor_PK PRIMARY KEY (AsOfStatusLastDayEnrollmentDescriptorId)
);

-- Table tx.AsOfStatusLastFridayOctoberDescriptor --
CREATE TABLE tx.AsOfStatusLastFridayOctoberDescriptor (
    AsOfStatusLastFridayOctoberDescriptorId INT NOT NULL,
    CONSTRAINT AsOfStatusLastFridayOctoberDescriptor_PK PRIMARY KEY (AsOfStatusLastFridayOctoberDescriptorId)
);

-- Table tx.AssessmentExtension --
CREATE TABLE tx.AssessmentExtension (
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    TitleOfAssessmentDescriptorId INT NULL,
    ReportAssessmentTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AssessmentExtension_PK PRIMARY KEY (AssessmentIdentifier, Namespace)
);
ALTER TABLE tx.AssessmentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.AssessmentResultsObtainedDescriptor --
CREATE TABLE tx.AssessmentResultsObtainedDescriptor (
    AssessmentResultsObtainedDescriptorId INT NOT NULL,
    CONSTRAINT AssessmentResultsObtainedDescriptor_PK PRIMARY KEY (AssessmentResultsObtainedDescriptorId)
);

-- Table tx.AuxiliaryRoleIdDescriptor --
CREATE TABLE tx.AuxiliaryRoleIdDescriptor (
    AuxiliaryRoleIdDescriptorId INT NOT NULL,
    CONSTRAINT AuxiliaryRoleIdDescriptor_PK PRIMARY KEY (AuxiliaryRoleIdDescriptorId)
);

-- Table tx.BasicReportingPeriodAttendance --
CREATE TABLE tx.BasicReportingPeriodAttendance (
    CalendarCode VARCHAR(60) NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    TotalDaysAbsent DECIMAL(4, 1) NOT NULL,
    TotalIneligibleDaysPresent DECIMAL(4, 1) NULL,
    TotalEligibleDaysPresent DECIMAL(4, 1) NOT NULL,
    RSTotalEligibleDaysPresent DECIMAL(4, 1) NOT NULL,
    RATotalEligibleDaysPresent DECIMAL(4, 1) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT BasicReportingPeriodAttendance_PK PRIMARY KEY (CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.BasicReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.BasicReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.BasicReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.BilingualESLFundingDescriptor --
CREATE TABLE tx.BilingualESLFundingDescriptor (
    BilingualESLFundingDescriptorId INT NOT NULL,
    CONSTRAINT BilingualESLFundingDescriptor_PK PRIMARY KEY (BilingualESLFundingDescriptorId)
);

-- Table tx.BilingualESLProgramReportingPeriodAttendance --
CREATE TABLE tx.BilingualESLProgramReportingPeriodAttendance (
    BilingualESLFundingDescriptorId INT NOT NULL,
    CalendarCode VARCHAR(60) NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    TotalEligBilingualESLDaysPresent DECIMAL(4, 1) NULL,
    RSTotalEligBilingualESLDaysPresent DECIMAL(4, 1) NULL,
    RATotalEligBilingualESLDaysPresent DECIMAL(4, 1) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT BilingualESLProgramReportingPeriodAttendance_PK PRIMARY KEY (BilingualESLFundingDescriptorId, CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.BilingualESLProgramReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.BudgetExt --
CREATE TABLE tx.BudgetExt (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    FiscalYear INT NOT NULL,
    FunctionDescriptorId INT NOT NULL,
    FundDescriptorId INT NOT NULL,
    ObjectDescriptorId INT NOT NULL,
    Organization INT NOT NULL,
    ProgramIntentDescriptorId INT NOT NULL,
    BudgetAmount DECIMAL(10, 0) NOT NULL,
    EndDate DATE NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT BudgetExt_PK PRIMARY KEY (BeginDate, EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId)
);
ALTER TABLE tx.BudgetExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.BudgetExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.BudgetExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.CalendarDateExtension --
CREATE TABLE tx.CalendarDateExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    CalendarWaiverEventTypeDescriptorId INT NULL,
    SchoolDayOperationalMinutes INT NULL,
    SchoolDayInstructionalMinutes INT NULL,
    SchoolDayWaiverMinutes INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateExtension_PK PRIMARY KEY (CalendarCode, Date, SchoolId, SchoolYear)
);
ALTER TABLE tx.CalendarDateExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.CalendarWaiverEventTypeDescriptor --
CREATE TABLE tx.CalendarWaiverEventTypeDescriptor (
    CalendarWaiverEventTypeDescriptorId INT NOT NULL,
    CONSTRAINT CalendarWaiverEventTypeDescriptor_PK PRIMARY KEY (CalendarWaiverEventTypeDescriptorId)
);

-- Table tx.CampusEnrollmentTypeDescriptor --
CREATE TABLE tx.CampusEnrollmentTypeDescriptor (
    CampusEnrollmentTypeDescriptorId INT NOT NULL,
    CONSTRAINT CampusEnrollmentTypeDescriptor_PK PRIMARY KEY (CampusEnrollmentTypeDescriptorId)
);

-- Table tx.ChildCountFundingDescriptor --
CREATE TABLE tx.ChildCountFundingDescriptor (
    ChildCountFundingDescriptorId INT NOT NULL,
    CONSTRAINT ChildCountFundingDescriptor_PK PRIMARY KEY (ChildCountFundingDescriptorId)
);

-- Table tx.ClassTypeDescriptor --
CREATE TABLE tx.ClassTypeDescriptor (
    ClassTypeDescriptorId INT NOT NULL,
    CONSTRAINT ClassTypeDescriptor_PK PRIMARY KEY (ClassTypeDescriptorId)
);

-- Table tx.ContractedInstructionalStaffFTEExt --
CREATE TABLE tx.ContractedInstructionalStaffFTEExt (
    EducationOrganizationId INT NOT NULL,
    ProgramIntentDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    TotalContractedInstrStaffFTE DECIMAL(5, 2) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ContractedInstructionalStaffFTEExt_PK PRIMARY KEY (EducationOrganizationId, ProgramIntentDescriptorId, SchoolId)
);
ALTER TABLE tx.ContractedInstructionalStaffFTEExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.ContractedInstructionalStaffFTEExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.ContractedInstructionalStaffFTEExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.CourseSequenceDescriptor --
CREATE TABLE tx.CourseSequenceDescriptor (
    CourseSequenceDescriptorId INT NOT NULL,
    CONSTRAINT CourseSequenceDescriptor_PK PRIMARY KEY (CourseSequenceDescriptorId)
);

-- Table tx.CourseTranscriptExtension --
CREATE TABLE tx.CourseTranscriptExtension (
    CourseAttemptResultDescriptorId INT NOT NULL,
    CourseCode VARCHAR(60) NOT NULL,
    CourseEducationOrganizationId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    TermDescriptorId INT NOT NULL,
    CollegeCreditHours INT NULL,
    DualCreditIndicator BOOLEAN NULL,
    ATCIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CourseTranscriptExtension_PK PRIMARY KEY (CourseAttemptResultDescriptorId, CourseCode, CourseEducationOrganizationId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
);
ALTER TABLE tx.CourseTranscriptExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.CrisisEventDescriptor --
CREATE TABLE tx.CrisisEventDescriptor (
    CrisisEventDescriptorId INT NOT NULL,
    CONSTRAINT CrisisEventDescriptor_PK PRIMARY KEY (CrisisEventDescriptorId)
);

-- Table tx.CTEProgramReportingPeriodAttendance --
CREATE TABLE tx.CTEProgramReportingPeriodAttendance (
    CalendarCode VARCHAR(60) NOT NULL,
    CTEServiceIdDescriptorId INT NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    EligibleDaysPresentV1 DECIMAL(4, 1) NULL,
    RSEligibleDaysPresentV1 DECIMAL(4, 1) NULL,
    RAEligibleDaysPresentV1 DECIMAL(4, 1) NULL,
    EligibleDaysPresentV2 DECIMAL(4, 1) NULL,
    RSEligibleDaysPresentV2 DECIMAL(4, 1) NULL,
    RAEligibleDaysPresentV2 DECIMAL(4, 1) NULL,
    EligibleDaysPresentV3 DECIMAL(4, 1) NULL,
    RSEligibleDaysPresentV3 DECIMAL(4, 1) NULL,
    RAEligibleDaysPresentV3 DECIMAL(4, 1) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT CTEProgramReportingPeriodAttendance_PK PRIMARY KEY (CalendarCode, CTEServiceIdDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.CTEProgramReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.CTEProgramReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.CTEProgramReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.CTEServiceIdDescriptor --
CREATE TABLE tx.CTEServiceIdDescriptor (
    CTEServiceIdDescriptorId INT NOT NULL,
    CONSTRAINT CTEServiceIdDescriptor_PK PRIMARY KEY (CTEServiceIdDescriptorId)
);

-- Table tx.DescriptorMappingHistory --
CREATE TABLE tx.DescriptorMappingHistory (
    DateOfOperation TIMESTAMP NOT NULL,
    MappedNamespace VARCHAR(255) NOT NULL,
    MappedValue VARCHAR(50) NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    Value VARCHAR(50) NOT NULL,
    DescriptorMappingId VARCHAR(36) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    ApiOperationTypeDescriptorId INT NOT NULL,
    AccountName VARCHAR(100) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT DescriptorMappingHistory_PK PRIMARY KEY (DateOfOperation, MappedNamespace, MappedValue, Namespace, Value)
);
ALTER TABLE tx.DescriptorMappingHistory ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.DescriptorMappingHistory ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.DescriptorMappingHistory ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.DisciplineActionExtension --
CREATE TABLE tx.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(32) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    ActualLengthOfDisciplinaryAssignment INT NULL,
    OfficialLengthOfDisciplinaryAssignment INT NULL,
    InconsistentCodeOfConduct BOOLEAN NULL,
    NonMembershipDisciplineRestraintIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE tx.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.DisciplineIncidentExtension --
CREATE TABLE tx.DisciplineIncidentExtension (
    IncidentIdentifier VARCHAR(20) NOT NULL,
    SchoolId INT NOT NULL,
    SafeSupportiveSchoolProgramTeamReview BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineIncidentExtension_PK PRIMARY KEY (IncidentIdentifier, SchoolId)
);
ALTER TABLE tx.DisciplineIncidentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.DyslexiaRiskDescriptor --
CREATE TABLE tx.DyslexiaRiskDescriptor (
    DyslexiaRiskDescriptorId INT NOT NULL,
    CONSTRAINT DyslexiaRiskDescriptor_PK PRIMARY KEY (DyslexiaRiskDescriptorId)
);

-- Table tx.DyslexiaScreeningExceptionReasonDescriptor --
CREATE TABLE tx.DyslexiaScreeningExceptionReasonDescriptor (
    DyslexiaScreeningExceptionReasonDescriptorId INT NOT NULL,
    CONSTRAINT DyslexiaScreeningExceptionReasonDescriptor_PK PRIMARY KEY (DyslexiaScreeningExceptionReasonDescriptorId)
);

-- Table tx.DyslexiaServicesDescriptor --
CREATE TABLE tx.DyslexiaServicesDescriptor (
    DyslexiaServicesDescriptorId INT NOT NULL,
    CONSTRAINT DyslexiaServicesDescriptor_PK PRIMARY KEY (DyslexiaServicesDescriptorId)
);

-- Table tx.EarlyReadingIndicatorDescriptor --
CREATE TABLE tx.EarlyReadingIndicatorDescriptor (
    EarlyReadingIndicatorDescriptorId INT NOT NULL,
    CONSTRAINT EarlyReadingIndicatorDescriptor_PK PRIMARY KEY (EarlyReadingIndicatorDescriptorId)
);

-- Table tx.EconomicDisadvantageDescriptor --
CREATE TABLE tx.EconomicDisadvantageDescriptor (
    EconomicDisadvantageDescriptorId INT NOT NULL,
    CONSTRAINT EconomicDisadvantageDescriptor_PK PRIMARY KEY (EconomicDisadvantageDescriptorId)
);

-- Table tx.EligibilityDelayReasonDescriptor --
CREATE TABLE tx.EligibilityDelayReasonDescriptor (
    EligibilityDelayReasonDescriptorId INT NOT NULL,
    CONSTRAINT EligibilityDelayReasonDescriptor_PK PRIMARY KEY (EligibilityDelayReasonDescriptorId)
);

-- Table tx.ELOActivityDescriptor --
CREATE TABLE tx.ELOActivityDescriptor (
    ELOActivityDescriptorId INT NOT NULL,
    CONSTRAINT ELOActivityDescriptor_PK PRIMARY KEY (ELOActivityDescriptorId)
);

-- Table tx.ELOTypeDescriptor --
CREATE TABLE tx.ELOTypeDescriptor (
    ELOTypeDescriptorId INT NOT NULL,
    CONSTRAINT ELOTypeDescriptor_PK PRIMARY KEY (ELOTypeDescriptorId)
);

-- Table tx.EmergentBilingualIndicatorDescriptor --
CREATE TABLE tx.EmergentBilingualIndicatorDescriptor (
    EmergentBilingualIndicatorDescriptorId INT NOT NULL,
    CONSTRAINT EmergentBilingualIndicatorDescriptor_PK PRIMARY KEY (EmergentBilingualIndicatorDescriptorId)
);

-- Table tx.EndorsementCompletedDescriptor --
CREATE TABLE tx.EndorsementCompletedDescriptor (
    EndorsementCompletedDescriptorId INT NOT NULL,
    CONSTRAINT EndorsementCompletedDescriptor_PK PRIMARY KEY (EndorsementCompletedDescriptorId)
);

-- Table tx.EndorsementPursuingDescriptor --
CREATE TABLE tx.EndorsementPursuingDescriptor (
    EndorsementPursuingDescriptorId INT NOT NULL,
    CONSTRAINT EndorsementPursuingDescriptor_PK PRIMARY KEY (EndorsementPursuingDescriptorId)
);

-- Table tx.EnrollmentTrackingVerificationDescriptor --
CREATE TABLE tx.EnrollmentTrackingVerificationDescriptor (
    EnrollmentTrackingVerificationDescriptorId INT NOT NULL,
    CONSTRAINT EnrollmentTrackingVerificationDescriptor_PK PRIMARY KEY (EnrollmentTrackingVerificationDescriptorId)
);

-- Table tx.EvaluationDelayReasonDescriptor --
CREATE TABLE tx.EvaluationDelayReasonDescriptor (
    EvaluationDelayReasonDescriptorId INT NOT NULL,
    CONSTRAINT EvaluationDelayReasonDescriptor_PK PRIMARY KEY (EvaluationDelayReasonDescriptorId)
);

-- Table tx.ExtendedSchoolYearServicesAttendance --
CREATE TABLE tx.ExtendedSchoolYearServicesAttendance (
    FirstInstructionalSettingDescriptorId INT NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    TotalESYContactHoursInFirstInstructionalSetting DECIMAL(4, 1) NOT NULL,
    SecondInstructionalSettingDescriptorId INT NULL,
    TotalESYContactHoursInSecondInstructionalSetting DECIMAL(4, 1) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ExtendedSchoolYearServicesAttendance_PK PRIMARY KEY (FirstInstructionalSettingDescriptorId, GradeLevelDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.ExtendedSchoolYearServicesAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.FinancialAidApplicationDescriptor --
CREATE TABLE tx.FinancialAidApplicationDescriptor (
    FinancialAidApplicationDescriptorId INT NOT NULL,
    CONSTRAINT FinancialAidApplicationDescriptor_PK PRIMARY KEY (FinancialAidApplicationDescriptorId)
);

-- Table tx.FlexAttendanceProgramDescriptor --
CREATE TABLE tx.FlexAttendanceProgramDescriptor (
    FlexAttendanceProgramDescriptorId INT NOT NULL,
    CONSTRAINT FlexAttendanceProgramDescriptor_PK PRIMARY KEY (FlexAttendanceProgramDescriptorId)
);

-- Table tx.FlexibleBilingualESLProgramReportingPeriodAttendance --
CREATE TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance (
    BilingualESLFundingDescriptorId INT NOT NULL,
    CalendarCode VARCHAR(60) NOT NULL,
    FlexAttendanceProgramDescriptorId INT NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    FlexTotalEligBilingualESLDaysPresent DECIMAL(4, 1) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT FlexibleBilingualESLProgramReportingPeriodAttendance_PK PRIMARY KEY (BilingualESLFundingDescriptorId, CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.FlexibleCTEProgramReportingPeriodAttendance --
CREATE TABLE tx.FlexibleCTEProgramReportingPeriodAttendance (
    CalendarCode VARCHAR(60) NOT NULL,
    FlexAttendanceProgramDescriptorId INT NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    FlexAttendTotalCareerTechMinutesPresent INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT FlexibleCTEProgramReportingPeriodAttendance_PK PRIMARY KEY (CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.FlexibleCTEProgramReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.FlexibleRegularProgramReportingPeriodAttendance --
CREATE TABLE tx.FlexibleRegularProgramReportingPeriodAttendance (
    CalendarCode VARCHAR(60) NOT NULL,
    FlexAttendanceProgramDescriptorId INT NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    FlexAttendTotalEligibleMinutesPresent INT NOT NULL,
    FlexAttendTotalIneligibleMinutesPresent INT NOT NULL,
    FlexTotalEligPregRelSvcsDaysPresent DECIMAL(4, 1) NULL,
    FlexTotalEligSpEdMainstreamDaysPresent DECIMAL(4, 1) NULL,
    FlexTotalEligResidentialFacilityDaysPresent DECIMAL(4, 1) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT FlexibleRegularProgramReportingPeriodAttendance_PK PRIMARY KEY (CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.FlexibleRegularProgramReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.FlexibleSpecialEducationProgramReportingPeriodAttendance --
CREATE TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance (
    CalendarCode VARCHAR(60) NOT NULL,
    FlexAttendanceProgramDescriptorId INT NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    InstructionalSettingDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    FlexAttendDaysEligibleInInstrSetting DECIMAL(4, 1) NOT NULL,
    FlexAttendExcessMinutesInInstrSetting INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT FlexibleSpecialEducationProgramReportingPeriodAttendance_PK PRIMARY KEY (CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, InstructionalSettingDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.FosterCareTypeDescriptor --
CREATE TABLE tx.FosterCareTypeDescriptor (
    FosterCareTypeDescriptorId INT NOT NULL,
    CONSTRAINT FosterCareTypeDescriptor_PK PRIMARY KEY (FosterCareTypeDescriptorId)
);

-- Table tx.FrequencyOfServicesDescriptor --
CREATE TABLE tx.FrequencyOfServicesDescriptor (
    FrequencyOfServicesDescriptorId INT NOT NULL,
    CONSTRAINT FrequencyOfServicesDescriptor_PK PRIMARY KEY (FrequencyOfServicesDescriptorId)
);

-- Table tx.FunctionDescriptor --
CREATE TABLE tx.FunctionDescriptor (
    FunctionDescriptorId INT NOT NULL,
    CONSTRAINT FunctionDescriptor_PK PRIMARY KEY (FunctionDescriptorId)
);

-- Table tx.FundDescriptor --
CREATE TABLE tx.FundDescriptor (
    FundDescriptorId INT NOT NULL,
    CONSTRAINT FundDescriptor_PK PRIMARY KEY (FundDescriptorId)
);

-- Table tx.GenerationCodeDescriptor --
CREATE TABLE tx.GenerationCodeDescriptor (
    GenerationCodeDescriptorId INT NOT NULL,
    CONSTRAINT GenerationCodeDescriptor_PK PRIMARY KEY (GenerationCodeDescriptorId)
);

-- Table tx.GiftedTalentedProgramDescriptor --
CREATE TABLE tx.GiftedTalentedProgramDescriptor (
    GiftedTalentedProgramDescriptorId INT NOT NULL,
    CONSTRAINT GiftedTalentedProgramDescriptor_PK PRIMARY KEY (GiftedTalentedProgramDescriptorId)
);

-- Table tx.HearingAmplificationAccessDescriptor --
CREATE TABLE tx.HearingAmplificationAccessDescriptor (
    HearingAmplificationAccessDescriptorId INT NOT NULL,
    CONSTRAINT HearingAmplificationAccessDescriptor_PK PRIMARY KEY (HearingAmplificationAccessDescriptorId)
);

-- Table tx.HearingAmplificationDailyUseDescriptor --
CREATE TABLE tx.HearingAmplificationDailyUseDescriptor (
    HearingAmplificationDailyUseDescriptorId INT NOT NULL,
    CONSTRAINT HearingAmplificationDailyUseDescriptor_PK PRIMARY KEY (HearingAmplificationDailyUseDescriptorId)
);

-- Table tx.HearingAmplificationTypeDescriptor --
CREATE TABLE tx.HearingAmplificationTypeDescriptor (
    HearingAmplificationTypeDescriptorId INT NOT NULL,
    CONSTRAINT HearingAmplificationTypeDescriptor_PK PRIMARY KEY (HearingAmplificationTypeDescriptorId)
);

-- Table tx.HomelessStatusDescriptor --
CREATE TABLE tx.HomelessStatusDescriptor (
    HomelessStatusDescriptorId INT NOT NULL,
    CONSTRAINT HomelessStatusDescriptor_PK PRIMARY KEY (HomelessStatusDescriptorId)
);

-- Table tx.HoursSpentReceivingServicesDescriptor --
CREATE TABLE tx.HoursSpentReceivingServicesDescriptor (
    HoursSpentReceivingServicesDescriptorId INT NOT NULL,
    CONSTRAINT HoursSpentReceivingServicesDescriptor_PK PRIMARY KEY (HoursSpentReceivingServicesDescriptorId)
);

-- Table tx.IBCVendorDescriptor --
CREATE TABLE tx.IBCVendorDescriptor (
    IBCVendorDescriptorId INT NOT NULL,
    CONSTRAINT IBCVendorDescriptor_PK PRIMARY KEY (IBCVendorDescriptorId)
);

-- Table tx.InstructionalSettingDescriptor --
CREATE TABLE tx.InstructionalSettingDescriptor (
    InstructionalSettingDescriptorId INT NOT NULL,
    CONSTRAINT InstructionalSettingDescriptor_PK PRIMARY KEY (InstructionalSettingDescriptorId)
);

-- Table tx.LangAcqServicesProvidedDescriptor --
CREATE TABLE tx.LangAcqServicesProvidedDescriptor (
    LangAcqServicesProvidedDescriptorId INT NOT NULL,
    CONSTRAINT LangAcqServicesProvidedDescriptor_PK PRIMARY KEY (LangAcqServicesProvidedDescriptorId)
);

-- Table tx.LocalEducationAgencyExtension --
CREATE TABLE tx.LocalEducationAgencyExtension (
    LocalEducationAgencyId INT NOT NULL,
    TotalNumSchoolBoardRequests INT NULL,
    TotalCostSchoolBoardRequests INT NULL,
    FamilyEngagementPlanLink VARCHAR(200) NULL,
    ArmedServicesVocAptBatteryDescriptorId INT NULL,
    PKProgramEvaluationTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT LocalEducationAgencyExtension_PK PRIMARY KEY (LocalEducationAgencyId)
);
ALTER TABLE tx.LocalEducationAgencyExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.LocalEducationAgencyGiftedTalentedProgram --
CREATE TABLE tx.LocalEducationAgencyGiftedTalentedProgram (
    GiftedTalentedProgramDescriptorId INT NOT NULL,
    LocalEducationAgencyId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT LocalEducationAgencyGiftedTalentedProgram_PK PRIMARY KEY (GiftedTalentedProgramDescriptorId, LocalEducationAgencyId)
);
ALTER TABLE tx.LocalEducationAgencyGiftedTalentedProgram ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.LocalEducationAgencyProgramOfStudy --
CREATE TABLE tx.LocalEducationAgencyProgramOfStudy (
    LocalEducationAgencyId INT NOT NULL,
    ProgramOfStudyDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT LocalEducationAgencyProgramOfStudy_PK PRIMARY KEY (LocalEducationAgencyId, ProgramOfStudyDescriptorId)
);
ALTER TABLE tx.LocalEducationAgencyProgramOfStudy ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.MilitaryConnectedStudentDescriptor --
CREATE TABLE tx.MilitaryConnectedStudentDescriptor (
    MilitaryConnectedStudentDescriptorId INT NOT NULL,
    CONSTRAINT MilitaryConnectedStudentDescriptor_PK PRIMARY KEY (MilitaryConnectedStudentDescriptorId)
);

-- Table tx.NonCampusBasedInstructionDescriptor --
CREATE TABLE tx.NonCampusBasedInstructionDescriptor (
    NonCampusBasedInstructionDescriptorId INT NOT NULL,
    CONSTRAINT NonCampusBasedInstructionDescriptor_PK PRIMARY KEY (NonCampusBasedInstructionDescriptorId)
);

-- Table tx.NSLPTypeDescriptor --
CREATE TABLE tx.NSLPTypeDescriptor (
    NSLPTypeDescriptorId INT NOT NULL,
    CONSTRAINT NSLPTypeDescriptor_PK PRIMARY KEY (NSLPTypeDescriptorId)
);

-- Table tx.ObjectDescriptor --
CREATE TABLE tx.ObjectDescriptor (
    ObjectDescriptorId INT NOT NULL,
    CONSTRAINT ObjectDescriptor_PK PRIMARY KEY (ObjectDescriptorId)
);

-- Table tx.ParentalPermissionDescriptor --
CREATE TABLE tx.ParentalPermissionDescriptor (
    ParentalPermissionDescriptorId INT NOT NULL,
    CONSTRAINT ParentalPermissionDescriptor_PK PRIMARY KEY (ParentalPermissionDescriptorId)
);

-- Table tx.ParentExtension --
CREATE TABLE tx.ParentExtension (
    ParentUSI INT NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ParentExtension_PK PRIMARY KEY (ParentUSI)
);
ALTER TABLE tx.ParentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PayrollActivityDescriptor --
CREATE TABLE tx.PayrollActivityDescriptor (
    PayrollActivityDescriptorId INT NOT NULL,
    CONSTRAINT PayrollActivityDescriptor_PK PRIMARY KEY (PayrollActivityDescriptorId)
);

-- Table tx.PayrollExt --
CREATE TABLE tx.PayrollExt (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    FiscalYear INT NOT NULL,
    FunctionDescriptorId INT NOT NULL,
    FundDescriptorId INT NOT NULL,
    ObjectDescriptorId INT NOT NULL,
    Organization INT NOT NULL,
    PayrollActivityDescriptorId INT NOT NULL,
    ProgramIntentDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    PayrollAmount INT NOT NULL,
    EndDate DATE NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PayrollExt_PK PRIMARY KEY (BeginDate, EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, PayrollActivityDescriptorId, ProgramIntentDescriptorId, StaffUSI)
);
ALTER TABLE tx.PayrollExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.PayrollExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.PayrollExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.PKCurriculaDescriptor --
CREATE TABLE tx.PKCurriculaDescriptor (
    PKCurriculaDescriptorId INT NOT NULL,
    CONSTRAINT PKCurriculaDescriptor_PK PRIMARY KEY (PKCurriculaDescriptorId)
);

-- Table tx.PKFundingSourceDescriptor --
CREATE TABLE tx.PKFundingSourceDescriptor (
    PKFundingSourceDescriptorId INT NOT NULL,
    CONSTRAINT PKFundingSourceDescriptor_PK PRIMARY KEY (PKFundingSourceDescriptorId)
);

-- Table tx.PKProgramEvaluationTypeDescriptor --
CREATE TABLE tx.PKProgramEvaluationTypeDescriptor (
    PKProgramEvaluationTypeDescriptorId INT NOT NULL,
    CONSTRAINT PKProgramEvaluationTypeDescriptor_PK PRIMARY KEY (PKProgramEvaluationTypeDescriptorId)
);

-- Table tx.PKProgramTypeDescriptor --
CREATE TABLE tx.PKProgramTypeDescriptor (
    PKProgramTypeDescriptorId INT NOT NULL,
    CONSTRAINT PKProgramTypeDescriptor_PK PRIMARY KEY (PKProgramTypeDescriptorId)
);

-- Table tx.PKSchoolTypeDescriptor --
CREATE TABLE tx.PKSchoolTypeDescriptor (
    PKSchoolTypeDescriptorId INT NOT NULL,
    CONSTRAINT PKSchoolTypeDescriptor_PK PRIMARY KEY (PKSchoolTypeDescriptorId)
);

-- Table tx.PKStudentInstructionDescriptor --
CREATE TABLE tx.PKStudentInstructionDescriptor (
    PKStudentInstructionDescriptorId INT NOT NULL,
    CONSTRAINT PKStudentInstructionDescriptor_PK PRIMARY KEY (PKStudentInstructionDescriptorId)
);

-- Table tx.PKTeacherRequirementDescriptor --
CREATE TABLE tx.PKTeacherRequirementDescriptor (
    PKTeacherRequirementDescriptorId INT NOT NULL,
    CONSTRAINT PKTeacherRequirementDescriptor_PK PRIMARY KEY (PKTeacherRequirementDescriptorId)
);

-- Table tx.PostSecondaryCertificationLicensureDescriptor --
CREATE TABLE tx.PostSecondaryCertificationLicensureDescriptor (
    PostSecondaryCertificationLicensureDescriptorId INT NOT NULL,
    CONSTRAINT PostSecondaryCertificationLicensureDescriptor_PK PRIMARY KEY (PostSecondaryCertificationLicensureDescriptorId)
);

-- Table tx.PostSecondaryCertLicensureResultDescriptor --
CREATE TABLE tx.PostSecondaryCertLicensureResultDescriptor (
    PostSecondaryCertLicensureResultDescriptorId INT NOT NULL,
    CONSTRAINT PostSecondaryCertLicensureResultDescriptor_PK PRIMARY KEY (PostSecondaryCertLicensureResultDescriptorId)
);

-- Table tx.PPCDServiceLocationDescriptor --
CREATE TABLE tx.PPCDServiceLocationDescriptor (
    PPCDServiceLocationDescriptorId INT NOT NULL,
    CONSTRAINT PPCDServiceLocationDescriptor_PK PRIMARY KEY (PPCDServiceLocationDescriptorId)
);

-- Table tx.PreferredHomeCommunicationMethodDescriptor --
CREATE TABLE tx.PreferredHomeCommunicationMethodDescriptor (
    PreferredHomeCommunicationMethodDescriptorId INT NOT NULL,
    CONSTRAINT PreferredHomeCommunicationMethodDescriptor_PK PRIMARY KEY (PreferredHomeCommunicationMethodDescriptorId)
);

-- Table tx.PriorYearLeaver --
CREATE TABLE tx.PriorYearLeaver (
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    GradeLevelDescriptorId INT NULL,
    ExitWithdrawDate DATE NULL,
    ExitWithdrawTypeDescriptorId INT NOT NULL,
    LocalStudentId VARCHAR(9) NULL,
    StudentId VARCHAR(9) NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    SexDescriptorId INT NULL,
    HispanicLatinoEthnicity BOOLEAN NULL,
    AssociateDegreeIndicator BOOLEAN NULL,
    FinancialAidApplicationDescriptorId INT NULL,
    AsOfStatusLastFridayOctoberDescriptorId INT NOT NULL,
    ParentalPermissionDescriptorId INT NULL,
    LanguageInstructionProgramServiceDescriptorId INT NULL,
    TitleIPartAParticipantDescriptorId INT NULL,
    EconomicDisadvantageDescriptorId INT NULL,
    EmergentBilingualIndicatorDescriptorId INT NULL,
    FosterCareTypeDescriptorId INT NULL,
    HomelessStatusDescriptorId INT NULL,
    MilitaryConnectedStudentDescriptorId INT NULL,
    SpecialEducationStudent BOOLEAN NULL,
    PersonalTitlePrefix VARCHAR(30) NULL,
    FirstName VARCHAR(75) NOT NULL,
    MiddleName VARCHAR(75) NULL,
    LastSurname VARCHAR(75) NOT NULL,
    GenerationCodeSuffix VARCHAR(10) NULL,
    MaidenName VARCHAR(75) NULL,
    BirthDate DATE NOT NULL,
    BirthCity VARCHAR(30) NULL,
    BirthStateAbbreviationDescriptorId INT NULL,
    BirthInternationalProvince VARCHAR(150) NULL,
    BirthCountryDescriptorId INT NULL,
    DateEnteredUS DATE NULL,
    MultipleBirthStatus BOOLEAN NULL,
    BirthSexDescriptorId INT NULL,
    LanguageDescriptorId INT NULL,
    LanguageUseDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PriorYearLeaver_PK PRIMARY KEY (SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaver ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.PriorYearLeaver ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.PriorYearLeaver ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverAddress --
CREATE TABLE tx.PriorYearLeaverAddress (
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    StreetNumberName VARCHAR(150) NOT NULL,
    ApartmentRoomSuiteNumber VARCHAR(50) NULL,
    BuildingSiteNumber VARCHAR(20) NULL,
    City VARCHAR(30) NOT NULL,
    StateAbbreviationDescriptorId INT NOT NULL,
    PostalCode VARCHAR(17) NOT NULL,
    NameOfCounty VARCHAR(30) NULL,
    CountyFIPSCode VARCHAR(5) NULL,
    Latitude VARCHAR(20) NULL,
    Longitude VARCHAR(20) NULL,
    AddressTypeDescriptorId INT NOT NULL,
    DoNotPublishIndicator BOOLEAN NULL,
    CongressionalDistrict VARCHAR(30) NULL,
    LocaleDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverAddress_PK PRIMARY KEY (SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverAddress ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverAddressPeriod --
CREATE TABLE tx.PriorYearLeaverAddressPeriod (
    BeginDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverAddressPeriod_PK PRIMARY KEY (BeginDate, SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverAddressPeriod ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverElectronicMail --
CREATE TABLE tx.PriorYearLeaverElectronicMail (
    ElectronicMailAddress VARCHAR(128) NOT NULL,
    ElectronicMailTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    PrimaryEmailAddressIndicator BOOLEAN NULL,
    DoNotPublishIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverElectronicMail_PK PRIMARY KEY (ElectronicMailAddress, ElectronicMailTypeDescriptorId, SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverElectronicMail ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverEndorsementCompleted --
CREATE TABLE tx.PriorYearLeaverEndorsementCompleted (
    EndorsementCompletedDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverEndorsementCompleted_PK PRIMARY KEY (EndorsementCompletedDescriptorId, SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverEndorsementCompleted ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverGraduationSet --
CREATE TABLE tx.PriorYearLeaverGraduationSet (
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    DiplomaAwardDate DATE NOT NULL,
    DiplomaTypeDescriptorId INT NOT NULL,
    AchievementCategoryDescriptorId INT NOT NULL,
    IndividualGraduationCommitteeGraduateIndicator BOOLEAN NULL,
    MilitaryEnlistmentIndicator BOOLEAN NULL,
    FHSPDistingLevelGraduate BOOLEAN NULL,
    TexasFirstEarlyHSCompletionProgramDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverGraduationSet_PK PRIMARY KEY (SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverGraduationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverIndustryBasedCertificationSet --
CREATE TABLE tx.PriorYearLeaverIndustryBasedCertificationSet (
    DateCertTaken DATE NOT NULL,
    IBCVendorDescriptorId INT NOT NULL,
    PostSecondaryCertificationLicensureDescriptorId INT NOT NULL,
    PostSecondaryCertLicensureResultDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    IBCExamFeeAmount DECIMAL(5, 2) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverIndustryBasedCertificationSet_PK PRIMARY KEY (DateCertTaken, IBCVendorDescriptorId, PostSecondaryCertificationLicensureDescriptorId, PostSecondaryCertLicensureResultDescriptorId, SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverIndustryBasedCertificationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverParent --
CREATE TABLE tx.PriorYearLeaverParent (
    ParentUId VARCHAR(32) NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    PersonalTitlePrefix VARCHAR(30) NULL,
    FirstName VARCHAR(75) NOT NULL,
    MiddleName VARCHAR(75) NULL,
    LastSurname VARCHAR(75) NOT NULL,
    GenerationCodeSuffix VARCHAR(10) NULL,
    MaidenName VARCHAR(75) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PriorYearLeaverParent_PK PRIMARY KEY (ParentUId)
);
ALTER TABLE tx.PriorYearLeaverParent ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.PriorYearLeaverParent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.PriorYearLeaverParent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverParentAddress --
CREATE TABLE tx.PriorYearLeaverParentAddress (
    ParentUId VARCHAR(32) NOT NULL,
    StreetNumberName VARCHAR(150) NOT NULL,
    ApartmentRoomSuiteNumber VARCHAR(50) NULL,
    BuildingSiteNumber VARCHAR(20) NULL,
    City VARCHAR(30) NOT NULL,
    StateAbbreviationDescriptorId INT NOT NULL,
    PostalCode VARCHAR(17) NOT NULL,
    NameOfCounty VARCHAR(30) NULL,
    CountyFIPSCode VARCHAR(5) NULL,
    Latitude VARCHAR(20) NULL,
    Longitude VARCHAR(20) NULL,
    AddressTypeDescriptorId INT NOT NULL,
    DoNotPublishIndicator BOOLEAN NULL,
    CongressionalDistrict VARCHAR(30) NULL,
    LocaleDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverParentAddress_PK PRIMARY KEY (ParentUId)
);
ALTER TABLE tx.PriorYearLeaverParentAddress ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverParentAddressPeriod --
CREATE TABLE tx.PriorYearLeaverParentAddressPeriod (
    BeginDate DATE NOT NULL,
    ParentUId VARCHAR(32) NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverParentAddressPeriod_PK PRIMARY KEY (BeginDate, ParentUId)
);
ALTER TABLE tx.PriorYearLeaverParentAddressPeriod ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverParentElectronicMail --
CREATE TABLE tx.PriorYearLeaverParentElectronicMail (
    ParentUId VARCHAR(32) NOT NULL,
    ElectronicMailAddress VARCHAR(128) NOT NULL,
    ElectronicMailTypeDescriptorId INT NOT NULL,
    PrimaryEmailAddressIndicator BOOLEAN NULL,
    DoNotPublishIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverParentElectronicMail_PK PRIMARY KEY (ParentUId)
);
ALTER TABLE tx.PriorYearLeaverParentElectronicMail ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverParentPersonalIdentificationDocument --
CREATE TABLE tx.PriorYearLeaverParentPersonalIdentificationDocument (
    IdentificationDocumentUseDescriptorId INT NOT NULL,
    ParentUId VARCHAR(32) NOT NULL,
    PersonalInformationVerificationDescriptorId INT NOT NULL,
    DocumentTitle VARCHAR(60) NULL,
    DocumentExpirationDate DATE NULL,
    IssuerDocumentIdentificationCode VARCHAR(60) NULL,
    IssuerName VARCHAR(150) NULL,
    IssuerCountryDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverParentPersonalIdentificationDocument_PK PRIMARY KEY (IdentificationDocumentUseDescriptorId, ParentUId, PersonalInformationVerificationDescriptorId)
);
ALTER TABLE tx.PriorYearLeaverParentPersonalIdentificationDocument ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverParentTelephone --
CREATE TABLE tx.PriorYearLeaverParentTelephone (
    ParentUId VARCHAR(32) NOT NULL,
    TelephoneNumber VARCHAR(24) NOT NULL,
    TelephoneNumberTypeDescriptorId INT NOT NULL,
    OrderOfPriority INT NULL,
    TextMessageCapabilityIndicator BOOLEAN NULL,
    DoNotPublishIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverParentTelephone_PK PRIMARY KEY (ParentUId)
);
ALTER TABLE tx.PriorYearLeaverParentTelephone ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverPersonalIdentificationDocument --
CREATE TABLE tx.PriorYearLeaverPersonalIdentificationDocument (
    IdentificationDocumentUseDescriptorId INT NOT NULL,
    PersonalInformationVerificationDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    DocumentTitle VARCHAR(60) NULL,
    DocumentExpirationDate DATE NULL,
    IssuerDocumentIdentificationCode VARCHAR(60) NULL,
    IssuerName VARCHAR(150) NULL,
    IssuerCountryDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverPersonalIdentificationDocument_PK PRIMARY KEY (IdentificationDocumentUseDescriptorId, PersonalInformationVerificationDescriptorId, SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverPersonalIdentificationDocument ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverRace --
CREATE TABLE tx.PriorYearLeaverRace (
    RaceDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverRace_PK PRIMARY KEY (RaceDescriptorId, SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverRace ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverStudentCharacteristic --
CREATE TABLE tx.PriorYearLeaverStudentCharacteristic (
    SchoolId INT NOT NULL,
    StudentCharacteristicDescriptorId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverStudentCharacteristic_PK PRIMARY KEY (SchoolId, StudentCharacteristicDescriptorId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverStudentCharacteristic ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverStudentParentAssociation --
CREATE TABLE tx.PriorYearLeaverStudentParentAssociation (
    ParentUId VARCHAR(32) NOT NULL,
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    RelationDescriptorId INT NULL,
    ContactPriority INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PriorYearLeaverStudentParentAssociation_PK PRIMARY KEY (ParentUId, SchoolId, StudentUId)
);
ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.PriorYearLeaverStudentParentAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.PriorYearLeaverTelephone --
CREATE TABLE tx.PriorYearLeaverTelephone (
    SchoolId INT NOT NULL,
    StudentUId VARCHAR(32) NOT NULL,
    TelephoneNumber VARCHAR(24) NOT NULL,
    TelephoneNumberTypeDescriptorId INT NOT NULL,
    OrderOfPriority INT NULL,
    TextMessageCapabilityIndicator BOOLEAN NULL,
    DoNotPublishIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT PriorYearLeaverTelephone_PK PRIMARY KEY (SchoolId, StudentUId, TelephoneNumber, TelephoneNumberTypeDescriptorId)
);
ALTER TABLE tx.PriorYearLeaverTelephone ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.ProgramIntentDescriptor --
CREATE TABLE tx.ProgramIntentDescriptor (
    ProgramIntentDescriptorId INT NOT NULL,
    CONSTRAINT ProgramIntentDescriptor_PK PRIMARY KEY (ProgramIntentDescriptorId)
);

-- Table tx.ProgramOfStudyDescriptor --
CREATE TABLE tx.ProgramOfStudyDescriptor (
    ProgramOfStudyDescriptorId INT NOT NULL,
    CONSTRAINT ProgramOfStudyDescriptor_PK PRIMARY KEY (ProgramOfStudyDescriptorId)
);

-- Table tx.RegionalDaySchoolProgramForDeafDescriptor --
CREATE TABLE tx.RegionalDaySchoolProgramForDeafDescriptor (
    RegionalDaySchoolProgramForDeafDescriptorId INT NOT NULL,
    CONSTRAINT RegionalDaySchoolProgramForDeafDescriptor_PK PRIMARY KEY (RegionalDaySchoolProgramForDeafDescriptorId)
);

-- Table tx.ReportAssessmentTypeDescriptor --
CREATE TABLE tx.ReportAssessmentTypeDescriptor (
    ReportAssessmentTypeDescriptorId INT NOT NULL,
    CONSTRAINT ReportAssessmentTypeDescriptor_PK PRIMARY KEY (ReportAssessmentTypeDescriptorId)
);

-- Table tx.ReportingPeriodDescriptor --
CREATE TABLE tx.ReportingPeriodDescriptor (
    ReportingPeriodDescriptorId INT NOT NULL,
    CONSTRAINT ReportingPeriodDescriptor_PK PRIMARY KEY (ReportingPeriodDescriptorId)
);

-- Table tx.ReportingPeriodExt --
CREATE TABLE tx.ReportingPeriodExt (
    ReportingPeriodDescriptorId INT NOT NULL,
    Date DATE NOT NULL,
    CalendarCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    BeginDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    NumberDaysTaught INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ReportingPeriodExt_PK PRIMARY KEY (ReportingPeriodDescriptorId)
);
ALTER TABLE tx.ReportingPeriodExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.ReportingPeriodExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.ReportingPeriodExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.RestraintEventExtension --
CREATE TABLE tx.RestraintEventExtension (
    RestraintEventIdentifier VARCHAR(20) NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    RestraintStaffTypeDescriptorId INT NULL,
    NonMembershipDisciplineRestraintIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT RestraintEventExtension_PK PRIMARY KEY (RestraintEventIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE tx.RestraintEventExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.RestraintStaffTypeDescriptor --
CREATE TABLE tx.RestraintStaffTypeDescriptor (
    RestraintStaffTypeDescriptorId INT NOT NULL,
    CONSTRAINT RestraintStaffTypeDescriptor_PK PRIMARY KEY (RestraintStaffTypeDescriptorId)
);

-- Table tx.SchoolCampusEnrollmentTypeSet --
CREATE TABLE tx.SchoolCampusEnrollmentTypeSet (
    BeginDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    CampusEnrollmentTypeDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolCampusEnrollmentTypeSet_PK PRIMARY KEY (BeginDate, SchoolId)
);
ALTER TABLE tx.SchoolCampusEnrollmentTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolCharterWaitlistSet --
CREATE TABLE tx.SchoolCharterWaitlistSet (
    SchoolId INT NOT NULL,
    NumberCharterStudentsEnrolled INT NOT NULL,
    CharterEducationalEnrollmentCapacity INT NOT NULL,
    CharterAdmissionWaitlist BOOLEAN NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolCharterWaitlistSet_PK PRIMARY KEY (SchoolId)
);
ALTER TABLE tx.SchoolCharterWaitlistSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolELOSet --
CREATE TABLE tx.SchoolELOSet (
    ELOTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolELOSet_PK PRIMARY KEY (ELOTypeDescriptorId, SchoolId)
);
ALTER TABLE tx.SchoolELOSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolELOSetELOActivitySet --
CREATE TABLE tx.SchoolELOSetELOActivitySet (
    ELOActivityDescriptorId INT NOT NULL,
    ELOTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    ELODaysScheduledPerYear INT NOT NULL,
    ELOMinutesScheduledPerDay INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolELOSetELOActivitySet_PK PRIMARY KEY (ELOActivityDescriptorId, ELOTypeDescriptorId, SchoolId)
);
ALTER TABLE tx.SchoolELOSetELOActivitySet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolExtension --
CREATE TABLE tx.SchoolExtension (
    SchoolId INT NOT NULL,
    PKFullDayWaiver BOOLEAN NULL,
    AdditionalDaysProgram BOOLEAN NULL,
    NumberOfBullyingIncidents INT NULL,
    NumberOfCyberbullyingIncidents INT NULL,
    ExpandedLearningOpportunity BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolExtension_PK PRIMARY KEY (SchoolId)
);
ALTER TABLE tx.SchoolExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolNSLPTypeSet --
CREATE TABLE tx.SchoolNSLPTypeSet (
    BeginDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    NSLPTypeDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolNSLPTypeSet_PK PRIMARY KEY (BeginDate, SchoolId)
);
ALTER TABLE tx.SchoolNSLPTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SectionSet --
CREATE TABLE tx.SectionSet (
    BeginDate DATE NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    PopulationServedDescriptorId INT NULL,
    GradeLevelDescriptorId INT NULL,
    CourseSequenceDescriptorId INT NOT NULL,
    NonCampusBasedInstructionDescriptorId INT NULL,
    PKCurriculaDescriptorId INT NULL,
    HighQualityPKProgram BOOLEAN NULL,
    PKStudentInstructionDescriptorId INT NULL,
    PKSchoolTypeDescriptorId INT NULL,
    ClassTypeDescriptorId INT NULL,
    CTEHours INT NULL,
    EndDate DATE NULL,
    ChildCareOperationNumber VARCHAR(8) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionSet_PK PRIMARY KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
);
ALTER TABLE tx.SectionSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SharedServiceArrangementExt --
CREATE TABLE tx.SharedServiceArrangementExt (
    EducationOrganizationId INT NOT NULL,
    FiscalYear INT NOT NULL,
    FundDescriptorId INT NOT NULL,
    SSAMemberDistrictId INT NOT NULL,
    SSATypeDescriptorId INT NOT NULL,
    ActualAmount DECIMAL(10, 0) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SharedServiceArrangementExt_PK PRIMARY KEY (EducationOrganizationId, FiscalYear, FundDescriptorId, SSAMemberDistrictId, SSATypeDescriptorId)
);
ALTER TABLE tx.SharedServiceArrangementExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.SharedServiceArrangementExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.SharedServiceArrangementExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.SharedServiceArrangementStaffDescriptor --
CREATE TABLE tx.SharedServiceArrangementStaffDescriptor (
    SharedServiceArrangementStaffDescriptorId INT NOT NULL,
    CONSTRAINT SharedServiceArrangementStaffDescriptor_PK PRIMARY KEY (SharedServiceArrangementStaffDescriptorId)
);

-- Table tx.SpecialEducationProgramReportingPeriodAttendance --
CREATE TABLE tx.SpecialEducationProgramReportingPeriodAttendance (
    CalendarCode VARCHAR(60) NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    InstructionalSettingDescriptorId INT NOT NULL,
    RegionalDaySchoolProgramForDeafDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    EligibleDaysPresentInInstrSetting DECIMAL(4, 1) NULL,
    RSEligibleDaysPresentInInstrSetting DECIMAL(4, 1) NULL,
    RAEligibleDaysPresentInInstrSetting DECIMAL(4, 1) NULL,
    ExcessHoursInInstructionalSetting DECIMAL(4, 1) NULL,
    RSExcessHoursInInstructionalSetting DECIMAL(4, 1) NULL,
    RAExcessHoursInInstructionalSetting DECIMAL(4, 1) NULL,
    LEAOfRDSPDService INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SpecialEducationProgramReportingPeriodAttendance_PK PRIMARY KEY (CalendarCode, GradeLevelDescriptorId, InstructionalSettingDescriptorId, RegionalDaySchoolProgramForDeafDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.SpecialEducationProgramReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.SpecialProgramsReportingPeriodAttendance --
CREATE TABLE tx.SpecialProgramsReportingPeriodAttendance (
    CalendarCode VARCHAR(60) NOT NULL,
    GradeLevelDescriptorId INT NOT NULL,
    ReportingPeriodDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    NumberDaysTaught INT NOT NULL,
    TotalEligPregRelSvcsDaysPresent DECIMAL(4, 1) NULL,
    RSTotalEligPregRelSvcsDaysPresent DECIMAL(4, 1) NULL,
    RATotalEligPregRelSvcsDaysPresent DECIMAL(4, 1) NULL,
    TotalEligSpEdMainstreamDaysPresent DECIMAL(4, 1) NULL,
    RSTotalEligSpEdMainstreamDaysPresent DECIMAL(4, 1) NULL,
    RATotalEligSpEdMainstreamDaysPresent DECIMAL(4, 1) NULL,
    TotalEligResidentialFacilityDaysPresent DECIMAL(4, 1) NULL,
    RSTotalEligResidentialFacilityDaysPresent DECIMAL(4, 1) NULL,
    RATotalEligResidentialFacilityDaysPresent DECIMAL(4, 1) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SpecialProgramsReportingPeriodAttendance_PK PRIMARY KEY (CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI)
);
ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.SpecialProgramsReportingPeriodAttendance ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.SSAOrgAssociationExt --
CREATE TABLE tx.SSAOrgAssociationExt (
    EducationOrganizationId INT NOT NULL,
    FiscalAgentDistrictId INT NOT NULL,
    SSATypeDescriptorId INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SSAOrgAssociationExt_PK PRIMARY KEY (EducationOrganizationId, FiscalAgentDistrictId, SSATypeDescriptorId)
);
ALTER TABLE tx.SSAOrgAssociationExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.SSAOrgAssociationExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.SSAOrgAssociationExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.SSATypeDescriptor --
CREATE TABLE tx.SSATypeDescriptor (
    SSATypeDescriptorId INT NOT NULL,
    CONSTRAINT SSATypeDescriptor_PK PRIMARY KEY (SSATypeDescriptorId)
);

-- Table tx.StaffEducationOrganizationAssignmentAssociationExtension --
CREATE TABLE tx.StaffEducationOrganizationAssignmentAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StaffClassificationDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    SharedServiceArrangementStaffDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationAssignmentAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffUSI)
);
ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet --
CREATE TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StaffClassificationDescriptorId INT NOT NULL,
    StaffServiceBeginDate DATE NOT NULL,
    StaffServiceDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    GradeLevelDescriptorId INT NULL,
    PopulationServedDescriptorId INT NULL,
    MonthlyMinutes INT NULL,
    StaffServiceEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationAssignmentAssociationSta_0bf4c3_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffServiceBeginDate, StaffServiceDescriptorId, StaffUSI)
);
ALTER TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 --
CREATE TABLE tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 (
    AuxiliaryRoleIdDescriptorId INT NOT NULL,
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationAux_116d82_PK PRIMARY KEY (AuxiliaryRoleIdDescriptorId, BeginDate, EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffEducationOrganizationEmploymentAssociationExtension --
CREATE TABLE tx.StaffEducationOrganizationEmploymentAssociationExtension (
    EducationOrganizationId INT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    PercentDayEmployed INT NULL,
    NumberDaysEmployed INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE tx.StaffEducationOrganizationEmploymentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffExtension --
CREATE TABLE tx.StaffExtension (
    StaffUSI INT NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    TotalYearsProfExperience INT NULL,
    TotalYearsPriorTeachingExperience INT NULL,
    CreditableYearOfService BOOLEAN NULL,
    YearsExperienceInDistrict INT NULL,
    PKTeacherRequirementDescriptorId INT NULL,
    StaffId VARCHAR(9) NOT NULL,
    AdditionalDaysProgramTeacher BOOLEAN NULL,
    StaffDoNotReportTSDS BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffExtension_PK PRIMARY KEY (StaffUSI)
);
ALTER TABLE tx.StaffExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffParaprofessionalCertificationSet --
CREATE TABLE tx.StaffParaprofessionalCertificationSet (
    StaffUSI INT NOT NULL,
    ParaprofessionalCertification BOOLEAN NULL,
    BeginDate DATE NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffParaprofessionalCertificationSet_PK PRIMARY KEY (StaffUSI)
);
ALTER TABLE tx.StaffParaprofessionalCertificationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffSectionAssociationExtension --
CREATE TABLE tx.StaffSectionAssociationExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StaffUSI INT NOT NULL,
    NumberOfStudentInClass INT NULL,
    MonthlyMinutes INT NULL,
    NumberDaysTaughtWeek1 INT NULL,
    NumberDaysTaughtWeek2 INT NULL,
    NumberDaysTaughtWeek3 INT NULL,
    NumberDaysTaughtWeek4 INT NULL,
    NumberMinutesTaughtWeek1 INT NULL,
    NumberMinutesTaughtWeek2 INT NULL,
    NumberMinutesTaughtWeek3 INT NULL,
    NumberMinutesTaughtWeek4 INT NULL,
    SharedServiceArrangementStaffDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffSectionAssociationExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StaffUSI)
);
ALTER TABLE tx.StaffSectionAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffServiceDescriptor --
CREATE TABLE tx.StaffServiceDescriptor (
    StaffServiceDescriptorId INT NOT NULL,
    CONSTRAINT StaffServiceDescriptor_PK PRIMARY KEY (StaffServiceDescriptorId)
);

-- Table tx.StaffTeacherIncentiveAllotmentDesignation --
CREATE TABLE tx.StaffTeacherIncentiveAllotmentDesignation (
    StaffUSI INT NOT NULL,
    TeacherIncentiveAllotmentDesignationDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffTeacherIncentiveAllotmentDesignation_PK PRIMARY KEY (StaffUSI, TeacherIncentiveAllotmentDesignationDescriptorId)
);
ALTER TABLE tx.StaffTeacherIncentiveAllotmentDesignation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffTypeDescriptor --
CREATE TABLE tx.StaffTypeDescriptor (
    StaffTypeDescriptorId INT NOT NULL,
    CONSTRAINT StaffTypeDescriptor_PK PRIMARY KEY (StaffTypeDescriptorId)
);

-- Table tx.StaffTypeSet --
CREATE TABLE tx.StaffTypeSet (
    BeginDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    StaffTypeDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffTypeSet_PK PRIMARY KEY (BeginDate, StaffUSI)
);
ALTER TABLE tx.StaffTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentAcademicRecordDiplomaExtension --
CREATE TABLE tx.StudentAcademicRecordDiplomaExtension (
    DiplomaAwardDate DATE NOT NULL,
    DiplomaTypeDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    TermDescriptorId INT NOT NULL,
    IndividualGraduationCommitteeGraduateIndicator BOOLEAN NULL,
    MilitaryEnlistmentIndicator BOOLEAN NULL,
    FHSPDistingLevelGraduate BOOLEAN NULL,
    FinancialAidApplicationDescriptorId INT NULL,
    TexasFirstEarlyHSCompletionProgramDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAcademicRecordDiplomaExtension_PK PRIMARY KEY (DiplomaAwardDate, DiplomaTypeDescriptorId, EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
);
ALTER TABLE tx.StudentAcademicRecordDiplomaExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentAcademicRecordEndorsementCompleted --
CREATE TABLE tx.StudentAcademicRecordEndorsementCompleted (
    EducationOrganizationId INT NOT NULL,
    EndorsementCompletedDescriptorId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    TermDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAcademicRecordEndorsementCompleted_PK PRIMARY KEY (EducationOrganizationId, EndorsementCompletedDescriptorId, SchoolYear, StudentUSI, TermDescriptorId)
);
ALTER TABLE tx.StudentAcademicRecordEndorsementCompleted ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentAcademicRecordEndorsementPursuing --
CREATE TABLE tx.StudentAcademicRecordEndorsementPursuing (
    EducationOrganizationId INT NOT NULL,
    EndorsementPursuingDescriptorId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    TermDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAcademicRecordEndorsementPursuing_PK PRIMARY KEY (EducationOrganizationId, EndorsementPursuingDescriptorId, SchoolYear, StudentUSI, TermDescriptorId)
);
ALTER TABLE tx.StudentAcademicRecordEndorsementPursuing ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentAcademicRecordExtension --
CREATE TABLE tx.StudentAcademicRecordExtension (
    EducationOrganizationId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    TermDescriptorId INT NOT NULL,
    IndividualGraduationCommitteeReview BOOLEAN NULL,
    AssociateDegreeIndicator BOOLEAN NULL,
    FHSPParticipant BOOLEAN NULL,
    FHSPDistingLevelParticipant BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAcademicRecordExtension_PK PRIMARY KEY (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
);
ALTER TABLE tx.StudentAcademicRecordExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentAcademicRecordIndustryBasedCertificationSet --
CREATE TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet (
    DateCertTaken DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    IBCVendorDescriptorId INT NOT NULL,
    PostSecondaryCertificationLicensureDescriptorId INT NOT NULL,
    PostSecondaryCertLicensureResultDescriptorId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    TermDescriptorId INT NOT NULL,
    IBCExamFeeAmount DECIMAL(5, 2) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAcademicRecordIndustryBasedCertificationSet_PK PRIMARY KEY (DateCertTaken, EducationOrganizationId, IBCVendorDescriptorId, PostSecondaryCertificationLicensureDescriptorId, PostSecondaryCertLicensureResultDescriptorId, SchoolYear, StudentUSI, TermDescriptorId)
);
ALTER TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentApplication --
CREATE TABLE tx.StudentApplication (
    ApplicationIdentifier VARCHAR(10) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUId VARCHAR(10) NULL,
    SexDescriptorId INT NOT NULL,
    EntryGradeLevelDescriptorId INT NOT NULL,
    ApplicationDate DATE NOT NULL,
    ApplicationTypeDescriptorId INT NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    StudentId VARCHAR(9) NOT NULL,
    PersonalTitlePrefix VARCHAR(30) NULL,
    FirstName VARCHAR(75) NOT NULL,
    MiddleName VARCHAR(75) NULL,
    LastSurname VARCHAR(75) NOT NULL,
    GenerationCodeSuffix VARCHAR(10) NULL,
    MaidenName VARCHAR(75) NULL,
    BirthDate DATE NOT NULL,
    BirthCity VARCHAR(30) NULL,
    BirthStateAbbreviationDescriptorId INT NULL,
    BirthInternationalProvince VARCHAR(150) NULL,
    BirthCountryDescriptorId INT NULL,
    DateEnteredUS DATE NULL,
    MultipleBirthStatus BOOLEAN NULL,
    BirthSexDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentApplication_PK PRIMARY KEY (ApplicationIdentifier, EducationOrganizationId, SchoolYear)
);
ALTER TABLE tx.StudentApplication ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.StudentApplication ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.StudentApplication ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.StudentApplicationPersonalIdentificationDocument --
CREATE TABLE tx.StudentApplicationPersonalIdentificationDocument (
    ApplicationIdentifier VARCHAR(10) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    IdentificationDocumentUseDescriptorId INT NOT NULL,
    PersonalInformationVerificationDescriptorId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    DocumentTitle VARCHAR(60) NULL,
    DocumentExpirationDate DATE NULL,
    IssuerDocumentIdentificationCode VARCHAR(60) NULL,
    IssuerName VARCHAR(150) NULL,
    IssuerCountryDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentApplicationPersonalIdentificationDocument_PK PRIMARY KEY (ApplicationIdentifier, EducationOrganizationId, IdentificationDocumentUseDescriptorId, PersonalInformationVerificationDescriptorId, SchoolYear)
);
ALTER TABLE tx.StudentApplicationPersonalIdentificationDocument ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentAttributionDescriptor --
CREATE TABLE tx.StudentAttributionDescriptor (
    StudentAttributionDescriptorId INT NOT NULL,
    CONSTRAINT StudentAttributionDescriptor_PK PRIMARY KEY (StudentAttributionDescriptorId)
);

-- Table tx.StudentCensusBlockGroupSet --
CREATE TABLE tx.StudentCensusBlockGroupSet (
    BeginDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    StudentCensusBlockGroup VARCHAR(12) NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCensusBlockGroupSet_PK PRIMARY KEY (BeginDate, StudentUSI)
);
ALTER TABLE tx.StudentCensusBlockGroupSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentCrisisEventSet --
CREATE TABLE tx.StudentCrisisEventSet (
    BeginDate DATE NOT NULL,
    CrisisEventDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCrisisEventSet_PK PRIMARY KEY (BeginDate, CrisisEventDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentCrisisEventSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationDyslexiaRiskSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationDyslexiaRiskSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    DyslexiaRiskDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationDyslexiaRiskSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationDyslexiaRiskSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationDyslexiaServicesSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationDyslexiaServicesSet (
    BeginDate DATE NOT NULL,
    DyslexiaServicesDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationDyslexiaServicesSet_PK PRIMARY KEY (BeginDate, DyslexiaServicesDescriptorId, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationDyslexiaServicesSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EarlyReadingIndicatorDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationEarlyReadin_314fe6_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EconomicDisadvantageDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationEconomicDis_c93358_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationEmergentBilingualSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EmergentBilingualIndicatorDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationEmergentBilingualSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationFosterCareTypeSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    FosterCareTypeDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationFosterCareTypeSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationHomelessStatusSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    HomelessStatusDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationHomelessStatusSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 --
CREATE TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    MilitaryConnectedStudentDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationMilitaryCon_662c97_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationPKFundingSourceSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationPKFundingSourceSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    OrderOfPKFundingSource INT NOT NULL,
    StudentUSI INT NOT NULL,
    PKFundingSourceDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationPKFundingSourceSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, OrderOfPKFundingSource, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationPKFundingSourceSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationPKProgramTypeSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationPKProgramTypeSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    PKProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationPKProgramTypeSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, PKProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationPKProgramTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationTruancySet --
CREATE TABLE tx.StudentEducationOrganizationAssociationTruancySet (
    DateMet DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    TruancyDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationTruancySet_PK PRIMARY KEY (DateMet, EducationOrganizationId, StudentUSI, TruancyDescriptorId)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationTruancySet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    UnaccompaniedYouthDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationUnaccompaniedYouthSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b --
CREATE TABLE tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    UnschooledAsyleeRefugeeDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationUnschooledA_9fcf9b_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI)
);
ALTER TABLE tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentExtension --
CREATE TABLE tx.StudentExtension (
    StudentUSI INT NOT NULL,
    LocalStudentId VARCHAR(9) NULL,
    StudentId VARCHAR(9) NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    AsOfStatusLastFridayOctoberDescriptorId INT NULL,
    AsOfStatusLastDayEnrollmentDescriptorId INT NULL,
    StudentDoNotReportTSDS BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentExtension_PK PRIMARY KEY (StudentUSI)
);
ALTER TABLE tx.StudentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 --
CREATE TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ParentalPermissionSetBeginDate DATE NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ParentalPermissionDescriptorId INT NOT NULL,
    ParentalPermissionSetEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentLanguageInstructionProgramAssociationParent_710c81_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ParentalPermissionSetBeginDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentProgramAttendanceEventExtension --
CREATE TABLE tx.StudentProgramAttendanceEventExtension (
    AttendanceEventCategoryDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    EventDate DATE NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    InstructionalSettingDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentProgramAttendanceEventExtension_PK PRIMARY KEY (AttendanceEventCategoryDescriptorId, EducationOrganizationId, EventDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentProgramAttendanceEventExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSchoolAssociationExtension --
CREATE TABLE tx.StudentSchoolAssociationExtension (
    EntryDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ADAEligibilityDescriptorId INT NULL,
    StudentAttributionDescriptorId INT NULL,
    EnrollmentTrackingVerificationDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationExtension_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI)
);
ALTER TABLE tx.StudentSchoolAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSectionAssociationExtension --
CREATE TABLE tx.StudentSectionAssociationExtension (
    BeginDate DATE NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    CourseCompletionIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSectionAssociationExtension_PK PRIMARY KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
);
ALTER TABLE tx.StudentSectionAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationAssessment --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationAssessment (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ToolOrAssessmentUsedDescriptorId INT NOT NULL,
    AssessmentResultsObtainedDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationAssessment_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, ToolOrAssessmentUsedDescriptorId)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationAssessment ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationDisabilitySet --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationDisabilitySet (
    BeginDate DATE NOT NULL,
    DisabilityDescriptorId INT NOT NULL,
    DisabilitySetBeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EligibilityDateDisabilities DATE NULL,
    DisabilitySetEndDate DATE NULL,
    OrderOfDisability INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationDisabilitySet_PK PRIMARY KEY (BeginDate, DisabilityDescriptorId, DisabilitySetBeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationDisabilitySet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationExtension --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    PreferredHomeCommunicationMethodDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationHearingAmplification --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    HearingAmplificationTypeDescriptorId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    HearingAmplificationAccessDescriptorId INT NULL,
    HearingAmplificationDailyUseDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationHearingAm_e27839_PK PRIMARY KEY (BeginDate, EducationOrganizationId, HearingAmplificationTypeDescriptorId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    InstructionalSettingBeginDate DATE NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    InstructionalSettingDescriptorId INT NOT NULL,
    InstructionalSettingEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationInstructi_718180_PK PRIMARY KEY (BeginDate, EducationOrganizationId, InstructionalSettingBeginDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationLanguageAcquisition --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    LangAcqServicesProvidedDescriptorId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    FrequencyOfServicesDescriptorId INT NOT NULL,
    HoursSpentReceivingServicesDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationLanguageAcquisition_PK PRIMARY KEY (BeginDate, EducationOrganizationId, LangAcqServicesProvidedDescriptorId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7 --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7 (
    AttendanceZoneCampus INT NOT NULL,
    BeginDate DATE NOT NULL,
    DateEnteredRF DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    ResidentialFacilityId INT NOT NULL,
    StudentResFacAssocSetBeginDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    StudentResFacAssocSetEndDate DATE NULL,
    EducatedAtResidentialFacility BOOLEAN NULL,
    SurrogateParentAssigned BOOLEAN NULL,
    NumberOtherStudentsAssignedSameSurrogateParent INT NULL,
    ResidentialFacilityStudentSchoolDayLength INT NULL,
    CampusIdOfEnrollmentSchoolDayLength INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationStudentRe_36c8d7_PK PRIMARY KEY (AttendanceZoneCampus, BeginDate, DateEnteredRF, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, ResidentialFacilityId, StudentResFacAssocSetBeginDate, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationStudentResident_727129 --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_727129 (
    BeginDate DATE NOT NULL,
    DateEnteredRF DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    ResidentialFacilityId INT NOT NULL,
    StudentUSI INT NOT NULL,
    DateExitedRF DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationStudentRe_727129_PK PRIMARY KEY (BeginDate, DateEnteredRF, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, ResidentialFacilityId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_727129 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramBeginDate DATE NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    MedicallyFragile BOOLEAN NULL,
    MultiplyDisabled BOOLEAN NULL,
    LEAOfRDSPDService INT NULL,
    ChildCountFundingDescriptorId INT NULL,
    PPCDServiceLocationDescriptorId INT NULL,
    ProgramEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationStudentSP_54e394_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramBeginDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramEligibilityAssociation --
CREATE TABLE tx.StudentSpecialEducationProgramEligibilityAssociation (
    EducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ConsentToEvaluationReceivedDate DATE NULL,
    EligibilityEvaluationDate DATE NULL,
    EvaluationDelayDays INT NULL,
    EvaluationDelayReasonDescriptorId INT NULL,
    EligibilityDeterminationDate DATE NULL,
    IDEAIndicator BOOLEAN NULL,
    EligibilityDelayReasonDescriptorId INT NULL,
    OriginalECIServicesDate DATE NULL,
    TransitionNotificationDate DATE NULL,
    TransitionConferenceDate DATE NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramEligibilityAssociation_PK PRIMARY KEY (EducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.StudentSpecialEducationProgramEligibilityAssociation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.StudentTitleIPartAProgramAssociationSet --
CREATE TABLE tx.StudentTitleIPartAProgramAssociationSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentTitleIPartAProgramAssociationSetBeginDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    TitleIPartAParticipantDescriptorId INT NOT NULL,
    StudentTitleIPartAProgramAssociationSetEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentTitleIPartAProgramAssociationSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentTitleIPartAProgramAssociationSetBeginDate, StudentUSI)
);
ALTER TABLE tx.StudentTitleIPartAProgramAssociationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.TeacherIncentiveAllotmentDesignationDescriptor --
CREATE TABLE tx.TeacherIncentiveAllotmentDesignationDescriptor (
    TeacherIncentiveAllotmentDesignationDescriptorId INT NOT NULL,
    CONSTRAINT TeacherIncentiveAllotmentDesignationDescriptor_PK PRIMARY KEY (TeacherIncentiveAllotmentDesignationDescriptorId)
);

-- Table tx.TexasFirstEarlyHSCompletionProgramDescriptor --
CREATE TABLE tx.TexasFirstEarlyHSCompletionProgramDescriptor (
    TexasFirstEarlyHSCompletionProgramDescriptorId INT NOT NULL,
    CONSTRAINT TexasFirstEarlyHSCompletionProgramDescriptor_PK PRIMARY KEY (TexasFirstEarlyHSCompletionProgramDescriptorId)
);

-- Table tx.TitleOfAssessmentDescriptor --
CREATE TABLE tx.TitleOfAssessmentDescriptor (
    TitleOfAssessmentDescriptorId INT NOT NULL,
    CONSTRAINT TitleOfAssessmentDescriptor_PK PRIMARY KEY (TitleOfAssessmentDescriptorId)
);

-- Table tx.ToolOrAssessmentUsedDescriptor --
CREATE TABLE tx.ToolOrAssessmentUsedDescriptor (
    ToolOrAssessmentUsedDescriptorId INT NOT NULL,
    CONSTRAINT ToolOrAssessmentUsedDescriptor_PK PRIMARY KEY (ToolOrAssessmentUsedDescriptorId)
);

-- Table tx.TruancyDescriptor --
CREATE TABLE tx.TruancyDescriptor (
    TruancyDescriptorId INT NOT NULL,
    CONSTRAINT TruancyDescriptor_PK PRIMARY KEY (TruancyDescriptorId)
);

-- Table tx.UnaccompaniedYouthDescriptor --
CREATE TABLE tx.UnaccompaniedYouthDescriptor (
    UnaccompaniedYouthDescriptorId INT NOT NULL,
    CONSTRAINT UnaccompaniedYouthDescriptor_PK PRIMARY KEY (UnaccompaniedYouthDescriptorId)
);

-- Table tx.UnschooledAsyleeRefugeeDescriptor --
CREATE TABLE tx.UnschooledAsyleeRefugeeDescriptor (
    UnschooledAsyleeRefugeeDescriptorId INT NOT NULL,
    CONSTRAINT UnschooledAsyleeRefugeeDescriptor_PK PRIMARY KEY (UnschooledAsyleeRefugeeDescriptorId)
);

