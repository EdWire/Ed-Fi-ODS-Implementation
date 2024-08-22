DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_edfixassessmentroster') THEN
CREATE SCHEMA tracked_changes_edfixassessmentroster;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_edfixassessmentroster' AND table_name = 'assessmentadministration') THEN
CREATE TABLE tracked_changes_edfixassessmentroster.assessmentadministration
(
       oldadministrationidentifier VARCHAR(255) NOT NULL,
       oldassessmentidentifier VARCHAR(60) NOT NULL,
       oldassigningeducationorganizationid INT NOT NULL,
       oldnamespace VARCHAR(255) NOT NULL,
       newadministrationidentifier VARCHAR(255) NULL,
       newassessmentidentifier VARCHAR(60) NULL,
       newassigningeducationorganizationid INT NULL,
       newnamespace VARCHAR(255) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT assessmentadministration_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_edfixassessmentroster' AND table_name = 'studentassessmentregistration') THEN
CREATE TABLE tracked_changes_edfixassessmentroster.studentassessmentregistration
(
       oldadministrationidentifier VARCHAR(255) NOT NULL,
       oldassessmentidentifier VARCHAR(60) NOT NULL,
       oldassigningeducationorganizationid INT NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldnamespace VARCHAR(255) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newadministrationidentifier VARCHAR(255) NULL,
       newassessmentidentifier VARCHAR(60) NULL,
       newassigningeducationorganizationid INT NULL,
       neweducationorganizationid INT NULL,
       newnamespace VARCHAR(255) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentassessmentregistration_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
