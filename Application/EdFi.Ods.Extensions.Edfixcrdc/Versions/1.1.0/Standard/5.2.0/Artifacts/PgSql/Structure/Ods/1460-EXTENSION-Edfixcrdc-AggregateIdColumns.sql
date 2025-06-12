
CREATE SEQUENCE edfixcrdc.ClassGroup_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE edfixcrdc.ClassGroup ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('edfixcrdc.ClassGroup_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_ClassGroup_aggid ON edfixcrdc.ClassGroup (AggregateId);


CREATE SEQUENCE edfixcrdc.CommunityProviderLocation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE edfixcrdc.CommunityProviderLocation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('edfixcrdc.CommunityProviderLocation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_CommunityProviderLocation_aggid ON edfixcrdc.CommunityProviderLocation (AggregateId);


CREATE SEQUENCE edfixcrdc.StudentClassGroupAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE edfixcrdc.StudentClassGroupAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('edfixcrdc.StudentClassGroupAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentClassGroupAssociation_aggid ON edfixcrdc.StudentClassGroupAssociation (AggregateId);


CREATE SEQUENCE edfixcrdc.StudentCommunityProviderLocationAssociation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE edfixcrdc.StudentCommunityProviderLocationAssociation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('edfixcrdc.StudentCommunityProviderLocationAssociation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentCommunityProviderLocationAssociation_aggid ON edfixcrdc.StudentCommunityProviderLocationAssociation (AggregateId);

