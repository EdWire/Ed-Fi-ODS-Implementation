DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_tx') THEN
CREATE SCHEMA tracked_changes_tx;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'basicreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.basicreportingperiodattendance
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT basicreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'bilingualeslprogramreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.bilingualeslprogramreportingperiodattendance
(
       oldbilingualeslfundingdescriptorid INT NOT NULL,
       oldbilingualeslfundingdescriptornamespace VARCHAR(255) NOT NULL,
       oldbilingualeslfundingdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newbilingualeslfundingdescriptorid INT NULL,
       newbilingualeslfundingdescriptornamespace VARCHAR(255) NULL,
       newbilingualeslfundingdescriptorcodevalue VARCHAR(50) NULL,
       newcalendarcode VARCHAR(60) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT bilingualeslprogramreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'budgetext') THEN
CREATE TABLE tracked_changes_tx.budgetext
(
       oldbegindate DATE NOT NULL,
       oldbudgetfunctiondescriptorid INT NOT NULL,
       oldbudgetfunctiondescriptornamespace VARCHAR(255) NOT NULL,
       oldbudgetfunctiondescriptorcodevalue VARCHAR(50) NOT NULL,
       oldbudgetfunddescriptorid INT NOT NULL,
       oldbudgetfunddescriptornamespace VARCHAR(255) NOT NULL,
       oldbudgetfunddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldbudgetobjectdescriptorid INT NOT NULL,
       oldbudgetobjectdescriptornamespace VARCHAR(255) NOT NULL,
       oldbudgetobjectdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldbudgetprogramintentdescriptorid INT NOT NULL,
       oldbudgetprogramintentdescriptornamespace VARCHAR(255) NOT NULL,
       oldbudgetprogramintentdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldfiscalyear INT NOT NULL,
       oldorganization INT NOT NULL,
       newbegindate DATE NULL,
       newbudgetfunctiondescriptorid INT NULL,
       newbudgetfunctiondescriptornamespace VARCHAR(255) NULL,
       newbudgetfunctiondescriptorcodevalue VARCHAR(50) NULL,
       newbudgetfunddescriptorid INT NULL,
       newbudgetfunddescriptornamespace VARCHAR(255) NULL,
       newbudgetfunddescriptorcodevalue VARCHAR(50) NULL,
       newbudgetobjectdescriptorid INT NULL,
       newbudgetobjectdescriptornamespace VARCHAR(255) NULL,
       newbudgetobjectdescriptorcodevalue VARCHAR(50) NULL,
       newbudgetprogramintentdescriptorid INT NULL,
       newbudgetprogramintentdescriptornamespace VARCHAR(255) NULL,
       newbudgetprogramintentdescriptorcodevalue VARCHAR(50) NULL,
       neweducationorganizationid INT NULL,
       newfiscalyear INT NULL,
       neworganization INT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT budgetext_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'contractedinstructionalstafffteext') THEN
CREATE TABLE tracked_changes_tx.contractedinstructionalstafffteext
(
       oldcistaffprogramintentdescriptorid INT NOT NULL,
       oldcistaffprogramintentdescriptornamespace VARCHAR(255) NOT NULL,
       oldcistaffprogramintentdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldschoolid INT NOT NULL,
       newcistaffprogramintentdescriptorid INT NULL,
       newcistaffprogramintentdescriptornamespace VARCHAR(255) NULL,
       newcistaffprogramintentdescriptorcodevalue VARCHAR(50) NULL,
       neweducationorganizationid INT NULL,
       newschoolid INT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT contractedinstructionalstafffteext_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'cteprogramreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.cteprogramreportingperiodattendance
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldcteserviceiddescriptorid INT NOT NULL,
       oldcteserviceiddescriptornamespace VARCHAR(255) NOT NULL,
       oldcteserviceiddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newcteserviceiddescriptorid INT NULL,
       newcteserviceiddescriptornamespace VARCHAR(255) NULL,
       newcteserviceiddescriptorcodevalue VARCHAR(50) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT cteprogramreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'descriptormappinghistory') THEN
CREATE TABLE tracked_changes_tx.descriptormappinghistory
(
       olddateofoperation TIMESTAMP NOT NULL,
       oldmappednamespace VARCHAR(255) NOT NULL,
       oldmappedvalue VARCHAR(50) NOT NULL,
       oldnamespace VARCHAR(255) NOT NULL,
       oldvalue VARCHAR(50) NOT NULL,
       newdateofoperation TIMESTAMP NULL,
       newmappednamespace VARCHAR(255) NULL,
       newmappedvalue VARCHAR(50) NULL,
       newnamespace VARCHAR(255) NULL,
       newvalue VARCHAR(50) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT descriptormappinghistory_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'extendedschoolyearservicesattendance') THEN
