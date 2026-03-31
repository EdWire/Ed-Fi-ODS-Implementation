-- Table edorgprogram.EducationOrganizationEducationOrganizationProgram --
CREATE TABLE edorgprogram.EducationOrganizationEducationOrganizationProgram (
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
ALTER TABLE edorgprogram.EducationOrganizationEducationOrganizationProgram ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE edorgprogram.EducationOrganizationEducationOrganizationProgram ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edorgprogram.EducationOrganizationEducationOrganizationProgram ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edorgprogram.EducationOrganizationProgramAuthorizedProvider --
CREATE TABLE edorgprogram.EducationOrganizationProgramAuthorizedProvider (
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
ALTER TABLE edorgprogram.EducationOrganizationProgramAuthorizedProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE edorgprogram.EducationOrganizationProgramAuthorizedProvider ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edorgprogram.EducationOrganizationProgramAuthorizedProvider ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edorgprogram.EducationOrganizationProgramProvider --
CREATE TABLE edorgprogram.EducationOrganizationProgramProvider (
    NameOfInstitution VARCHAR(75) NOT NULL,
    EducationServiceCenterId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT EducationOrganizationProgramProvider_PK PRIMARY KEY (NameOfInstitution)
);
ALTER TABLE edorgprogram.EducationOrganizationProgramProvider ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE edorgprogram.EducationOrganizationProgramProvider ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE edorgprogram.EducationOrganizationProgramProvider ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table edorgprogram.EducationOrganizationProgramTypeDescriptor --
CREATE TABLE edorgprogram.EducationOrganizationProgramTypeDescriptor (
    EducationOrganizationProgramTypeDescriptorId INT NOT NULL,
    CONSTRAINT EducationOrganizationProgramTypeDescriptor_PK PRIMARY KEY (EducationOrganizationProgramTypeDescriptorId)
);

