do $$
<<descriptor_block>>
declare
  v_table_schema varchar;
  v_table_name   varchar;
  v_namespace    varchar;
  v_descriptor   varchar;
  v_err          varchar;
  v_tx_namespace   varchar := 'uri://tea.texas.gov/';
begin
 begin
   
    -- AchievementCategory;
    v_descriptor := 'AchievementCategory';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ACHIEVEMENTCATEGORYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,' 01' as codevalue,'Diploma Earned' as shortdescription,'Diploma Earned' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ADAEligibility;
    v_descriptor := 'ADAEligibility';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ADAELIGIBILITYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Enrolled, Not In Membership' as shortdescription,'Enrolled, Not In Membership' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'Eligible For Full Day Attendance' as shortdescription,'Eligible For Full Day Attendance' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Eligible For Half Day Attendance' as shortdescription,'Eligible For Half Day Attendance' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Eligible Transfer Student-Full Day' as shortdescription,'Eligible Transfer Student-Full Day' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Ineligible-Full Day' as shortdescription,'Ineligible-Full Day' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'Ineligible-Half Day' as shortdescription,'Ineligible-Half Day' as description UNION 
             SELECT v_namespace AS namespace,'6' as codevalue,'Eligible Transfer Student-Half Day' as shortdescription,'Eligible Transfer Student-Half Day' as description UNION 
             SELECT v_namespace AS namespace,'7' as codevalue,'Eligible - Flexible Attendance Program Participation' as shortdescription,'Eligible - Flexible Attendance Program Participation' as description UNION 
             SELECT v_namespace AS namespace,'8' as codevalue,'Ineligible - Flexible Attendance Program Participation' as shortdescription,'Ineligible - Flexible Attendance Program Participation' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- AddressType;
    v_descriptor := 'AddressType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ADDRESSTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Home' as shortdescription,'Home' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Physical' as shortdescription,'Physical' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Billing' as shortdescription,'Billing' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Mailing' as shortdescription,'Mailing' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Temporary' as shortdescription,'Temporary' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Work' as shortdescription,'Work' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ArmedServicesVocAptBattery;
    v_descriptor := 'ArmedServicesVocAptBattery';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ARMEDSERVICESVOCAPTBATTERYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'District or Open-Enrollment Charter Does Not Offer ASVAB' as shortdescription,'The district or open-enrollment charter school does not offer the Armed Services Vocational Aptitude Battery (ASVAB) test or an alternative career exploration test.' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'District or Open-Enrollment Charter Offers ASVAB' as shortdescription,'The district or open-enrollment charter school offers the Armed Services Vocational Aptitude Battery (ASVAB) test.' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'District or Open-Enrollment Charter Offers Alternative Career Explore Test' as shortdescription,'The district or open-enrollment charter school offers an alternative career exploration test.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- AssessmentResultsObtained;
    v_descriptor := 'AssessmentResultsObtained';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ASSESSMENTRESULTSOBTAINEDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Far Below Expectations' as shortdescription,'Far Below Expectations' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Below Expectations' as shortdescription,'Below Expectations' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Meets Expectations' as shortdescription,'Meets Expectations' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Above Expectations' as shortdescription,'Above Expectations' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Far Above Expectations' as shortdescription,'Far Above Expectations' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'No Results Obtained' as shortdescription,'No Results Obtained' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- AuxiliaryRoleId;
    v_descriptor := 'AuxiliaryRoleId';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'AUXILIARYROLEIDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'201' as codevalue,'Business/Finance' as shortdescription,'Business/Finance (Accounting Clerk, Accounts Payable Clerk, Payroll Clerk, Purchasing Clerk)' as description UNION 
             SELECT v_namespace AS namespace,'202' as codevalue,'Campus Office/Clerical' as shortdescription,'Campus Office/Clerical (Receptionist, Secretary, Certification Specialist, Bookkeeper, Data Clerk, PEIMS Data Clerk, Registrar)' as description UNION 
             SELECT v_namespace AS namespace,'203' as codevalue,'Central Office/Clerical' as shortdescription,'Central Office/Clerical (Receptionist, Secretary)' as description UNION 
             SELECT v_namespace AS namespace,'204' as codevalue,'Child Nutrition' as shortdescription,'Child Nutrition' as description UNION 
             SELECT v_namespace AS namespace,'205' as codevalue,'Human Resources' as shortdescription,'Human Resources (Certification Specialist, Human Resources Specialist)' as description UNION 
             SELECT v_namespace AS namespace,'206' as codevalue,'Information Technology' as shortdescription,'Information Technology (Computer Technician, District PEIMS Data Coordinator, Help Desk Technician, Telecommunications Technician)' as description UNION 
             SELECT v_namespace AS namespace,'207' as codevalue,'Campus Technology Specialist' as shortdescription,'Campus Technology Specialist' as description UNION 
             SELECT v_namespace AS namespace,'213' as codevalue,'Custodial' as shortdescription,'Custodial - Staff serving in an auxiliary/support role' as description UNION 
             SELECT v_namespace AS namespace,'214' as codevalue,'Maintenance' as shortdescription,'Maintenance - Staff serving in an auxiliary/support role' as description UNION 
             SELECT v_namespace AS namespace,'215' as codevalue,'Plumber' as shortdescription,'Plumber' as description UNION 
             SELECT v_namespace AS namespace,'216' as codevalue,'Painter' as shortdescription,'Painter' as description UNION 
             SELECT v_namespace AS namespace,'217' as codevalue,'HVAC' as shortdescription,'HVAC' as description UNION 
             SELECT v_namespace AS namespace,'218' as codevalue,'Electrician' as shortdescription,'Electrician' as description UNION 
             SELECT v_namespace AS namespace,'219' as codevalue,'Warehouse' as shortdescription,'Warehouse' as description UNION 
             SELECT v_namespace AS namespace,'220' as codevalue,'Safety/Security' as shortdescription,'Safety/Security' as description UNION 
             SELECT v_namespace AS namespace,'221' as codevalue,'Transportation' as shortdescription,'Transportation' as description UNION 
             SELECT v_namespace AS namespace,'222' as codevalue,'Other Non-Exempt Auxiliary' as shortdescription,'Other Non-Exempt Auxiliary (Including Non-Exempt Auxiliary Volunteers)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Behavior;
    v_descriptor := 'Behavior';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'BEHAVIORDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Permanent Removal By A Teacher From Class' as shortdescription,'Permanent Removal By A Teacher From Class (Teacher has removed the student from classroom and denied the student the right to return. TEC 37.003 has been invoked.) - TEC 37.002(b)' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Conduct Punishable As A Felony' as shortdescription,'Conduct Punishable As A Felony - TEC 37.006(a)(2)(A)' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Possessed, Sold, Used, Or Was Under The Influence Of Marihuana Or Other CS' as shortdescription,'Possessed, Sold, Used, Or Was Under The Influence Of Marihuana Or Other Controlled Substance - TEC 37.006(a)(2)(C) and 37.007(b)' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Possessed, Sold, Used, Or Was Under The Influence Of An Alcoholic Beverage' as shortdescription,'Possessed, Sold, Used, Or Was Under The Influence Of An Alcoholic Beverage - TEC 37.006(a)(2)(D) and 37.007(b)' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Abuse Of A Volatile Chemical' as shortdescription,'Abuse Of A Volatile Chemical - TEC 37.006(a)(2)(E)' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Public Lewdness Or Indecent Exposure' as shortdescription,'Public Lewdness Or Indecent Exposure - TEC 37.006(a)(2)(F)' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Retaliation Against School Employee' as shortdescription,'Retaliation Against School Employee - TEC 37.006(b) and 37.007(d)' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Based On Conduct For Felony Offenses In Title 5, Penal Code' as shortdescription,'Based On Conduct Occurring Off Campus And While The Student Is Not In Attendance At A School-Sponsored Or School-Related Activity For Felony Offenses In Title 5, Penal Code - TEC 37.006(c), TEC 37.007(b)(4), and TEC 37.0081' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Based On Conduct For Felony Offenses Not In Title 5, Penal Code' as shortdescription,'Based On Conduct Occurring Off Campus And While The Student Is Not In Attendance At A School-Sponsored Or School-Related Activity For Felony Offenses Not In Title 5, Penal Code - TEC 37.006(d) and TEC 37.007(b)(4)' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Brought Firearm To School Or Unlawful Carrying Of Handgun Penal Code 46.02' as shortdescription,'Brought a Firearm to School - TEC 37.007(e) or Unlawful Carrying of a Handgun under Penal Code 46.02 - TEC 37.007(a)(1)' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Unlawful Carrying Of A Location-Restricted Knife Under Penal Code 46.02' as shortdescription,'Unlawful Carrying of a Location-Restricted Knife under Penal Code 46.02 - TEC 37.007(a)(1) (Location-Restricted Knife - blade longer than 5.5 inches)' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Elements Of Offense Relating To Prohibited Weapons Under Penal Code 46.05' as shortdescription,'Conduct Containing the Elements of an Offense Relating to Prohibited Weapons under Penal Code 46.05 - TEC 37.007(a)(1)' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'Arson' as shortdescription,'Arson - TEC 37.007(a)(2)(B)' as description UNION 
             SELECT v_namespace AS namespace,'17' as codevalue,'Murder, Capital Murder, Criminal Attempt To Commit Murder Or Capital Murder' as shortdescription,'Murder, Capital Murder, Criminal Attempt To Commit Murder, Or Capital Murder - TEC 37.007(a)(2)(C)' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'Indecency With A Child' as shortdescription,'Indecency With A Child - TEC 37.007(a)(2)(D)' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'Aggravated Kidnapping' as shortdescription,'Aggravated Kidnapping - TEC 37.007(a)(2)(E)' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'Violation Of Stu Code Of Conduct Not Under TEC 37.002(b), 37.006, or 37.007' as shortdescription,'Violation Of Student Code Of Conduct Not Included Under TEC 37.002(b), 37.006, or 37.007' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'Criminal Mischief' as shortdescription,'Criminal Mischief - TEC 37.007(f)' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'Emergency Placement/Expulsion' as shortdescription,'Emergency Placement/Expulsion - TEC 37.019' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'Terroristic Threat' as shortdescription,'Terroristic Threat - TEC 37.006(a)(1) or 37.007(b)' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'Assault Under Penal Code 22.01(a)(1) Against School District Emp/Vol' as shortdescription,'Assault Under Penal Code 22.01(a)(1) Against a school district employee or volunteer - TEC 37.007(b)(2)(C)' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'Assault Under Penal Code 22.01(a)(1) Against Non School District Emp/Vol' as shortdescription,'Assault Under Penal Code 22.01(a)(1) Against someone other than a school district employee or volunteer - TEC 37.006(a)(2)(B)' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'Aggravated Assault Penal Code 22.02 Against School District Emp/Vol' as shortdescription,'Aggravated Assault Under Penal Code 22.02 Against a school district employee or volunteer - TEC 37.007(d)' as description UNION 
             SELECT v_namespace AS namespace,'30' as codevalue,'Aggravated Assault Penal Code 22.02 Against Non School District Emp/Vol' as shortdescription,'Aggravated Assault Under Penal Code 22.02 Against someone other than a school district employee or volunteer - TEC 37.007 (a)(2)(A)' as description UNION 
             SELECT v_namespace AS namespace,'31' as codevalue,'Sexual Aslt PC 22.011 Or Agg Sexual Aslt PC 22.021 Agst Dist Emp/Vol' as shortdescription,'Sexual Assault Under Penal Code 22.011 Or Aggravated Sexual Assault Under Penal Code 22.021 Against a school district employee or volunteer - TEC 37.007(d)' as description UNION 
             SELECT v_namespace AS namespace,'32' as codevalue,'Sexual Aslt PC 22.011 Or Agg Sexual Aslt PC 22.021 Agst Non Dist Emp/Vol' as shortdescription,'Sexual Assault Under Penal Code 22.011 Or Aggravated Sexual Assault Under Penal Code 22.021 Against someone other than a school district employee or volunteer - TEC 37.007(a)(2)(A)' as description UNION 
             SELECT v_namespace AS namespace,'35' as codevalue,'False Alarm/False Report' as shortdescription,'False Alarm/False Report - TEC 37.006(a)(1) and 37.007(b)' as description UNION 
             SELECT v_namespace AS namespace,'36' as codevalue,'Felony Controlled Substance Violation' as shortdescription,'Felony Controlled Substance Violation - TEC 37.007(a)(3)' as description UNION 
             SELECT v_namespace AS namespace,'37' as codevalue,'Felony Alcohol Violation' as shortdescription,'Felony Alcohol Violation - TEC 37.007(a)(3)' as description UNION 
             SELECT v_namespace AS namespace,'41' as codevalue,'Fighting/Mutual Combat Excludes All Offenses Under Penal Code 22.01' as shortdescription,'Fighting/Mutual Combat - Excludes all offenses under Penal Code 22.01' as description UNION 
             SELECT v_namespace AS namespace,'46' as codevalue,'Aggravated Robbery' as shortdescription,'Aggravated Robbery - TEC 37.007(a)(2)(F), TEC 37.007(C)-(D) (HB9680)' as description UNION 
             SELECT v_namespace AS namespace,'47' as codevalue,'Manslaughter' as shortdescription,'Manslaughter - TEC 37.007(a)(2)(G)' as description UNION 
             SELECT v_namespace AS namespace,'48' as codevalue,'Criminally Negligent Homicide' as shortdescription,'Criminally Negligent Homicide - TEC 37.007(a)(2)(H)' as description UNION 
             SELECT v_namespace AS namespace,'49' as codevalue,'Engages In Deadly Conduct' as shortdescription,'Engages In Deadly Conduct - TEC 37.007(b)(3)' as description UNION 
             SELECT v_namespace AS namespace,'55' as codevalue,'Stu Req To Register As Sex Offender Under Ch 62 Of CCP And Under Court Sup' as shortdescription,'Student Is Required To Register As A Sex Offender Under Chapter 62 Of The Code Of Criminal Procedure And Is Under Court Supervision - TEC 37.304. The offense(s) for which the student is required to register as a sex offender must have occurred on or after Sept. 1, 2007' as description UNION 
             SELECT v_namespace AS namespace,'56' as codevalue,'Stu Req To Register As Sex Offender Under Ch 62 Of CCP Not Under Court Sup' as shortdescription,'Student Is Required To Register As A Sex Offender Under Chapter 62 Of The Code Of Criminal Procedure And Is Not Under Court Supervision - TEC 37.305. The offense(s) for which the student is required to register as a sex offender must have occurred on or after Sept. 1, 2007' as description UNION 
             SELECT v_namespace AS namespace,'57' as codevalue,'Continuous Sexual Abuse Of Young Child Or Children Under Penal Code 21.02' as shortdescription,'Continuous Sexual Abuse Of Young Child Or Children Under Penal Code 21.02 Occurring on school property or while attending a school-sponsored or school-related activity on or off school property - TEC 37.007(a) (2) (I)' as description UNION 
             SELECT v_namespace AS namespace,'58' as codevalue,'Breach of Computer Security' as shortdescription,'Breach of Computer Security - TEC 37.007(a)(5) (HB1224)' as description UNION 
             SELECT v_namespace AS namespace,'59' as codevalue,'Serious Misbehavior as defined by TEC 37.007(c) while in a DAEP' as shortdescription,'Serious Misbehavior, as defined by TEC 37.007(c), while expelled to/placed in a Disciplinary Alternative Education Program (DAEP)- 
TEC 37.007(c) defines "serious misbehavior" as:  
(1) deliberate violent behavior that poses a direct threat to the health or safety of others; 
(2) extortion, meaning the gaining of money or other property by force or threat; 
(3) conduct that constitutes coercion, as defined by Section1.07, Penal Code; or  
(4) conduct that constitutes the offense of:
   (A) public lewdness under Section 21.07, Penal Code;
   (B) indecent exposure under Section 21.08, Penal Code;
   (C) criminal mischief under Section 28.03, Penal Code;
   (D) personal hazing under Section 37.152; or
   (E) harassment under Section 42.07(a)(1), Penal Code, of a student or district employee.' as description UNION 
             SELECT v_namespace AS namespace,'60' as codevalue,'Harassment Agst Emp of Sch Dist Under TX PC 42.07(a)(1), (2), (3), or (7)' as shortdescription,'Harassment Against an Employee of the School District under Texas Penal Code 42.07(a)(1), (2), (3), or (7) - TEC 37.006(a)(2)(G)' as description UNION 
             SELECT v_namespace AS namespace,'61' as codevalue,'Bullying' as shortdescription,'Bullying - TEC 37.0052(b)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- CalendarEvent;
    v_descriptor := 'CalendarEvent';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CALENDAREVENTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Instructional Day' as shortdescription,'Instructional Day' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Waiver Day (replaces student instruction for a whole day)' as shortdescription,'Waiver Day (replaces student instruction for a whole day)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- CalendarType;
    v_descriptor := 'CalendarType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CALENDARTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Standard Program 75,600 operation mins' as shortdescription,'Standard Program for school district campus following 75,600 Operational Minutes (Does not include Pre-Kindergarten Programs/Grades)' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Charter after 1/1/2015 or before 1/1/2015 following 75,600 minutes.' as shortdescription,'Charter School campus issued to operate after 1/1/2015 following 75,600 Operational Minutes, or operating before 1/1/2015 and electing to follow 75,600 Operational Minutes (Does not include Pre-Kindergarten Programs/Grades)' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Charter operate before 1/1/2015 and elect 180 day school year calendar.' as shortdescription,'Charter School campus operating before 1/1/2015 and electing to follow a 180 day school year calendar (Includes Pre-Kindergarten Programs/Grades)' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'PK Program 1/2 day for 3-year-old, 1/2 Ineligible 3-4-year-old. No waiver.' as shortdescription,'Pre-Kindergarten Other Programs (including school districts and charter schools approved to operate after January 1, 2015) - Half-day programs for three-year-old students and half-day ineligible three and four-year-old students (no waiver required)' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Dropout Recovery Program/Campus TEC 12.114(c) or TEC 39.0548' as shortdescription,'Dropout Recovery Program/Campus TEC 12.114(c) or TEC 39.0548' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Disciplinary Alternative Education Program/Campus TEC 37.008' as shortdescription,'Disciplinary Alternative Education Program/Campus TEC 37.008' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Correctional Facility Program/Campus (Adult or Juvenile)' as shortdescription,'Correctional Facility Program/Campus (Adult or Juvenile)' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Residential Treatment Facility Program/Campus' as shortdescription,'Residential Treatment Facility Program/Campus' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Day Treatment Facility Program/Campus' as shortdescription,'Day Treatment Facility Program/Campus' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Psychiatric Hospital Program/Campus' as shortdescription,'Psychiatric Hospital Program/Campus' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Medical Hospital Program/Campus' as shortdescription,'Medical Hospital Program/Campus' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Charter School issued under TEC 29.259 (Excel Academy 227-827 Only)' as shortdescription,'Charter School issued under TEC 29.259 (Excel Academy 227-827 Only)' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Juvenile Justice Alternative Education Program (JJAEP) TEC 37.011(f)' as shortdescription,'Juvenile Justice Alternative Education Program (JJAEP) TEC 37.011(f)' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Full PK 75,600 (eligible and ineligible 3-4-year-old students)' as shortdescription,'Full-day Prekindergarten Program following 75,600 Operational Minutes (eligible and ineligible three and four-year-old students)' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'1/2 day PK w/waiver 32.400 (District and charter approved after 1-1-2015)' as shortdescription,'Half-day Prekindergarten Program with Waiver following 32,400 Instructional Minutes (including school districts and charter schools approved to operate after January 1, 2015)' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'Additional Days School Year Program' as shortdescription,'Additional Days School Year Program' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- CalendarWaiverEventType;
    v_descriptor := 'CalendarWaiverEventType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CALENDARWAIVEREVENTTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Staff Development Waiver Day' as shortdescription,'Staff Development Waiver Day' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Missed School Waiver Day' as shortdescription,'Missed School Waiver Day' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Low Attendance Waiver Day' as shortdescription,'Low Attendance Waiver Day' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'JJAEP School Day Waiver Issued by Texas Juvenile Justice Department (TJJD)' as shortdescription,'JJAEP School Day Waiver Issued by Texas Juvenile Justice Department (TJJD)' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other Waiver Day' as shortdescription,'Other Waiver Day' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- CampusEnrollmentType;
    v_descriptor := 'CampusEnrollmentType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CAMPUSENROLLMENTTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Zoned School (no transfers accepted)' as shortdescription,'School in which enrollment is based on the student''s home address and transfers are not accepted.' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Zoned School (transfers accepted)' as shortdescription,'A school in which enrollment is based on the student''s home address but transfers of students from other schools or districts are accepted, including the children of district employees. The school may accept inter- and/or intra-district transfers.' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Open Enrollment Charter School' as shortdescription,'A charter school that prioritizes enrollment on the basis of geographic and residency considerations and may consider whether a student has documented history of a criminal offense, a juvenile court adjudication, or discipline problems under Subchapter A, Chapter 37. If an open-enrollment charter school specializing in performing arts, consideration may also be given to whether the student demonstrates artistic ability.' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Selective Enrollment School (Criteria-Based)' as shortdescription,'A school that uses some sort of selective criteria (e.g., student grades, audition, interview, portfolio) for enrollment determinations. Enrollment in these schools may or may not be based on the student''s home address.' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Combined Enrollment Type School' as shortdescription,'A school in which enrollment is based on two or more of these five enrollment types:
- Zoned Enrollment School (no transfers accepted)
- Zoned Enrollment School (transfers accepted)
- Open Enrollment Charter School
- Selective Enrollment School (Criteria-Based)
- Selective Enrollment School (Special Program-Based)
(e.g., a school which houses both a selective enrollment program and a zoned school on the same campus).' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ChildCountFunding;
    v_descriptor := 'ChildCountFunding';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CHILDCOUNTFUNDINGDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Not Applicable To This Student' as shortdescription,'Not Applicable To This Student' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'IDEA Amendments of 2004' as shortdescription,'Individuals With Disabilities Education Act (IDEA) Amendments of 2004
[See 34 CFR §300.703(b)]' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ClassroomPosition;
    v_descriptor := 'ClassroomPosition';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CLASSROOMPOSITIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Teacher Of Record' as shortdescription,'Teacher Of Record - Indicates that the teacher is responsible for the classroom, making the final decisions about the instruction delivered and the final outcomes for the students assigned to the class.' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Assistant Teacher' as shortdescription,'Assistant Teacher - Indicates that the teacher is assigned to the class and works with the Teacher of Record providing instruction and/or other instructional services to the students in the class.' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Support Teacher' as shortdescription,'Support Teacher - Indicates that the teacher provides specialized services on a regular or irregular basis to students in the class.' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Substitute Teacher' as shortdescription,'Substitute Teacher - Indicates that the substitute teacher serves in a classroom in the absence of a teacher certified for that assignment where the teacher has quit, died, or been terminated.' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'PK Classroom Aide' as shortdescription,'PK Classroom Aide - Indicates that the Classroom Aide (Role-ID 033) serves the Teacher of Record on a regular or irregular basis in a Pre-Kindergarten classroom.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ClassType;
    v_descriptor := 'ClassType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CLASSTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Regular' as shortdescription,'Regular setting including regular classroom, laboratory, or shop settings.' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Non-Regular' as shortdescription,'Classes designed for In-School Suspension, School-Community Guidance Center, Alternative Education School Program for Discipline, Televised Instruction, Non-disciplinary Alternative Education, or Special Education Setting.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- Country;
    v_descriptor := 'Country';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'COUNTRYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'AD' as codevalue,'Andorra' as shortdescription,'Andorra' as description UNION
			SELECT v_namespace AS namespace,'AE' as codevalue,'United Arab Emirates' as shortdescription,'United Arab Emirates' as description UNION
			SELECT v_namespace AS namespace,'AF' as codevalue,'Afghanistan' as shortdescription,'Afghanistan' as description UNION
			SELECT v_namespace AS namespace,'AG' as codevalue,'Antigua and Barbuda' as shortdescription,'Antigua and Barbuda' as description UNION
			SELECT v_namespace AS namespace,'AI' as codevalue,'Anguilla' as shortdescription,'Anguilla' as description UNION
			SELECT v_namespace AS namespace,'AL' as codevalue,'Albania' as shortdescription,'Albania' as description UNION
			SELECT v_namespace AS namespace,'AM' as codevalue,'Armenia' as shortdescription,'Armenia' as description UNION
			SELECT v_namespace AS namespace,'AO' as codevalue,'Angola' as shortdescription,'Angola' as description UNION
			SELECT v_namespace AS namespace,'AQ' as codevalue,'Antarctica' as shortdescription,'Antarctica' as description UNION
			SELECT v_namespace AS namespace,'AR' as codevalue,'Argentina' as shortdescription,'Argentina' as description UNION
			SELECT v_namespace AS namespace,'AS' as codevalue,'American Samoa' as shortdescription,'American Samoa' as description UNION
			SELECT v_namespace AS namespace,'AT' as codevalue,'Austria' as shortdescription,'Austria' as description UNION
			SELECT v_namespace AS namespace,'AU' as codevalue,'Australia' as shortdescription,'Australia' as description UNION
			SELECT v_namespace AS namespace,'AW' as codevalue,'Aruba' as shortdescription,'Aruba' as description UNION
			SELECT v_namespace AS namespace,'AX' as codevalue,'Åland Islands' as shortdescription,'Åland Islands' as description UNION
			SELECT v_namespace AS namespace,'AZ' as codevalue,'Azerbaijan' as shortdescription,'Azerbaijan' as description UNION
			SELECT v_namespace AS namespace,'BA' as codevalue,'Bosnia and Herzegovina' as shortdescription,'Bosnia and Herzegovina' as description UNION
			SELECT v_namespace AS namespace,'BB' as codevalue,'Barbados' as shortdescription,'Barbados' as description UNION
			SELECT v_namespace AS namespace,'BD' as codevalue,'Bangladesh' as shortdescription,'Bangladesh' as description UNION
			SELECT v_namespace AS namespace,'BE' as codevalue,'Belgium' as shortdescription,'Belgium' as description UNION
			SELECT v_namespace AS namespace,'BF' as codevalue,'Burkina Faso' as shortdescription,'Burkina Faso' as description UNION
			SELECT v_namespace AS namespace,'BG' as codevalue,'Bulgaria' as shortdescription,'Bulgaria' as description UNION
			SELECT v_namespace AS namespace,'BH' as codevalue,'Bahrain' as shortdescription,'Bahrain' as description UNION
			SELECT v_namespace AS namespace,'BI' as codevalue,'Burundi' as shortdescription,'Burundi' as description UNION
			SELECT v_namespace AS namespace,'BJ' as codevalue,'Benin' as shortdescription,'Benin' as description UNION
			SELECT v_namespace AS namespace,'BL' as codevalue,'Saint Barthélemy' as shortdescription,'Saint Barthélemy' as description UNION
			SELECT v_namespace AS namespace,'BM' as codevalue,'Bermuda' as shortdescription,'Bermuda' as description UNION
			SELECT v_namespace AS namespace,'BN' as codevalue,'Brunei Darussalam' as shortdescription,'Brunei Darussalam' as description UNION
			SELECT v_namespace AS namespace,'BO' as codevalue,'Bolivia, Plurinational State of' as shortdescription,'Bolivia, Plurinational State of' as description UNION
			SELECT v_namespace AS namespace,'BQ' as codevalue,'Bonaire, Sint Eustatius and Saba' as shortdescription,'Bonaire, Sint Eustatius and Saba' as description UNION
			SELECT v_namespace AS namespace,'BR' as codevalue,'Brazil' as shortdescription,'Brazil' as description UNION
			SELECT v_namespace AS namespace,'BS' as codevalue,'Bahamas' as shortdescription,'Bahamas' as description UNION
			SELECT v_namespace AS namespace,'BT' as codevalue,'Bhutan' as shortdescription,'Bhutan' as description UNION
			SELECT v_namespace AS namespace,'BV' as codevalue,'Bouvet Island' as shortdescription,'Bouvet Island' as description UNION
			SELECT v_namespace AS namespace,'BW' as codevalue,'Botswana' as shortdescription,'Botswana' as description UNION
			SELECT v_namespace AS namespace,'BY' as codevalue,'Belarus' as shortdescription,'Belarus' as description UNION
			SELECT v_namespace AS namespace,'BZ' as codevalue,'Belize' as shortdescription,'Belize' as description UNION
			SELECT v_namespace AS namespace,'CA' as codevalue,'Canada' as shortdescription,'Canada' as description UNION
			SELECT v_namespace AS namespace,'CC' as codevalue,'Cocos (Keeling) Islands' as shortdescription,'Cocos (Keeling) Islands' as description UNION
			SELECT v_namespace AS namespace,'CD' as codevalue,'Congo, the Democratic Republic of the' as shortdescription,'Congo, the Democratic Republic of the' as description UNION
			SELECT v_namespace AS namespace,'CF' as codevalue,'Central African Republic' as shortdescription,'Central African Republic' as description UNION
			SELECT v_namespace AS namespace,'CG' as codevalue,'Congo' as shortdescription,'Congo' as description UNION
			SELECT v_namespace AS namespace,'CH' as codevalue,'Switzerland' as shortdescription,'Switzerland' as description UNION
			SELECT v_namespace AS namespace,'CI' as codevalue,'Côte d''Ivoire' as shortdescription,'Côte d''Ivoire' as description UNION
			SELECT v_namespace AS namespace,'CK' as codevalue,'Cook Islands' as shortdescription,'Cook Islands' as description UNION
			SELECT v_namespace AS namespace,'CL' as codevalue,'Chile' as shortdescription,'Chile' as description UNION
			SELECT v_namespace AS namespace,'CM' as codevalue,'Cameroon' as shortdescription,'Cameroon' as description UNION
			SELECT v_namespace AS namespace,'CN' as codevalue,'China' as shortdescription,'China' as description UNION
			SELECT v_namespace AS namespace,'CO' as codevalue,'Colombia' as shortdescription,'Colombia' as description UNION
			SELECT v_namespace AS namespace,'CR' as codevalue,'Costa Rica' as shortdescription,'Costa Rica' as description UNION
			SELECT v_namespace AS namespace,'CU' as codevalue,'Cuba' as shortdescription,'Cuba' as description UNION
			SELECT v_namespace AS namespace,'CV' as codevalue,'Cabo Verde' as shortdescription,'Cabo Verde' as description UNION
			SELECT v_namespace AS namespace,'CW' as codevalue,'Curaçao' as shortdescription,'Curaçao' as description UNION
			SELECT v_namespace AS namespace,'CX' as codevalue,'Christmas Island' as shortdescription,'Christmas Island' as description UNION
			SELECT v_namespace AS namespace,'CY' as codevalue,'Cyprus' as shortdescription,'Cyprus' as description UNION
			SELECT v_namespace AS namespace,'CZ' as codevalue,'Czech Republic' as shortdescription,'Czech Republic' as description UNION
			SELECT v_namespace AS namespace,'DE' as codevalue,'Germany' as shortdescription,'Germany' as description UNION
			SELECT v_namespace AS namespace,'DJ' as codevalue,'Djibouti' as shortdescription,'Djibouti' as description UNION
			SELECT v_namespace AS namespace,'DK' as codevalue,'Denmark' as shortdescription,'Denmark' as description UNION
			SELECT v_namespace AS namespace,'DM' as codevalue,'Dominica' as shortdescription,'Dominica' as description UNION
			SELECT v_namespace AS namespace,'DO' as codevalue,'Dominican Republic' as shortdescription,'Dominican Republic' as description UNION
			SELECT v_namespace AS namespace,'DZ' as codevalue,'Algeria' as shortdescription,'Algeria' as description UNION
			SELECT v_namespace AS namespace,'EC' as codevalue,'Ecuador' as shortdescription,'Ecuador' as description UNION
			SELECT v_namespace AS namespace,'EE' as codevalue,'Estonia' as shortdescription,'Estonia' as description UNION
			SELECT v_namespace AS namespace,'EG' as codevalue,'Egypt' as shortdescription,'Egypt' as description UNION
			SELECT v_namespace AS namespace,'EH' as codevalue,'Western Sahara' as shortdescription,'Western Sahara' as description UNION
			SELECT v_namespace AS namespace,'ER' as codevalue,'Eritrea' as shortdescription,'Eritrea' as description UNION
			SELECT v_namespace AS namespace,'ES' as codevalue,'Spain' as shortdescription,'Spain' as description UNION
			SELECT v_namespace AS namespace,'ET' as codevalue,'Ethiopia' as shortdescription,'Ethiopia' as description UNION
			SELECT v_namespace AS namespace,'FI' as codevalue,'Finland' as shortdescription,'Finland' as description UNION
			SELECT v_namespace AS namespace,'FJ' as codevalue,'Fiji' as shortdescription,'Fiji' as description UNION
			SELECT v_namespace AS namespace,'FK' as codevalue,'Falkland Islands (Malvinas)' as shortdescription,'Falkland Islands (Malvinas)' as description UNION
			SELECT v_namespace AS namespace,'FM' as codevalue,'Micronesia, Federated States of' as shortdescription,'Micronesia, Federated States of' as description UNION
			SELECT v_namespace AS namespace,'FO' as codevalue,'Faroe Islands' as shortdescription,'Faroe Islands' as description UNION
			SELECT v_namespace AS namespace,'FR' as codevalue,'France' as shortdescription,'France' as description UNION
			SELECT v_namespace AS namespace,'GA' as codevalue,'Gabon' as shortdescription,'Gabon' as description UNION
			SELECT v_namespace AS namespace,'GB' as codevalue,'United Kingdom of Great Britain and Northern Ireland' as shortdescription,'United Kingdom of Great Britain and Northern Ireland' as description UNION
			SELECT v_namespace AS namespace,'GD' as codevalue,'Grenada' as shortdescription,'Grenada' as description UNION
			SELECT v_namespace AS namespace,'GE' as codevalue,'Georgia' as shortdescription,'Georgia' as description UNION
			SELECT v_namespace AS namespace,'GF' as codevalue,'French Guiana' as shortdescription,'French Guiana' as description UNION
			SELECT v_namespace AS namespace,'GG' as codevalue,'Guernsey' as shortdescription,'Guernsey' as description UNION
			SELECT v_namespace AS namespace,'GH' as codevalue,'Ghana' as shortdescription,'Ghana' as description UNION
			SELECT v_namespace AS namespace,'GI' as codevalue,'Gibraltar' as shortdescription,'Gibraltar' as description UNION
			SELECT v_namespace AS namespace,'GL' as codevalue,'Greenland' as shortdescription,'Greenland' as description UNION
			SELECT v_namespace AS namespace,'GM' as codevalue,'Gambia' as shortdescription,'Gambia' as description UNION
			SELECT v_namespace AS namespace,'GN' as codevalue,'Guinea' as shortdescription,'Guinea' as description UNION
			SELECT v_namespace AS namespace,'GP' as codevalue,'Guadeloupe' as shortdescription,'Guadeloupe' as description UNION
			SELECT v_namespace AS namespace,'GQ' as codevalue,'Equatorial Guinea' as shortdescription,'Equatorial Guinea' as description UNION
			SELECT v_namespace AS namespace,'GR' as codevalue,'Greece' as shortdescription,'Greece' as description UNION
			SELECT v_namespace AS namespace,'GS' as codevalue,'South Georgia and the South Sandwich Islands' as shortdescription,'South Georgia and the South Sandwich Islands' as description UNION
			SELECT v_namespace AS namespace,'GT' as codevalue,'Guatemala' as shortdescription,'Guatemala' as description UNION
			SELECT v_namespace AS namespace,'GU' as codevalue,'Guam' as shortdescription,'Guam' as description UNION
			SELECT v_namespace AS namespace,'GW' as codevalue,'Guinea-Bissau' as shortdescription,'Guinea-Bissau' as description UNION
			SELECT v_namespace AS namespace,'GY' as codevalue,'Guyana' as shortdescription,'Guyana' as description UNION
			SELECT v_namespace AS namespace,'HK' as codevalue,'Hong Kong' as shortdescription,'Hong Kong' as description UNION
			SELECT v_namespace AS namespace,'HM' as codevalue,'Heard Island and McDonald Islands' as shortdescription,'Heard Island and McDonald Islands' as description UNION
			SELECT v_namespace AS namespace,'HN' as codevalue,'Honduras' as shortdescription,'Honduras' as description UNION
			SELECT v_namespace AS namespace,'HR' as codevalue,'Croatia' as shortdescription,'Croatia' as description UNION
			SELECT v_namespace AS namespace,'HT' as codevalue,'Haiti' as shortdescription,'Haiti' as description UNION
			SELECT v_namespace AS namespace,'HU' as codevalue,'Hungary' as shortdescription,'Hungary' as description UNION
			SELECT v_namespace AS namespace,'ID' as codevalue,'Indonesia' as shortdescription,'Indonesia' as description UNION
			SELECT v_namespace AS namespace,'IE' as codevalue,'Ireland' as shortdescription,'Ireland' as description UNION
			SELECT v_namespace AS namespace,'IL' as codevalue,'Israel' as shortdescription,'Israel' as description UNION
			SELECT v_namespace AS namespace,'IM' as codevalue,'Isle of Man' as shortdescription,'Isle of Man' as description UNION
			SELECT v_namespace AS namespace,'IN' as codevalue,'India' as shortdescription,'India' as description UNION
			SELECT v_namespace AS namespace,'IO' as codevalue,'British Indian Ocean Territory' as shortdescription,'British Indian Ocean Territory' as description UNION
			SELECT v_namespace AS namespace,'IQ' as codevalue,'Iraq' as shortdescription,'Iraq' as description UNION
			SELECT v_namespace AS namespace,'IR' as codevalue,'Iran, Islamic Republic of' as shortdescription,'Iran, Islamic Republic of' as description UNION
			SELECT v_namespace AS namespace,'IS' as codevalue,'Iceland' as shortdescription,'Iceland' as description UNION
			SELECT v_namespace AS namespace,'IT' as codevalue,'Italy' as shortdescription,'Italy' as description UNION
			SELECT v_namespace AS namespace,'JE' as codevalue,'Jersey' as shortdescription,'Jersey' as description UNION
			SELECT v_namespace AS namespace,'JM' as codevalue,'Jamaica' as shortdescription,'Jamaica' as description UNION
			SELECT v_namespace AS namespace,'JO' as codevalue,'Jordan' as shortdescription,'Jordan' as description UNION
			SELECT v_namespace AS namespace,'JP' as codevalue,'Japan' as shortdescription,'Japan' as description UNION
			SELECT v_namespace AS namespace,'KE' as codevalue,'Kenya' as shortdescription,'Kenya' as description UNION
			SELECT v_namespace AS namespace,'KG' as codevalue,'Kyrgyzstan' as shortdescription,'Kyrgyzstan' as description UNION
			SELECT v_namespace AS namespace,'KH' as codevalue,'Cambodia' as shortdescription,'Cambodia' as description UNION
			SELECT v_namespace AS namespace,'KI' as codevalue,'Kiribati' as shortdescription,'Kiribati' as description UNION
			SELECT v_namespace AS namespace,'KM' as codevalue,'Comoros' as shortdescription,'Comoros' as description UNION
			SELECT v_namespace AS namespace,'KN' as codevalue,'Saint Kitts and Nevis' as shortdescription,'Saint Kitts and Nevis' as description UNION
			SELECT v_namespace AS namespace,'KP' as codevalue,'Korea, Democratic People''s Republic of' as shortdescription,'Korea, Democratic People''s Republic of' as description UNION
			SELECT v_namespace AS namespace,'KR' as codevalue,'Korea, Republic of' as shortdescription,'Korea, Republic of' as description UNION
			SELECT v_namespace AS namespace,'KW' as codevalue,'Kuwait' as shortdescription,'Kuwait' as description UNION
			SELECT v_namespace AS namespace,'KY' as codevalue,'Cayman Islands' as shortdescription,'Cayman Islands' as description UNION
			SELECT v_namespace AS namespace,'KZ' as codevalue,'Kazakhstan' as shortdescription,'Kazakhstan' as description UNION
			SELECT v_namespace AS namespace,'LA' as codevalue,'Lao People''s Democratic Republic' as shortdescription,'Lao People''s Democratic Republic' as description UNION
			SELECT v_namespace AS namespace,'LB' as codevalue,'Lebanon' as shortdescription,'Lebanon' as description UNION
			SELECT v_namespace AS namespace,'LC' as codevalue,'Saint Lucia' as shortdescription,'Saint Lucia' as description UNION
			SELECT v_namespace AS namespace,'LI' as codevalue,'Liechtenstein' as shortdescription,'Liechtenstein' as description UNION
			SELECT v_namespace AS namespace,'LK' as codevalue,'Sri Lanka' as shortdescription,'Sri Lanka' as description UNION
			SELECT v_namespace AS namespace,'LR' as codevalue,'Liberia' as shortdescription,'Liberia' as description UNION
			SELECT v_namespace AS namespace,'LS' as codevalue,'Lesotho' as shortdescription,'Lesotho' as description UNION
			SELECT v_namespace AS namespace,'LT' as codevalue,'Lithuania' as shortdescription,'Lithuania' as description UNION
			SELECT v_namespace AS namespace,'LU' as codevalue,'Luxembourg' as shortdescription,'Luxembourg' as description UNION
			SELECT v_namespace AS namespace,'LV' as codevalue,'Latvia' as shortdescription,'Latvia' as description UNION
			SELECT v_namespace AS namespace,'LY' as codevalue,'Libya' as shortdescription,'Libya' as description UNION
			SELECT v_namespace AS namespace,'MA' as codevalue,'Morocco' as shortdescription,'Morocco' as description UNION
			SELECT v_namespace AS namespace,'MC' as codevalue,'Monaco' as shortdescription,'Monaco' as description UNION
			SELECT v_namespace AS namespace,'MD' as codevalue,'Moldova, Republic of' as shortdescription,'Moldova, Republic of' as description UNION
			SELECT v_namespace AS namespace,'ME' as codevalue,'Montenegro' as shortdescription,'Montenegro' as description UNION
			SELECT v_namespace AS namespace,'MF' as codevalue,'Saint Martin (French part)' as shortdescription,'Saint Martin (French part)' as description UNION
			SELECT v_namespace AS namespace,'MG' as codevalue,'Madagascar' as shortdescription,'Madagascar' as description UNION
			SELECT v_namespace AS namespace,'MH' as codevalue,'Marshall Islands' as shortdescription,'Marshall Islands' as description UNION
			SELECT v_namespace AS namespace,'MK' as codevalue,'Macedonia, the former Yugoslav Republic of' as shortdescription,'Macedonia, the former Yugoslav Republic of' as description UNION
			SELECT v_namespace AS namespace,'ML' as codevalue,'Mali' as shortdescription,'Mali' as description UNION
			SELECT v_namespace AS namespace,'MM' as codevalue,'Myanmar' as shortdescription,'Myanmar' as description UNION
			SELECT v_namespace AS namespace,'MN' as codevalue,'Mongolia' as shortdescription,'Mongolia' as description UNION
			SELECT v_namespace AS namespace,'MO' as codevalue,'Macao' as shortdescription,'Macao' as description UNION
			SELECT v_namespace AS namespace,'MP' as codevalue,'Northern Mariana Islands' as shortdescription,'Northern Mariana Islands' as description UNION
			SELECT v_namespace AS namespace,'MQ' as codevalue,'Martinique' as shortdescription,'Martinique' as description UNION
			SELECT v_namespace AS namespace,'MR' as codevalue,'Mauritania' as shortdescription,'Mauritania' as description UNION
			SELECT v_namespace AS namespace,'MS' as codevalue,'Montserrat' as shortdescription,'Montserrat' as description UNION
			SELECT v_namespace AS namespace,'MT' as codevalue,'Malta' as shortdescription,'Malta' as description UNION
			SELECT v_namespace AS namespace,'MU' as codevalue,'Mauritius' as shortdescription,'Mauritius' as description UNION
			SELECT v_namespace AS namespace,'MV' as codevalue,'Maldives' as shortdescription,'Maldives' as description UNION
			SELECT v_namespace AS namespace,'MW' as codevalue,'Malawi' as shortdescription,'Malawi' as description UNION
			SELECT v_namespace AS namespace,'MX' as codevalue,'Mexico' as shortdescription,'Mexico' as description UNION
			SELECT v_namespace AS namespace,'MY' as codevalue,'Malaysia' as shortdescription,'Malaysia' as description UNION
			SELECT v_namespace AS namespace,'MZ' as codevalue,'Mozambique' as shortdescription,'Mozambique' as description UNION
			SELECT v_namespace AS namespace,'NA' as codevalue,'Namibia' as shortdescription,'Namibia' as description UNION
			SELECT v_namespace AS namespace,'NC' as codevalue,'New Caledonia' as shortdescription,'New Caledonia' as description UNION
			SELECT v_namespace AS namespace,'NE' as codevalue,'Niger' as shortdescription,'Niger' as description UNION
			SELECT v_namespace AS namespace,'NF' as codevalue,'Norfolk Island' as shortdescription,'Norfolk Island' as description UNION
			SELECT v_namespace AS namespace,'NG' as codevalue,'Nigeria' as shortdescription,'Nigeria' as description UNION
			SELECT v_namespace AS namespace,'NI' as codevalue,'Nicaragua' as shortdescription,'Nicaragua' as description UNION
			SELECT v_namespace AS namespace,'NL' as codevalue,'Netherlands' as shortdescription,'Netherlands' as description UNION
			SELECT v_namespace AS namespace,'NO' as codevalue,'Norway' as shortdescription,'Norway' as description UNION
			SELECT v_namespace AS namespace,'NP' as codevalue,'Nepal' as shortdescription,'Nepal' as description UNION
			SELECT v_namespace AS namespace,'NR' as codevalue,'Nauru' as shortdescription,'Nauru' as description UNION
			SELECT v_namespace AS namespace,'NU' as codevalue,'Niue' as shortdescription,'Niue' as description UNION
			SELECT v_namespace AS namespace,'NZ' as codevalue,'New Zealand' as shortdescription,'New Zealand' as description UNION
			SELECT v_namespace AS namespace,'OM' as codevalue,'Oman' as shortdescription,'Oman' as description UNION
			SELECT v_namespace AS namespace,'PA' as codevalue,'Panama' as shortdescription,'Panama' as description UNION
			SELECT v_namespace AS namespace,'PE' as codevalue,'Peru' as shortdescription,'Peru' as description UNION
			SELECT v_namespace AS namespace,'PF' as codevalue,'French Polynesia' as shortdescription,'French Polynesia' as description UNION
			SELECT v_namespace AS namespace,'PG' as codevalue,'Papua New Guinea' as shortdescription,'Papua New Guinea' as description UNION
			SELECT v_namespace AS namespace,'PH' as codevalue,'Philippines' as shortdescription,'Philippines' as description UNION
			SELECT v_namespace AS namespace,'PK' as codevalue,'Pakistan' as shortdescription,'Pakistan' as description UNION
			SELECT v_namespace AS namespace,'PL' as codevalue,'Poland' as shortdescription,'Poland' as description UNION
			SELECT v_namespace AS namespace,'PM' as codevalue,'Saint Pierre and Miquelon' as shortdescription,'Saint Pierre and Miquelon' as description UNION
			SELECT v_namespace AS namespace,'PN' as codevalue,'Pitcairn' as shortdescription,'Pitcairn' as description UNION
			SELECT v_namespace AS namespace,'PR' as codevalue,'Puerto Rico' as shortdescription,'Puerto Rico' as description UNION
			SELECT v_namespace AS namespace,'PS' as codevalue,'Palestine, State of' as shortdescription,'Palestine, State of' as description UNION
			SELECT v_namespace AS namespace,'PT' as codevalue,'Portugal' as shortdescription,'Portugal' as description UNION
			SELECT v_namespace AS namespace,'PW' as codevalue,'Palau' as shortdescription,'Palau' as description UNION
			SELECT v_namespace AS namespace,'PY' as codevalue,'Paraguay' as shortdescription,'Paraguay' as description UNION
			SELECT v_namespace AS namespace,'QA' as codevalue,'Qatar' as shortdescription,'Qatar' as description UNION
			SELECT v_namespace AS namespace,'RE' as codevalue,'Réunion' as shortdescription,'Réunion' as description UNION
			SELECT v_namespace AS namespace,'RO' as codevalue,'Romania' as shortdescription,'Romania' as description UNION
			SELECT v_namespace AS namespace,'RS' as codevalue,'Serbia' as shortdescription,'Serbia' as description UNION
			SELECT v_namespace AS namespace,'RU' as codevalue,'Russian Federation' as shortdescription,'Russian Federation' as description UNION
			SELECT v_namespace AS namespace,'RW' as codevalue,'Rwanda' as shortdescription,'Rwanda' as description UNION
			SELECT v_namespace AS namespace,'SA' as codevalue,'Saudi Arabia' as shortdescription,'Saudi Arabia' as description UNION
			SELECT v_namespace AS namespace,'SB' as codevalue,'Solomon Islands' as shortdescription,'Solomon Islands' as description UNION
			SELECT v_namespace AS namespace,'SC' as codevalue,'Seychelles' as shortdescription,'Seychelles' as description UNION
			SELECT v_namespace AS namespace,'SD' as codevalue,'Sudan' as shortdescription,'Sudan' as description UNION
			SELECT v_namespace AS namespace,'SE' as codevalue,'Sweden' as shortdescription,'Sweden' as description UNION
			SELECT v_namespace AS namespace,'SG' as codevalue,'Singapore' as shortdescription,'Singapore' as description UNION
			SELECT v_namespace AS namespace,'SH' as codevalue,'Saint Helena, Ascension and Tristan da Cunha' as shortdescription,'Saint Helena, Ascension and Tristan da Cunha' as description UNION
			SELECT v_namespace AS namespace,'SI' as codevalue,'Slovenia' as shortdescription,'Slovenia' as description UNION
			SELECT v_namespace AS namespace,'SJ' as codevalue,'Svalbard and Jan Mayen' as shortdescription,'Svalbard and Jan Mayen' as description UNION
			SELECT v_namespace AS namespace,'SK' as codevalue,'Slovakia' as shortdescription,'Slovakia' as description UNION
			SELECT v_namespace AS namespace,'SL' as codevalue,'Sierra Leone' as shortdescription,'Sierra Leone' as description UNION
			SELECT v_namespace AS namespace,'SM' as codevalue,'San Marino' as shortdescription,'San Marino' as description UNION
			SELECT v_namespace AS namespace,'SN' as codevalue,'Senegal' as shortdescription,'Senegal' as description UNION
			SELECT v_namespace AS namespace,'SO' as codevalue,'Somalia' as shortdescription,'Somalia' as description UNION
			SELECT v_namespace AS namespace,'SR' as codevalue,'Suriname' as shortdescription,'Suriname' as description UNION
			SELECT v_namespace AS namespace,'SS' as codevalue,'South Sudan' as shortdescription,'South Sudan' as description UNION
			SELECT v_namespace AS namespace,'ST' as codevalue,'Sao Tome and Principe' as shortdescription,'Sao Tome and Principe' as description UNION
			SELECT v_namespace AS namespace,'SV' as codevalue,'El Salvador' as shortdescription,'El Salvador' as description UNION
			SELECT v_namespace AS namespace,'SX' as codevalue,'Sint Maarten (Dutch part)' as shortdescription,'Sint Maarten (Dutch part)' as description UNION
			SELECT v_namespace AS namespace,'SY' as codevalue,'Syrian Arab Republic' as shortdescription,'Syrian Arab Republic' as description UNION
			SELECT v_namespace AS namespace,'SZ' as codevalue,'Swaziland' as shortdescription,'Swaziland' as description UNION
			SELECT v_namespace AS namespace,'TC' as codevalue,'Turks and Caicos Islands' as shortdescription,'Turks and Caicos Islands' as description UNION
			SELECT v_namespace AS namespace,'TD' as codevalue,'Chad' as shortdescription,'Chad' as description UNION
			SELECT v_namespace AS namespace,'TF' as codevalue,'French Southern Territories' as shortdescription,'French Southern Territories' as description UNION
			SELECT v_namespace AS namespace,'TG' as codevalue,'Togo' as shortdescription,'Togo' as description UNION
			SELECT v_namespace AS namespace,'TH' as codevalue,'Thailand' as shortdescription,'Thailand' as description UNION
			SELECT v_namespace AS namespace,'TJ' as codevalue,'Tajikistan' as shortdescription,'Tajikistan' as description UNION
			SELECT v_namespace AS namespace,'TK' as codevalue,'Tokelau' as shortdescription,'Tokelau' as description UNION
			SELECT v_namespace AS namespace,'TL' as codevalue,'Timor-Leste' as shortdescription,'Timor-Leste' as description UNION
			SELECT v_namespace AS namespace,'TM' as codevalue,'Turkmenistan' as shortdescription,'Turkmenistan' as description UNION
			SELECT v_namespace AS namespace,'TN' as codevalue,'Tunisia' as shortdescription,'Tunisia' as description UNION
			SELECT v_namespace AS namespace,'TO' as codevalue,'Tonga' as shortdescription,'Tonga' as description UNION
			SELECT v_namespace AS namespace,'TR' as codevalue,'Turkey' as shortdescription,'Turkey' as description UNION
			SELECT v_namespace AS namespace,'TT' as codevalue,'Trinidad and Tobago' as shortdescription,'Trinidad and Tobago' as description UNION
			SELECT v_namespace AS namespace,'TV' as codevalue,'Tuvalu' as shortdescription,'Tuvalu' as description UNION
			SELECT v_namespace AS namespace,'TW' as codevalue,'Taiwan, Province of China' as shortdescription,'Taiwan, Province of China' as description UNION
			SELECT v_namespace AS namespace,'TZ' as codevalue,'Tanzania, United Republic of' as shortdescription,'Tanzania, United Republic of' as description UNION
			SELECT v_namespace AS namespace,'UA' as codevalue,'Ukraine' as shortdescription,'Ukraine' as description UNION
			SELECT v_namespace AS namespace,'UG' as codevalue,'Uganda' as shortdescription,'Uganda' as description UNION
			SELECT v_namespace AS namespace,'UM' as codevalue,'United States Minor Outlying Islands' as shortdescription,'United States Minor Outlying Islands' as description UNION
			SELECT v_namespace AS namespace,'US' as codevalue,'United States of America' as shortdescription,'United States of America' as description UNION
			SELECT v_namespace AS namespace,'UY' as codevalue,'Uruguay' as shortdescription,'Uruguay' as description UNION
			SELECT v_namespace AS namespace,'UZ' as codevalue,'Uzbekistan' as shortdescription,'Uzbekistan' as description UNION
			SELECT v_namespace AS namespace,'VA' as codevalue,'Holy See' as shortdescription,'Holy See' as description UNION
			SELECT v_namespace AS namespace,'VC' as codevalue,'Saint Vincent and the Grenadines' as shortdescription,'Saint Vincent and the Grenadines' as description UNION
			SELECT v_namespace AS namespace,'VE' as codevalue,'Venezuela, Bolivarian Republic of' as shortdescription,'Venezuela, Bolivarian Republic of' as description UNION
			SELECT v_namespace AS namespace,'VG' as codevalue,'Virgin Islands, British' as shortdescription,'Virgin Islands, British' as description UNION
			SELECT v_namespace AS namespace,'VI' as codevalue,'Virgin Islands, U.S.' as shortdescription,'Virgin Islands, U.S.' as description UNION
			SELECT v_namespace AS namespace,'VN' as codevalue,'Viet Nam' as shortdescription,'Viet Nam' as description UNION
			SELECT v_namespace AS namespace,'VU' as codevalue,'Vanuatu' as shortdescription,'Vanuatu' as description UNION
			SELECT v_namespace AS namespace,'WF' as codevalue,'Wallis and Futuna' as shortdescription,'Wallis and Futuna' as description UNION
			SELECT v_namespace AS namespace,'WS' as codevalue,'Samoa' as shortdescription,'Samoa' as description UNION
			SELECT v_namespace AS namespace,'YE' as codevalue,'Yemen' as shortdescription,'Yemen' as description UNION
			SELECT v_namespace AS namespace,'YT' as codevalue,'Mayotte' as shortdescription,'Mayotte' as description UNION
			SELECT v_namespace AS namespace,'ZA' as codevalue,'South Africa' as shortdescription,'South Africa' as description UNION
			SELECT v_namespace AS namespace,'ZM' as codevalue,'Zambia' as shortdescription,'Zambia' as description UNION
			SELECT v_namespace AS namespace,'ZW' as codevalue,'Zimbabwe' as shortdescription,'Zimbabwe' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- CourseAttemptResult;
    v_descriptor := 'CourseAttemptResult';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'COURSEATTEMPTRESULTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Course Was Passed And Credit Was Received' as shortdescription,'Course Was Passed And Credit Was Received' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Course Was Failed No Credit Received - 1st Occurrence This School Year' as shortdescription,'Course Was Failed And No Credit Was Received - First Occurrence This School Year' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Course Was Failed No Credit Received - 2nd Occurrence This School Year' as shortdescription,'Course Was Failed And No Credit Was Received - Second Occurrence This School Year' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Course Passed Credit Not Received Excessive Absences - 1st Occur This SY' as shortdescription,'Course Was Passed, But Credit Was Not Received Due To Excessive Absences - First Occurrence This School Year' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Course Passed, Credit Not Received Excessive Absences - 2nd Occur This SY' as shortdescription,'Course Was Passed, But Credit Was Not Received Due To Excessive Absences - Second Occurrence This School Year' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Course Passed, Credit Not Received (other parts of the course not taken)' as shortdescription,'Course Was Passed, But Credit Was Not Received (other parts of the course have not been taken)' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Course Passed, Credit Not Rec (other parts of course taken not passed)' as shortdescription,'Course Was Passed, But Credit Was Not Received (other parts of the course have been taken but not passed)' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Course Failed, Credit Rec (credit from grades in other parts of course)' as shortdescription,'Course Was Failed, But Credit Was Received (other parts of the course have been passed and credit was awarded based on the grades in those parts)' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Course Work Is Incomplete And No Credit Has Been Awarded' as shortdescription,'Course Work Is Incomplete And No Credit Has Been Awarded' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Course Passed, Credit Not Received (course repeated for better mastery)' as shortdescription,'Course Was Passed, But Credit Was Not Received (course had previously been passed, and was repeated for better mastery)' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Course Failed No Credit Received - 3rd occurrence this school year' as shortdescription,'Course Was Failed And No Credit Was Received - third occurrence this school year' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Course Passed Credit Not Received Excessive Absences - 3rd occur This SY' as shortdescription,'Course Was Passed, But Credit Was Not Received Due To Excessive Absences - third occurrence this school year' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Non-High School Course Passed' as shortdescription,'Non-High School Course Passed' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Non-High School Course Failed' as shortdescription,'Non-High School Course Failed' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- CourseSequence;
    v_descriptor := 'CourseSequence';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'COURSESEQUENCEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'One Semester Course' as shortdescription,'One Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'First Half Of A Two Semester Course' as shortdescription,'First Half Of A Two Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Second Half Of A Two Semester Course' as shortdescription,'Second Half Of A Two Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'First Third Of A Three Semester Course' as shortdescription,'First Third Of A Three Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Second Third Of A Three Semester Course' as shortdescription,'Second Third Of A Three Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'Last Third Of A Three Semester Course' as shortdescription,'Last Third Of A Three Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'6' as codevalue,'First Fourth Of A Four Semester Course' as shortdescription,'First Fourth Of A Four Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'7' as codevalue,'Second Fourth Of A Four Semester Course' as shortdescription,'Second Fourth Of A Four Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'8' as codevalue,'Third Fourth Of A Four Semester Course' as shortdescription,'Third Fourth Of A Four Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'9' as codevalue,'Last Fourth Of A Four Semester Course' as shortdescription,'Last Fourth Of A Four Semester Course' as description UNION 
             SELECT v_namespace AS namespace,'D0' as codevalue,'Single Semester Dual Credit Course' as shortdescription,'Single Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D1' as codevalue,'First Half of a Two Semester Dual Credit Course' as shortdescription,'First Half of a Two Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D2' as codevalue,'Second Half of a Two Semester Dual Credit Course' as shortdescription,'Second Half of a Two Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D3' as codevalue,'First Third of a Three Semester Dual Credit Course' as shortdescription,'First Third of a Three Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D4' as codevalue,'Second Third of a Three Semester Dual Credit Course' as shortdescription,'Second Third of a Three Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D5' as codevalue,'Last Third of a Three Semester Dual Credit Course' as shortdescription,'Last Third of a Three Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D6' as codevalue,'First Fourth of a Four Semester Dual Credit Course' as shortdescription,'First Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D7' as codevalue,'Second Fourth of a Four Semester Dual Credit Course' as shortdescription,'Second Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D8' as codevalue,'Third Fourth of a Four Semester Dual Credit Course' as shortdescription,'Third Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'D9' as codevalue,'Last Fourth of a Four Semester Dual Credit Course' as shortdescription,'Last Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT v_namespace AS namespace,'A' as codevalue,'Non-High School Year Long Course' as shortdescription,'Non-High School Year Long Course' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
/*begin
   
    -- CrisisEvent;
    v_descriptor := 'CrisisEvent';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CRISISEVENTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'10' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'17' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'20' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT v_namespace AS namespace,'30' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.shortdescription))=upper(trim(ip.shortdescription)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' NOT IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;*/
 begin
   
    -- CTEProgramService;
    v_descriptor := 'CTEProgramService';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'CTEPROGRAMSERVICEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'0' as codevalue,'Not Applicable To This Student' as shortdescription,'Not Applicable To This Student' as description UNION
				SELECT v_namespace AS namespace,'2' as codevalue,'Single Parent' as shortdescription,'Single Parent' as description UNION
				SELECT v_namespace AS namespace,'7' as codevalue,'Pregnant Woman' as shortdescription,'Pregnant Woman' as description UNION
				SELECT v_namespace AS namespace,'8' as codevalue,'Out Of Workforce Individual' as shortdescription,'Out Of Workforce Individual' as description UNION
				SELECT v_namespace AS namespace,'9' as codevalue,'Transportation CTE Support Services' as shortdescription,'Transportation CTE Support Services' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- DiplomaType;
    v_descriptor := 'DiplomaType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'DIPLOMATYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'04' as codevalue,'Complete IEP, FT Employ Self-Help Skills Employ No Public School Services' as shortdescription,'Completion Of IEP And Full-Time Employment With Sufficient Self-Help Skills To Maintain Employment Without Public School Services
TAC §89.1070(f)(3)(A), revised January 1, 2015 [39 TexReg 10446].' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Complete IEP Mastery Specific Employ Self-Help Skills No Public School Serv' as shortdescription,'Completion Of IEP And Demonstrated Mastery Of Specific Employability And Self-Help Skills That Do Not Require Public School Services
TAC §89.1070(f)(3)(B), revised January 1, 2015 [39 TexReg 10446].' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Complete IEP Access To Services Employ Or Education Outside Public Edu' as shortdescription,'Completion Of IEP And Access To Services, Employment, Or Education Outside Of Public Education
TAC §89.1070(f)(3)(C), revised January 1, 2015 [ 39 TexReg 10446].' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Completion Of IEP And Reached Age 22' as shortdescription,'Completion Of IEP And Reached Age 22
TAC §89.1070(f)(4), revised January 1, 2015 [ 39 TexReg 10446].' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'Minimum High School Program - IEP Minimum Curriculum' as shortdescription,'Completion Of Minimum Curriculum And Credit Requirements For Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified In The IEP - Minimum High School Program
TAC §89.1070(f)(2),
(for students who entered grade 9 in in 2001-2002 through 2013-2014) effective January 1, 2015 [39 TexReg 10446].' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'Recommended High School Program - IEP Minimum Curriculum' as shortdescription,'Completion Of Minimum Curriculum And Credit Requirements For Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified In The IEP - Recommended High School Program
TAC §89.1070(b)(1),
revised August 1, 2002.  [27 Tex. Reg. 3103]
(for students who entered grade 9 in 2001-2002 through 2006-2007)' as description UNION 
             SELECT v_namespace AS namespace,'20' as codevalue,'Distinguished Achievement Program - IEP Minimum Curriculum' as shortdescription,'Completion Of Minimum Curriculum And Credit Requirements For Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified In The IEP - Distinguished Achievement Program
TAC §89.1070(b)(1),
revised August 1, 2002.  [27 Tex. Reg. 3103]
(for students who entered grade 9 in 2001-2002 through 2006-2007)' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.42, revised June 2000; for students who entered grade 9 in 2001-2002, 2002-2003, and 2003-2004 (including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002 [26 Tex. Reg. 1837])' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
TAC Chapter 74.43, revised June 2000; for students who entered grade 9 in 2001-2002, 2002-2003, and 2003-2004 (including TAC §89.1070(b)(1) for students receiving special education services, revised August 1, 2002 [26 Tex. Reg. 1837])' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.44, revised June 2000; for students who entered grade 9 in 2001-2002, 2002-2003, and 2003-2004 (including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002 [26 Tex. Reg. 1837])' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.52, revised November 2003; for students who entered grade 9 in 2004-2005 and thereafter (including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002)' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
TAC Chapter 74.53, revised November 2003; for students who entered grade 9 in 2004-2005 and thereafter (including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002)' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.54, revised November 2003; for students who entered grade 9 in 2004-2005 and thereafter (including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002)' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.62, revised September 1, 2005; including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2007-2008, 2008-2009, 2009-2010, 2010-2011, and 2011-2012.)' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
TAC Chapter 74.63, revised September 1, 2005; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2007-2008, 2008-2009, 2009-2010, 2010-2011, and 2011-2012.)' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.64, revised September 1, 2005; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2007-2008, 2008-2009, 2009-2010, 2010-2011, and 2011-2012.)' as description UNION 
             SELECT v_namespace AS namespace,'30' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.72, revised May 30, 2012; including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2012-2013 and 2013-2014)' as description UNION 
             SELECT v_namespace AS namespace,'31' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
AC Chapter 74.73, revised May 30, 2012; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2012-2013 and 2013-2014)' as description UNION 
             SELECT v_namespace AS namespace,'32' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.74, Revised May 30, 2012; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2012-2013 and 2013-2014)' as description UNION 
             SELECT v_namespace AS namespace,'34' as codevalue,'Foundation High School Program' as shortdescription,'Foundation High School Program
TAC Chapter 74.1021, Revised December 16, 2013. [38 TexReg 9021]. TAC 74.12, Revised July 8, 2014. [39 TexReg 5149];  revised January 1, 2015 [39 TexReg 10446].
(For students who entered grade 9 in 2014-2015 and thereafter or entered grade 9 prior to the 2014-2015 school year and opted to graduate under the Foundation High School Program). The student completed curriculum requirements for graduation under the Foundation High School Program, including satisfactory performance as established in TEC, Chapter 39, on the required state assessments.)' as description UNION 
             SELECT v_namespace AS namespace,'35' as codevalue,'Minimum Curriculum for Special Education Students' as shortdescription,'Completion of Minimum Curriculum And Credit Requirements for Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified in The IEP-Foundation High School Program 
TAC 89.1070(b)(1), Revised January 1, 2015. [39 TexReg 10446]' as description UNION 
             SELECT v_namespace AS namespace,'54' as codevalue,'Complete IEP FT Employ Self-Help Skill Maintain Employ No Public School Ser' as shortdescription,'Completion Of IEP And Full-Time Employment With Sufficient Self-Help Skills To Maintain Employment Without Public School Services
TAC §89.1070(b)(2)(A), Effective January 1, 2015 [39 TexReg 10446]' as description UNION 
             SELECT v_namespace AS namespace,'55' as codevalue,'Complete IEP Mastery Specific Employ Self-Help Skill No Public School Serv' as shortdescription,'Completion Of IEP And Demonstrated Mastery Of Specific Employability And Self-Help Skills That Do Not Require Public School Services
TAC §89.1070(b)(2)(B), Effective January 1, 2015 [39 TexReg 10446]' as description UNION 
             SELECT v_namespace AS namespace,'56' as codevalue,'Completion Of IEP Access To Services Employ Or Edu Outside Public Education' as shortdescription,'Completion Of IEP And Access To Services, Employment, Or Education Outside Of Public Education
TAC §89.1070(b)(2)(C), Effective January 1, 2015 [39 TexReg 10446]' as description UNION 
             SELECT v_namespace AS namespace,'57' as codevalue,'Completion Of IEP And Reached Age 22' as shortdescription,'Completion Of IEP And Reached Age 22
Foundation: TAC §89.1070(b)(2)(D), Effective January 1, 2015 [39 TexReg 10446]' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Disability;
    v_descriptor := 'Disability';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'DISABILITYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'No Disability' as shortdescription,'No Disability' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Orthopedic Impairment' as shortdescription,'Orthopedic Impairment' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Other Health Impairment' as shortdescription,'Other Health Impairment' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Hearing Impairment' as shortdescription,'Hearing Impairment' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Visual Impairment' as shortdescription,'Visual Impairment' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Deaf-Blindness' as shortdescription,'Deaf-Blindness' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Intellectual Disability' as shortdescription,'Intellectual Disability' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Emotional Disturbance' as shortdescription,'Emotional Disturbance' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Specific Learning Disability' as shortdescription,'Specific Learning Disability' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Speech or Language Impairment' as shortdescription,'Speech or Language Impairment' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Autism' as shortdescription,'Autism' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Traumatic Brain Injury' as shortdescription,'Traumatic Brain Injury' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Noncategorical Early Childhood' as shortdescription,'Noncategorical Early Childhood' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Discipline;
    v_descriptor := 'Discipline';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'DISCIPLINEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Expulsion Without Placement In Another Educational Setting' as shortdescription,'Expulsion without placement in another educational setting' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Expulsion With Placement In A JJAEP' as shortdescription,'Expulsion with placement in a juvenile justice alternative education program (JJAEP)' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Expulsion With Placement In An On-Campus DAEP' as shortdescription,'Expulsion with placement in an on-campus disciplinary alternative education program (DAEP). (Do not use this code when a student has been placed in a DAEP, but not expelled).' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Expulsion With Placement In An Off-Campus DAEP' as shortdescription,'Expulsion with placement in an off-campus DAEP. (Do not use this code when a student has been placed in a DAEP, but not expelled).' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Out-Of-School Suspension' as shortdescription,'Out-Of-School Suspension' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'In-School Suspension' as shortdescription,'In-School Suspension
(For students eligible for special education and related services, this include any setting that has not been addressed by an admission, review, and dismissal committee withing the placement determination of the student''s current IEP.)' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Placement In An On-Campus Or Off-Campus DAEP' as shortdescription,'Placement in an on-campus or off-campus DAEP' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Continuation Of Other District''s DAEP Placement' as shortdescription,'Continuation of other district''s DAEP placement' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Continuation Of Other District''s Expulsion Order' as shortdescription,'Continuation of other district''s expulsion order' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Continuation Of District''s DAEP Placement From Prior School Year' as shortdescription,'Continuation of the district''s DAEP placement from the prior school year' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Continuation Of District''s Expulsion Order From Prior School Year' as shortdescription,'Continuation of the district''s expulsion order from the prior school year' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Continuation Of District''s Expulsion To JJAEP From Prior School Year' as shortdescription,'Continuation of the district''s expulsion with placement to JJAEP from the prior school year' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Placement In A JJAEP By Court Order' as shortdescription,'Placement in a JJAEP by court order' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Placement In A DAEP By Court Order' as shortdescription,'Placement in a DAEP by court order' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'Continuation Of Other District''s Expulsion With Placement To JJAEP' as shortdescription,'Continuation of other district''s expulsion with placement to JJAEP' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'Partial Day Out-Of-School Suspension' as shortdescription,'Partial Day Out-Of-School Suspension' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'Partial Day In-School Suspension' as shortdescription,'Partial Day In-School Suspension' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'Mandatory Disciplinary Action Not Taken By District - ARD committee' as shortdescription,'Mandatory disciplinary action not taken by district -
(This code is used when a student''s behavior is determined to be linked to the student''s disability in a manifestation determination hearing made in accordance with IDEA by an ARD committee.)' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'Mandatory Disciplinary Action Not Taken By District - TEC 37.001(a)(4)' as shortdescription,'Mandatory disciplinary action not taken by district - 
(The mandatory disciplinary action was not taken because the district considered one or more of the TEC § 37.001(a)(4) provisions.)' as description UNION 
             SELECT v_namespace AS namespace,'50' as codevalue,'Expulsion Without Placement In Another Educational Setting - SPED' as shortdescription,'Expulsion without placement in another educational setting - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'51' as codevalue,'Expulsion With Placement To A JJAEP - SPED' as shortdescription,'Expulsion with placement to a JJAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'52' as codevalue,'Expulsion With Placement To An On-Campus DAEP - SPED' as shortdescription,'Expulsion with placement to an on-campus DAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'53' as codevalue,'Expulsion With Placement To An Off-Campus DAEP - SPED' as shortdescription,'Expulsion with placement to an off-campus DAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'54' as codevalue,'Placement In An On-Campus Or Off-Campus DAEP - SPED' as shortdescription,'Placement in an on-campus or off-campus DAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'55' as codevalue,'Continuation Of Other District''s DAEP Placement - SPED' as shortdescription,'Continuation of other district''s DAEP placement - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'56' as codevalue,'Continuation Of Other District''s Expulsion Order - SPED' as shortdescription,'Continuation of other district''s expulsion order - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'57' as codevalue,'Continuation Of District''s DAEP Placement From Prior School Year - SPED' as shortdescription,'Continuation of the district''s DAEP placement from the prior school year - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'58' as codevalue,'Continuation Of District''s Expulsion Order From Prior School Year - SPED' as shortdescription,'Continuation of the district''s expulsion order from the prior school year - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'59' as codevalue,'Continuation Of District''s Expulsion To JJAEP From Prior School Year - SPED' as shortdescription,'Continuation of the district''s expulsion with placement to JJAEP from the prior school year - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'60' as codevalue,'Placement In A JJAEP - SPED' as shortdescription,'Placement in a JJAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT v_namespace AS namespace,'61' as codevalue,'Continuation Of Other District''s Expulsion With Placement To JJAEP - SPED' as shortdescription,'Continuation of other district''s expulsion with placement to JJAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- DisciplineActionLengthDifferenceReason;
    v_descriptor := 'DisciplineActionLengthDifferenceReason';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'DISCIPLINEACTIONLENGTHDIFFERENCEREASONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'No Difference Between Official And Actual Lengths' as shortdescription,'No Difference Between Official And Actual Lengths Of Disciplinary Assignments' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Term Modified By District' as shortdescription,'Term Modified By District' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Term Modified By Court Order' as shortdescription,'Term Modified By Court Order' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Term Modified By Mutual Agreement Of District, Student, And/Or Parents' as shortdescription,'Term Modified By Mutual Agreement Of District, Student, And/Or Parents' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Completed Term Requirements Sooner Than Expected' as shortdescription,'Completed Term Requirements Sooner Than Expected' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Student Incarcerated' as shortdescription,'Student Incarcerated' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Term Decreased Due To Extenuating Health-Related Circumstances' as shortdescription,'Term Decreased Due To Extenuating Health-Related Circumstances' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Student Withdrew From School' as shortdescription,'Student Withdrew From School' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'School Year Ended Before Completion Of Disciplinary Action Assignment' as shortdescription,'School Year Ended Before Completion Of Disciplinary Action Assignment' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Continuation Of Previous Year''s Disciplinary Action Assignment' as shortdescription,'Continuation Of Previous Year''s Disciplinary Action Assignment' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Term Modified By Placement Program Due To Student Behavior In Placement' as shortdescription,'Term Modified By Placement Program Due To Student Behavior While In The Placement' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- DyslexiaRisk;
    v_descriptor := 'DyslexiaRisk';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'DYSLEXIARISKDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Screened And Determined To Be Not At Risk For Dyslexia Or Related Disorders' as shortdescription,'Screened And Determined To Be Not At Risk For Dyslexia Or Related Disorders' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Screened And Determined To Be At Risk For Dyslexia Or Related Disorders' as shortdescription,'Screened And Determined To Be At Risk For Dyslexia Or Related Disorders' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Not Screened For Dyslexia Or Related Disorders' as shortdescription,'Not Screened For Dyslexia Or Related Disorders' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin   
    -- DyslexiaServices;
    v_descriptor := 'DyslexiaServices';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'DYSLEXIASERVICESDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
				SELECT v_namespace AS namespace,'00' as codevalue,'Does Not Receive Services For Dyslexia Or A Related Disorder' as shortdescription,'Does Not Receive Services For Dyslexia Or A Related Disorder' as description UNION
				SELECT v_namespace AS namespace,'01' as codevalue,'Receiving Services For Dyslexia Or A Related Disorder IEP Or Section 504' as shortdescription,'Receiving services for dyslexia or a related disorder with an individualized education program developed for the student under Section 29.005; or a plan developed for the student under Section 504, Rehabilitation Act of 1973 (29 U.S.C. Section 794).' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'Rec Instr Meets Dyslexia Criteria SBOE and Svc By Person W/ Specific Instr' as shortdescription,'Receiving instruction that meets applicable dyslexia program criteria established by the State Board of Education; and is provided by a person with specific training in providing that instruction.' as description UNION
				SELECT v_namespace AS namespace,'03' as codevalue,'Modifications In Class Permitted Basis of Dyslexia Or Related Disorder' as shortdescription,'The student is permitted, on the basis of having dyslexia or a related disorder, to use modifications in the classroom or accommodations in the administration of assessment instruments under Section 39.023.' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;  
 begin
   
    -- EarlyReadingIndicator;
    v_descriptor := 'EarlyReadingIndicator';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'EARLYREADINGINDICATORDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'1' as codevalue,'Student Is Eligible For Accelerated Reading Instruction' as shortdescription,'Student is eligible for accelerated reading instruction as indicated by the administered reading instrument on the commissioner''s list or approved by district committee under TEC 28.006. (For grades KG, 01, and 02 only)' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Student Is Not Eligible For Accelerated Reading Instruction' as shortdescription,'Student is not eligible for accelerated reading instruction as indicated by the administered reading instrument on the commissioner''s list or approved by district committee under TEC 28.006. (For grades KG, 01, and 02 only)' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Student Was Not Assessed' as shortdescription,'Student was not assessed. (For grades KG, 01, and 02 only)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- EconomicDisadvantage;
    v_descriptor := 'EconomicDisadvantage';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ECONOMICDISADVANTAGEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'Not Identified As Economically Disadvantaged' as shortdescription,'Not identified As Economically Disadvantaged' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Eligible For Free Meals' as shortdescription,'Eligible For Free Meals Under The National School Lunch And Child Nutrition Program' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Eligible for Reduced-Price Meals' as shortdescription,'Eligible For Reduced-price Meals Under The National School Lunch And Child Nutrition Program' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other Economic Disadvantage' as shortdescription,'Other Economic Disadvantage, Including:
a) from a family with an annual income at or below the official federal poverty line, b) eligible for Temporary Assistance to Needy Families (TANF) or other public assistance, c) received a Pell Grant or comparable state program of need-based financial assistance, d) eligible for programs assisted under Title II of the Job Training Partnership Act (JTPA), or e) eligible for benefits under the Food Stamp Act of 1977' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- EducationOrganizationCategory;
    v_descriptor := 'EducationOrganizationCategory';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'EDUCATIONORGANIZATIONCATEGORYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Education Service Center' as shortdescription,'Education Service Center' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Local Education Agency' as shortdescription,'Local Education Agency' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'School' as shortdescription,'School' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'State Education Agency' as shortdescription,'State Education Agency' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ElectronicMailType;
    v_descriptor := 'ElectronicMailType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ELECTRONICMAILTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Home/Personal' as shortdescription,'Home/Personal' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Organization' as shortdescription,'Organization' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Work' as shortdescription,'Work' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ELOActivity;
    v_descriptor := 'ELOActivity';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ELOACTIVITYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Rigorous Coursework' as shortdescription,'Rigorous coursework is defined as a TEKS-aligned and credit-earning course, including dual credit and credit recovery activities.' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Mentoring' as shortdescription,'Mentoring is defined as scheduled interaction between a trained adult and a specific student in which the adult provides support and life skills to help the student''s personal and academic development.' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Tutoring' as shortdescription,'Tutoring is defined as one-on-one or small group, led by a certified teacher that provides content instruction or homework help. Tutoring does not include academic skill building activities.' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Physical Activity' as shortdescription,'Physical activity is defined as activities designed to provide students with supplemental non-UIL opportunities for individual or group exercise, or related knowledge and skills that encourage regular physical activity.' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Academic Support' as shortdescription,'Academic support is defined as supplemental support related to student academic skill development and may include compensatory education, test-taking skills, and related academic skill-building. Tutoring and homework help are not considered academic support.' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Educational Enrichment' as shortdescription,'Educational Enrichment includes activities that engage students in actively exploring academic content and activities introduced during the regular school day. It consists of activities that are intentionally designed to align with but not replicate the instruction in a core course to increase the academic success of students in any subject, including fine arts, civic engagement, science, technology, engineering, and mathematics.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ELOType;
    v_descriptor := 'ELOType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ELOTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Non-Voluntary Extended School Day' as shortdescription,'Non-Voluntary Extended School Day (Submission 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Non-Voluntary Extended School Year' as shortdescription,'Non-Voluntary Extended School Year (Submission 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Voluntary Expanded Learning - Summer' as shortdescription,'Voluntary Expanded Learning Opportunity - Summer (Submission 4 Only)' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Voluntary Expanded Learning - Before School' as shortdescription,'Voluntary Expanded Learning Opportunity - Before School (Submission 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Voluntary Expanded Learning - After School' as shortdescription,'Voluntary Expanded Learning Opportunity - After School (Submission 3 Only)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- EmergentBilingualIndicator;
    v_descriptor := 'EmergentBilingualIndicator';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'EMERGENTBILINGUALINDICATORDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Non-EB/ Non-EL' as shortdescription,'Non-Emergent Bilingual (Non-EB)/Non-English learner (Non-EL)' as description UNION
SELECT v_namespace AS namespace,'1' as codevalue,'Identified as EB/EL' as shortdescription,'Identified as Emergent Bilingual (EB)/English Learner (EL)' as description UNION
SELECT v_namespace AS namespace,'F' as codevalue,'Monitored 1' as shortdescription,'Student Reclassified from Emergent Bilingual (EB)/English learner (EL) Status - Monitored 1 (M1) - student has met reclassification criteria, is no longer classified as EB/EL in PEIMS, is in his or her first year of monitoring as required by 19 TAC §89.1220(k).' as description UNION
SELECT v_namespace AS namespace,'S' as codevalue,'Monitored 2' as shortdescription,'Student Reclassified from Emergent Bilingual (EB)/English learner (EL) Status - Monitored 2 (M2) - student has met reclassification criteria, is no longer classified as EB/EL in PEIMS, is in his or her second year of monitoring as required by 19 TAC §89.1220(k).' as description UNION
SELECT v_namespace AS namespace,'3' as codevalue,'Monitored 3' as shortdescription,'Student Reclassified from Emergent Bilingual (EB)/English learner (EL) Status - Monitored 3 (M3) - student has met reclassification criteria, is no longer classified as EB/EL in PEIMS, is in his or her third year of monitoring as required by ESSA, 1111(b)(3)(B).' as description UNION
SELECT v_namespace AS namespace,'4' as codevalue,'Monitored 4' as shortdescription,'Student Reclassified from Emergent Bilingual (EB)/English learner (EL) Status - Monitored 4 (M4) - student has met reclassification criteria, is no longer classified as EB/EL in PEIMS, is in his or her fourth year of monitoring as required by ESSA, 1111(b)(3)(B).' as description UNION
SELECT v_namespace AS namespace,'5' as codevalue,'Former EB/EL Student' as shortdescription,'Former Emergent Bilingual (EB)/EL Student (effective after fourth year of monitoring) - student has previously been identified as EB/EL, has met reclassification criteria, and has completed four years of monitoring. The student continues with this status through the remainder of his or her school years in Texas.' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- EmploymentStatus;
    v_descriptor := 'EmploymentStatus';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'EMPLOYMENTSTATUSDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Employed Full-Time' as shortdescription,'Employed Full-Time' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Employed Part-Time' as shortdescription,'Employed Part-Time' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- EndorsementCompleted;
    v_descriptor := 'EndorsementCompleted';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ENDORSEMENTCOMPLETEDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'1' as codevalue,'Student Completed STEM Endorsement' as shortdescription,'Student Completed STEM Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Student Completed Business And Industry Endorsement' as shortdescription,'Student Completed Business And Industry Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Student Completed Public Services Endorsement' as shortdescription,'Student Completed Public Services Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Student Completed Arts And Humanities Endorsement' as shortdescription,'Student Completed Arts And Humanities Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'Student Completed Multi Disciplinary Studies Endorsement' as shortdescription,'Student Completed Multi Disciplinary Studies Endorsement (Submission 1 And 3 Only)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- EndorsementPursuing;
    v_descriptor := 'EndorsementPursuing';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ENDORSEMENTPURSUINGDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Student Is Not Pursuing Or Participating' as shortdescription,'Student Is Not Pursuing Or Participating (Submission 1 and 3)' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'Student Is Pursuing STEM Endorsement' as shortdescription,'Student Is Pursuing STEM Endorsement (Submission 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Student Is Pursuing Business And Industry Endorsement' as shortdescription,'Student Is Pursuing Business And Industry Endorsement (Submission 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Student Is Pursuing Public Services Endorsement' as shortdescription,'Student Is Pursuing Public Services Endorsement (Submission 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Student Is Pursuing Arts And Humanities Endorsement' as shortdescription,'Student Is Pursuing Arts And Humanities Endorsement (Submission 3 Only)' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'Student Is Pursuing Multi Disciplinary Studies Endorsement' as shortdescription,'Student Is Pursuing Multi Disciplinary Studies Endorsement (Submission 3 Only)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- EntryType;
    v_descriptor := 'EntryType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ENTRYTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'1' as codevalue,'Entry' as shortdescription,'Entry' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin   
    -- EvaluationDelayReason;
    v_descriptor := 'EvaluationDelayReason';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'EVALUATIONDELAYREASONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
				SELECT v_namespace AS namespace,'01' as codevalue,'LEA Delay Due to Lack of Available Assessment Personnel' as shortdescription,'LEA Delay Due to Lack of Available Assessment Personnel' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'LEA Delay Due to Scheduling' as shortdescription,'LEA Delay Due to Scheduling' as description UNION
				SELECT v_namespace AS namespace,'03' as codevalue,'LEA Delay Due to Late Report from Contracted Personnel' as shortdescription,'LEA Delay Due to Late Report from Contracted Personnel' as description UNION
				SELECT v_namespace AS namespace,'04' as codevalue,'Parent Delay (No Detailed Records Maintained by LEA)' as shortdescription,'Parent Delay (No Detailed Records Maintained by LEA Regarding a Parent of a Child who Repeatedly Fails or Refuses to Produce the Child for the Evaluation)' as description UNION
				SELECT v_namespace AS namespace,'05' as codevalue,'Parent Delay (Detailed Records Maintained by LEA)' as shortdescription,'Parent Delay (Detailed Records Maintained by LEA Regarding a Parent of a Child who Repeatedly Fails or Refuses to Produce the Child for the Evaluation)' as description UNION
				SELECT v_namespace AS namespace,'06' as codevalue,'LEA-Parent Agreement to Timeframe (No Detailed Records Maintained by LEA)' as shortdescription,'LEA Agreement with Parent to Timeframe (No Detailed Records Maintained by LEA)' as description UNION
				SELECT v_namespace AS namespace,'07' as codevalue,'LEA-Parent Agreement  to Timeframe (Detailed Records Maintained by LEA)' as shortdescription,'LEA Agreement with Parent to Timeframe (Detailed Records Maintained by LEA)' as description UNION
				SELECT v_namespace AS namespace,'08' as codevalue,'Part C didn’t refer child to Part B 90 days before the Child’s 3rd birthday' as shortdescription,'Part C (ECI) Did Not Notify/Refer Child to Part B at Least 90 Days Prior to the Child''s Third Birthday' as description UNION
				SELECT v_namespace AS namespace,'09' as codevalue,'Other' as shortdescription,'Other' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;  
begin
    -- ExitWithdrawType;
    v_descriptor := 'ExitWithdrawType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'EXITWITHDRAWTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Graduated From A Campus In This District Or Charter' as shortdescription,'Graduated From A Campus In This District Or Charter -  
Student graduated from a campus in this district or charter' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Died' as shortdescription,'Died -  
Student died while enrolled in school or during the summer break after completing the prior school year' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'Return To Home Country' as shortdescription,'Return To Home Country -  
Student withdrew from/left school to return to family''s home country' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'College, Pursue Associate''s or Bachelor''s Degree' as shortdescription,'College, Pursue Associate''s or Bachelor''s Degree -  
Student withdrew from/left school to enter college and is working towards an Associate''s or Bachelor''s degree ' as description UNION 
             SELECT v_namespace AS namespace,'60' as codevalue,'Home Schooling' as shortdescription,'Home Schooling -  
Student withdrew from/left school for home schooling' as description UNION 
             SELECT v_namespace AS namespace,'66' as codevalue,'Removed-Child Protective Services' as shortdescription,'Removed-Child Protective Services -  
Student was removed by Child Protective Services (CPS) and the district has not been informed of the student''s current status or enrollment' as description UNION 
             SELECT v_namespace AS namespace,'78' as codevalue,'Expelled For Offense Under TEC 37.007, Cannot Return' as shortdescription,'Expelled, For Offense Under TEC 37.007, Cannot Return -  
Student was expelled under the provisions of TEC 37.007 and cannot return to school' as description UNION 
             SELECT v_namespace AS namespace,'81' as codevalue,'Enroll In TX Private School' as shortdescription,'Enroll In Texas Private School -  
Student withdrew from/left school to enroll in a private school in Texas' as description UNION 
             SELECT v_namespace AS namespace,'82' as codevalue,'Enroll In School Outside Texas' as shortdescription,'Enroll In School Outside Texas -  
Student withdrew from/left school to enroll in a public or private school outside Texas' as description UNION 
             SELECT v_namespace AS namespace,'83' as codevalue,'Withdrawn By District Because Not Entitled To Enrollment' as shortdescription,'Withdrawn By District Because Not Entitled To Enrollment -  
Student was attending and was withdrawn from school by the district when the district discovered that the student was not entitled to enrollment in the district because a) the student was not a resident of the district, b) was not entitled under other provisions of TEC §25.001 or as a transfer student, or c) was not entitled to public school enrollment under TEC §38.001 or a corresponding rule of the Texas Department of State Health Services because the student was not immunized.' as description UNION 
             SELECT v_namespace AS namespace,'85' as codevalue,'Grad Outside TX Before Enter TX Public-Enter TX Public School-Left Again' as shortdescription,'Return To Home Country -  
Student withdrew from/left school to return to family''s home country' as description UNION 
             SELECT v_namespace AS namespace,'86' as codevalue,'GED Outside Texas' as shortdescription,'GED Outside Texas -  
Student received a GED outside Texas, returned to school to work toward the completion of a high school diploma, and then left; or student earned GED outside Texas after leaving Texas public schools' as description UNION 
             SELECT v_namespace AS namespace,'87' as codevalue,'Enroll In University High School Diploma Program' as shortdescription,'Enroll In University High School Diploma Program -  
Student withdrew/left school to enroll in the Texas Tech University ISD High School Diploma Program or University of Texas at Austin High School Diploma Program' as description UNION 
             SELECT v_namespace AS namespace,'88' as codevalue,'Court-ordered to a GED program, has not earned a GED' as shortdescription,'Court-ordered to a GED program, has not earned a GED -  
Student was ordered by a court to attend a GED program and has not earned a GED certificate' as description UNION 
             SELECT v_namespace AS namespace,'89' as codevalue,'Incarcerated in state jail or federal penitentiary as an adult' as shortdescription,'Incarcerated in state jail or federal penitentiary as an adult -  
Student is incarcerated in a state jail or federal penitentiary as an adult or as a person certified to stand trial as an adult' as description UNION 
             SELECT v_namespace AS namespace,'90' as codevalue,'Grad other state Interstate Compact on Edu Opportunity for Military Child' as shortdescription,'Graduated from another state under provisions of the Interstate Compact on Educational Opportunity for Military Children -
Per TEC 162.002, student lives in the household of an active-duty military serviceperson, transferred into Texas public schools at the beginning of or during his or her senior year, did not meet requirements to graduate from Texas public schools, did meet requirements to graduate from a school in the sending state, and, under provisions of the Interstate Compact on Educational Opportunity for Military Children, graduated from a school or district in the sending state' as description UNION 
             SELECT v_namespace AS namespace,'98' as codevalue,'Other' as shortdescription,'Other -  
Student was not enrolled within the school-start window for a reason not listed, student dropped out, or reason for leaving is unknown' as description UNION 
             SELECT v_namespace AS namespace,'MV' as codevalue,'Mover' as shortdescription,'Mover - 
Student moved from one Texas Public School to a different Texas Public School.' as description UNION 
             SELECT v_namespace AS namespace,'SC' as codevalue,'Status Change' as shortdescription,'Status Change - 
Student did not exit the Local Education Agency, but had a CalendarCode, ADA Eligiblity or EntryGradeLevel change during one school year.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- FosterCareType;
    v_descriptor := 'FosterCareType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'FOSTERCARETYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Student Is Not Conservator of DFPS' as shortdescription,'Student is not currently in the conservatorship of the Department of Family and Protective Services' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'Student Is Current Conservator of DFPS' as shortdescription,'Student is currently in the conservatorship of the Department of Family and Protective Services' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'PK Student Previously In Conservator of DFPS Adversary Hearing' as shortdescription,'Pre-kindergarten student was previously in the conservatorship of the Department of Family and Protective Services following an adversary hearing held as provided by Section 262.201, Family Code.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- FrequencyOfServices;
    v_descriptor := 'FrequencyOfServices';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'FREQUENCYOFSERVICESDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Daily' as shortdescription,'Daily' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Weekly' as shortdescription,'Weekly' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Monthly' as shortdescription,'Monthly' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Less Than Monthly' as shortdescription,'Less Than Monthly' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- Function;
    v_descriptor := 'Function';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'FUNCTIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'00' as codevalue,'No Function' as shortdescription,'No Function' as description UNION
				SELECT v_namespace AS namespace,'11' as codevalue,'Instruction' as shortdescription,'Instruction' as description UNION
				SELECT v_namespace AS namespace,'12' as codevalue,'Instructional Resources And Media Services' as shortdescription,'Instructional Resources And Media Services' as description UNION
				SELECT v_namespace AS namespace,'13' as codevalue,'Curriculum Development And Instructional Staff Development' as shortdescription,'Curriculum Development And Instructional Staff Development' as description UNION
				SELECT v_namespace AS namespace,'21' as codevalue,'Instructional Leadership' as shortdescription,'Instructional Leadership' as description UNION
				SELECT v_namespace AS namespace,'23' as codevalue,'School Leadership' as shortdescription,'School Leadership' as description UNION
				SELECT v_namespace AS namespace,'31' as codevalue,'Guidance, Counseling, And Evaluation Services' as shortdescription,'Guidance, Counseling, And Evaluation Services' as description UNION
				SELECT v_namespace AS namespace,'32' as codevalue,'Social Work Services' as shortdescription,'Social Work Services' as description UNION
				SELECT v_namespace AS namespace,'33' as codevalue,'Health Services' as shortdescription,'Health Services' as description UNION
				SELECT v_namespace AS namespace,'34' as codevalue,'Student (Pupil) Transportation' as shortdescription,'Student (Pupil) Transportation' as description UNION
				SELECT v_namespace AS namespace,'35' as codevalue,'Food Services' as shortdescription,'Food Services' as description UNION
				SELECT v_namespace AS namespace,'36' as codevalue,'Extracurricular Activities' as shortdescription,'Extracurricular Activities' as description UNION
				SELECT v_namespace AS namespace,'41' as codevalue,'General Administration' as shortdescription,'General Administration' as description UNION
				SELECT v_namespace AS namespace,'51' as codevalue,'Facilities Maintenance And Operations' as shortdescription,'Facilities Maintenance And Operations' as description UNION
				SELECT v_namespace AS namespace,'52' as codevalue,'Security And Monitoring Services' as shortdescription,'Security And Monitoring Services' as description UNION
				SELECT v_namespace AS namespace,'53' as codevalue,'Data Processing Services' as shortdescription,'Data Processing Services' as description UNION
				SELECT v_namespace AS namespace,'61' as codevalue,'Community Services' as shortdescription,'Community Services' as description UNION
				SELECT v_namespace AS namespace,'62' as codevalue,'School District Administrative Support Services (Used by ESC Only)' as shortdescription,'School District Administrative Support Services (Used by Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'71' as codevalue,'Debt Service' as shortdescription,'Debt Service' as description UNION
				SELECT v_namespace AS namespace,'81' as codevalue,'Facilities Acquisition And Construction' as shortdescription,'Facilities Acquisition And Construction' as description UNION
				SELECT v_namespace AS namespace,'91' as codevalue,'Contracted Instructional Services Between Public Schools' as shortdescription,'Contracted Instructional Services Between Public Schools' as description UNION
				SELECT v_namespace AS namespace,'92' as codevalue,'Incremental Costs Associated With Chapter 41, TEC, Purchase Or Sale Of WADA' as shortdescription,'Incremental Costs Associated With Chapter 41, Texas Education Code, Purchase Or Sale Of WADA' as description UNION
				SELECT v_namespace AS namespace,'93' as codevalue,'Payments to Fiscal Agent/Member Districts Of Shared Services Arrangements' as shortdescription,'Payments to Fiscal Agent/Member Districts Of Shared Services Arrangements' as description UNION
				SELECT v_namespace AS namespace,'95' as codevalue,'Payments To Juvenile Justice Alternative Education Programs' as shortdescription,'Payments To Juvenile Justice Alternative Education Programs' as description UNION
				SELECT v_namespace AS namespace,'97' as codevalue,'Payments To Tax Increment Fund' as shortdescription,'Payments To Tax Increment Fund' as description UNION
				SELECT v_namespace AS namespace,'99' as codevalue,'Other Intergovernmental Charges (Effective September 1, 2002)' as shortdescription,'Other Intergovernmental Charges (Effective September 1, 2002)' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- Fund
    v_descriptor := 'Fund';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'FUNDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'101' as codevalue,'Food Service' as shortdescription,'Food Service' as description UNION
				SELECT v_namespace AS namespace,'102' as codevalue,'ESC State Support (Education Service Centers Only)' as shortdescription,'ESC State Support (Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'199' as codevalue,'General Fund' as shortdescription,'General Fund' as description UNION
				SELECT v_namespace AS namespace,'203' as codevalue,'Child Care Development Block Grant' as shortdescription,'Child Care Development Block Grant' as description UNION
				SELECT v_namespace AS namespace,'205' as codevalue,'Head Start' as shortdescription,'Head Start' as description UNION
				SELECT v_namespace AS namespace,'206' as codevalue,'ESEA Title X, Part C -Education For The Homeless Children And Youth' as shortdescription,'ESEA Title X, Part C -Education For The Homeless Children And Youth' as description UNION
				SELECT v_namespace AS namespace,'209' as codevalue,'Energy Conservation For Institutional Buildings' as shortdescription,'Energy Conservation For Institutional Buildings' as description UNION
				SELECT v_namespace AS namespace,'211' as codevalue,'ESEA Title I Part A-Improving Basic Programs' as shortdescription,'ESEA Title I Part A-Improving Basic Programs' as description UNION
				SELECT v_namespace AS namespace,'212' as codevalue,'ESEA Title I Part C-Education of Migratory Children' as shortdescription,'ESEA Title I Part C-Education of Migratory Children' as description UNION
				SELECT v_namespace AS namespace,'218' as codevalue,'ESEA Title V, Part D, Sub 6, Jacob Javits GT Students Education Act' as shortdescription,'ESEA Title V, Part D, Subpart 6, Jacob Javits Gifted And Talented Students Education Act' as description UNION
				SELECT v_namespace AS namespace,'220' as codevalue,'Adult Education (ABE)-Federal' as shortdescription,'Adult Education (ABE)-Federal' as description UNION
				SELECT v_namespace AS namespace,'222' as codevalue,'National And Community Service Trust Act-Learn And Serve America' as shortdescription,'National And Community Service Trust Act-Learn And Serve America' as description UNION
				SELECT v_namespace AS namespace,'223' as codevalue,'Temporary Assistance For Needy Families (TANF)' as shortdescription,'Temporary Assistance For Needy Families (TANF)' as description UNION
				SELECT v_namespace AS namespace,'224' as codevalue,'IDEA-Part B, Formula' as shortdescription,'IDEA-Part B, Formula' as description UNION
				SELECT v_namespace AS namespace,'225' as codevalue,'IDEA-Part B, Preschool' as shortdescription,'IDEA-Part B, Preschool' as description UNION
				SELECT v_namespace AS namespace,'226' as codevalue,'IDEA-Part B, Discretionary' as shortdescription,'IDEA-Part B, Discretionary' as description UNION
				SELECT v_namespace AS namespace,'227' as codevalue,'IDEA-Part B, Deaf' as shortdescription,'IDEA-Part B, Deaf' as description UNION
				SELECT v_namespace AS namespace,'228' as codevalue,'IDEA-Part B, Preschool Deaf' as shortdescription,'IDEA-Part B, Preschool Deaf' as description UNION
				SELECT v_namespace AS namespace,'229' as codevalue,'IDEA-Part D, Deaf-Blind' as shortdescription,'IDEA-Part D, Deaf-Blind' as description UNION
				SELECT v_namespace AS namespace,'230' as codevalue,'IDEA-Part D, Personnel Training' as shortdescription,'IDEA-Part D, Personnel Training' as description UNION
				SELECT v_namespace AS namespace,'236' as codevalue,'Substance Abuse Prevention And Treatment Block Grant - Intervention' as shortdescription,'Substance Abuse Prevention And Treatment Block Grant - Intervention' as description UNION
				SELECT v_namespace AS namespace,'238' as codevalue,'Substance Abuse Prevention And Treatment Block Grant - Females' as shortdescription,'Substance Abuse Prevention And Treatment Block Grant - Females' as description UNION
				SELECT v_namespace AS namespace,'239' as codevalue,'Substance Abuse Prevention And Treatment Block Grant - Prevention' as shortdescription,'Substance Abuse Prevention And Treatment Block Grant - Prevention' as description UNION
				SELECT v_namespace AS namespace,'240' as codevalue,'National School Breakfast And Lunch Program' as shortdescription,'National School Breakfast And Lunch Program' as description UNION
				SELECT v_namespace AS namespace,'241' as codevalue,'Education Service Center Child Nutrition' as shortdescription,'Education Service Center Child Nutrition' as description UNION
				SELECT v_namespace AS namespace,'242' as codevalue,'Summer Feeding Program, Department Of Human Services (DHS)' as shortdescription,'Summer Feeding Program, Department Of Human Services (DHS)' as description UNION
				SELECT v_namespace AS namespace,'244' as codevalue,'Career and Technical Education - Basic Grant' as shortdescription,'Career and Technical Education - Basic Grant' as description UNION
				SELECT v_namespace AS namespace,'245' as codevalue,'Career and Technical Education - Single Parent' as shortdescription,'Career and Technical Education - Single Parent' as description UNION
				SELECT v_namespace AS namespace,'246' as codevalue,'Career and Technical Education - Sex Equity' as shortdescription,'Career and Technical Education - Sex Equity' as description UNION
				SELECT v_namespace AS namespace,'247' as codevalue,'Career and Technical Education - Curriculum Development' as shortdescription,'Career and Technical Education - Curriculum Development' as description UNION
				SELECT v_namespace AS namespace,'248' as codevalue,'Career and Technical Education - Professional Development' as shortdescription,'Career and Technical Education - Professional Development' as description UNION
				SELECT v_namespace AS namespace,'250' as codevalue,'Career and Technical Education - Apprenticeship' as shortdescription,'Career and Technical Education - Apprenticeship' as description UNION
				SELECT v_namespace AS namespace,'251' as codevalue,'Career and Technical Education - Quality Work Force' as shortdescription,'Career and Technical Education - Quality Work Force' as description UNION
				SELECT v_namespace AS namespace,'253' as codevalue,'IDEA-Part C, Early Intervention (Deaf)' as shortdescription,'IDEA-Part C, Early Intervention (Deaf)' as description UNION
				SELECT v_namespace AS namespace,'255' as codevalue,'ESEA Title II, Part A: Teacher And Principal Training And Recruitment' as shortdescription,'ESEA Title II, Part A: Teacher And Principal Training And Recruitment' as description UNION
				SELECT v_namespace AS namespace,'258' as codevalue,'Public Charter Schools' as shortdescription,'Public Charter Schools' as description UNION
				SELECT v_namespace AS namespace,'259' as codevalue,'Matching Funds for Library Purchases' as shortdescription,'Matching Funds for Library Purchases' as description UNION
				SELECT v_namespace AS namespace,'263' as codevalue,'Title III, Part A, English Language Acquisition And Language Enhancement' as shortdescription,'Title III, Part A, English Language Acquisition And Language Enhancement' as description UNION
				SELECT v_namespace AS namespace,'264' as codevalue,'Community Service Grant Program' as shortdescription,'Community Service Grant Program' as description UNION
				SELECT v_namespace AS namespace,'265' as codevalue,'Title IV, Part B, 21st Century Community Learning Centers' as shortdescription,'Title IV, Part B, 21st Century Community Learning Centers' as description UNION
				SELECT v_namespace AS namespace,'266' as codevalue,'ESSER of the CARES Act' as shortdescription,'Elementary and Secondary School Emergency Relief Fund (ESSER) of the Coronavirus Aid, Relief, and Economic Security (CARES) Act' as description UNION
				SELECT v_namespace AS namespace,'267' as codevalue,'Improving Academic Achievement' as shortdescription,'Improving Academic Achievement (Grants for State Assessments and Related Activities)' as description UNION
				SELECT v_namespace AS namespace,'268' as codevalue,'Improving Academic Achievement (Grants for Enhanced Assessment Instruments)' as shortdescription,'Improving Academic Achievement (Grants for Enhanced Assessment Instruments)' as description UNION
				SELECT v_namespace AS namespace,'270' as codevalue,'ESEA, Title VI, Part B,- Rural And Low-Income Program' as shortdescription,'ESEA, Title VI, Part B,- Rural And Low-Income Program' as description UNION
				SELECT v_namespace AS namespace,'271' as codevalue,'Workforce Investment Act Youth Activities' as shortdescription,'Workforce Investment Act Youth Activities' as description UNION
				SELECT v_namespace AS namespace,'272' as codevalue,'Medicaid Administrative Claiming Program (MAC)' as shortdescription,'Medicaid Administrative Claiming Program (MAC)' as description UNION
				SELECT v_namespace AS namespace,'273' as codevalue,'Mathematics and Science Partnerships' as shortdescription,'Mathematics and Science Partnerships' as description UNION
				SELECT v_namespace AS namespace,'274' as codevalue,'GEAR UP' as shortdescription,'GEAR UP' as description UNION
				SELECT v_namespace AS namespace,'275' as codevalue,'School Dropout Prevention' as shortdescription,'School Dropout Prevention' as description UNION
				SELECT v_namespace AS namespace,'276' as codevalue,'Title I SIP Academy Grant' as shortdescription,'Title I SIP Academy Grant' as description UNION
				SELECT v_namespace AS namespace,'277' as codevalue,'Coronavirus Relief Fund (CRF) of the CARES Act' as shortdescription,'Coronavirus Relief Fund (CRF) of the CARES Act' as description UNION
				SELECT v_namespace AS namespace,'279' as codevalue,'Texas COVID Learning Acceleration Supports (TCLAS) - State ESSER III Funds' as shortdescription,'Texas COVID Learning Acceleration Supports (TCLAS) - State ESSER III Funds' as description UNION
				SELECT v_namespace AS namespace,'280' as codevalue,'ARP Act - Homeless II - Education for Homeless Children and Youth Program' as shortdescription,'American Rescue Plan (ARP) Act - Homeless II - Education for Homeless Children and Youth Program' as description UNION
				SELECT v_namespace AS namespace,'281' as codevalue,'ESSER II of the CRRSA Act' as shortdescription,'Elementary and Secondary School Emergency Relief Fund II (ESSER II) of the Coronavirus Response and Relief Supplemental Appropriations (CRRSA) Act' as description UNION
				SELECT v_namespace AS namespace,'282' as codevalue,'ESSER III of the American Rescue Plan Act of 2021' as shortdescription,'ESSER III of the American Rescue Plan Act of 2021' as description UNION
				SELECT v_namespace AS namespace,'283' as codevalue,'Supplemental ESSER (ESSER-SUPP)' as shortdescription,'Supplemental ESSER (ESSER-SUPP)' as description UNION
				SELECT v_namespace AS namespace,'284' as codevalue,'IDEA-Part B, Formula - American Rescue Plan (ARP) Act' as shortdescription,'IDEA-Part B, Formula - American Rescue Plan (ARP) Act' as description UNION
				SELECT v_namespace AS namespace,'285' as codevalue,'IDEA-Part B, Preschool - American Rescue Plan (ARP) Act' as shortdescription,'IDEA-Part B, Preschool - American Rescue Plan (ARP) Act' as description UNION
				SELECT v_namespace AS namespace,'286' as codevalue,'Title I SIP Academy Grant - ARRA (Stimulus)' as shortdescription,'Title I SIP Academy Grant - ARRA (Stimulus)' as description UNION
				SELECT v_namespace AS namespace,'289' as codevalue,'Federally Funded Special Revenue Funds' as shortdescription,'Federally Funded Special Revenue Funds' as description UNION
				SELECT v_namespace AS namespace,'292' as codevalue,'SSA-Child Care Development Block Grant' as shortdescription,'Shared Services Arrangements-Child Care Development Block Grant' as description UNION
				SELECT v_namespace AS namespace,'294' as codevalue,'SSA-Head Start' as shortdescription,'Shared Services Arrangements-Head Start' as description UNION
				SELECT v_namespace AS namespace,'298' as codevalue,'SSA-Energy Conservation For Institutional Buildings' as shortdescription,'Shared Services Arrangements-Energy Conservation For Institutional Buildings' as description UNION
				SELECT v_namespace AS namespace,'300' as codevalue,'SSA-ESEA Title I Part A-Improving Basic Programs' as shortdescription,'Shared Services Arrangements-ESEA Title I Part A-Improving Basic Programs' as description UNION
				SELECT v_namespace AS namespace,'301' as codevalue,'SSA-ESEA Title I Part C-Education of Migratory Children' as shortdescription,'Shared Services Arrangements-ESEA Title I Part C-Education of Migratory Children' as description UNION
				SELECT v_namespace AS namespace,'307' as codevalue,'SSA-ESEA Title V, Part D, Subpart 6, Jacob Javits GT Students Education Act' as shortdescription,'Shared Services Arrangements-ESEA Title V, Part D, Subpart 6, Jacob Javits Gifted And Talented Students Education Act' as description UNION
				SELECT v_namespace AS namespace,'309' as codevalue,'SSA-Adult Basic Education (ABE) - Federal' as shortdescription,'Shared Services Arrangements-Adult Basic Education (ABE) - Federal' as description UNION
				SELECT v_namespace AS namespace,'311' as codevalue,'SSA-National and Community Service Trust Act-Learn and Serve America' as shortdescription,'Shared Services Arrangements-National and Community Service Trust Act-Learn and Serve America' as description UNION
				SELECT v_namespace AS namespace,'312' as codevalue,'SSA-Temporary Assistance For Needy Families (TANF)' as shortdescription,'Shared Services Arrangements-Temporary Assistance For Needy Families (TANF)' as description UNION
				SELECT v_namespace AS namespace,'313' as codevalue,'SSA-IDEA-Part B, Formula' as shortdescription,'Shared Services Arrangements-IDEA-Part B, Formula' as description UNION
				SELECT v_namespace AS namespace,'314' as codevalue,'SSA-IDEA-Part B, Preschool' as shortdescription,'Shared Services Arrangements-IDEA-Part B, Preschool' as description UNION
				SELECT v_namespace AS namespace,'315' as codevalue,'SSA-IDEA-Part B, Discretionary' as shortdescription,'Shared Services Arrangements-IDEA-Part B, Discretionary' as description UNION
				SELECT v_namespace AS namespace,'316' as codevalue,'SSA-IDEA-Part B, Deaf' as shortdescription,'Shared Services Arrangements-IDEA-Part B, Deaf' as description UNION
				SELECT v_namespace AS namespace,'317' as codevalue,'SSA-IDEA-Part B, Preschool Deaf' as shortdescription,'Shared Services Arrangements-IDEA-Part B, Preschool Deaf' as description UNION
				SELECT v_namespace AS namespace,'319' as codevalue,'SSA-IDEA-Part D, Personnel Training' as shortdescription,'Shared Services Arrangements-IDEA-Part D, Personnel Training' as description UNION
				SELECT v_namespace AS namespace,'325' as codevalue,'SSA-Substance Abuse Prevention And Treatment Block Grant-Intervention' as shortdescription,'Shared Services Arrangements-Substance Abuse Prevention And Treatment Block Grant-Intervention' as description UNION
				SELECT v_namespace AS namespace,'327' as codevalue,'SSA-Substance Abuse Prevention And Treatment Block Grant-Females' as shortdescription,'Shared Services Arrangements-Substance Abuse Prevention And Treatment Block Grant-Females' as description UNION
				SELECT v_namespace AS namespace,'328' as codevalue,'SSA-Substance Abuse Prevention And Treatment Block Grant-Prevention' as shortdescription,'Shared Services Arrangements-Substance Abuse Prevention And Treatment Block Grant-Prevention' as description UNION
				SELECT v_namespace AS namespace,'329' as codevalue,'SSA-Summer Feeding Program, Department Of Human Services (DHS)' as shortdescription,'Shared Services Arrangements-Summer Feeding Program, Department Of Human Services (DHS)' as description UNION
				SELECT v_namespace AS namespace,'331' as codevalue,'SSA- Career And Technical Education-Basic Grant' as shortdescription,'Shared Services Arrangements- Career And Technical Education-Basic Grant' as description UNION
				SELECT v_namespace AS namespace,'332' as codevalue,'SSA- Career And Technical Education-Single Parent' as shortdescription,'Shared Services Arrangements- Career And Technical Education-Single Parent' as description UNION
				SELECT v_namespace AS namespace,'333' as codevalue,'SSA- Career And Technical Education-Sex Equity' as shortdescription,'Shared Services Arrangements- Career And Technical Education-Sex Equity' as description UNION
				SELECT v_namespace AS namespace,'334' as codevalue,'SSA- Career And Technical Education-Curriculum Development' as shortdescription,'Shared Services Arrangements- Career And Technical Education-Curriculum Development' as description UNION
				SELECT v_namespace AS namespace,'335' as codevalue,'SSA- Career And Technical Education-Professional Development' as shortdescription,'Shared Services Arrangements- Career And Technical Education-Professional Development' as description UNION
				SELECT v_namespace AS namespace,'337' as codevalue,'SSA- Career And Technical Education-Apprenticeship' as shortdescription,'Shared Services Arrangements- Career And Technical Education-Apprenticeship' as description UNION
				SELECT v_namespace AS namespace,'338' as codevalue,'SSA- Career And Technical Education-Quality Work Force' as shortdescription,'Shared Services Arrangements- Career And Technical Education-Quality Work Force' as description UNION
				SELECT v_namespace AS namespace,'340' as codevalue,'SSA-IDEA-Part C Early Intervention (Deaf)' as shortdescription,'Shared Services Arrangements-IDEA-Part C Early Intervention (Deaf)' as description UNION
				SELECT v_namespace AS namespace,'342' as codevalue,'SSA- Title II, Part A: Teacher And Principal Training And Recruiting' as shortdescription,'Shared Services Arrangements - Title II, Part A: Teacher And Principal Training And Recruiting' as description UNION
				SELECT v_namespace AS namespace,'347' as codevalue,'SSA- ESEA, Title VI, Part B, Subpart 2 - Rural And Low-Income School Prog' as shortdescription,'Shared Services Arrangements - ESEA, Title VI, Part B, Subpart 2 - Rural And Low-Income School Program' as description UNION
				SELECT v_namespace AS namespace,'350' as codevalue,'SSA- Title III, Part A, English Lang Acquisition and Lang Enhancement' as shortdescription,'Shared Services Arrangements - Title III, Part A, English Language Acquisition and Language Enhancement' as description UNION
				SELECT v_namespace AS namespace,'352' as codevalue,'SSA- 21st Century Community Learning Centers' as shortdescription,'Shared Services Arrangements - 21st Century Community Learning Centers' as description UNION
				SELECT v_namespace AS namespace,'354' as codevalue,'SSA-Grants for State Assessments and Related Activities' as shortdescription,'Shared Services Arrangements - Improving Academic Achievement (Grants for State Assessments and Related Activities)' as description UNION
				SELECT v_namespace AS namespace,'355' as codevalue,'SSA-Grants for Enhanced Assessment Instruments' as shortdescription,'Shared Services Arrangements - Improving Academic Achievement (Grants for Enhanced Assessment Instruments)' as description UNION
				SELECT v_namespace AS namespace,'357' as codevalue,'SSA- Mathematics And Science Partnerships' as shortdescription,'Shared Services Arrangements - Mathematics And Science Partnerships' as description UNION
				SELECT v_namespace AS namespace,'359' as codevalue,'SSA- ESEA, Title I, Part A - Improving Basic Programs - ARRA (Stimulus)' as shortdescription,'Shared Services Arrangements - ESEA, Title I, Part A - Improving Basic Programs - ARRA (Stimulus)' as description UNION
				SELECT v_namespace AS namespace,'360' as codevalue,'SSA- Title I SIP Academy Grant - ARRA (Stimulus)' as shortdescription,'Shared Services Arrangements - Title I SIP Academy Grant - ARRA (Stimulus)' as description UNION
				SELECT v_namespace AS namespace,'364' as codevalue,'SSA- IDEA-Part B, Formula - American Rescue Plan (ARP) Act' as shortdescription,'Shared Services Arrangements - IDEA-Part B, Formula - American Rescue Plan (ARP) Act' as description UNION
				SELECT v_namespace AS namespace,'365' as codevalue,'SSA- IDEA-Part B, Preschool - American Rescue Plan (ARP) Act' as shortdescription,'Shared Services Arrangements - IDEA-Part B, Preschool - American Rescue Plan (ARP) Act' as description UNION
				SELECT v_namespace AS namespace,'367' as codevalue,'SSA- ARP Act - Homeless II - Edu for Homeless Children and Youth Program' as shortdescription,'Shared Services Arrangements - American Rescue Plan (ARP) Act - Homeless II - Education for Homeless Children and Youth Program' as description UNION
				SELECT v_namespace AS namespace,'379' as codevalue,'Federally Funded Shared Services Arrangements' as shortdescription,'Federally Funded Shared Services Arrangements' as description UNION
				SELECT v_namespace AS namespace,'381' as codevalue,'Adult Basic Education (ABE)-State' as shortdescription,'Adult Basic Education (ABE)-State' as description UNION
				SELECT v_namespace AS namespace,'382' as codevalue,'Temporary Assistance To Needy Families (TANF) - State' as shortdescription,'Temporary Assistance To Needy Families (TANF) - State' as description UNION
				SELECT v_namespace AS namespace,'383' as codevalue,'Professional Staff Development' as shortdescription,'Professional Staff Development' as description UNION
				SELECT v_namespace AS namespace,'384' as codevalue,'Texas After School Initiative' as shortdescription,'Texas After School Initiative' as description UNION
				SELECT v_namespace AS namespace,'385' as codevalue,'State Supplemental Visually Impaired (SSVI)' as shortdescription,'State Supplemental Visually Impaired (SSVI)' as description UNION
				SELECT v_namespace AS namespace,'386' as codevalue,'Regional Day School For The Deaf' as shortdescription,'Regional Day School For The Deaf' as description UNION
				SELECT v_namespace AS namespace,'387' as codevalue,'Quality Work Force Planning-State' as shortdescription,'Quality Work Force Planning-State' as description UNION
				SELECT v_namespace AS namespace,'388' as codevalue,'Innovative Education Grants' as shortdescription,'Innovative Education Grants' as description UNION
				SELECT v_namespace AS namespace,'390' as codevalue,'Early Childhood Limited English Proficient (LEP) Summer Program' as shortdescription,'Early Childhood Limited English Proficient (LEP) Summer Program' as description UNION
				SELECT v_namespace AS namespace,'391' as codevalue,'Year Round Schools Incentive' as shortdescription,'Year Round Schools Incentive' as description UNION
				SELECT v_namespace AS namespace,'392' as codevalue,'Non-Educational Community-Based Support' as shortdescription,'Non-Educational Community-Based Support' as description UNION
				SELECT v_namespace AS namespace,'393' as codevalue,'Texas Successful Schools Program' as shortdescription,'Texas Successful Schools Program' as description UNION
				SELECT v_namespace AS namespace,'395' as codevalue,'Comprehensive Dev Guidance Prog on Ele Campuses Students At-Risk Situations' as shortdescription,'Comprehensive Developmental Guidance Program on Elementary Campuses for Students in At-Risk Situations' as description UNION
				SELECT v_namespace AS namespace,'396' as codevalue,'Communities In Schools' as shortdescription,'Communities In Schools' as description UNION
				SELECT v_namespace AS namespace,'397' as codevalue,'Advanced Placement Incentives' as shortdescription,'Advanced Placement Incentives' as description UNION
				SELECT v_namespace AS namespace,'398' as codevalue,'Children''s Trust Fund Of Texas' as shortdescription,'Children''s Trust Fund Of Texas' as description UNION
				SELECT v_namespace AS namespace,'399' as codevalue,'Invest Cap Funds / Campus Deregulation and Restructure Improve Stu Achieve' as shortdescription,'Investment Capital Funds / Campus Deregulation and Restructuring To Improve Student Achievement' as description UNION
				SELECT v_namespace AS namespace,'400' as codevalue,'School Health (Education Service Centers Only)' as shortdescription,'School Health (Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'402' as codevalue,'Texas Ready To Read Program' as shortdescription,'Texas Ready To Read Program' as description UNION
				SELECT v_namespace AS namespace,'403' as codevalue,'Certification (Education Service Centers Only)' as shortdescription,'Certification (Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'404' as codevalue,'Student Success Initiative' as shortdescription,'Student Success Initiative' as description UNION
				SELECT v_namespace AS namespace,'405' as codevalue,'Gifted And Talented (Education Service Centers Only)' as shortdescription,'Gifted And Talented (Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'406' as codevalue,'Teacher Recruitment (Education Service Centers Only)' as shortdescription,'Teacher Recruitment (Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'407' as codevalue,'Bilingual Education (Education Service Centers Only)' as shortdescription,'Bilingual Education (Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'408' as codevalue,'Technology (Education Service Centers Only)' as shortdescription,'Technology (Education Service Centers Only)' as description UNION
				SELECT v_namespace AS namespace,'409' as codevalue,'High School Completion And Success / Texas High School Project' as shortdescription,'High School Completion And Success / Texas High School Project' as description UNION
				SELECT v_namespace AS namespace,'410' as codevalue,'State Instructional Materials Fund' as shortdescription,'State Instructional Materials Fund' as description UNION
				SELECT v_namespace AS namespace,'412' as codevalue,'Public School Child Care Services' as shortdescription,'Public School Child Care Services' as description UNION
				SELECT v_namespace AS namespace,'414' as codevalue,'Texas Reading Initiative / Texas Reading, Math And Science Initiative' as shortdescription,'Texas Reading Initiative / Texas Reading, Math And Science Initiative' as description UNION
				SELECT v_namespace AS namespace,'415' as codevalue,'Kindergarten and Prekindergarten Grants' as shortdescription,'Kindergarten and Prekindergarten Grants' as description UNION
				SELECT v_namespace AS namespace,'416' as codevalue,'State Head Start' as shortdescription,'State Head Start' as description UNION
				SELECT v_namespace AS namespace,'419' as codevalue,'Head Start-Ready To Read / Early Childhood School Readiness' as shortdescription,'Head Start-Ready To Read / Early Childhood School Readiness' as description UNION
				SELECT v_namespace AS namespace,'420' as codevalue,'Foundation School Program And Other State Aid (Charter School Only)' as shortdescription,'Foundation School Program And Other State Aid (Charter School Only)' as description UNION
				SELECT v_namespace AS namespace,'422' as codevalue,'Matching Funds For Library Purchases' as shortdescription,'Matching Funds For Library Purchases' as description UNION
				SELECT v_namespace AS namespace,'429' as codevalue,'State Funded Special Revenue Funds' as shortdescription,'State Funded Special Revenue Funds' as description UNION
				SELECT v_namespace AS namespace,'431' as codevalue,'SSA-Adult Education-State' as shortdescription,'Shared Services Arrangements-Adult Education-State' as description UNION
				SELECT v_namespace AS namespace,'432' as codevalue,'SSA-Temporary Assistance For Needy Families (TANF)-State, TEC 29.252' as shortdescription,'Shared Services Arrangements-Temporary Assistance For Needy Families (TANF)-State, TEC 29.252' as description UNION
				SELECT v_namespace AS namespace,'433' as codevalue,'SSA-Professional Staff Development' as shortdescription,'Shared Services Arrangements-Professional Staff Development' as description UNION
				SELECT v_namespace AS namespace,'434' as codevalue,'SSA-State Supplemental Visually Impaired (SSVI)' as shortdescription,'Shared Services Arrangements-State Supplemental Visually Impaired (SSVI)' as description UNION
				SELECT v_namespace AS namespace,'435' as codevalue,'SSA-Regional Day School For The Deaf' as shortdescription,'Shared Services Arrangements-Regional Day School For The Deaf' as description UNION
				SELECT v_namespace AS namespace,'436' as codevalue,'SSA-Quality Work Force Planning-State' as shortdescription,'Shared Services Arrangements-Quality Work Force Planning-State' as description UNION
				SELECT v_namespace AS namespace,'437' as codevalue,'SSA-Special Education' as shortdescription,'Shared Services Arrangements-Special Education' as description UNION
				SELECT v_namespace AS namespace,'438' as codevalue,'SSA-Public School Child Care Services' as shortdescription,'Shared Services Arrangements-Public School Child Care Services' as description UNION
				SELECT v_namespace AS namespace,'439' as codevalue,'SSA-Texas Reading Initiative / Texas Reading, Math and Science Initiative' as shortdescription,'Shared Services Arrangements-Texas Reading Initiative / Texas Reading, Math and Science Initiative' as description UNION
				SELECT v_namespace AS namespace,'440' as codevalue,'SSA-Telecommunication Infrastructure Fund' as shortdescription,'Shared Services Arrangements-Telecommunication Infrastructure Fund' as description UNION
				SELECT v_namespace AS namespace,'441' as codevalue,'SSA-Head Start-Ready to Read / Early Childhood School Readiness' as shortdescription,'Shared Services Arrangements-Head Start-Ready to Read / Early Childhood School Readiness' as description UNION
				SELECT v_namespace AS namespace,'442' as codevalue,'SSA-Limited English Proficient (LEP) Student Success Initiative' as shortdescription,'Shared Services Arrangements-Limited English Proficient (LEP) Student Success Initiative' as description UNION
				SELECT v_namespace AS namespace,'459' as codevalue,'SSA-State/Local Funded Edu Prog (include local/state supplement to federal)' as shortdescription,'Shared Services Arrangements-State/Local Funded Educational Programs (includes local/state supplement to federal)' as description UNION
				SELECT v_namespace AS namespace,'461' as codevalue,'Campus Activity Funds' as shortdescription,'Campus Activity Funds' as description UNION
				SELECT v_namespace AS namespace,'479' as codevalue,'Permanent Fund' as shortdescription,'Permanent Fund' as description UNION
				SELECT v_namespace AS namespace,'499' as codevalue,'Locally Funded Special Revenue Funds' as shortdescription,'Locally Funded Special Revenue Funds' as description UNION
				SELECT v_namespace AS namespace,'599' as codevalue,'Debt Service Funds' as shortdescription,'Debt Service Funds' as description UNION
				SELECT v_namespace AS namespace,'699' as codevalue,'Capital Projects Funds' as shortdescription,'Capital Projects Funds' as description UNION
				SELECT v_namespace AS namespace,'701' as codevalue,'Enterprise Fund-National School Breakfast and Lunch Program' as shortdescription,'Enterprise Fund-National School Breakfast and Lunch Program' as description UNION
				SELECT v_namespace AS namespace,'749' as codevalue,'Enterprise Funds' as shortdescription,'Enterprise Funds' as description UNION
				SELECT v_namespace AS namespace,'751' as codevalue,'Transportation' as shortdescription,'Transportation' as description UNION
				SELECT v_namespace AS namespace,'752' as codevalue,'Print Shop' as shortdescription,'Print Shop' as description UNION
				SELECT v_namespace AS namespace,'753' as codevalue,'Insurance' as shortdescription,'Insurance' as description UNION
				SELECT v_namespace AS namespace,'754' as codevalue,'Computer Operations' as shortdescription,'Computer Operations' as description UNION
				SELECT v_namespace AS namespace,'755' as codevalue,'Public Entity Risk Pool' as shortdescription,'Public Entity Risk Pool' as description UNION
				SELECT v_namespace AS namespace,'799' as codevalue,'Internal Service Funds' as shortdescription,'Internal Service Funds' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- GenerationCode;
    v_descriptor := 'GenerationCode';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'GENERATIONCODEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
				SELECT v_namespace AS namespace,'01' as codevalue,'Jr' as shortdescription,'Jr' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'Sr' as shortdescription,'Sr' as description UNION
				SELECT v_namespace AS namespace,'03' as codevalue,'II' as shortdescription,'II' as description UNION
				SELECT v_namespace AS namespace,'04' as codevalue,'III' as shortdescription,'III' as description UNION
				SELECT v_namespace AS namespace,'05' as codevalue,'IV' as shortdescription,'IV' as description UNION
				SELECT v_namespace AS namespace,'06' as codevalue,'V' as shortdescription,'V' as description UNION
				SELECT v_namespace AS namespace,'07' as codevalue,'VI' as shortdescription,'VI' as description UNION
				SELECT v_namespace AS namespace,'08' as codevalue,'VII' as shortdescription,'VII' as description UNION
				SELECT v_namespace AS namespace,'09' as codevalue,'VIII' as shortdescription,'VIII' as description UNION
				SELECT v_namespace AS namespace,'10' as codevalue,'I' as shortdescription,'I' as description UNION
				SELECT v_namespace AS namespace,'11' as codevalue,'IX' as shortdescription,'IX' as description UNION
				SELECT v_namespace AS namespace,'12' as codevalue,'X' as shortdescription,'X' as description
				),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- GiftedTalentedProgram;
    v_descriptor := 'GiftedTalentedProgram';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'GIFTEDTALENTEDPROGRAMDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'No program' as shortdescription,'Does not provide a program for gifted and talented students.' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Pull-out' as shortdescription,'Part-time services in a classroom, other than the student''s regular class, that take place on a regular schedule provided by a gifted/talented 30-hour foundational and 6-hour update trained teacher.' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Push-in' as shortdescription,'A gifted/talented 30-hour foundational and 6-hour update trained teacher provides occasional services to a student while the student is in their regular classroom.' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Full-time gifted only' as shortdescription,'The student receives the majority of their core subjects from teachers with gifted/talented 30-hour foundational and 6-hour update training with peers who are all identified as gifted/talented.' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Full-time inclusion' as shortdescription,'The student receives a majority of their core subjects from a specific teacher or teachers with gifted/talented 30-hour foundational and 6-hour update training, but the classes may include peers who are not identified as gifted/talented.' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Special Day School' as shortdescription,'A special school which is administratively separate from regular schools and is organized to serve gifted/talented students with gifted/talented 30-hour foundational and 6-hour update trained teachers.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- GradeLevel;
    v_descriptor := 'GradeLevel';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'GRADELEVELDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'EE' as codevalue,'Early Education' as shortdescription,'Early Education(early childhood programs other than state-approved pre-kindergarten and kindergarten)' as description UNION 
             SELECT v_namespace AS namespace,'KG' as codevalue,'Kindergarten' as shortdescription,'Kindergarten' as description UNION 
             SELECT v_namespace AS namespace,'PK' as codevalue,'PreKindergarten' as shortdescription,'PreKindergarten' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Grade 1' as shortdescription,'First Grade' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Grade 2' as shortdescription,'Second Grade' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Grade 3' as shortdescription,'Third Grade' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Grade 4' as shortdescription,'Fourth Grade' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Grade 5' as shortdescription,'Fifth Grade' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Grade 6' as shortdescription,'Sixth Grade' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Grade 7' as shortdescription,'Seventh Grade' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Grade 8' as shortdescription,'Eighth Grade' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Grade 9' as shortdescription,'Ninth Grade' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Grade 10' as shortdescription,'Tenth Grade' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Grade 11' as shortdescription,'Eleventh Grade' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Grade 12' as shortdescription,'Twelfth Grade' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
      --raise notice 'INSERT INTO %.% SELECT descriptorid from edfi.descriptor where namespace=% and priordescriptorid=-999 AND descriptorid NOT IN(SELECT %id from %.%)', v_table_schema,v_table_name,v_namespace,v_table_name, v_table_schema,v_table_name;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- GradingPeriod;
    v_descriptor := 'GradingPeriod';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'GRADINGPERIODDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'1' as codevalue,'First Six Weeks Reporting Period' as shortdescription,'First Six Weeks Reporting Period' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Second Six Weeks Reporting Period' as shortdescription,'Second Six Weeks Reporting Period' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Third Six Weeks Reporting Period' as shortdescription,'Third Six Weeks Reporting Period' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Fourth Six Weeks Reporting Period' as shortdescription,'Fourth Six Weeks Reporting Period' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'Fifth Six Weeks Reporting Period' as shortdescription,'Fifth Six Weeks Reporting Period' as description UNION 
             SELECT v_namespace AS namespace,'6' as codevalue,'Sixth Six Weeks Reporting Period' as shortdescription,'Sixth Six Weeks Reporting Period' as description UNION 
             SELECT v_namespace AS namespace,'7' as codevalue,'First Session - OFSDP Credit/Promotion Recovery Program' as shortdescription,'First Session - OFSDP Credit/Promotion Recovery Program' as description UNION 
             SELECT v_namespace AS namespace,'8' as codevalue,'Second Session - OFSDP Credit/Promotion Recovery Program' as shortdescription,'Second Session - OFSDP Credit/Promotion Recovery Program' as description UNION 
             SELECT v_namespace AS namespace,'9' as codevalue,'Additional Days School Year Program Reporting Period' as shortdescription,'Additional Days School Year Program Reporting Period' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- HearingAmplifAvgDailyUse;
    v_descriptor := 'HearingAmplifAvgDailyUse';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'HEARINGAMPLIFAVGDAILYUSEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Less Than 1 Hour' as shortdescription,'Less Than 1 Hour' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'1 to 3 Hours' as shortdescription,'1 to 3 Hours' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'More Than 3 Hours' as shortdescription,'More Than 3 Hours' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- HearingAmplificationAccess;
    v_descriptor := 'HearingAmplificationAccess';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'HEARINGAMPLIFICATIONACCESSDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Full Day' as shortdescription,'Full Day' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Partial Day' as shortdescription,'Partial Day' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- HearingAmplificationType;
    v_descriptor := 'HearingAmplificationType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'HEARINGAMPLIFICATIONTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Hearing Aids' as shortdescription,'Hearing Aids' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Bone Anchored Hearing Aids' as shortdescription,'Bone Anchored Hearing Aids (BAHA)' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Implants' as shortdescription,'Implants (Includes Cochlear and Middle Ear Implants)' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Supplementals' as shortdescription,'Supplementals (includes examples such as FM systems, Infrared systems, Induction Loop systems)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- HomelessStatus;
    v_descriptor := 'HomelessStatus';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'HOMELESSSTATUSDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Student Is Not Homeless At Any Time During The Current School Year' as shortdescription,'Student is not homeless at any time during current school year' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Student Lives Temporarily Doubled-Up During The Current School Year' as shortdescription,'Student lives temporarily doubled-up (sharing residence with a family or individual) at any time during current school year:
Doubled-Up (e.g., living with another family) is defined as sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason.  This classification requires a case-by-case determination.' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Student Is Unsheltered At Any Time During The Current School Year' as shortdescription,'Student is unsheltered (i.e, lives on the street, lives in cars, parks, campgrounds, temporary trailers [including FEMA trailers], or abandoned buildings) at any time during current school year:
Unsheltered is defined as a nighttime residence that is a public or private place not designed for, or ordinarily used as, a regular sleeping accommodation for human beings.  It includes such places as cars, parks, campgrounds (if they live there because they lack an alternative accommodation), temporary trailers (if they live there because they lack an alternative accommodation), abandoned buildings, and substandard housing.  Substandard housing may be determined by local building codes, community norms, and/or a case-by-case determination as to whether the accommodation is a “fixed, regular, and adequate nighttime residence.”' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Student Lives In A Motel Or Hotel Any Time During The Current School Year' as shortdescription,'Student lives in motel or hotel at any time during current school year:
Students who stay at a motel or hotel are considered homeless if they reside there because they have lost their housing, lack an alternative accommodation, and do not have a “fixed, regular, and adequate nighttime residence.”' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'Student Lives In A Shelter At Any Time During The Current School Year' as shortdescription,'Student lives in a shelter, transitional housing at any time during current school year:
Shelters are defined as supervised publicly or privately operated facilities designed to provide temporary living accommodations.  The shelters category for homeless students includes emergency shelters, family shelters, domestic violence shelters, youth shelters, and transitional housing programs. The shelters category for homeless students does not include residential treatment facilities, Title I Neglected or Delinquent facilities, or TJJD facilities.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- HoursSpentReceivingServices;
    v_descriptor := 'HoursSpentReceivingServices';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'HOURSSPENTRECEIVINGSERVICESDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Less Than 1 Hour' as shortdescription,'Less Than 1 Hour' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'1 to 3 Hours' as shortdescription,'1 to 3 Hours' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'More Than 3 Hours up to 5 Hours' as shortdescription,'More Than 3 Hours up to 5 Hours' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'More Than 5 Hours' as shortdescription,'More Than 5 Hours' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- IBCVendor;
    v_descriptor := 'IBCVendor';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'IBCVENDORDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'100' as codevalue,'360Training.com' as shortdescription,'360Training.com' as description UNION 
             SELECT v_namespace AS namespace,'110' as codevalue,'Adobe' as shortdescription,'Adobe' as description UNION 
             SELECT v_namespace AS namespace,'120' as codevalue,'AdvanceOnline' as shortdescription,'AdvanceOnline' as description UNION 
             SELECT v_namespace AS namespace,'130' as codevalue,'Air Conditioning Contractors of America' as shortdescription,'Air Conditioning Contractors of America' as description UNION 
             SELECT v_namespace AS namespace,'140' as codevalue,'American Allied Health' as shortdescription,'American Allied Health' as description UNION 
             SELECT v_namespace AS namespace,'150' as codevalue,'American Council on Exercise' as shortdescription,'American Council on Exercise' as description UNION 
             SELECT v_namespace AS namespace,'160' as codevalue,'American Hotel and Lodging Association Educational Institute' as shortdescription,'American Hotel and Lodging Association Educational Institute' as description UNION 
             SELECT v_namespace AS namespace,'170' as codevalue,'American Medical Certification Association' as shortdescription,'American Medical Certification Association' as description UNION 
             SELECT v_namespace AS namespace,'180' as codevalue,'American Medical Technologists' as shortdescription,'American Medical Technologists' as description UNION 
             SELECT v_namespace AS namespace,'190' as codevalue,'American Society of Phlebotomy Technicians' as shortdescription,'American Society of Phlebotomy Technicians' as description UNION 
             SELECT v_namespace AS namespace,'200' as codevalue,'American Welding Society' as shortdescription,'American Welding Society' as description UNION 
             SELECT v_namespace AS namespace,'210' as codevalue,'AMP Testing Centers' as shortdescription,'AMP Testing Centers' as description UNION 
             SELECT v_namespace AS namespace,'220' as codevalue,'Apple Authorized Training Provider' as shortdescription,'Apple Authorized Training Provider' as description UNION 
             SELECT v_namespace AS namespace,'230' as codevalue,'Authorized OSHA Outreach Trainer' as shortdescription,'Authorized OSHA Outreach Trainer' as description UNION 
             SELECT v_namespace AS namespace,'240' as codevalue,'Automotive Service Excellence' as shortdescription,'Automotive Service Excellence' as description UNION 
             SELECT v_namespace AS namespace,'250' as codevalue,'Certiport' as shortdescription,'Certiport' as description UNION 
             SELECT v_namespace AS namespace,'260' as codevalue,'ClickSafety' as shortdescription,'ClickSafety' as description UNION 
             SELECT v_namespace AS namespace,'270' as codevalue,'COMIRA' as shortdescription,'COMIRA' as description UNION 
             SELECT v_namespace AS namespace,'280' as codevalue,'Dental Assistant National Board' as shortdescription,'Dental Assistant National Board' as description UNION 
             SELECT v_namespace AS namespace,'290' as codevalue,'ESCO Group' as shortdescription,'ESCO Group' as description UNION 
             SELECT v_namespace AS namespace,'300' as codevalue,'Independent Electrical Contractors Texas' as shortdescription,'Independent Electrical Contractors Texas' as description UNION 
             SELECT v_namespace AS namespace,'310' as codevalue,'International Academy of Emergency Dispatch' as shortdescription,'International Academy of Emergency Dispatch' as description UNION 
             SELECT v_namespace AS namespace,'320' as codevalue,'International Society of Certified Electronics Technicians' as shortdescription,'International Society of Certified Electronics Technicians' as description UNION 
             SELECT v_namespace AS namespace,'330' as codevalue,'Kryterion' as shortdescription,'Kryterion' as description UNION 
             SELECT v_namespace AS namespace,'340' as codevalue,'Mastercam' as shortdescription,'Mastercam' as description UNION 
             SELECT v_namespace AS namespace,'350' as codevalue,'National Academy of Sports Medicine' as shortdescription,'National Academy of Sports Medicine' as description UNION 
             SELECT v_namespace AS namespace,'360' as codevalue,'National Alliance for Insurance Education & Research' as shortdescription,'National Alliance for Insurance Education & Research' as description UNION 
             SELECT v_namespace AS namespace,'370' as codevalue,'National Association for Health Professionals' as shortdescription,'National Association for Health Professionals' as description UNION 
             SELECT v_namespace AS namespace,'380' as codevalue,'National Board for Certification of Orthopedic Technologists' as shortdescription,'National Board for Certification of Orthopedic Technologists' as description UNION 
             SELECT v_namespace AS namespace,'390' as codevalue,'National Center for Competency Testing' as shortdescription,'National Center for Competency Testing' as description UNION 
             SELECT v_namespace AS namespace,'400' as codevalue,'National Healthcareer Association' as shortdescription,'National Healthcareer Association' as description UNION 
             SELECT v_namespace AS namespace,'410' as codevalue,'National Restaurant Association' as shortdescription,'National Restaurant Association' as description UNION 
             SELECT v_namespace AS namespace,'420' as codevalue,'NCCER' as shortdescription,'NCCER' as description UNION 
             SELECT v_namespace AS namespace,'430' as codevalue,'NIMS' as shortdescription,'NIMS' as description UNION 
             SELECT v_namespace AS namespace,'440' as codevalue,'NOCTI' as shortdescription,'NOCTI' as description UNION 
             SELECT v_namespace AS namespace,'450' as codevalue,'PearsonVue' as shortdescription,'PearsonVue' as description UNION              
             SELECT v_namespace AS namespace,'470' as codevalue,'Project Management Institute' as shortdescription,'Project Management Institute' as description UNION 
             SELECT v_namespace AS namespace,'480' as codevalue,'Prometric' as shortdescription,'Prometric' as description UNION 
             SELECT v_namespace AS namespace,'490' as codevalue,'PSI Testing Services' as shortdescription,'PSI Testing Services' as description UNION 
             SELECT v_namespace AS namespace,'500' as codevalue,'PURE Safety' as shortdescription,'PURE Safety' as description UNION 
             SELECT v_namespace AS namespace,'510' as codevalue,'SOLIDWORKS' as shortdescription,'SOLIDWORKS' as description UNION 
             SELECT v_namespace AS namespace,'520' as codevalue,'Space TEC' as shortdescription,'Space TEC' as description UNION 
             SELECT v_namespace AS namespace,'530' as codevalue,'Summit Training Source' as shortdescription,'Summit Training Source' as description UNION 
             SELECT v_namespace AS namespace,'540' as codevalue,'Texas Cattle Feeders Association' as shortdescription,'Texas Cattle Feeders Association' as description UNION 
             SELECT v_namespace AS namespace,'550' as codevalue,'Texas Commission on Environmental Quality' as shortdescription,'Texas Commission on Environmental Quality' as description UNION 
             SELECT v_namespace AS namespace,'560' as codevalue,'Texas Commission on Environmental Quality approved testing center' as shortdescription,'Texas Commission on Environmental Quality approved testing center' as description UNION 
             SELECT v_namespace AS namespace,'570' as codevalue,'Texas Commission on Fire Protection' as shortdescription,'Texas Commission on Fire Protection' as description UNION 
             SELECT v_namespace AS namespace,'580' as codevalue,'Texas DPS Approved Level III or Level IV Training Center' as shortdescription,'Texas Department of Public Safety Approved Level III or Level IV Training Center' as description UNION 
             SELECT v_namespace AS namespace,'590' as codevalue,'Texas State Board of Dental Examiners' as shortdescription,'Texas State Board of Dental Examiners' as description UNION 
             SELECT v_namespace AS namespace,'600' as codevalue,'Texas State Board of Plumbing Examiners' as shortdescription,'Texas State Board of Plumbing Examiners' as description UNION 
             SELECT v_namespace AS namespace,'610' as codevalue,'Texas State Florists Association' as shortdescription,'Texas State Florists Association' as description UNION 
             SELECT v_namespace AS namespace,'620' as codevalue,'Texas Veterinary MedicalAssociation' as shortdescription,'Texas Veterinary MedicalAssociation' as description UNION 
             SELECT v_namespace AS namespace,'630' as codevalue,'University of South Florida Health' as shortdescription,'University of South Florida Health' as description UNION 
             SELECT v_namespace AS namespace,'640' as codevalue,'WD Certified' as shortdescription,'WD Certified' as description UNION 
             SELECT v_namespace AS namespace,'650' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- IncidentLocation;
    v_descriptor := 'IncidentLocation';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'INCIDENTLOCATIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'On Campus' as shortdescription,'On Campus' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Off Campus, but within 300 feet of campus property line' as shortdescription,'Off Campus, but within 300 feet of campus property line' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Off Campus, but at a school sponsored or school related activity' as shortdescription,'Off Campus, but at a school sponsored or school related activity' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Off Campus, > 300 ft from campus, not at school sponsored or related activ' as shortdescription,'Off Campus, and further than 300 feet from the campus boundary (Student was not in attendance at a school sponsored or school related activity).' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'On Campus another LEA, or at school sponsored/related activ of another LEA' as shortdescription,'On Campus of another school district, or while in attendance at a school sponsored or school related activity of another school district' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- LangAcqServicesProvided;
    v_descriptor := 'LangAcqServicesProvided';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'LANGACQSERVICESPROVIDEDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'Services not Provided' as shortdescription,'Services not Provided' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Direct' as shortdescription,'Direct' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Indirect' as shortdescription,'Indirect' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Language;
    v_descriptor := 'Language';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'LANGUAGEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Spanish' as shortdescription,'Spanish' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Vietnamese' as shortdescription,'Vietnamese' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Laotian (Lao)' as shortdescription,'Laotian (Lao)' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Cambodian (Khmer)' as shortdescription,'Cambodian (Khmer)' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Korean' as shortdescription,'Korean' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Japanese' as shortdescription,'Japanese' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'French' as shortdescription,'French' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'German' as shortdescription,'German' as description UNION 
             SELECT v_namespace AS namespace,'98' as codevalue,'English' as shortdescription,'English' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other Languages' as shortdescription,'Other Languages' as description UNION 
             SELECT v_namespace AS namespace,'1A' as codevalue,'Afrikaans (Taal)' as shortdescription,'Afrikaans (Taal)' as description UNION 
             SELECT v_namespace AS namespace,'1B' as codevalue,'Akan (Fante, Asante)' as shortdescription,'Akan (Fante, Asante)' as description UNION 
             SELECT v_namespace AS namespace,'1C' as codevalue,'Albanian, Gheg (Kossovo/Macedonia)' as shortdescription,'Albanian, Gheg (Kossovo/Macedonia)' as description UNION 
             SELECT v_namespace AS namespace,'1D' as codevalue,'Albanian, Tosk (Albania)' as shortdescription,'Albanian, Tosk (Albania)' as description UNION 
             SELECT v_namespace AS namespace,'1E' as codevalue,'Algonquin' as shortdescription,'Algonquin' as description UNION 
             SELECT v_namespace AS namespace,'1F' as codevalue,'Amharic' as shortdescription,'Amharic' as description UNION 
             SELECT v_namespace AS namespace,'1G' as codevalue,'Apache' as shortdescription,'Apache' as description UNION 
             SELECT v_namespace AS namespace,'1H' as codevalue,'Arabic' as shortdescription,'Arabic' as description UNION 
             SELECT v_namespace AS namespace,'1I' as codevalue,'Armenian' as shortdescription,'Armenian' as description UNION 
             SELECT v_namespace AS namespace,'1J' as codevalue,'Assyrian (Syriac, Aramaic)' as shortdescription,'Assyrian (Syriac, Aramaic)' as description UNION 
             SELECT v_namespace AS namespace,'1K' as codevalue,'Balinese' as shortdescription,'Balinese' as description UNION 
             SELECT v_namespace AS namespace,'1L' as codevalue,'Bengali' as shortdescription,'Bengali' as description UNION 
             SELECT v_namespace AS namespace,'1M' as codevalue,'Bosnian' as shortdescription,'Bosnian' as description UNION 
             SELECT v_namespace AS namespace,'1N' as codevalue,'Bulgarian' as shortdescription,'Bulgarian' as description UNION 
             SELECT v_namespace AS namespace,'1O' as codevalue,'Burmese' as shortdescription,'Burmese' as description UNION 
             SELECT v_namespace AS namespace,'1P' as codevalue,'Cantonese (Chinese)' as shortdescription,'Cantonese (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'1Q' as codevalue,'Cebuano (Visayan)' as shortdescription,'Cebuano (Visayan)' as description UNION 
             SELECT v_namespace AS namespace,'1R' as codevalue,'Chamorro' as shortdescription,'Chamorro' as description UNION 
             SELECT v_namespace AS namespace,'1S' as codevalue,'Chaochow/Teochiu (Chinese)' as shortdescription,'Chaochow/Teochiu (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'1T' as codevalue,'Cherokee' as shortdescription,'Cherokee' as description UNION 
             SELECT v_namespace AS namespace,'1U' as codevalue,'Chippewa/Ojibawa/Ottawa' as shortdescription,'Chippewa/Ojibawa/Ottawa' as description UNION 
             SELECT v_namespace AS namespace,'1V' as codevalue,'Choctaw' as shortdescription,'Choctaw' as description UNION 
             SELECT v_namespace AS namespace,'1W' as codevalue,'Comanche' as shortdescription,'Comanche' as description UNION 
             SELECT v_namespace AS namespace,'1X' as codevalue,'Coushatta' as shortdescription,'Coushatta' as description UNION 
             SELECT v_namespace AS namespace,'1Y' as codevalue,'Creek' as shortdescription,'Creek' as description UNION 
             SELECT v_namespace AS namespace,'1Z' as codevalue,'Croatian' as shortdescription,'Croatian' as description UNION 
             SELECT v_namespace AS namespace,'2A' as codevalue,'Crow' as shortdescription,'Crow' as description UNION 
             SELECT v_namespace AS namespace,'2B' as codevalue,'Czech' as shortdescription,'Czech' as description UNION 
             SELECT v_namespace AS namespace,'2C' as codevalue,'Danish' as shortdescription,'Danish' as description UNION 
             SELECT v_namespace AS namespace,'2D' as codevalue,'Dard' as shortdescription,'Dard' as description UNION 
             SELECT v_namespace AS namespace,'2E' as codevalue,'Dutch/Flemish' as shortdescription,'Dutch/Flemish' as description UNION 
             SELECT v_namespace AS namespace,'2F' as codevalue,'Efik' as shortdescription,'Efik' as description UNION 
             SELECT v_namespace AS namespace,'2G' as codevalue,'Eskimo' as shortdescription,'Eskimo' as description UNION 
             SELECT v_namespace AS namespace,'2H' as codevalue,'Estonian' as shortdescription,'Estonian' as description UNION 
             SELECT v_namespace AS namespace,'2I' as codevalue,'Ethiopic' as shortdescription,'Ethiopic' as description UNION 
             SELECT v_namespace AS namespace,'2J' as codevalue,'Ewe' as shortdescription,'Ewe' as description UNION 
             SELECT v_namespace AS namespace,'2K' as codevalue,'Farsi (Persian)' as shortdescription,'Farsi (Persian)' as description UNION 
             SELECT v_namespace AS namespace,'2L' as codevalue,'Finnish' as shortdescription,'Finnish' as description UNION 
             SELECT v_namespace AS namespace,'2M' as codevalue,'Fuklen/Hokklen (Chinese)' as shortdescription,'Fuklen/Hokklen (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'2N' as codevalue,'Gaelic (Irish)' as shortdescription,'Gaelic (Irish)' as description UNION 
             SELECT v_namespace AS namespace,'2O' as codevalue,'Gaelic (Scottish)' as shortdescription,'Gaelic (Scottish)' as description UNION 
             SELECT v_namespace AS namespace,'2P' as codevalue,'Greek' as shortdescription,'Greek' as description UNION 
             SELECT v_namespace AS namespace,'2Q' as codevalue,'Gujarati' as shortdescription,'Gujarati' as description UNION 
             SELECT v_namespace AS namespace,'2R' as codevalue,'Guyanese' as shortdescription,'Guyanese' as description UNION 
             SELECT v_namespace AS namespace,'2S' as codevalue,'Hainanese (Chinese)' as shortdescription,'Hainanese (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'2T' as codevalue,'Haitian-Creole' as shortdescription,'Haitian-Creole' as description UNION 
             SELECT v_namespace AS namespace,'2U' as codevalue,'Hakka (Chinese)' as shortdescription,'Hakka (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'2V' as codevalue,'Hausa' as shortdescription,'Hausa' as description UNION 
             SELECT v_namespace AS namespace,'2W' as codevalue,'Hebrew' as shortdescription,'Hebrew' as description UNION 
             SELECT v_namespace AS namespace,'2X' as codevalue,'Hindi' as shortdescription,'Hindi' as description UNION 
             SELECT v_namespace AS namespace,'2Y' as codevalue,'Hmong' as shortdescription,'Hmong' as description UNION 
             SELECT v_namespace AS namespace,'2Z' as codevalue,'Hopi' as shortdescription,'Hopi' as description UNION 
             SELECT v_namespace AS namespace,'3A' as codevalue,'Hungarian' as shortdescription,'Hungarian' as description UNION 
             SELECT v_namespace AS namespace,'3B' as codevalue,'Ibo/Igbo' as shortdescription,'Ibo/Igbo' as description UNION 
             SELECT v_namespace AS namespace,'3C' as codevalue,'Icelandic' as shortdescription,'Icelandic' as description UNION 
             SELECT v_namespace AS namespace,'3D' as codevalue,'Ilonggo (Hiligaynon)' as shortdescription,'Ilonggo (Hiligaynon)' as description UNION 
             SELECT v_namespace AS namespace,'3E' as codevalue,'Indonesian' as shortdescription,'Indonesian' as description UNION 
             SELECT v_namespace AS namespace,'3F' as codevalue,'Italian' as shortdescription,'Italian' as description UNION 
             SELECT v_namespace AS namespace,'3G' as codevalue,'Kache (Kaje, Jju)' as shortdescription,'Kache (Kaje, Jju)' as description UNION 
             SELECT v_namespace AS namespace,'3H' as codevalue,'Kannada (Kanarese)' as shortdescription,'Kannada (Kanarese)' as description UNION 
             SELECT v_namespace AS namespace,'3I' as codevalue,'Kanuri' as shortdescription,'Kanuri' as description UNION 
             SELECT v_namespace AS namespace,'3J' as codevalue,'Kashmiri' as shortdescription,'Kashmiri' as description UNION 
             SELECT v_namespace AS namespace,'3K' as codevalue,'Kickapoo' as shortdescription,'Kickapoo' as description UNION 
             SELECT v_namespace AS namespace,'3L' as codevalue,'Konkani' as shortdescription,'Konkani' as description UNION 
             SELECT v_namespace AS namespace,'3M' as codevalue,'Kpelle' as shortdescription,'Kpelle' as description UNION 
             SELECT v_namespace AS namespace,'3N' as codevalue,'Krio' as shortdescription,'Krio' as description UNION 
             SELECT v_namespace AS namespace,'3O' as codevalue,'Kurdish' as shortdescription,'Kurdish' as description UNION 
             SELECT v_namespace AS namespace,'3P' as codevalue,'Kwa' as shortdescription,'Kwa' as description UNION 
             SELECT v_namespace AS namespace,'3Q' as codevalue,'Latvian' as shortdescription,'Latvian' as description UNION 
             SELECT v_namespace AS namespace,'3R' as codevalue,'Lingala' as shortdescription,'Lingala' as description UNION 
             SELECT v_namespace AS namespace,'3S' as codevalue,'Lithuanian' as shortdescription,'Lithuanian' as description UNION 
             SELECT v_namespace AS namespace,'3T' as codevalue,'Luganda' as shortdescription,'Luganda' as description UNION 
             SELECT v_namespace AS namespace,'3U' as codevalue,'Lunda' as shortdescription,'Lunda' as description UNION 
             SELECT v_namespace AS namespace,'3V' as codevalue,'Luyia (Luhya)' as shortdescription,'Luyia (Luhya)' as description UNION 
             SELECT v_namespace AS namespace,'3W' as codevalue,'Macedonian' as shortdescription,'Macedonian' as description UNION 
             SELECT v_namespace AS namespace,'3X' as codevalue,'Malay' as shortdescription,'Malay' as description UNION 
             SELECT v_namespace AS namespace,'3Y' as codevalue,'Malayalam' as shortdescription,'Malayalam' as description UNION 
             SELECT v_namespace AS namespace,'3Z' as codevalue,'Maltese' as shortdescription,'Maltese' as description UNION 
             SELECT v_namespace AS namespace,'4A' as codevalue,'Mandarin (Chinese)' as shortdescription,'Mandarin (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'4B' as codevalue,'Mande' as shortdescription,'Mande' as description UNION 
             SELECT v_namespace AS namespace,'4C' as codevalue,'Marathi' as shortdescription,'Marathi' as description UNION 
             SELECT v_namespace AS namespace,'4D' as codevalue,'Menominee' as shortdescription,'Menominee' as description UNION 
             SELECT v_namespace AS namespace,'4E' as codevalue,'Mien (Yao)' as shortdescription,'Mien (Yao)' as description UNION 
             SELECT v_namespace AS namespace,'4F' as codevalue,'Navajo' as shortdescription,'Navajo' as description UNION 
             SELECT v_namespace AS namespace,'4G' as codevalue,'Nepali' as shortdescription,'Nepali' as description UNION 
             SELECT v_namespace AS namespace,'4H' as codevalue,'Norwegian' as shortdescription,'Norwegian' as description UNION 
             SELECT v_namespace AS namespace,'4I' as codevalue,'Okinawan' as shortdescription,'Okinawan' as description UNION 
             SELECT v_namespace AS namespace,'4J' as codevalue,'Oneida' as shortdescription,'Oneida' as description UNION 
             SELECT v_namespace AS namespace,'4K' as codevalue,'Oriya' as shortdescription,'Oriya' as description UNION 
             SELECT v_namespace AS namespace,'4L' as codevalue,'Orri (Oring)' as shortdescription,'Orri (Oring)' as description UNION 
             SELECT v_namespace AS namespace,'4M' as codevalue,'Pampangan' as shortdescription,'Pampangan' as description UNION 
             SELECT v_namespace AS namespace,'4N' as codevalue,'Panjabi (Punjabi)' as shortdescription,'Panjabi (Punjabi)' as description UNION 
             SELECT v_namespace AS namespace,'4O' as codevalue,'Pashto (Pushto)' as shortdescription,'Pashto (Pushto)' as description UNION 
             SELECT v_namespace AS namespace,'4P' as codevalue,'Pilipino (Tagalog)' as shortdescription,'Pilipino (Tagalog)' as description UNION 
             SELECT v_namespace AS namespace,'4Q' as codevalue,'Pima' as shortdescription,'Pima' as description UNION 
             SELECT v_namespace AS namespace,'4R' as codevalue,'Polish' as shortdescription,'Polish' as description UNION 
             SELECT v_namespace AS namespace,'4S' as codevalue,'Portuguese' as shortdescription,'Portuguese' as description UNION 
             SELECT v_namespace AS namespace,'4T' as codevalue,'Pueblo' as shortdescription,'Pueblo' as description UNION 
             SELECT v_namespace AS namespace,'4U' as codevalue,'Romanian' as shortdescription,'Romanian' as description UNION 
             SELECT v_namespace AS namespace,'4V' as codevalue,'Romany (Gypsy)' as shortdescription,'Romany (Gypsy)' as description UNION 
             SELECT v_namespace AS namespace,'4W' as codevalue,'Russian' as shortdescription,'Russian' as description UNION 
             SELECT v_namespace AS namespace,'4X' as codevalue,'Samoan' as shortdescription,'Samoan' as description UNION 
             SELECT v_namespace AS namespace,'4Y' as codevalue,'Serbian' as shortdescription,'Serbian' as description UNION 
             SELECT v_namespace AS namespace,'4Z' as codevalue,'Shanghai (Chinese)' as shortdescription,'Shanghai (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'5A' as codevalue,'Shona' as shortdescription,'Shona' as description UNION 
             SELECT v_namespace AS namespace,'5B' as codevalue,'Sikkimese' as shortdescription,'Sikkimese' as description UNION 
             SELECT v_namespace AS namespace,'5C' as codevalue,'Sindhi' as shortdescription,'Sindhi' as description UNION 
             SELECT v_namespace AS namespace,'5D' as codevalue,'Sinhalese (Sri Lanka)' as shortdescription,'Sinhalese (Sri Lanka)' as description UNION 
             SELECT v_namespace AS namespace,'5E' as codevalue,'Sioux (Dakota)' as shortdescription,'Sioux (Dakota)' as description UNION 
             SELECT v_namespace AS namespace,'5F' as codevalue,'Slavic' as shortdescription,'Slavic' as description UNION 
             SELECT v_namespace AS namespace,'5G' as codevalue,'Slovenian (Slovene)' as shortdescription,'Slovenian (Slovene)' as description UNION 
             SELECT v_namespace AS namespace,'5H' as codevalue,'Somali' as shortdescription,'Somali' as description UNION 
             SELECT v_namespace AS namespace,'5I' as codevalue,'Sotho' as shortdescription,'Sotho' as description UNION 
             SELECT v_namespace AS namespace,'5J' as codevalue,'Swahili' as shortdescription,'Swahili' as description UNION 
             SELECT v_namespace AS namespace,'5K' as codevalue,'Swedish' as shortdescription,'Swedish' as description UNION 
             SELECT v_namespace AS namespace,'5L' as codevalue,'Taiwanese/Formosan/Min Nan (Chinese)' as shortdescription,'Taiwanese/Formosan/Min Nan (Chinese)' as description UNION 
             SELECT v_namespace AS namespace,'5M' as codevalue,'Tamil' as shortdescription,'Tamil' as description UNION 
             SELECT v_namespace AS namespace,'5N' as codevalue,'Telugu (Telegu)' as shortdescription,'Telugu (Telegu)' as description UNION 
             SELECT v_namespace AS namespace,'5O' as codevalue,'Thai' as shortdescription,'Thai' as description UNION 
             SELECT v_namespace AS namespace,'5P' as codevalue,'Tibetan' as shortdescription,'Tibetan' as description UNION 
             SELECT v_namespace AS namespace,'5Q' as codevalue,'Tigrinya' as shortdescription,'Tigrinya' as description UNION 
             SELECT v_namespace AS namespace,'5R' as codevalue,'Tiwa' as shortdescription,'Tiwa' as description UNION 
             SELECT v_namespace AS namespace,'5S' as codevalue,'Tuluau' as shortdescription,'Tuluau' as description UNION 
             SELECT v_namespace AS namespace,'5T' as codevalue,'Turkish' as shortdescription,'Turkish' as description UNION 
             SELECT v_namespace AS namespace,'5U' as codevalue,'Ukrainian' as shortdescription,'Ukrainian' as description UNION 
             SELECT v_namespace AS namespace,'5V' as codevalue,'Urdu' as shortdescription,'Urdu' as description UNION 
             SELECT v_namespace AS namespace,'5W' as codevalue,'Welsh' as shortdescription,'Welsh' as description UNION 
             SELECT v_namespace AS namespace,'5X' as codevalue,'Winnebago' as shortdescription,'Winnebago' as description UNION 
             SELECT v_namespace AS namespace,'5Y' as codevalue,'Yiddish' as shortdescription,'Yiddish' as description UNION 
             SELECT v_namespace AS namespace,'5Z' as codevalue,'Yombe' as shortdescription,'Yombe' as description UNION 
             SELECT v_namespace AS namespace,'6A' as codevalue,'Yoruba' as shortdescription,'Yoruba' as description UNION 
             SELECT v_namespace AS namespace,'6B' as codevalue,'American Sign Language (ASL)' as shortdescription,'American Sign Language (ASL)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- LanguageInstructionProgramService;
    v_descriptor := 'LanguageInstructionProgramService';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'LANGUAGEINSTRUCTIONPROGRAMSERVICEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'042' as codevalue,'Transitional Bilingual/Early Exit' as shortdescription,'Transitional Bilingual/Early Exit:  A bilingual program model in which students identified as LEP/English learners (EL) are served in both English and another language and are prepared to meet reclassification criteria to be successful in English-only instruction not earlier than two or later than five years after the student enrolls in school. Instruction in this program is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061(b)(1), for the assigned grade level and content area.' as description UNION 
             SELECT v_namespace AS namespace,'043' as codevalue,'Transitional Bilingual/Late Exit' as shortdescription,'Transitional Bilingual/Late Exit: A bilingual program model in which students identified as LEP/English learners (EL) are served in both English and another language and are prepared to meet reclassification criteria to be successful in English-only instruction not earlier than six or later than seven years after the student enrolls in school. Instruction in this program is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061(b)(2), for the assigned grade level and content area.' as description UNION 
             SELECT v_namespace AS namespace,'044' as codevalue,'Dual Language Immersion/Two-Way' as shortdescription,'Dual Language Immersion/Two-Way: A bilingual/biliteracy program model in which students identified as LEP/English learners (EL) are integrated with students proficient in English and are served in both English and another language and are prepared to meet reclassification criteria in order to be successful in English-only instruction not earlier than six or later than seven years after the student enrolls in school. Instruction provided in a language other than English in this program model is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061, for the assigned grade level and content area. Instruction provided in English in this program model may be delivered either by a teacher appropriately certified in bilingual education or by a different teacher certified in ESL in accordance with TEC, §29.061, for the assigned grade level and content area.' as description UNION 
             SELECT v_namespace AS namespace,'045' as codevalue,'Dual Language Immersion/One-Way' as shortdescription,'Dual Language Immersion/One-Way: A bilingual/biliteracy program model in which students identified as LEP/English learners (EL) are served in both English and another language and are prepared to meet reclassification criteria in order to be successful in English-only instruction not earlier than six or later than seven years after the student enrolls in school. Instruction provided in a language other than English in this program model is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061. Instruction provided in English in this program model may be delivered either by a teacher appropriately certified in bilingual education or by a different teacher certified in ESL in accordance with TEC, §29.061.' as description UNION 
             SELECT v_namespace AS namespace,'046' as codevalue,'Alternative Bilingual Language Program' as shortdescription,'Alternative Bilingual Language Program: The LEA is implementing an alternative bilingual language program approved by the Texas Education Agency due to the submission of a bilingual education exception for the current school year, per 19 TAC §89.1207.' as description UNION 
             SELECT v_namespace AS namespace,'002' as codevalue,'English As a Second Language/Content-Based' as shortdescription,'English As a Second Language/Content-Based: An English acquisition program that serves students identified as LEP/English learners (EL) through English instruction by a teacher appropriately certified in ESL under TEC, §29.061(c), through English language arts and reading, mathematics, science, and social studies. The goal of content-based ESL is for English learners to attain full proficiency in English in order to participate equitably in school. This model targets English language development through academic content instruction that is linguistically and culturally responsive in English language arts and reading, mathematics, science, and social studies. English Proficient (EP) students may also participate in this program with parental permission, but they are not eligible for generating Bilingual Education Allotment (BEA) funds.' as description UNION 
             SELECT v_namespace AS namespace,'003' as codevalue,'English As A Second Language/Pull-Out' as shortdescription,'English As A Second Language/Pull-Out: An English acquisition program that serves students identified as LEP/English learners (EL) through English instruction provided by an appropriately certified ESL teacher under the TEC, §29.061(c), through English language arts and reading. The goal of ESL pull-out is for English learners to attain full proficiency in English in order to participate equitably in school. This model targets English language development through academic content instruction that is linguistically and culturally responsive in English language arts and reading. Instruction shall be provided by the ESL teacher in a pull-out or inclusionary delivery model. English proficient (EP) students may also participate in this program with parental permission, but they are not eligible for generating Bilingual Education Allotment (BEA) funds.' as description UNION 
             SELECT v_namespace AS namespace,'004' as codevalue,'Alternative ESL Language Program' as shortdescription,'Alternative ESL Language Program: The LEA is implementing an alternative ESL language program approved by the Texas Education Agency due to the submission of an ESL waiver for the current school year, per 19 TAC §89.1207.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- LanguageUse;
    v_descriptor := 'LanguageUse';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'LANGUAGEUSEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Home Language' as shortdescription,'Home Language' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Student Language' as shortdescription,'Student Language' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- LevelOfEducation;
    v_descriptor := 'LevelOfEducation';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'LEVELOFEDUCATIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'No Degree' as shortdescription,'No Degree (No Bachelor''s degree or higher)' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'Bachelor''s ' as shortdescription,'Bachelor''s' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Master''s' as shortdescription,'Master''s' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Doctorate' as shortdescription,'Doctorate' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- LocalEducationAgencyCategory;
    v_descriptor := 'LocalEducationAgencyCategory';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'LOCALEDUCATIONAGENCYCATEGORYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'School District' as shortdescription,'School District' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Charter' as shortdescription,'Charter' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- MilitaryConnectedStudent;
    v_descriptor := 'MilitaryConnectedStudent';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'MILITARYCONNECTEDSTUDENTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Not a military-connected student' as shortdescription,'Not a military-connected student' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'KG-12 Dependent Active Duty US Military' as shortdescription,'Student in grade KG - 12 is a dependent of an active duty member of the United States military' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'KG-12 Dependent Current Member of TX National Guard' as shortdescription,'Student in grade KG - 12 is a dependent of a current member of the Texas National Guard (Army, Air Guard, or State Guard)' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'KG-12 Dependent Current Member Reserve Force US Military' as shortdescription,'Student in grade KG - 12 is a dependent of a current member of a reserve force in the United States military' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'PK Dependent Active Duty US Military Or Reserve, Killed On Active Duty' as shortdescription,'Pre-kindergarten student is:
1) a dependent of an active duty member of the armed forces of the United States, including the state military forces or a reserve component of the armed forces, who is ordered to active duty by proper authority, or
2) is the child of a member of the armed forces of the United States, including the state military forces or a reserve component of the armed forces, who was injured or killed while serving on active duty.
Note: A student remains eligible for enrollment if the child''s parent leaves the armed forces or is no longer on active duty after the child begins a prekindergarten class.' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'KG-12 Dependent Former US Military, TX National Guard, Reserve US Military' as shortdescription,'Student in grade KG - 12 is a dependent of a former member of one of the following:
- the United States military
- the Texas National Guard (Army, Air Guard, or State Guard)
- a reserve force in the United States military' as description UNION 
             SELECT v_namespace AS namespace,'6' as codevalue,'KG-12 Dependent Military Or Reserve US Military Killed In Line Of Duty' as shortdescription,'Student in grade KG - 12 was a dependent of a member of a military or reserve force in the United States military who was killed in the line of duty' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- NonCampusBasedInstruction;
    v_descriptor := 'NonCampusBasedInstruction';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'NONCAMPUSBASEDINSTRUCTIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'College Campus Based Course' as shortdescription,'College Campus Based Course' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Electronic/Internet/Correspond/Video Conferencing Course (Not TxVSN)' as shortdescription,'Electronic/Internet/Correspondence Based/Video Conferencing Course (Not a TxVSN course)' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Non-District Teacher Providing Classroom Instruction Services' as shortdescription,'Non-District Teacher Providing Classroom Instruction Services' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'TxVSN Online Schools program (Formerly Electronic Course Program (eCP))' as shortdescription,'Texas Virtual School Network (TxVSN) Online Schools program (Formerly Electronic Course Program (eCP))' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Texas Virtual School Network (TxVSN) Statewide Online Course Catalog' as shortdescription,'Texas Virtual School Network (TxVSN) Statewide Online Course Catalog' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Non-Campus Teacher Providing Instruction at Another District Facility' as shortdescription,'Non-Campus Teacher Providing Instruction at Another District Facility' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Juvenile Justice Alternative Education Program (JJAEP) - TEC 37.011' as shortdescription,'Juvenile Justice Alternative Education Program (JJAEP) - TEC 37.011' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Credit by Exam' as shortdescription,'Credit by Exam' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Out of District DAEP Program' as shortdescription,'Out of District DAEP Program' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Non-District PE Sub Program (Limited to Service IDs PES00008 - PES00011)' as shortdescription,'Non-District PE Substitution Program (Limited to Service IDs PES00008 - PES00011)' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Optional Flex School Day Online Dropout Recovery Program - TEC 29.081 (e-2)' as shortdescription,'Optional Flexible School Day Online Dropout Recovery Program - TEC 29.081 (e-2)' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- NSLPType;
    v_descriptor := 'NSLPType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'NSLPTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'No, not participating in NSLP' as shortdescription,'No, not participating in NSLP' as description UNION
			 SELECT v_namespace AS namespace,'01' as codevalue,'Yes, participating in NSLP without Provision or CEP' as shortdescription,'Yes, participating in NSLP without using any Provisions or the Community Eligibility Provision (Including the Seamless Summer Option (SSO)).' as description UNION
			 SELECT v_namespace AS namespace,'02' as codevalue,'Yes, participating in NSLP under Provision 2' as shortdescription,'Yes, participating in NSLP under Provision 2 (Including the Seamless Summer Option (SSO)).' as description UNION
			 SELECT v_namespace AS namespace,'03' as codevalue,'Yes, participating in NSLP under CEP' as shortdescription,'Yes, participating in NSLP under the Community Eligibility Provision (Including the Seamless Summer Option (SSO)).' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- Object
    v_descriptor := 'Object';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'OBJECTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'3200' as codevalue,'Invested in Capital Assets, Net of Related Debt' as shortdescription,'Invested in Capital Assets, Net of Related Debt' as description UNION
				SELECT v_namespace AS namespace,'3410' as codevalue,'Non-Spendable - Inventories' as shortdescription,'Non-Spendable - Inventories' as description UNION
				SELECT v_namespace AS namespace,'3415' as codevalue,'Non-Spendable - Long-Term loans/notes Receivable' as shortdescription,'Non-Spendable - Long-Term loans/notes Receivable' as description UNION
				SELECT v_namespace AS namespace,'3425' as codevalue,'Non-Spendable - Endowment Principal' as shortdescription,'Non-Spendable - Endowment Principal' as description UNION
				SELECT v_namespace AS namespace,'3430' as codevalue,'Non-Spendable - Prepaid Items' as shortdescription,'Non-Spendable - Prepaid Items' as description UNION
				SELECT v_namespace AS namespace,'3445' as codevalue,'Non-Spendable - Other' as shortdescription,'Non-Spendable - Other' as description UNION
				SELECT v_namespace AS namespace,'3450' as codevalue,'Restricted for Federal/State Funds Grant Restrictions' as shortdescription,'Restricted for Federal/State Funds Grant Restrictions' as description UNION
				SELECT v_namespace AS namespace,'3460' as codevalue,'Restricted for Fund Balance of Consolidated School Districts' as shortdescription,'Restricted for Fund Balance of Consolidated School Districts' as description UNION
				SELECT v_namespace AS namespace,'3470' as codevalue,'Restricted for Capital Acquisitions and Contractual Obligations' as shortdescription,'Restricted for Capital Acquisitions and Contractual Obligations' as description UNION
				SELECT v_namespace AS namespace,'3480' as codevalue,'Restricted for Retirement of Long-Term Debt' as shortdescription,'Restricted for Retirement of Long-Term Debt' as description UNION
				SELECT v_namespace AS namespace,'3490' as codevalue,'Restricted - Other' as shortdescription,'Restricted - Other' as description UNION
				SELECT v_namespace AS namespace,'3510' as codevalue,'Committed Fund Balance-Construction' as shortdescription,'Committed Fund Balance-Construction' as description UNION
				SELECT v_namespace AS namespace,'3520' as codevalue,'Committed Fund Balance-Claims & Judgments' as shortdescription,'Committed Fund Balance-Claims & Judgments' as description UNION
				SELECT v_namespace AS namespace,'3525' as codevalue,'Committed Fund Balance-Retirement of Loans/Notes Payable' as shortdescription,'Committed Fund Balance-Retirement of Loans/Notes Payable' as description UNION
				SELECT v_namespace AS namespace,'3530' as codevalue,'Committed Fund Balance-Capital Expenditures for Equipment' as shortdescription,'Committed Fund Balance-Capital Expenditures for Equipment' as description UNION
				SELECT v_namespace AS namespace,'3540' as codevalue,'Committed Fund Balance-Self-Insurance' as shortdescription,'Committed Fund Balance-Self-Insurance' as description UNION
				SELECT v_namespace AS namespace,'3545' as codevalue,'Committed Fund Balance-Other' as shortdescription,'Committed Fund Balance-Other' as description UNION
				SELECT v_namespace AS namespace,'3550' as codevalue,'Assigned Fund Balance-Construction' as shortdescription,'Assigned Fund Balance-Construction' as description UNION
				SELECT v_namespace AS namespace,'3560' as codevalue,'Assigned Fund Balance-Claims & Judgments' as shortdescription,'Assigned Fund Balance-Claims & Judgments' as description UNION
				SELECT v_namespace AS namespace,'3565' as codevalue,'Assigned Fund Balance-Retirement of Loans/Notes Payable' as shortdescription,'Assigned Fund Balance-Retirement of Loans/Notes Payable' as description UNION
				SELECT v_namespace AS namespace,'3570' as codevalue,'Assigned Fund Balance-Capital Expenditures for Equipment' as shortdescription,'Assigned Fund Balance-Capital Expenditures for Equipment' as description UNION
				SELECT v_namespace AS namespace,'3580' as codevalue,'Assigned Fund Balance-Self-Insurance' as shortdescription,'Assigned Fund Balance-Self-Insurance' as description UNION
				SELECT v_namespace AS namespace,'3590' as codevalue,'Assigned Fund Balance-Other' as shortdescription,'Assigned Fund Balance-Other' as description UNION
				SELECT v_namespace AS namespace,'3600' as codevalue,'Unassigned Fund Balance' as shortdescription,'Unassigned Fund Balance' as description UNION
				SELECT v_namespace AS namespace,'3800' as codevalue,'Restricted Net Assets' as shortdescription,'Restricted Net Assets' as description UNION
				SELECT v_namespace AS namespace,'3900' as codevalue,'Unrestricted Net Assets' as shortdescription,'Unrestricted Net Assets' as description UNION
				SELECT v_namespace AS namespace,'5711' as codevalue,'Taxes, Current Year Levy' as shortdescription,'Taxes, Current Year Levy' as description UNION
				SELECT v_namespace AS namespace,'5712' as codevalue,'Taxes, Prior Years' as shortdescription,'Taxes, Prior Years' as description UNION
				SELECT v_namespace AS namespace,'5719' as codevalue,'Penalties, Interest And Other Tax Revenues' as shortdescription,'Penalties, Interest And Other Tax Revenues' as description UNION
				SELECT v_namespace AS namespace,'5721' as codevalue,'Local Revenues Resulting from Sale of WADA To Other School Districts' as shortdescription,'Local Revenues Resulting from Sale of Weighted Average Daily Attendance (WADA) To Other School Districts' as description UNION
				SELECT v_namespace AS namespace,'5722' as codevalue,'Shared Services Arrangements-Local Revenues From Member Districts' as shortdescription,'Shared Services Arrangements-Local Revenues From Member Districts' as description UNION
				SELECT v_namespace AS namespace,'5723' as codevalue,'Shared Services Arrangements-Local Revenues From Fiscal Agent' as shortdescription,'Shared Services Arrangements-Local Revenues From Fiscal Agent' as description UNION
				SELECT v_namespace AS namespace,'5729' as codevalue,'Local Revenues Resulting From Services Rendered To Other School Districts' as shortdescription,'Local Revenues Resulting From Services Rendered To Other School Districts' as description UNION
				SELECT v_namespace AS namespace,'5739' as codevalue,'Tuition and Fees From Local Sources' as shortdescription,'Tuition and Fees From Local Sources' as description UNION
				SELECT v_namespace AS namespace,'5741' as codevalue,'Earnings From Permanent Funds And Endowments' as shortdescription,'Earnings From Permanent Funds And Endowments' as description UNION
				SELECT v_namespace AS namespace,'5742' as codevalue,'Earnings From Temporary Deposits And Investments' as shortdescription,'Earnings From Temporary Deposits And Investments' as description UNION
				SELECT v_namespace AS namespace,'5743' as codevalue,'Rent' as shortdescription,'Rent' as description UNION
				SELECT v_namespace AS namespace,'5744' as codevalue,'Revenue From Foundations, Other Non-Profit Organization, Gifts And Bequests' as shortdescription,'Revenue From Foundations, Other Non-Profit Organizations, Gifts And Bequests' as description UNION
				SELECT v_namespace AS namespace,'5745' as codevalue,'Insurance Recovery' as shortdescription,'Insurance Recovery' as description UNION
				SELECT v_namespace AS namespace,'5746' as codevalue,'Property Taxes Collected For Tax Increment Fund' as shortdescription,'Property Taxes Collected For Tax Increment Fund' as description UNION
				SELECT v_namespace AS namespace,'5749' as codevalue,'Other Revenues From Local Sources' as shortdescription,'Other Revenues From Local Sources' as description UNION
				SELECT v_namespace AS namespace,'5751' as codevalue,'Food Service Activity' as shortdescription,'Food Service Activity' as description UNION
				SELECT v_namespace AS namespace,'5752' as codevalue,'Athletic Activities' as shortdescription,'Athletic Activities' as description UNION
				SELECT v_namespace AS namespace,'5753' as codevalue,'Extracurricular/Co-curricular Activities Other Than Athletics' as shortdescription,'Extracurricular/Co-curricular Activities Other Than Athletics' as description UNION
				SELECT v_namespace AS namespace,'5754' as codevalue,'Interfund Service Provided And Used Interfund Transactions' as shortdescription,'Interfund Service Provided And Used Interfund Transactions' as description UNION
				SELECT v_namespace AS namespace,'5755' as codevalue,'Enterprising Services Revenue' as shortdescription,'Enterprising Services Revenue' as description UNION
				SELECT v_namespace AS namespace,'5759' as codevalue,'Cocurricular, Enterprising Services Or Activities' as shortdescription,'Cocurricular, Enterprising Services Or Activities' as description UNION
				SELECT v_namespace AS namespace,'5769' as codevalue,'Miscellaneous Revenues From Intermediate Sources' as shortdescription,'Miscellaneous Revenues From Intermediate Sources' as description UNION
				SELECT v_namespace AS namespace,'5811' as codevalue,'Per Capita Apportionment' as shortdescription,'Per Capita Apportionment' as description UNION
				SELECT v_namespace AS namespace,'5812' as codevalue,'Foundation School Program Act Entitlements' as shortdescription,'Foundation School Program Act Entitlements' as description UNION
				SELECT v_namespace AS namespace,'5813' as codevalue,'Foundation School Program Act Incentive Aid' as shortdescription,'Foundation School Program Act Incentive Aid' as description UNION
				SELECT v_namespace AS namespace,'5819' as codevalue,'Other Foundation School Program Act Revenues' as shortdescription,'Other Foundation School Program Act Revenues' as description UNION
				SELECT v_namespace AS namespace,'5829' as codevalue,'State Program Revenues Distributed By Texas Education Agency' as shortdescription,'State Program Revenues Distributed By Texas Education Agency' as description UNION
				SELECT v_namespace AS namespace,'5831' as codevalue,'Teacher Retirement/TRS Care On-Behalf Payments' as shortdescription,'Teacher Retirement/TRS Care On-Behalf Payments' as description UNION
				SELECT v_namespace AS namespace,'5839' as codevalue,'State Revenues From State of Texas Government Agencies (Other than TEA)' as shortdescription,'State Revenues From State of Texas Government Agencies (Other than Texas Education Agency)' as description UNION
				SELECT v_namespace AS namespace,'5841' as codevalue,'Shared Services Arrangements-State Revenues From Member Districts' as shortdescription,'Shared Services Arrangements-State Revenues From Member Districts' as description UNION
				SELECT v_namespace AS namespace,'5842' as codevalue,'Shared Services Arrangements-State Revenues From Fiscal Agent' as shortdescription,'Shared Services Arrangements-State Revenues From Fiscal Agent' as description UNION
				SELECT v_namespace AS namespace,'5849' as codevalue,'Shared Services Arrangements-State Revenues' as shortdescription,'Shared Services Arrangements-State Revenues' as description UNION
				SELECT v_namespace AS namespace,'5919' as codevalue,'Fed Rev Distributed Through Gov Entities Other Than State Or Fed Agencies' as shortdescription,'Federal Revenues Distributed Through Government Entities Other Than State Or Federal Agencies' as description UNION
				SELECT v_namespace AS namespace,'5921' as codevalue,'School Breakfast Program' as shortdescription,'School Breakfast Program' as description UNION
				SELECT v_namespace AS namespace,'5922' as codevalue,'National School Lunch Program' as shortdescription,'National School Lunch Program' as description UNION
				SELECT v_namespace AS namespace,'5923' as codevalue,'United States Department Of Agriculture (USDA) Donated Commodities' as shortdescription,'United States Department Of Agriculture (USDA) Donated Commodities' as description UNION
				SELECT v_namespace AS namespace,'5929' as codevalue,'Federal Revenues Distributed By Texas Education Agency' as shortdescription,'Federal Revenues Distributed By Texas Education Agency' as description UNION
				SELECT v_namespace AS namespace,'5931' as codevalue,'School Health And Related Services (SHARS)' as shortdescription,'School Health And Related Services (SHARS)' as description UNION
				SELECT v_namespace AS namespace,'5932' as codevalue,'Medicaid Administrative Claiming Program-MAC' as shortdescription,'Medicaid Administrative Claiming Program-MAC' as description UNION
				SELECT v_namespace AS namespace,'5939' as codevalue,'Fed Rev Distributed By State Of Texas Government Agencies (Other than TEA)' as shortdescription,'Federal Revenues Distributed By State Of Texas Government Agencies (Other than TEA)' as description UNION
				SELECT v_namespace AS namespace,'5941' as codevalue,'Impact Aid' as shortdescription,'Impact Aid' as description UNION
				SELECT v_namespace AS namespace,'5949' as codevalue,'Federal Revenues Distributed Directly From The Federal Government' as shortdescription,'Federal Revenues Distributed Directly From The Federal Government' as description UNION
				SELECT v_namespace AS namespace,'5951' as codevalue,'Shared Services Arrangements-Federal Revenues From Member Districts' as shortdescription,'Shared Services Arrangements-Federal Revenues From Member Districts' as description UNION
				SELECT v_namespace AS namespace,'5952' as codevalue,'Shared Services Arrangements-Federal Revenues From Fiscal Agent' as shortdescription,'Shared Services Arrangements-Federal Revenues From Fiscal Agent' as description UNION
				SELECT v_namespace AS namespace,'5959' as codevalue,'Shared Services Arrangements-Federal Revenues' as shortdescription,'Shared Services Arrangements-Federal Revenues' as description UNION
				SELECT v_namespace AS namespace,'6100' as codevalue,'Payroll Costs' as shortdescription,'Payroll Costs' as description UNION
				SELECT v_namespace AS namespace,'6112' as codevalue,'Salaries Or Wages For Substitute Teachers And Other Professionals' as shortdescription,'Salaries Or Wages For Substitute Teachers And Other Professionals' as description UNION
				SELECT v_namespace AS namespace,'6119' as codevalue,'Salaries Or Wages-Teachers And Other Professional Personnel' as shortdescription,'Salaries Or Wages-Teachers And Other Professional Personnel' as description UNION
				SELECT v_namespace AS namespace,'6121' as codevalue,'Extra Duty Pay/Overtime-Support Personnel' as shortdescription,'Extra Duty Pay/Overtime-Support Personnel' as description UNION
				SELECT v_namespace AS namespace,'6122' as codevalue,'Salaries Or Wages For Substitute Support Personnel' as shortdescription,'Salaries Or Wages For Substitute Support Personnel' as description UNION
				SELECT v_namespace AS namespace,'6129' as codevalue,'Salaries Or Wages For Support Personnel' as shortdescription,'Salaries Or Wages For Support Personnel' as description UNION
				SELECT v_namespace AS namespace,'6131' as codevalue,'Contract Buyouts' as shortdescription,'Contract Buyouts' as description UNION
				SELECT v_namespace AS namespace,'6139' as codevalue,'Employee Allowances' as shortdescription,'Employee Allowances' as description UNION
				SELECT v_namespace AS namespace,'6141' as codevalue,'Social Security/Medicare' as shortdescription,'Social Security/Medicare' as description UNION
				SELECT v_namespace AS namespace,'6142' as codevalue,'Group Health and Life Insurance' as shortdescription,'Group Health and Life Insurance' as description UNION
				SELECT v_namespace AS namespace,'6143' as codevalue,'Workers’ Compensation' as shortdescription,'Workers’ Compensation' as description UNION
				SELECT v_namespace AS namespace,'6144' as codevalue,'Teacher Retirement/TRS Care - On-Behalf Payments' as shortdescription,'Teacher Retirement/TRS Care - On-Behalf Payments' as description UNION
				SELECT v_namespace AS namespace,'6145' as codevalue,'Unemployment Compensation' as shortdescription,'Unemployment Compensation' as description UNION
				SELECT v_namespace AS namespace,'6146' as codevalue,'Teacher Retirement/TRS Care' as shortdescription,'Teacher Retirement/TRS Care' as description UNION
				SELECT v_namespace AS namespace,'6149' as codevalue,'Employee Benefits' as shortdescription,'Employee Benefits' as description UNION
				SELECT v_namespace AS namespace,'6200' as codevalue,'Professional And Contracted Services' as shortdescription,'Professional And Contracted Services' as description UNION
				SELECT v_namespace AS namespace,'6211' as codevalue,'Legal Services' as shortdescription,'Legal Services' as description UNION
				SELECT v_namespace AS namespace,'6212' as codevalue,'Audit Services' as shortdescription,'Audit Services' as description UNION
				SELECT v_namespace AS namespace,'6213' as codevalue,'Tax Appraisal and Collection' as shortdescription,'Tax Appraisal and Collection' as description UNION
				SELECT v_namespace AS namespace,'6214' as codevalue,'Lobbying' as shortdescription,'Lobbying' as description UNION
				SELECT v_namespace AS namespace,'6219' as codevalue,'Professional Services' as shortdescription,'Professional Services' as description UNION
				SELECT v_namespace AS namespace,'6221' as codevalue,'Staff Tuition And Related Fees-Higher Education' as shortdescription,'Staff Tuition And Related Fees-Higher Education' as description UNION
				SELECT v_namespace AS namespace,'6222' as codevalue,'Student Tuition-Public Schools' as shortdescription,'Student Tuition-Public Schools' as description UNION
				SELECT v_namespace AS namespace,'6223' as codevalue,'Student Tuition-Other Than To Public Schools' as shortdescription,'Student Tuition-Other Than To Public Schools' as description UNION
				SELECT v_namespace AS namespace,'6224' as codevalue,'Student Attendance Credits' as shortdescription,'Student Attendance Credits' as description UNION
				SELECT v_namespace AS namespace,'6229' as codevalue,'Tuition And Transfer Payments' as shortdescription,'Tuition And Transfer Payments' as description UNION
				SELECT v_namespace AS namespace,'6239' as codevalue,'Education Service Center Services' as shortdescription,'Education Service Center Services' as description UNION
				SELECT v_namespace AS namespace,'6249' as codevalue,'Contracted Maintenance And Repair' as shortdescription,'Contracted Maintenance And Repair' as description UNION
				SELECT v_namespace AS namespace,'6259' as codevalue,'Utilities' as shortdescription,'Utilities' as description UNION
				SELECT v_namespace AS namespace,'6269' as codevalue,'Rentals-Operating Leases' as shortdescription,'Rentals-Operating Leases' as description UNION
				SELECT v_namespace AS namespace,'6291' as codevalue,'Consulting Services' as shortdescription,'Consulting Services' as description UNION
				SELECT v_namespace AS namespace,'6299' as codevalue,'Miscellaneous Contracted Services' as shortdescription,'Miscellaneous Contracted Services' as description UNION
				SELECT v_namespace AS namespace,'6300' as codevalue,'Supplies And Materials' as shortdescription,'Supplies And Materials' as description UNION
				SELECT v_namespace AS namespace,'6311' as codevalue,'Gasoline And Other Fuels For Vehicles (Including Buses)' as shortdescription,'Gasoline And Other Fuels For Vehicles (Including Buses)' as description UNION
				SELECT v_namespace AS namespace,'6319' as codevalue,'Supplies For Maintenance And/Or Operations' as shortdescription,'Supplies For Maintenance And/Or Operations' as description UNION
				SELECT v_namespace AS namespace,'6321' as codevalue,'Instructional Materials' as shortdescription,'Instructional Materials' as description UNION
				SELECT v_namespace AS namespace,'6329' as codevalue,'Reading Materials' as shortdescription,'Reading Materials' as description UNION
				SELECT v_namespace AS namespace,'6339' as codevalue,'Testing Materials' as shortdescription,'Testing Materials' as description UNION
				SELECT v_namespace AS namespace,'6341' as codevalue,'Food' as shortdescription,'Food' as description UNION
				SELECT v_namespace AS namespace,'6342' as codevalue,'Non-Food' as shortdescription,'Non-Food' as description UNION
				SELECT v_namespace AS namespace,'6343' as codevalue,'Items for Sale' as shortdescription,'Items for Sale' as description UNION
				SELECT v_namespace AS namespace,'6344' as codevalue,'USDA Donated Commodities' as shortdescription,'USDA Donated Commodities' as description UNION
				SELECT v_namespace AS namespace,'6349' as codevalue,'Food Service Supplies' as shortdescription,'Food Service Supplies' as description UNION
				SELECT v_namespace AS namespace,'6399' as codevalue,'General Supplies' as shortdescription,'General Supplies' as description UNION
				SELECT v_namespace AS namespace,'6400' as codevalue,'Other Operating Costs' as shortdescription,'Other Operating Costs' as description UNION
				SELECT v_namespace AS namespace,'6411' as codevalue,'Travel And Subsistence-Employee Only' as shortdescription,'Travel And Subsistence-Employee Only' as description UNION
				SELECT v_namespace AS namespace,'6412' as codevalue,'Travel And Subsistence-Students' as shortdescription,'Travel And Subsistence-Students' as description UNION
				SELECT v_namespace AS namespace,'6413' as codevalue,'Stipends-Non-Employees' as shortdescription,'Stipends-Non-Employees' as description UNION
				SELECT v_namespace AS namespace,'6419' as codevalue,'Travel And Subsistence-Non-Employees' as shortdescription,'Travel And Subsistence-Non-Employees' as description UNION
				SELECT v_namespace AS namespace,'6429' as codevalue,'Insurance And Bonding Costs' as shortdescription,'Insurance And Bonding Costs' as description UNION
				SELECT v_namespace AS namespace,'6439' as codevalue,'Election Costs' as shortdescription,'Election Costs' as description UNION
				SELECT v_namespace AS namespace,'6449' as codevalue,'Depreciation Expense' as shortdescription,'Depreciation Expense' as description UNION
				SELECT v_namespace AS namespace,'6491' as codevalue,'Statutorily Required Public Notices' as shortdescription,'Statutorily Required Public Notices' as description UNION
				SELECT v_namespace AS namespace,'6492' as codevalue,'Payments To Fiscal Agents Of Shared Services Arrangements' as shortdescription,'Payments To Fiscal Agents Of Shared Services Arrangements' as description UNION
				SELECT v_namespace AS namespace,'6493' as codevalue,'Payments To Member Districts Of Shared Services Arrangements' as shortdescription,'Payments To Member Districts Of Shared Services Arrangements' as description UNION
				SELECT v_namespace AS namespace,'6494' as codevalue,'Reclassified Transportation Expenditures/Expenses' as shortdescription,'Reclassified Transportation Expenditures/Expenses' as description UNION
				SELECT v_namespace AS namespace,'6495' as codevalue,'Dues' as shortdescription,'Dues' as description UNION
				SELECT v_namespace AS namespace,'6499' as codevalue,'Miscellaneous Operating Costs' as shortdescription,'Miscellaneous Operating Costs' as description UNION
				SELECT v_namespace AS namespace,'6500' as codevalue,'Debt Service' as shortdescription,'Debt Service' as description UNION
				SELECT v_namespace AS namespace,'6511' as codevalue,'Bond Principal' as shortdescription,'Bond Principal' as description UNION
				SELECT v_namespace AS namespace,'6512' as codevalue,'Capital Lease Principal' as shortdescription,'Capital Lease Principal' as description UNION
				SELECT v_namespace AS namespace,'6513' as codevalue,'Long-Term Debt Principal' as shortdescription,'Long-Term Debt Principal' as description UNION
				SELECT v_namespace AS namespace,'6519' as codevalue,'Debt Principal' as shortdescription,'Debt Principal' as description UNION
				SELECT v_namespace AS namespace,'6521' as codevalue,'Interest On Bonds' as shortdescription,'Interest On Bonds' as description UNION
				SELECT v_namespace AS namespace,'6522' as codevalue,'Capital Lease Interest' as shortdescription,'Capital Lease Interest' as description UNION
				SELECT v_namespace AS namespace,'6523' as codevalue,'Interest On Debt' as shortdescription,'Interest On Debt' as description UNION
				SELECT v_namespace AS namespace,'6524' as codevalue,'Amortization of Bonds And Other Debt Related Costs' as shortdescription,'Amortization of Bonds And Other Debt Related Costs' as description UNION
				SELECT v_namespace AS namespace,'6525' as codevalue,'Amortization of Premium And Discount On Issuance Of Bonds' as shortdescription,'Amortization of Premium And Discount On Issuance Of Bonds' as description UNION
				SELECT v_namespace AS namespace,'6529' as codevalue,'Interest Expenditures/Expenses' as shortdescription,'Interest Expenditures/Expenses' as description UNION
				SELECT v_namespace AS namespace,'6599' as codevalue,'Other Debt Service Fees' as shortdescription,'Other Debt Service Fees' as description UNION
				SELECT v_namespace AS namespace,'6600' as codevalue,'Capital Outlay - Land, Buildings, And Equipment' as shortdescription,'Capital Outlay - Land, Buildings, And Equipment' as description UNION
				SELECT v_namespace AS namespace,'6619' as codevalue,'Land Purchase And Improvement' as shortdescription,'Land Purchase And Improvement' as description UNION
				SELECT v_namespace AS namespace,'6629' as codevalue,'Building Purchase, Construction Or Improvements' as shortdescription,'Building Purchase, Construction Or Improvements' as description UNION
				SELECT v_namespace AS namespace,'6631' as codevalue,'Vehicles Per-Unit Cost Of $5,000 Or More' as shortdescription,'Vehicles Per-Unit Cost Of $5,000 Or More' as description UNION
				SELECT v_namespace AS namespace,'6639' as codevalue,'Furniture, Equipment, And Software' as shortdescription,'Furniture, Equipment, And Software' as description UNION
				SELECT v_namespace AS namespace,'6641' as codevalue,'Vehicles Per-Unit Cost Of Less Than $5,000' as shortdescription,'Vehicles Per-Unit Cost Of Less Than $5,000' as description UNION
				SELECT v_namespace AS namespace,'6649' as codevalue,'Fixed Assets-Other-Locally Defined Groupings' as shortdescription,'Fixed Assets-Other-Locally Defined Groupings' as description UNION
				SELECT v_namespace AS namespace,'6651' as codevalue,'Capital Lease Of Buildings' as shortdescription,'Capital Lease Of Buildings' as description UNION
				SELECT v_namespace AS namespace,'6659' as codevalue,'Capital Lease Of Furniture, Equipment, and Software' as shortdescription,'Capital Lease Of Furniture, Equipment, and Software' as description UNION
				SELECT v_namespace AS namespace,'6669' as codevalue,'Library Books And Media' as shortdescription,'Library Books And Media' as description UNION
				SELECT v_namespace AS namespace,'7911' as codevalue,'Issuance Of Bonds' as shortdescription,'Issuance Of Bonds' as description UNION
				SELECT v_namespace AS namespace,'7912' as codevalue,'Sale of Real And Personal Property' as shortdescription,'Sale of Real And Personal Property' as description UNION
				SELECT v_namespace AS namespace,'7913' as codevalue,'Proceeds From Capital Leases' as shortdescription,'Proceeds From Capital Leases' as description UNION
				SELECT v_namespace AS namespace,'7914' as codevalue,'Loan Proceeds-Gov Fund Types and Expendable Trust Funds Only (Non-Current)' as shortdescription,'Loan Proceeds-Governmental Fund Types and Expendable Trust Funds Only (Non-Current)' as description UNION
				SELECT v_namespace AS namespace,'7915' as codevalue,'Operating Transfers In' as shortdescription,'Operating Transfers In' as description UNION
				SELECT v_namespace AS namespace,'7916' as codevalue,'Premium Or Discount On Issuance Of Bonds' as shortdescription,'Premium Or Discount On Issuance Of Bonds' as description UNION
				SELECT v_namespace AS namespace,'7917' as codevalue,'Prepaid Interest' as shortdescription,'Prepaid Interest' as description UNION
				SELECT v_namespace AS namespace,'7918' as codevalue,'Special Items' as shortdescription,'Special Items' as description UNION
				SELECT v_namespace AS namespace,'7919' as codevalue,'Extraordinary Items' as shortdescription,'Extraordinary Items' as description UNION
				SELECT v_namespace AS namespace,'7949' as codevalue,'Other Resources' as shortdescription,'Other Resources' as description UNION
				SELECT v_namespace AS namespace,'7951' as codevalue,'Gain in Sale Of Real And Personal Property' as shortdescription,'Gain in Sale Of Real And Personal Property' as description UNION
				SELECT v_namespace AS namespace,'7952' as codevalue,'National School Breakfast Program' as shortdescription,'National School Breakfast Program' as description UNION
				SELECT v_namespace AS namespace,'7953' as codevalue,'National School Lunch Program' as shortdescription,'National School Lunch Program' as description UNION
				SELECT v_namespace AS namespace,'7954' as codevalue,'United States Department of Agriculture (USDA) Donated Commodities' as shortdescription,'United States Department of Agriculture (USDA) Donated Commodities' as description UNION
				SELECT v_namespace AS namespace,'7955' as codevalue,'Earnings From Temporary Deposits And Investments' as shortdescription,'Earnings From Temporary Deposits And Investments' as description UNION
				SELECT v_namespace AS namespace,'7956' as codevalue,'Insurance Recovery' as shortdescription,'Insurance Recovery' as description UNION
				SELECT v_namespace AS namespace,'7957' as codevalue,'Contributed Capital' as shortdescription,'Contributed Capital' as description UNION
				SELECT v_namespace AS namespace,'7959' as codevalue,'Other Gains (Charter School Only)' as shortdescription,'Other Gains (Charter School Only)' as description UNION
				SELECT v_namespace AS namespace,'7989' as codevalue,'Other Non-Operating Revenues' as shortdescription,'Other Non-Operating Revenues' as description UNION
				SELECT v_namespace AS namespace,'7999' as codevalue,'Net Assets Released from Temporary Restrictions (Charter School Only)' as shortdescription,'Net Assets Released from Temporary Restrictions (Charter School Only)' as description UNION
				SELECT v_namespace AS namespace,'8911' as codevalue,'Operating Transfers Out' as shortdescription,'Operating Transfers Out' as description UNION
				SELECT v_namespace AS namespace,'8912' as codevalue,'Special Items' as shortdescription,'Special Items' as description UNION
				SELECT v_namespace AS namespace,'8913' as codevalue,'Extraordinary Items' as shortdescription,'Extraordinary Items' as description UNION
				SELECT v_namespace AS namespace,'8949' as codevalue,'Other Uses' as shortdescription,'Other Uses' as description UNION
				SELECT v_namespace AS namespace,'8951' as codevalue,'Loss On Sale Of Real And Personal Property' as shortdescription,'Loss On Sale Of Real And Personal Property' as description UNION
				SELECT v_namespace AS namespace,'8989' as codevalue,'Non-Operating Expenses' as shortdescription,'Non-Operating Expenses' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ParentalPermission;
    v_descriptor := 'ParentalPermission';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PARENTALPERMISSIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
            SELECT v_namespace AS namespace,'3' as codevalue,'Parent or Guardian Requested Placement of non-EB in Bilingual Program' as shortdescription,'Parent or guardian has requested placement of anon-Emergent Bilingual (non-EB)/non-English learner (non-EL) student in the Bilingual program' as description UNION
			SELECT v_namespace AS namespace,'7' as codevalue,'Parent Or Guardian Did Not Respond' as shortdescription,'Parent Or Guardian Did Not Respond' as description UNION
			SELECT v_namespace AS namespace,'8' as codevalue,'Parent Or Guardian Was Not Contacted' as shortdescription,'Parent Or Guardian Was Not Contacted' as description UNION
			SELECT v_namespace AS namespace,'A' as codevalue,'Parent or Guardian Denied EB student in Bilingual Approved in ESL program' as shortdescription,'Parent or guardian has denied placement of a Emergent Bilingual (EB)/English learner (EL) student in the required Bilingual program, but has approved placement of an Emergent Bilingual (EB)/English learner (EL) student in the ESL program' as description UNION
			SELECT v_namespace AS namespace,'C' as codevalue,'Parent or Guardian Denied Placement of an EB in any Special Lang Program' as shortdescription,'Parent or guardian has denied placement of an Emergent Bilingual (EB)/English learner (EL) student in any and all special language programs (Bilingual program, ESL program)' as description UNION
			SELECT v_namespace AS namespace,'D' as codevalue,'Parent or Guardian Approved EB student in Bilingual Program' as shortdescription,'Parent or guardian has approved placement of an Emergent Bilingual (EB)/English learner (EL) student in the Bilingual program' as description UNION
			SELECT v_namespace AS namespace,'E' as codevalue,'Parent or Guardian Approved EB student in Bilingual, LEA Alt Lang Program' as shortdescription,'Parent or guardian has approved placement of an Emergent Bilingual (EB)/English learner (EL) student in the Bilingual program, but the LEA is implementing an alternative language program approved by the Texas Education Agency due to the LEAs submission of a Bilingual Education Exception for the current school year, per 19 TAC 89.1207' as description UNION
			SELECT v_namespace AS namespace,'G' as codevalue,'Parent or Guardian Placement Reclassified non-EB Bilingual or ESL Program' as shortdescription,'Parent or guardian has approved the placement of a reclassified non-Emergent Bilingual (non-EB)/non-English learner (non-EL) student in a Bilingual or ESL program' as description UNION
			SELECT v_namespace AS namespace,'H' as codevalue,'Parent or Guardian Requested Placement of non-EB in ESL Program' as shortdescription,'Parent or guardian has requested placement of a non-Emergent Bilingual (non-EB)/non-English learner (non-EL)student in the ESL program' as description UNION
			SELECT v_namespace AS namespace,'J' as codevalue,'Parent or Guardian Approved EB student in ESL, LEA Alternative Lang Program' as shortdescription,'Parent or guardian has approved the placement of an Emergent Bilingual (EB)/English learner (EL) student in the ESL program, but the LEA is implementing an alternative language program approved by the Texas Education Agency due to the LEAs submission of an ESL Waiver for the current school year, per 19 TAC 89.1207' as description UNION
			SELECT v_namespace AS namespace,'K' as codevalue,'Parent or Guardian Approved EB student in ESL Program' as shortdescription,'Parent or guardian has approved placement of an Emergent Bilingual (EB)/English learner (EL) student in the ESL program' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- PayrollActivity 
    v_descriptor := 'PayrollActivity';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PAYROLLACTIVITYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'02' as codevalue,'UIL Athletics' as shortdescription,'UIL Athletics' as description UNION
				SELECT v_namespace AS namespace,'05' as codevalue,'Band or Orchestra' as shortdescription,'Band or Orchestra' as description UNION
				SELECT v_namespace AS namespace,'13' as codevalue,'Non-UIL Athletics' as shortdescription,'Non-UIL Athletics' as description UNION
				SELECT v_namespace AS namespace,'14' as codevalue,'Tutorials' as shortdescription,'Tutorials' as description UNION
				SELECT v_namespace AS namespace,'15' as codevalue,'Bilingual/ESL Teacher Incentive (FSP only)' as shortdescription,'Bilingual/ESL Teacher Incentive (FSP only)' as description UNION
				SELECT v_namespace AS namespace,'16' as codevalue,'UIL Clubs/Activities' as shortdescription,'UIL Clubs/Activities' as description UNION
				SELECT v_namespace AS namespace,'17' as codevalue,'Non-UIL Clubs/Activities' as shortdescription,'Non-UIL Clubs/Activities' as description UNION
				SELECT v_namespace AS namespace,'78' as codevalue,'Non-Salary' as shortdescription,'Non-Salary' as description UNION
				SELECT v_namespace AS namespace,'79' as codevalue,'Other Supplemental Duties' as shortdescription,'Other Supplemental Duties' as description UNION
				SELECT v_namespace AS namespace,'80' as codevalue,'Base Salary' as shortdescription,'Base Salary' as description UNION
				SELECT v_namespace AS namespace,'00' as codevalue,'No Program' as shortdescription,'No Program' as description UNION
				SELECT v_namespace AS namespace,'11' as codevalue,'Basic Educational Services' as shortdescription,'Basic Educational Services' as description UNION
				SELECT v_namespace AS namespace,'21' as codevalue,'Gifted And Talented' as shortdescription,'Gifted And Talented' as description UNION
				SELECT v_namespace AS namespace,'22' as codevalue,'Career And Technical' as shortdescription,'Career And Technical' as description UNION
				SELECT v_namespace AS namespace,'23' as codevalue,'Services To Students With Disabilities (Special Education)' as shortdescription,'Services To Students With Disabilities (Special Education)' as description UNION
				SELECT v_namespace AS namespace,'24' as codevalue,'Accelerated Education' as shortdescription,'Accelerated Education' as description UNION
				SELECT v_namespace AS namespace,'25' as codevalue,'Bilingual Education And Special Language Programs' as shortdescription,'Bilingual Education And Special Language Programs' as description UNION
				SELECT v_namespace AS namespace,'26' as codevalue,'Non-disciplinary Alternative Education Programs-AEP Services' as shortdescription,'Non-disciplinary Alternative Education Programs-AEP Services' as description UNION
				SELECT v_namespace AS namespace,'28' as codevalue,'Disciplinary Alternative Education Programs-DAEP Basic Services' as shortdescription,'Disciplinary Alternative Education Programs-DAEP Basic Services' as description UNION
				SELECT v_namespace AS namespace,'29' as codevalue,'DAEP State Compensatory Education Supplemental Costs' as shortdescription,'Disciplinary Alternative Education Programs-DAEP State Compensatory Education Supplemental Costs' as description UNION
				SELECT v_namespace AS namespace,'30' as codevalue,'Title I, Pt A Activities St Comp Ed Costs Campus 40% Or More Edu Disad' as shortdescription,'Title I, Part A Schoolwide Activities Related to State Compensatory Education Costs On Campuses With 40% Or More Educationally Disadvantaged Students' as description UNION
				SELECT v_namespace AS namespace,'31' as codevalue,'High School Allotment' as shortdescription,'High School Allotment' as description UNION
				SELECT v_namespace AS namespace,'32' as codevalue,'Pre-Kindergarten' as shortdescription,'Pre-Kindergarten' as description UNION
				SELECT v_namespace AS namespace,'33' as codevalue,'Pre-Kindergarten - Special Education' as shortdescription,'Pre-Kindergarten - Special Education' as description UNION
				SELECT v_namespace AS namespace,'34' as codevalue,'Pre-Kindergarten - Compensatory Education' as shortdescription,'Pre-Kindergarten - Compensatory Education' as description UNION
				SELECT v_namespace AS namespace,'35' as codevalue,'Pre-Kindergarten - Bilingual Education' as shortdescription,'Pre-Kindergarten - Bilingual Education' as description UNION
				SELECT v_namespace AS namespace,'36' as codevalue,'Early Education Allotment' as shortdescription,'Early Education Allotment' as description UNION
				SELECT v_namespace AS namespace,'37' as codevalue,'Dyslexia or Related Disorder Services' as shortdescription,'Dyslexia or Related Disorder Services' as description UNION
				SELECT v_namespace AS namespace,'38' as codevalue,'College, Career, or Military Readiness' as shortdescription,'College, Career, or Military Readiness' as description UNION
				SELECT v_namespace AS namespace,'43' as codevalue,'Dyslexia - Special Education' as shortdescription,'Dyslexia - Special Education' as description UNION
				SELECT v_namespace AS namespace,'91' as codevalue,'Athletics And Related Activities' as shortdescription,'Athletics And Related Activities' as description UNION
				SELECT v_namespace AS namespace,'99' as codevalue,'Undistributed' as shortdescription,'Undistributed' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PKCurricula;
    v_descriptor := 'PKCurricula';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PKCURRICULADESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'The Texas DLM Early Childhood Express' as shortdescription,'The Texas DLM Early Childhood Express' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Opening the World of Learning: Texas Comprehensive Pre-K' as shortdescription,'Opening the World of Learning: Texas Comprehensive Pre-K' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Scholastic Big Day for PreK Texas Program' as shortdescription,'Scholastic Big Day for PreK Texas Program' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'HighScope Preschool Curriculum and Assessment' as shortdescription,'HighScope Preschool Curriculum and Assessment' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Frog Street Pre-K Texas System' as shortdescription,'Frog Street Pre-K Texas System' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Teaching Strategies System for Pre-K, Texas edition' as shortdescription,'Teaching Strategies System for Pre-K, Texas edition' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PKFundingSource;
    v_descriptor := 'PKFundingSource';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PKFUNDINGSOURCEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'1' as codevalue,'Tuition Fees' as shortdescription,'Tuition Fees' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Local District Share Funding' as shortdescription,'Local District Share Funding' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'State Grant Funding' as shortdescription,'State Grant Funding' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Federal Funding' as shortdescription,'Federal Funding' as description UNION 
             SELECT v_namespace AS namespace,'5' as codevalue,'Early Education Allotment' as shortdescription,'Early Education Allotment' as description UNION 
             SELECT v_namespace AS namespace,'9' as codevalue,'Other Funding' as shortdescription,'Other Funding' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PKProgramEvaluationType;
    v_descriptor := 'PKProgramEvaluationType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PKPROGRAMEVALUATIONTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'None' as shortdescription,'None' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'TEA Self-Assessment Tool' as shortdescription,'TEA Self-Assessment Tool' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PKProgramType;
    v_descriptor := 'PKProgramType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PKPROGRAMTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'PK Eligible At Least Two Hours Less Than Four Hours Each Day' as shortdescription,'Prekindergarten eligible student participates in a Prekindergarten program that provides instruction to the student at least two hours and less than four hours each day.' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'PK Eligible at Least Four Hours Each Day' as shortdescription,'Prekindergarten eligible student participates in the Prekindergarten program that provides instruction to the student at least four hours each day.' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'PK Eligible At Least Four Hours Each Day And Special Education Services' as shortdescription,'Prekindergarten eligible student participates in the Prekindergarten program that provides instruction to the student at least four hours each day and receives special education services.' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'PK Ineligible At Least Two Hours Less Than Four Hours Each Day' as shortdescription,'Prekindergarten ineligible student participates in a Prekindergarten program that provides instruction to the student at least two hours and less than four hours each day.' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'PK Ineligible At Least Four Hours Each Day' as shortdescription,'Prekindergarten ineligible student participates in the Prekindergarten program that provides instruction to the student at least four hours each day.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PKSchoolType;
    v_descriptor := 'PKSchoolType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PKSCHOOLTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Non-Public Pre-K Head Start' as shortdescription,'Non-Public Pre-K Head Start' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Public Pre-K' as shortdescription,'Public Pre-K' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Non-Public Pre-K Licensed Child Care' as shortdescription,'Non-Public Pre-K Licensed Child Care' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Public Pre-K Head Start' as shortdescription,'Public Pre-K Head Start' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Public Pre-K Licensed Child Care' as shortdescription,'Public Pre-K Licensed Child Care' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Non-Public Pre-K' as shortdescription,'Non-Public Pre-K' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'In-District Charter Partnership' as shortdescription,'In-District Charter Partnership' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PKStudentInstruction;
    v_descriptor := 'PKStudentInstruction';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PKSTUDENTINSTRUCTIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Full Day' as shortdescription,'Full Day' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Half Day - Morning' as shortdescription,'Half Day - Morning' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Half Day - Afternoon' as shortdescription,'Half Day - Afternoon' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PKTeacherRequirement;
    v_descriptor := 'PKTeacherRequirement';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PKTEACHERREQUIREMENTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Certification through AMI or MACTE' as shortdescription,'Certification offered through a training center accredited by Association Montessori Internationale or through the Montessori Accreditation Council for Teacher Education' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'At least 8 yrs exp teach in nat accredited child care program' as shortdescription,'At least eight years'' experience of teaching in a nationally accredited child care program' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'PK teacher in a school district specific PK professional dev has been met.' as shortdescription,'Be employed as a prekindergarten teacher in a school district that has ensured specific prekindergarten professional development has been met.' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'A graduate or undergraduate degree early child edu or early child SPED' as shortdescription,'A graduate or undergraduate degree in early childhood education or early childhood special education' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'A Child Development Associate (CDA) credential' as shortdescription,'A Child Development Associate (CDA) credential' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Documented completion of the TSR Comprehensive' as shortdescription,'Documented completion of the Texas School Ready Training Program (TSR Comprehensive)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PopulationServed;
    v_descriptor := 'PopulationServed';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'POPULATIONSERVEDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Regular Students' as shortdescription,'Regular Students:  Those students served through the regular academic program and students who do not constitute a special population' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Bilingual Students' as shortdescription,'Bilingual Students:  Those students served in Bilingual programs' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Compensatory/Remedial Education Students' as shortdescription,'Compensatory/Remedial Education Students:  Those students served in compensatory or remedial education programs' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Gifted and Talented Students' as shortdescription,'Gifted and Talented Students:  Those students served in programs for identified gifted and talented students' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Career and Technical Education Students' as shortdescription,'Career and Technical Education Students:  Those students served in an approved state career and technical education course' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Special Education Students' as shortdescription,'Special Education Students:  Those students served in special education programs as determined by the admission, review, and dismissal committee' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'ESL Students' as shortdescription,'ESL Students:  Those students served in English as a Second Language programs' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Adult Basic Education Students' as shortdescription,'Adult Basic Education Students:  Those students served in the Adult Basic Education program' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Honors Student' as shortdescription,'Honors Students: Those students served in Honors classes' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Migrant Students' as shortdescription,'Migrant Students:  Those students served in migrant programs' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PostSecondaryCertificationLicensure;
    v_descriptor := 'PostSecondaryCertificationLicensure';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'POSTSECONDARYCERTIFICATIONLICENSUREDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
      		SELECT v_namespace AS namespace,'010' as codevalue,'Adobe Certified Associate After Effects' as shortdescription,'Adobe Certified Associate After Effects' as description UNION
			SELECT v_namespace AS namespace,'011' as codevalue,'Adobe Certified Associate Animate' as shortdescription,'Adobe Certified Associate Animate' as description UNION
			SELECT v_namespace AS namespace,'012' as codevalue,'Adobe Certified Associate Creative Cloud' as shortdescription,'Adobe Certified Associate Creative Cloud' as description UNION
			SELECT v_namespace AS namespace,'013' as codevalue,'Adobe Certified Associate Creative Suite 6' as shortdescription,'Adobe Certified Associate Creative Suite 6' as description UNION
			SELECT v_namespace AS namespace,'014' as codevalue,'Adobe Certified Associate Flash' as shortdescription,'Adobe Certified Associate Flash' as description UNION
			SELECT v_namespace AS namespace,'015' as codevalue,'Adobe Certified Associate Illustrator' as shortdescription,'Adobe Certified Associate Illustrator' as description UNION
			SELECT v_namespace AS namespace,'016' as codevalue,'Adobe Certified Associate InDesign' as shortdescription,'Adobe Certified Associate InDesign' as description UNION
			SELECT v_namespace AS namespace,'017' as codevalue,'Adobe Certified Associate Photoshop' as shortdescription,'Adobe Certified Associate Photoshop' as description UNION
			SELECT v_namespace AS namespace,'018' as codevalue,'Adobe Certified Associate Premiere Pro' as shortdescription,'Adobe Certified Associate Premiere Pro' as description UNION
			SELECT v_namespace AS namespace,'019' as codevalue,'Adobe Certified Associate Visual Design Specialist' as shortdescription,'Adobe Certified Associate Visual Design Specialist' as description UNION
			SELECT v_namespace AS namespace,'020' as codevalue,'Adobe Certified Associate Web Design Specialist' as shortdescription,'Adobe Certified Associate Web Design Specialist' as description UNION
			SELECT v_namespace AS namespace,'030' as codevalue,'Adobe Certified Expert After Effects' as shortdescription,'Adobe Certified Expert After Effects' as description UNION
			SELECT v_namespace AS namespace,'031' as codevalue,'Adobe Certified Expert Illustrator' as shortdescription,'Adobe Certified Expert Illustrator' as description UNION
			SELECT v_namespace AS namespace,'032' as codevalue,'Adobe Certified Expert InDesign' as shortdescription,'Adobe Certified Expert InDesign' as description UNION
			SELECT v_namespace AS namespace,'033' as codevalue,'Adobe Certified Expert Photoshop' as shortdescription,'Adobe Certified Expert Photoshop' as description UNION
			SELECT v_namespace AS namespace,'034' as codevalue,'Adobe Certified Expert Web Premiere Pro' as shortdescription,'Adobe Certified Expert Web Premiere Pro' as description UNION
			SELECT v_namespace AS namespace,'040' as codevalue,'Aerospace Manufacturing' as shortdescription,'Aerospace Manufacturing' as description UNION
			SELECT v_namespace AS namespace,'100' as codevalue,'API 1104 Welding' as shortdescription,'API 1104 Welding' as description UNION
			SELECT v_namespace AS namespace,'101' as codevalue,'Apple App Development with Swift' as shortdescription,'Apple App Development with Swift' as description UNION
			SELECT v_namespace AS namespace,'102' as codevalue,'Apple Final Cut Pro X' as shortdescription,'Apple Final Cut Pro X' as description UNION
			SELECT v_namespace AS namespace,'103' as codevalue,'Apple iWork' as shortdescription,'Apple iWork' as description UNION
			SELECT v_namespace AS namespace,'104' as codevalue,'Apple Logic Pro X' as shortdescription,'Apple Logic Pro X' as description UNION
			SELECT v_namespace AS namespace,'120' as codevalue,'ASE Auto Transmission' as shortdescription,'ASE Auto Transmission' as description UNION
			SELECT v_namespace AS namespace,'121' as codevalue,'ASE Auto Transmission Entry Level' as shortdescription,'ASE Auto Transmission Entry Level' as description UNION
			SELECT v_namespace AS namespace,'130' as codevalue,'ASE Automobile Service Technology' as shortdescription,'ASE Automobile Service Technology' as description UNION
			SELECT v_namespace AS namespace,'131' as codevalue,'ASE Automobile Service Technology Entry Level' as shortdescription,'ASE Automobile Service Technology Entry Level' as description UNION
			SELECT v_namespace AS namespace,'140' as codevalue,'ASE Brakes' as shortdescription,'ASE Brakes' as description UNION
			SELECT v_namespace AS namespace,'141' as codevalue,'ASE Brakes Entry Level' as shortdescription,'ASE Brakes Entry Level' as description UNION
			SELECT v_namespace AS namespace,'150' as codevalue,'ASE Electrical/Electronic Systems' as shortdescription,'ASE Electrical/Electronic Systems' as description UNION
			SELECT v_namespace AS namespace,'151' as codevalue,'ASE Electrical/Electronic Systems Entry Level' as shortdescription,'ASE Electrical/Electronic Systems Entry Level' as description UNION
			SELECT v_namespace AS namespace,'160' as codevalue,'ASE Engine Performance' as shortdescription,'ASE Engine Performance' as description UNION
			SELECT v_namespace AS namespace,'161' as codevalue,'ASE Engine Performance Entry Level' as shortdescription,'ASE Engine Performance Entry Level' as description UNION
			SELECT v_namespace AS namespace,'170' as codevalue,'ASE Engine Repair' as shortdescription,'ASE Engine Repair' as description UNION
			SELECT v_namespace AS namespace,'171' as codevalue,'ASE Engine Repair Entry Level' as shortdescription,'ASE Engine Repair Entry Level' as description UNION
			SELECT v_namespace AS namespace,'181' as codevalue,'ASE Heating, Ventilation, AC (HVAC)' as shortdescription,'ASE Heating, Ventilation, AC (HVAC)' as description UNION
			SELECT v_namespace AS namespace,'182' as codevalue,'ASE Heating, Ventilation, AC (HVAC) Entry Level' as shortdescription,'ASE Heating, Ventilation, AC (HVAC) Entry Level' as description UNION
			SELECT v_namespace AS namespace,'190' as codevalue,'ASE Maintenance Light Repair' as shortdescription,'ASE Maintenance Light Repair' as description UNION
			SELECT v_namespace AS namespace,'191' as codevalue,'ASE Maintenance Light Repair Entry Level' as shortdescription,'ASE Maintenance Light Repair Entry Level' as description UNION
			SELECT v_namespace AS namespace,'200' as codevalue,'ASE Manual Drive Train' as shortdescription,'ASE Manual Drive Train' as description UNION
			SELECT v_namespace AS namespace,'201' as codevalue,'ASE Manual Drive Train Axles Entry Level' as shortdescription,'ASE Manual Drive Train Axles Entry Level' as description UNION
			SELECT v_namespace AS namespace,'210' as codevalue,'ASE Mech Elec Components' as shortdescription,'ASE Mech Elec Components' as description UNION
			SELECT v_namespace AS namespace,'211' as codevalue,'ASE Mech Elec Components Entry Level' as shortdescription,'ASE Mech Elec Components Entry Level' as description UNION
			SELECT v_namespace AS namespace,'220' as codevalue,'ASE Non-Structural Analysis Damage Repair' as shortdescription,'ASE Non-Structural Analysis Damage Repair' as description UNION
			SELECT v_namespace AS namespace,'221' as codevalue,'ASE Non-Structural Analysis Damage Repair Entry Level' as shortdescription,'ASE Non-Structural Analysis Damage Repair Entry Level' as description UNION
			SELECT v_namespace AS namespace,'230' as codevalue,'ASE Painting & Refinishing' as shortdescription,'ASE Painting & Refinishing' as description UNION
			SELECT v_namespace AS namespace,'231' as codevalue,'ASE Painting & Refinishing Entry Level' as shortdescription,'ASE Painting & Refinishing Entry Level' as description UNION
			SELECT v_namespace AS namespace,'240' as codevalue,'ASE Refrigerant Recovery and Recycling' as shortdescription,'ASE Refrigerant Recovery and Recycling' as description UNION
			SELECT v_namespace AS namespace,'250' as codevalue,'ASE Structural Analysis Damage Repair' as shortdescription,'ASE Structural Analysis Damage Repair' as description UNION
			SELECT v_namespace AS namespace,'251' as codevalue,'ASE Structural Analysis Damage Repair Entry Level' as shortdescription,'ASE Structural Analysis Damage Repair Entry Level' as description UNION
			SELECT v_namespace AS namespace,'260' as codevalue,'ASE Suspension and Steering' as shortdescription,'ASE Suspension and Steering' as description UNION
			SELECT v_namespace AS namespace,'261' as codevalue,'ASE Suspension and Steering Entry Level' as shortdescription,'ASE Suspension and Steering Entry Level' as description UNION
			SELECT v_namespace AS namespace,'270' as codevalue,'ASE Truck Technician Brakes' as shortdescription,'ASE Truck Technician Brakes' as description UNION
			SELECT v_namespace AS namespace,'271' as codevalue,'ASE Truck Technician Brakes Entry Level' as shortdescription,'ASE Truck Technician Brakes Entry Level' as description UNION
			SELECT v_namespace AS namespace,'280' as codevalue,'ASE Truck Technician Diesel Engines' as shortdescription,'ASE Truck Technician Diesel Engines' as description UNION
			SELECT v_namespace AS namespace,'281' as codevalue,'ASE Truck Technician Diesel Engines Entry Level' as shortdescription,'ASE Truck Technician Diesel Engines Entry Level' as description UNION
			SELECT v_namespace AS namespace,'290' as codevalue,'ASE Truck Technician Drive Trains' as shortdescription,'ASE Truck Technician Drive Trains' as description UNION
			SELECT v_namespace AS namespace,'300' as codevalue,'ASE Truck Technician Electronic Systems' as shortdescription,'ASE Truck Technician Electronic Systems' as description UNION
			SELECT v_namespace AS namespace,'301' as codevalue,'ASE Truck Technician Electronic Systems Entry Level' as shortdescription,'ASE Truck Technician Electronic Systems Entry Level' as description UNION
			SELECT v_namespace AS namespace,'310' as codevalue,'ASE Truck Technician HVAC' as shortdescription,'ASE Truck Technician HVAC' as description UNION
			SELECT v_namespace AS namespace,'320' as codevalue,'ASE Truck Technician Suspension Steering' as shortdescription,'ASE Truck Technician Suspension Steering' as description UNION
			SELECT v_namespace AS namespace,'321' as codevalue,'ASE Truck Technician Suspension Steering Entry Level' as shortdescription,'ASE Truck Technician Suspension Steering Entry Level' as description UNION
			SELECT v_namespace AS namespace,'330' as codevalue,'Associate of (ISC)' as shortdescription,'Associate of (ISC)' as description UNION
			SELECT v_namespace AS namespace,'331' as codevalue,'Autodesk Certified Professional or User AutoCAD' as shortdescription,'Autodesk Certified Professional or User AutoCAD' as description UNION
			SELECT v_namespace AS namespace,'332' as codevalue,'Autodesk Certified Professional or User AutoCAD Civil 3D' as shortdescription,'Autodesk Certified Professional or User AutoCAD Civil 3D' as description UNION
			SELECT v_namespace AS namespace,'333' as codevalue,'Autodesk Certified Professional or User Autodesk Revit Building Systems' as shortdescription,'Autodesk Certified Professional or User Autodesk Revit Building Systems' as description UNION
			SELECT v_namespace AS namespace,'334' as codevalue,'Autodesk Certified Professional or User Revit Architecture' as shortdescription,'Autodesk Certified Professional or User Revit Architecture' as description UNION
			SELECT v_namespace AS namespace,'335' as codevalue,'Autodesk Certified Professional or User Revit MEP Electrical' as shortdescription,'Autodesk Certified Professional or User Revit MEP Electrical' as description UNION
			SELECT v_namespace AS namespace,'336' as codevalue,'Autodesk Certified Professional or User Inventor' as shortdescription,'Autodesk Certified Professional or User Inventor' as description UNION
			SELECT v_namespace AS namespace,'340' as codevalue,'AWS D1.1 Structural Steel' as shortdescription,'AWS D1.1 Structural Steel' as description UNION
			SELECT v_namespace AS namespace,'350' as codevalue,'AWS D9.1 Sheet Metal Welding' as shortdescription,'AWS D9.1 Sheet Metal Welding' as description UNION
			SELECT v_namespace AS namespace,'351' as codevalue,'AWS Certified Welder' as shortdescription,'AWS Certified Welder' as description UNION
			SELECT v_namespace AS namespace,'360' as codevalue,'AWS SENSE Welding Level 1' as shortdescription,'AWS SENSE Welding Level 1' as description UNION
			SELECT v_namespace AS namespace,'361' as codevalue,'Barber Operator License' as shortdescription,'Barber Operator License' as description UNION
			SELECT v_namespace AS namespace,'362' as codevalue,'Basic Structure Fire Protection' as shortdescription,'Basic Structure Fire Protection' as description UNION
			SELECT v_namespace AS namespace,'365' as codevalue,'C++ Certified Associate Programmer' as shortdescription,'C++ Certified Associate Programmer' as description UNION
			SELECT v_namespace AS namespace,'366' as codevalue,'Certified Aerospace Technician' as shortdescription,'Certified Aerospace Technician' as description UNION
			SELECT v_namespace AS namespace,'367' as codevalue,'Certified Associate Project Management' as shortdescription,'Certified Associate Project Management' as description UNION
			SELECT v_namespace AS namespace,'368' as codevalue,'Certified Cardiographic Technician' as shortdescription,'Certified Cardiographic Technician' as description UNION
			SELECT v_namespace AS namespace,'369' as codevalue,'Certified Coding Associate' as shortdescription,'Certified Coding Associate' as description UNION
			SELECT v_namespace AS namespace,'370' as codevalue,'Certified Dental Assistant' as shortdescription,'Certified Dental Assistant' as description UNION
			SELECT v_namespace AS namespace,'380' as codevalue,'Certified EKG Technician' as shortdescription,'Certified EKG Technician' as description UNION
			SELECT v_namespace AS namespace,'381' as codevalue,'Certified Electronics Systems Associate' as shortdescription,'Certified Electronics Systems Associate' as description UNION
			SELECT v_namespace AS namespace,'382' as codevalue,'Certified Engineering Technician - Audio Systems' as shortdescription,'Certified Engineering Technician - Audio Systems' as description UNION
			SELECT v_namespace AS namespace,'383' as codevalue,'Certified Fundamentals Cook' as shortdescription,'Certified Fundamentals Cook' as description UNION
			SELECT v_namespace AS namespace,'384' as codevalue,'Certified Fundamentals Pastry Cook' as shortdescription,'Certified Fundamentals Pastry Cook' as description UNION
			SELECT v_namespace AS namespace,'385' as codevalue,'Certified Hospitality & Tourism Management' as shortdescription,'Certified Hospitality & Tourism Management' as description UNION
			SELECT v_namespace AS namespace,'386' as codevalue,'Certified Insurance Service Representative' as shortdescription,'Certified Insurance Service Representative' as description UNION
			SELECT v_namespace AS namespace,'390' as codevalue,'Certified Nurse Aide/Assistant' as shortdescription,'Certified Nurse Aide/Assistant' as description UNION
			SELECT v_namespace AS namespace,'391' as codevalue,'Certified Occupational Therapy Assistant' as shortdescription,'Certified Occupational Therapy Assistant' as description UNION
			SELECT v_namespace AS namespace,'392' as codevalue,'Certified Ophthalmic Technician' as shortdescription,'Certified Ophthalmic Technician' as description UNION
			SELECT v_namespace AS namespace,'401' as codevalue,'Certified Personal Trainer' as shortdescription,'Certified Personal Trainer' as description UNION
			SELECT v_namespace AS namespace,'402' as codevalue,'Certified Respiratory Therapist' as shortdescription,'Certified Respiratory Therapist' as description UNION
			SELECT v_namespace AS namespace,'410' as codevalue,'Certified SOLIDWORKS Associate - Academic' as shortdescription,'Certified SOLIDWORKS Associate - Academic' as description UNION
			SELECT v_namespace AS namespace,'411' as codevalue,'Certified Surgical Technologist' as shortdescription,'Certified Surgical Technologist' as description UNION
			SELECT v_namespace AS namespace,'420' as codevalue,'Certified Veterinary Assistant' as shortdescription,'Certified Veterinary Assistant' as description UNION
			SELECT v_namespace AS namespace,'430' as codevalue,'Child Development Associate' as shortdescription,'Child Development Associate' as description UNION
			SELECT v_namespace AS namespace,'439' as codevalue,'Cisco Certified Design Associate' as shortdescription,'Cisco Certified Design Associate' as description UNION
			SELECT v_namespace AS namespace,'440' as codevalue,'Cisco Certified Network Associate- Cloud (CCNA Cloud)' as shortdescription,'Cisco Certified Network Associate- Cloud (CCNA Cloud)' as description UNION
			SELECT v_namespace AS namespace,'450' as codevalue,'Cisco Certified Network Associate Security (CCNA Security)' as shortdescription,'Cisco Certified Network Associate Security (CCNA Security)' as description UNION
			SELECT v_namespace AS namespace,'451' as codevalue,'Cisco Certified Network Associate- Cyber Ops (CCNA Cyber Ops)' as shortdescription,'Cisco Certified Network Associate- Cyber Ops (CCNA Cyber Ops)' as description UNION
			SELECT v_namespace AS namespace,'452' as codevalue,'Cisco Certified Network Associate - Data Center (CCNA Data Center)' as shortdescription,'Cisco Certified Network Associate - Data Center (CCNA Data Center)' as description UNION
			SELECT v_namespace AS namespace,'453' as codevalue,'Cisco Certified Network Associate- Service Provider (CCNA SP)' as shortdescription,'Cisco Certified Network Associate- Service Provider (CCNA SP)' as description UNION
			SELECT v_namespace AS namespace,'460' as codevalue,'Cisco Certified Entry Networking Technician (CCENT)' as shortdescription,'Cisco Certified Entry Networking Technician (CCENT)' as description UNION
			SELECT v_namespace AS namespace,'470' as codevalue,'Clinical Medical Assistant' as shortdescription,'Clinical Medical Assistant' as description UNION
			SELECT v_namespace AS namespace,'478' as codevalue,'Commercial Non Commercial Pesticide Applicator' as shortdescription,'Commercial Non Commercial Pesticide Applicator' as description UNION
			SELECT v_namespace AS namespace,'479' as codevalue,'Community Health Worker' as shortdescription,'Community Health Worker' as description UNION
			SELECT v_namespace AS namespace,'480' as codevalue,'Comp TIA A Plus Certification' as shortdescription,'Comp TIA A Plus Certification' as description UNION
			SELECT v_namespace AS namespace,'481' as codevalue,'CompTIA IT Fundamentals' as shortdescription,'CompTIA IT Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'490' as codevalue,'Comp TIA Network' as shortdescription,'Comp TIA Network' as description UNION
			SELECT v_namespace AS namespace,'500' as codevalue,'CompTIA Security Plus' as shortdescription,'CompTIA Security Plus' as description UNION
			SELECT v_namespace AS namespace,'508' as codevalue,'Cosmetology Esthetician License' as shortdescription,'Cosmetology Esthetician License' as description UNION
			SELECT v_namespace AS namespace,'509' as codevalue,'Cosmetology Manicurist License' as shortdescription,'Cosmetology Manicurist License' as description UNION
			SELECT v_namespace AS namespace,'510' as codevalue,'Cosmetology Operator License' as shortdescription,'Cosmetology Operator License' as description UNION
			SELECT v_namespace AS namespace,'511' as codevalue,'Educational Aide I' as shortdescription,'Educational Aide I' as description UNION
			SELECT v_namespace AS namespace,'512' as codevalue,'Entrepreneurship and Small Business' as shortdescription,'Entrepreneurship and Small Business' as description UNION
			SELECT v_namespace AS namespace,'520' as codevalue,'Electrical Apprenticeship Certificate Level 1' as shortdescription,'Electrical Apprenticeship Certificate Level 1' as description UNION
			SELECT v_namespace AS namespace,'530' as codevalue,'Emergency Medical Technician' as shortdescription,'Emergency Medical Technician' as description UNION
			SELECT v_namespace AS namespace,'531' as codevalue,'ESRI ArcGIS Desktop Entry' as shortdescription,'ESRI ArcGIS Desktop Entry' as description UNION
			SELECT v_namespace AS namespace,'532' as codevalue,'FAA Aviation Maintenance Technician General' as shortdescription,'FAA Aviation Maintenance Technician General' as description UNION
			SELECT v_namespace AS namespace,'533' as codevalue,'FAA Aviation Maintenance Technician Airframe' as shortdescription,'FAA Aviation Maintenance Technician Airframe' as description UNION
			SELECT v_namespace AS namespace,'534' as codevalue,'FAA Part 107 Remote Drone Pilot' as shortdescription,'FAA Part 107 Remote Drone Pilot' as description UNION
			SELECT v_namespace AS namespace,'535' as codevalue,'FANUC Robot Operator 1' as shortdescription,'FANUC Robot Operator 1' as description UNION
			SELECT v_namespace AS namespace,'536' as codevalue,'Feedyard Technician in Cattle Care and Handling' as shortdescription,'Feedyard Technician in Cattle Care and Handling' as description UNION
			SELECT v_namespace AS namespace,'537' as codevalue,'Feedyard Technician in Machinery Operation, Repair and Maintenance' as shortdescription,'Feedyard Technician in Machinery Operation, Repair and Maintenance' as description UNION
			SELECT v_namespace AS namespace,'538' as codevalue,'Google Analytics Individual Qualification' as shortdescription,'Google Analytics Individual Qualification' as description UNION
			SELECT v_namespace AS namespace,'539' as codevalue,'Google Cloud Certified Professional - Cloud Architect' as shortdescription,'Google Cloud Certified Professional - Cloud Architect' as description UNION
			SELECT v_namespace AS namespace,'540' as codevalue,'ISCET Certified Electronics Technicians' as shortdescription,'ISCET Certified Electronics Technicians' as description UNION
			SELECT v_namespace AS namespace,'541' as codevalue,'Landscape Irrigation Technician' as shortdescription,'Landscape Irrigation Technician' as description UNION
			SELECT v_namespace AS namespace,'542' as codevalue,'Licensed Dental Hygienist' as shortdescription,'Licensed Dental Hygienist' as description UNION
			SELECT v_namespace AS namespace,'543' as codevalue,'Licensed Dietetic Technician' as shortdescription,'Licensed Dietetic Technician' as description UNION
			SELECT v_namespace AS namespace,'544' as codevalue,'Licensed Veterinarian Technician' as shortdescription,'Licensed Veterinarian Technician' as description UNION
			SELECT v_namespace AS namespace,'545' as codevalue,'Licensed Vocational Nurse' as shortdescription,'Licensed Vocational Nurse' as description UNION
			SELECT v_namespace AS namespace,'546' as codevalue,'Limited License Radiology Technologist' as shortdescription,'Limited License Radiology Technologist' as description UNION
			SELECT v_namespace AS namespace,'547' as codevalue,'Medical Coding and Billing Specialist' as shortdescription,'Medical Coding and Billing Specialist' as description UNION
			SELECT v_namespace AS namespace,'548' as codevalue,'ManageFirst Professional' as shortdescription,'ManageFirst Professional' as description UNION
			SELECT v_namespace AS namespace,'549' as codevalue,'Mastercam Associate Certification' as shortdescription,'Mastercam Associate Certification' as description UNION
			SELECT v_namespace AS namespace,'550' as codevalue,'Medical Laboratory Assistant' as shortdescription,'Medical Laboratory Assistant' as description UNION
			SELECT v_namespace AS namespace,'551' as codevalue,'Microsoft Office Specialist Excel' as shortdescription,'Microsoft Office Specialist Excel' as description UNION
			SELECT v_namespace AS namespace,'662' as codevalue,'Microsoft Office Specialist Word' as shortdescription,'Microsoft Office Specialist Word' as description UNION
			SELECT v_namespace AS namespace,'560' as codevalue,'Microsoft Office Expert - Excel' as shortdescription,'Microsoft Office Expert - Excel' as description UNION
			SELECT v_namespace AS namespace,'570' as codevalue,'Microsoft Office Expert - Word' as shortdescription,'Microsoft Office Expert - Word' as description UNION
			SELECT v_namespace AS namespace,'580' as codevalue,'Microsoft Office Specialist (MOS) Master-2016' as shortdescription,'Microsoft Office Specialist (MOS) Master-2016' as description UNION
			SELECT v_namespace AS namespace,'581' as codevalue,'Microsoft Office Specialist (MOS) Master-2013 (Track 1)' as shortdescription,'Microsoft Office Specialist (MOS) Master-2013 (Track 1)' as description UNION
			SELECT v_namespace AS namespace,'582' as codevalue,'Microsoft Office Specialist (MOS) Master-2013 (Track 2)' as shortdescription,'Microsoft Office Specialist (MOS) Master-2013 (Track 2)' as description UNION
			SELECT v_namespace AS namespace,'583' as codevalue,'Microsoft Office Specialist (MOS) Master-2013 (Track 3)' as shortdescription,'Microsoft Office Specialist (MOS) Master-2013 (Track 3)' as description UNION
			SELECT v_namespace AS namespace,'590' as codevalue,'Microsoft Technology Associate (MTA) Cloud Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Cloud Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'591' as codevalue,'Microsoft Technology Associate (MTA) Database Administration Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Database Administration Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'592' as codevalue,'Microsoft Technology Associate (MTA) HTML5 App Development Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) HTML5 App Development Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'593' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using HTML and CSS' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using HTML and CSS' as description UNION
			SELECT v_namespace AS namespace,'594' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using Java' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using Java' as description UNION
			SELECT v_namespace AS namespace,'595' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using JavaScript' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using JavaScript' as description UNION
			SELECT v_namespace AS namespace,'596' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using Python' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using Python' as description UNION
			SELECT v_namespace AS namespace,'597' as codevalue,'Microsoft Technology Associate (MTA) Mobility and Device Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Mobility and Device Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'598' as codevalue,'Microsoft Technology Associate (MTA) Networking Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Networking Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'599' as codevalue,'Microsoft Technology Associate (MTA) Security Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Security Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'600' as codevalue,'National Metal Working Skills Certification- ITM Basic Mechanical Systems' as shortdescription,'National Metal Working Skills Certification- ITM Basic Mechanical Systems' as description UNION
			SELECT v_namespace AS namespace,'601' as codevalue,'National Metal Working Skills Certification- ITM Basic Pneumatic Systems' as shortdescription,'National Metal Working Skills Certification- ITM Basic Pneumatic Systems' as description UNION
			SELECT v_namespace AS namespace,'602' as codevalue,'National Metal Working Skills Certification- ITM Electrical Systems' as shortdescription,'National Metal Working Skills Certification- ITM Electrical Systems' as description UNION
			SELECT v_namespace AS namespace,'603' as codevalue,'National Metal Working Skills Certification- ITM Electronic Control Systems' as shortdescription,'National Metal Working Skills Certification- ITM Electronic Control Systems' as description UNION
			SELECT v_namespace AS namespace,'604' as codevalue,'National Metal Working Skills Certification- ITM Maintenance Operations' as shortdescription,'National Metal Working Skills Certification- ITM Maintenance Operations' as description UNION
			SELECT v_namespace AS namespace,'605' as codevalue,'National Metal Working Skills Certification- ITM Maintenance Piping' as shortdescription,'National Metal Working Skills Certification- ITM Maintenance Piping' as description UNION
			SELECT v_namespace AS namespace,'606' as codevalue,'National Metal Working Skills Certification- ITM Maintenance Welding' as shortdescription,'National Metal Working Skills Certification- ITM Maintenance Welding' as description UNION
			SELECT v_namespace AS namespace,'607' as codevalue,'National Metal Working Skills Certification- ITM Process Control Systems' as shortdescription,'National Metal Working Skills Certification- ITM Process Control Systems' as description UNION
			SELECT v_namespace AS namespace,'610' as codevalue,'NCCER Carpentry Level I' as shortdescription,'NCCER Carpentry Level I' as description UNION
			SELECT v_namespace AS namespace,'611' as codevalue,'NCCER Carpentry Level II' as shortdescription,'NCCER Carpentry Level II' as description UNION
			SELECT v_namespace AS namespace,'612' as codevalue,'NCCER Commercial Carpenter' as shortdescription,'NCCER Commercial Carpenter' as description UNION
			SELECT v_namespace AS namespace,'613' as codevalue,'NCCER Construction Site Safety Technician' as shortdescription,'NCCER Construction Site Safety Technician' as description UNION
			SELECT v_namespace AS namespace,'620' as codevalue,'NCCER Construction Technology Certification Level I' as shortdescription,'NCCER Construction Technology Certification Level I' as description UNION
			SELECT v_namespace AS namespace,'630' as codevalue,'NCCER Core Level I' as shortdescription,'NCCER Core Level I' as description UNION
			SELECT v_namespace AS namespace,'640' as codevalue,'NCCER Electrical Level I' as shortdescription,'NCCER Electrical Level I' as description UNION
			SELECT v_namespace AS namespace,'641' as codevalue,'NCCER Electrical Level II' as shortdescription,'NCCER Electrical Level II' as description UNION
			SELECT v_namespace AS namespace,'642' as codevalue,'NCCER Commercial Electrician' as shortdescription,'NCCER Commercial Electrician' as description UNION
			SELECT v_namespace AS namespace,'650' as codevalue,'NCCER Electronic System Technician Level I' as shortdescription,'NCCER Electronic System Technician Level I' as description UNION
			SELECT v_namespace AS namespace,'651' as codevalue,'NCCER Electronic System Technician Level II' as shortdescription,'NCCER Electronic System Technician Level II' as description UNION
			SELECT v_namespace AS namespace,'660' as codevalue,'NCCER Heating Ventilation Air Conditioning Level I' as shortdescription,'NCCER Heating Ventilation Air Conditioning Level I' as description UNION
			SELECT v_namespace AS namespace,'670' as codevalue,'NCCER Industrial Maintenance Level I' as shortdescription,'NCCER Industrial Maintenance Level I' as description UNION
			SELECT v_namespace AS namespace,'680' as codevalue,'NCCER Instrumentation Level I' as shortdescription,'NCCER Instrumentation Level I' as description UNION
			SELECT v_namespace AS namespace,'690' as codevalue,'NCCER Masonry Level I' as shortdescription,'NCCER Masonry Level I' as description UNION
			SELECT v_namespace AS namespace,'691' as codevalue,'NCCER Masonry Level II' as shortdescription,'NCCER Masonry Level II' as description UNION
			SELECT v_namespace AS namespace,'700' as codevalue,'NCCER Millwright Level I' as shortdescription,'NCCER Millwright Level I' as description UNION
			SELECT v_namespace AS namespace,'701' as codevalue,'NCCER Millwright Level II' as shortdescription,'NCCER Millwright Level II' as description UNION
			SELECT v_namespace AS namespace,'710' as codevalue,'NCCER Painting Level I' as shortdescription,'NCCER Painting Level I' as description UNION
			SELECT v_namespace AS namespace,'720' as codevalue,'NCCER Pipefitting Level I' as shortdescription,'NCCER Pipefitting Level I' as description UNION
			SELECT v_namespace AS namespace,'730' as codevalue,'NCCER Plumbing Level I' as shortdescription,'NCCER Plumbing Level I' as description UNION
			SELECT v_namespace AS namespace,'731' as codevalue,'NCCER Plumbing Level II' as shortdescription,'NCCER Plumbing Level II' as description UNION
			SELECT v_namespace AS namespace,'740' as codevalue,'NCCER Sheet Metal Level I' as shortdescription,'NCCER Sheet Metal Level I' as description UNION
			SELECT v_namespace AS namespace,'750' as codevalue,'NCCER Weatherization Level I' as shortdescription,'NCCER Weatherization Level I' as description UNION
			SELECT v_namespace AS namespace,'760' as codevalue,'NCCER Welding Level I' as shortdescription,'NCCER Welding Level I' as description UNION
			SELECT v_namespace AS namespace,'761' as codevalue,'Non-Commissioned Security Officer Level II' as shortdescription,'Non-Commissioned Security Officer Level II' as description UNION
			SELECT v_namespace AS namespace,'770' as codevalue,'Oracle Certified Associate Java SE 8 Programmer' as shortdescription,'' as description UNION
			SELECT v_namespace AS namespace,'780' as codevalue,'Oracle Certified Database Associate' as shortdescription,'Oracle Certified Database Associate' as description UNION
			SELECT v_namespace AS namespace,'781' as codevalue,'Orthopedic Exercise Specialty Certification' as shortdescription,'Orthopedic Exercise Specialty Certification' as description UNION
			SELECT v_namespace AS namespace,'782' as codevalue,'Orthopedic Technologist' as shortdescription,'Orthopedic Technologist' as description UNION
			SELECT v_namespace AS namespace,'783' as codevalue,'OSHA 30 Hour Construction' as shortdescription,'OSHA 30 Hour Construction' as description UNION
			SELECT v_namespace AS namespace,'784' as codevalue,'OSHA 30 Hour General' as shortdescription,'OSHA 30 Hour General' as description UNION
			SELECT v_namespace AS namespace,'785' as codevalue,'OSHA Hazardous Waste Operations and Emergency Response' as shortdescription,'OSHA Hazardous Waste Operations and Emergency Response' as description UNION
			SELECT v_namespace AS namespace,'786' as codevalue,'Patient Care Technician' as shortdescription,'Patient Care Technician' as description UNION
			SELECT v_namespace AS namespace,'790' as codevalue,'Pharmacy Technician' as shortdescription,'Pharmacy Technician' as description UNION
			SELECT v_namespace AS namespace,'800' as codevalue,'Phlebotomy Technician' as shortdescription,'Phlebotomy Technician' as description UNION
			SELECT v_namespace AS namespace,'810' as codevalue,'QuickBooks Certified User' as shortdescription,'QuickBooks Certified User' as description UNION
			SELECT v_namespace AS namespace,'811' as codevalue,'ServSafe Manager' as shortdescription,'ServSafe Manager' as description UNION
			SELECT v_namespace AS namespace,'812' as codevalue,'Texas State Floral Association Floral Skills Knowledge Based' as shortdescription,'Texas State Floral Association Floral Skills Knowledge Based' as description UNION
			SELECT v_namespace AS namespace,'813' as codevalue,'Texas State Floral Association Level I' as shortdescription,'Texas State Floral Association Level I' as description UNION
			SELECT v_namespace AS namespace,'814' as codevalue,'Texas State Floral Association Level II' as shortdescription,'Texas State Floral Association Level II' as description UNION
			SELECT v_namespace AS namespace,'815' as codevalue,'Tradesman Plumber-Limited License' as shortdescription,'Tradesman Plumber-Limited License' as description UNION
			SELECT v_namespace AS namespace,'816' as codevalue,'Unity Certified Programmer' as shortdescription,'Unity Certified Programmer' as description UNION
			SELECT v_namespace AS namespace,'820' as codevalue,'Wastewater Collections' as shortdescription,'Wastewater Collections' as description UNION
			SELECT v_namespace AS namespace,'830' as codevalue,'Water Operators' as shortdescription,'Water Operators' as description UNION
			SELECT v_namespace AS namespace,'831' as codevalue,'WD Certified Web Design' as shortdescription,'WD Certified Web Design' as description UNION
			SELECT v_namespace AS namespace,'833' as codevalue,'IAED Emergency Telecommunicator' as shortdescription,'IAED Emergency Telecommunicator' as description UNION
			SELECT v_namespace AS namespace,'834' as codevalue,'ISA Certified Control Systems Technician' as shortdescription,'ISA Certified Control Systems Technician' as description UNION
			SELECT v_namespace AS namespace,'835' as codevalue,'Mastercam Associate Certification Mill Design and Toolpaths' as shortdescription,'Mastercam Associate Certification Mill Design and Toolpaths' as description UNION
			SELECT v_namespace AS namespace,'836' as codevalue,'Mastercam Certified Professional Mill Level 1' as shortdescription,'Mastercam Certified Professional Mill Level 1' as description UNION
			SELECT v_namespace AS namespace,'837' as codevalue,'Mastercam Professional Level Certification' as shortdescription,'Mastercam Professional Level Certification' as description UNION
			SELECT v_namespace AS namespace,'838' as codevalue,'Microsoft Technology Associate (MTA) Software Development Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Software Development Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'839' as codevalue,'Microsoft Technology Associate (MTA) Windows Operating System Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Windows Operating System Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'840' as codevalue,'Microsoft Tech Associate (MTA) Windows Server Administration Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Windows Server Administration Fundamentals' as description UNION
			SELECT v_namespace AS namespace,'841' as codevalue,'MSSC Certified Logistics Technician (CLT)' as shortdescription,'MSSC Certified Logistics Technician (CLT)' as description UNION
			SELECT v_namespace AS namespace,'842' as codevalue,'MSSC Certified Production Technician (CPT)' as shortdescription,'MSSC Certified Production Technician (CPT)' as description UNION
			SELECT v_namespace AS namespace,'843' as codevalue,'National Metal Working Skills Machining CNC Milling Operations' as shortdescription,'National Metal Working Skills Machining CNC Milling Operations' as description UNION
			SELECT v_namespace AS namespace,'844' as codevalue,'National Metal Working Skills Machining CNC Milling Programming Set Up' as shortdescription,'National Metal Working Skills Machining CNC Milling Programming Set Up' as description UNION
			SELECT v_namespace AS namespace,'845' as codevalue,'National Metal Working Skills Machining CNC Turning Operations' as shortdescription,'National Metal Working Skills Machining CNC Turning Operations' as description UNION
			SELECT v_namespace AS namespace,'846' as codevalue,'National Metal Working Skills Machining CNC Turning Programming Set Up' as shortdescription,'National Metal Working Skills Machining CNC Turning Programming Set Up' as description UNION
			SELECT v_namespace AS namespace,'847' as codevalue,'National Metal Working Skills Machining Drill Press Skills 1' as shortdescription,'National Metal Working Skills Machining Drill Press Skills 1' as description UNION
			SELECT v_namespace AS namespace,'848' as codevalue,'National Metal Working Skills Machining Grinding Skills 1' as shortdescription,'National Metal Working Skills Machining Grinding Skills 1' as description UNION
			SELECT v_namespace AS namespace,'849' as codevalue,'National Metal Working Skills Machining Manual Milling Skills 1' as shortdescription,'National Metal Working Skills Machining Manual Milling Skills 1' as description UNION
			SELECT v_namespace AS namespace,'850' as codevalue,'National Metal Working Skills Machining Measurement, Material, Safety' as shortdescription,'National Metal Working Skills Machining Measurement, Material, Safety' as description UNION
			SELECT v_namespace AS namespace,'860' as codevalue,'Real Estate Sales Agent License' as shortdescription,'Real Estate Sales Agent License' as description UNION
			SELECT v_namespace AS namespace,'870' as codevalue,'Refrigerant Handling (EPA 608)' as shortdescription,'Refrigerant Handling (EPA 608)' as description UNION
			SELECT v_namespace AS namespace,'880' as codevalue,'Registered Dental Assistant' as shortdescription,'Registered Dental Assistant' as description UNION
			SELECT v_namespace AS namespace,'890' as codevalue,'Registered Diagnostic Medical Sonographer - Abdomen' as shortdescription,'Registered Diagnostic Medical Sonographer - Abdomen' as description UNION
			SELECT v_namespace AS namespace,'891' as codevalue,'Registered Diagnostic Medical Sonographer - Obstetrics and Gynecology' as shortdescription,'Registered Diagnostic Medical Sonographer - Obstetrics and Gynecology' as description UNION
			SELECT v_namespace AS namespace,'900' as codevalue,'Registered Nurse' as shortdescription,'Registered Nurse' as description UNION
			SELECT v_namespace AS namespace,'910' as codevalue,'Registered Technologist - Cardiac-Interventional Radiography' as shortdescription,'Registered Technologist - Cardiac-Interventional Radiography' as description UNION
			SELECT v_namespace AS namespace,'911' as codevalue,'Registered Technologist - Computed Tomography' as shortdescription,'Registered Technologist - Computed Tomography' as description UNION
			SELECT v_namespace AS namespace,'912' as codevalue,'Registered Technologist - Magnetic Resonance Imaging' as shortdescription,'Registered Technologist - Magnetic Resonance Imaging' as description UNION
			SELECT v_namespace AS namespace,'913' as codevalue,'Registered Technologist - Mammography' as shortdescription,'Registered Technologist - Mammography' as description UNION
			SELECT v_namespace AS namespace,'914' as codevalue,'Registered Technologist - Nuclear Medicine Technology' as shortdescription,'Registered Technologist - Nuclear Medicine Technology' as description UNION
			SELECT v_namespace AS namespace,'915' as codevalue,'Registered Technologist - Radiography' as shortdescription,'Registered Technologist - Radiography' as description UNION
			SELECT v_namespace AS namespace,'916' as codevalue,'Registered Technologist - Sonography' as shortdescription,'Registered Technologist - Sonography' as description UNION
			SELECT v_namespace AS namespace,'917' as codevalue,'Registered Technologist - Vascular Sonography' as shortdescription,'Registered Technologist - Vascular Sonography' as description UNION
			SELECT v_namespace AS namespace,'918' as codevalue,'Registered Technologist - Vascular-Interventional Radiography' as shortdescription,'Registered Technologist - Vascular-Interventional Radiography' as description UNION
			SELECT v_namespace AS namespace,'930' as codevalue,'Registered Vascular Technology' as shortdescription,'Registered Vascular Technology' as description UNION
			SELECT v_namespace AS namespace,'931' as codevalue,'Medical Laboratory Technician' as shortdescription,'Medical Laboratory Technician' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PPCDServiceLocation;
    v_descriptor := 'PPCDServiceLocation';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PPCDSERVICELOCATIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Not applicable to this student ' as shortdescription,'Not applicable to this student (i.e. students who do not meet PPCD reporting requirement).' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'PPCD EC Prog 10 Hrs Per Week and Majority of SPED Svcs in Reg EC Prog.' as shortdescription,'(A1) PPCD child participates in a regular early childhood program at least 10 hours per week and receives the majority of his/her special education services in the regular early childhood education program. The program is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities which includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)),
The location of the program may include but is not limited to:
(a) Community-Based Preschool (3- Through 5-Year-Olds);
(b) District or Community Child Care Programs;
(c) Head Start Programs;
(d) Kindergarten Programs;
(e) Prekindergarten Programs; or
(f) School-Based Preschool, Staff and/or Community Access (3- Through 5-Year-Olds).' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'PPCD SPED Prog Majority Svcs in Class With 50 percent of disabled children.' as shortdescription,'(C1, C2, C3) PPCD child participates in a special education program and receives the majority of his/her special education services in a program that is specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of disabled children (i.e., children with an individualized education program (IEP)).' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'PPCD EC Less Than 10 Hrs Per Week and Majority of SPED Svcs in Reg EC Prog.' as shortdescription,'(B1) PPCD child participates in a regular early childhood program less than 10 hours per week, and receives the majority of his/her special education services in the regular early childhood education program. The program is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities which includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)),
The location of the program may include but is not limited to:
(a) Community-Based Preschool (3- Through 5-Year-Olds);
(b) District or Community Child Care Programs;
(c) Head Start Programs;
(d) Kindergarten Programs;
(e) Prekindergarten Programs; or
(f) School-Based Preschool, Staff and/or Community Access (3- Through 5-Year-Olds).' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- PreferredHomeCommunicationMethod;
    v_descriptor := 'PreferredHomeCommunicationMethod';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PREFERREDHOMECOMMUNICATIONMETHODDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Visual' as shortdescription,'Visual' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Auditory' as shortdescription,'Auditory' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Tactile' as shortdescription,'Tactile' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Multiple or Total' as shortdescription,'Multiple or Total' as description UNION 
             SELECT v_namespace AS namespace,'98' as codevalue,'Parent or Guardian did not Respond' as shortdescription,'Parent or Guardian did not Respond' as description UNION 
             SELECT v_namespace AS namespace,'99' as codevalue,'Parent or Guardian was not able to be Reached' as shortdescription,'Parent or Guardian was not able to be Reached' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- ProgramIntent 
    v_descriptor := 'ProgramIntent';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PROGRAMINTENTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'00' as codevalue,'No Program' as shortdescription,'No Program' as description UNION
				SELECT v_namespace AS namespace,'11' as codevalue,'Basic Educational Services' as shortdescription,'Basic Educational Services' as description UNION
				SELECT v_namespace AS namespace,'21' as codevalue,'Gifted And Talented' as shortdescription,'Gifted And Talented' as description UNION
				SELECT v_namespace AS namespace,'22' as codevalue,'Career And Technical' as shortdescription,'Career And Technical' as description UNION
				SELECT v_namespace AS namespace,'23' as codevalue,'Services To Students With Disabilities (Special Education)' as shortdescription,'Services To Students With Disabilities (Special Education)' as description UNION
				SELECT v_namespace AS namespace,'24' as codevalue,'Accelerated Education' as shortdescription,'Accelerated Education' as description UNION
				SELECT v_namespace AS namespace,'25' as codevalue,'Bilingual Education And Special Language Programs' as shortdescription,'Bilingual Education And Special Language Programs' as description UNION
				SELECT v_namespace AS namespace,'26' as codevalue,'Non-disciplinary Alternative Education Programs-AEP Services' as shortdescription,'Non-disciplinary Alternative Education Programs-AEP Services' as description UNION
				SELECT v_namespace AS namespace,'28' as codevalue,'Disciplinary Alternative Education Programs-DAEP Basic Services' as shortdescription,'Disciplinary Alternative Education Programs-DAEP Basic Services' as description UNION
				SELECT v_namespace AS namespace,'29' as codevalue,'DAEP State Compensatory Education Supplemental Costs' as shortdescription,'Disciplinary Alternative Education Programs-DAEP State Compensatory Education Supplemental Costs' as description UNION
				SELECT v_namespace AS namespace,'30' as codevalue,'Title I, Pt A Activities St Comp Ed Costs Campus 40% Or More Edu Disad' as shortdescription,'Title I, Part A Schoolwide Activities Related to State Compensatory Education Costs On Campuses With 40% Or More Educationally Disadvantaged Students' as description UNION
				SELECT v_namespace AS namespace,'31' as codevalue,'High School Allotment' as shortdescription,'High School Allotment' as description UNION
				SELECT v_namespace AS namespace,'32' as codevalue,'Pre-Kindergarten' as shortdescription,'Pre-Kindergarten' as description UNION
				SELECT v_namespace AS namespace,'33' as codevalue,'Pre-Kindergarten - Special Education' as shortdescription,'Pre-Kindergarten - Special Education' as description UNION
				SELECT v_namespace AS namespace,'34' as codevalue,'Pre-Kindergarten - Compensatory Education' as shortdescription,'Pre-Kindergarten - Compensatory Education' as description UNION
				SELECT v_namespace AS namespace,'35' as codevalue,'Pre-Kindergarten - Bilingual Education' as shortdescription,'Pre-Kindergarten - Bilingual Education' as description UNION
				SELECT v_namespace AS namespace,'36' as codevalue,'Early Education Allotment' as shortdescription,'Early Education Allotment' as description UNION
				SELECT v_namespace AS namespace,'37' as codevalue,'Dyslexia or Related Disorder Services' as shortdescription,'Dyslexia or Related Disorder Services' as description UNION
				SELECT v_namespace AS namespace,'38' as codevalue,'College, Career, or Military Readiness' as shortdescription,'College, Career, or Military Readiness' as description UNION
				SELECT v_namespace AS namespace,'43' as codevalue,'Dyslexia - Special Education' as shortdescription,'Dyslexia - Special Education' as description UNION
				SELECT v_namespace AS namespace,'91' as codevalue,'Athletics And Related Activities' as shortdescription,'Athletics And Related Activities' as description UNION
				SELECT v_namespace AS namespace,'99' as codevalue,'Undistributed' as shortdescription,'Undistributed' as description 
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ProgramOfStudy;
    v_descriptor := 'ProgramOfStudy';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PROGRAMOFSTUDYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'001' as codevalue,'Accounting and Financial Services' as shortdescription,'Accounting and Financial Services' as description UNION 
             SELECT v_namespace AS namespace,'002' as codevalue,'Advanced Manufacturing and Machinery Mechanics' as shortdescription,'Advanced Manufacturing and Machinery Mechanics' as description UNION 
             SELECT v_namespace AS namespace,'003' as codevalue,'Agribusiness' as shortdescription,'Agribusiness' as description UNION 
             SELECT v_namespace AS namespace,'004' as codevalue,'Animal Science' as shortdescription,'Animal Science' as description UNION 
             SELECT v_namespace AS namespace,'005' as codevalue,'Applied Agricultural Engineering' as shortdescription,'Applied Agricultural Engineering' as description UNION 
             SELECT v_namespace AS namespace,'006' as codevalue,'Architectural Design' as shortdescription,'Architectural Design' as description UNION 
             SELECT v_namespace AS namespace,'007' as codevalue,'Automotive' as shortdescription,'Automotive' as description UNION 
             SELECT v_namespace AS namespace,'008' as codevalue,'Aviation Maintenance' as shortdescription,'Aviation Maintenance' as description UNION 
             SELECT v_namespace AS namespace,'009' as codevalue,'Bio-Medical Science' as shortdescription,'Bio-Medical Science' as description UNION 
             SELECT v_namespace AS namespace,'011' as codevalue,'Business Management' as shortdescription,'Business Management' as description UNION 
             SELECT v_namespace AS namespace,'012' as codevalue,'Carpentry' as shortdescription,'Carpentry' as description UNION 
             SELECT v_namespace AS namespace,'013' as codevalue,'Cosmetology and Personal Care Services' as shortdescription,'Cosmetology and Personal Care Services' as description UNION 
             SELECT v_namespace AS namespace,'014' as codevalue,'Culinary Arts' as shortdescription,'Culinary Arts' as description UNION 
             SELECT v_namespace AS namespace,'015' as codevalue,'Cybersecurity' as shortdescription,'Cybersecurity' as description UNION 
             SELECT v_namespace AS namespace,'016' as codevalue,'Diesel and Heavy Equipment' as shortdescription,'Diesel and Heavy Equipment' as description UNION 
             SELECT v_namespace AS namespace,'017' as codevalue,'Digital Communications' as shortdescription,'Digital Communications' as description UNION 
             SELECT v_namespace AS namespace,'018' as codevalue,'Distribution and Logistics' as shortdescription,'Distribution and Logistics' as description UNION 
             SELECT v_namespace AS namespace,'019' as codevalue,'Early Learning' as shortdescription,'Early Learning' as description UNION 
             SELECT v_namespace AS namespace,'020' as codevalue,'Electrical' as shortdescription,'Electrical' as description UNION 
             SELECT v_namespace AS namespace,'021' as codevalue,'Emergency Services' as shortdescription,'Emergency Services' as description UNION 
             SELECT v_namespace AS namespace,'022' as codevalue,'Engineering' as shortdescription,'Engineering' as description UNION 
             SELECT v_namespace AS namespace,'023' as codevalue,'Entrepreneurship' as shortdescription,'Entrepreneurship' as description UNION 
             SELECT v_namespace AS namespace,'024' as codevalue,'Environmental and Natural Resources' as shortdescription,'Environmental and Natural Resources' as description UNION 
             SELECT v_namespace AS namespace,'025' as codevalue,'Exercise Science and Wellness' as shortdescription,'Exercise Science and Wellness' as description UNION 
             SELECT v_namespace AS namespace,'026' as codevalue,'Family and Community Services' as shortdescription,'Family and Community Services' as description UNION 
             SELECT v_namespace AS namespace,'027' as codevalue,'Food Science and Technology' as shortdescription,'Food Science and Technology' as description UNION 
             SELECT v_namespace AS namespace,'028' as codevalue,'Government and Public Administration' as shortdescription,'Government and Public Administration' as description UNION 
             SELECT v_namespace AS namespace,'029' as codevalue,'Graphic Design and Multimedia Arts' as shortdescription,'Graphic Design and Multimedia Arts' as description UNION 
             SELECT v_namespace AS namespace,'030' as codevalue,'Health and Wellness' as shortdescription,'Health and Wellness' as description UNION 
             SELECT v_namespace AS namespace,'031' as codevalue,'Health Informatics' as shortdescription,'Health Informatics' as description UNION 
             SELECT v_namespace AS namespace,'032' as codevalue,'Healthcare Diagnostics' as shortdescription,'Healthcare Diagnostics' as description UNION 
             SELECT v_namespace AS namespace,'033' as codevalue,'Healthcare Therapeutic' as shortdescription,'Healthcare Therapeutic' as description UNION 
             SELECT v_namespace AS namespace,'034' as codevalue,'HVAC and Sheet Metal' as shortdescription,'HVAC and Sheet Metal' as description UNION 
             SELECT v_namespace AS namespace,'035' as codevalue,'Information Technology Support and Services' as shortdescription,'Information Technology Support and Services' as description UNION 
             SELECT v_namespace AS namespace,'036' as codevalue,'Law Enforcement' as shortdescription,'Law Enforcement' as description UNION 
             SELECT v_namespace AS namespace,'037' as codevalue,'Legal Studies' as shortdescription,'Legal Studies' as description UNION 
             SELECT v_namespace AS namespace,'038' as codevalue,'Lodging and Resort Management' as shortdescription,'Lodging and Resort Management' as description UNION 
             SELECT v_namespace AS namespace,'039' as codevalue,'Manufacturing Technology' as shortdescription,'Manufacturing Technology' as description UNION 
             SELECT v_namespace AS namespace,'040' as codevalue,'Marketing and Sales' as shortdescription,'Marketing and Sales' as description UNION 
             SELECT v_namespace AS namespace,'041' as codevalue,'Masonry' as shortdescription,'Masonry' as description UNION 
             SELECT v_namespace AS namespace,'042' as codevalue,'Networking Systems' as shortdescription,'Networking Systems' as description UNION 
             SELECT v_namespace AS namespace,'043' as codevalue,'Nursing Science' as shortdescription,'Nursing Science' as description UNION 
             SELECT v_namespace AS namespace,'044' as codevalue,'Oil and Gas Exploration and Production' as shortdescription,'Oil and Gas Exploration and Production' as description UNION 
             SELECT v_namespace AS namespace,'045' as codevalue,'Plant Science' as shortdescription,'Plant Science' as description UNION 
             SELECT v_namespace AS namespace,'046' as codevalue,'Plumbing and Pipefitting' as shortdescription,'Plumbing and Pipefitting' as description UNION 
             SELECT v_namespace AS namespace,'047' as codevalue,'Programming and Software Development' as shortdescription,'Programming and Software Development' as description UNION 
             SELECT v_namespace AS namespace,'048' as codevalue,'Refining and Chemical Processes' as shortdescription,'Refining and Chemical Processes' as description UNION 
             SELECT v_namespace AS namespace,'049' as codevalue,'Renewable Energy' as shortdescription,'Renewable Energy' as description UNION 
             SELECT v_namespace AS namespace,'050' as codevalue,'Teaching and Training' as shortdescription,'Teaching and Training' as description UNION 
             SELECT v_namespace AS namespace,'051' as codevalue,'Travel, Tourism, and Attractions' as shortdescription,'Travel, Tourism, and Attractions' as description UNION 
             SELECT v_namespace AS namespace,'052' as codevalue,'Web Development' as shortdescription,'Web Development' as description UNION 
             SELECT v_namespace AS namespace,'054' as codevalue,'Construction Management and Inspection' as shortdescription,'Construction Management and Inspection' as description UNION 
             SELECT v_namespace AS namespace,'056' as codevalue,'Aviation (Flight)' as shortdescription,'Aviation (Flight)' as description UNION 
             SELECT v_namespace AS namespace,'058' as codevalue,'Maritime' as shortdescription,'Maritime' as description UNION 
             SELECT v_namespace AS namespace,'059' as codevalue,'Medical Therapy' as shortdescription,'Medical Therapy' as description UNION 
             SELECT v_namespace AS namespace,'060' as codevalue,'Welding' as shortdescription,'Welding' as description UNION 
             SELECT v_namespace AS namespace,'061' as codevalue,'Drone (Unmanned Flight)' as shortdescription,'Drone (Unmanned Flight)' as description UNION 
             SELECT v_namespace AS namespace,'062' as codevalue,'Geospatial Engineering and Land Surveying' as shortdescription,'Geospatial Engineering and Land Surveying' as description UNION 
             SELECT v_namespace AS namespace,'063' as codevalue,'Industrial Maintenance' as shortdescription,'Industrial Maintenance' as description UNION 
             SELECT v_namespace AS namespace,'064' as codevalue,'Printing and Imaging' as shortdescription,'Printing and Imaging' as description UNION 
             SELECT v_namespace AS namespace,'065' as codevalue,'Retail Management' as shortdescription,'Retail Management' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ProgramType;
    v_descriptor := 'ProgramType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'PROGRAMTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Adult/Continuing Education' as shortdescription,'Adult/Continuing Education' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Alternative Education' as shortdescription,'Alternative Education' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Athletics' as shortdescription,'Athletics' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Bilingual' as shortdescription,'Bilingual' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Career and Technical Education' as shortdescription,'Career and Technical Education' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Cocurricular Programs' as shortdescription,'Cocurricular Programs' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'College Preparatory' as shortdescription,'College Preparatory' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Community Service Program' as shortdescription,'Community Service Program' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Community/Junior College Education Program' as shortdescription,'Community/Junior College Education Program' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Compensatory Services for Disadvantaged Students' as shortdescription,'Compensatory Services for Disadvantaged Students' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Counseling Services' as shortdescription,'Counseling Services' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'English as a Second Language (ESL)' as shortdescription,'English as a Second Language (ESL)' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Even Start' as shortdescription,'Even Start' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Extended Day/Child Care Services' as shortdescription,'Extended Day/Child Care Services' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'Gifted and Talented' as shortdescription,'Gifted and Talented' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'Head Start' as shortdescription,'Head Start' as description UNION 
             SELECT v_namespace AS namespace,'17' as codevalue,'Health Services Program' as shortdescription,'Health Services Program' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'HSEP' as shortdescription,'High School Equivalency Program (HSEP)' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'IDEA' as shortdescription,'IDEA' as description UNION 
             SELECT v_namespace AS namespace,'20' as codevalue,'Immigrant Education' as shortdescription,'Immigrant Education' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'Indian Education' as shortdescription,'Indian Education' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'International Baccalaureate' as shortdescription,'International Baccalaureate' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'Library/Medica Services Program' as shortdescription,'Library/Medica Services Program' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'Magnet/Special Program Emphasis' as shortdescription,'Magnet/Special Program Emphasis' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'Migrant Education' as shortdescription,'Migrant Education' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'Neglected and Delinquent Program' as shortdescription,'Neglected and Delinquent Program' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'OFSDP' as shortdescription,'Optional Flexible School Day Program (OFSDP)' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'Regular Education' as shortdescription,'Regular Education' as description UNION 
             SELECT v_namespace AS namespace,'30' as codevalue,'Remedial Education' as shortdescription,'Remedial Education' as description UNION 
             SELECT v_namespace AS namespace,'31' as codevalue,'Section 504 Placement' as shortdescription,'Section 504 Placement' as description UNION 
             SELECT v_namespace AS namespace,'32' as codevalue,'Service Learning' as shortdescription,'Service Learning' as description UNION 
             SELECT v_namespace AS namespace,'33' as codevalue,'Special Education' as shortdescription,'Special Education' as description UNION 
             SELECT v_namespace AS namespace,'34' as codevalue,'Student Retention/Dropout Prevention' as shortdescription,'Student Retention/Dropout Prevention' as description UNION 
             SELECT v_namespace AS namespace,'35' as codevalue,'Substance Abuse Education/Prevention' as shortdescription,'Substance Abuse Education/Prevention' as description UNION 
             SELECT v_namespace AS namespace,'36' as codevalue,'Teacher Professional Development/Mentoring' as shortdescription,'Teacher Professional Development/Mentoring' as description UNION 
             SELECT v_namespace AS namespace,'37' as codevalue,'Technical Preparatory' as shortdescription,'Technical Preparatory' as description UNION 
             SELECT v_namespace AS namespace,'38' as codevalue,'Title I Part A' as shortdescription,'Title I Part A' as description UNION 
             SELECT v_namespace AS namespace,'39' as codevalue,'Vocational Education' as shortdescription,'Vocational Education' as description UNION 
             SELECT v_namespace AS namespace,'40' as codevalue,'Bilingual Summer' as shortdescription,'Bilingual Summer' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Race;
    v_descriptor := 'Race';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'RACEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'American Indian - Alaskan Native' as shortdescription,'American Indian - Alaskan Native' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Asian' as shortdescription,'Asian' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Black - African American' as shortdescription,'Black - African American' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Native Hawaiian - Pacific Islander' as shortdescription,'Native Hawaiian - Pacific Islander' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'White' as shortdescription,'White' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Relation;
    v_descriptor := 'Relation';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'RELATIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Adopted Daughter' as shortdescription,'Adopted Daughter' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Adopted Son' as shortdescription,'Adopted Son' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Adoptive Parents' as shortdescription,'Adoptive Parents' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Advisor' as shortdescription,'Advisor' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Agency Representative' as shortdescription,'Agency Representative' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Aunt' as shortdescription,'Aunt' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Brother, Half' as shortdescription,'Brother, Half' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Brother, Natural/Adoptive' as shortdescription,'Brother, Natural/Adoptive' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Brother, Step' as shortdescription,'Brother, Step' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Brother-In-Law' as shortdescription,'Brother-In-Law' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Case Worker, CPS' as shortdescription,'Case Worker, CPS' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Court Appointed Guardian' as shortdescription,'Court Appointed Guardian' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Cousin' as shortdescription,'Cousin' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Daughter' as shortdescription,'Daughter' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'Daughter-In-Law' as shortdescription,'Daughter-In-Law' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'Dependent' as shortdescription,'Dependent' as description UNION 
             SELECT v_namespace AS namespace,'17' as codevalue,'Doctor' as shortdescription,'Doctor' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'Employer' as shortdescription,'Employer' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'Family Member' as shortdescription,'Family Member' as description UNION 
             SELECT v_namespace AS namespace,'20' as codevalue,'Father''s Significant Other' as shortdescription,'Father''s Significant Other' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'Father, Foster' as shortdescription,'Father, Foster' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'Father' as shortdescription,'Father' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'Father, Step' as shortdescription,'Father, Step' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'Father-In-Law' as shortdescription,'Father-In-Law' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'Fiance' as shortdescription,'Fiance' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'Fiancee' as shortdescription,'Fiancee' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'Former Husband' as shortdescription,'Former Husband' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'Former Wife' as shortdescription,'Former Wife' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'Foster Daughter' as shortdescription,'Foster Daughter' as description UNION 
             SELECT v_namespace AS namespace,'30' as codevalue,'Foster Parent' as shortdescription,'Foster Parent' as description UNION 
             SELECT v_namespace AS namespace,'31' as codevalue,'Foster Son' as shortdescription,'Foster Son' as description UNION 
             SELECT v_namespace AS namespace,'32' as codevalue,'Friend' as shortdescription,'Friend' as description UNION 
             SELECT v_namespace AS namespace,'33' as codevalue,'Granddaughter' as shortdescription,'Granddaughter' as description UNION 
             SELECT v_namespace AS namespace,'34' as codevalue,'Grandparent' as shortdescription,'Grandparent' as description UNION 
             SELECT v_namespace AS namespace,'35' as codevalue,'Great Grandparent' as shortdescription,'Great Grandparent' as description UNION 
             SELECT v_namespace AS namespace,'36' as codevalue,'Grandson' as shortdescription,'Grandson' as description UNION 
             SELECT v_namespace AS namespace,'37' as codevalue,'Great Aunt' as shortdescription,'Great Aunt' as description UNION 
             SELECT v_namespace AS namespace,'38' as codevalue,'Great Uncle' as shortdescription,'Great Uncle' as description UNION 
             SELECT v_namespace AS namespace,'39' as codevalue,'Guardian' as shortdescription,'Guardian' as description UNION 
             SELECT v_namespace AS namespace,'40' as codevalue,'Husband' as shortdescription,'Husband' as description UNION 
             SELECT v_namespace AS namespace,'41' as codevalue,'Life Partner' as shortdescription,'Life Partner' as description UNION 
             SELECT v_namespace AS namespace,'42' as codevalue,'Life Partner Of Parent' as shortdescription,'Life Partner Of Parent' as description UNION 
             SELECT v_namespace AS namespace,'43' as codevalue,'Minister Or Priest' as shortdescription,'Minister Or Priest' as description UNION 
             SELECT v_namespace AS namespace,'44' as codevalue,'Mother''s Significant Other' as shortdescription,'Mother''s Significant Other' as description UNION 
             SELECT v_namespace AS namespace,'45' as codevalue,'Mother, Foster' as shortdescription,'Mother, Foster' as description UNION 
             SELECT v_namespace AS namespace,'46' as codevalue,'Mother' as shortdescription,'Mother' as description UNION 
             SELECT v_namespace AS namespace,'47' as codevalue,'Mother, Step' as shortdescription,'Mother, Step' as description UNION 
             SELECT v_namespace AS namespace,'48' as codevalue,'Mother-In-Law' as shortdescription,'Mother-In-Law' as description UNION 
             SELECT v_namespace AS namespace,'49' as codevalue,'Nephew' as shortdescription,'Nephew' as description UNION 
             SELECT v_namespace AS namespace,'50' as codevalue,'Niece' as shortdescription,'Niece' as description UNION 
             SELECT v_namespace AS namespace,'51' as codevalue,'None' as shortdescription,'None' as description UNION 
             SELECT v_namespace AS namespace,'52' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT v_namespace AS namespace,'53' as codevalue,'Parent' as shortdescription,'Parent' as description UNION 
             SELECT v_namespace AS namespace,'54' as codevalue,'Partner' as shortdescription,'Partner' as description UNION 
             SELECT v_namespace AS namespace,'55' as codevalue,'Partner Of Parent' as shortdescription,'Partner Of Parent' as description UNION 
             SELECT v_namespace AS namespace,'56' as codevalue,'Probation Officer' as shortdescription,'Probation Officer' as description UNION 
             SELECT v_namespace AS namespace,'57' as codevalue,'Sibling' as shortdescription,'Sibling' as description UNION 
             SELECT v_namespace AS namespace,'58' as codevalue,'Sister, Half' as shortdescription,'Sister, Half' as description UNION 
             SELECT v_namespace AS namespace,'59' as codevalue,'Sister, Natural/Adoptive' as shortdescription,'Sister, Natural/Adoptive' as description UNION 
             SELECT v_namespace AS namespace,'60' as codevalue,'Sister, Step' as shortdescription,'Sister, Step' as description UNION 
             SELECT v_namespace AS namespace,'61' as codevalue,'Sister-In-Law' as shortdescription,'Sister-In-Law' as description UNION 
             SELECT v_namespace AS namespace,'62' as codevalue,'Son' as shortdescription,'Son' as description UNION 
             SELECT v_namespace AS namespace,'63' as codevalue,'Son-In-Law' as shortdescription,'Son-In-Law' as description UNION 
             SELECT v_namespace AS namespace,'64' as codevalue,'Spouse' as shortdescription,'Spouse' as description UNION 
             SELECT v_namespace AS namespace,'65' as codevalue,'Stepdaughter' as shortdescription,'Stepdaughter' as description UNION 
             SELECT v_namespace AS namespace,'66' as codevalue,'Stepson' as shortdescription,'Stepson' as description UNION 
             SELECT v_namespace AS namespace,'67' as codevalue,'Stepsibling' as shortdescription,'Stepsibling' as description UNION 
             SELECT v_namespace AS namespace,'68' as codevalue,'Uncle' as shortdescription,'Uncle' as description UNION 
             SELECT v_namespace AS namespace,'69' as codevalue,'Ward' as shortdescription,'Ward' as description UNION 
             SELECT v_namespace AS namespace,'70' as codevalue,'Wife' as shortdescription,'Wife' as description UNION 
             SELECT v_namespace AS namespace,'71' as codevalue,'Emergency Contact' as shortdescription,'Emergency Contact' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- ReportAssessmentType;
    v_descriptor := 'ReportAssessmentType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'REPORTASSESSMENTTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'ECDS - KG' as shortdescription,'ECDS - KG' as description UNION
			 SELECT v_namespace AS namespace,'02' as codevalue,'ECDS - PK' as shortdescription,'ECDS - PK' as description UNION
			 SELECT v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Responsibility;
    v_descriptor := 'Responsibility';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'RESPONSIBILITYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Accountability' as shortdescription,'Accountability' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Residency' as shortdescription,'Residency' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- RestraintEventReason;
    v_descriptor := 'RestraintEventReason';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'RESTRAINTEVENTREASONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Imminent Serious Physical Harm To Themselves' as shortdescription,'Imminent Serious Physical Harm To Themselves' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Immident Serious Physical Harm To Others' as shortdescription,'Immident Serious Physical Harm To Others' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Imminent Serious Physical Harm To Themselves and Others' as shortdescription,'Imminent Serious Physical Harm To Themselves and Others' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Immident Serious Property Destruction' as shortdescription,'Immident Serious Property Destruction' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Imminent Serious Physical Harm To Themselves and Property Destruction' as shortdescription,'Imminent Serious Physical Harm To Themselves and Immident Serious Property Destruction' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Imminent Serious Physical Harm To Others and Property Destruction' as shortdescription,'Imminent Serious Physical Harm To Others and Immident Serious Property Destruction' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Imminent Serious Physical Harm To Themself, Others and Property Destruction' as shortdescription,'Imminent Serious Physical Harm To Themselves and Others and Immident Serious Property Destruction' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Restraint by District Police or Resource Officer' as shortdescription,'Restraint by School District Police Officer/School Resource Officer Performing Law Enforcement Duties and/or Providing a Police Presence on School Property or at a School-Sponsored or School-Related Activity.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- RestraintStaffType;
    v_descriptor := 'RestraintStaffType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'RESTRAINTSTAFFTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'School district/Charter School employee or volunteer' as shortdescription,'School district/Charter School employee or volunteer' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'School district police officer or school resource officer (SRO)' as shortdescription,'School district police officer or school resource officer (SRO)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- RoleId;
    v_descriptor := 'RoleId';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'ROLEIDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'002' as codevalue,'Art Therapist' as shortdescription,'Art Therapist - Serves as Art Therapist' as description UNION 
             SELECT v_namespace AS namespace,'003' as codevalue,'Assistant Principal' as shortdescription,'Assistant Principal - Assists the principal of a particular campus in any duties the principal may deem appropriate' as description UNION 
             SELECT v_namespace AS namespace,'004' as codevalue,'Assistant/Associate/Deputy Superintendent' as shortdescription,'Assistant/Associate/Deputy Superintendent - Assists the superintendent of a particular school district in any duties the superintendent may deem appropriate. Persons assigned to this role usually perform functions associated with more than one campus' as description UNION 
             SELECT v_namespace AS namespace,'005' as codevalue,'Psychological Associate' as shortdescription,'Psychological Associate - Serves under the Licensed Specialist in School Psychology (LSSP) or psychologist to provide guidance and counseling services to students' as description UNION 
             SELECT v_namespace AS namespace,'006' as codevalue,'Audiologist' as shortdescription,'Audiologist - The person who provides audiological services to students with hearing impairments' as description UNION 
             SELECT v_namespace AS namespace,'007' as codevalue,'Corrective Therapist' as shortdescription,'Corrective Therapist - Serves as Corrective Therapist' as description UNION 
             SELECT v_namespace AS namespace,'008' as codevalue,'School Counselor' as shortdescription,'School Counselor - Provides guidance and counseling services to students' as description UNION 
             SELECT v_namespace AS namespace,'011' as codevalue,'Educational Diagnostician' as shortdescription,'Educational Diagnostician - Provides educational diagnostic services and individualized education program development' as description UNION 
             SELECT v_namespace AS namespace,'012' as codevalue,'District Instructional Program Director or Executive Director' as shortdescription,'District Instructional Program Director or Executive Director - Serves under the superintendent, or higher grade instructional administrative officer, as the key specialist for a major instructional, instructional related, or pupil service program. Responsibilities may include curriculum development or supervision of programs or personnel whose assignments require certification or licensure. Only degreed, certified personnel may be placed in this category. Examples include, but are not limited to staff serving as Director of Guidance and Counseling, Director of Curriculum, Director of Librarians, Director of Bilingual/ESL, Career and Technical Director, Director of Special Ed, and Director of Social Studies' as description UNION 
             SELECT v_namespace AS namespace,'013' as codevalue,'Librarian' as shortdescription,'Librarian - Supervises library/learning resources center, or functions as one of several librarians, or learning resource specialists, on a major campus' as description UNION 
             SELECT v_namespace AS namespace,'015' as codevalue,'Music Therapist' as shortdescription,'Music Therapist - Serves as Music Therapist' as description UNION 
             SELECT v_namespace AS namespace,'016' as codevalue,'Occupational Therapist' as shortdescription,'Occupational Therapist - Serves as Occupational Therapist' as description UNION 
             SELECT v_namespace AS namespace,'017' as codevalue,'Certified Orientation and Mobility Specialist (COMS)' as shortdescription,'Certified Orientation and Mobility Specialist (COMS)' as description UNION 
             SELECT v_namespace AS namespace,'018' as codevalue,'Physical Therapist' as shortdescription,'Physical Therapist - Serves as Physical Therapist' as description UNION 
             SELECT v_namespace AS namespace,'019' as codevalue,'Physician' as shortdescription,'Physician - Serves as school Physician' as description UNION 
             SELECT v_namespace AS namespace,'020' as codevalue,'Principal' as shortdescription,'Principal - Serves as the instructional leader of the school whose duties include selecting teachers for the campus, setting education objectives, developing budgets for the campus, and working with school professionals to prepare individual development plans' as description UNION 
             SELECT v_namespace AS namespace,'021' as codevalue,'Recreational Therapist' as shortdescription,'Recreational Therapist - Serves as Recreational Therapist' as description UNION 
             SELECT v_namespace AS namespace,'022' as codevalue,'School Nurse' as shortdescription,'School Nurse - A person that complies with TEC 21.003(b), "is licensed by the state agency that licenses that profession", [Nurse Practitioner (NP), Registered Nurse (RN), Licensed Vocational Nurse (LVN)] is employed/contracted by the school district, and whose primary job responsibility is that of school nurse. Only persons licensed by the state agency that licenses nurses may be employed as a school nurse' as description UNION 
             SELECT v_namespace AS namespace,'023' as codevalue,'LSSP/Psychologist' as shortdescription,'LSSP/Psychologist - Serves as Licensed Specialist in School Psychology/Psychologist' as description UNION 
             SELECT v_namespace AS namespace,'024' as codevalue,'Social Worker' as shortdescription,'Social Worker - Serves as the school social worker to provide comprehensive social services as a part of an education team. Social workers must be licensed by the Texas State Board of Examiners and must hold a bachelor''s or master''s degree' as description UNION 
             SELECT v_namespace AS namespace,'026' as codevalue,'Speech Therapist/Speech-Language Pathologist' as shortdescription,'Speech Therapist/Speech-Language Pathologist - Serves as provider of speech-language pathology/speech therapy services' as description UNION 
             SELECT v_namespace AS namespace,'027' as codevalue,'Superintendent/Chief Admin Officer/Chief Executive Officer/President' as shortdescription,'Superintendent/Chief Administrative Officer/Chief Executive Officer/President - The educational leader and administrative manager of the school district' as description UNION 
             SELECT v_namespace AS namespace,'028' as codevalue,'Teacher Supervisor' as shortdescription,'Teacher Supervisor - Provides consultant services to teachers in a grade level, adjacent grades, in a teaching field, or group of related fields' as description UNION 
             SELECT v_namespace AS namespace,'030' as codevalue,'Truant Officer/Visiting Teacher' as shortdescription,'Truant Officer/Visiting Teacher - Directs activities related to promoting and improving school attendance. Such certified staff members provide home, school, and community liaison services' as description UNION 
             SELECT v_namespace AS namespace,'032' as codevalue,'Work-Based Learning Site Coordinator' as shortdescription,'Work-Based Learning Site Coordinator - The code for a Career and Technical Education teacher (087) assigned to career preparation work-based learning experiences is changed from 087 to 032 when visiting a student training site for the purpose of evaluating the student and consulting the employer' as description UNION 
             SELECT v_namespace AS namespace,'040' as codevalue,'Athletic Director' as shortdescription,'Athletic Director - Used only when the staff member with such a title is performing administrative tasks directing the athletic program.  Responsibilities may include supervision of coaches and other personnel in the athletic program.  It is not used when coaching duties are being performed' as description UNION 
             SELECT v_namespace AS namespace,'041' as codevalue,'Teacher Facilitator' as shortdescription,'Teacher Facilitator - Serves as an exemplary role model in assisting teachers with improving their classroom performance' as description UNION 
             SELECT v_namespace AS namespace,'042' as codevalue,'Teacher Appraiser' as shortdescription,'Teacher Appraiser - Serves as an appraiser in the Texas Teacher Appraisal System' as description UNION 
             SELECT v_namespace AS namespace,'043' as codevalue,'Business Manager' as shortdescription,'Business Manager - Serves as business manager or Chief Financial Officer (CFO)' as description UNION 
             SELECT v_namespace AS namespace,'044' as codevalue,'Tax Assessor And/Or Collector' as shortdescription,'Tax Assessor And/Or Collector - Serves as district tax assessor, tax collector, or tax assessor-collector' as description UNION 
             SELECT v_namespace AS namespace,'045' as codevalue,'Director Of Personnel/Human Resources' as shortdescription,'Director Of Personnel/Human Resources - Serves as personnel or human resources director' as description UNION 
             SELECT v_namespace AS namespace,'047' as codevalue,'Substitute Teacher' as shortdescription,'Substitute Teacher - A person who serves in a classroom in the absence of a teacher certified for that assignment where the teacher has quit, died, or been terminated; or, a person who is permanently hired to substitute on an as-needed basis. (See StaffResponsibilitiesExtension complex type, Data Element Reporting Requirements, Chart A - Coding for Substitute and Absent Regular Staff)' as description UNION 
             SELECT v_namespace AS namespace,'054' as codevalue,'Department Head' as shortdescription,'Department Head - Serves as head or chairman of a subject area department on a campus' as description UNION 
             SELECT v_namespace AS namespace,'055' as codevalue,'Registrar' as shortdescription,'Registrar - Serves as school or district registrar' as description UNION 
             SELECT v_namespace AS namespace,'056' as codevalue,'Athletic Trainer' as shortdescription,'Athletic Trainer - Serves as a trainer in the athletics program' as description UNION 
             SELECT v_namespace AS namespace,'060' as codevalue,'Executive Director' as shortdescription,'Executive Director - Serves as the chief executive officer of an education service center' as description UNION 
             SELECT v_namespace AS namespace,'061' as codevalue,'Assistant/Associate/Deputy Executive Director' as shortdescription,'Assistant/Associate/Deputy Executive Director - Assists the education service center executive director' as description UNION 
             SELECT v_namespace AS namespace,'062' as codevalue,'Component/Department Director' as shortdescription,'Component/Department Director - Directs and manages the program activities of a component or department of an education service center' as description UNION 
             SELECT v_namespace AS namespace,'063' as codevalue,'Coordinator/Manager/Supervisor' as shortdescription,'Coordinator/Manager/Supervisor - Coordinates, manages, and/or supervises specific programs and services of an education service center' as description UNION 
             SELECT v_namespace AS namespace,'064' as codevalue,'Specialist/Consultant' as shortdescription,'Specialist/Consultant - Provides technical assistance and professional development in various areas of an education service center' as description UNION 
             SELECT v_namespace AS namespace,'065' as codevalue,'Field Service Agent' as shortdescription,'Field Service Agent - Provides coordinated assistance to districts and campuses' as description UNION 
             SELECT v_namespace AS namespace,'079' as codevalue,'Other Education Service Center Professional Personnel' as shortdescription,'Other Education Service Center Professional Personnel - Serves as professional staff member at an ESC. Do not use this role unless no other role applies to the staff member' as description UNION 
             SELECT v_namespace AS namespace,'087' as codevalue,'Teacher' as shortdescription,'Teacher - A professional employee who is required to hold a valid teacher certificate or permit in order to perform some type of instruction to students; (combination of former codes 025 and 029)' as description UNION 
             SELECT v_namespace AS namespace,'100' as codevalue,'Instructional Materials Coordinator' as shortdescription,'Instructional Materials Coordinator' as description UNION 
             SELECT v_namespace AS namespace,'101' as codevalue,'Legal Services' as shortdescription,'Legal Services' as description UNION 
             SELECT v_namespace AS namespace,'102' as codevalue,'Communications Professional' as shortdescription,'Communications Professional (Including but not limited to Public Information Officer, Community Liaison)' as description UNION 
             SELECT v_namespace AS namespace,'103' as codevalue,'Research/Evaluation Professional' as shortdescription,'Research/Evaluation Professional (Including but not limited to Analysis, Grant Writers)' as description UNION 
             SELECT v_namespace AS namespace,'104' as codevalue,'Internal Auditor' as shortdescription,'Internal Auditor' as description UNION 
             SELECT v_namespace AS namespace,'105' as codevalue,'Security' as shortdescription,'Security (Including but not limited to Chief of Police, Investigators, Police Officers)' as description UNION 
             SELECT v_namespace AS namespace,'106' as codevalue,'District/Campus Information Technology Professional' as shortdescription,'District/Campus Information Technology Professional (Including but not limited to Programmer/Analyst, Network Specialist, Database Administrator, PEIMS Coordinator, Other)' as description UNION 
             SELECT v_namespace AS namespace,'107' as codevalue,'Food Service Professional (including but not limited to Dietician)' as shortdescription,'Food Service Professional (including but not limited to Dietician)' as description UNION 
             SELECT v_namespace AS namespace,'108' as codevalue,'Transportation' as shortdescription,'Transportation' as description UNION 
             SELECT v_namespace AS namespace,'109' as codevalue,'Athletics (Other than Athletic Director)' as shortdescription,'Athletics (Other than Athletic Director)' as description UNION 
             SELECT v_namespace AS namespace,'110' as codevalue,'Custodial' as shortdescription,'Custodial - Staff serving in a professional/management role' as description UNION 
             SELECT v_namespace AS namespace,'111' as codevalue,'Maintenance' as shortdescription,'Maintenance - Staff serving in a professional/management role' as description UNION 
             SELECT v_namespace AS namespace,'112' as codevalue,'Business Services Professional' as shortdescription,'Business Services Professional (Including but not limited to Accounting, Budget, Professional Payroll Staff)' as description UNION 
             SELECT v_namespace AS namespace,'113' as codevalue,'Other District Exempt Professional Auxiliary' as shortdescription,'Other District Exempt Professional Auxiliary - Assign this role to district staff who are professional-level, non-instructional staff who cannot be classified in any other role regardless of where assigned. Physical work location is not a determining factor' as description UNION 
             SELECT v_namespace AS namespace,'114' as codevalue,'Other Campus Exempt Professional Auxiliary' as shortdescription,'Other Campus Exempt Professional Auxiliary:  
Serves as a professional staff member at one or more campuses. Do not use this role unless no other role applies to the staff member. Some examples of staff who are to be shown with this role are:
• campus/community liaisons
• campus volunteer coordinators
• dean and
• instructional officers assigned to a campus' as description UNION 
             SELECT v_namespace AS namespace,'115' as codevalue,'Psychiatric Nurse' as shortdescription,'Psychiatric Nurse' as description UNION 
             SELECT v_namespace AS namespace,'116' as codevalue,'Licensed Clinical Social Worker' as shortdescription,'Licensed Clinical Social Worker' as description UNION 
             SELECT v_namespace AS namespace,'117' as codevalue,'Licensed Professional Counselor' as shortdescription,'Licensed Professional Counselor' as description UNION 
             SELECT v_namespace AS namespace,'118' as codevalue,'Licensed Marriage and Family Therapist' as shortdescription,'Licensed Marriage and Family Therapist' as description UNION 
             SELECT v_namespace AS namespace,'033' as codevalue,'Educational Aide ' as shortdescription,'Educational Aide - Performs routine classroom tasks under the general supervision of a certified teacher or teaching team' as description UNION 
             SELECT v_namespace AS namespace,'036' as codevalue,'Certified Interpreter' as shortdescription,'Certified Interpreter - A state or nationally certified interpreter for the deaf who translates/transliterates for students who are deaf or hard of hearing, according to ARD committee recommendations. (Certified interpreters may be either professional or para-professional, depending on district classification)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- SchoolYear;
    v_descriptor := 'SchoolYear';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'SCHOOLYEARDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'1996-1997' as shortdescription,'1996-1997' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'1997-1998' as shortdescription,'1997-1998' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'1998-1999' as shortdescription,'1998-1999' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'1999-2000' as shortdescription,'1999-2000' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'2000-2001' as shortdescription,'2000-2001' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'2001-2002' as shortdescription,'2001-2002' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'2002-2003' as shortdescription,'2002-2003' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'2003-2004' as shortdescription,'2003-2004' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'2004-2005' as shortdescription,'2004-2005' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'2005-2006' as shortdescription,'2005-2006' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'2006-2007' as shortdescription,'2006-2007' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'2007-2008' as shortdescription,'2007-2008' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'2008-2009' as shortdescription,'2008-2009' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'2009-2010' as shortdescription,'2009-2010' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'2010-2011' as shortdescription,'2010-2011' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'2011-2012' as shortdescription,'2011-2012' as description UNION 
             SELECT v_namespace AS namespace,'17' as codevalue,'2012-2013' as shortdescription,'2012-2013' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'2013-2014' as shortdescription,'2013-2014' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'2014-2015' as shortdescription,'2014-2015' as description UNION 
             SELECT v_namespace AS namespace,'20' as codevalue,'2015-2016' as shortdescription,'2015-2016' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'2016-2017' as shortdescription,'2016-2017' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'2017-2018' as shortdescription,'2017-2018' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'2018-2019' as shortdescription,'2018-2019' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'2019-2020' as shortdescription,'2019-2020' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'2020-2021' as shortdescription,'2020-2021' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'2021-2022' as shortdescription,'2021-2022' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'2022-2023' as shortdescription,'2022-2023' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'2023-2024' as shortdescription,'2023-2024' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'2024-2025' as shortdescription,'2024-2025' as description UNION 
             SELECT v_namespace AS namespace,'30' as codevalue,'2025-2026' as shortdescription,'2025-2026' as description UNION 
             SELECT v_namespace AS namespace,'31' as codevalue,'2026-2027' as shortdescription,'2026-2027' as description UNION 
             SELECT v_namespace AS namespace,'32' as codevalue,'2027-2028' as shortdescription,'2027-2028' as description UNION 
             SELECT v_namespace AS namespace,'33' as codevalue,'2028-2029' as shortdescription,'2028-2029' as description UNION 
             SELECT v_namespace AS namespace,'34' as codevalue,'2029-2030' as shortdescription,'2029-2030' as description UNION 
             SELECT v_namespace AS namespace,'35' as codevalue,'2030-2031' as shortdescription,'2030-2031' as description UNION 
             SELECT v_namespace AS namespace,'36' as codevalue,'2031-2032' as shortdescription,'2031-2032' as description UNION 
             SELECT v_namespace AS namespace,'37' as codevalue,'2032-2033' as shortdescription,'2032-2033' as description UNION 
             SELECT v_namespace AS namespace,'38' as codevalue,'2033-2034' as shortdescription,'2033-2034' as description UNION 
             SELECT v_namespace AS namespace,'39' as codevalue,'2034-2035' as shortdescription,'2034-2035' as description UNION 
             SELECT v_namespace AS namespace,'40' as codevalue,'2035-2036' as shortdescription,'2035-2036' as description UNION 
             SELECT v_namespace AS namespace,'41' as codevalue,'2036-2037' as shortdescription,'2036-2037' as description UNION 
             SELECT v_namespace AS namespace,'42' as codevalue,'2037-2038' as shortdescription,'2037-2038' as description UNION 
             SELECT v_namespace AS namespace,'43' as codevalue,'2038-2039' as shortdescription,'2038-2039' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Sex;
    v_descriptor := 'Sex';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'SEXDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Female' as shortdescription,'Female' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Male' as shortdescription,'Male' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- SharedServiceArrangementStaff;
    v_descriptor := 'SharedServiceArrangementStaff';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'SHAREDSERVICEARRANGEMENTSTAFFDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Works For ESC Not Part Of SSA' as shortdescription,'For This Responsibility, The Staff Member Works For The ESC Only, And Is Not Part Of An ESC Shared Services Arrangement' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'ESC Part of SSA And ESC is Fiscal Agent' as shortdescription,'For This Responsibility, The Staff Member Is Part Of The ESC Shared Services Arrangement, For Which The ESC Is The Fiscal Agent' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- SpecialEducationProgramService;
    v_descriptor := 'SpecialEducationProgramService';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'SPECIALEDUCATIONPROGRAMSERVICEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'No Special Education Program Services' as shortdescription,'No Special Education Program Services' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Social Work Services' as shortdescription,'Social Work Services' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Oral Transliteration Services' as shortdescription,'Oral Transliteration Interpreting Services' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'CUED Language Transliteration Services' as shortdescription,'CUED Language Transliteration Services' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Sign Language Transliteration Services' as shortdescription,'Sign Language Transliteration Services' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Sign Language Interpreting Services' as shortdescription,'Sign Language Interpreting Services' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Communication Access Realtime Translation (CART) Services' as shortdescription,'Communication Access Realtime Translation (CART) Services' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'C-Print Services' as shortdescription,'C-Print Services' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Type Well Services' as shortdescription,'Type Well Services' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'Deaf-Blind Interpreting Services' as shortdescription,'Deaf-Blind Interpreting Services' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Psychological Services' as shortdescription,'Psychological Services' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Physical Therapy Services' as shortdescription,'Physical Therapy Services' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Recreation Including Therapeutic Recreation' as shortdescription,'Recreation Including Therapeutic Recreation' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Counseling Services' as shortdescription,'Counseling Services' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'Orientation And Mobility' as shortdescription,'Orientation And Mobility' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'Medical Services' as shortdescription,'Medical Services' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'School Health And/Or School Nurse Services' as shortdescription,'School Health And/Or School Nurse Services' as description UNION 
             SELECT v_namespace AS namespace,'17' as codevalue,'Direct Language Acquisition Services' as shortdescription,'Direct Language Acquisition Services' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'Indirect Language Acquisition' as shortdescription,'Indirect Language Acquisition' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'Consultative Language Acquisition' as shortdescription,'Consultative Language Acquisition' as description UNION 
             SELECT v_namespace AS namespace,'20' as codevalue,'Assistive Technology Device or Related Services' as shortdescription,'Assistive Technology Device or Related Services' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'Audiological Services' as shortdescription,'Audiological Services' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'Preschool Student with Disabilities Services' as shortdescription,'Preschool Student with Disabilities Services' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'Early Childhood Intervention Services' as shortdescription,'Early Childhood Intervention Services' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'Occupational And Physical Therapy' as shortdescription,'Occupational And Physical Therapy' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'Receiving Instructional Services from RDSPD' as shortdescription,'Receiving instructional services from the Regional Day School Program for the Deaf' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'Special Education Student Does Not Receive Speech Therapy' as shortdescription,'Special Education Student Does Not Receive Speech Therapy' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'Special Education Student Receives Speech Therapy Only' as shortdescription,'Special Education Student Receives Speech Therapy Only' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'Special Education Student Rec Speech Therapy and Other SPED Instr Setting' as shortdescription,'Student Receives Speech Therapy Along With Service Through Another Special Education Instructional Setting' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'Special Education Transportation Services' as shortdescription,'Special Education Transportation Services' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- SpecialEducationSetting;
    v_descriptor := 'SpecialEducationSetting';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'SPECIALEDUCATIONSETTINGDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'31' as codevalue,'Home-based Instruction' as shortdescription,'Home-based Instruction (not included in submission 3)' as description UNION
				SELECT v_namespace AS namespace,'32' as codevalue,'Center-based Instruction' as shortdescription,'Center-based Instruction (not included in submission 3)' as description UNION
				SELECT v_namespace AS namespace,'34' as codevalue,'Other environment' as shortdescription,'Other environment (not included in submission 3)' as description UNION
				SELECT v_namespace AS namespace,'00' as codevalue,'No instructional setting' as shortdescription,'No instructional setting (such as Speech Therapy)' as description UNION
				SELECT v_namespace AS namespace,'01' as codevalue,'Homebound' as shortdescription,'Homebound' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'Hospital class' as shortdescription,'Hospital class' as description UNION
				SELECT v_namespace AS namespace,'08' as codevalue,'Vocational Adjustment Class/Program' as shortdescription,'Vocational Adjustment Class/Program' as description UNION
				SELECT v_namespace AS namespace,'30' as codevalue,'State Supported Living Centers' as shortdescription,'State Supported Living Centers' as description UNION
				SELECT v_namespace AS namespace,'40' as codevalue,'Mainstream ' as shortdescription,'Mainstream (not included in submission 3)' as description UNION
				SELECT v_namespace AS namespace,'50' as codevalue,'Residential Nonpublic School Program ' as shortdescription,'Residential Nonpublic School Program (not included in submission 3)' as description UNION
				SELECT v_namespace AS namespace,'60' as codevalue,'Nonpublic Day School ' as shortdescription,'Nonpublic Day School (not included in submission 3)' as description UNION
				SELECT v_namespace AS namespace,'70' as codevalue,'Texas School For The Blind And Visually Impaired' as shortdescription,'Texas School For The Blind And Visually Impaired (not included in submission 3)' as description UNION
				SELECT v_namespace AS namespace,'71' as codevalue,'Texas School For The Deaf' as shortdescription,'Texas School For The Deaf' as description UNION
				SELECT v_namespace AS namespace,'41' as codevalue,'Resource Room/Services Less than 21%' as shortdescription,'Resource Room/Services Less than 21%' as description UNION
				SELECT v_namespace AS namespace,'42' as codevalue,'Resource Room/Services At Least 21% and Less than 50%' as shortdescription,'Resource Room/Services At Least 21% and Less than 50%' as description UNION
				SELECT v_namespace AS namespace,'43' as codevalue,'Self-Cont, Mild/Mod/Severe, Reg Camp At Least 50% and No More than 60%' as shortdescription,'Self-Contained, Mild/Moderate/Severe, Regular Campus At Least 50% and No More than 60%' as description UNION
				SELECT v_namespace AS namespace,'44' as codevalue,'Self-Contained, Mild/Moderate/Severe, Regular Campus More than 60%' as shortdescription,'Self-Contained, Mild/Moderate/Severe, Regular Campus More than 60%' as description UNION
				SELECT v_namespace AS namespace,'45' as codevalue,'Full-Time Early Childhood Special Education Setting ' as shortdescription,'Full-Time Early Childhood Special Education Setting (appropriate only for students 3 - 5 years of age)' as description UNION
				SELECT v_namespace AS namespace,'81' as codevalue,'Residential Care And Treatment Facility Mainstream' as shortdescription,'Residential Care And Treatment Facility Mainstream' as description UNION
				SELECT v_namespace AS namespace,'82' as codevalue,'Res Care Treat Facility - Resource Room/Services Less than 21%' as shortdescription,'Residential Care And Treatment Facility - Resource Room/Services Less than 21%' as description UNION
				SELECT v_namespace AS namespace,'83' as codevalue,'Res Care Treat Facility - Resource Room/Svcs At Least 21% and Less than 50%' as shortdescription,'Residential Care And Treatment Facility - Resource Room/Services At Least 21% and Less than 50%' as description UNION
				SELECT v_namespace AS namespace,'84' as codevalue,'Res Care Treat Fac Self-Cont Mild/Mod/Sev Reg Camp  Min 50% and No More 60%' as shortdescription,'Residential Care And Treatment Facility - Self-Contained, Mild/Moderate/ Severe, Regular Campus At Least 50% and No More than 60%' as description UNION
				SELECT v_namespace AS namespace,'85' as codevalue,'Res Care Treat Facility Self-Contain Mild/Mod/ Severe Reg Camp More 60%' as shortdescription,'Residential Care And Treatment Facility - Self-Contained, Mild/Moderate/ Severe, Regular Campus More than 60%' as description UNION
				SELECT v_namespace AS namespace,'86' as codevalue,'Residential Care And Treatment Facility Separate Campus' as shortdescription,'Residential Care And Treatment Facility Separate Campus' as description UNION
				SELECT v_namespace AS namespace,'87' as codevalue,'Residential Care And Treatment Facility - Community Class' as shortdescription,'Residential Care And Treatment Facility - Community Class' as description UNION
				SELECT v_namespace AS namespace,'88' as codevalue,'Residential Care And Treatment Facility - Voc Adjustment Class/Program' as shortdescription,'Residential Care And Treatment Facility - Vocational Adjustment Class/Program' as description UNION
				SELECT v_namespace AS namespace,'89' as codevalue,'Residential Care Treatment Facility - Full-Time ECSE Setting' as shortdescription,'Residential Care And Treatment Facility - Full-Time Early Childhood Special Education Setting (appropriate only for students 3 - 5 years of age)' as description UNION
				SELECT v_namespace AS namespace,'91' as codevalue,'Off Home Campus Mainstream' as shortdescription,'Off Home Campus Mainstream' as description UNION
				SELECT v_namespace AS namespace,'92' as codevalue,'Off HM Campus Resource Room/Services Less than 21%' as shortdescription,'Off Home Campus - Resource Room/Services Less than 21%' as description UNION
				SELECT v_namespace AS namespace,'93' as codevalue,'Off HM Campus Resource Room/Services At Least 21% and Less than 50%' as shortdescription,'Off Home Campus - Resource Room/Services At Least 21% and Less than 50%' as description UNION
				SELECT v_namespace AS namespace,'94' as codevalue,'Off HM Camp Self-Contain Mild/Mod/Severe Reg Camp At Least 50% No More 60%' as shortdescription,'Off Home Campus - Self-Contained, Mild/Moderate/Severe, Regular Campus At Least 50% and No More than 60%' as description UNION
				SELECT v_namespace AS namespace,'95' as codevalue,'Off HM Campus Self-Contain Mild/Moderate/Severe Reg Campus More than 60%' as shortdescription,'Off Home Campus - Self-Contained, Mild/Moderate/Severe, Regular Campus More than 60%' as description UNION
				SELECT v_namespace AS namespace,'96' as codevalue,'Off Home Campus Separate Campus' as shortdescription,'Off Home Campus Separate Campus' as description UNION
				SELECT v_namespace AS namespace,'97' as codevalue,'Off Home Campus Community Class' as shortdescription,'Off Home Campus Community Class' as description UNION
				SELECT v_namespace AS namespace,'98' as codevalue,'Off Home Campus - Full-Time Early Childhood Special Education Setting' as shortdescription,'Off Home Campus - Full-Time Early Childhood Special Education Setting (appropriate only for students 3 - 5 years of age)' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end; 
begin
   
    -- SSAType
    v_descriptor := 'SSAType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'SSATYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'01' as codevalue,'Adult Basic Education' as shortdescription,'Adult Basic Education' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'Bilingual/English As A Second Language' as shortdescription,'Bilingual/English As A Second Language' as description UNION
				SELECT v_namespace AS namespace,'03' as codevalue,'Community Education' as shortdescription,'Community Education' as description UNION
				SELECT v_namespace AS namespace,'04' as codevalue,'Compensatory Or Remedial Education' as shortdescription,'Compensatory Or Remedial Education' as description UNION
				SELECT v_namespace AS namespace,'05' as codevalue,'Gifted and Talented' as shortdescription,'Gifted and Talented' as description UNION
				SELECT v_namespace AS namespace,'06' as codevalue,'Instructional Or Support Services' as shortdescription,'Instructional Or Support Services' as description UNION
				SELECT v_namespace AS namespace,'07' as codevalue,'Migrant Education' as shortdescription,'Migrant Education' as description UNION
				SELECT v_namespace AS namespace,'09' as codevalue,'Career And Technical Education' as shortdescription,'Career And Technical Education' as description UNION
				SELECT v_namespace AS namespace,'10' as codevalue,'Regional Day School Program For The Deaf (RDSPD)' as shortdescription,'Regional Day School Program For The Deaf (RDSPD)' as description UNION
				SELECT v_namespace AS namespace,'11' as codevalue,'SPED (other than Regional Day School for the Deaf or Visually Impaired)' as shortdescription,'Special Education (other than Regional Day School for the Deaf or Visually Impaired)' as description UNION
				SELECT v_namespace AS namespace,'12' as codevalue,'Visually Impaired' as shortdescription,'Visually Impaired' as description UNION
				SELECT v_namespace AS namespace,'13' as codevalue,'Purchasing' as shortdescription,'Purchasing' as description UNION
				SELECT v_namespace AS namespace,'14' as codevalue,'Personnel Services' as shortdescription,'Personnel Services' as description UNION
				SELECT v_namespace AS namespace,'15' as codevalue,'Drug Free Schools' as shortdescription,'Drug Free Schools' as description UNION
				SELECT v_namespace AS namespace,'16' as codevalue,'Driver Education' as shortdescription,'Driver Education' as description UNION
				SELECT v_namespace AS namespace,'17' as codevalue,'Data Processing' as shortdescription,'Data Processing' as description UNION
				SELECT v_namespace AS namespace,'18' as codevalue,'Accounting/Bookkeeping' as shortdescription,'Accounting/Bookkeeping' as description UNION
				SELECT v_namespace AS namespace,'19' as codevalue,'Transportation' as shortdescription,'Transportation' as description UNION
				SELECT v_namespace AS namespace,'20' as codevalue,'Printing' as shortdescription,'Printing' as description UNION
				SELECT v_namespace AS namespace,'21' as codevalue,'Administrative Support' as shortdescription,'Administrative Support' as description UNION
				SELECT v_namespace AS namespace,'23' as codevalue,'Disciplinary Alternative Education Program (TEC §37.008)' as shortdescription,'Disciplinary Alternative Education Program (TEC §37.008)' as description UNION
				SELECT v_namespace AS namespace,'24' as codevalue,'Alternative Education (Non-disciplinary) (TEC §29.081)' as shortdescription,'Alternative Education (Non-disciplinary) (TEC §29.081)' as description UNION
				SELECT v_namespace AS namespace,'25' as codevalue,'Pregnancy Education and Parenting Program (PEP)' as shortdescription,'Pregnancy Education and Parenting Program (PEP)' as description UNION
				SELECT v_namespace AS namespace,'26' as codevalue,'Utilities' as shortdescription,'Utilities' as description UNION
				SELECT v_namespace AS namespace,'27' as codevalue,'Internet And Network Services' as shortdescription,'Internet And Network Services' as description UNION
				SELECT v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- StaffIdentificationSystem;
    v_descriptor := 'StaffIdentificationSystem';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'STAFFIDENTIFICATIONSYSTEMDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'06' as codevalue,'District' as shortdescription,'District' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'State' as shortdescription,'State' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- StaffType;
    v_descriptor := 'StaffType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'STAFFTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'1' as codevalue,'School District Or Charter School Employee' as shortdescription,'School District Or Charter School Employee' as description UNION 
             SELECT v_namespace AS namespace,'3' as codevalue,'Contracted Professional Staff' as shortdescription,'Contracted Professional Staff (Instructional and Non-Instructional with ROLE-ID in C021 table)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- StateAbbreviation;
    v_descriptor := 'StateAbbreviation';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'STATEABBREVIATIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'AA' as shortdescription,'Armed Forces Americas' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'AE' as shortdescription,'Armed Forces Europe, the Middle East, and Canada' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'AK' as shortdescription,'Alaska' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'AL' as shortdescription,'Alabama' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'AP' as shortdescription,'Armed Forces Pacific' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'AR' as shortdescription,'Arkansas' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'AS' as shortdescription,'American Samoa' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'AZ' as shortdescription,'Arizona' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'CA' as shortdescription,'California' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'CO' as shortdescription,'Colorado' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'CT' as shortdescription,'Connecticut' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'DC' as shortdescription,'District of Columbia' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'DE' as shortdescription,'Delaware' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'FL' as shortdescription,'Florida' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'FM' as shortdescription,'Federated States of Micronesia' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'GA' as shortdescription,'Georgia' as description UNION 
             SELECT v_namespace AS namespace,'17' as codevalue,'GU' as shortdescription,'Guam' as description UNION 
             SELECT v_namespace AS namespace,'18' as codevalue,'HI' as shortdescription,'Hawaii' as description UNION 
             SELECT v_namespace AS namespace,'19' as codevalue,'IA' as shortdescription,'Iowa' as description UNION 
             SELECT v_namespace AS namespace,'20' as codevalue,'ID' as shortdescription,'Idaho' as description UNION 
             SELECT v_namespace AS namespace,'21' as codevalue,'IL' as shortdescription,'Illinois' as description UNION 
             SELECT v_namespace AS namespace,'22' as codevalue,'IN' as shortdescription,'Indiana' as description UNION 
             SELECT v_namespace AS namespace,'23' as codevalue,'KS' as shortdescription,'Kansas' as description UNION 
             SELECT v_namespace AS namespace,'24' as codevalue,'KY' as shortdescription,'Kentucky' as description UNION 
             SELECT v_namespace AS namespace,'25' as codevalue,'LA' as shortdescription,'Louisiana' as description UNION 
             SELECT v_namespace AS namespace,'26' as codevalue,'MA' as shortdescription,'Massachusetts' as description UNION 
             SELECT v_namespace AS namespace,'27' as codevalue,'MD' as shortdescription,'Maryland' as description UNION 
             SELECT v_namespace AS namespace,'28' as codevalue,'ME' as shortdescription,'Maine' as description UNION 
             SELECT v_namespace AS namespace,'29' as codevalue,'MH' as shortdescription,'Marshall Islands' as description UNION 
             SELECT v_namespace AS namespace,'30' as codevalue,'MI' as shortdescription,'Michigan' as description UNION 
             SELECT v_namespace AS namespace,'31' as codevalue,'MN' as shortdescription,'Minnesota' as description UNION 
             SELECT v_namespace AS namespace,'32' as codevalue,'MO' as shortdescription,'Missouri' as description UNION 
             SELECT v_namespace AS namespace,'33' as codevalue,'MP' as shortdescription,'Northern Mariana Islands' as description UNION 
             SELECT v_namespace AS namespace,'34' as codevalue,'MS' as shortdescription,'Mississippi' as description UNION 
             SELECT v_namespace AS namespace,'35' as codevalue,'MT' as shortdescription,'Montana' as description UNION 
             SELECT v_namespace AS namespace,'36' as codevalue,'NC' as shortdescription,'North Carolina' as description UNION 
             SELECT v_namespace AS namespace,'37' as codevalue,'ND' as shortdescription,'North Dakota' as description UNION 
             SELECT v_namespace AS namespace,'38' as codevalue,'NE' as shortdescription,'Nebraska' as description UNION 
             SELECT v_namespace AS namespace,'39' as codevalue,'NH' as shortdescription,'New Hampshire' as description UNION 
             SELECT v_namespace AS namespace,'40' as codevalue,'NJ' as shortdescription,'New Jersey' as description UNION 
             SELECT v_namespace AS namespace,'41' as codevalue,'NM' as shortdescription,'New Mexico' as description UNION 
             SELECT v_namespace AS namespace,'42' as codevalue,'NV' as shortdescription,'Nevada' as description UNION 
             SELECT v_namespace AS namespace,'43' as codevalue,'OH' as shortdescription,'Ohio' as description UNION 
             SELECT v_namespace AS namespace,'44' as codevalue,'OK' as shortdescription,'Oklahoma' as description UNION 
             SELECT v_namespace AS namespace,'45' as codevalue,'OR' as shortdescription,'Oregon' as description UNION 
             SELECT v_namespace AS namespace,'46' as codevalue,'PA' as shortdescription,'Pennsylvania' as description UNION 
             SELECT v_namespace AS namespace,'47' as codevalue,'PR' as shortdescription,'Puerto Rico' as description UNION 
             SELECT v_namespace AS namespace,'48' as codevalue,'PW' as shortdescription,'Palau' as description UNION 
             SELECT v_namespace AS namespace,'49' as codevalue,'RI' as shortdescription,'Rhode Island' as description UNION 
             SELECT v_namespace AS namespace,'50' as codevalue,'SC' as shortdescription,'South Carolina' as description UNION 
             SELECT v_namespace AS namespace,'51' as codevalue,'SD' as shortdescription,'South Dakota' as description UNION 
             SELECT v_namespace AS namespace,'52' as codevalue,'TN' as shortdescription,'Tennessee' as description UNION 
             SELECT v_namespace AS namespace,'53' as codevalue,'TX' as shortdescription,'Texas' as description UNION 
             SELECT v_namespace AS namespace,'54' as codevalue,'UT' as shortdescription,'Utah' as description UNION 
             SELECT v_namespace AS namespace,'55' as codevalue,'VA' as shortdescription,'Virginia' as description UNION 
             SELECT v_namespace AS namespace,'56' as codevalue,'VI' as shortdescription,'Virgin Islands' as description UNION 
             SELECT v_namespace AS namespace,'57' as codevalue,'VT' as shortdescription,'Vermont' as description UNION 
             SELECT v_namespace AS namespace,'58' as codevalue,'WA' as shortdescription,'Washington' as description UNION 
             SELECT v_namespace AS namespace,'59' as codevalue,'WI' as shortdescription,'Wisconsin' as description UNION 
             SELECT v_namespace AS namespace,'60' as codevalue,'WV' as shortdescription,'West Virginia' as description UNION 
             SELECT v_namespace AS namespace,'61' as codevalue,'WY' as shortdescription,'Wyoming' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin   
    -- StudentAttribution;
    v_descriptor := 'StudentAttribution';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'STUDENTATTRIBUTIONDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
				SELECT v_namespace AS namespace,'00' as codevalue,'No Attribution' as shortdescription,'No Attribution' as description UNION
				SELECT v_namespace AS namespace,'01' as codevalue,'Open Enrollment Charter School: Within Attendance/Geographic Boundaries' as shortdescription,'Open Enrollment Charter School: Within Attendance/Geographic Boundaries' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'Juvenile Justice Alternative Education Program (JJAEP) TEC 37.011' as shortdescription,'Juvenile Justice Alternative Education Program (JJAEP) TEC 37.011' as description UNION
				SELECT v_namespace AS namespace,'03' as codevalue,'Public Education Grant (PEG) Program' as shortdescription,'Public Education Grant (PEG) Program' as description UNION
				SELECT v_namespace AS namespace,'06' as codevalue,'Transfer Between Public School Districts' as shortdescription,'Transfer Between Public School Districts' as description UNION
				SELECT v_namespace AS namespace,'07' as codevalue,'Lives Out-Of-State' as shortdescription,'Lives Out-Of-State' as description UNION
				SELECT v_namespace AS namespace,'10' as codevalue,'Parent Referral To The Texas School For The Deaf (TSD) (For TSD Use Only)' as shortdescription,'Parent Referral To The Texas School For The Deaf (TSD) (For TSD Use Only)' as description UNION
				SELECT v_namespace AS namespace,'12' as codevalue,'Private School' as shortdescription,'Private School: Student with a disability enrolled by their parent(s) in a private school (include a home school) receives sped and/or related services from the LEA under an individualized services plan.  For Special Education Use Only' as description UNION
				SELECT v_namespace AS namespace,'21' as codevalue,'Residential Facility By Court Order, Not Reg Assigned To The District' as shortdescription,'Student lives in the district being served in facility but prior to placement, student lived outside district and not regularly assigned to the district. Student is being served in the district , student is in a res treat facility by court order.' as description UNION
				SELECT v_namespace AS namespace,'22' as codevalue,'Residential Facility By Court Order, Reg Assigned To The District' as shortdescription,'Student is regularly assigned to the district and is being served in a residential treatment facility. The student was court-ordered into the facility' as description UNION
				SELECT v_namespace AS namespace,'23' as codevalue,'Residential Facility Not Court Order, Not Reg Assigned To The District' as shortdescription,'Student lives in the district being served in facility but prior to placement, student lived outside district and not regularly assigned to the district. Student is being served in the district, student is in a res treat facility not by court order.' as description UNION
				SELECT v_namespace AS namespace,'24' as codevalue,'Residential Facility Not Court Order, Reg Assigned To The District' as shortdescription,'Student is regularly assigned to the district and is being served in a residential treatment facility. The student was not court-ordered into the facility' as description UNION
				SELECT v_namespace AS namespace,'25' as codevalue,'TJJD Facility Court Order, Not Reg Assign To The District' as shortdescription,'Student lives in the district being served in facility but prior to placement, student lived outside district and not regularly assigned to the district. Student is being served in the district, student is in the facility by court order.' as description UNION
				SELECT v_namespace AS namespace,'26' as codevalue,'TJJD Facility Court Order, Reg Assign To The District' as shortdescription,'Student is regularly assigned to the district and is being served in the facility.  The student was court-ordered into the facility.' as description UNION
				SELECT v_namespace AS namespace,'27' as codevalue,'TJJD Facility Not By Court Order, Not Reg Assigned To The District' as shortdescription,'Student lives in the district being served in facility but prior to placement, student lived outside district and not regularly assigned to the district. Student is being served in the district, student is in the facility by not court order.' as description UNION
				SELECT v_namespace AS namespace,'28' as codevalue,'TJJD Facility Not By Court Order, Reg Assign To The District' as shortdescription,'Student is regularly assigned to the district and is being served in the facility.  The student was not court-ordered into the facility.' as description UNION
				SELECT v_namespace AS namespace,'29' as codevalue,'South Texas ISD (For South Texas ISD Use Only)' as shortdescription,'South Texas ISD (For South Texas ISD Use Only)' as description UNION
				SELECT v_namespace AS namespace,'30' as codevalue,'Child of Charter School Employee' as shortdescription,'Child of Charter School Employee' as description UNION
				SELECT v_namespace AS namespace,'32' as codevalue,'Student-Initiated Transfer Due To Remote Learning' as shortdescription,'Student-Initiated Transfer Due To Remote Learning' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;  
 begin
   
    -- StudentCharacteristic;
    v_descriptor := 'StudentCharacteristic';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'STUDENTCHARACTERISTICDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (                           
             	SELECT v_namespace AS namespace,'01' as codevalue,'At Risk' as shortdescription,'At Risk' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'Immigrant' as shortdescription,'Immigrant' as description UNION
				SELECT v_namespace AS namespace,'03' as codevalue,'Migrant' as shortdescription,'Migrant' as description UNION
				SELECT v_namespace AS namespace,'04' as codevalue,'Dyslexia Indicator' as shortdescription,'Dyslexia Indicator' as description UNION
				SELECT v_namespace AS namespace,'05' as codevalue,'T-Stem Indicator' as shortdescription,'T-Stem Indicator' as description UNION
				SELECT v_namespace AS namespace,'06' as codevalue,'ECHS Indicator' as shortdescription,'ECHS Indicator' as description UNION
				SELECT v_namespace AS namespace,'07' as codevalue,'P-Tech Indicator' as shortdescription,'P-Tech Indicator' as description UNION
				SELECT v_namespace AS namespace,'08' as codevalue,'New Tech Indicator' as shortdescription,'New Tech Indicator' as description UNION
				SELECT v_namespace AS namespace,'09' as codevalue,'IEP Continuer Indicator' as shortdescription,'IEP Continuer Indicator' as description UNION
				SELECT v_namespace AS namespace,'10' as codevalue,'Star Of Texas Indicator' as shortdescription,'Star Of Texas Indicator' as description UNION
				SELECT v_namespace AS namespace,'11' as codevalue,'PK Eligible Prior Year Indicator' as shortdescription,'PK Eligible Prior Year Indicator' as description UNION
				SELECT v_namespace AS namespace,'12' as codevalue,'Section 504 Indicator' as shortdescription,'Section 504 Indicator' as description UNION
				SELECT v_namespace AS namespace,'13' as codevalue,'Intervention Strategy Indicator' as shortdescription,'Intervention Strategy Indicator' as description UNION
				SELECT v_namespace AS namespace,'14' as codevalue,'Pregnancy Related Services' as shortdescription,'Pregnancy Related Services' as description UNION
				SELECT v_namespace AS namespace,'15' as codevalue,'Gifted and Talented Indicator' as shortdescription,'Gifted and Talented Indicator' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- StudentIdentificationSystem;
    v_descriptor := 'StudentIdentificationSystem';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'STUDENTIDENTIFICATIONSYSTEMDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
				SELECT v_namespace AS namespace,'05' as codevalue,'Local' as shortdescription,'Local' as description UNION
				SELECT v_namespace AS namespace,'09' as codevalue,'SSN' as shortdescription,'SSN' as description UNION
				SELECT v_namespace AS namespace,'10' as codevalue,'State' as shortdescription,'State' as description 
				),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- TeacherIncentiveAllotmentDesignationCode;
    v_descriptor := 'TeacherIncentiveAllotmentDesignationCode';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'TEACHERINCENTIVEALLOTMENTDESIGNATIONCODEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
				SELECT v_namespace AS namespace,'01' as codevalue,'Active National Board-Certified Teacher' as shortdescription,'Active National Board-Certified Teacher' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'Active Teacher Incentive Allotment Designation' as shortdescription,'Active Teacher Incentive Allotment Designation' as description UNION
				SELECT v_namespace AS namespace,'03' as codevalue,'LEA Submitted Designation Pending' as shortdescription,'LEA Submitted Designation Pending' as description
				),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- TelephoneNumberType;
    v_descriptor := 'TelephoneNumberType';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'TELEPHONENUMBERTYPEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Fax' as shortdescription,'Fax' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Home' as shortdescription,'Home' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Mobile' as shortdescription,'Mobile' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Unlisted' as shortdescription,'Unlisted' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Work' as shortdescription,'Work' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Emergency 1' as shortdescription,'Emergency 1' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Emergency 2' as shortdescription,'Emergency 2' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- Term;
    v_descriptor := 'Term';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'TERMDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Fall Semester' as shortdescription,'Fall Semester' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Spring Semester' as shortdescription,'Spring Semester' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Summer Semester' as shortdescription,'Summer Semester' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Semester' as shortdescription,'Semester' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'First Quarter' as shortdescription,'First Quarter' as description UNION 
             SELECT v_namespace AS namespace,'06' as codevalue,'Second Quarter' as shortdescription,'Second Quarter' as description UNION 
             SELECT v_namespace AS namespace,'07' as codevalue,'Third Quarter' as shortdescription,'Third Quarter' as description UNION 
             SELECT v_namespace AS namespace,'08' as codevalue,'Fourth Quarter' as shortdescription,'Fourth Quarter' as description UNION 
             SELECT v_namespace AS namespace,'09' as codevalue,'First Trimester' as shortdescription,'First Trimester' as description UNION 
             SELECT v_namespace AS namespace,'10' as codevalue,'Second Trimester' as shortdescription,'Second Trimester' as description UNION 
             SELECT v_namespace AS namespace,'11' as codevalue,'Third Trimester' as shortdescription,'Third Trimester' as description UNION 
             SELECT v_namespace AS namespace,'12' as codevalue,'Trimester' as shortdescription,'Trimester' as description UNION 
             SELECT v_namespace AS namespace,'13' as codevalue,'Quarter' as shortdescription,'Quarter' as description UNION 
             SELECT v_namespace AS namespace,'14' as codevalue,'MiniTerm' as shortdescription,'MiniTerm' as description UNION 
             SELECT v_namespace AS namespace,'15' as codevalue,'Year Round' as shortdescription,'Year Round' as description UNION 
             SELECT v_namespace AS namespace,'16' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- TitleIPartAParticipant;
    v_descriptor := 'TitleIPartAParticipant';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'TITLEIPARTAPARTICIPANTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Student Attends School Not Designated As Title I, Pt A and Rec No Services' as shortdescription,'The Student Attends A School That Is Not Designated By The District As A Title I, Part A School And The Student Does Not Receive Any Services Funded By Title I, Part A, Or The Student Attends A Title I, Part A Targeted Assistance School, But Does Not Presently Participate In Services Funded By Title I, Part A And Has Not Previously Participated In Title I, Part A Services At The School In Which The Student Is Currently Enrolled' as description UNION 
             SELECT v_namespace AS namespace,'A' as codevalue,'Reside in Facility for Neglected, Attend Non-Title I Cmps. Rec Title I SVC' as shortdescription,'Reside in Facility for Neglected, Attend Non-Title I Cmps Rec Title I SVC' as description UNION 
             SELECT v_namespace AS namespace,'6' as codevalue,'Attends A Title I, Part A Schoolwide Program School.' as shortdescription,'The Student Attends A Title I, Part A Schoolwide Program School.' as description UNION 
             SELECT v_namespace AS namespace,'7' as codevalue,'Attend Title I, Part A Targeted School Par Title I, Part A Prgm Services.' as shortdescription,'The Student Attends A Title I, Part A Targeted Assistance School And Participates In Title I, Part A Programs And/Or Services.' as description UNION 
             SELECT v_namespace AS namespace,'8' as codevalue,'Attend Title I Pt A Targeted School No Par Title I, Part A Prgm Prev Par' as shortdescription,'The Student Attends A Title I, Part A Targeted Assistance School And Does Not Currently Participate In Title I, Part A Programs And/Or Services, But Previously Participated In Title I, Part A Programs And/Or Services At This School.' as description UNION 
             SELECT v_namespace AS namespace,'9' as codevalue,'Student Attends School Not Designated As Title I, Rec SVCs Because Homeless' as shortdescription,'Student Attends School Not Designated As Title I, Rec SVCs Because Homeless' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- TitleOfAssessment;
    v_descriptor := 'TitleOfAssessment';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'TITLEOFASSESSMENTDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             	SELECT v_namespace AS namespace,'01' as codevalue,'BOY KG TX-KEA English' as shortdescription,'BOY KG TX-KEA English' as description UNION
				SELECT v_namespace AS namespace,'02' as codevalue,'BOY KG TX-KEA Spanish' as shortdescription,'BOY KG TX-KEA Spanish' as description UNION
				SELECT v_namespace AS namespace,'1A' as codevalue,'BOY KG mCLASS TX Assessment' as shortdescription,'BOY KG mCLASS TX Assessment' as description UNION
				SELECT v_namespace AS namespace,'2A' as codevalue,'BOY KG mCLASS TX Assessment Espanol' as shortdescription,'BOY KG mCLASS TX Assessment Espanol' as description UNION
				SELECT v_namespace AS namespace,'51' as codevalue,'BOY PK CIRCLE CLI English' as shortdescription,'BOY PK CIRCLE CLI English' as description UNION
				SELECT v_namespace AS namespace,'52' as codevalue,'BOY PK CIRCLE CLI Spanish' as shortdescription,'BOY PK CIRCLE CLI Spanish' as description UNION
				SELECT v_namespace AS namespace,'53' as codevalue,'BOY PK CIRCLE LS English' as shortdescription,'BOY PK CIRCLE LS English' as description UNION
				SELECT v_namespace AS namespace,'54' as codevalue,'BOY PK CIRCLE LS Spanish' as shortdescription,'BOY PK CIRCLE LS Spanish' as description UNION
				SELECT v_namespace AS namespace,'55' as codevalue,'BOY PK DIAL-4 English' as shortdescription,'BOY PK DIAL-4 English' as description UNION
				SELECT v_namespace AS namespace,'56' as codevalue,'BOY PK DIAL-4 Spanish' as shortdescription,'BOY PK DIAL-4 Spanish' as description UNION
				SELECT v_namespace AS namespace,'59' as codevalue,'BOY PK Ready, Set,K! English' as shortdescription,'BOY PK Ready, Set,K! English' as description UNION
				SELECT v_namespace AS namespace,'60' as codevalue,'BOY PK Ready, Set,K! Spanish' as shortdescription,'BOY PK Ready, Set,K! Spanish' as description UNION
				SELECT v_namespace AS namespace,'61' as codevalue,'BOY PK GOLD English' as shortdescription,'BOY PK GOLD English' as description UNION
				SELECT v_namespace AS namespace,'62' as codevalue,'BOY PK GOLD Spanish' as shortdescription,'BOY PK GOLD Spanish' as description UNION
				SELECT v_namespace AS namespace,'63' as codevalue,'BOY PK Frog Street Assessment English' as shortdescription,'BOY PK Frog Street Assessment English' as description UNION
				SELECT v_namespace AS namespace,'64' as codevalue,'BOY PK Frog Street Assessment Spanish' as shortdescription,'BOY PK Frog Street Assessment Spanish' as description UNION
				SELECT v_namespace AS namespace,'65' as codevalue,'BOY PK LAP-3 English' as shortdescription,'BOY PK LAP-3 English' as description UNION
				SELECT v_namespace AS namespace,'66' as codevalue,'BOY PK BASC-3 BESS English' as shortdescription,'BOY PK BASC-3 BESS English' as description UNION
				SELECT v_namespace AS namespace,'67' as codevalue,'BOY PK BASC-3 BESS Spanish' as shortdescription,'BOY PK BASC-3 BESS Spanish' as description UNION
				SELECT v_namespace AS namespace,'68' as codevalue,'BOY PK ISIP - Early Reading English' as shortdescription,'BOY PK ISIP - Early Reading English' as description UNION
				SELECT v_namespace AS namespace,'69' as codevalue,'EOY PK CIRCLE CLI English' as shortdescription,'EOY PK CIRCLE CLI English' as description UNION
				SELECT v_namespace AS namespace,'70' as codevalue,'EOY PK CIRCLE CLI Spanish' as shortdescription,'EOY PK CIRCLE CLI Spanish' as description UNION
				SELECT v_namespace AS namespace,'71' as codevalue,'EOY PK CIRCLE LS English' as shortdescription,'EOY PK CIRCLE LS English' as description UNION
				SELECT v_namespace AS namespace,'72' as codevalue,'EOY PK CIRCLE LS Spanish' as shortdescription,'EOY PK CIRCLE LS Spanish' as description UNION
				SELECT v_namespace AS namespace,'73' as codevalue,'EOY PK DIAL-4 English' as shortdescription,'EOY PK DIAL-4 English' as description UNION
				SELECT v_namespace AS namespace,'74' as codevalue,'EOY PK DIAL-4 Spanish' as shortdescription,'EOY PK DIAL-4 Spanish' as description UNION
				SELECT v_namespace AS namespace,'77' as codevalue,'EOY PK Ready, Set,K! English' as shortdescription,'EOY PK Ready, Set,K! English' as description UNION
				SELECT v_namespace AS namespace,'78' as codevalue,'EOY PK Ready, Set,K! Spanish' as shortdescription,'EOY PK Ready, Set,K! Spanish' as description UNION
				SELECT v_namespace AS namespace,'79' as codevalue,'EOY PK GOLD English' as shortdescription,'EOY PK GOLD English' as description UNION
				SELECT v_namespace AS namespace,'80' as codevalue,'EOY PK GOLD Spanish' as shortdescription,'EOY PK GOLD Spanish' as description UNION
				SELECT v_namespace AS namespace,'81' as codevalue,'EOY PK Frog Street Assessment English' as shortdescription,'EOY PK Frog Street Assessment English' as description UNION
				SELECT v_namespace AS namespace,'82' as codevalue,'EOY PK Frog Street Assessment Spanish' as shortdescription,'EOY PK Frog Street Assessment Spanish' as description UNION
				SELECT v_namespace AS namespace,'83' as codevalue,'EOY PK LAP-3 English' as shortdescription,'EOY PK LAP-3 English' as description UNION
				SELECT v_namespace AS namespace,'84' as codevalue,'EOY PK BASC-3 BESS English' as shortdescription,'EOY PK BASC-3 BESS English' as description UNION
				SELECT v_namespace AS namespace,'85' as codevalue,'EOY PK BASC-3 BESS Spanish' as shortdescription,'EOY PK BASC-3 BESS Spanish' as description UNION
				SELECT v_namespace AS namespace,'86' as codevalue,'EOY PK ISIP - Early Reading English' as shortdescription,'EOY PK ISIP - Early Reading English' as description
             ),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- ToolOrAssessmentUsed;
    v_descriptor := 'ToolOrAssessmentUsed';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'TOOLORASSESSMENTUSEDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'00' as codevalue,'Not Assessed' as shortdescription,'Not Assessed' as description UNION 
             SELECT v_namespace AS namespace,'01' as codevalue,'Proficiency' as shortdescription,'Proficiency' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Diagnostic' as shortdescription,'Diagnostic' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Achievement' as shortdescription,'Achievement' as description UNION 
             SELECT v_namespace AS namespace,'04' as codevalue,'Rubric' as shortdescription,'Rubric' as description UNION 
             SELECT v_namespace AS namespace,'05' as codevalue,'Other' as shortdescription,'Other' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
begin
   
    -- Truancy;
    v_descriptor := 'Truancy';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'TRUANCYDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'01' as codevalue,'Excessive Unexcused Absences' as shortdescription,'Excessive Unexcused Absences' as description UNION 
             SELECT v_namespace AS namespace,'02' as codevalue,'Truancy Prevention Measurers' as shortdescription,'Truancy Prevention Measurers' as description UNION 
             SELECT v_namespace AS namespace,'03' as codevalue,'Truancy Complaint Filed' as shortdescription,'Truancy Complaint Filed' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- UnaccompaniedYouth;
    v_descriptor := 'UnaccompaniedYouth';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'UNACCOMPANIEDYOUTHDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'3' as codevalue,'Homeless Student In The Physical Custody Of A Parent Or Legal Guardian' as shortdescription,'Homeless student is in the physical custody of a parent or legal guardian (i.e., homeless student is not unaccompanied) for the entire school year.' as description UNION 
             SELECT v_namespace AS namespace,'4' as codevalue,'Homeless Student Not In The Physical Custody Of A Parent Or Legal Guardian' as shortdescription,'Homeless student is not in the physical custody of a parent or legal guardian (i.e., homeless student is unaccompanied) at any time during the school year.' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
 begin
   
    -- UnschooledAsyleeRefugee;
    v_descriptor := 'UnschooledAsyleeRefugee';
    begin
   
       v_err := 'NO';
       select table_schema,table_name 
         into v_table_schema,v_table_name
         from information_Schema.tables
        where upper(table_name) = 'UNSCHOOLEDASYLEEREFUGEEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       v_namespace := v_tx_namespace||v_descriptor||'Descriptor';
       if v_table_name IS NULL then
          v_err := 'NO_DATA';
          RAISE NOTICE 'Table % not found.',v_descriptor;
       end if;
   
    exception
    when NO_DATA_FOUND then
         v_err := 'NO_DATA';
    when others then
      RAISE NOTICE 'Error % in finding object %.',sqlerrm,v_descriptor;
    end;
   
   begin
   IF v_err <> 'NO_DATA' THEN
      WITH res as (
             SELECT v_namespace AS namespace,'0' as codevalue,'Not applicable to this student' as shortdescription,'' as description UNION 
             SELECT v_namespace AS namespace,'1' as codevalue,'Refugee' as shortdescription,'Refugee: Individual who has refugee status as defined by TEC Section 39.027(a-1)' as description UNION 
             SELECT v_namespace AS namespace,'2' as codevalue,'Asylee' as shortdescription,'Asylee: Individual who has been granted asylum as defined by TEC Section 39.027(a-1)' as description),
               upsert as(UPDATE edfi.descriptor op SET codevalue=ip.codevalue, shortdescription=ip.shortdescription, description=ip.description, lastmodifieddate=now(),id=gen_random_uuid(),priordescriptorid=-999 
                      FROM res as ip
                     WHERE upper(op.namespace) = upper(ip.namespace) AND upper(trim(op.codevalue))=upper(trim(ip.codevalue)) RETURNING ip.*)
          INSERT INTO edfi.descriptor (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
          SELECT namespace,codevalue,shortdescription, description, now(),now(),gen_random_uuid(),-999 from res r WHERE NOT EXISTS(SELECT 1 from upsert u WHERE upper(u.namespace) = upper(r.namespace) AND upper(trim(u.shortdescription))=upper(trim(r.shortdescription)));
   
       EXECUTE format ('DELETE FROM '||v_table_schema||'.'||v_table_name||' WHERE '|| v_table_name||'id'||' IN(SELECT descriptorid from edfi.descriptor where namespace=$1 and priordescriptorid=-999)') using v_namespace;
       EXECUTE format ('DELETE FROM edfi.descriptor WHERE namespace='||'$1'||' and priordescriptorid IS NULL') using v_namespace;
       EXECUTE format ('INSERT INTO '||v_table_schema||'.'||v_table_name||' SELECT descriptorid from edfi.descriptor where namespace='||'$1'||' and priordescriptorid=-999 AND descriptorid NOT IN(SELECT '|| v_table_name||'id'||' from '||v_table_schema||'.'||v_table_name||')') using v_namespace;
   END IF;
   exception
   when others then
        RAISE NOTICE 'Error % in insert during % load.',sqlerrm,v_descriptor;
   end;
   
 exception   
 when others then   
      RAISE NOTICE 'Error % in % loading.',sqlerrm,v_descriptor;
 end;
   COMMIT;
   
end descriptor_block $$;
