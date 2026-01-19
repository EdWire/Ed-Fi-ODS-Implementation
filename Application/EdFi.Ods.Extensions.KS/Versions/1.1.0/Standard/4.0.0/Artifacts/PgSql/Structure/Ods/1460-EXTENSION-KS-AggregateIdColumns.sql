
CREATE SEQUENCE ks.SectionEducator_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE ks.SectionEducator ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('ks.SectionEducator_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SectionEducator_aggid ON ks.SectionEducator (AggregateId);


CREATE SEQUENCE ks.SnackPack_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE ks.SnackPack ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('ks.SnackPack_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_SnackPack_aggid ON ks.SnackPack (AggregateId);

