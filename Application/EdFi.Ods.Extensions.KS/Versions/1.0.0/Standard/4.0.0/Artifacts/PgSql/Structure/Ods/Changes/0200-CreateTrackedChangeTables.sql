DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_ks') THEN
CREATE SCHEMA tracked_changes_ks;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_ks' AND table_name = 'sectioneducator') THEN
CREATE TABLE tracked_changes_ks.sectioneducator
(
       oldeducatorelectronicmailaddress VARCHAR(128) NOT NULL,
       oldlocalcoursecode VARCHAR(60) NOT NULL,
       oldschoolid INT NOT NULL,
       oldschoolyear SMALLINT NOT NULL,
       oldsectionidentifier VARCHAR(255) NOT NULL,
       oldsessionname VARCHAR(60) NOT NULL,
       neweducatorelectronicmailaddress VARCHAR(128) NULL,
       newlocalcoursecode VARCHAR(60) NULL,
       newschoolid INT NULL,
       newschoolyear SMALLINT NULL,
       newsectionidentifier VARCHAR(255) NULL,
       newsessionname VARCHAR(60) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT sectioneducator_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_ks' AND table_name = 'snackpack') THEN
CREATE TABLE tracked_changes_ks.snackpack
(
       oldstatestudentid VARCHAR(32) NOT NULL,
       newstatestudentid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT snackpack_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