CREATE TABLE tracked_changes_tx.extendedschoolyearservicesattendance
(
       oldfirstinstructionalsettingdescriptorid INT NOT NULL,
       oldfirstinstructionalsettingdescriptornamespace VARCHAR(255) NOT NULL,
       oldfirstinstructionalsettingdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newfirstinstructionalsettingdescriptorid INT NULL,
       newfirstinstructionalsettingdescriptornamespace VARCHAR(255) NULL,
       newfirstinstructionalsettingdescriptorcodevalue VARCHAR(50) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT extendedschoolyearservicesattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'flexiblebilingualeslprogramreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.flexiblebilingualeslprogramreportingperiodattendance
(
       oldbilingualeslfundingdescriptorid INT NOT NULL,
       oldbilingualeslfundingdescriptornamespace VARCHAR(255) NOT NULL,
       oldbilingualeslfundingdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldflexattendanceprogramdescriptorid INT NOT NULL,
       oldflexattendanceprogramdescriptornamespace VARCHAR(255) NOT NULL,
       oldflexattendanceprogramdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newbilingualeslfundingdescriptorid INT NULL,
       newbilingualeslfundingdescriptornamespace VARCHAR(255) NULL,
       newbilingualeslfundingdescriptorcodevalue VARCHAR(50) NULL,
       newcalendarcode VARCHAR(60) NULL,
       newflexattendanceprogramdescriptorid INT NULL,
       newflexattendanceprogramdescriptornamespace VARCHAR(255) NULL,
       newflexattendanceprogramdescriptorcodevalue VARCHAR(50) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT flexiblebilingualeslprogramreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'flexiblecteprogramreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.flexiblecteprogramreportingperiodattendance
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldflexattendanceprogramdescriptorid INT NOT NULL,
       oldflexattendanceprogramdescriptornamespace VARCHAR(255) NOT NULL,
       oldflexattendanceprogramdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newflexattendanceprogramdescriptorid INT NULL,
       newflexattendanceprogramdescriptornamespace VARCHAR(255) NULL,
       newflexattendanceprogramdescriptorcodevalue VARCHAR(50) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT flexiblecteprogramreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'flexibleregularprogramreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.flexibleregularprogramreportingperiodattendance
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldflexattendanceprogramdescriptorid INT NOT NULL,
       oldflexattendanceprogramdescriptornamespace VARCHAR(255) NOT NULL,
       oldflexattendanceprogramdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newflexattendanceprogramdescriptorid INT NULL,
       newflexattendanceprogramdescriptornamespace VARCHAR(255) NULL,
       newflexattendanceprogramdescriptorcodevalue VARCHAR(50) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT flexibleregularprogramreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'flexiblespecialeducationprogramreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.flexiblespecialeducationprogramreportingperiodattendance
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldflexattendanceprogramdescriptorid INT NOT NULL,
       oldflexattendanceprogramdescriptornamespace VARCHAR(255) NOT NULL,
       oldflexattendanceprogramdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldinstructionalsettingdescriptorid INT NOT NULL,
       oldinstructionalsettingdescriptornamespace VARCHAR(255) NOT NULL,
       oldinstructionalsettingdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newflexattendanceprogramdescriptorid INT NULL,
       newflexattendanceprogramdescriptornamespace VARCHAR(255) NULL,
       newflexattendanceprogramdescriptorcodevalue VARCHAR(50) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newinstructionalsettingdescriptorid INT NULL,
       newinstructionalsettingdescriptornamespace VARCHAR(255) NULL,
       newinstructionalsettingdescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT flexiblespecialeducationprogramreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'payrollext') THEN
CREATE TABLE tracked_changes_tx.payrollext
(
       oldbegindate DATE NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldfiscalyear INT NOT NULL,
       oldorganization INT NOT NULL,
       oldpayrollactivitydescriptorid INT NOT NULL,
       oldpayrollactivitydescriptornamespace VARCHAR(255) NOT NULL,
       oldpayrollactivitydescriptorcodevalue VARCHAR(50) NOT NULL,
       oldpayrollfunctiondescriptorid INT NOT NULL,
       oldpayrollfunctiondescriptornamespace VARCHAR(255) NOT NULL,
       oldpayrollfunctiondescriptorcodevalue VARCHAR(50) NOT NULL,
       oldpayrollfunddescriptorid INT NOT NULL,
       oldpayrollfunddescriptornamespace VARCHAR(255) NOT NULL,
       oldpayrollfunddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldpayrollobjectdescriptorid INT NOT NULL,
       oldpayrollobjectdescriptornamespace VARCHAR(255) NOT NULL,
       oldpayrollobjectdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldpayrollprogramintentdescriptorid INT NOT NULL,
       oldpayrollprogramintentdescriptornamespace VARCHAR(255) NOT NULL,
       oldpayrollprogramintentdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstaffusi INT NOT NULL,
       oldstaffuniqueid VARCHAR(32) NOT NULL,
       newbegindate DATE NULL,
       neweducationorganizationid INT NULL,
       newfiscalyear INT NULL,
       neworganization INT NULL,
       newpayrollactivitydescriptorid INT NULL,
       newpayrollactivitydescriptornamespace VARCHAR(255) NULL,
       newpayrollactivitydescriptorcodevalue VARCHAR(50) NULL,
       newpayrollfunctiondescriptorid INT NULL,
       newpayrollfunctiondescriptornamespace VARCHAR(255) NULL,
       newpayrollfunctiondescriptorcodevalue VARCHAR(50) NULL,
       newpayrollfunddescriptorid INT NULL,
       newpayrollfunddescriptornamespace VARCHAR(255) NULL,
       newpayrollfunddescriptorcodevalue VARCHAR(50) NULL,
       newpayrollobjectdescriptorid INT NULL,
       newpayrollobjectdescriptornamespace VARCHAR(255) NULL,
       newpayrollobjectdescriptorcodevalue VARCHAR(50) NULL,
       newpayrollprogramintentdescriptorid INT NULL,
       newpayrollprogramintentdescriptornamespace VARCHAR(255) NULL,
       newpayrollprogramintentdescriptorcodevalue VARCHAR(50) NULL,
       newstaffusi INT NULL,
       newstaffuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT payrollext_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'prioryearactualext') THEN
CREATE TABLE tracked_changes_tx.prioryearactualext
(
       oldactualfunctiondescriptorid INT NOT NULL,
       oldactualfunctiondescriptornamespace VARCHAR(255) NOT NULL,
       oldactualfunctiondescriptorcodevalue VARCHAR(50) NOT NULL,
       oldactualfunddescriptorid INT NOT NULL,
       oldactualfunddescriptornamespace VARCHAR(255) NOT NULL,
       oldactualfunddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldactualobjectdescriptorid INT NOT NULL,
       oldactualobjectdescriptornamespace VARCHAR(255) NOT NULL,
       oldactualobjectdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldactualprogramintentdescriptorid INT NOT NULL,
       oldactualprogramintentdescriptornamespace VARCHAR(255) NOT NULL,
       oldactualprogramintentdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldfiscalyear INT NOT NULL,
       oldorganization INT NOT NULL,
       newactualfunctiondescriptorid INT NULL,
       newactualfunctiondescriptornamespace VARCHAR(255) NULL,
       newactualfunctiondescriptorcodevalue VARCHAR(50) NULL,
       newactualfunddescriptorid INT NULL,
       newactualfunddescriptornamespace VARCHAR(255) NULL,
       newactualfunddescriptorcodevalue VARCHAR(50) NULL,
       newactualobjectdescriptorid INT NULL,
       newactualobjectdescriptornamespace VARCHAR(255) NULL,
       newactualobjectdescriptorcodevalue VARCHAR(50) NULL,
       newactualprogramintentdescriptorid INT NULL,
       newactualprogramintentdescriptornamespace VARCHAR(255) NULL,
       newactualprogramintentdescriptorcodevalue VARCHAR(50) NULL,
       neweducationorganizationid INT NULL,
       newfiscalyear INT NULL,
       neworganization INT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT prioryearactualext_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'prioryearleaver') THEN
CREATE TABLE tracked_changes_tx.prioryearleaver
(
       oldschoolid INT NOT NULL,
       oldstudentuid VARCHAR(32) NOT NULL,
       newschoolid INT NULL,
       newstudentuid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT prioryearleaver_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'prioryearleaverparent') THEN
CREATE TABLE tracked_changes_tx.prioryearleaverparent
(
       oldparentuid VARCHAR(32) NOT NULL,
       newparentuid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT prioryearleaverparent_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'prioryearleaverstudentparentassociation') THEN
CREATE TABLE tracked_changes_tx.prioryearleaverstudentparentassociation
(
       oldparentuid VARCHAR(32) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentuid VARCHAR(32) NOT NULL,
       newparentuid VARCHAR(32) NULL,
       newschoolid INT NULL,
       newstudentuid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT prioryearleaverstudentparentassociation_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'reportingperiodext') THEN
CREATE TABLE tracked_changes_tx.reportingperiodext
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       olddate DATE NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldschoolyear SMALLINT NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newdate DATE NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newschoolyear SMALLINT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT reportingperiodext_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'sharedservicearrangementext') THEN
CREATE TABLE tracked_changes_tx.sharedservicearrangementext
(
       oldeducationorganizationid INT NOT NULL,
       oldfiscalyear INT NOT NULL,
       oldssafunddescriptorid INT NOT NULL,
       oldssafunddescriptornamespace VARCHAR(255) NOT NULL,
       oldssafunddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldssamemberdistrictid INT NOT NULL,
       oldssatypedescriptorid INT NOT NULL,
       oldssatypedescriptornamespace VARCHAR(255) NOT NULL,
       oldssatypedescriptorcodevalue VARCHAR(50) NOT NULL,
       neweducationorganizationid INT NULL,
       newfiscalyear INT NULL,
       newssafunddescriptorid INT NULL,
       newssafunddescriptornamespace VARCHAR(255) NULL,
       newssafunddescriptorcodevalue VARCHAR(50) NULL,
       newssamemberdistrictid INT NULL,
       newssatypedescriptorid INT NULL,
       newssatypedescriptornamespace VARCHAR(255) NULL,
       newssatypedescriptorcodevalue VARCHAR(50) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT sharedservicearrangementext_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'specialeducationprogramreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.specialeducationprogramreportingperiodattendance
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldinstructionalsettingdescriptorid INT NOT NULL,
       oldinstructionalsettingdescriptornamespace VARCHAR(255) NOT NULL,
       oldinstructionalsettingdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldregionaldayschoolprogramfordeafdescriptorid INT NOT NULL,
       oldregionaldayschoolprogramfordeafdescriptornamespace VARCHAR(255) NOT NULL,
       oldregionaldayschoolprogramfordeafdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newinstructionalsettingdescriptorid INT NULL,
       newinstructionalsettingdescriptornamespace VARCHAR(255) NULL,
       newinstructionalsettingdescriptorcodevalue VARCHAR(50) NULL,
       newregionaldayschoolprogramfordeafdescriptorid INT NULL,
       newregionaldayschoolprogramfordeafdescriptornamespace VARCHAR(255) NULL,
       newregionaldayschoolprogramfordeafdescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT specialeducationprogramreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'specialprogramsreportingperiodattendance') THEN
