
CREATE SEQUENCE ne.EmergencyExclusion_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE ne.EmergencyExclusion ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('ne.EmergencyExclusion_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_EmergencyExclusion_aggid ON ne.EmergencyExclusion (AggregateId);


CREATE SEQUENCE ne.IdeaEvent_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE ne.IdeaEvent ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('ne.IdeaEvent_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_IdeaEvent_aggid ON ne.IdeaEvent (AggregateId);


CREATE SEQUENCE ne.PostGraduateActivity_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE ne.PostGraduateActivity ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('ne.PostGraduateActivity_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_PostGraduateActivity_aggid ON ne.PostGraduateActivity (AggregateId);

