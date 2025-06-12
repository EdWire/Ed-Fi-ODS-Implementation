-- Table idoe.AccreditationDescriptor --
CREATE TABLE idoe.AccreditationDescriptor (
    AccreditationDescriptorId INT NOT NULL,
    CONSTRAINT AccreditationDescriptor_PK PRIMARY KEY (AccreditationDescriptorId)
);

-- Table idoe.ADMCodeDescriptor --
CREATE TABLE idoe.ADMCodeDescriptor (
    ADMCodeDescriptorId INT NOT NULL,
    CONSTRAINT ADMCodeDescriptor_PK PRIMARY KEY (ADMCodeDescriptorId)
);

-- Table idoe.AlternativeEducationEligibilityReasonDescriptor --
CREATE TABLE idoe.AlternativeEducationEligibilityReasonDescriptor (
    AlternativeEducationEligibilityReasonDescriptorId INT NOT NULL,
    CONSTRAINT AlternativeEducationEligibilityReasonDescriptor_PK PRIMARY KEY (AlternativeEducationEligibilityReasonDescriptorId)
);

-- Table idoe.ArrestReasonDescriptor --
CREATE TABLE idoe.ArrestReasonDescriptor (
    ArrestReasonDescriptorId INT NOT NULL,
    CONSTRAINT ArrestReasonDescriptor_PK PRIMARY KEY (ArrestReasonDescriptorId)
);

-- Table idoe.AssessmentAccommodation --
CREATE TABLE idoe.AssessmentAccommodation (
    AccommodationDescriptorId INT NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT AssessmentAccommodation_PK PRIMARY KEY (AccommodationDescriptorId, AssessmentIdentifier, Namespace)
);
ALTER TABLE idoe.AssessmentAccommodation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.AssessmentAccommodation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.AssessmentAccommodation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.CalendarDateExtension --
CREATE TABLE idoe.CalendarDateExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    EventDuration DECIMAL(3, 2) NULL,
    EventMinutes INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateExtension_PK PRIMARY KEY (CalendarCode, Date, SchoolId, SchoolYear)
);
ALTER TABLE idoe.CalendarDateExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.CalendarExtension --
CREATE TABLE idoe.CalendarExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    InstructionalTimeInMinutesIndicator BOOLEAN NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarExtension_PK PRIMARY KEY (CalendarCode, SchoolId, SchoolYear)
);
ALTER TABLE idoe.CalendarExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.CircumstancesRelevantToTimelineDescriptor --
CREATE TABLE idoe.CircumstancesRelevantToTimelineDescriptor (
    CircumstancesRelevantToTimelineDescriptorId INT NOT NULL,
    CONSTRAINT CircumstancesRelevantToTimelineDescriptor_PK PRIMARY KEY (CircumstancesRelevantToTimelineDescriptorId)
);

-- Table idoe.CriminalGangRelatedEventDescriptor --
CREATE TABLE idoe.CriminalGangRelatedEventDescriptor (
    CriminalGangRelatedEventDescriptorId INT NOT NULL,
    CONSTRAINT CriminalGangRelatedEventDescriptor_PK PRIMARY KEY (CriminalGangRelatedEventDescriptorId)
);

-- Table idoe.DisciplineActionExtension --
CREATE TABLE idoe.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(36) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    ArrestReasonDescriptorId INT NULL,
    DisciplineActionServiceDescriptorId INT NULL,
    InterimAlternativeEducationSetting BOOLEAN NULL,
    StudentArrestDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE idoe.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.DisciplineActionServiceDescriptor --
CREATE TABLE idoe.DisciplineActionServiceDescriptor (
    DisciplineActionServiceDescriptorId INT NOT NULL,
    CONSTRAINT DisciplineActionServiceDescriptor_PK PRIMARY KEY (DisciplineActionServiceDescriptorId)
);

