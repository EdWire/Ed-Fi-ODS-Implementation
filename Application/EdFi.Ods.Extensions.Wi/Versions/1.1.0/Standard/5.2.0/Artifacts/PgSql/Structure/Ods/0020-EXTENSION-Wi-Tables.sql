-- Table wi.CertificatedProgramStatusDescriptor --
CREATE TABLE wi.CertificatedProgramStatusDescriptor (
    CertificatedProgramStatusDescriptorId INT NOT NULL,
    CONSTRAINT CertificatedProgramStatusDescriptor_PK PRIMARY KEY (CertificatedProgramStatusDescriptorId)
);

-- Table wi.CountDateNameDescriptor --
CREATE TABLE wi.CountDateNameDescriptor (
    CountDateNameDescriptorId INT NOT NULL,
    CONSTRAINT CountDateNameDescriptor_PK PRIMARY KEY (CountDateNameDescriptorId)
);

-- Table wi.CountDateReceivingServiceDescriptor --
CREATE TABLE wi.CountDateReceivingServiceDescriptor (
    CountDateReceivingServiceDescriptorId INT NOT NULL,
    CONSTRAINT CountDateReceivingServiceDescriptor_PK PRIMARY KEY (CountDateReceivingServiceDescriptorId)
);

-- Table wi.CourseOfferingCareerPathway --
CREATE TABLE wi.CourseOfferingCareerPathway (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    CareerPathwayDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CourseOfferingCareerPathway_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SessionName, CareerPathwayDescriptorId)
);
ALTER TABLE wi.CourseOfferingCareerPathway ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.CteProgramAreaDescriptor --
CREATE TABLE wi.CteProgramAreaDescriptor (
    CteProgramAreaDescriptorId INT NOT NULL,
    CONSTRAINT CteProgramAreaDescriptor_PK PRIMARY KEY (CteProgramAreaDescriptorId)
);

-- Table wi.DisciplineActionExtension --
CREATE TABLE wi.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(36) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    EarlyReinstatementCondition BOOLEAN NULL,
    ModifiedTermDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE wi.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.GradeExtension --
CREATE TABLE wi.GradeExtension (
    BeginDate DATE NOT NULL,
    GradeTypeDescriptorId INT NOT NULL,
    GradingPeriodDescriptorId INT NOT NULL,
    GradingPeriodName VARCHAR(60) NOT NULL,
    GradingPeriodSchoolYear SMALLINT NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    CertificatedProgramStatusDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT GradeExtension_PK PRIMARY KEY (BeginDate, GradeTypeDescriptorId, GradingPeriodDescriptorId, GradingPeriodName, GradingPeriodSchoolYear, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
);
ALTER TABLE wi.GradeExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.GraduationPlanExtension --
CREATE TABLE wi.GraduationPlanExtension (
    EducationOrganizationId BIGINT NOT NULL,
    GraduationPlanTypeDescriptorId INT NOT NULL,
    GraduationSchoolYear SMALLINT NOT NULL,
    CivicsExam BOOLEAN NOT NULL,
    CommunityService DECIMAL(5, 2) NOT NULL,
    MiscellaneousRequiredCredits VARCHAR(900) NULL,
    NonHsHealthEducationCredits DECIMAL(9, 3) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT GraduationPlanExtension_PK PRIMARY KEY (EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear)
);
ALTER TABLE wi.GraduationPlanExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.IacCodeDescriptor --
CREATE TABLE wi.IacCodeDescriptor (
    IacCodeDescriptorId INT NOT NULL,
    CONSTRAINT IacCodeDescriptor_PK PRIMARY KEY (IacCodeDescriptorId)
);

-- Table wi.ModifiedTermDescriptor --
CREATE TABLE wi.ModifiedTermDescriptor (
    ModifiedTermDescriptorId INT NOT NULL,
    CONSTRAINT ModifiedTermDescriptor_PK PRIMARY KEY (ModifiedTermDescriptorId)
);

-- Table wi.RccPlacementTypeDescriptor --
CREATE TABLE wi.RccPlacementTypeDescriptor (
    RccPlacementTypeDescriptorId INT NOT NULL,
    CONSTRAINT RccPlacementTypeDescriptor_PK PRIMARY KEY (RccPlacementTypeDescriptorId)
);

-- Table wi.StaffEducationOrganizationEmploymentAssociationExtension --
CREATE TABLE wi.StaffEducationOrganizationEmploymentAssociationExtension (
    EducationOrganizationId BIGINT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    LocalPersonIdentificationCode VARCHAR(60) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE wi.StaffEducationOrganizationEmploymentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea --
CREATE TABLE wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CteProgramAreaDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationCTEConcentrationCteProgramArea_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, CteProgramAreaDescriptorId)
);
ALTER TABLE wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.StudentCTEProgramAssociationExtension --
CREATE TABLE wi.StudentCTEProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CertificatedProgramStatusDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE wi.StudentCTEProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.StudentDisciplineIncidentBehaviorAssociationExtension --
CREATE TABLE wi.StudentDisciplineIncidentBehaviorAssociationExtension (
    BehaviorDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    SeriousBodilyInjury BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentDisciplineIncidentBehaviorAssociationExtension_PK PRIMARY KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE wi.StudentDisciplineIncidentBehaviorAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.StudentSchoolAssociationExtension --
CREATE TABLE wi.StudentSchoolAssociationExtension (
    EntryDate DATE NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    ActualDaysAttendance DECIMAL(4, 1) NULL,
    PartTimeInstructionalMinutes INT NULL,
    PossibleDaysAttendance DECIMAL(4, 1) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationExtension_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI)
);
ALTER TABLE wi.StudentSchoolAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.StudentSchoolAssociationReceivingService --
CREATE TABLE wi.StudentSchoolAssociationReceivingService (
    EntryDate DATE NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    CountDateNameDescriptorId INT NOT NULL,
    CountDateReceivingServiceDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationReceivingService_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI, CountDateNameDescriptorId)
);
ALTER TABLE wi.StudentSchoolAssociationReceivingService ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.StudentSchoolAssociationResidencyPeriod --
CREATE TABLE wi.StudentSchoolAssociationResidencyPeriod (
    EntryDate DATE NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    BeginDate DATE NOT NULL,
    ResidencyStatusDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    ResidentLocalEducationAgencyId BIGINT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationResidencyPeriod_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI, BeginDate, ResidencyStatusDescriptorId)
);
ALTER TABLE wi.StudentSchoolAssociationResidencyPeriod ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table wi.StudentSpecialEducationProgramAssociationExtension --
CREATE TABLE wi.StudentSpecialEducationProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    FapeResponsibleSchoolId BIGINT NOT NULL,
    RccCity VARCHAR(30) NULL,
    RccCommunityProviderId BIGINT NULL,
    RccNameOfInstitution VARCHAR(75) NULL,
    RccPlacementTypeDescriptorId INT NULL,
    RccStateAbbreviationDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE wi.StudentSpecialEducationProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

