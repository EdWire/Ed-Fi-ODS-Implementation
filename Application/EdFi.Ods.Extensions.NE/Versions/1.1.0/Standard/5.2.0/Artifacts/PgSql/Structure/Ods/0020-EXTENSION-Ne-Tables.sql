-- Table ne.CalendarDateExtension --
CREATE TABLE ne.CalendarDateExtension (
    CalendarCode VARCHAR(60) NOT NULL,
    Date DATE NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    InstructionalDuration DECIMAL(3, 2) NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CalendarDateExtension_PK PRIMARY KEY (CalendarCode, Date, SchoolId, SchoolYear)
);
ALTER TABLE ne.CalendarDateExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.DisciplineActionExtension --
CREATE TABLE ne.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(36) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    GFSAExpulsionModifiedToLessThanOneYear BOOLEAN NULL,
    UnilateralRemovalDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE ne.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.DisciplineIncidentExtension --
CREATE TABLE ne.DisciplineIncidentExtension (
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    HomicideIndicator BOOLEAN NULL,
    ShootingIndicator BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineIncidentExtension_PK PRIMARY KEY (IncidentIdentifier, SchoolId)
);
ALTER TABLE ne.DisciplineIncidentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.EarlyLearningSettingDescriptor --
CREATE TABLE ne.EarlyLearningSettingDescriptor (
    EarlyLearningSettingDescriptorId INT NOT NULL,
    CONSTRAINT EarlyLearningSettingDescriptor_PK PRIMARY KEY (EarlyLearningSettingDescriptorId)
);

-- Table ne.EmergencyExclusion --
CREATE TABLE ne.EmergencyExclusion (
    EducationOrganizationId BIGINT NOT NULL,
    ExclusionDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    EmergencyExclusionReasonDescriptorId INT NOT NULL,
    ExclusionDuration DECIMAL(5, 2) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT EmergencyExclusion_PK PRIMARY KEY (EducationOrganizationId, ExclusionDate, StudentUSI)
);
ALTER TABLE ne.EmergencyExclusion ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE ne.EmergencyExclusion ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE ne.EmergencyExclusion ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.EmergencyExclusionReasonDescriptor --
CREATE TABLE ne.EmergencyExclusionReasonDescriptor (
    EmergencyExclusionReasonDescriptorId INT NOT NULL,
    CONSTRAINT EmergencyExclusionReasonDescriptor_PK PRIMARY KEY (EmergencyExclusionReasonDescriptorId)
);

-- Table ne.EventComplianceDescriptor --
CREATE TABLE ne.EventComplianceDescriptor (
    EventComplianceDescriptorId INT NOT NULL,
    CONSTRAINT EventComplianceDescriptor_PK PRIMARY KEY (EventComplianceDescriptorId)
);

-- Table ne.EventReasonDescriptor --
CREATE TABLE ne.EventReasonDescriptor (
    EventReasonDescriptorId INT NOT NULL,
    CONSTRAINT EventReasonDescriptor_PK PRIMARY KEY (EventReasonDescriptorId)
);

-- Table ne.IdeaEvent --
CREATE TABLE ne.IdeaEvent (
    EducationOrganizationId BIGINT NOT NULL,
    IDEAEventDescriptorId INT NOT NULL,
    IDEAEventID VARCHAR(128) NOT NULL,
    StudentUSI INT NOT NULL,
    BeginDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    EventComplianceDescriptorId INT NULL,
    EventNarrative VARCHAR(2048) NULL,
    EventReasonDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT IdeaEvent_PK PRIMARY KEY (EducationOrganizationId, IDEAEventDescriptorId, IDEAEventID, StudentUSI)
);
ALTER TABLE ne.IdeaEvent ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE ne.IdeaEvent ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE ne.IdeaEvent ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.IDEAEventDescriptor --
CREATE TABLE ne.IDEAEventDescriptor (
    IDEAEventDescriptorId INT NOT NULL,
    CONSTRAINT IDEAEventDescriptor_PK PRIMARY KEY (IDEAEventDescriptorId)
);

-- Table ne.ImmigrantIndicatorDescriptor --
CREATE TABLE ne.ImmigrantIndicatorDescriptor (
    ImmigrantIndicatorDescriptorId INT NOT NULL,
    CONSTRAINT ImmigrantIndicatorDescriptor_PK PRIMARY KEY (ImmigrantIndicatorDescriptorId)
);

-- Table ne.PartCTransitionDelayReasonDescriptor --
CREATE TABLE ne.PartCTransitionDelayReasonDescriptor (
    PartCTransitionDelayReasonDescriptorId INT NOT NULL,
    CONSTRAINT PartCTransitionDelayReasonDescriptor_PK PRIMARY KEY (PartCTransitionDelayReasonDescriptorId)
);

-- Table ne.PlacementTypeDescriptor --
CREATE TABLE ne.PlacementTypeDescriptor (
    PlacementTypeDescriptorId INT NOT NULL,
    CONSTRAINT PlacementTypeDescriptor_PK PRIMARY KEY (PlacementTypeDescriptorId)
);