CREATE TABLE tracked_changes_tx.specialprogramsreportingperiodattendance
(
       oldcalendarcode VARCHAR(60) NOT NULL,
       oldgradeleveldescriptorid INT NOT NULL,
       oldgradeleveldescriptornamespace VARCHAR(255) NOT NULL,
       oldgradeleveldescriptorcodevalue VARCHAR(50) NOT NULL,
       oldreportingperioddescriptorid INT NOT NULL,
       oldreportingperioddescriptornamespace VARCHAR(255) NOT NULL,
       oldreportingperioddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldschoolid INT NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newcalendarcode VARCHAR(60) NULL,
       newgradeleveldescriptorid INT NULL,
       newgradeleveldescriptornamespace VARCHAR(255) NULL,
       newgradeleveldescriptorcodevalue VARCHAR(50) NULL,
       newreportingperioddescriptorid INT NULL,
       newreportingperioddescriptornamespace VARCHAR(255) NULL,
       newreportingperioddescriptorcodevalue VARCHAR(50) NULL,
       newschoolid INT NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT specialprogramsreportingperiodattendance_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'ssaorgassociationext') THEN
CREATE TABLE tracked_changes_tx.ssaorgassociationext
(
       oldeducationorganizationid INT NOT NULL,
       oldfiscalagentdistrictid INT NOT NULL,
       oldssatypedescriptorid INT NOT NULL,
       oldssatypedescriptornamespace VARCHAR(255) NOT NULL,
       oldssatypedescriptorcodevalue VARCHAR(50) NOT NULL,
       neweducationorganizationid INT NULL,
       newfiscalagentdistrictid INT NULL,
       newssatypedescriptorid INT NULL,
       newssatypedescriptornamespace VARCHAR(255) NULL,
       newssatypedescriptorcodevalue VARCHAR(50) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT ssaorgassociationext_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'studentapplication') THEN
CREATE TABLE tracked_changes_tx.studentapplication
(
       oldapplicationidentifier VARCHAR(10) NOT NULL,
       oldeducationorganizationid INT NOT NULL,
       oldschoolyear SMALLINT NOT NULL,
       newapplicationidentifier VARCHAR(10) NULL,
       neweducationorganizationid INT NULL,
       newschoolyear SMALLINT NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentapplication_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_tx' AND table_name = 'studentspecialeducationprogrameligibilityassociation') THEN
CREATE TABLE tracked_changes_tx.studentspecialeducationprogrameligibilityassociation
(
       oldeducationorganizationid INT NOT NULL,
       oldprogramname VARCHAR(60) NOT NULL,
       oldprogramtypedescriptorid INT NOT NULL,
       oldprogramtypedescriptornamespace VARCHAR(255) NOT NULL,
       oldprogramtypedescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       neweducationorganizationid INT NULL,
       newprogramname VARCHAR(60) NULL,
       newprogramtypedescriptorid INT NULL,
       newprogramtypedescriptornamespace VARCHAR(255) NULL,
       newprogramtypedescriptorcodevalue VARCHAR(50) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentspecialeducationprogrameligibilityassociation_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
