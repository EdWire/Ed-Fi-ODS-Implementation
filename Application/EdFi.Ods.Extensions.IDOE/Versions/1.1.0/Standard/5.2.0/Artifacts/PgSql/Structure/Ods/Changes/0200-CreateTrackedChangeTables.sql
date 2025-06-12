DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_idoe') THEN
CREATE SCHEMA tracked_changes_idoe;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'assessmentaccommodation') THEN
CREATE TABLE tracked_changes_idoe.assessmentaccommodation
(
       oldaccommodationdescriptorid INT NOT NULL,
       oldaccommodationdescriptornamespace VARCHAR(255) NOT NULL,
       oldaccommodationdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldassessmentidentifier VARCHAR(60) NOT NULL,
       oldnamespace VARCHAR(255) NOT NULL,
       newaccommodationdescriptorid INT NULL,
       newaccommodationdescriptornamespace VARCHAR(255) NULL,
       newaccommodationdescriptorcodevalue VARCHAR(50) NULL,
       newassessmentidentifier VARCHAR(60) NULL,
       newnamespace VARCHAR(255) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT assessmentaccommodation_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'educationorganizationotherpersonnel') THEN
CREATE TABLE tracked_changes_idoe.educationorganizationotherpersonnel
(
       oldlocaleducationagencyid BIGINT NOT NULL,
       oldotherpersonnelcategorydescriptorid INT NOT NULL,
       oldotherpersonnelcategorydescriptornamespace VARCHAR(255) NOT NULL,
       oldotherpersonnelcategorydescriptorcodevalue VARCHAR(50) NOT NULL,
       oldotherpersonneltitledescriptorid INT NOT NULL,
       oldotherpersonneltitledescriptornamespace VARCHAR(255) NOT NULL,
       oldotherpersonneltitledescriptorcodevalue VARCHAR(50) NOT NULL,
       newlocaleducationagencyid BIGINT NULL,
       newotherpersonnelcategorydescriptorid INT NULL,
       newotherpersonnelcategorydescriptornamespace VARCHAR(255) NULL,
       newotherpersonnelcategorydescriptorcodevalue VARCHAR(50) NULL,
       newotherpersonneltitledescriptorid INT NULL,
       newotherpersonneltitledescriptornamespace VARCHAR(255) NULL,
       newotherpersonneltitledescriptorcodevalue VARCHAR(50) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT educationorganizationotherpersonnel_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'localcapitalizedequipment') THEN
CREATE TABLE tracked_changes_idoe.localcapitalizedequipment
(
       oldaccountidentifier VARCHAR(50) NOT NULL,
       oldasofdate DATE NOT NULL,
       oldeducationorganizationid BIGINT NOT NULL,
       oldfiscalyear INT NOT NULL,
       oldrecordidentifier VARCHAR(100) NOT NULL,
       newaccountidentifier VARCHAR(50) NULL,
       newasofdate DATE NULL,
       neweducationorganizationid BIGINT NULL,
       newfiscalyear INT NULL,
       newrecordidentifier VARCHAR(100) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT localcapitalizedequipment_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'localsubaward') THEN
CREATE TABLE tracked_changes_idoe.localsubaward
(
       oldaccountidentifier VARCHAR(50) NOT NULL,
       oldasofdate DATE NOT NULL,
       oldeducationorganizationid BIGINT NOT NULL,
       oldfiscalyear INT NOT NULL,
       oldrecordidentifier VARCHAR(100) NOT NULL,
       newaccountidentifier VARCHAR(50) NULL,
       newasofdate DATE NULL,
       neweducationorganizationid BIGINT NULL,
       newfiscalyear INT NULL,
       newrecordidentifier VARCHAR(100) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT localsubaward_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'localunusedleavepayment') THEN
CREATE TABLE tracked_changes_idoe.localunusedleavepayment
(
       oldaccountidentifier VARCHAR(50) NOT NULL,
       oldasofdate DATE NOT NULL,
       oldeducationorganizationid BIGINT NOT NULL,
       oldfiscalyear INT NOT NULL,
       oldrecordidentifier VARCHAR(100) NOT NULL,
       newaccountidentifier VARCHAR(50) NULL,
       newasofdate DATE NULL,
       neweducationorganizationid BIGINT NULL,
       newfiscalyear INT NULL,
       newrecordidentifier VARCHAR(100) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT localunusedleavepayment_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'sectiondimension') THEN
CREATE TABLE tracked_changes_idoe.sectiondimension
(
       oldcode VARCHAR(16) NOT NULL,
       oldfiscalyear INT NOT NULL,
       newcode VARCHAR(16) NULL,
       newfiscalyear INT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT sectiondimension_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'studentaccommodation') THEN
CREATE TABLE tracked_changes_idoe.studentaccommodation
(
       oldaccommodationdescriptorid INT NOT NULL,
       oldaccommodationdescriptornamespace VARCHAR(255) NOT NULL,
       oldaccommodationdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldassessmentidentifier VARCHAR(60) NOT NULL,
       oldeducationorganizationid BIGINT NOT NULL,
       oldnamespace VARCHAR(255) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newaccommodationdescriptorid INT NULL,
       newaccommodationdescriptornamespace VARCHAR(255) NULL,
       newaccommodationdescriptorcodevalue VARCHAR(50) NULL,
       newassessmentidentifier VARCHAR(60) NULL,
       neweducationorganizationid BIGINT NULL,
       newnamespace VARCHAR(255) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentaccommodation_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'studentschoolgraduationplan') THEN
CREATE TABLE tracked_changes_idoe.studentschoolgraduationplan
(
       oldbegindate DATE NOT NULL,
       oldeducationorganizationid BIGINT NOT NULL,
       oldgraduationplantypedescriptorid INT NOT NULL,
       oldgraduationplantypedescriptornamespace VARCHAR(255) NOT NULL,
       oldgraduationplantypedescriptorcodevalue VARCHAR(50) NOT NULL,
       oldgraduationschoolyear SMALLINT NOT NULL,
       oldschoolid BIGINT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newbegindate DATE NULL,
       neweducationorganizationid BIGINT NULL,
       newgraduationplantypedescriptorid INT NULL,
       newgraduationplantypedescriptornamespace VARCHAR(255) NULL,
       newgraduationplantypedescriptorcodevalue VARCHAR(50) NULL,
       newgraduationschoolyear SMALLINT NULL,
       newschoolid BIGINT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentschoolgraduationplan_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_idoe' AND table_name = 'subcategorydimension') THEN
CREATE TABLE tracked_changes_idoe.subcategorydimension
(
       oldcode VARCHAR(16) NOT NULL,
       oldfiscalyear INT NOT NULL,
       newcode VARCHAR(16) NULL,
       newfiscalyear INT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT subcategorydimension_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
