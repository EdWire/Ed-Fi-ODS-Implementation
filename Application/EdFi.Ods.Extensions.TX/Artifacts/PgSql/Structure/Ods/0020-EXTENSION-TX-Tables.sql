-- Table tx.ActualExt --
CREATE TABLE tx.ActualExt (
    EducationOrganizationId INT NOT NULL,
    FiscalYear INT NOT NULL,
    FunctionDescriptorId INT NOT NULL,
    FundDescriptorId INT NOT NULL,
    ObjectDescriptorId INT NOT NULL,
    Organization INT NOT NULL,
    ProgramIntentDescriptorId INT NOT NULL,
    ActualAmount INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT ActualExt_PK PRIMARY KEY (EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId)
); 
ALTER TABLE tx.ActualExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.ActualExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.ActualExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.ADAEligibilityDescriptor --
CREATE TABLE tx.ADAEligibilityDescriptor (
    ADAEligibilityDescriptorId INT NOT NULL,
    CONSTRAINT ADAEligibilityDescriptor_PK PRIMARY KEY (ADAEligibilityDescriptorId)
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

-- Table tx.AsOfStatusALeaver --
CREATE TABLE tx.AsOfStatusALeaver (
    SchoolId INT NOT NULL,
    StudentUID VARCHAR(10) NOT NULL,
    SexDescriptorId INT NULL,
    HispanicLatinoEthnicity BOOLEAN NULL,
    GradeLevelDescriptorId INT NULL,
    ExitWithdrawTypeDescriptorId INT NULL,
    LocalStudentID VARCHAR(9) NOT NULL,
    StudentID VARCHAR(9) NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    StudentAttributionDescriptorId INT NULL,
    AssociateDegreeIndicator BOOLEAN NULL,
    AsOfStatusLastFridayOctoberDescriptorId INT NULL,
    HomelessStatusPriorYearDescriptorId INT NULL,
    UnaccompaniedYouthPriorYearDescriptorId INT NULL,
    UnschooledAsyleeRefugeePriorYearDescriptorId INT NULL,
    EconomicDisadvantageLastDateOfEnrollmentDescriptorId INT NULL,
    ParentalPermissionLastDateOfEnrollmentDescriptorId INT NULL,
    MigrantPriorYear BOOLEAN NULL,
    AdultPreviousAttendancePriorYear BOOLEAN NULL,
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
    CONSTRAINT AsOfStatusALeaver_PK PRIMARY KEY (SchoolId, StudentUID)
); 
ALTER TABLE tx.AsOfStatusALeaver ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.AsOfStatusALeaver ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.AsOfStatusALeaver ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.AsOfStatusALeaverDiploma --
CREATE TABLE tx.AsOfStatusALeaverDiploma (
    SchoolId INT NOT NULL,
    StudentUID VARCHAR(10) NOT NULL,
    AchievementTitle VARCHAR(60) NULL,
    AchievementCategoryDescriptorId INT NULL,
    AchievementCategorySystem VARCHAR(60) NULL,
    IssuerName VARCHAR(150) NULL,
    IssuerOriginURL VARCHAR(255) NULL,
    Criteria VARCHAR(150) NULL,
    CriteriaURL VARCHAR(255) NULL,
    EvidenceStatement VARCHAR(150) NULL,
    ImageURL VARCHAR(255) NULL,
    DiplomaAwardDate DATE NOT NULL,
    DiplomaLevelDescriptorId INT NULL,
    DiplomaTypeDescriptorId INT NOT NULL,
    CTECompleter BOOLEAN NULL,
    DiplomaDescription VARCHAR(80) NULL,
    DiplomaAwardExpiresDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AsOfStatusALeaverDiploma_PK PRIMARY KEY (SchoolId, StudentUID)
); 
ALTER TABLE tx.AsOfStatusALeaverDiploma ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.AsOfStatusALeaverIndustryBasedCertificationSet --
CREATE TABLE tx.AsOfStatusALeaverIndustryBasedCertificationSet (
    BeginDate DATE NOT NULL,
    DateCertEarned DATE NOT NULL,
    IBCVendorDescriptorId INT NOT NULL,
    PostSecondaryCertificationLicensureDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUID VARCHAR(10) NOT NULL,
    IBCExamFeeAmount DECIMAL(5, 2) NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AsOfStatusALeaverIndustryBasedCertificationSet_PK PRIMARY KEY (BeginDate, DateCertEarned, IBCVendorDescriptorId, PostSecondaryCertificationLicensureDescriptorId, SchoolId, StudentUID)
); 
ALTER TABLE tx.AsOfStatusALeaverIndustryBasedCertificationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.AsOfStatusALeaverPersonalIdentificationDocument --
CREATE TABLE tx.AsOfStatusALeaverPersonalIdentificationDocument (
    IdentificationDocumentUseDescriptorId INT NOT NULL,
    PersonalInformationVerificationDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUID VARCHAR(10) NOT NULL,
    DocumentTitle VARCHAR(60) NULL,
    DocumentExpirationDate DATE NULL,
    IssuerDocumentIdentificationCode VARCHAR(60) NULL,
    IssuerName VARCHAR(150) NULL,
    IssuerCountryDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AsOfStatusALeaverPersonalIdentificationDocument_PK PRIMARY KEY (IdentificationDocumentUseDescriptorId, PersonalInformationVerificationDescriptorId, SchoolId, StudentUID)
); 
ALTER TABLE tx.AsOfStatusALeaverPersonalIdentificationDocument ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.AsOfStatusALeaverRace --
CREATE TABLE tx.AsOfStatusALeaverRace (
    RaceDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    StudentUID VARCHAR(10) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT AsOfStatusALeaverRace_PK PRIMARY KEY (RaceDescriptorId, SchoolId, StudentUID)
); 
ALTER TABLE tx.AsOfStatusALeaverRace ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

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

-- Table tx.BudgetExt --
CREATE TABLE tx.BudgetExt (
    EducationOrganizationId INT NOT NULL,
    FiscalYear INT NOT NULL,
    FunctionDescriptorId INT NOT NULL,
    FundDescriptorId INT NOT NULL,
    ObjectDescriptorId INT NOT NULL,
    Organization INT NOT NULL,
    ProgramIntentDescriptorId INT NOT NULL,
    BudgetAmount INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT BudgetExt_PK PRIMARY KEY (EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId)
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

-- Table tx.ClassPeriodExtension --
CREATE TABLE tx.ClassPeriodExtension (
    ClassPeriodName VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    BeginDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT ClassPeriodExtension_PK PRIMARY KEY (ClassPeriodName, SchoolId)
); 
ALTER TABLE tx.ClassPeriodExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

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
    CourseSequenceDescriptorId INT NULL,
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

-- Table tx.DisciplineActionExtension --
CREATE TABLE tx.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(20) NOT NULL,
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

-- Table tx.DyslexiaRiskDescriptor --
CREATE TABLE tx.DyslexiaRiskDescriptor (
    DyslexiaRiskDescriptorId INT NOT NULL,
    CONSTRAINT DyslexiaRiskDescriptor_PK PRIMARY KEY (DyslexiaRiskDescriptorId)
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

-- Table tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor --
CREATE TABLE tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor (
    EconomicDisadvantageLastDateOfEnrollmentDescriptorId INT NOT NULL,
    CONSTRAINT EconomicDisadvantageLastDateOfEnrollmentDescriptor_PK PRIMARY KEY (EconomicDisadvantageLastDateOfEnrollmentDescriptorId)
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

-- Table tx.EvaluationDelayReasonDescriptor --
CREATE TABLE tx.EvaluationDelayReasonDescriptor (
    EvaluationDelayReasonDescriptorId INT NOT NULL,
    CONSTRAINT EvaluationDelayReasonDescriptor_PK PRIMARY KEY (EvaluationDelayReasonDescriptorId)
); 

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

-- Table tx.HearingAmplifAvgDailyUseDescriptor --
CREATE TABLE tx.HearingAmplifAvgDailyUseDescriptor (
    HearingAmplifAvgDailyUseDescriptorId INT NOT NULL,
    CONSTRAINT HearingAmplifAvgDailyUseDescriptor_PK PRIMARY KEY (HearingAmplifAvgDailyUseDescriptorId)
); 

-- Table tx.HearingAmplificationAccessDescriptor --
CREATE TABLE tx.HearingAmplificationAccessDescriptor (
    HearingAmplificationAccessDescriptorId INT NOT NULL,
    CONSTRAINT HearingAmplificationAccessDescriptor_PK PRIMARY KEY (HearingAmplificationAccessDescriptorId)
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

-- Table tx.HomelessStatusPriorYearDescriptor --
CREATE TABLE tx.HomelessStatusPriorYearDescriptor (
    HomelessStatusPriorYearDescriptorId INT NOT NULL,
    CONSTRAINT HomelessStatusPriorYearDescriptor_PK PRIMARY KEY (HomelessStatusPriorYearDescriptorId)
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

-- Table tx.LangAcqServicesProvidedDescriptor --
CREATE TABLE tx.LangAcqServicesProvidedDescriptor (
    LangAcqServicesProvidedDescriptorId INT NOT NULL,
    CONSTRAINT LangAcqServicesProvidedDescriptor_PK PRIMARY KEY (LangAcqServicesProvidedDescriptorId)
); 

-- Table tx.LocalEducationAgencyChildCareOperationNumber --
CREATE TABLE tx.LocalEducationAgencyChildCareOperationNumber (
    ChildCareOperationNumber VARCHAR(8) NOT NULL,
    LocalEducationAgencyId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT LocalEducationAgencyChildCareOperationNumber_PK PRIMARY KEY (ChildCareOperationNumber, LocalEducationAgencyId)
); 
ALTER TABLE tx.LocalEducationAgencyChildCareOperationNumber ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.LocalEducationAgencyExtension --
CREATE TABLE tx.LocalEducationAgencyExtension (
    LocalEducationAgencyId INT NOT NULL,
    TotalNumSchoolBoardRequests INT NULL,
    TotalCostSchoolBoardRequests INT NULL,
    FamilyEngagementPlanLink VARCHAR(200) NULL,
    ArmedServicesVocAptBatteryDescriptorId INT NULL,
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

-- Table tx.ParentalPermissionLastDateOfEnrollmentDescriptor --
CREATE TABLE tx.ParentalPermissionLastDateOfEnrollmentDescriptor (
    ParentalPermissionLastDateOfEnrollmentDescriptorId INT NOT NULL,
    CONSTRAINT ParentalPermissionLastDateOfEnrollmentDescriptor_PK PRIMARY KEY (ParentalPermissionLastDateOfEnrollmentDescriptorId)
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
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PayrollExt_PK PRIMARY KEY (EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, PayrollActivityDescriptorId, ProgramIntentDescriptorId, StaffUSI)
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

-- Table tx.ReportAssessmentTypeDescriptor --
CREATE TABLE tx.ReportAssessmentTypeDescriptor (
    ReportAssessmentTypeDescriptorId INT NOT NULL,
    CONSTRAINT ReportAssessmentTypeDescriptor_PK PRIMARY KEY (ReportAssessmentTypeDescriptorId)
); 

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

-- Table tx.RoleIdDescriptor --
CREATE TABLE tx.RoleIdDescriptor (
    RoleIdDescriptorId INT NOT NULL,
    CONSTRAINT RoleIdDescriptor_PK PRIMARY KEY (RoleIdDescriptorId)
); 

-- Table tx.SchoolCampusEnrollmentTypeSet --
CREATE TABLE tx.SchoolCampusEnrollmentTypeSet (
    BeginDate DATE NOT NULL,
    CampusEnrollmentTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolCampusEnrollmentTypeSet_PK PRIMARY KEY (BeginDate, CampusEnrollmentTypeDescriptorId, SchoolId)
); 
ALTER TABLE tx.SchoolCampusEnrollmentTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolCharterWaitlistSet --
CREATE TABLE tx.SchoolCharterWaitlistSet (
    BeginDate DATE NOT NULL,
    CharterAdmissionWaitlist BOOLEAN NOT NULL,
    CharterEducationalEnrollmentCapacity INT NOT NULL,
    NumberCharterStudentsEnrolled INT NOT NULL,
    SchoolId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolCharterWaitlistSet_PK PRIMARY KEY (BeginDate, CharterAdmissionWaitlist, CharterEducationalEnrollmentCapacity, NumberCharterStudentsEnrolled, SchoolId)
); 
ALTER TABLE tx.SchoolCharterWaitlistSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolELOSet --
CREATE TABLE tx.SchoolELOSet (
    BeginDate DATE NOT NULL,
    ELOTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolELOSet_PK PRIMARY KEY (BeginDate, ELOTypeDescriptorId, SchoolId)
); 
ALTER TABLE tx.SchoolELOSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.SchoolELOSetELOActivitySet --
CREATE TABLE tx.SchoolELOSetELOActivitySet (
    BeginDate DATE NOT NULL,
    ELOActivityDescriptorId INT NOT NULL,
    ELOTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    ELODaysScheduledPerYear INT NOT NULL,
    ELOMinutesScheduledPerDay INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolELOSetELOActivitySet_PK PRIMARY KEY (BeginDate, ELOActivityDescriptorId, ELOTypeDescriptorId, SchoolId)
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
    NSLPTypeDescriptorId INT NOT NULL,
    SchoolId INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolNSLPTypeSet_PK PRIMARY KEY (BeginDate, NSLPTypeDescriptorId, SchoolId)
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
    CourseSequenceDescriptorId INT NULL,
    NonCampusBasedInstructionDescriptorId INT NULL,
    PKCurriculaDescriptorId INT NULL,
    HighQualityPKProgram BOOLEAN NULL,
    PKStudentInstructionDescriptorId INT NULL,
    PKSchoolTypeDescriptorId INT NULL,
    PKProgramEvaluationTypeDescriptorId INT NULL,
    CTEHours DATE NULL,
    ClassTypeDescriptorId INT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionSet_PK PRIMARY KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
); 
ALTER TABLE tx.SectionSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.ServiceIdDescriptor --
CREATE TABLE tx.ServiceIdDescriptor (
    ServiceIdDescriptorId INT NOT NULL,
    CONSTRAINT ServiceIdDescriptor_PK PRIMARY KEY (ServiceIdDescriptorId)
); 

-- Table tx.SharedServiceArrangementExt --
CREATE TABLE tx.SharedServiceArrangementExt (
    EducationOrganizationId INT NOT NULL,
    FiscalYear INT NOT NULL,
    FundDescriptorId INT NOT NULL,
    SSAMemberDistrictID INT NOT NULL,
    SSATypeDescriptorId INT NOT NULL,
    ActualAmount INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SharedServiceArrangementExt_PK PRIMARY KEY (EducationOrganizationId, FiscalYear, FundDescriptorId, SSAMemberDistrictID, SSATypeDescriptorId)
); 
ALTER TABLE tx.SharedServiceArrangementExt ALTER COLUMN CreateDate SET DEFAULT current_timestamp;
ALTER TABLE tx.SharedServiceArrangementExt ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE tx.SharedServiceArrangementExt ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp;

-- Table tx.SharedServiceArrangementStaffDescriptor --
CREATE TABLE tx.SharedServiceArrangementStaffDescriptor (
    SharedServiceArrangementStaffDescriptorId INT NOT NULL,
    CONSTRAINT SharedServiceArrangementStaffDescriptor_PK PRIMARY KEY (SharedServiceArrangementStaffDescriptorId)
); 

-- Table tx.SSAOrgAssociationExt --
CREATE TABLE tx.SSAOrgAssociationExt (
    EducationOrganizationId INT NOT NULL,
    FiscalAgentDistrictID INT NOT NULL,
    SSATypeDescriptorId INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SSAOrgAssociationExt_PK PRIMARY KEY (EducationOrganizationId, FiscalAgentDistrictID, SSATypeDescriptorId)
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
    StaffServiceDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    GradeLevelDescriptorId INT NULL,
    PopulationServedDescriptorId INT NULL,
    MonthlyMinutes INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationAssignmentAssociationSta_0bf4c3_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StaffClassificationDescriptorId, StaffServiceDescriptorId, StaffUSI)
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
    CreditableYearOfService BOOLEAN NULL,
    YearsExperienceInDistrict INT NULL,
    StaffID VARCHAR(9) NOT NULL,
    PKTeacherRequirementDescriptorId INT NULL,
    TotalYearsProfExperience INT NULL,
    TotalYearsPriorTeachingExperience INT NULL,
    GenerationCodeDescriptorId INT NULL,
    AdditionalDaysProgramTeacher BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffExtension_PK PRIMARY KEY (StaffUSI)
); 
ALTER TABLE tx.StaffExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffParaprofessionalCertificationSet --
CREATE TABLE tx.StaffParaprofessionalCertificationSet (
    BeginDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    ParaprofessionalCertification BOOLEAN NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffParaprofessionalCertificationSet_PK PRIMARY KEY (BeginDate, StaffUSI)
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

-- Table tx.StaffTeacherIncentiveAllotmentDesignationCode --
CREATE TABLE tx.StaffTeacherIncentiveAllotmentDesignationCode (
    StaffUSI INT NOT NULL,
    TeacherIncentiveAllotmentDesignationCodeDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffTeacherIncentiveAllotmentDesignationCode_PK PRIMARY KEY (StaffUSI, TeacherIncentiveAllotmentDesignationCodeDescriptorId)
); 
ALTER TABLE tx.StaffTeacherIncentiveAllotmentDesignationCode ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StaffTypeDescriptor --
CREATE TABLE tx.StaffTypeDescriptor (
    StaffTypeDescriptorId INT NOT NULL,
    CONSTRAINT StaffTypeDescriptor_PK PRIMARY KEY (StaffTypeDescriptorId)
); 

-- Table tx.StaffTypeSet --
CREATE TABLE tx.StaffTypeSet (
    BeginDate DATE NOT NULL,
    StaffTypeDescriptorId INT NOT NULL,
    StaffUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffTypeSet_PK PRIMARY KEY (BeginDate, StaffTypeDescriptorId, StaffUSI)
); 
ALTER TABLE tx.StaffTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

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
    AssociateDegreeIndicator BOOLEAN NULL,
    IndividualGraduationCommitteeReview BOOLEAN NULL,
    FHSPParticipant BOOLEAN NULL,
    FHSPDistingLevelParticipant BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAcademicRecordExtension_PK PRIMARY KEY (EducationOrganizationId, SchoolYear, StudentUSI, TermDescriptorId)
); 
ALTER TABLE tx.StudentAcademicRecordExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentAcademicRecordIndustryBasedCertificationSet --
CREATE TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet (
    BeginDate DATE NOT NULL,
    DateCertEarned DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    IBCVendorDescriptorId INT NOT NULL,
    PostSecondaryCertificationLicensureDescriptorId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    TermDescriptorId INT NOT NULL,
    IBCExamFeeAmount DECIMAL(5, 2) NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAcademicRecordIndustryBasedCertificationSet_PK PRIMARY KEY (BeginDate, DateCertEarned, EducationOrganizationId, IBCVendorDescriptorId, PostSecondaryCertificationLicensureDescriptorId, SchoolYear, StudentUSI, TermDescriptorId)
); 
ALTER TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentApplication --
CREATE TABLE tx.StudentApplication (
    ApplicationIdentifier VARCHAR(10) NOT NULL,
    EducationOrganizationId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUID VARCHAR(10) NULL,
    SexDescriptorId INT NOT NULL,
    EntryGradeLevelDescriptorId INT NOT NULL,
    ApplicationDate DATE NOT NULL,
    ApplicationTypeDescriptorId INT NOT NULL,
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
    DyslexiaRiskDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationDyslexiaRiskSet_PK PRIMARY KEY (BeginDate, DyslexiaRiskDescriptorId, EducationOrganizationId, StudentUSI)
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
    EarlyReadingIndicatorDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationEarlyReadin_314fe6_PK PRIMARY KEY (BeginDate, EarlyReadingIndicatorDescriptorId, EducationOrganizationId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet (
    BeginDate DATE NOT NULL,
    EconomicDisadvantageDescriptorId INT NOT NULL,
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationEconomicDis_c93358_PK PRIMARY KEY (BeginDate, EconomicDisadvantageDescriptorId, EducationOrganizationId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationEmergentBilingualSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    EmergentBilingualIndicatorDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationEmergentBilingualSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, EmergentBilingualIndicatorDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationFosterCareTypeSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    FosterCareTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationFosterCareTypeSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, FosterCareTypeDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationHomelessStatusSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    HomelessStatusDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationHomelessStatusSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, HomelessStatusDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationLanguageSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationLanguageSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    LanguageDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationLanguageSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, LanguageDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationLanguageSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse --
CREATE TABLE tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    LanguageDescriptorId INT NOT NULL,
    LanguageUseDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationLanguageSet_9193d3_PK PRIMARY KEY (BeginDate, EducationOrganizationId, LanguageDescriptorId, LanguageUseDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 --
CREATE TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    MilitaryConnectedStudentDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationMilitaryCon_662c97_PK PRIMARY KEY (BeginDate, EducationOrganizationId, MilitaryConnectedStudentDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentEducationOrganizationAssociationPKFundingSourceSet --
CREATE TABLE tx.StudentEducationOrganizationAssociationPKFundingSourceSet (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    OrderOfPKFundingSource INT NOT NULL,
    PKFundingSourceDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationPKFundingSourceSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, OrderOfPKFundingSource, PKFundingSourceDescriptorId, StudentUSI)
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
    CONSTRAINT StudentEducationOrganizationAssociationUnaccompaniedYouthSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI, UnaccompaniedYouthDescriptorId)
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
    CONSTRAINT StudentEducationOrganizationAssociationUnschooledA_9fcf9b_PK PRIMARY KEY (BeginDate, EducationOrganizationId, StudentUSI, UnschooledAsyleeRefugeeDescriptorId)
); 
ALTER TABLE tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentExtension --
CREATE TABLE tx.StudentExtension (
    StudentUSI INT NOT NULL,
    LocalStudentID VARCHAR(9) NULL,
    StudentID VARCHAR(9) NOT NULL,
    GenerationCodeDescriptorId INT NULL,
    AsOfStatusLastFridayOctoberDescriptorId INT NULL,
    AsOfStatusLastDayEnrollmentDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentExtension_PK PRIMARY KEY (StudentUSI)
); 
ALTER TABLE tx.StudentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 --
CREATE TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ParentalPermissionDescriptorId INT NOT NULL,
    ParentPermissionSetBeginDate DATE NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ParentPermissionSetEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentLanguageInstructionProgramAssociationParent_710c81_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ParentalPermissionDescriptorId, ParentPermissionSetBeginDate, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSchoolAssociationExtension --
CREATE TABLE tx.StudentSchoolAssociationExtension (
    EntryDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ADAEligibilityDescriptorId INT NULL,
    StudentAttributionDescriptorId INT NULL,
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

-- Table tx.StudentSpecialEducationProgramAssociationESYProgramAssociation --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationESYProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    TotalESYContactHoursInstructionalSetting DECIMAL(4, 1) NOT NULL,
    OrderOfSpecialEducationSetting INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationESYProgra_74dbac_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, TotalESYContactHoursInstructionalSetting)
); 
ALTER TABLE tx.StudentSpecialEducationProgramAssociationESYProgramAssociation ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

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
    HearingAmplifAvgDailyUseDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationHearingAm_e27839_PK PRIMARY KEY (BeginDate, EducationOrganizationId, HearingAmplificationTypeDescriptorId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

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

-- Table tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076 --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076 (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    OrderOfSpecialEducationSetting INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    SettingBeginDate DATE NOT NULL,
    SpecialEducationSettingDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    SettingEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationSpecialEd_c5b076_PK PRIMARY KEY (BeginDate, EducationOrganizationId, OrderOfSpecialEducationSetting, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, SettingBeginDate, SpecialEducationSettingDescriptorId, StudentUSI)
); 
ALTER TABLE tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076 ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.StudentSpecialEducationProgramAssociationStudentResident_727129 --
CREATE TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_727129 (
    BeginDate DATE NOT NULL,
    DateEnteredRF DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    ResidentialFacilityID INT NOT NULL,
    StudentUSI INT NOT NULL,
    DateExitedRF DATE NULL,
    CampusIDOfEnrollment INT NOT NULL,
    AttendanceZoneCampus INT NOT NULL,
    EducatedAtResidentialFacility BOOLEAN NOT NULL,
    SurrogateParentAssigned BOOLEAN NOT NULL,
    NumberOtherStudentsAssignedSameSurrogateParent INT NULL,
    ResidentialFacilityStudentSchoolDayLength INT NOT NULL,
    CampusIDOfEnrollmentSchoolDayLength INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationStudentRe_727129_PK PRIMARY KEY (BeginDate, DateEnteredRF, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, ResidentialFacilityID, StudentUSI)
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
    CONSTRAINT StudentTitleIPartAProgramAssociationSet_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentTitleIPartAProgramAssociationSetBeginDate, StudentUSI, TitleIPartAParticipantDescriptorId)
); 
ALTER TABLE tx.StudentTitleIPartAProgramAssociationSet ALTER COLUMN CreateDate SET DEFAULT current_timestamp;

-- Table tx.TeacherIncentiveAllotmentDesignationCodeDescriptor --
CREATE TABLE tx.TeacherIncentiveAllotmentDesignationCodeDescriptor (
    TeacherIncentiveAllotmentDesignationCodeDescriptorId INT NOT NULL,
    CONSTRAINT TeacherIncentiveAllotmentDesignationCodeDescriptor_PK PRIMARY KEY (TeacherIncentiveAllotmentDesignationCodeDescriptorId)
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

-- Table tx.UnaccompaniedYouthPriorYearDescriptor --
CREATE TABLE tx.UnaccompaniedYouthPriorYearDescriptor (
    UnaccompaniedYouthPriorYearDescriptorId INT NOT NULL,
    CONSTRAINT UnaccompaniedYouthPriorYearDescriptor_PK PRIMARY KEY (UnaccompaniedYouthPriorYearDescriptorId)
); 

-- Table tx.UnschooledAsyleeRefugeeDescriptor --
CREATE TABLE tx.UnschooledAsyleeRefugeeDescriptor (
    UnschooledAsyleeRefugeeDescriptorId INT NOT NULL,
    CONSTRAINT UnschooledAsyleeRefugeeDescriptor_PK PRIMARY KEY (UnschooledAsyleeRefugeeDescriptorId)
); 

-- Table tx.UnschooledAsyleeRefugeePriorYearDescriptor --
CREATE TABLE tx.UnschooledAsyleeRefugeePriorYearDescriptor (
    UnschooledAsyleeRefugeePriorYearDescriptorId INT NOT NULL,
    CONSTRAINT UnschooledAsyleeRefugeePriorYearDescriptor_PK PRIMARY KEY (UnschooledAsyleeRefugeePriorYearDescriptorId)
); 

