DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_edorgprogram') THEN
CREATE SCHEMA tracked_changes_edorgprogram;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_edorgprogram' AND table_name = 'educationorganizationeducationorganizationprogram') THEN
CREATE TABLE tracked_changes_edorgprogram.educationorganizationeducationorganizationprogram
(
       oldbegindate DATE NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldeducationorganizationprogramtypedescriptorid INT NOT NULL,
       oldeducationorganizationprogramtypedescriptornamespace VARCHAR(255) NOT NULL,
       oldeducationorganizationprogramtypedescriptorcodevalue VARCHAR(50) NOT NULL,
       newbegindate DATE NULL,
       neweducationorganizationid INT NULL,
       neweducationorganizationprogramtypedescriptorid INT NULL,
       neweducationorganizationprogramtypedescriptornamespace VARCHAR(255) NULL,
       neweducationorganizationprogramtypedescriptorcodevalue VARCHAR(50) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT educationorganizationeducationorganizationprogram_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_edorgprogram' AND table_name = 'educationorganizationprogramauthorizedprovider') THEN
CREATE TABLE tracked_changes_edorgprogram.educationorganizationprogramauthorizedprovider
(
       oldbegindate DATE NOT NULL,
       oldeducationorganizationprogramtypedescriptorid INT NOT NULL,
       oldeducationorganizationprogramtypedescriptornamespace VARCHAR(255) NOT NULL,
       oldeducationorganizationprogramtypedescriptorcodevalue VARCHAR(50) NOT NULL,
       oldnameofinstitution VARCHAR(75) NOT NULL,
       newbegindate DATE NULL,
       neweducationorganizationprogramtypedescriptorid INT NULL,
       neweducationorganizationprogramtypedescriptornamespace VARCHAR(255) NULL,
       neweducationorganizationprogramtypedescriptorcodevalue VARCHAR(50) NULL,
       newnameofinstitution VARCHAR(75) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT educationorganizationprogramauthorizedprovider_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_edorgprogram' AND table_name = 'educationorganizationprogramprovider') THEN
CREATE TABLE tracked_changes_edorgprogram.educationorganizationprogramprovider
(
       oldnameofinstitution VARCHAR(75) NOT NULL,
       newnameofinstitution VARCHAR(75) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT educationorganizationprogramprovider_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
