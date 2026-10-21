ALTER TABLE edfixcrdc.RestraintCategoryDescriptor ADD CONSTRAINT FK_fab563_Descriptor FOREIGN KEY (RestraintCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE edfixcrdc.RestraintEventRestraintCategory ADD CONSTRAINT FK_abb4eb_RestraintCategoryDescriptor FOREIGN KEY (RestraintCategoryDescriptorId)
REFERENCES edfixcrdc.RestraintCategoryDescriptor (RestraintCategoryDescriptorId)
;

CREATE INDEX FK_abb4eb_RestraintCategoryDescriptor
ON edfixcrdc.RestraintEventRestraintCategory (RestraintCategoryDescriptorId ASC);

ALTER TABLE edfixcrdc.RestraintEventRestraintCategory ADD CONSTRAINT FK_abb4eb_RestraintEvent FOREIGN KEY (RestraintEventIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.RestraintEvent (RestraintEventIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