-- Table idoe.EducationOrganizationOtherPersonnel --
CREATE TABLE idoe.EducationOrganizationOtherPersonnel (
    LocalEducationAgencyId BIGINT NOT NULL,
    OtherPersonnelCategoryDescriptorId INT NOT NULL,
    OtherPersonnelTitleDescriptorId INT NOT NULL,
    FullTimeEquivalency DECIMAL(9, 4) NULL,
    OtherPersonnelCount INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT EducationOrganizationOtherPersonnel_PK PRIMARY KEY (LocalEducationAgencyId, OtherPersonnelCategoryDescriptorId, OtherPersonnelTitleDescriptorId)
);
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.ELLInstrumentUsedDescriptor --
CREATE TABLE idoe.ELLInstrumentUsedDescriptor (
    ELLInstrumentUsedDescriptorId INT NOT NULL,
    CONSTRAINT ELLInstrumentUsedDescriptor_PK PRIMARY KEY (ELLInstrumentUsedDescriptorId)
);

-- Table idoe.LocalAccountExtension --
CREATE TABLE idoe.LocalAccountExtension (
    AccountIdentifier VARCHAR(50) NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    FiscalYear INT NOT NULL,
    FunctionCode VARCHAR(16) NULL,
    FundCode VARCHAR(16) NULL,
    ObjectCode VARCHAR(16) NULL,
    OperationalUnitCode VARCHAR(16) NULL,
    SectionCode VARCHAR(16) NOT NULL,
    SubCategoryCode VARCHAR(16) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT LocalAccountExtension_PK PRIMARY KEY (AccountIdentifier, EducationOrganizationId, FiscalYear)
);
ALTER TABLE idoe.LocalAccountExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.LocalCapitalizedEquipment --
CREATE TABLE idoe.LocalCapitalizedEquipment (
    AccountIdentifier VARCHAR(50) NOT NULL,
    AsOfDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    FiscalYear INT NOT NULL,
    RecordIdentifier VARCHAR(100) NOT NULL,
    AcquisitionDate DATE NULL,
    CapitalizedThreshold MONEY NOT NULL,
    EquipmentDescription VARCHAR(100) NULL,
    EquipmentType VARCHAR(100) NOT NULL,
    FinancialCollectionDescriptorId INT NOT NULL,
    PaymentAmount MONEY NOT NULL,
    PerUnitCost MONEY NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT LocalCapitalizedEquipment_PK PRIMARY KEY (AccountIdentifier, AsOfDate, EducationOrganizationId, FiscalYear, RecordIdentifier)
);
ALTER TABLE idoe.LocalCapitalizedEquipment ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.LocalCapitalizedEquipment ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.LocalCapitalizedEquipment ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.LocalSubaward --
CREATE TABLE idoe.LocalSubaward (
    AccountIdentifier VARCHAR(50) NOT NULL,
    AsOfDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    FiscalYear INT NOT NULL,
    RecordIdentifier VARCHAR(100) NOT NULL,
    ContractNumberOfYears INT NOT NULL,
    DepartmentName VARCHAR(60) NOT NULL,
    Excess50k MONEY NOT NULL,
    ExpenditureAmount MONEY NOT NULL,
    FinancialCollectionDescriptorId INT NOT NULL,
    First50k MONEY NOT NULL,
    SubawardAmount MONEY NOT NULL,
    VendorOrganizationName VARCHAR(100) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT LocalSubaward_PK PRIMARY KEY (AccountIdentifier, AsOfDate, EducationOrganizationId, FiscalYear, RecordIdentifier)
);
ALTER TABLE idoe.LocalSubaward ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.LocalSubaward ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.LocalSubaward ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.LocalUnusedLeavePayment --
CREATE TABLE idoe.LocalUnusedLeavePayment (
    AccountIdentifier VARCHAR(50) NOT NULL,
    AsOfDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    FiscalYear INT NOT NULL,
    RecordIdentifier VARCHAR(100) NOT NULL,
    DirectUnusedLeavePaymentAmount MONEY NOT NULL,
    EmployeeName VARCHAR(80) NOT NULL,
    FinancialCollectionDescriptorId INT NOT NULL,
    IndirectUnusedLeavePaymentAmount MONEY NOT NULL,
    JobTitle VARCHAR(100) NULL,
    PaymentDate DATE NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT LocalUnusedLeavePayment_PK PRIMARY KEY (AccountIdentifier, AsOfDate, EducationOrganizationId, FiscalYear, RecordIdentifier)
);
ALTER TABLE idoe.LocalUnusedLeavePayment ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.LocalUnusedLeavePayment ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.LocalUnusedLeavePayment ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.OtherPersonnelCategoryDescriptor --
CREATE TABLE idoe.OtherPersonnelCategoryDescriptor (
    OtherPersonnelCategoryDescriptorId INT NOT NULL,
    CONSTRAINT OtherPersonnelCategoryDescriptor_PK PRIMARY KEY (OtherPersonnelCategoryDescriptorId)
);

