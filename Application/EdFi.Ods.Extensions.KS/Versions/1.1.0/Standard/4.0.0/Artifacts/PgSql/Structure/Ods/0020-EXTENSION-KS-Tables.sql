-- Table ks.AssessmentRequestDescriptor --
CREATE TABLE ks.AssessmentRequestDescriptor (
    AssessmentRequestDescriptorId INT NOT NULL,
    CONSTRAINT AssessmentRequestDescriptor_PK PRIMARY KEY (AssessmentRequestDescriptorId)
);

-- Table ks.CollegeCareerTypeDescriptor --
CREATE TABLE ks.CollegeCareerTypeDescriptor (
    CollegeCareerTypeDescriptorId INT NOT NULL,
    CONSTRAINT CollegeCareerTypeDescriptor_PK PRIMARY KEY (CollegeCareerTypeDescriptorId)
);

-- Table ks.CourseDeliveryTypeDescriptor --
CREATE TABLE ks.CourseDeliveryTypeDescriptor (
    CourseDeliveryTypeDescriptorId INT NOT NULL,
    CONSTRAINT CourseDeliveryTypeDescriptor_PK PRIMARY KEY (CourseDeliveryTypeDescriptorId)
);

-- Table ks.CourseOfferingExtension --
CREATE TABLE ks.CourseOfferingExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    CollegeCareerTypeDescriptorId INT NULL,
    CourseCredits DECIMAL(5, 2) NULL,
    CourseDeliveryTypeDescriptorId INT NULL,
    CourseProgramTypeDescriptorId INT NULL,
    CourseSequence INT NULL,
    CourseTotalSequence INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT CourseOfferingExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SessionName)
);
ALTER TABLE ks.CourseOfferingExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.CourseProgramTypeDescriptor --
CREATE TABLE ks.CourseProgramTypeDescriptor (
    CourseProgramTypeDescriptorId INT NOT NULL,
    CONSTRAINT CourseProgramTypeDescriptor_PK PRIMARY KEY (CourseProgramTypeDescriptorId)
);

-- Table ks.CourseStatusDescriptor --
CREATE TABLE ks.CourseStatusDescriptor (
    CourseStatusDescriptorId INT NOT NULL,
    CONSTRAINT CourseStatusDescriptor_PK PRIMARY KEY (CourseStatusDescriptorId)
);

-- Table ks.CTECertificationEarnedDescriptor --
CREATE TABLE ks.CTECertificationEarnedDescriptor (
    CTECertificationEarnedDescriptorId INT NOT NULL,
    CONSTRAINT CTECertificationEarnedDescriptor_PK PRIMARY KEY (CTECertificationEarnedDescriptorId)
);

-- Table ks.FundingSourceDescriptor --
CREATE TABLE ks.FundingSourceDescriptor (
    FundingSourceDescriptorId INT NOT NULL,
    CONSTRAINT FundingSourceDescriptor_PK PRIMARY KEY (FundingSourceDescriptorId)
);

