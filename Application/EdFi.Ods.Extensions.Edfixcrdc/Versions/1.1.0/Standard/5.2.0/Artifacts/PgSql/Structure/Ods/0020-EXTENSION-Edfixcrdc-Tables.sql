-- Table edfixcrdc.RestraintCategoryDescriptor --
CREATE TABLE edfixcrdc.RestraintCategoryDescriptor (
    RestraintCategoryDescriptorId INT NOT NULL,
    CONSTRAINT RestraintCategoryDescriptor_PK PRIMARY KEY (RestraintCategoryDescriptorId)
);

-- Table edfixcrdc.RestraintEventRestraintCategory --
CREATE TABLE edfixcrdc.RestraintEventRestraintCategory (
    RestraintEventIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    StudentUSI INT NOT NULL,
    RestraintCategoryDescriptorId INT NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT RestraintEventRestraintCategory_PK PRIMARY KEY (RestraintEventIdentifier, SchoolId, StudentUSI, RestraintCategoryDescriptorId)
);
ALTER TABLE edfixcrdc.RestraintEventRestraintCategory ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