-- Table idoe.OtherPersonnelTitleDescriptor --
CREATE TABLE idoe.OtherPersonnelTitleDescriptor (
    OtherPersonnelTitleDescriptorId INT NOT NULL,
    CONSTRAINT OtherPersonnelTitleDescriptor_PK PRIMARY KEY (OtherPersonnelTitleDescriptorId)
);

-- Table idoe.ProgramMeetingTimeDescriptor --
CREATE TABLE idoe.ProgramMeetingTimeDescriptor (
    ProgramMeetingTimeDescriptorId INT NOT NULL,
    CONSTRAINT ProgramMeetingTimeDescriptor_PK PRIMARY KEY (ProgramMeetingTimeDescriptorId)
);

-- Table idoe.SchoolExtension --
CREATE TABLE idoe.SchoolExtension (
    SchoolId BIGINT NOT NULL,
    AccreditationDescriptorId INT NULL,
    ChoiceIndicator BOOLEAN NULL,
    FreewayBeginDate DATE NULL,
    FreewayEndDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolExtension_PK PRIMARY KEY (SchoolId)
);
ALTER TABLE idoe.SchoolExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.SectionDimension --
CREATE TABLE idoe.SectionDimension (
    Code VARCHAR(16) NOT NULL,
    FiscalYear INT NOT NULL,
    CodeName VARCHAR(100) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SectionDimension_PK PRIMARY KEY (Code, FiscalYear)
);
ALTER TABLE idoe.SectionDimension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.SectionDimension ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.SectionDimension ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StaffEducationOrganizationEmploymentAssociationContract --
CREATE TABLE idoe.StaffEducationOrganizationEmploymentAssociationContract (
    EducationOrganizationId BIGINT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    ContractDays INT NOT NULL,
    ContractSalary INT NOT NULL,
    PercentTitleISalary INT NOT NULL,
    SupplementalSalary INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationContract_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE idoe.StaffEducationOrganizationEmploymentAssociationContract ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StaffEducationOrganizationEmploymentAssociationExtension --
CREATE TABLE idoe.StaffEducationOrganizationEmploymentAssociationExtension (
    EducationOrganizationId BIGINT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    YearsOfPriorProfessionalExperience DECIMAL(5, 2) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE idoe.StaffEducationOrganizationEmploymentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentAccommodation --
CREATE TABLE idoe.StudentAccommodation (
    AccommodationDescriptorId INT NOT NULL,
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentAccommodation_PK PRIMARY KEY (AccommodationDescriptorId, AssessmentIdentifier, EducationOrganizationId, Namespace, StudentUSI)
);
ALTER TABLE idoe.StudentAccommodation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.StudentAccommodation ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.StudentAccommodation ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentAlternativeEducationProgramAssociation --
CREATE TABLE idoe.StudentAlternativeEducationProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AlternativeEducationEligibilityReasonDescriptorId INT NOT NULL,
    CONSTRAINT StudentAlternativeEducationProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime --
CREATE TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ProgramMeetingTimeDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAlternativeEducationProgramAssociationProgr_b1f2b7_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, ProgramMeetingTimeDescriptorId)
);
ALTER TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentArrestDescriptor --
CREATE TABLE idoe.StudentArrestDescriptor (
    StudentArrestDescriptorId INT NOT NULL,
    CONSTRAINT StudentArrestDescriptor_PK PRIMARY KEY (StudentArrestDescriptorId)
);

