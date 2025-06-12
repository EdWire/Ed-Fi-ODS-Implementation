
CREATE SEQUENCE idoe.AssessmentAccommodation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.AssessmentAccommodation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.AssessmentAccommodation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_AssessmentAccommodation_aggid ON idoe.AssessmentAccommodation (AggregateId);


CREATE SEQUENCE idoe.EducationOrganizationOtherPersonnel_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.EducationOrganizationOtherPersonnel ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.EducationOrganizationOtherPersonnel_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EducationOrganizationOtherPersonnel_aggid ON idoe.EducationOrganizationOtherPersonnel (AggregateId);


CREATE SEQUENCE idoe.LocalCapitalizedEquipment_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.LocalCapitalizedEquipment ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.LocalCapitalizedEquipment_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_LocalCapitalizedEquipment_aggid ON idoe.LocalCapitalizedEquipment (AggregateId);


CREATE SEQUENCE idoe.LocalSubaward_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.LocalSubaward ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.LocalSubaward_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_LocalSubaward_aggid ON idoe.LocalSubaward (AggregateId);


CREATE SEQUENCE idoe.LocalUnusedLeavePayment_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.LocalUnusedLeavePayment ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.LocalUnusedLeavePayment_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_LocalUnusedLeavePayment_aggid ON idoe.LocalUnusedLeavePayment (AggregateId);


CREATE SEQUENCE idoe.SectionDimension_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.SectionDimension ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.SectionDimension_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SectionDimension_aggid ON idoe.SectionDimension (AggregateId);


CREATE SEQUENCE idoe.StudentAccommodation_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.StudentAccommodation ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.StudentAccommodation_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentAccommodation_aggid ON idoe.StudentAccommodation (AggregateId);


CREATE SEQUENCE idoe.StudentSchoolGraduationPlan_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.StudentSchoolGraduationPlan ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.StudentSchoolGraduationPlan_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentSchoolGraduationPlan_aggid ON idoe.StudentSchoolGraduationPlan (AggregateId);


CREATE SEQUENCE idoe.SubCategoryDimension_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE idoe.SubCategoryDimension ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('idoe.SubCategoryDimension_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SubCategoryDimension_aggid ON idoe.SubCategoryDimension (AggregateId);

