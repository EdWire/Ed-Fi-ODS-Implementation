-- Table eop.EducationOrganizationEducationOrganizationProgram --
CREATE TABLE eop.EducationOrganizationEducationOrganizationProgram (
    BeginDate DATE NOT NULL,
    EducationOrganizationId INT NOT NULL,
    EducationOrganizationProgramTypeDescriptorId INT NOT NULL,
    EndDate DATE NULL,
    NameOfInstitution VARCHAR(75) NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT EducationOrganizationEducationOrganizationProgram_PK PRIMARY KEY (BeginDate, EducationOrganizationId, EducationOrganizationProgramTypeDescriptorId)
);
ALTER TABLE eop.EducationOrganizationEducationOrganizationProgram ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE eop.EducationOrganizationEducationOrganizationProgram ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE eop.EducationOrganizationEducationOrganizationProgram ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table eop.EducationOrganizationProgramAuthorizedProvider --
CREATE TABLE eop.EducationOrganizationProgramAuthorizedProvider (
    BeginDate DATE NOT NULL,
    EducationOrganizationProgramTypeDescriptorId INT NOT NULL,
    NameOfInstitution VARCHAR(75) NOT NULL,
    EndDate DATE NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT EducationOrganizationProgramAuthorizedProvider_PK PRIMARY KEY (BeginDate, EducationOrganizationProgramTypeDescriptorId, NameOfInstitution)
);
ALTER TABLE eop.EducationOrganizationProgramAuthorizedProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE eop.EducationOrganizationProgramAuthorizedProvider ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE eop.EducationOrganizationProgramAuthorizedProvider ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table eop.EducationOrganizationProgramProvider --
CREATE TABLE eop.EducationOrganizationProgramProvider (
    NameOfInstitution VARCHAR(75) NOT NULL,
    EducationServiceCenterId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT EducationOrganizationProgramProvider_PK PRIMARY KEY (NameOfInstitution)
);
ALTER TABLE eop.EducationOrganizationProgramProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE eop.EducationOrganizationProgramProvider ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE eop.EducationOrganizationProgramProvider ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table eop.EducationOrganizationProgramTypeDescriptor --
CREATE TABLE eop.EducationOrganizationProgramTypeDescriptor (
    EducationOrganizationProgramTypeDescriptorId INT NOT NULL,
    CONSTRAINT EducationOrganizationProgramTypeDescriptor_PK PRIMARY KEY (EducationOrganizationProgramTypeDescriptorId)
);