-- Table idoe.StudentContactAssociationExtension --
CREATE TABLE idoe.StudentContactAssociationExtension (
    ContactUSI INT NOT NULL,
    StudentUSI INT NOT NULL,
    LegalDesignee BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentContactAssociationExtension_PK PRIMARY KEY (ContactUSI, StudentUSI)
);
ALTER TABLE idoe.StudentContactAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentDisciplineIncidentBehaviorAssociationExtension --
CREATE TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension (
    BehaviorDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    CriminalGangRelatedEventDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentDisciplineIncidentBehaviorAssociationExtension_PK PRIMARY KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentEducationOrganizationAssociationExtension --
CREATE TABLE idoe.StudentEducationOrganizationAssociationExtension (
    EducationOrganizationId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    ELLInstrumentUsedDescriptorId INT NULL,
    USInitialSchoolEntry DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
);
ALTER TABLE idoe.StudentEducationOrganizationAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc --
CREATE TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ResponsibilityDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    SchoolCorpEducationOrganizationId BIGINT NOT NULL,
    SchoolCorpResponsibilityDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationResponsibilityAssociat_6c4efc_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI, SchoolCorpEducationOrganizationId, SchoolCorpResponsibilityDescriptorId)
);
ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentEducationOrganizationResponsibilityAssociationExtension --
CREATE TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ResponsibilityDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    ADMCodeDescriptorId INT NULL,
    InstructionalDays INT NULL,
    InstructionalMinutes INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationResponsibilityAssociat_5a80ec_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
);
ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentSchoolGraduationPlan --
CREATE TABLE idoe.StudentSchoolGraduationPlan (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    GraduationPlanTypeDescriptorId INT NOT NULL,
    GraduationSchoolYear SMALLINT NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentSchoolGraduationPlan_PK PRIMARY KEY (BeginDate, EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear, SchoolId, StudentUSI)
);
ALTER TABLE idoe.StudentSchoolGraduationPlan ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.StudentSchoolGraduationPlan ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.StudentSchoolGraduationPlan ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan --
CREATE TABLE idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    GraduationPlanTypeDescriptorId INT NOT NULL,
    GraduationSchoolYear SMALLINT NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    AlternativeEducationOrganizationId BIGINT NOT NULL,
    AlternativeGraduationPlanTypeDescriptorId INT NOT NULL,
    AlternativeGraduationSchoolYear SMALLINT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolGraduationPlanAlternativeGraduationPlan_PK PRIMARY KEY (BeginDate, EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear, SchoolId, StudentUSI, AlternativeEducationOrganizationId, AlternativeGraduationPlanTypeDescriptorId, AlternativeGraduationSchoolYear)
);
ALTER TABLE idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.StudentSpecialEducationProgramAssociationExtension --
CREATE TABLE idoe.StudentSpecialEducationProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CircumstancesRelevantToTimelineDescriptorId INT NULL,
    FirstStepsTransitionDate DATE NULL,
    ParentalConsentDate DATE NULL,
    TimelineComplianceDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE idoe.StudentSpecialEducationProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.SubCategoryDimension --
CREATE TABLE idoe.SubCategoryDimension (
    Code VARCHAR(16) NOT NULL,
    FiscalYear INT NOT NULL,
    CodeName VARCHAR(100) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SubCategoryDimension_PK PRIMARY KEY (Code, FiscalYear)
);
ALTER TABLE idoe.SubCategoryDimension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE idoe.SubCategoryDimension ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE idoe.SubCategoryDimension ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table idoe.TimelineComplianceDescriptor --
CREATE TABLE idoe.TimelineComplianceDescriptor (
    TimelineComplianceDescriptorId INT NOT NULL,
    CONSTRAINT TimelineComplianceDescriptor_PK PRIMARY KEY (TimelineComplianceDescriptorId)
);