-- Table ne.PositionTitleDescriptor --
CREATE TABLE ne.PositionTitleDescriptor (
    PositionTitleDescriptorId INT NOT NULL,
    CONSTRAINT PositionTitleDescriptor_PK PRIMARY KEY (PositionTitleDescriptorId)
);

-- Table ne.PostGraduateActivity --
CREATE TABLE ne.PostGraduateActivity (
    LocalEducationAgencyId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentUSI INT NOT NULL,
    PostGraduateActivityDescriptorId INT NOT NULL,
    PostGraduateActivityDeterminationDescriptorId INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT PostGraduateActivity_PK PRIMARY KEY (LocalEducationAgencyId, SchoolYear, StudentUSI)
);
ALTER TABLE ne.PostGraduateActivity ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE ne.PostGraduateActivity ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE ne.PostGraduateActivity ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.PostGraduateActivityDescriptor --
CREATE TABLE ne.PostGraduateActivityDescriptor (
    PostGraduateActivityDescriptorId INT NOT NULL,
    CONSTRAINT PostGraduateActivityDescriptor_PK PRIMARY KEY (PostGraduateActivityDescriptorId)
);

-- Table ne.PostGraduateActivityDeterminationDescriptor --
CREATE TABLE ne.PostGraduateActivityDeterminationDescriptor (
    PostGraduateActivityDeterminationDescriptorId INT NOT NULL,
    CONSTRAINT PostGraduateActivityDeterminationDescriptor_PK PRIMARY KEY (PostGraduateActivityDeterminationDescriptorId)
);

-- Table ne.SectionDelivery --
CREATE TABLE ne.SectionDelivery (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    SectionDeliveryDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionDelivery_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, SectionDeliveryDescriptorId)
);
ALTER TABLE ne.SectionDelivery ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.SectionDeliveryDescriptor --
CREATE TABLE ne.SectionDeliveryDescriptor (
    SectionDeliveryDescriptorId INT NOT NULL,
    CONSTRAINT SectionDeliveryDescriptor_PK PRIMARY KEY (SectionDeliveryDescriptorId)
);

-- Table ne.SectionExtension --
CREATE TABLE ne.SectionExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    CourseStaffIdOverride VARCHAR(10) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
);
ALTER TABLE ne.SectionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.SpecialEducationProgramDescriptor --
CREATE TABLE ne.SpecialEducationProgramDescriptor (
    SpecialEducationProgramDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationProgramDescriptor_PK PRIMARY KEY (SpecialEducationProgramDescriptorId)
);

-- Table ne.StudentDisciplineIncidentBehaviorAssociationExtension --
CREATE TABLE ne.StudentDisciplineIncidentBehaviorAssociationExtension (
    BehaviorDescriptorId INT NOT NULL,
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    GunFreeSchoolViolation BOOLEAN NULL,
    ReferralToLawEnforcement BOOLEAN NULL,
    SchoolRelatedArrestIndicator BOOLEAN NULL,
    SeriousBodilyInjury BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentDisciplineIncidentBehaviorAssociationExtension_PK PRIMARY KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
);
ALTER TABLE ne.StudentDisciplineIncidentBehaviorAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.StudentEarlyLearningProgramAssociation --
CREATE TABLE ne.StudentEarlyLearningProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EarlyLearningSettingDescriptorId INT NULL,
    CONSTRAINT StudentEarlyLearningProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table ne.StudentEducationOrganizationAssociationExtension --
CREATE TABLE ne.StudentEducationOrganizationAssociationExtension (
    EducationOrganizationId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    ImmigrantIndicatorDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
);
ALTER TABLE ne.StudentEducationOrganizationAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.StudentLanguageInstructionProgramAssociationExtension --
CREATE TABLE ne.StudentLanguageInstructionProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    RedesignatedEnglishFluent BOOLEAN NULL,
    TestedProficientOnScreener BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentLanguageInstructionProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE ne.StudentLanguageInstructionProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.StudentSchoolAssociationExtension --
CREATE TABLE ne.StudentSchoolAssociationExtension (
    EntryDate DATE NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    ReportingSchoolId BIGINT NOT NULL,
    ResidentLocalEducationAgencyId BIGINT NOT NULL,
    ResidentSchoolId BIGINT NULL,
    StudentDaysEnrolled DECIMAL(5, 2) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationExtension_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI)
);
ALTER TABLE ne.StudentSchoolAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.StudentSpecialEducationProgramAssociationExtension --
CREATE TABLE ne.StudentSpecialEducationProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    InitialSpecialEducationEntryDate DATE NULL,
    PlacementTypeDescriptorId INT NULL,
    SpecialEducationProgramDescriptorId INT NULL,
    ToTakeAlternateAssessment BOOLEAN NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSpecialEducationProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE ne.StudentSpecialEducationProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ne.UnilateralRemovalDescriptor --
CREATE TABLE ne.UnilateralRemovalDescriptor (
    UnilateralRemovalDescriptorId INT NOT NULL,
    CONSTRAINT UnilateralRemovalDescriptor_PK PRIMARY KEY (UnilateralRemovalDescriptorId)
);

