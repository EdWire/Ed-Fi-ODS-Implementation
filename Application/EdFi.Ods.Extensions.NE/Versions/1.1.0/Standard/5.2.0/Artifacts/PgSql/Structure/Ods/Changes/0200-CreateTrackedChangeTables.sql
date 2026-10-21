DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_ne') THEN
CREATE SCHEMA tracked_changes_ne;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_ne' AND table_name = 'emergencyexclusion') THEN
CREATE TABLE tracked_changes_ne.emergencyexclusion
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldexclusiondate DATE NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newexclusiondate DATE NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT emergencyexclusion_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_ne' AND table_name = 'ideaevent') THEN
CREATE TABLE tracked_changes_ne.ideaevent
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldideaeventdescriptorid INT NOT NULL,
       oldideaeventdescriptornamespace VARCHAR(255) NOT NULL,
       oldideaeventdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldideaeventid VARCHAR(128) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newideaeventdescriptorid INT NULL,
       newideaeventdescriptornamespace VARCHAR(255) NULL,
       newideaeventdescriptorcodevalue VARCHAR(50) NULL,
       newideaeventid VARCHAR(128) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT ideaevent_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_ne' AND table_name = 'postgraduateactivity') THEN
CREATE TABLE tracked_changes_ne.postgraduateactivity
(
       oldlocaleducationagencyid BIGINT NOT NULL,
       oldschoolyear SMALLINT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newlocaleducationagencyid BIGINT NULL,
       newschoolyear SMALLINT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT postgraduateactivity_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
