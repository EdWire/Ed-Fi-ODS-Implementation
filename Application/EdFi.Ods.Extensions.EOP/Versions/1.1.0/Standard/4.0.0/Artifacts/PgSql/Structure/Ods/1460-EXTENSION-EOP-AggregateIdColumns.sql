
CREATE SEQUENCE eop.EducationOrganizationEducationOrganizationProgram_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE eop.EducationOrganizationEducationOrganizationProgram ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('eop.EducationOrganizationEducationOrganizationProgram_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EducationOrganizationEducationOrganizationProgram_aggid ON eop.EducationOrganizationEducationOrganizationProgram (AggregateId);


CREATE SEQUENCE eop.EducationOrganizationProgramAuthorizedProvider_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE eop.EducationOrganizationProgramAuthorizedProvider ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('eop.EducationOrganizationProgramAuthorizedProvider_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EducationOrganizationProgramAuthorizedProvider_aggid ON eop.EducationOrganizationProgramAuthorizedProvider (AggregateId);


CREATE SEQUENCE eop.EducationOrganizationProgramProvider_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE eop.EducationOrganizationProgramProvider ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('eop.EducationOrganizationProgramProvider_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EducationOrganizationProgramProvider_aggid ON eop.EducationOrganizationProgramProvider (AggregateId);