-- Table ks.GradeExtension --
CREATE TABLE ks.GradeExtension (
    BeginDate DATE NOT NULL,
    GradeTypeDescriptorId INT NOT NULL,
    GradingPeriodDescriptorId INT NOT NULL,
    GradingPeriodSequence INT NOT NULL,
    GradingPeriodSchoolYear SMALLINT NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    CollegeCreditEarned DECIMAL(4, 2) NULL,
    FirstInstructionalDate DATE NULL,
    InstructionalMinutesCompleted DECIMAL(7, 2) NULL,
    LastInstructionalDate DATE NULL,
    WorkBasedLearningDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT GradeExtension_PK PRIMARY KEY (BeginDate, GradeTypeDescriptorId, GradingPeriodDescriptorId, GradingPeriodSequence, GradingPeriodSchoolYear, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
);
ALTER TABLE ks.GradeExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.ImmigrantStudentDescriptor --
CREATE TABLE ks.ImmigrantStudentDescriptor (
    ImmigrantStudentDescriptorId INT NOT NULL,
    CONSTRAINT ImmigrantStudentDescriptor_PK PRIMARY KEY (ImmigrantStudentDescriptorId)
);

-- Table ks.LanguageInstructionProgramTypeDescriptor --
CREATE TABLE ks.LanguageInstructionProgramTypeDescriptor (
    LanguageInstructionProgramTypeDescriptorId INT NOT NULL,
    CONSTRAINT LanguageInstructionProgramTypeDescriptor_PK PRIMARY KEY (LanguageInstructionProgramTypeDescriptorId)
);

-- Table ks.MilitaryConnectedStudentDescriptor --
CREATE TABLE ks.MilitaryConnectedStudentDescriptor (
    MilitaryConnectedStudentDescriptorId INT NOT NULL,
    CONSTRAINT MilitaryConnectedStudentDescriptor_PK PRIMARY KEY (MilitaryConnectedStudentDescriptorId)
);

-- Table ks.NeglectedDelinquentStudentDescriptor --
CREATE TABLE ks.NeglectedDelinquentStudentDescriptor (
    NeglectedDelinquentStudentDescriptorId INT NOT NULL,
    CONSTRAINT NeglectedDelinquentStudentDescriptor_PK PRIMARY KEY (NeglectedDelinquentStudentDescriptorId)
);

-- Table ks.PostGraduationPlansDescriptor --
CREATE TABLE ks.PostGraduationPlansDescriptor (
    PostGraduationPlansDescriptorId INT NOT NULL,
    CONSTRAINT PostGraduationPlansDescriptor_PK PRIMARY KEY (PostGraduationPlansDescriptorId)
);

-- Table ks.QualifiedFor504Descriptor --
CREATE TABLE ks.QualifiedFor504Descriptor (
    QualifiedFor504DescriptorId INT NOT NULL,
    CONSTRAINT QualifiedFor504Descriptor_PK PRIMARY KEY (QualifiedFor504DescriptorId)
);

-- Table ks.SchoolExtension --
CREATE TABLE ks.SchoolExtension (
    SchoolId INT NOT NULL,
    DateClosed DATE NULL,
    DateOpened DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SchoolExtension_PK PRIMARY KEY (SchoolId)
);
ALTER TABLE ks.SchoolExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.SectionEducator --
CREATE TABLE ks.SectionEducator (
    EducatorElectronicMailAddress VARCHAR(128) NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    EducatorFirstName VARCHAR(75) NULL,
    EducatorLastSurname VARCHAR(75) NULL,
    EducatorMiddleName VARCHAR(75) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SectionEducator_PK PRIMARY KEY (EducatorElectronicMailAddress, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
);
ALTER TABLE ks.SectionEducator ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE ks.SectionEducator ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE ks.SectionEducator ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.SnackPack --
CREATE TABLE ks.SnackPack (
    StateStudentId VARCHAR(32) NOT NULL,
    AccountabilitySchool VARCHAR(75) NULL,
    CumulativeDaysAttended DECIMAL(4, 1) NULL,
    ESOLBilingualProgramEntryDate VARCHAR(10) NULL,
    ESOLBilingualProgramParticipationCode VARCHAR(75) NULL,
    FirstLanguage VARCHAR(75) NULL,
    GiftedStudentIndicator VARCHAR(10) NULL,
    GradeLevel VARCHAR(75) NULL,
    Homeless VARCHAR(10) NULL,
    Immigrant VARCHAR(10) NULL,
    KansasAtRiskProgramParticipation VARCHAR(10) NULL,
    LunchProgramEligibilityAtRiskFunding VARCHAR(75) NULL,
    MostRecentSchool VARCHAR(75) NULL,
    NeglectedDelinquentStudent VARCHAR(10) NULL,
    PrimaryDisabilityIndicator VARCHAR(10) NULL,
    Qualifiedfor504 VARCHAR(10) NULL,
    ResidenceDistrict VARCHAR(75) NULL,
    SchoolEntryDate DATE NULL,
    SchoolExitWithdrawalDate DATE NULL,
    TitleIParticipation VARCHAR(10) NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT SnackPack_PK PRIMARY KEY (StateStudentId)
);
ALTER TABLE ks.SnackPack ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE ks.SnackPack ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE ks.SnackPack ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.StudentAssessmentExtension --
CREATE TABLE ks.StudentAssessmentExtension (
    AssessmentIdentifier VARCHAR(60) NOT NULL,
    Namespace VARCHAR(255) NOT NULL,
    StudentAssessmentIdentifier VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    AssessmentRequestDescriptorId INT NULL,
    ProctorStaffUSI INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentAssessmentExtension_PK PRIMARY KEY (AssessmentIdentifier, Namespace, StudentAssessmentIdentifier, StudentUSI)
);
ALTER TABLE ks.StudentAssessmentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.StudentEducationOrganizationAssociationCTE --
CREATE TABLE ks.StudentEducationOrganizationAssociationCTE (
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CertificationTermDescriptorId INT NOT NULL,
    CTECertificationDateEarned DATE NOT NULL,
    CTECertificationEarnedDescriptorId INT NOT NULL,
    GraduationYear INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationCTE_PK PRIMARY KEY (EducationOrganizationId, StudentUSI, CertificationTermDescriptorId, CTECertificationDateEarned, CTECertificationEarnedDescriptorId, GraduationYear)
);
ALTER TABLE ks.StudentEducationOrganizationAssociationCTE ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.StudentEducationOrganizationAssociationExtension --
CREATE TABLE ks.StudentEducationOrganizationAssociationExtension (
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    DistrictOfResidence VARCHAR(10) NULL,
    ImmigrantStudentDescriptorId INT NULL,
    MilitaryConnectedStudentDescriptorId INT NULL,
    NeglectedDelinquentStudentDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
);
ALTER TABLE ks.StudentEducationOrganizationAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.StudentEducationOrganizationAssociationTransportation --
CREATE TABLE ks.StudentEducationOrganizationAssociationTransportation (
    EducationOrganizationId INT NOT NULL,
    StudentUSI INT NOT NULL,
    MilesTransported DECIMAL(3, 1) NULL,
    NonResidentTransportation BOOLEAN NULL,
    TransportationFTE DECIMAL(2, 1) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentEducationOrganizationAssociationTransportation_PK PRIMARY KEY (EducationOrganizationId, StudentUSI)
);
ALTER TABLE ks.StudentEducationOrganizationAssociationTransportation ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.StudentKPATProgramAssociation --
CREATE TABLE ks.StudentKPATProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CONSTRAINT StudentKPATProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table ks.StudentKPPProgramAssociation --
CREATE TABLE ks.StudentKPPProgramAssociation (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    CONSTRAINT StudentKPPProgramAssociation_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);

-- Table ks.StudentLanguageInstructionProgramAssociationExtension --
CREATE TABLE ks.StudentLanguageInstructionProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    ProgramEducationOrganizationId INT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    EndDate DATE NULL,
    FundingSourceDescriptorId INT NULL,
    LanguageInstructionProgramTypeDescriptorId INT NULL,
    USInitialSchoolEntryDate DATE NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentLanguageInstructionProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE ks.StudentLanguageInstructionProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.StudentSchoolAssociationExtension --
CREATE TABLE ks.StudentSchoolAssociationExtension (
    EntryDate DATE NOT NULL,
    SchoolId INT NOT NULL,
    StudentUSI INT NOT NULL,
    AttendanceDays DECIMAL(4, 1) NULL,
    CreditsEarned DECIMAL(9, 3) NULL,
    CreditsRequiredToGraduate DECIMAL(9, 3) NULL,
    CTEContactMinutes DECIMAL(3, 0) NULL,
    FirstInstructionalDate DATE NULL,
    IndividualPlanOfStudy BOOLEAN NULL,
    LocalEducationAgencyEntryDate DATE NOT NULL,
    MembershipDays DECIMAL(4, 1) NULL,
    MinutesEnrolled INT NULL,
    PostGraduationPlansDescriptorId INT NULL,
    QualifiedFor504DescriptorId INT NULL,
    StateEntryDate DATE NOT NULL,
    UnweightedGradePointAverage DECIMAL(3, 2) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolAssociationExtension_PK PRIMARY KEY (EntryDate, SchoolId, StudentUSI)
);
ALTER TABLE ks.StudentSchoolAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.StudentSectionAssociationExtension --
CREATE TABLE ks.StudentSectionAssociationExtension (
    BeginDate DATE NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId INT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    CourseStatusDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSectionAssociationExtension_PK PRIMARY KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
);
ALTER TABLE ks.StudentSectionAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table ks.WorkBasedLearningDescriptor --
CREATE TABLE ks.WorkBasedLearningDescriptor (
    WorkBasedLearningDescriptorId INT NOT NULL,
    CONSTRAINT WorkBasedLearningDescriptor_PK PRIMARY KEY (WorkBasedLearningDescriptorId)
);

