  DECLARE @v_table_schema varchar(100);
  DECLARE @v_table_name   varchar(100);
  DECLARE @v_namespace    varchar(100);
  DECLARE @v_descriptor   varchar(100);
  DECLARE @v_err          varchar(1000);
  DECLARE @v_del_sql1     varchar(2000);
  DECLARE @v_del_sql2     varchar(2000);
  DECLARE @v_ins          varchar(2000);
  DECLARE @v_tx_namespace varchar(50) = 'uri://tea.texas.gov/';
  SET NOCOUNT ON
begin
 begin
   
    -- AchievementCategory;
    SET @v_descriptor = 'AchievementCategory';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ACHIEVEMENTCATEGORY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,' 01' as codevalue,'Diploma Earned' as shortdescription,'Diploma Earned' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ADAEligibility;
    SET @v_descriptor = 'ADAEligibility';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ADAELIGIBILITY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Enrolled, Not In Membership' as shortdescription,'Enrolled, Not In Membership' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'Eligible For Full Day Attendance' as shortdescription,'Eligible For Full Day Attendance' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Eligible For Half Day Attendance' as shortdescription,'Eligible For Half Day Attendance' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Eligible Transfer Student-Full Day' as shortdescription,'Eligible Transfer Student-Full Day' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Ineligible-Full Day' as shortdescription,'Ineligible-Full Day' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Ineligible-Half Day' as shortdescription,'Ineligible-Half Day' as description UNION 
             SELECT @v_namespace AS namespace,'6' as codevalue,'Eligible Transfer Student-Half Day' as shortdescription,'Eligible Transfer Student-Half Day' as description UNION 
             SELECT @v_namespace AS namespace,'7' as codevalue,'Eligible – Flexible Attendance Program Participation' as shortdescription,'Eligible – Flexible Attendance Program Participation' as description UNION 
             SELECT @v_namespace AS namespace,'8' as codevalue,'Ineligible – Flexible Attendance Program Participation' as shortdescription,'Ineligible – Flexible Attendance Program Participation' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- AddressType;
    SET @v_descriptor = 'AddressType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ADDRESSTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Home' as shortdescription,'Home' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Physical' as shortdescription,'Physical' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Billing' as shortdescription,'Billing' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Mailing' as shortdescription,'Mailing' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Temporary' as shortdescription,'Temporary' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Work' as shortdescription,'Work' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ArmedServicesVocAptBattery;
    SET @v_descriptor = 'ArmedServicesVocAptBattery';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ARMEDSERVICESVOCAPTBATTERY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'District or Open-Enrollment Charter Does Not Offer ASVAB' as shortdescription,'The district or open-enrollment charter school does not offer the Armed Services Vocational Aptitude Battery (ASVAB) test or an alternative career exploration test.' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'District or Open-Enrollment Charter Offers ASVAB' as shortdescription,'The district or open-enrollment charter school offers the Armed Services Vocational Aptitude Battery (ASVAB) test.' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'District or Open-Enrollment Charter Offers Alternative Career Explore Test' as shortdescription,'The district or open-enrollment charter school offers an alternative career exploration test.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- AssessmentResultsObtained;
    SET @v_descriptor = 'AssessmentResultsObtained';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ASSESSMENTRESULTSOBTAINED%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Far Below Expectations' as shortdescription,'Far Below Expectations' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Below Expectations' as shortdescription,'Below Expectations' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Meets Expectations' as shortdescription,'Meets Expectations' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Above Expectations' as shortdescription,'Above Expectations' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Far Above Expectations' as shortdescription,'Far Above Expectations' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'No Results Obtained' as shortdescription,'No Results Obtained' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- AuxiliaryRoleId;
    SET @v_descriptor = 'AuxiliaryRoleId';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%AUXILIARYROLEID%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'201' as codevalue,'Business/Finance' as shortdescription,'Business/Finance (Accounting Clerk, Accounts Payable Clerk, Payroll Clerk, Purchasing Clerk)' as description UNION 
             SELECT @v_namespace AS namespace,'202' as codevalue,'Campus Office/Clerical' as shortdescription,'Campus Office/Clerical (Receptionist, Secretary, Certification Specialist, Bookkeeper, Data Clerk, PEIMS Data Clerk, Registrar)' as description UNION 
             SELECT @v_namespace AS namespace,'203' as codevalue,'Central Office/Clerical' as shortdescription,'Central Office/Clerical (Receptionist, Secretary)' as description UNION 
             SELECT @v_namespace AS namespace,'204' as codevalue,'Child Nutrition' as shortdescription,'Child Nutrition' as description UNION 
             SELECT @v_namespace AS namespace,'205' as codevalue,'Human Resources' as shortdescription,'Human Resources (Certification Specialist, Human Resources Specialist)' as description UNION 
             SELECT @v_namespace AS namespace,'206' as codevalue,'Information Technology' as shortdescription,'Information Technology (Computer Technician, District PEIMS Data Coordinator, Help Desk Technician, Telecommunications Technician)' as description UNION 
             SELECT @v_namespace AS namespace,'207' as codevalue,'Campus Technology Specialist' as shortdescription,'Campus Technology Specialist' as description UNION 
             SELECT @v_namespace AS namespace,'213' as codevalue,'Custodial' as shortdescription,'Custodial – Staff serving in an auxiliary/support role' as description UNION 
             SELECT @v_namespace AS namespace,'214' as codevalue,'Maintenance' as shortdescription,'Maintenance – Staff serving in an auxiliary/support role' as description UNION 
             SELECT @v_namespace AS namespace,'215' as codevalue,'Plumber' as shortdescription,'Plumber' as description UNION 
             SELECT @v_namespace AS namespace,'216' as codevalue,'Painter' as shortdescription,'Painter' as description UNION 
             SELECT @v_namespace AS namespace,'217' as codevalue,'HVAC' as shortdescription,'HVAC' as description UNION 
             SELECT @v_namespace AS namespace,'218' as codevalue,'Electrician' as shortdescription,'Electrician' as description UNION 
             SELECT @v_namespace AS namespace,'219' as codevalue,'Warehouse' as shortdescription,'Warehouse' as description UNION 
             SELECT @v_namespace AS namespace,'220' as codevalue,'Safety/Security' as shortdescription,'Safety/Security' as description UNION 
             SELECT @v_namespace AS namespace,'221' as codevalue,'Transportation' as shortdescription,'Transportation' as description UNION 
             SELECT @v_namespace AS namespace,'222' as codevalue,'Other Non-Exempt Auxiliary' as shortdescription,'Other Non-Exempt Auxiliary (Including Non-Exempt Auxiliary Volunteers)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Behavior;
    SET @v_descriptor = 'Behavior';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%BEHAVIOR%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Permanent Removal By A Teacher From Class' as shortdescription,'Permanent Removal By A Teacher From Class (Teacher has removed the student from classroom and denied the student the right to return. TEC 37.003 has been invoked.) - TEC 37.002(b)' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Conduct Punishable As A Felony' as shortdescription,'Conduct Punishable As A Felony - TEC 37.006(a)(2)(A)' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Possessed, Sold, Used, Or Was Under The Influence Of Marihuana Or Other CS' as shortdescription,'Possessed, Sold, Used, Or Was Under The Influence Of Marihuana Or Other Controlled Substance - TEC 37.006(a)(2)(C) and 37.007(b)' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Possessed, Sold, Used, Or Was Under The Influence Of An Alcoholic Beverage' as shortdescription,'Possessed, Sold, Used, Or Was Under The Influence Of An Alcoholic Beverage - TEC 37.006(a)(2)(D) and 37.007(b)' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Abuse Of A Volatile Chemical' as shortdescription,'Abuse Of A Volatile Chemical - TEC 37.006(a)(2)(E)' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Public Lewdness Or Indecent Exposure' as shortdescription,'Public Lewdness Or Indecent Exposure - TEC 37.006(a)(2)(F)' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Retaliation Against School Employee' as shortdescription,'Retaliation Against School Employee - TEC 37.006(b) and 37.007(d)' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Based On Conduct For Felony Offenses In Title 5, Penal Code' as shortdescription,'Based On Conduct Occurring Off Campus And While The Student Is Not In Attendance At A School-Sponsored Or School-Related Activity For Felony Offenses In Title 5, Penal Code - TEC 37.006(c), TEC 37.007(b)(4), and TEC 37.0081' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Based On Conduct For Felony Offenses Not In Title 5, Penal Code' as shortdescription,'Based On Conduct Occurring Off Campus And While The Student Is Not In Attendance At A School-Sponsored Or School-Related Activity For Felony Offenses Not In Title 5, Penal Code - TEC 37.006(d) and TEC 37.007(b)(4)' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Brought Firearm To School Or Unlawful Carrying Of Handgun Penal Code 46.02' as shortdescription,'Brought a Firearm to School - TEC 37.007(e) or Unlawful Carrying of a Handgun under Penal Code 46.02 - TEC 37.007(a)(1)' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Unlawful Carrying Of A Location-Restricted Knife Under Penal Code 46.02' as shortdescription,'Unlawful Carrying of a Location-Restricted Knife under Penal Code 46.02 - TEC 37.007(a)(1) (Location-Restricted Knife - blade longer than 5.5 inches)' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Elements Of Offense Relating To Prohibited Weapons Under Penal Code 46.05' as shortdescription,'Conduct Containing the Elements of an Offense Relating to Prohibited Weapons under Penal Code 46.05 - TEC 37.007(a)(1)' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Arson' as shortdescription,'Arson - TEC 37.007(a)(2)(B)' as description UNION 
             SELECT @v_namespace AS namespace,'17' as codevalue,'Murder, Capital Murder, Criminal Attempt To Commit Murder Or Capital Murder' as shortdescription,'Murder, Capital Murder, Criminal Attempt To Commit Murder, Or Capital Murder - TEC 37.007(a)(2)(C)' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'Indecency With A Child' as shortdescription,'Indecency With A Child - TEC 37.007(a)(2)(D)' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'Aggravated Kidnapping' as shortdescription,'Aggravated Kidnapping - TEC 37.007(a)(2)(E)' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'Violation Of Stu Code Of Conduct Not Under TEC 37.002(b), 37.006, or 37.007' as shortdescription,'Violation Of Student Code Of Conduct Not Included Under TEC 37.002(b), 37.006, or 37.007' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'Criminal Mischief' as shortdescription,'Criminal Mischief - TEC 37.007(f)' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'Emergency Placement/Expulsion' as shortdescription,'Emergency Placement/Expulsion - TEC 37.019' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'Terroristic Threat' as shortdescription,'Terroristic Threat - TEC 37.006(a)(1) or 37.007(b)' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'Assault Under Penal Code 22.01(a)(1) Against School District Emp/Vol' as shortdescription,'Assault Under Penal Code 22.01(a)(1) Against a school district employee or volunteer - TEC 37.007(b)(2)(C)' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'Assault Under Penal Code 22.01(a)(1) Against Non School District Emp/Vol' as shortdescription,'Assault Under Penal Code 22.01(a)(1) Against someone other than a school district employee or volunteer - TEC 37.006(a)(2)(B)' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'Aggravated Assault Penal Code 22.02 Against School District Emp/Vol' as shortdescription,'Aggravated Assault Under Penal Code 22.02 Against a school district employee or volunteer - TEC 37.007(d)' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'Aggravated Assault Penal Code 22.02 Against Non School District Emp/Vol' as shortdescription,'Aggravated Assault Under Penal Code 22.02 Against someone other than a school district employee or volunteer - TEC 37.007 (a)(2)(A)' as description UNION 
             SELECT @v_namespace AS namespace,'31' as codevalue,'Sexual Aslt PC 22.011 Or Agg Sexual Aslt PC 22.021 Agst Dist Emp/Vol' as shortdescription,'Sexual Assault Under Penal Code 22.011 Or Aggravated Sexual Assault Under Penal Code 22.021 Against a school district employee or volunteer - TEC 37.007(d)' as description UNION 
             SELECT @v_namespace AS namespace,'32' as codevalue,'Sexual Aslt PC 22.011 Or Agg Sexual Aslt PC 22.021 Agst Non Dist Emp/Vol' as shortdescription,'Sexual Assault Under Penal Code 22.011 Or Aggravated Sexual Assault Under Penal Code 22.021 Against someone other than a school district employee or volunteer - TEC 37.007(a)(2)(A)' as description UNION 
             SELECT @v_namespace AS namespace,'35' as codevalue,'False Alarm/False Report' as shortdescription,'False Alarm/False Report - TEC 37.006(a)(1) and 37.007(b)' as description UNION 
             SELECT @v_namespace AS namespace,'36' as codevalue,'Felony Controlled Substance Violation' as shortdescription,'Felony Controlled Substance Violation - TEC 37.007(a)(3)' as description UNION 
             SELECT @v_namespace AS namespace,'37' as codevalue,'Felony Alcohol Violation' as shortdescription,'Felony Alcohol Violation - TEC 37.007(a)(3)' as description UNION 
             SELECT @v_namespace AS namespace,'41' as codevalue,'Fighting/Mutual Combat Excludes All Offenses Under Penal Code 22.01' as shortdescription,'Fighting/Mutual Combat - Excludes all offenses under Penal Code 22.01' as description UNION 
             SELECT @v_namespace AS namespace,'46' as codevalue,'Aggravated Robbery' as shortdescription,'Aggravated Robbery - TEC 37.007(a)(2)(F), TEC 37.007(C)-(D) (HB9680)' as description UNION 
             SELECT @v_namespace AS namespace,'47' as codevalue,'Manslaughter' as shortdescription,'Manslaughter - TEC 37.007(a)(2)(G)' as description UNION 
             SELECT @v_namespace AS namespace,'48' as codevalue,'Criminally Negligent Homicide' as shortdescription,'Criminally Negligent Homicide - TEC 37.007(a)(2)(H)' as description UNION 
             SELECT @v_namespace AS namespace,'49' as codevalue,'Engages In Deadly Conduct' as shortdescription,'Engages In Deadly Conduct - TEC 37.007(b)(3)' as description UNION 
             SELECT @v_namespace AS namespace,'55' as codevalue,'Stu Req To Register As Sex Offender Under Ch 62 Of CCP And Under Court Sup' as shortdescription,'Student Is Required To Register As A Sex Offender Under Chapter 62 Of The Code Of Criminal Procedure And Is Under Court Supervision - TEC 37.304. The offense(s) for which the student is required to register as a sex offender must have occurred on or after Sept. 1, 2007' as description UNION 
             SELECT @v_namespace AS namespace,'56' as codevalue,'Stu Req To Register As Sex Offender Under Ch 62 Of CCP Not Under Court Sup' as shortdescription,'Student Is Required To Register As A Sex Offender Under Chapter 62 Of The Code Of Criminal Procedure And Is Not Under Court Supervision - TEC 37.305. The offense(s) for which the student is required to register as a sex offender must have occurred on or after Sept. 1, 2007' as description UNION 
             SELECT @v_namespace AS namespace,'57' as codevalue,'Continuous Sexual Abuse Of Young Child Or Children Under Penal Code 21.02' as shortdescription,'Continuous Sexual Abuse Of Young Child Or Children Under Penal Code 21.02 Occurring on school property or while attending a school-sponsored or school-related activity on or off school property - TEC 37.007(a) (2) (I)' as description UNION 
             SELECT @v_namespace AS namespace,'58' as codevalue,'Breach of Computer Security' as shortdescription,'Breach of Computer Security - TEC 37.007(a)(5) (HB1224)' as description UNION 
             SELECT @v_namespace AS namespace,'59' as codevalue,'Serious Misbehavior as defined by TEC 37.007(c) while in a DAEP' as shortdescription,'Serious Misbehavior, as defined by TEC 37.007(c), while expelled to/placed in a Disciplinary Alternative Education Program (DAEP)- 
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
             SELECT @v_namespace AS namespace,'60' as codevalue,'Harassment Agst Emp of Sch Dist Under TX PC 42.07(a)(1), (2), (3), or (7)' as shortdescription,'Harassment Against an Employee of the School District under Texas Penal Code 42.07(a)(1), (2), (3), or (7) - TEC 37.006(a)(2)(G)' as description UNION 
             SELECT @v_namespace AS namespace,'61' as codevalue,'Bullying' as shortdescription,'Bullying - TEC 37.0052(b)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CalendarEvent;
    SET @v_descriptor = 'CalendarEvent';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CALENDAREVENT%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Instructional Day' as shortdescription,'Instructional Day' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Waiver Day (replaces student instruction for a whole day)' as shortdescription,'Waiver Day (replaces student instruction for a whole day)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CalendarType;
    SET @v_descriptor = 'CalendarType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CALENDARTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Standard Program 75,600 operation mins' as shortdescription,'Standard Program for school district campus following 75,600 Operational Minutes (Does not include Pre-Kindergarten Programs/Grades)' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Charter after 1/1/2015 or before 1/1/2015 following 75,600 minutes.' as shortdescription,'Charter School campus issued to operate after 1/1/2015 following 75,600 Operational Minutes, or operating before 1/1/2015 and electing to follow 75,600 Operational Minutes (Does not include Pre-Kindergarten Programs/Grades)' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Charter operate before 1/1/2015 and elect 180 day school year calendar.' as shortdescription,'Charter School campus operating before 1/1/2015 and electing to follow a 180 day school year calendar (Includes Pre-Kindergarten Programs/Grades)' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'PK Program 1/2 day for 3-year-old, 1/2 Ineligible 3-4-year-old. No waiver.' as shortdescription,'Pre-Kindergarten Other Programs (including school districts and charter schools approved to operate after January 1, 2015) – Half-day programs for three-year-old students and half-day ineligible three and four-year-old students (no waiver required)' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Dropout Recovery Program/Campus TEC 12.114(c) or TEC 39.0548' as shortdescription,'Dropout Recovery Program/Campus TEC 12.114(c) or TEC 39.0548' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Disciplinary Alternative Education Program/Campus TEC 37.008' as shortdescription,'Disciplinary Alternative Education Program/Campus TEC 37.008' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Correctional Facility Program/Campus (Adult or Juvenile)' as shortdescription,'Correctional Facility Program/Campus (Adult or Juvenile)' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Residential Treatment Facility Program/Campus' as shortdescription,'Residential Treatment Facility Program/Campus' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Day Treatment Facility Program/Campus' as shortdescription,'Day Treatment Facility Program/Campus' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Psychiatric Hospital Program/Campus' as shortdescription,'Psychiatric Hospital Program/Campus' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Medical Hospital Program/Campus' as shortdescription,'Medical Hospital Program/Campus' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Charter School issued under TEC 29.259 (Excel Academy 227-827 Only)' as shortdescription,'Charter School issued under TEC 29.259 (Excel Academy 227-827 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Juvenile Justice Alternative Education Program (JJAEP) TEC 37.011(f)' as shortdescription,'Juvenile Justice Alternative Education Program (JJAEP) TEC 37.011(f)' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Full PK 75,600 (eligible and ineligible 3-4-year-old students)' as shortdescription,'Full-day Prekindergarten Program following 75,600 Operational Minutes (eligible and ineligible three and four-year-old students)' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'1/2 day PK w/waiver 32.400 (District and charter approved after 1-1-2015)' as shortdescription,'Half-day Prekindergarten Program with Waiver following 32,400 Instructional Minutes (including school districts and charter schools approved to operate after January 1, 2015)' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Additional Days School Year Program' as shortdescription,'Additional Days School Year Program' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CalendarWaiverEventType;
    SET @v_descriptor = 'CalendarWaiverEventType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CALENDARWAIVEREVENTTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Staff Development Waiver Day' as shortdescription,'Staff Development Waiver Day' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Missed School Waiver Day' as shortdescription,'Missed School Waiver Day' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Low Attendance Waiver Day' as shortdescription,'Low Attendance Waiver Day' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'JJAEP School Day Waiver Issued by Texas Juvenile Justice Department (TJJD)' as shortdescription,'JJAEP School Day Waiver Issued by Texas Juvenile Justice Department (TJJD)' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other Waiver Day' as shortdescription,'Other Waiver Day' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CampusEnrollmentType;
    SET @v_descriptor = 'CampusEnrollmentType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CAMPUSENROLLMENTTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Zoned School (no transfers accepted)' as shortdescription,'School in which enrollment is based on the student''s home address and transfers are not accepted.' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Zoned School (transfers accepted)' as shortdescription,'A school in which enrollment is based on the student''s home address but transfers of students from other schools or districts are accepted, including the children of district employees. The school may accept inter- and/or intra-district transfers.' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Open Enrollment Charter School' as shortdescription,'A charter school that prioritizes enrollment on the basis of geographic and residency considerations and may consider whether a student has documented history of a criminal offense, a juvenile court adjudication, or discipline problems under Subchapter A, Chapter 37. If an open-enrollment charter school specializing in performing arts, consideration may also be given to whether the student demonstrates artistic ability.' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Selective Enrollment School (Criteria-Based)' as shortdescription,'A school that uses some sort of selective criteria (e.g., student grades, audition, interview, portfolio) for enrollment determinations. Enrollment in these schools may or may not be based on the student''s home address.' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Combined Enrollment Type School' as shortdescription,'A school in which enrollment is based on two or more of these five enrollment types:
- Zoned Enrollment School (no transfers accepted)
- Zoned Enrollment School (transfers accepted)
- Open Enrollment Charter School
- Selective Enrollment School (Criteria-Based)
- Selective Enrollment School (Special Program-Based)
(e.g., a school which houses both a selective enrollment program and a zoned school on the same campus).' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ChildCountFunding;
    SET @v_descriptor = 'ChildCountFunding';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CHILDCOUNTFUNDING%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Not Applicable To This Student' as shortdescription,'Not Applicable To This Student' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'IDEA Amendments of 2004' as shortdescription,'Individuals With Disabilities Education Act (IDEA) Amendments of 2004
[See 34 CFR §300.703(b)]' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ClassroomPosition;
    SET @v_descriptor = 'ClassroomPosition';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CLASSROOMPOSITION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Teacher Of Record' as shortdescription,'Teacher Of Record - Indicates that the teacher is responsible for the classroom, making the final decisions about the instruction delivered and the final outcomes for the students assigned to the class.' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Assistant Teacher' as shortdescription,'Assistant Teacher - Indicates that the teacher is assigned to the class and works with the Teacher of Record providing instruction and/or other instructional services to the students in the class.' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Support Teacher' as shortdescription,'Support Teacher - Indicates that the teacher provides specialized services on a regular or irregular basis to students in the class.' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Substitute Teacher' as shortdescription,'Substitute Teacher - Indicates that the substitute teacher serves in a classroom in the absence of a teacher certified for that assignment where the teacher has quit, died, or been terminated.' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'PK Classroom Aide' as shortdescription,'PK Classroom Aide - Indicates that the Classroom Aide (Role-ID 033) serves the Teacher of Record on a regular or irregular basis in a Pre-Kindergarten classroom.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ClassType;
    SET @v_descriptor = 'ClassType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CLASSTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Regular' as shortdescription,'Regular setting including regular classroom, laboratory, or shop settings.' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Non-Regular' as shortdescription,'Classes designed for In-School Suspension, School-Community Guidance Center, Alternative Education School Program for Discipline, Televised Instruction, Non-disciplinary Alternative Education, or Special Education Setting.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CourseAttemptResult;
    SET @v_descriptor = 'CourseAttemptResult';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%COURSEATTEMPTRESULT%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Course Was Passed And Credit Was Received' as shortdescription,'Course Was Passed And Credit Was Received' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Course Was Failed No Credit Received – 1st Occurrence This School Year' as shortdescription,'Course Was Failed And No Credit Was Received - First Occurrence This School Year' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Course Was Failed No Credit Received – 2nd Occurrence This School Year' as shortdescription,'Course Was Failed And No Credit Was Received - Second Occurrence This School Year' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Course Passed Credit Not Received Excessive Absences – 1st Occur This SY' as shortdescription,'Course Was Passed, But Credit Was Not Received Due To Excessive Absences - First Occurrence This School Year' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Course Passed, Credit Not Received Excessive Absences - 2nd Occur This SY' as shortdescription,'Course Was Passed, But Credit Was Not Received Due To Excessive Absences - Second Occurrence This School Year' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Course Passed, Credit Not Received (other parts of the course not taken)' as shortdescription,'Course Was Passed, But Credit Was Not Received (other parts of the course have not been taken)' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Course Passed, Credit Not Rec (other parts of course taken not passed)' as shortdescription,'Course Was Passed, But Credit Was Not Received (other parts of the course have been taken but not passed)' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Course Failed, Credit Rec (credit from grades in other parts of course)' as shortdescription,'Course Was Failed, But Credit Was Received (other parts of the course have been passed and credit was awarded based on the grades in those parts)' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Course Work Is Incomplete And No Credit Has Been Awarded' as shortdescription,'Course Work Is Incomplete And No Credit Has Been Awarded' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Course Passed, Credit Not Received (course repeated for better mastery)' as shortdescription,'Course Was Passed, But Credit Was Not Received (course had previously been passed, and was repeated for better mastery)' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Course Failed No Credit Received – 3rd occurrence this school year' as shortdescription,'Course Was Failed And No Credit Was Received - third occurrence this school year' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Course Passed Credit Not Received Excessive Absences - 3rd occur This SY' as shortdescription,'Course Was Passed, But Credit Was Not Received Due To Excessive Absences - third occurrence this school year' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Non-High School Course Passed' as shortdescription,'Non-High School Course Passed' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Non-High School Course Failed' as shortdescription,'Non-High School Course Failed' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CourseSequence;
    SET @v_descriptor = 'CourseSequence';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%COURSESEQUENCE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'One Semester Course' as shortdescription,'One Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'First Half Of A Two Semester Course' as shortdescription,'First Half Of A Two Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Second Half Of A Two Semester Course' as shortdescription,'Second Half Of A Two Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'First Third Of A Three Semester Course' as shortdescription,'First Third Of A Three Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Second Third Of A Three Semester Course' as shortdescription,'Second Third Of A Three Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Last Third Of A Three Semester Course' as shortdescription,'Last Third Of A Three Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'6' as codevalue,'First Fourth Of A Four Semester Course' as shortdescription,'First Fourth Of A Four Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'7' as codevalue,'Second Fourth Of A Four Semester Course' as shortdescription,'Second Fourth Of A Four Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'8' as codevalue,'Third Fourth Of A Four Semester Course' as shortdescription,'Third Fourth Of A Four Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'9' as codevalue,'Last Fourth Of A Four Semester Course' as shortdescription,'Last Fourth Of A Four Semester Course' as description UNION 
             SELECT @v_namespace AS namespace,'D0' as codevalue,'Single Semester Dual Credit Course' as shortdescription,'Single Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D1' as codevalue,'First Half of a Two Semester Dual Credit Course' as shortdescription,'First Half of a Two Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D2' as codevalue,'Second Half of a Two Semester Dual Credit Course' as shortdescription,'Second Half of a Two Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D3' as codevalue,'First Third of a Three Semester Dual Credit Course' as shortdescription,'First Third of a Three Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D4' as codevalue,'Second Third of a Three Semester Dual Credit Course' as shortdescription,'Second Third of a Three Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D5' as codevalue,'Last Third of a Three Semester Dual Credit Course' as shortdescription,'Last Third of a Three Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D6' as codevalue,'First Fourth of a Four Semester Dual Credit Course' as shortdescription,'First Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D7' as codevalue,'Second Fourth of a Four Semester Dual Credit Course' as shortdescription,'Second Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D8' as codevalue,'Third Fourth of a Four Semester Dual Credit Course' as shortdescription,'Third Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'D9' as codevalue,'Last Fourth of a Four Semester Dual Credit Course' as shortdescription,'Last Fourth of a Four Semester Dual Credit Course' as description UNION 
             SELECT @v_namespace AS namespace,'A' as codevalue,'Non-High School Year Long Course' as shortdescription,'Non-High School Year Long Course' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CrisisEvent;
    SET @v_descriptor = 'CrisisEvent';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CRISISEVENT%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'10' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'17' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'20' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'Reserved For Future Health Or Weather Related Crisis' as shortdescription,'Reserved For Future Health Or Weather Related Crisis' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.codevalue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ @v_del_sql2 +' Error: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- CTEProgramService;
    SET @v_descriptor = 'CTEProgramService';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%CTEPROGRAMSERVICE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Not Applicable To This Student' as shortdescription,'Not Applicable To This Student' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Single Parent' as shortdescription,'Single Parent' as description UNION 
             SELECT @v_namespace AS namespace,'7' as codevalue,'Pregnant Woman' as shortdescription,'Pregnant Woman' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- DiplomaType;
    SET @v_descriptor = 'DiplomaType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%DIPLOMATYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'04' as codevalue,'Complete IEP, FT Employ Self-Help Skills Employ No Public School Services' as shortdescription,'Completion Of IEP And Full-Time Employment With Sufficient Self-Help Skills To Maintain Employment Without Public School Services
TAC §89.1070(f)(3)(A), revised January 1, 2015 [39 TexReg 10446].' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Complete IEP Mastery Specific Employ Self-Help Skills No Public School Serv' as shortdescription,'Completion Of IEP And Demonstrated Mastery Of Specific Employability And Self-Help Skills That Do Not Require Public School Services
TAC §89.1070(f)(3)(B), revised January 1, 2015 [39 TexReg 10446].' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Complete IEP Access To Services Employ Or Education Outside Public Edu' as shortdescription,'Completion Of IEP And Access To Services, Employment, Or Education Outside Of Public Education
TAC §89.1070(f)(3)(C), revised January 1, 2015 [ 39 TexReg 10446].' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Completion Of IEP And Reached Age 22' as shortdescription,'Completion Of IEP And Reached Age 22
TAC §89.1070(f)(4), revised January 1, 2015 [ 39 TexReg 10446].' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'Minimum High School Program – IEP Minimum Curriculum' as shortdescription,'Completion Of Minimum Curriculum And Credit Requirements For Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified In The IEP – Minimum High School Program
TAC §89.1070(f)(2),
(for students who entered grade 9 in in 2001-2002 through 2013-2014) effective January 1, 2015 [39 TexReg 10446].' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'Recommended High School Program – IEP Minimum Curriculum' as shortdescription,'Completion Of Minimum Curriculum And Credit Requirements For Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified In The IEP – Recommended High School Program
TAC §89.1070(b)(1),
revised August 1, 2002.  [27 Tex. Reg. 3103]
(for students who entered grade 9 in 2001-2002 through 2006-2007)' as description UNION 
             SELECT @v_namespace AS namespace,'20' as codevalue,'Distinguished Achievement Program – IEP Minimum Curriculum' as shortdescription,'Completion Of Minimum Curriculum And Credit Requirements For Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified In The IEP – Distinguished Achievement Program
TAC §89.1070(b)(1),
revised August 1, 2002.  [27 Tex. Reg. 3103]
(for students who entered grade 9 in 2001-2002 through 2006-2007)' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.42, revised June 2000; for students who entered grade 9 in 2001-2002, 2002-2003, and 2003-2004 (including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002 [26 Tex. Reg. 1837])' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
TAC Chapter 74.43, revised June 2000; for students who entered grade 9 in 2001-2002, 2002-2003, and 2003-2004 (including TAC §89.1070(b)(1) for students receiving special education services, revised August 1, 2002 [26 Tex. Reg. 1837])' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.44, revised June 2000; for students who entered grade 9 in 2001-2002, 2002-2003, and 2003-2004 (including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002 [26 Tex. Reg. 1837])' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.52, revised November 2003; for students who entered grade 9 in 2004-2005 and thereafter (including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002)' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
TAC Chapter 74.53, revised November 2003; for students who entered grade 9 in 2004-2005 and thereafter (including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002)' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.54, revised November 2003; for students who entered grade 9 in 2004-2005 and thereafter (including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002)' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.62, revised September 1, 2005; including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2007-2008, 2008-2009, 2009-2010, 2010-2011, and 2011-2012.)' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
TAC Chapter 74.63, revised September 1, 2005; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2007-2008, 2008-2009, 2009-2010, 2010-2011, and 2011-2012.)' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.64, revised September 1, 2005; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2007-2008, 2008-2009, 2009-2010, 2010-2011, and 2011-2012.)' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'Minimum High School Program' as shortdescription,'Minimum High School Program
TAC Chapter 74.72, revised May 30, 2012; including TAC §89.1070(b)(2) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2012-2013 and 2013-2014)' as description UNION 
             SELECT @v_namespace AS namespace,'31' as codevalue,'Recommended High School Program' as shortdescription,'Recommended High School Program
AC Chapter 74.73, revised May 30, 2012; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2012-2013 and 2013-2014)' as description UNION 
             SELECT @v_namespace AS namespace,'32' as codevalue,'Distinguished Achievement Program' as shortdescription,'Distinguished Achievement Program
TAC Chapter 74.74, Revised May 30, 2012; including TAC §89.1070(b) (1) for students receiving special education services, revised August 1, 2002.
(for students who entered grade 9 in 2012-2013 and 2013-2014)' as description UNION 
             SELECT @v_namespace AS namespace,'34' as codevalue,'Foundation High School Program' as shortdescription,'Foundation High School Program
TAC Chapter 74.1021, Revised December 16, 2013. [38 TexReg 9021]. TAC 74.12, Revised July 8, 2014. [39 TexReg 5149];  revised January 1, 2015 [39 TexReg 10446].
(For students who entered grade 9 in 2014-2015 and thereafter or entered grade 9 prior to the 2014-2015 school year and opted to graduate under the Foundation High School Program). The student completed curriculum requirements for graduation under the Foundation High School Program, including satisfactory performance as established in TEC, Chapter 39, on the required state assessments.)' as description UNION 
             SELECT @v_namespace AS namespace,'35' as codevalue,'Minimum Curriculum for Special Education Students' as shortdescription,'Completion of Minimum Curriculum And Credit Requirements for Graduation Applicable To Students In General Education And Participated In The Exit-Level Assessment Instrument Identified in The IEP-Foundation High School Program 
TAC 89.1070(b)(1), Revised January 1, 2015. [39 TexReg 10446]' as description UNION 
             SELECT @v_namespace AS namespace,'54' as codevalue,'Complete IEP FT Employ Self-Help Skill Maintain Employ No Public School Ser' as shortdescription,'Completion Of IEP And Full-Time Employment With Sufficient Self-Help Skills To Maintain Employment Without Public School Services
TAC §89.1070(b)(2)(A), Effective January 1, 2015 [39 TexReg 10446]' as description UNION 
             SELECT @v_namespace AS namespace,'55' as codevalue,'Complete IEP Mastery Specific Employ Self-Help Skill No Public School Serv' as shortdescription,'Completion Of IEP And Demonstrated Mastery Of Specific Employability And Self-Help Skills That Do Not Require Public School Services
TAC §89.1070(b)(2)(B), Effective January 1, 2015 [39 TexReg 10446]' as description UNION 
             SELECT @v_namespace AS namespace,'56' as codevalue,'Completion Of IEP Access To Services Employ Or Edu Outside Public Education' as shortdescription,'Completion Of IEP And Access To Services, Employment, Or Education Outside Of Public Education
TAC §89.1070(b)(2)(C), Effective January 1, 2015 [39 TexReg 10446]' as description UNION 
             SELECT @v_namespace AS namespace,'57' as codevalue,'Completion Of IEP And Reached Age 22' as shortdescription,'Completion Of IEP And Reached Age 22
Foundation: TAC §89.1070(b)(2)(D), Effective January 1, 2015 [39 TexReg 10446]' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Disability;
    SET @v_descriptor = 'Disability';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%DISABILITY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'No Disability' as shortdescription,'No Disability' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Orthopedic Impairment' as shortdescription,'Orthopedic Impairment' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Other Health Impairment' as shortdescription,'Other Health Impairment' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Hearing Impairment' as shortdescription,'Hearing Impairment' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Visual Impairment' as shortdescription,'Visual Impairment' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Deaf-Blindness' as shortdescription,'Deaf-Blindness' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Intellectual Disability' as shortdescription,'Intellectual Disability' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Emotional Disturbance' as shortdescription,'Emotional Disturbance' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Specific Learning Disability' as shortdescription,'Specific Learning Disability' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Speech or Language Impairment' as shortdescription,'Speech or Language Impairment' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Autism' as shortdescription,'Autism' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Traumatic Brain Injury' as shortdescription,'Traumatic Brain Injury' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Noncategorical Early Childhood' as shortdescription,'Noncategorical Early Childhood' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Discipline;
    SET @v_descriptor = 'Discipline';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%DISCIPLINE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Expulsion Without Placement In Another Educational Setting' as shortdescription,'Expulsion without placement in another educational setting' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Expulsion With Placement In A JJAEP' as shortdescription,'Expulsion with placement in a juvenile justice alternative education program (JJAEP)' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Expulsion With Placement In An On-Campus DAEP' as shortdescription,'Expulsion with placement in an on-campus disciplinary alternative education program (DAEP). (Do not use this code when a student has been placed in a DAEP, but not expelled).' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Expulsion With Placement In An Off-Campus DAEP' as shortdescription,'Expulsion with placement in an off-campus DAEP. (Do not use this code when a student has been placed in a DAEP, but not expelled).' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Out-Of-School Suspension' as shortdescription,'Out-Of-School Suspension' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'In-School Suspension' as shortdescription,'In-School Suspension
(For students eligible for special education and related services, this include any setting that has not been addressed by an admission, review, and dismissal committee withing the placement determination of the student''s current IEP.)' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Placement In An On-Campus Or Off-Campus DAEP' as shortdescription,'Placement in an on-campus or off-campus DAEP' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Continuation Of Other District''s DAEP Placement' as shortdescription,'Continuation of other district''s DAEP placement' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Continuation Of Other District''s Expulsion Order' as shortdescription,'Continuation of other district''s expulsion order' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Continuation Of District''s DAEP Placement From Prior School Year' as shortdescription,'Continuation of the district''s DAEP placement from the prior school year' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Continuation Of District''s Expulsion Order From Prior School Year' as shortdescription,'Continuation of the district''s expulsion order from the prior school year' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Continuation Of District''s Expulsion To JJAEP From Prior School Year' as shortdescription,'Continuation of the district''s expulsion with placement to JJAEP from the prior school year' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Placement In A JJAEP By Court Order' as shortdescription,'Placement in a JJAEP by court order' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Placement In A DAEP By Court Order' as shortdescription,'Placement in a DAEP by court order' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'Continuation Of Other District''s Expulsion With Placement To JJAEP' as shortdescription,'Continuation of other district''s expulsion with placement to JJAEP' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'Partial Day Out-Of-School Suspension' as shortdescription,'Partial Day Out-Of-School Suspension' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'Partial Day In-School Suspension' as shortdescription,'Partial Day In-School Suspension' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'Mandatory Disciplinary Action Not Taken By District - ARD committee' as shortdescription,'Mandatory disciplinary action not taken by district -
(This code is used when a student''s behavior is determined to be linked to the student''s disability in a manifestation determination hearing made in accordance with IDEA by an ARD committee.)' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'Mandatory Disciplinary Action Not Taken By District - TEC 37.001(a)(4)' as shortdescription,'Mandatory disciplinary action not taken by district - 
(The mandatory disciplinary action was not taken because the district considered one or more of the TEC § 37.001(a)(4) provisions.)' as description UNION 
             SELECT @v_namespace AS namespace,'50' as codevalue,'Expulsion Without Placement In Another Educational Setting - SPED' as shortdescription,'Expulsion without placement in another educational setting - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'51' as codevalue,'Expulsion With Placement To A JJAEP - SPED' as shortdescription,'Expulsion with placement to a JJAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'52' as codevalue,'Expulsion With Placement To An On-Campus DAEP - SPED' as shortdescription,'Expulsion with placement to an on-campus DAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'53' as codevalue,'Expulsion With Placement To An Off-Campus DAEP - SPED' as shortdescription,'Expulsion with placement to an off-campus DAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'54' as codevalue,'Placement In An On-Campus Or Off-Campus DAEP - SPED' as shortdescription,'Placement in an on-campus or off-campus DAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'55' as codevalue,'Continuation Of Other District''s DAEP Placement - SPED' as shortdescription,'Continuation of other district''s DAEP placement - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'56' as codevalue,'Continuation Of Other District''s Expulsion Order - SPED' as shortdescription,'Continuation of other district''s expulsion order - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'57' as codevalue,'Continuation Of District''s DAEP Placement From Prior School Year - SPED' as shortdescription,'Continuation of the district''s DAEP placement from the prior school year - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'58' as codevalue,'Continuation Of District''s Expulsion Order From Prior School Year - SPED' as shortdescription,'Continuation of the district''s expulsion order from the prior school year - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'59' as codevalue,'Continuation Of District''s Expulsion To JJAEP From Prior School Year - SPED' as shortdescription,'Continuation of the district''s expulsion with placement to JJAEP from the prior school year - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'60' as codevalue,'Placement In A JJAEP - SPED' as shortdescription,'Placement in a JJAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description UNION 
             SELECT @v_namespace AS namespace,'61' as codevalue,'Continuation Of Other District''s Expulsion With Placement To JJAEP - SPED' as shortdescription,'Continuation of other district''s expulsion with placement to JJAEP - As a result of a determination by a special education hearing officer (not a hearing officer employed or appointed by the district)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- DisciplineActionLengthDifferenceReason;
    SET @v_descriptor = 'DisciplineActionLengthDifferenceReason';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%DISCIPLINEACTIONLENGTHDIFFERENCEREASON%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'No Difference Between Official And Actual Lengths' as shortdescription,'No Difference Between Official And Actual Lengths Of Disciplinary Assignments' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Term Modified By District' as shortdescription,'Term Modified By District' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Term Modified By Court Order' as shortdescription,'Term Modified By Court Order' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Term Modified By Mutual Agreement Of District, Student, And/Or Parents' as shortdescription,'Term Modified By Mutual Agreement Of District, Student, And/Or Parents' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Completed Term Requirements Sooner Than Expected' as shortdescription,'Completed Term Requirements Sooner Than Expected' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Student Incarcerated' as shortdescription,'Student Incarcerated' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Term Decreased Due To Extenuating Health-Related Circumstances' as shortdescription,'Term Decreased Due To Extenuating Health-Related Circumstances' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Student Withdrew From School' as shortdescription,'Student Withdrew From School' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'School Year Ended Before Completion Of Disciplinary Action Assignment' as shortdescription,'School Year Ended Before Completion Of Disciplinary Action Assignment' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Continuation Of Previous Year''s Disciplinary Action Assignment' as shortdescription,'Continuation Of Previous Year''s Disciplinary Action Assignment' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Term Modified By Placement Program Due To Student Behavior In Placement' as shortdescription,'Term Modified By Placement Program Due To Student Behavior While In The Placement' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- DyslexiaRisk;
    SET @v_descriptor = 'DyslexiaRisk';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%DYSLEXIARISK%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Screened And Determined To Be Not At Risk For Dyslexia Or Related Disorders' as shortdescription,'Screened And Determined To Be Not At Risk For Dyslexia Or Related Disorders' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Screened And Determined To Be At Risk For Dyslexia Or Related Disorders' as shortdescription,'Screened And Determined To Be At Risk For Dyslexia Or Related Disorders' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Not Screened For Dyslexia Or Related Disorders' as shortdescription,'Not Screened For Dyslexia Or Related Disorders' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- EarlyReadingIndicator;
    SET @v_descriptor = 'EarlyReadingIndicator';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%EARLYREADINGINDICATOR%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'1' as codevalue,'Student Is Eligible For Accelerated Reading Instruction' as shortdescription,'Student is eligible for accelerated reading instruction as indicated by the administered reading instrument on the commissioner''s list or approved by district committee under TEC 28.006. (For grades KG, 01, and 02 only)' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Student Is Not Eligible For Accelerated Reading Instruction' as shortdescription,'Student is not eligible for accelerated reading instruction as indicated by the administered reading instrument on the commissioner''s list or approved by district committee under TEC 28.006. (For grades KG, 01, and 02 only)' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Student Was Not Assessed' as shortdescription,'Student was not assessed. (For grades KG, 01, and 02 only)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- EconomicDisadvantage;
    SET @v_descriptor = 'EconomicDisadvantage';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ECONOMICDISADVANTAGE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'Not Identified As Economically Disadvantaged' as shortdescription,'Not identified As Economically Disadvantaged' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Eligible For Free Meals' as shortdescription,'Eligible For Free Meals Under The National School Lunch And Child Nutrition Program' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Eligible for Reduced-Price Meals' as shortdescription,'Eligible For Reduced-price Meals Under The National School Lunch And Child Nutrition Program' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other Economic Disadvantage' as shortdescription,'Other Economic Disadvantage, Including:
a) from a family with an annual income at or below the official federal poverty line, b) eligible for Temporary Assistance to Needy Families (TANF) or other public assistance, c) received a Pell Grant or comparable state program of need-based financial assistance, d) eligible for programs assisted under Title II of the Job Training Partnership Act (JTPA), or e) eligible for benefits under the Food Stamp Act of 1977' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- EducationOrganizationCategory;
    SET @v_descriptor = 'EducationOrganizationCategory';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%EDUCATIONORGANIZATIONCATEGORY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Education Service Center' as shortdescription,'Education Service Center' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Local Education Agency' as shortdescription,'Local Education Agency' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'School' as shortdescription,'School' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'State Education Agency' as shortdescription,'State Education Agency' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ElectronicMailType;
    SET @v_descriptor = 'ElectronicMailType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ELECTRONICMAILTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Home/Personal' as shortdescription,'Home/Personal' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Organization' as shortdescription,'Organization' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Work' as shortdescription,'Work' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ELOActivity;
    SET @v_descriptor = 'ELOActivity';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ELOACTIVITY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Rigorous Coursework' as shortdescription,'Rigorous coursework is defined as a TEKS-aligned and credit-earning course, including dual credit and credit recovery activities.' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Mentoring' as shortdescription,'Mentoring is defined as scheduled interaction between a trained adult and a specific student in which the adult provides support and life skills to help the student''s personal and academic development.' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Tutoring' as shortdescription,'Tutoring is defined as one-on-one or small group, led by a certified teacher that provides content instruction or homework help. Tutoring does not include academic skill building activities.' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Physical Activity' as shortdescription,'Physical activity is defined as activities designed to provide students with supplemental non-UIL opportunities for individual or group exercise, or related knowledge and skills that encourage regular physical activity.' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Academic Support' as shortdescription,'Academic support is defined as supplemental support related to student academic skill development and may include compensatory education, test-taking skills, and related academic skill-building. Tutoring and homework help are not considered academic support.' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Educational Enrichment' as shortdescription,'Educational Enrichment includes activities that engage students in actively exploring academic content and activities introduced during the regular school day. It consists of activities that are intentionally designed to align with but not replicate the instruction in a core course to increase the academic success of students in any subject, including fine arts, civic engagement, science, technology, engineering, and mathematics.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ELOType;
    SET @v_descriptor = 'ELOType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ELOTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Non-Voluntary Extended School Day' as shortdescription,'Non-Voluntary Extended School Day (Submission 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Non-Voluntary Extended School Year' as shortdescription,'Non-Voluntary Extended School Year (Submission 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Voluntary Expanded Learning – Summer' as shortdescription,'Voluntary Expanded Learning Opportunity – Summer (Submission 4 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Voluntary Expanded Learning – Before School' as shortdescription,'Voluntary Expanded Learning Opportunity – Before School (Submission 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Voluntary Expanded Learning – After School' as shortdescription,'Voluntary Expanded Learning Opportunity – After School (Submission 3 Only)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- EmploymentStatus;
    SET @v_descriptor = 'EmploymentStatus';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%EMPLOYMENTSTATUS%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Employed Full-Time' as shortdescription,'Employed Full-Time' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Employed Part-Time' as shortdescription,'Employed Part-Time' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- EndorsementCompleted;
    SET @v_descriptor = 'EndorsementCompleted';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ENDORSEMENTCOMPLETED%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'1' as codevalue,'Student Completed STEM Endorsement' as shortdescription,'Student Completed STEM Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Student Completed Business And Industry Endorsement' as shortdescription,'Student Completed Business And Industry Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Student Completed Public Services Endorsement' as shortdescription,'Student Completed Public Services Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Student Completed Arts And Humanities Endorsement' as shortdescription,'Student Completed Arts And Humanities Endorsement (Submission 1 And 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Student Completed Multi Disciplinary Studies Endorsement' as shortdescription,'Student Completed Multi Disciplinary Studies Endorsement (Submission 1 And 3 Only)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- EndorsementPursuing;
    SET @v_descriptor = 'EndorsementPursuing';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ENDORSEMENTPURSUING%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Student Is Not Pursuing Or Participating' as shortdescription,'Student Is Not Pursuing Or Participating (Submission 1 and 3)' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'Student Is Pursuing STEM Endorsement' as shortdescription,'Student Is Pursuing STEM Endorsement (Submission 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Student Is Pursuing Business And Industry Endorsement' as shortdescription,'Student Is Pursuing Business And Industry Endorsement (Submission 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Student Is Pursuing Public Services Endorsement' as shortdescription,'Student Is Pursuing Public Services Endorsement (Submission 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Student Is Pursuing Arts And Humanities Endorsement' as shortdescription,'Student Is Pursuing Arts And Humanities Endorsement (Submission 3 Only)' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Student Is Pursuing Multi Disciplinary Studies Endorsement' as shortdescription,'Student Is Pursuing Multi Disciplinary Studies Endorsement (Submission 3 Only)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- EntryType;
    SET @v_descriptor = 'EntryType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%ENTRYTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'1' as codevalue,'Entry' as shortdescription,'Entry' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ExitWithdrawType;
    SET @v_descriptor = 'ExitWithdrawType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%EXITWITHDRAWTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Graduated From A Campus In This District Or Charter' as shortdescription,'Graduated From A Campus In This District Or Charter -  
Student graduated from a campus in this district or charter' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Died' as shortdescription,'Died -  
Student died while enrolled in school or during the summer break after completing the prior school year' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Return To Home Country' as shortdescription,'Return To Home Country -  
Student withdrew from/left school to return to family''s home country' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'College, Pursue Associate''s or Bachelor''s Degree' as shortdescription,'College, Pursue Associate''s or Bachelor''s Degree -  
Student withdrew from/left school to enter college and is working towards an Associate''s or Bachelor''s degree ' as description UNION 
             SELECT @v_namespace AS namespace,'60' as codevalue,'Home Schooling' as shortdescription,'Home Schooling -  
Student withdrew from/left school for home schooling' as description UNION 
             SELECT @v_namespace AS namespace,'66' as codevalue,'Removed-Child Protective Services' as shortdescription,'Removed-Child Protective Services -  
Student was removed by Child Protective Services (CPS) and the district has not been informed of the student''s current status or enrollment' as description UNION 
             SELECT @v_namespace AS namespace,'78' as codevalue,'Expelled For Offense Under TEC 37.007, Cannot Return' as shortdescription,'Expelled, For Offense Under TEC 37.007, Cannot Return -  
Student was expelled under the provisions of TEC 37.007 and cannot return to school' as description UNION 
             SELECT @v_namespace AS namespace,'81' as codevalue,'Enroll In TX Private School' as shortdescription,'Enroll In Texas Private School -  
Student withdrew from/left school to enroll in a private school in Texas' as description UNION 
             SELECT @v_namespace AS namespace,'82' as codevalue,'Enroll In School Outside Texas' as shortdescription,'Enroll In School Outside Texas -  
Student withdrew from/left school to enroll in a public or private school outside Texas' as description UNION 
             SELECT @v_namespace AS namespace,'83' as codevalue,'Withdrawn By District Because Not Entitled To Enrollment' as shortdescription,'Withdrawn By District Because Not Entitled To Enrollment -  
Student was attending and was withdrawn from school by the district when the district discovered that the student was not entitled to enrollment in the district because a) the student was not a resident of the district, b) was not entitled under other provisions of TEC §25.001 or as a transfer student, or c) was not entitled to public school enrollment under TEC §38.001 or a corresponding rule of the Texas Department of State Health Services because the student was not immunized.' as description UNION 
             SELECT @v_namespace AS namespace,'85' as codevalue,'Grad Outside TX Before Enter TX Public-Enter TX Public School-Left Again' as shortdescription,'Return To Home Country -  
Student withdrew from/left school to return to family''s home country' as description UNION 
             SELECT @v_namespace AS namespace,'86' as codevalue,'GED Outside Texas' as shortdescription,'GED Outside Texas -  
Student received a GED outside Texas, returned to school to work toward the completion of a high school diploma, and then left; or student earned GED outside Texas after leaving Texas public schools' as description UNION 
             SELECT @v_namespace AS namespace,'87' as codevalue,'Enroll In University High School Diploma Program' as shortdescription,'Enroll In University High School Diploma Program -  
Student withdrew/left school to enroll in the Texas Tech University ISD High School Diploma Program or University of Texas at Austin High School Diploma Program' as description UNION 
             SELECT @v_namespace AS namespace,'88' as codevalue,'Court-ordered to a GED program, has not earned a GED' as shortdescription,'Court-ordered to a GED program, has not earned a GED -  
Student was ordered by a court to attend a GED program and has not earned a GED certificate' as description UNION 
             SELECT @v_namespace AS namespace,'89' as codevalue,'Incarcerated in state jail or federal penitentiary as an adult' as shortdescription,'Incarcerated in state jail or federal penitentiary as an adult -  
Student is incarcerated in a state jail or federal penitentiary as an adult or as a person certified to stand trial as an adult' as description UNION 
             SELECT @v_namespace AS namespace,'90' as codevalue,'Grad other state Interstate Compact on Edu Opportunity for Military Child' as shortdescription,'Graduated from another state under provisions of the Interstate Compact on Educational Opportunity for Military Children -
Per TEC 162.002, student lives in the household of an active-duty military serviceperson, transferred into Texas public schools at the beginning of or during his or her senior year, did not meet requirements to graduate from Texas public schools, did meet requirements to graduate from a school in the sending state, and, under provisions of the Interstate Compact on Educational Opportunity for Military Children, graduated from a school or district in the sending state' as description UNION 
             SELECT @v_namespace AS namespace,'98' as codevalue,'Other' as shortdescription,'Other -  
Student was not enrolled within the school-start window for a reason not listed, student dropped out, or reason for leaving is unknown' as description UNION 
             SELECT @v_namespace AS namespace,'MV' as codevalue,'Mover' as shortdescription,'Mover – 
Student moved from one Texas Public School to a different Texas Public School.' as description UNION 
             SELECT @v_namespace AS namespace,'SC' as codevalue,'Status Change' as shortdescription,'Status Change – 
Student did not exit the Local Education Agency, but had a CalendarCode, ADA Eligiblity or EntryGradeLevel change during one school year.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- FosterCareType;
    SET @v_descriptor = 'FosterCareType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%FOSTERCARETYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Student Is Not Conservator of DFPS' as shortdescription,'Student is not currently in the conservatorship of the Department of Family and Protective Services' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'Student Is Current Conservator of DFPS' as shortdescription,'Student is currently in the conservatorship of the Department of Family and Protective Services' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'PK Student Previously In Conservator of DFPS Adversary Hearing' as shortdescription,'Pre-kindergarten student was previously in the conservatorship of the Department of Family and Protective Services following an adversary hearing held as provided by Section 262.201, Family Code.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- FrequencyOfServices;
    SET @v_descriptor = 'FrequencyOfServices';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%FREQUENCYOFSERVICES%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'None' as shortdescription,'None' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Daily' as shortdescription,'Daily' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Weekly' as shortdescription,'Weekly' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Monthly' as shortdescription,'Monthly' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Less Than Monthly' as shortdescription,'Less Than Monthly' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- GiftedTalentedProgram;
    SET @v_descriptor = 'GiftedTalentedProgram';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%GIFTEDTALENTEDPROGRAM%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'No program' as shortdescription,'Does not provide a program for gifted and talented students.' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Pull-out' as shortdescription,'Part-time services in a classroom, other than the student''s regular class, that take place on a regular schedule provided by a gifted/talented 30-hour foundational and 6-hour update trained teacher.' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Push-in' as shortdescription,'A gifted/talented 30-hour foundational and 6-hour update trained teacher provides occasional services to a student while the student is in their regular classroom.' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Full-time gifted only' as shortdescription,'The student receives the majority of their core subjects from teachers with gifted/talented 30-hour foundational and 6-hour update training with peers who are all identified as gifted/talented.' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Full-time inclusion' as shortdescription,'The student receives a majority of their core subjects from a specific teacher or teachers with gifted/talented 30-hour foundational and 6-hour update training, but the classes may include peers who are not identified as gifted/talented.' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Special Day School' as shortdescription,'A special school which is administratively separate from regular schools and is organized to serve gifted/talented students with gifted/talented 30-hour foundational and 6-hour update trained teachers.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- GradeLevel;
    SET @v_descriptor = 'GradeLevel';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%GRADELEVEL%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'EE' as codevalue,'Early Education' as shortdescription,'Early Education(early childhood programs other than state-approved pre-kindergarten and kindergarten)' as description UNION 
             SELECT @v_namespace AS namespace,'KG' as codevalue,'Kindergarten' as shortdescription,'Kindergarten' as description UNION 
             SELECT @v_namespace AS namespace,'PK' as codevalue,'PreKindergarten' as shortdescription,'PreKindergarten' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Grade 1' as shortdescription,'First Grade' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Grade 2' as shortdescription,'Second Grade' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Grade 3' as shortdescription,'Third Grade' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Grade 4' as shortdescription,'Fourth Grade' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Grade 5' as shortdescription,'Fifth Grade' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Grade 6' as shortdescription,'Sixth Grade' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Grade 7' as shortdescription,'Seventh Grade' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Grade 8' as shortdescription,'Eighth Grade' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Grade 9' as shortdescription,'Ninth Grade' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Grade 10' as shortdescription,'Tenth Grade' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Grade 11' as shortdescription,'Eleventh Grade' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Grade 12' as shortdescription,'Twelfth Grade' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- GradingPeriod;
    SET @v_descriptor = 'GradingPeriod';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%GRADINGPERIOD%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'1' as codevalue,'First Six Weeks Reporting Period' as shortdescription,'First Six Weeks Reporting Period' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Second Six Weeks Reporting Period' as shortdescription,'Second Six Weeks Reporting Period' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Third Six Weeks Reporting Period' as shortdescription,'Third Six Weeks Reporting Period' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Fourth Six Weeks Reporting Period' as shortdescription,'Fourth Six Weeks Reporting Period' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Fifth Six Weeks Reporting Period' as shortdescription,'Fifth Six Weeks Reporting Period' as description UNION 
             SELECT @v_namespace AS namespace,'6' as codevalue,'Sixth Six Weeks Reporting Period' as shortdescription,'Sixth Six Weeks Reporting Period' as description UNION 
             SELECT @v_namespace AS namespace,'7' as codevalue,'First Session – OFSDP Credit/Promotion Recovery Program' as shortdescription,'First Session – OFSDP Credit/Promotion Recovery Program' as description UNION 
             SELECT @v_namespace AS namespace,'8' as codevalue,'Second Session – OFSDP Credit/Promotion Recovery Program' as shortdescription,'Second Session – OFSDP Credit/Promotion Recovery Program' as description UNION 
             SELECT @v_namespace AS namespace,'9' as codevalue,'Additional Days School Year Program Reporting Period' as shortdescription,'Additional Days School Year Program Reporting Period' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- HearingAmplifAvgDailyUse;
    SET @v_descriptor = 'HearingAmplifAvgDailyUse';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%HEARINGAMPLIFAVGDAILYUSE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Less Than 1 Hour' as shortdescription,'Less Than 1 Hour' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'1 to 3 Hours' as shortdescription,'1 to 3 Hours' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'More Than 3 Hours' as shortdescription,'More Than 3 Hours' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- HearingAmplificationAccess;
    SET @v_descriptor = 'HearingAmplificationAccess';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%HEARINGAMPLIFICATIONACCESS%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Full Day' as shortdescription,'Full Day' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Partial Day' as shortdescription,'Partial Day' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- HearingAmplificationType;
    SET @v_descriptor = 'HearingAmplificationType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%HEARINGAMPLIFICATIONTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Hearing Aids' as shortdescription,'Hearing Aids' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Bone Anchored Hearing Aids' as shortdescription,'Bone Anchored Hearing Aids (BAHA)' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Implants' as shortdescription,'Implants (Includes Cochlear and Middle Ear Implants)' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Supplementals' as shortdescription,'Supplementals (includes examples such as FM systems, Infrared systems, Induction Loop systems)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- HomelessStatus;
    SET @v_descriptor = 'HomelessStatus';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%HOMELESSSTATUS%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Student Is Not Homeless At Any Time During The Current School Year' as shortdescription,'Student is not homeless at any time during current school year' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Student Lives Temporarily Doubled-Up During The Current School Year' as shortdescription,'Student lives temporarily doubled-up (sharing residence with a family or individual) at any time during current school year:
Doubled-Up (e.g., living with another family) is defined as sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason.  This classification requires a case-by-case determination.' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Student Is Unsheltered At Any Time During The Current School Year' as shortdescription,'Student is unsheltered (i.e, lives on the street, lives in cars, parks, campgrounds, temporary trailers [including FEMA trailers], or abandoned buildings) at any time during current school year:
Unsheltered is defined as a nighttime residence that is a public or private place not designed for, or ordinarily used as, a regular sleeping accommodation for human beings.  It includes such places as cars, parks, campgrounds (if they live there because they lack an alternative accommodation), temporary trailers (if they live there because they lack an alternative accommodation), abandoned buildings, and substandard housing.  Substandard housing may be determined by local building codes, community norms, and/or a case-by-case determination as to whether the accommodation is a “fixed, regular, and adequate nighttime residence.”' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Student Lives In A Motel Or Hotel Any Time During The Current School Year' as shortdescription,'Student lives in motel or hotel at any time during current school year:
Students who stay at a motel or hotel are considered homeless if they reside there because they have lost their housing, lack an alternative accommodation, and do not have a “fixed, regular, and adequate nighttime residence.”' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Student Lives In A Shelter At Any Time During The Current School Year' as shortdescription,'Student lives in a shelter, transitional housing at any time during current school year:
Shelters are defined as supervised publicly or privately operated facilities designed to provide temporary living accommodations.  The shelters category for homeless students includes emergency shelters, family shelters, domestic violence shelters, youth shelters, and transitional housing programs. The shelters category for homeless students does not include residential treatment facilities, Title I Neglected or Delinquent facilities, or TJJD facilities.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- HoursSpentReceivingServices;
    SET @v_descriptor = 'HoursSpentReceivingServices';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%HOURSSPENTRECEIVINGSERVICES%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'0 Hours' as shortdescription,'0 Hours' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Less Than 1 Hour' as shortdescription,'Less Than 1 Hour' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'1 to 3 Hours' as shortdescription,'1 to 3 Hours' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'More Than 3 Hours up to 5 Hours' as shortdescription,'More Than 3 Hours up to 5 Hours' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'More Than 5 Hours' as shortdescription,'More Than 5 Hours' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- IBCVendor;
    SET @v_descriptor = 'IBCVendor';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%IBCVENDOR%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'100' as codevalue,'360Training.com' as shortdescription,'360Training.com' as description UNION 
             SELECT @v_namespace AS namespace,'110' as codevalue,'Adobe' as shortdescription,'Adobe' as description UNION 
             SELECT @v_namespace AS namespace,'120' as codevalue,'AdvanceOnline' as shortdescription,'AdvanceOnline' as description UNION 
             SELECT @v_namespace AS namespace,'130' as codevalue,'Air Conditioning Contractors of America' as shortdescription,'Air Conditioning Contractors of America' as description UNION 
             SELECT @v_namespace AS namespace,'140' as codevalue,'American Allied Health' as shortdescription,'American Allied Health' as description UNION 
             SELECT @v_namespace AS namespace,'150' as codevalue,'American Council on Exercise' as shortdescription,'American Council on Exercise' as description UNION 
             SELECT @v_namespace AS namespace,'160' as codevalue,'American Hotel and Lodging Association Educational Institute' as shortdescription,'American Hotel and Lodging Association Educational Institute' as description UNION 
             SELECT @v_namespace AS namespace,'170' as codevalue,'American Medical Certification Association' as shortdescription,'American Medical Certification Association' as description UNION 
             SELECT @v_namespace AS namespace,'180' as codevalue,'American Medical Technologists' as shortdescription,'American Medical Technologists' as description UNION 
             SELECT @v_namespace AS namespace,'190' as codevalue,'American Society of Phlebotomy Technicians' as shortdescription,'American Society of Phlebotomy Technicians' as description UNION 
             SELECT @v_namespace AS namespace,'200' as codevalue,'American Welding Society' as shortdescription,'American Welding Society' as description UNION 
             SELECT @v_namespace AS namespace,'210' as codevalue,'AMP Testing Centers' as shortdescription,'AMP Testing Centers' as description UNION 
             SELECT @v_namespace AS namespace,'220' as codevalue,'Apple Authorized Training Provider' as shortdescription,'Apple Authorized Training Provider' as description UNION 
             SELECT @v_namespace AS namespace,'230' as codevalue,'Authorized OSHA Outreach Trainer' as shortdescription,'Authorized OSHA Outreach Trainer' as description UNION 
             SELECT @v_namespace AS namespace,'240' as codevalue,'Automotive Service Excellence' as shortdescription,'Automotive Service Excellence' as description UNION 
             SELECT @v_namespace AS namespace,'250' as codevalue,'Certiport' as shortdescription,'Certiport' as description UNION 
             SELECT @v_namespace AS namespace,'260' as codevalue,'ClickSafety' as shortdescription,'ClickSafety' as description UNION 
             SELECT @v_namespace AS namespace,'270' as codevalue,'COMIRA' as shortdescription,'COMIRA' as description UNION 
             SELECT @v_namespace AS namespace,'280' as codevalue,'Dental Assistant National Board' as shortdescription,'Dental Assistant National Board' as description UNION 
             SELECT @v_namespace AS namespace,'290' as codevalue,'ESCO Group' as shortdescription,'ESCO Group' as description UNION 
             SELECT @v_namespace AS namespace,'300' as codevalue,'Independent Electrical Contractors Texas' as shortdescription,'Independent Electrical Contractors Texas' as description UNION 
             SELECT @v_namespace AS namespace,'310' as codevalue,'International Academy of Emergency Dispatch' as shortdescription,'International Academy of Emergency Dispatch' as description UNION 
             SELECT @v_namespace AS namespace,'320' as codevalue,'International Society of Certified Electronics Technicians' as shortdescription,'International Society of Certified Electronics Technicians' as description UNION 
             SELECT @v_namespace AS namespace,'330' as codevalue,'Kryterion' as shortdescription,'Kryterion' as description UNION 
             SELECT @v_namespace AS namespace,'340' as codevalue,'Mastercam' as shortdescription,'Mastercam' as description UNION 
             SELECT @v_namespace AS namespace,'350' as codevalue,'National Academy of Sports Medicine' as shortdescription,'National Academy of Sports Medicine' as description UNION 
             SELECT @v_namespace AS namespace,'360' as codevalue,'National Alliance for Insurance Education & Research' as shortdescription,'National Alliance for Insurance Education & Research' as description UNION 
             SELECT @v_namespace AS namespace,'370' as codevalue,'National Association for Health Professionals' as shortdescription,'National Association for Health Professionals' as description UNION 
             SELECT @v_namespace AS namespace,'380' as codevalue,'National Board for Certification of Orthopedic Technologists' as shortdescription,'National Board for Certification of Orthopedic Technologists' as description UNION 
             SELECT @v_namespace AS namespace,'390' as codevalue,'National Center for Competency Testing' as shortdescription,'National Center for Competency Testing' as description UNION 
             SELECT @v_namespace AS namespace,'400' as codevalue,'National Healthcareer Association' as shortdescription,'National Healthcareer Association' as description UNION 
             SELECT @v_namespace AS namespace,'410' as codevalue,'National Restaurant Association' as shortdescription,'National Restaurant Association' as description UNION 
             SELECT @v_namespace AS namespace,'420' as codevalue,'NCCER' as shortdescription,'NCCER' as description UNION 
             SELECT @v_namespace AS namespace,'430' as codevalue,'NIMS' as shortdescription,'NIMS' as description UNION 
             SELECT @v_namespace AS namespace,'440' as codevalue,'NOCTI' as shortdescription,'NOCTI' as description UNION 
             SELECT @v_namespace AS namespace,'450' as codevalue,'PearsonVue' as shortdescription,'PearsonVue' as description UNION 
             SELECT @v_namespace AS namespace,'460' as codevalue,'ProctorU' as shortdescription,'ProctorU' as description UNION 
             SELECT @v_namespace AS namespace,'470' as codevalue,'Project Management Institute' as shortdescription,'Project Management Institute' as description UNION 
             SELECT @v_namespace AS namespace,'480' as codevalue,'Prometric' as shortdescription,'Prometric' as description UNION 
             SELECT @v_namespace AS namespace,'490' as codevalue,'PSI Testing Services' as shortdescription,'PSI Testing Services' as description UNION 
             SELECT @v_namespace AS namespace,'500' as codevalue,'PURE Safety' as shortdescription,'PURE Safety' as description UNION 
             SELECT @v_namespace AS namespace,'510' as codevalue,'SOLIDWORKS' as shortdescription,'SOLIDWORKS' as description UNION 
             SELECT @v_namespace AS namespace,'520' as codevalue,'Space TEC' as shortdescription,'Space TEC' as description UNION 
             SELECT @v_namespace AS namespace,'530' as codevalue,'Summit Training Source' as shortdescription,'Summit Training Source' as description UNION 
             SELECT @v_namespace AS namespace,'540' as codevalue,'Texas Cattle Feeders Association' as shortdescription,'Texas Cattle Feeders Association' as description UNION 
             SELECT @v_namespace AS namespace,'550' as codevalue,'Texas Commission on Environmental Quality' as shortdescription,'Texas Commission on Environmental Quality' as description UNION 
             SELECT @v_namespace AS namespace,'560' as codevalue,'Texas Commission on Environmental Quality approved testing center' as shortdescription,'Texas Commission on Environmental Quality approved testing center' as description UNION 
             SELECT @v_namespace AS namespace,'570' as codevalue,'Texas Commission on Fire Protection' as shortdescription,'Texas Commission on Fire Protection' as description UNION 
             SELECT @v_namespace AS namespace,'580' as codevalue,'Texas DPS Approved Level III or Level IV Training Center' as shortdescription,'Texas Department of Public Safety Approved Level III or Level IV Training Center' as description UNION 
             SELECT @v_namespace AS namespace,'590' as codevalue,'Texas State Board of Dental Examiners' as shortdescription,'Texas State Board of Dental Examiners' as description UNION 
             SELECT @v_namespace AS namespace,'600' as codevalue,'Texas State Board of Plumbing Examiners' as shortdescription,'Texas State Board of Plumbing Examiners' as description UNION 
             SELECT @v_namespace AS namespace,'610' as codevalue,'Texas State Florists Association' as shortdescription,'Texas State Florists Association' as description UNION 
             SELECT @v_namespace AS namespace,'620' as codevalue,'Texas Veterinary MedicalAssociation' as shortdescription,'Texas Veterinary MedicalAssociation' as description UNION 
             SELECT @v_namespace AS namespace,'630' as codevalue,'University of South Florida Health' as shortdescription,'University of South Florida Health' as description UNION 
             SELECT @v_namespace AS namespace,'640' as codevalue,'WD Certified' as shortdescription,'WD Certified' as description UNION 
             SELECT @v_namespace AS namespace,'650' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- IncidentLocation;
    SET @v_descriptor = 'IncidentLocation';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%INCIDENTLOCATION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'On Campus' as shortdescription,'On Campus' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Off Campus, but within 300 feet of campus property line' as shortdescription,'Off Campus, but within 300 feet of campus property line' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Off Campus, but at a school sponsored or school related activity' as shortdescription,'Off Campus, but at a school sponsored or school related activity' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Off Campus, > 300 ft from campus, not at school sponsored or related activ' as shortdescription,'Off Campus, and further than 300 feet from the campus boundary (Student was not in attendance at a school sponsored or school related activity).' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'On Campus another LEA, or at school sponsored/related activ of another LEA' as shortdescription,'On Campus of another school district, or while in attendance at a school sponsored or school related activity of another school district' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- LangAcqServicesProvided;
    SET @v_descriptor = 'LangAcqServicesProvided';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%LANGACQSERVICESPROVIDED%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'Services not Provided' as shortdescription,'Services not Provided' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Direct' as shortdescription,'Direct' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Indirect' as shortdescription,'Indirect' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Consultative' as shortdescription,'Consultative' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Language;
    SET @v_descriptor = 'Language';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%LANGUAGEDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Spanish' as shortdescription,'Spanish' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Vietnamese' as shortdescription,'Vietnamese' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Laotian (Lao)' as shortdescription,'Laotian (Lao)' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Cambodian (Khmer)' as shortdescription,'Cambodian (Khmer)' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Korean' as shortdescription,'Korean' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Japanese' as shortdescription,'Japanese' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'French' as shortdescription,'French' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'German' as shortdescription,'German' as description UNION 
             SELECT @v_namespace AS namespace,'98' as codevalue,'English' as shortdescription,'English' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other Languages' as shortdescription,'Other Languages' as description UNION 
             SELECT @v_namespace AS namespace,'1A' as codevalue,'Afrikaans (Taal)' as shortdescription,'Afrikaans (Taal)' as description UNION 
             SELECT @v_namespace AS namespace,'1B' as codevalue,'Akan (Fante, Asante)' as shortdescription,'Akan (Fante, Asante)' as description UNION 
             SELECT @v_namespace AS namespace,'1C' as codevalue,'Albanian, Gheg (Kossovo/Macedonia)' as shortdescription,'Albanian, Gheg (Kossovo/Macedonia)' as description UNION 
             SELECT @v_namespace AS namespace,'1D' as codevalue,'Albanian, Tosk (Albania)' as shortdescription,'Albanian, Tosk (Albania)' as description UNION 
             SELECT @v_namespace AS namespace,'1E' as codevalue,'Algonquin' as shortdescription,'Algonquin' as description UNION 
             SELECT @v_namespace AS namespace,'1F' as codevalue,'Amharic' as shortdescription,'Amharic' as description UNION 
             SELECT @v_namespace AS namespace,'1G' as codevalue,'Apache' as shortdescription,'Apache' as description UNION 
             SELECT @v_namespace AS namespace,'1H' as codevalue,'Arabic' as shortdescription,'Arabic' as description UNION 
             SELECT @v_namespace AS namespace,'1I' as codevalue,'Armenian' as shortdescription,'Armenian' as description UNION 
             SELECT @v_namespace AS namespace,'1J' as codevalue,'Assyrian (Syriac, Aramaic)' as shortdescription,'Assyrian (Syriac, Aramaic)' as description UNION 
             SELECT @v_namespace AS namespace,'1K' as codevalue,'Balinese' as shortdescription,'Balinese' as description UNION 
             SELECT @v_namespace AS namespace,'1L' as codevalue,'Bengali' as shortdescription,'Bengali' as description UNION 
             SELECT @v_namespace AS namespace,'1M' as codevalue,'Bosnian' as shortdescription,'Bosnian' as description UNION 
             SELECT @v_namespace AS namespace,'1N' as codevalue,'Bulgarian' as shortdescription,'Bulgarian' as description UNION 
             SELECT @v_namespace AS namespace,'1O' as codevalue,'Burmese' as shortdescription,'Burmese' as description UNION 
             SELECT @v_namespace AS namespace,'1P' as codevalue,'Cantonese (Chinese)' as shortdescription,'Cantonese (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'1Q' as codevalue,'Cebuano (Visayan)' as shortdescription,'Cebuano (Visayan)' as description UNION 
             SELECT @v_namespace AS namespace,'1R' as codevalue,'Chamorro' as shortdescription,'Chamorro' as description UNION 
             SELECT @v_namespace AS namespace,'1S' as codevalue,'Chaochow/Teochiu (Chinese)' as shortdescription,'Chaochow/Teochiu (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'1T' as codevalue,'Cherokee' as shortdescription,'Cherokee' as description UNION 
             SELECT @v_namespace AS namespace,'1U' as codevalue,'Chippewa/Ojibawa/Ottawa' as shortdescription,'Chippewa/Ojibawa/Ottawa' as description UNION 
             SELECT @v_namespace AS namespace,'1V' as codevalue,'Choctaw' as shortdescription,'Choctaw' as description UNION 
             SELECT @v_namespace AS namespace,'1W' as codevalue,'Comanche' as shortdescription,'Comanche' as description UNION 
             SELECT @v_namespace AS namespace,'1X' as codevalue,'Coushatta' as shortdescription,'Coushatta' as description UNION 
             SELECT @v_namespace AS namespace,'1Y' as codevalue,'Creek' as shortdescription,'Creek' as description UNION 
             SELECT @v_namespace AS namespace,'1Z' as codevalue,'Croatian' as shortdescription,'Croatian' as description UNION 
             SELECT @v_namespace AS namespace,'2A' as codevalue,'Crow' as shortdescription,'Crow' as description UNION 
             SELECT @v_namespace AS namespace,'2B' as codevalue,'Czech' as shortdescription,'Czech' as description UNION 
             SELECT @v_namespace AS namespace,'2C' as codevalue,'Danish' as shortdescription,'Danish' as description UNION 
             SELECT @v_namespace AS namespace,'2D' as codevalue,'Dard' as shortdescription,'Dard' as description UNION 
             SELECT @v_namespace AS namespace,'2E' as codevalue,'Dutch/Flemish' as shortdescription,'Dutch/Flemish' as description UNION 
             SELECT @v_namespace AS namespace,'2F' as codevalue,'Efik' as shortdescription,'Efik' as description UNION 
             SELECT @v_namespace AS namespace,'2G' as codevalue,'Eskimo' as shortdescription,'Eskimo' as description UNION 
             SELECT @v_namespace AS namespace,'2H' as codevalue,'Estonian' as shortdescription,'Estonian' as description UNION 
             SELECT @v_namespace AS namespace,'2I' as codevalue,'Ethiopic' as shortdescription,'Ethiopic' as description UNION 
             SELECT @v_namespace AS namespace,'2J' as codevalue,'Ewe' as shortdescription,'Ewe' as description UNION 
             SELECT @v_namespace AS namespace,'2K' as codevalue,'Farsi (Persian)' as shortdescription,'Farsi (Persian)' as description UNION 
             SELECT @v_namespace AS namespace,'2L' as codevalue,'Finnish' as shortdescription,'Finnish' as description UNION 
             SELECT @v_namespace AS namespace,'2M' as codevalue,'Fuklen/Hokklen (Chinese)' as shortdescription,'Fuklen/Hokklen (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'2N' as codevalue,'Gaelic (Irish)' as shortdescription,'Gaelic (Irish)' as description UNION 
             SELECT @v_namespace AS namespace,'2O' as codevalue,'Gaelic (Scottish)' as shortdescription,'Gaelic (Scottish)' as description UNION 
             SELECT @v_namespace AS namespace,'2P' as codevalue,'Greek' as shortdescription,'Greek' as description UNION 
             SELECT @v_namespace AS namespace,'2Q' as codevalue,'Gujarati' as shortdescription,'Gujarati' as description UNION 
             SELECT @v_namespace AS namespace,'2R' as codevalue,'Guyanese' as shortdescription,'Guyanese' as description UNION 
             SELECT @v_namespace AS namespace,'2S' as codevalue,'Hainanese (Chinese)' as shortdescription,'Hainanese (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'2T' as codevalue,'Haitian-Creole' as shortdescription,'Haitian-Creole' as description UNION 
             SELECT @v_namespace AS namespace,'2U' as codevalue,'Hakka (Chinese)' as shortdescription,'Hakka (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'2V' as codevalue,'Hausa' as shortdescription,'Hausa' as description UNION 
             SELECT @v_namespace AS namespace,'2W' as codevalue,'Hebrew' as shortdescription,'Hebrew' as description UNION 
             SELECT @v_namespace AS namespace,'2X' as codevalue,'Hindi' as shortdescription,'Hindi' as description UNION 
             SELECT @v_namespace AS namespace,'2Y' as codevalue,'Hmong' as shortdescription,'Hmong' as description UNION 
             SELECT @v_namespace AS namespace,'2Z' as codevalue,'Hopi' as shortdescription,'Hopi' as description UNION 
             SELECT @v_namespace AS namespace,'3A' as codevalue,'Hungarian' as shortdescription,'Hungarian' as description UNION 
             SELECT @v_namespace AS namespace,'3B' as codevalue,'Ibo/Igbo' as shortdescription,'Ibo/Igbo' as description UNION 
             SELECT @v_namespace AS namespace,'3C' as codevalue,'Icelandic' as shortdescription,'Icelandic' as description UNION 
             SELECT @v_namespace AS namespace,'3D' as codevalue,'Ilonggo (Hiligaynon)' as shortdescription,'Ilonggo (Hiligaynon)' as description UNION 
             SELECT @v_namespace AS namespace,'3E' as codevalue,'Indonesian' as shortdescription,'Indonesian' as description UNION 
             SELECT @v_namespace AS namespace,'3F' as codevalue,'Italian' as shortdescription,'Italian' as description UNION 
             SELECT @v_namespace AS namespace,'3G' as codevalue,'Kache (Kaje, Jju)' as shortdescription,'Kache (Kaje, Jju)' as description UNION 
             SELECT @v_namespace AS namespace,'3H' as codevalue,'Kannada (Kanarese)' as shortdescription,'Kannada (Kanarese)' as description UNION 
             SELECT @v_namespace AS namespace,'3I' as codevalue,'Kanuri' as shortdescription,'Kanuri' as description UNION 
             SELECT @v_namespace AS namespace,'3J' as codevalue,'Kashmiri' as shortdescription,'Kashmiri' as description UNION 
             SELECT @v_namespace AS namespace,'3K' as codevalue,'Kickapoo' as shortdescription,'Kickapoo' as description UNION 
             SELECT @v_namespace AS namespace,'3L' as codevalue,'Konkani' as shortdescription,'Konkani' as description UNION 
             SELECT @v_namespace AS namespace,'3M' as codevalue,'Kpelle' as shortdescription,'Kpelle' as description UNION 
             SELECT @v_namespace AS namespace,'3N' as codevalue,'Krio' as shortdescription,'Krio' as description UNION 
             SELECT @v_namespace AS namespace,'3O' as codevalue,'Kurdish' as shortdescription,'Kurdish' as description UNION 
             SELECT @v_namespace AS namespace,'3P' as codevalue,'Kwa' as shortdescription,'Kwa' as description UNION 
             SELECT @v_namespace AS namespace,'3Q' as codevalue,'Latvian' as shortdescription,'Latvian' as description UNION 
             SELECT @v_namespace AS namespace,'3R' as codevalue,'Lingala' as shortdescription,'Lingala' as description UNION 
             SELECT @v_namespace AS namespace,'3S' as codevalue,'Lithuanian' as shortdescription,'Lithuanian' as description UNION 
             SELECT @v_namespace AS namespace,'3T' as codevalue,'Luganda' as shortdescription,'Luganda' as description UNION 
             SELECT @v_namespace AS namespace,'3U' as codevalue,'Lunda' as shortdescription,'Lunda' as description UNION 
             SELECT @v_namespace AS namespace,'3V' as codevalue,'Luyia (Luhya)' as shortdescription,'Luyia (Luhya)' as description UNION 
             SELECT @v_namespace AS namespace,'3W' as codevalue,'Macedonian' as shortdescription,'Macedonian' as description UNION 
             SELECT @v_namespace AS namespace,'3X' as codevalue,'Malay' as shortdescription,'Malay' as description UNION 
             SELECT @v_namespace AS namespace,'3Y' as codevalue,'Malayalam' as shortdescription,'Malayalam' as description UNION 
             SELECT @v_namespace AS namespace,'3Z' as codevalue,'Maltese' as shortdescription,'Maltese' as description UNION 
             SELECT @v_namespace AS namespace,'4A' as codevalue,'Mandarin (Chinese)' as shortdescription,'Mandarin (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'4B' as codevalue,'Mande' as shortdescription,'Mande' as description UNION 
             SELECT @v_namespace AS namespace,'4C' as codevalue,'Marathi' as shortdescription,'Marathi' as description UNION 
             SELECT @v_namespace AS namespace,'4D' as codevalue,'Menominee' as shortdescription,'Menominee' as description UNION 
             SELECT @v_namespace AS namespace,'4E' as codevalue,'Mien (Yao)' as shortdescription,'Mien (Yao)' as description UNION 
             SELECT @v_namespace AS namespace,'4F' as codevalue,'Navajo' as shortdescription,'Navajo' as description UNION 
             SELECT @v_namespace AS namespace,'4G' as codevalue,'Nepali' as shortdescription,'Nepali' as description UNION 
             SELECT @v_namespace AS namespace,'4H' as codevalue,'Norwegian' as shortdescription,'Norwegian' as description UNION 
             SELECT @v_namespace AS namespace,'4I' as codevalue,'Okinawan' as shortdescription,'Okinawan' as description UNION 
             SELECT @v_namespace AS namespace,'4J' as codevalue,'Oneida' as shortdescription,'Oneida' as description UNION 
             SELECT @v_namespace AS namespace,'4K' as codevalue,'Oriya' as shortdescription,'Oriya' as description UNION 
             SELECT @v_namespace AS namespace,'4L' as codevalue,'Orri (Oring)' as shortdescription,'Orri (Oring)' as description UNION 
             SELECT @v_namespace AS namespace,'4M' as codevalue,'Pampangan' as shortdescription,'Pampangan' as description UNION 
             SELECT @v_namespace AS namespace,'4N' as codevalue,'Panjabi (Punjabi)' as shortdescription,'Panjabi (Punjabi)' as description UNION 
             SELECT @v_namespace AS namespace,'4O' as codevalue,'Pashto (Pushto)' as shortdescription,'Pashto (Pushto)' as description UNION 
             SELECT @v_namespace AS namespace,'4P' as codevalue,'Pilipino (Tagalog)' as shortdescription,'Pilipino (Tagalog)' as description UNION 
             SELECT @v_namespace AS namespace,'4Q' as codevalue,'Pima' as shortdescription,'Pima' as description UNION 
             SELECT @v_namespace AS namespace,'4R' as codevalue,'Polish' as shortdescription,'Polish' as description UNION 
             SELECT @v_namespace AS namespace,'4S' as codevalue,'Portuguese' as shortdescription,'Portuguese' as description UNION 
             SELECT @v_namespace AS namespace,'4T' as codevalue,'Pueblo' as shortdescription,'Pueblo' as description UNION 
             SELECT @v_namespace AS namespace,'4U' as codevalue,'Romanian' as shortdescription,'Romanian' as description UNION 
             SELECT @v_namespace AS namespace,'4V' as codevalue,'Romany (Gypsy)' as shortdescription,'Romany (Gypsy)' as description UNION 
             SELECT @v_namespace AS namespace,'4W' as codevalue,'Russian' as shortdescription,'Russian' as description UNION 
             SELECT @v_namespace AS namespace,'4X' as codevalue,'Samoan' as shortdescription,'Samoan' as description UNION 
             SELECT @v_namespace AS namespace,'4Y' as codevalue,'Serbian' as shortdescription,'Serbian' as description UNION 
             SELECT @v_namespace AS namespace,'4Z' as codevalue,'Shanghai (Chinese)' as shortdescription,'Shanghai (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'5A' as codevalue,'Shona' as shortdescription,'Shona' as description UNION 
             SELECT @v_namespace AS namespace,'5B' as codevalue,'Sikkimese' as shortdescription,'Sikkimese' as description UNION 
             SELECT @v_namespace AS namespace,'5C' as codevalue,'Sindhi' as shortdescription,'Sindhi' as description UNION 
             SELECT @v_namespace AS namespace,'5D' as codevalue,'Sinhalese (Sri Lanka)' as shortdescription,'Sinhalese (Sri Lanka)' as description UNION 
             SELECT @v_namespace AS namespace,'5E' as codevalue,'Sioux (Dakota)' as shortdescription,'Sioux (Dakota)' as description UNION 
             SELECT @v_namespace AS namespace,'5F' as codevalue,'Slavic' as shortdescription,'Slavic' as description UNION 
             SELECT @v_namespace AS namespace,'5G' as codevalue,'Slovenian (Slovene)' as shortdescription,'Slovenian (Slovene)' as description UNION 
             SELECT @v_namespace AS namespace,'5H' as codevalue,'Somali' as shortdescription,'Somali' as description UNION 
             SELECT @v_namespace AS namespace,'5I' as codevalue,'Sotho' as shortdescription,'Sotho' as description UNION 
             SELECT @v_namespace AS namespace,'5J' as codevalue,'Swahili' as shortdescription,'Swahili' as description UNION 
             SELECT @v_namespace AS namespace,'5K' as codevalue,'Swedish' as shortdescription,'Swedish' as description UNION 
             SELECT @v_namespace AS namespace,'5L' as codevalue,'Taiwanese/Formosan/Min Nan (Chinese)' as shortdescription,'Taiwanese/Formosan/Min Nan (Chinese)' as description UNION 
             SELECT @v_namespace AS namespace,'5M' as codevalue,'Tamil' as shortdescription,'Tamil' as description UNION 
             SELECT @v_namespace AS namespace,'5N' as codevalue,'Telugu (Telegu)' as shortdescription,'Telugu (Telegu)' as description UNION 
             SELECT @v_namespace AS namespace,'5O' as codevalue,'Thai' as shortdescription,'Thai' as description UNION 
             SELECT @v_namespace AS namespace,'5P' as codevalue,'Tibetan' as shortdescription,'Tibetan' as description UNION 
             SELECT @v_namespace AS namespace,'5Q' as codevalue,'Tigrinya' as shortdescription,'Tigrinya' as description UNION 
             SELECT @v_namespace AS namespace,'5R' as codevalue,'Tiwa' as shortdescription,'Tiwa' as description UNION 
             SELECT @v_namespace AS namespace,'5S' as codevalue,'Tuluau' as shortdescription,'Tuluau' as description UNION 
             SELECT @v_namespace AS namespace,'5T' as codevalue,'Turkish' as shortdescription,'Turkish' as description UNION 
             SELECT @v_namespace AS namespace,'5U' as codevalue,'Ukrainian' as shortdescription,'Ukrainian' as description UNION 
             SELECT @v_namespace AS namespace,'5V' as codevalue,'Urdu' as shortdescription,'Urdu' as description UNION 
             SELECT @v_namespace AS namespace,'5W' as codevalue,'Welsh' as shortdescription,'Welsh' as description UNION 
             SELECT @v_namespace AS namespace,'5X' as codevalue,'Winnebago' as shortdescription,'Winnebago' as description UNION 
             SELECT @v_namespace AS namespace,'5Y' as codevalue,'Yiddish' as shortdescription,'Yiddish' as description UNION 
             SELECT @v_namespace AS namespace,'5Z' as codevalue,'Yombe' as shortdescription,'Yombe' as description UNION 
             SELECT @v_namespace AS namespace,'6A' as codevalue,'Yoruba' as shortdescription,'Yoruba' as description UNION 
             SELECT @v_namespace AS namespace,'6B' as codevalue,'American Sign Language (ASL)' as shortdescription,'American Sign Language (ASL)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- LanguageInstructionProgramService;
    SET @v_descriptor = 'LanguageInstructionProgramService';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%LANGUAGEINSTRUCTIONPROGRAMSERVICE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'042' as codevalue,'Transitional Bilingual/Early Exit' as shortdescription,'Transitional Bilingual/Early Exit:  A bilingual program model in which students identified as LEP/English learners (EL) are served in both English and another language and are prepared to meet reclassification criteria to be successful in English-only instruction not earlier than two or later than five years after the student enrolls in school. Instruction in this program is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061(b)(1), for the assigned grade level and content area.' as description UNION 
             SELECT @v_namespace AS namespace,'043' as codevalue,'Transitional Bilingual/Late Exit' as shortdescription,'Transitional Bilingual/Late Exit: A bilingual program model in which students identified as LEP/English learners (EL) are served in both English and another language and are prepared to meet reclassification criteria to be successful in English-only instruction not earlier than six or later than seven years after the student enrolls in school. Instruction in this program is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061(b)(2), for the assigned grade level and content area.' as description UNION 
             SELECT @v_namespace AS namespace,'044' as codevalue,'Dual Language Immersion/Two-Way' as shortdescription,'Dual Language Immersion/Two-Way: A bilingual/biliteracy program model in which students identified as LEP/English learners (EL) are integrated with students proficient in English and are served in both English and another language and are prepared to meet reclassification criteria in order to be successful in English-only instruction not earlier than six or later than seven years after the student enrolls in school. Instruction provided in a language other than English in this program model is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061, for the assigned grade level and content area. Instruction provided in English in this program model may be delivered either by a teacher appropriately certified in bilingual education or by a different teacher certified in ESL in accordance with TEC, §29.061, for the assigned grade level and content area.' as description UNION 
             SELECT @v_namespace AS namespace,'045' as codevalue,'Dual Language Immersion/One-Way' as shortdescription,'Dual Language Immersion/One-Way: A bilingual/biliteracy program model in which students identified as LEP/English learners (EL) are served in both English and another language and are prepared to meet reclassification criteria in order to be successful in English-only instruction not earlier than six or later than seven years after the student enrolls in school. Instruction provided in a language other than English in this program model is delivered by a teacher appropriately certified in bilingual education under TEC, §29.061. Instruction provided in English in this program model may be delivered either by a teacher appropriately certified in bilingual education or by a different teacher certified in ESL in accordance with TEC, §29.061.' as description UNION 
             SELECT @v_namespace AS namespace,'046' as codevalue,'Alternative Bilingual Language Program' as shortdescription,'Alternative Bilingual Language Program: The LEA is implementing an alternative bilingual language program approved by the Texas Education Agency due to the submission of a bilingual education exception for the current school year, per 19 TAC §89.1207.' as description UNION 
             SELECT @v_namespace AS namespace,'002' as codevalue,'English As a Second Language/Content-Based' as shortdescription,'English As a Second Language/Content-Based: An English acquisition program that serves students identified as LEP/English learners (EL) through English instruction by a teacher appropriately certified in ESL under TEC, §29.061(c), through English language arts and reading, mathematics, science, and social studies. The goal of content-based ESL is for English learners to attain full proficiency in English in order to participate equitably in school. This model targets English language development through academic content instruction that is linguistically and culturally responsive in English language arts and reading, mathematics, science, and social studies. English Proficient (EP) students may also participate in this program with parental permission, but they are not eligible for generating Bilingual Education Allotment (BEA) funds.' as description UNION 
             SELECT @v_namespace AS namespace,'003' as codevalue,'English As A Second Language/Pull-Out' as shortdescription,'English As A Second Language/Pull-Out: An English acquisition program that serves students identified as LEP/English learners (EL) through English instruction provided by an appropriately certified ESL teacher under the TEC, §29.061(c), through English language arts and reading. The goal of ESL pull-out is for English learners to attain full proficiency in English in order to participate equitably in school. This model targets English language development through academic content instruction that is linguistically and culturally responsive in English language arts and reading. Instruction shall be provided by the ESL teacher in a pull-out or inclusionary delivery model. English proficient (EP) students may also participate in this program with parental permission, but they are not eligible for generating Bilingual Education Allotment (BEA) funds.' as description UNION 
             SELECT @v_namespace AS namespace,'004' as codevalue,'Alternative ESL Language Program' as shortdescription,'Alternative ESL Language Program: The LEA is implementing an alternative ESL language program approved by the Texas Education Agency due to the submission of an ESL waiver for the current school year, per 19 TAC §89.1207.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- LanguageUse;
    SET @v_descriptor = 'LanguageUse';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%LANGUAGEUSE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Home Language' as shortdescription,'Home Language' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Student Language' as shortdescription,'Student Language' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- LevelOfEducation;
    SET @v_descriptor = 'LevelOfEducation';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%LEVELOFEDUCATION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'No Degree' as shortdescription,'No Degree (No Bachelor''s degree or higher)' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'Bachelor''s ' as shortdescription,'Bachelor''s' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Master''s' as shortdescription,'Master''s' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Doctorate' as shortdescription,'Doctorate' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- LimitedEnglishProficiency;
    SET @v_descriptor = 'LimitedEnglishProficiency';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%LIMITEDENGLISHPROFICIENCY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Not LEP/English Proficient (EP)' as shortdescription,'Not LEP/English Proficient (EP)' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'Identified As LEP/English Learner (EL)' as shortdescription,'Identified As LEP/English Learner (EL)' as description UNION 
             SELECT @v_namespace AS namespace,'F' as codevalue,'Monitored 1' as shortdescription,'Student Reclassified from LEP/English learner (EL) Status - Monitored 1 (M1) - student has met reclassification criteria, is no longer classified as LEP/EL in PEIMS, is in his or her first year of monitoring as required by 19 TAC §89.1220(k).' as description UNION 
             SELECT @v_namespace AS namespace,'S' as codevalue,'Monitored 2' as shortdescription,'Student Reclassified from LEP/English learner (EL) Status - Monitored 2 (M2) - student has met reclassification criteria, is no longer classified as LEP/EL in PEIMS, is in his or her second year of monitoring as required by 19 TAC §89.1220(k).' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Monitored 3' as shortdescription,'Student Reclassified from LEP/English learner (EL) Status - Monitored 3 (M3) - student has met reclassification criteria, is no longer classified as LEP/EL in PEIMS, is in his or her third year of monitoring as required by ESSA, 1111(b)(3)(B).' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Monitored 4' as shortdescription,'Student Reclassified from LEP/English learner (EL) Status - Monitored 4 (M4) - student has met reclassification criteria, is no longer classified as LEP/EL in PEIMS, is in his or her fourth year of monitoring as required by ESSA, 1111(b)(3)(B).' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Former LEP/EL Student' as shortdescription,'Former LEP/EL Student (effective after fourth year of monitoring) - student has previously been identified as LEP/EL, has met reclassification criteria, and has completed four years of monitoring. The student continues with this status through the remainder of his or her school years in Texas.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- LocalEducationAgencyCategory;
    SET @v_descriptor = 'LocalEducationAgencyCategory';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%LOCALEDUCATIONAGENCYCATEGORY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'School District' as shortdescription,'School District' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Charter' as shortdescription,'Charter' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- MilitaryConnectedStudent;
    SET @v_descriptor = 'MilitaryConnectedStudent';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%MILITARYCONNECTEDSTUDENT%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Not a military-connected student' as shortdescription,'Not a military-connected student' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'KG-12 Dependent Active Duty US Military' as shortdescription,'Student in grade KG – 12 is a dependent of an active duty member of the United States military' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'KG-12 Dependent Current Member of TX National Guard' as shortdescription,'Student in grade KG – 12 is a dependent of a current member of the Texas National Guard (Army, Air Guard, or State Guard)' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'KG-12 Dependent Current Member Reserve Force US Military' as shortdescription,'Student in grade KG – 12 is a dependent of a current member of a reserve force in the United States military' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'PK Dependent Active Duty US Military Or Reserve, Killed On Active Duty' as shortdescription,'Pre-kindergarten student is:
1) a dependent of an active duty member of the armed forces of the United States, including the state military forces or a reserve component of the armed forces, who is ordered to active duty by proper authority, or
2) is the child of a member of the armed forces of the United States, including the state military forces or a reserve component of the armed forces, who was injured or killed while serving on active duty.
Note: A student remains eligible for enrollment if the child''s parent leaves the armed forces or is no longer on active duty after the child begins a prekindergarten class.' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'KG-12 Dependent Former US Military, TX National Guard, Reserve US Military' as shortdescription,'Student in grade KG – 12 is a dependent of a former member of one of the following:
- the United States military
- the Texas National Guard (Army, Air Guard, or State Guard)
- a reserve force in the United States military' as description UNION 
             SELECT @v_namespace AS namespace,'6' as codevalue,'KG-12 Dependent Military Or Reserve US Military Killed In Line Of Duty' as shortdescription,'Student in grade KG – 12 was a dependent of a member of a military or reserve force in the United States military who was killed in the line of duty' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- NonCampusBasedInstruction;
    SET @v_descriptor = 'NonCampusBasedInstruction';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%NONCAMPUSBASEDINSTRUCTION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'College Campus Based Course' as shortdescription,'College Campus Based Course' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Electronic/Internet/Correspond/Video Conferencing Course (Not TxVSN)' as shortdescription,'Electronic/Internet/Correspondence Based/Video Conferencing Course (Not a TxVSN course)' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Non-District Teacher Providing Classroom Instruction Services' as shortdescription,'Non-District Teacher Providing Classroom Instruction Services' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'TxVSN Online Schools program (Formerly Electronic Course Program (eCP))' as shortdescription,'Texas Virtual School Network (TxVSN) Online Schools program (Formerly Electronic Course Program (eCP))' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Texas Virtual School Network (TxVSN) Statewide Online Course Catalog' as shortdescription,'Texas Virtual School Network (TxVSN) Statewide Online Course Catalog' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Non-Campus Teacher Providing Instruction at Another District Facility' as shortdescription,'Non-Campus Teacher Providing Instruction at Another District Facility' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Juvenile Justice Alternative Education Program (JJAEP) - TEC 37.011' as shortdescription,'Juvenile Justice Alternative Education Program (JJAEP) - TEC 37.011' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Credit by Exam' as shortdescription,'Credit by Exam' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Out of District DAEP Program' as shortdescription,'Out of District DAEP Program' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Non-District PE Sub Program (Limited to Service IDs PES00008 - PES00011)' as shortdescription,'Non-District PE Substitution Program (Limited to Service IDs PES00008 - PES00011)' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Optional Flex School Day Online Dropout Recovery Program - TEC 29.081 (e-2)' as shortdescription,'Optional Flexible School Day Online Dropout Recovery Program - TEC 29.081 (e-2)' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- NSLPType;
    SET @v_descriptor = 'NSLPType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%NSLPTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'No, not participating in NSLP' as shortdescription,'No, not participating in NSLP' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Yes, participating in NSLP without Provision or CEP' as shortdescription,'Yes, participating in NSLP without using any Provisions or the Community Eligibility Provision' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Yes, participating in NSLP under Provision 2' as shortdescription,'Yes, participating in NSLP under Provision 2' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Yes, participating in NSLP under CEP' as shortdescription,'Yes, participating in NSLP under the Community Eligibility Provision' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ParentalPermission;
    SET @v_descriptor = 'ParentalPermission';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PARENTALPERMISSION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'7' as codevalue,'Parent Or Guardian Did Not Respond' as shortdescription,'Parent Or Guardian Did Not Respond' as description UNION 
             SELECT @v_namespace AS namespace,'8' as codevalue,'Parent Or Guardian Was Not Contacted' as shortdescription,'Parent Or Guardian Was Not Contacted' as description UNION 
             SELECT @v_namespace AS namespace,'C' as codevalue,'Parent or Guardian Denied Placement of a LEP in any Special Lang Program' as shortdescription,'Parent or guardian has denied placement of a LEP/English learner (EL) student in any and all special language programs (Bilingual program, ESL program)' as description UNION 
             SELECT @v_namespace AS namespace,'H' as codevalue,'Parent or Guardian Requested Placement of Non-LEP in ESL Program' as shortdescription,'Parent or guardian has requested placement of a non-LEP/English proficient (EP) student in the ESL program' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Parent or Guardian Requested Placement of Non-LEP in Bilingual Program' as shortdescription,'Parent or guardian has requested placement of a non-LEP/English proficient (EP) student in the Bilingual program.' as description UNION 
             SELECT @v_namespace AS namespace,'G' as codevalue,'Parent or Guardian Placement Reclassified Non-LEP Bilingual or ESL Program' as shortdescription,'Parent or guardian has approved the placement of a reclassified non-LEP/English proficient (EP) student in a Bilingual or ESL program' as description UNION 
             SELECT @v_namespace AS namespace,'A' as codevalue,'Parent or Guardian Denied LEP in Bilingual Approved in ESL program' as shortdescription,'Parent or guardian has denied placement of a LEP/English learner (EL) student in the required Bilingual program, but has approved placement of a LEP/English learner (EL) student in the ESL program' as description UNION 
             SELECT @v_namespace AS namespace,'D' as codevalue,'Parent or Guardian Approved LEP in Bilingual Program' as shortdescription,'Parent or guardian has approved placement of a LEP/English learner (EL) student in the Bilingual program' as description UNION 
             SELECT @v_namespace AS namespace,'E' as codevalue,'Parent or Guardian Approved LEP in Bilingual, LEA Alternative Lang Program' as shortdescription,'Parent or guardian has approved placement of a LEP/English learner (EL) student in the Bilingual program, but the LEA is implementing an alternative language program approved by the Texas Education Agency due to the LEAs submission of a Bilingual Education Exception for the current school year, per 19 TAC §89.1207' as description UNION 
             SELECT @v_namespace AS namespace,'J' as codevalue,'Parent or Guardian Approved LEP in ESL, LEA Alternative Lang Program' as shortdescription,'Parent or guardian has approved the placement of a LEP/English learner (EL) student in the ESL program, but the LEA is implementing an alternative language program approved by the Texas Education Agency due to the LEAs submission of an ESL Waiver for the current school year, per 19 TAC §89.1207' as description UNION 
             SELECT @v_namespace AS namespace,'K' as codevalue,'Parent or Guardian Approved LEP in ESL Program' as shortdescription,'Parent or guardian has approved placement of a LEP/English learner (EL) student in the ESL program' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PKCurricula;
    SET @v_descriptor = 'PKCurricula';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PKCURRICULA%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'The Texas DLM Early Childhood Express' as shortdescription,'The Texas DLM Early Childhood Express' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Opening the World of Learning: Texas Comprehensive Pre-K' as shortdescription,'Opening the World of Learning: Texas Comprehensive Pre-K' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Scholastic Big Day for PreK Texas Program' as shortdescription,'Scholastic Big Day for PreK Texas Program' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'HighScope Preschool Curriculum and Assessment' as shortdescription,'HighScope Preschool Curriculum and Assessment' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Frog Street Pre-K Texas System' as shortdescription,'Frog Street Pre-K Texas System' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Teaching Strategies System for Pre-K, Texas edition' as shortdescription,'Teaching Strategies System for Pre-K, Texas edition' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PKFundingSource;
    SET @v_descriptor = 'PKFundingSource';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PKFUNDINGSOURCE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'1' as codevalue,'Tuition Fees' as shortdescription,'Tuition Fees' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Local District Share Funding' as shortdescription,'Local District Share Funding' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'State Grant Funding' as shortdescription,'State Grant Funding' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Federal Funding' as shortdescription,'Federal Funding' as description UNION 
             SELECT @v_namespace AS namespace,'5' as codevalue,'Early Education Allotment' as shortdescription,'Early Education Allotment' as description UNION 
             SELECT @v_namespace AS namespace,'9' as codevalue,'Other Funding' as shortdescription,'Other Funding' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PKProgramEvaluationType;
    SET @v_descriptor = 'PKProgramEvaluationType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PKPROGRAMEVALUATIONTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'None' as shortdescription,'None' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'TEA Self-Assessment Tool' as shortdescription,'TEA Self-Assessment Tool' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PKProgramType;
    SET @v_descriptor = 'PKProgramType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PKPROGRAMTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'Not Applicable' as shortdescription,'Not Applicable' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'PK Eligible At Least Two Hours Less Than Four Hours Each Day' as shortdescription,'Prekindergarten eligible student participates in a Prekindergarten program that provides instruction to the student at least two hours and less than four hours each day.' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'PK Eligible at Least Four Hours Each Day' as shortdescription,'Prekindergarten eligible student participates in the Prekindergarten program that provides instruction to the student at least four hours each day.' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'PK Eligible At Least Four Hours Each Day And Special Education Services' as shortdescription,'Prekindergarten eligible student participates in the Prekindergarten program that provides instruction to the student at least four hours each day and receives special education services.' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'PK Ineligible At Least Two Hours Less Than Four Hours Each Day' as shortdescription,'Prekindergarten ineligible student participates in a Prekindergarten program that provides instruction to the student at least two hours and less than four hours each day.' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'PK Ineligible At Least Four Hours Each Day' as shortdescription,'Prekindergarten ineligible student participates in the Prekindergarten program that provides instruction to the student at least four hours each day.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PKSchoolType;
    SET @v_descriptor = 'PKSchoolType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PKSCHOOLTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Non-Public Pre-K Head Start' as shortdescription,'Non-Public Pre-K Head Start' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Public Pre-K' as shortdescription,'Public Pre-K' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Non-Public Pre-K Licensed Child Care' as shortdescription,'Non-Public Pre-K Licensed Child Care' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Public Pre-K Head Start' as shortdescription,'Public Pre-K Head Start' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Public Pre-K Licensed Child Care' as shortdescription,'Public Pre-K Licensed Child Care' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Non-Public Pre-K' as shortdescription,'Non-Public Pre-K' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'In-District Charter Partnership' as shortdescription,'In-District Charter Partnership' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PKStudentInstruction;
    SET @v_descriptor = 'PKStudentInstruction';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PKSTUDENTINSTRUCTION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Full Day' as shortdescription,'Full Day' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Half Day – Morning' as shortdescription,'Half Day – Morning' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Half Day – Afternoon' as shortdescription,'Half Day - Afternoon' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PKTeacherRequirement;
    SET @v_descriptor = 'PKTeacherRequirement';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PKTEACHERREQUIREMENT%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Certification through AMI or MACTE' as shortdescription,'Certification offered through a training center accredited by Association Montessori Internationale or through the Montessori Accreditation Council for Teacher Education' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'At least 8 yrs exp teach in nat accredited child care program' as shortdescription,'At least eight years'' experience of teaching in a nationally accredited child care program' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'PK teacher in a school district specific PK professional dev has been met.' as shortdescription,'Be employed as a prekindergarten teacher in a school district that has ensured specific prekindergarten professional development has been met.' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'A graduate or undergraduate degree early child edu or early child SPED' as shortdescription,'A graduate or undergraduate degree in early childhood education or early childhood special education' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'A Child Development Associate (CDA) credential' as shortdescription,'A Child Development Associate (CDA) credential' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Documented completion of the TSR Comprehensive' as shortdescription,'Documented completion of the Texas School Ready Training Program (TSR Comprehensive)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PopulationServed;
    SET @v_descriptor = 'PopulationServed';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%POPULATIONSERVED%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Regular Students' as shortdescription,'Regular Students:  Those students served through the regular academic program and students who do not constitute a special population' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Bilingual Students' as shortdescription,'Bilingual Students:  Those students served in Bilingual programs' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Compensatory/Remedial Education Students' as shortdescription,'Compensatory/Remedial Education Students:  Those students served in compensatory or remedial education programs' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Gifted and Talented Students' as shortdescription,'Gifted and Talented Students:  Those students served in programs for identified gifted and talented students' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Career and Technical Education Students' as shortdescription,'Career and Technical Education Students:  Those students served in an approved state career and technical education course' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Special Education Students' as shortdescription,'Special Education Students:  Those students served in special education programs as determined by the admission, review, and dismissal committee' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'ESL Students' as shortdescription,'ESL Students:  Those students served in English as a Second Language programs' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Adult Basic Education Students' as shortdescription,'Adult Basic Education Students:  Those students served in the Adult Basic Education program' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Honors Student' as shortdescription,'Honors Students: Those students served in Honors classes' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Migrant Students' as shortdescription,'Migrant Students:  Those students served in migrant programs' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PostSecondaryCertificationLicensure;
    SET @v_descriptor = 'PostSecondaryCertificationLicensure';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%POSTSECONDARYCERTIFICATIONLICENSURE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'010' as codevalue,'Adobe Certified Associate After Effects' as shortdescription,'Adobe Certified Associate After Effects' as description UNION 
             SELECT @v_namespace AS namespace,'011' as codevalue,'Adobe Certified Associate Animate' as shortdescription,'Adobe Certified Associate Animate' as description UNION 
             SELECT @v_namespace AS namespace,'012' as codevalue,'Adobe Certified Associate Creative Cloud' as shortdescription,'Adobe Certified Associate Creative Cloud' as description UNION 
             SELECT @v_namespace AS namespace,'013' as codevalue,'Adobe Certified Associate Creative Suite 6' as shortdescription,'Adobe Certified Associate Creative Suite 6' as description UNION 
             SELECT @v_namespace AS namespace,'014' as codevalue,'Adobe Certified Associate Flash' as shortdescription,'Adobe Certified Associate Flash' as description UNION 
             SELECT @v_namespace AS namespace,'015' as codevalue,'Adobe Certified Associate Illustrator' as shortdescription,'Adobe Certified Associate Illustrator' as description UNION 
             SELECT @v_namespace AS namespace,'016' as codevalue,'Adobe Certified Associate InDesign' as shortdescription,'Adobe Certified Associate InDesign' as description UNION 
             SELECT @v_namespace AS namespace,'017' as codevalue,'Adobe Certified Associate Photoshop' as shortdescription,'Adobe Certified Associate Photoshop' as description UNION 
             SELECT @v_namespace AS namespace,'018' as codevalue,'Adobe Certified Associate Premiere Pro' as shortdescription,'Adobe Certified Associate Premiere Pro' as description UNION 
             SELECT @v_namespace AS namespace,'019' as codevalue,'Adobe Certified Associate Visual Design Specialist' as shortdescription,'Adobe Certified Associate Visual Design Specialist' as description UNION 
             SELECT @v_namespace AS namespace,'020' as codevalue,'Adobe Certified Associate Web Design Specialist' as shortdescription,'Adobe Certified Associate Web Design Specialist' as description UNION 
             SELECT @v_namespace AS namespace,'030' as codevalue,'Adobe Certified Expert After Effects' as shortdescription,'Adobe Certified Expert After Effects' as description UNION 
             SELECT @v_namespace AS namespace,'031' as codevalue,'Adobe Certified Expert Illustrator' as shortdescription,'Adobe Certified Expert Illustrator' as description UNION 
             SELECT @v_namespace AS namespace,'032' as codevalue,'Adobe Certified Expert InDesign' as shortdescription,'Adobe Certified Expert InDesign' as description UNION 
             SELECT @v_namespace AS namespace,'033' as codevalue,'Adobe Certified Expert Photoshop' as shortdescription,'Adobe Certified Expert Photoshop' as description UNION 
             SELECT @v_namespace AS namespace,'034' as codevalue,'Adobe Certified Expert Web Premiere Pro' as shortdescription,'Adobe Certified Expert Web Premiere Pro' as description UNION 
             SELECT @v_namespace AS namespace,'040' as codevalue,'Aerospace Manufacturing' as shortdescription,'Aerospace Manufacturing' as description UNION 
             SELECT @v_namespace AS namespace,'100' as codevalue,'API 1104 Welding' as shortdescription,'API 1104 Welding' as description UNION 
             SELECT @v_namespace AS namespace,'101' as codevalue,'Apple App Development with Swift' as shortdescription,'Apple App Development with Swift' as description UNION 
             SELECT @v_namespace AS namespace,'102' as codevalue,'Apple Final Cut Pro X' as shortdescription,'Apple Final Cut Pro X' as description UNION 
             SELECT @v_namespace AS namespace,'103' as codevalue,'Apple iWork' as shortdescription,'Apple iWork' as description UNION 
             SELECT @v_namespace AS namespace,'104' as codevalue,'Apple Logic Pro X' as shortdescription,'Apple Logic Pro X' as description UNION 
             SELECT @v_namespace AS namespace,'120' as codevalue,'ASE Auto Transmission' as shortdescription,'ASE Auto Transmission' as description UNION 
             SELECT @v_namespace AS namespace,'121' as codevalue,'ASE Auto Transmission Entry Level' as shortdescription,'ASE Auto Transmission Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'130' as codevalue,'ASE Automobile Service Technology' as shortdescription,'ASE Automobile Service Technology' as description UNION 
             SELECT @v_namespace AS namespace,'131' as codevalue,'ASE Automobile Service Technology Entry Level' as shortdescription,'ASE Automobile Service Technology Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'140' as codevalue,'ASE Brakes' as shortdescription,'ASE Brakes' as description UNION 
             SELECT @v_namespace AS namespace,'141' as codevalue,'ASE Brakes Entry Level' as shortdescription,'ASE Brakes Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'150' as codevalue,'ASE Electrical/Electronic Systems' as shortdescription,'ASE Electrical/Electronic Systems' as description UNION 
             SELECT @v_namespace AS namespace,'151' as codevalue,'ASE Electrical/Electronic Systems Entry Level' as shortdescription,'ASE Electrical/Electronic Systems Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'160' as codevalue,'ASE Engine Performance' as shortdescription,'ASE Engine Performance' as description UNION 
             SELECT @v_namespace AS namespace,'161' as codevalue,'ASE Engine Performance Entry Level' as shortdescription,'ASE Engine Performance Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'170' as codevalue,'ASE Engine Repair' as shortdescription,'ASE Engine Repair' as description UNION 
             SELECT @v_namespace AS namespace,'171' as codevalue,'ASE Engine Repair Entry Level' as shortdescription,'ASE Engine Repair Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'181' as codevalue,'ASE Heating, Ventilation, AC (HVAC)' as shortdescription,'ASE Heating, Ventilation, AC (HVAC)' as description UNION 
             SELECT @v_namespace AS namespace,'182' as codevalue,'ASE Heating, Ventilation, AC (HVAC) Entry Level' as shortdescription,'ASE Heating, Ventilation, AC (HVAC) Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'190' as codevalue,'ASE Maintenance Light Repair' as shortdescription,'ASE Maintenance Light Repair' as description UNION 
             SELECT @v_namespace AS namespace,'191' as codevalue,'ASE Maintenance Light Repair Entry Level' as shortdescription,'ASE Maintenance Light Repair Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'200' as codevalue,'ASE Manual Drive Train' as shortdescription,'ASE Manual Drive Train' as description UNION 
             SELECT @v_namespace AS namespace,'201' as codevalue,'ASE Manual Drive Train Axles Entry Level' as shortdescription,'ASE Manual Drive Train Axles Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'210' as codevalue,'ASE Mech Elec Components' as shortdescription,'ASE Mech Elec Components' as description UNION 
             SELECT @v_namespace AS namespace,'211' as codevalue,'ASE Mech Elec Components Entry Level' as shortdescription,'ASE Mech Elec Components Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'220' as codevalue,'ASE Non-Structural Analysis Damage Repair' as shortdescription,'ASE Non-Structural Analysis Damage Repair' as description UNION 
             SELECT @v_namespace AS namespace,'221' as codevalue,'ASE Non-Structural Analysis Damage Repair Entry Level' as shortdescription,'ASE Non-Structural Analysis Damage Repair Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'230' as codevalue,'ASE Painting & Refinishing' as shortdescription,'ASE Painting & Refinishing' as description UNION 
             SELECT @v_namespace AS namespace,'231' as codevalue,'ASE Painting & Refinishing Entry Level' as shortdescription,'ASE Painting & Refinishing Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'240' as codevalue,'ASE Refrigerant Recovery and Recycling' as shortdescription,'ASE Refrigerant Recovery and Recycling' as description UNION 
             SELECT @v_namespace AS namespace,'250' as codevalue,'ASE Structural Analysis Damage Repair' as shortdescription,'ASE Structural Analysis Damage Repair' as description UNION 
             SELECT @v_namespace AS namespace,'251' as codevalue,'ASE Structural Analysis Damage Repair Entry Level' as shortdescription,'ASE Structural Analysis Damage Repair Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'260' as codevalue,'ASE Suspension and Steering' as shortdescription,'ASE Suspension and Steering' as description UNION 
             SELECT @v_namespace AS namespace,'261' as codevalue,'ASE Suspension and Steering Entry Level' as shortdescription,'ASE Suspension and Steering Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'270' as codevalue,'ASE Truck Technician Brakes' as shortdescription,'ASE Truck Technician Brakes' as description UNION 
             SELECT @v_namespace AS namespace,'271' as codevalue,'ASE Truck Technician Brakes Entry Level' as shortdescription,'ASE Truck Technician Brakes Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'280' as codevalue,'ASE Truck Technician Diesel Engines' as shortdescription,'ASE Truck Technician Diesel Engines' as description UNION 
             SELECT @v_namespace AS namespace,'281' as codevalue,'ASE Truck Technician Diesel Engines Entry Level' as shortdescription,'ASE Truck Technician Diesel Engines Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'290' as codevalue,'ASE Truck Technician Drive Trains' as shortdescription,'ASE Truck Technician Drive Trains' as description UNION 
             SELECT @v_namespace AS namespace,'300' as codevalue,'ASE Truck Technician Electronic Systems' as shortdescription,'ASE Truck Technician Electronic Systems' as description UNION 
             SELECT @v_namespace AS namespace,'301' as codevalue,'ASE Truck Technician Electronic Systems Entry Level' as shortdescription,'ASE Truck Technician Electronic Systems Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'310' as codevalue,'ASE Truck Technician HVAC' as shortdescription,'ASE Truck Technician HVAC' as description UNION 
             SELECT @v_namespace AS namespace,'320' as codevalue,'ASE Truck Technician Suspension Steering' as shortdescription,'ASE Truck Technician Suspension Steering' as description UNION 
             SELECT @v_namespace AS namespace,'321' as codevalue,'ASE Truck Technician Suspension Steering Entry Level' as shortdescription,'ASE Truck Technician Suspension Steering Entry Level' as description UNION 
             SELECT @v_namespace AS namespace,'330' as codevalue,'Associate of (ISC)' as shortdescription,'Associate of (ISC)' as description UNION 
             SELECT @v_namespace AS namespace,'331' as codevalue,'Autodesk Certified Professional or User AutoCAD' as shortdescription,'Autodesk Certified Professional or User AutoCAD' as description UNION 
             SELECT @v_namespace AS namespace,'332' as codevalue,'Autodesk Certified Professional or User AutoCAD Civil 3D' as shortdescription,'Autodesk Certified Professional or User AutoCAD Civil 3D' as description UNION 
             SELECT @v_namespace AS namespace,'333' as codevalue,'Autodesk Certified Professional or User Autodesk Revit Building Systems' as shortdescription,'Autodesk Certified Professional or User Autodesk Revit Building Systems' as description UNION 
             SELECT @v_namespace AS namespace,'334' as codevalue,'Autodesk Certified Professional or User Revit Architecture' as shortdescription,'Autodesk Certified Professional or User Revit Architecture' as description UNION 
             SELECT @v_namespace AS namespace,'335' as codevalue,'Autodesk Certified Professional or User Revit MEP Electrical' as shortdescription,'Autodesk Certified Professional or User Revit MEP Electrical' as description UNION 
             SELECT @v_namespace AS namespace,'336' as codevalue,'Autodesk Certified Professional or User Inventor' as shortdescription,'Autodesk Certified Professional or User Inventor' as description UNION 
             SELECT @v_namespace AS namespace,'340' as codevalue,'AWS D1.1 Structural Steel' as shortdescription,'AWS D1.1 Structural Steel' as description UNION 
             SELECT @v_namespace AS namespace,'350' as codevalue,'AWS D9.1 Sheet Metal Welding' as shortdescription,'AWS D9.1 Sheet Metal Welding' as description UNION 
             SELECT @v_namespace AS namespace,'351' as codevalue,'AWS Certified Welder' as shortdescription,'AWS Certified Welder' as description UNION 
             SELECT @v_namespace AS namespace,'360' as codevalue,'AWS SENSE Welding Level 1' as shortdescription,'AWS SENSE Welding Level 1' as description UNION 
             SELECT @v_namespace AS namespace,'361' as codevalue,'Barber Operator License' as shortdescription,'Barber Operator License' as description UNION 
             SELECT @v_namespace AS namespace,'362' as codevalue,'Basic Structure Fire Protection' as shortdescription,'Basic Structure Fire Protection' as description UNION 
             SELECT @v_namespace AS namespace,'365' as codevalue,'C++ Certified Associate Programmer' as shortdescription,'C++ Certified Associate Programmer' as description UNION 
             SELECT @v_namespace AS namespace,'366' as codevalue,'Certified Aerospace Technician' as shortdescription,'Certified Aerospace Technician' as description UNION 
             SELECT @v_namespace AS namespace,'367' as codevalue,'Certified Associate Project Management' as shortdescription,'Certified Associate Project Management' as description UNION 
             SELECT @v_namespace AS namespace,'368' as codevalue,'Certified Cardiographic Technician' as shortdescription,'Certified Cardiographic Technician' as description UNION 
             SELECT @v_namespace AS namespace,'369' as codevalue,'Certified Coding Associate' as shortdescription,'Certified Coding Associate' as description UNION 
             SELECT @v_namespace AS namespace,'370' as codevalue,'Certified Dental Assistant' as shortdescription,'Certified Dental Assistant' as description UNION 
             SELECT @v_namespace AS namespace,'380' as codevalue,'Certified EKG Technician' as shortdescription,'Certified EKG Technician' as description UNION 
             SELECT @v_namespace AS namespace,'381' as codevalue,'Certified Electronics Systems Associate' as shortdescription,'Certified Electronics Systems Associate' as description UNION 
             SELECT @v_namespace AS namespace,'382' as codevalue,'Certified Engineering Technician - Audio Systems' as shortdescription,'Certified Engineering Technician - Audio Systems' as description UNION 
             SELECT @v_namespace AS namespace,'383' as codevalue,'Certified Fundamentals Cook' as shortdescription,'Certified Fundamentals Cook' as description UNION 
             SELECT @v_namespace AS namespace,'384' as codevalue,'Certified Fundamentals Pastry Cook' as shortdescription,'Certified Fundamentals Pastry Cook' as description UNION 
             SELECT @v_namespace AS namespace,'385' as codevalue,'Certified Hospitality & Tourism Management' as shortdescription,'Certified Hospitality & Tourism Management' as description UNION 
             SELECT @v_namespace AS namespace,'386' as codevalue,'Certified Insurance Service Representative' as shortdescription,'Certified Insurance Service Representative' as description UNION 
             SELECT @v_namespace AS namespace,'390' as codevalue,'Certified Nurse Aide/Assistant' as shortdescription,'Certified Nurse Aide/Assistant' as description UNION 
             SELECT @v_namespace AS namespace,'391' as codevalue,'Certified Occupational Therapy Assistant' as shortdescription,'Certified Occupational Therapy Assistant' as description UNION 
             SELECT @v_namespace AS namespace,'392' as codevalue,'Certified Ophthalmic Technician' as shortdescription,'Certified Ophthalmic Technician' as description UNION 
             SELECT @v_namespace AS namespace,'401' as codevalue,'Certified Personal Trainer' as shortdescription,'Certified Personal Trainer' as description UNION 
             SELECT @v_namespace AS namespace,'402' as codevalue,'Certified Respiratory Therapist' as shortdescription,'Certified Respiratory Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'410' as codevalue,'Certified SOLIDWORKS Associate – Academic' as shortdescription,'Certified SOLIDWORKS Associate – Academic' as description UNION 
             SELECT @v_namespace AS namespace,'411' as codevalue,'Certified Surgical Technologist' as shortdescription,'Certified Surgical Technologist' as description UNION 
             SELECT @v_namespace AS namespace,'420' as codevalue,'Certified Veterinary Assistant' as shortdescription,'Certified Veterinary Assistant' as description UNION 
             SELECT @v_namespace AS namespace,'430' as codevalue,'Child Development Associate' as shortdescription,'Child Development Associate' as description UNION 
             SELECT @v_namespace AS namespace,'439' as codevalue,'Cisco Certified Design Associate' as shortdescription,'Cisco Certified Design Associate' as description UNION 
             SELECT @v_namespace AS namespace,'440' as codevalue,'Cisco Certified Network Associate- Cloud (CCNA Cloud)' as shortdescription,'Cisco Certified Network Associate- Cloud (CCNA Cloud)' as description UNION 
             SELECT @v_namespace AS namespace,'450' as codevalue,'Cisco Certified Network Associate Security (CCNA Security)' as shortdescription,'Cisco Certified Network Associate Security (CCNA Security)' as description UNION 
             SELECT @v_namespace AS namespace,'451' as codevalue,'Cisco Certified Network Associate- Cyber Ops (CCNA Cyber Ops)' as shortdescription,'Cisco Certified Network Associate- Cyber Ops (CCNA Cyber Ops)' as description UNION 
             SELECT @v_namespace AS namespace,'452' as codevalue,'Cisco Certified Network Associate - Data Center (CCNA Data Center)' as shortdescription,'Cisco Certified Network Associate - Data Center (CCNA Data Center)' as description UNION 
             SELECT @v_namespace AS namespace,'453' as codevalue,'Cisco Certified Network Associate- Service Provider (CCNA SP)' as shortdescription,'Cisco Certified Network Associate- Service Provider (CCNA SP)' as description UNION 
             SELECT @v_namespace AS namespace,'460' as codevalue,'Cisco Certified Entry Networking Technician (CCENT)' as shortdescription,'Cisco Certified Entry Networking Technician (CCENT)' as description UNION 
             SELECT @v_namespace AS namespace,'470' as codevalue,'Clinical Medical Assistant' as shortdescription,'Clinical Medical Assistant' as description UNION 
             SELECT @v_namespace AS namespace,'478' as codevalue,'Commercial Non Commercial Pesticide Applicator' as shortdescription,'Commercial Non Commercial Pesticide Applicator' as description UNION 
             SELECT @v_namespace AS namespace,'479' as codevalue,'Community Health Worker' as shortdescription,'Community Health Worker' as description UNION 
             SELECT @v_namespace AS namespace,'480' as codevalue,'Comp TIA A Plus Certification' as shortdescription,'Comp TIA A Plus Certification' as description UNION 
             SELECT @v_namespace AS namespace,'481' as codevalue,'CompTIA IT Fundamentals' as shortdescription,'CompTIA IT Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'490' as codevalue,'Comp TIA Network' as shortdescription,'Comp TIA Network' as description UNION 
             SELECT @v_namespace AS namespace,'500' as codevalue,'CompTIA Security Plus' as shortdescription,'CompTIA Security Plus' as description UNION 
             SELECT @v_namespace AS namespace,'508' as codevalue,'Cosmetology Esthetician License' as shortdescription,'Cosmetology Esthetician License' as description UNION 
             SELECT @v_namespace AS namespace,'509' as codevalue,'Cosmetology Manicurist License' as shortdescription,'Cosmetology Manicurist License' as description UNION 
             SELECT @v_namespace AS namespace,'510' as codevalue,'Cosmetology Operator License' as shortdescription,'Cosmetology Operator License' as description UNION 
             SELECT @v_namespace AS namespace,'511' as codevalue,'Educational Aide I' as shortdescription,'Educational Aide I' as description UNION 
             SELECT @v_namespace AS namespace,'512' as codevalue,'Entrepreneurship and Small Business' as shortdescription,'Entrepreneurship and Small Business' as description UNION 
             SELECT @v_namespace AS namespace,'520' as codevalue,'Electrical Apprenticeship Certificate Level 1' as shortdescription,'Electrical Apprenticeship Certificate Level 1' as description UNION 
             SELECT @v_namespace AS namespace,'530' as codevalue,'Emergency Medical Technician' as shortdescription,'Emergency Medical Technician' as description UNION 
             SELECT @v_namespace AS namespace,'531' as codevalue,'ESRI ArcGIS Desktop Entry' as shortdescription,'ESRI ArcGIS Desktop Entry' as description UNION 
             SELECT @v_namespace AS namespace,'532' as codevalue,'FAA Aviation Maintenance Technician General' as shortdescription,'FAA Aviation Maintenance Technician General' as description UNION 
             SELECT @v_namespace AS namespace,'533' as codevalue,'FAA Aviation Maintenance Technician Airframe' as shortdescription,'FAA Aviation Maintenance Technician Airframe' as description UNION 
             SELECT @v_namespace AS namespace,'534' as codevalue,'FAA Part 107 Remote Drone Pilot' as shortdescription,'FAA Part 107 Remote Drone Pilot' as description UNION 
             SELECT @v_namespace AS namespace,'535' as codevalue,'FANUC Robot Operator 1' as shortdescription,'FANUC Robot Operator 1' as description UNION 
             SELECT @v_namespace AS namespace,'536' as codevalue,'Feedyard Technician in Cattle Care and Handling' as shortdescription,'Feedyard Technician in Cattle Care and Handling' as description UNION 
             SELECT @v_namespace AS namespace,'537' as codevalue,'Feedyard Technician in Machinery Operation, Repair and Maintenance' as shortdescription,'Feedyard Technician in Machinery Operation, Repair and Maintenance' as description UNION 
             SELECT @v_namespace AS namespace,'538' as codevalue,'Google Analytics Individual Qualification' as shortdescription,'Google Analytics Individual Qualification' as description UNION 
             SELECT @v_namespace AS namespace,'539' as codevalue,'Google Cloud Certified Professional - Cloud Architect' as shortdescription,'Google Cloud Certified Professional - Cloud Architect' as description UNION 
             SELECT @v_namespace AS namespace,'540' as codevalue,'ISCET Certified Electronics Technicians' as shortdescription,'ISCET Certified Electronics Technicians' as description UNION 
             SELECT @v_namespace AS namespace,'541' as codevalue,'Landscape Irrigation Technician' as shortdescription,'Landscape Irrigation Technician' as description UNION 
             SELECT @v_namespace AS namespace,'542' as codevalue,'Licensed Dental Hygienist' as shortdescription,'Licensed Dental Hygienist' as description UNION 
             SELECT @v_namespace AS namespace,'543' as codevalue,'Licensed Dietetic Technician' as shortdescription,'Licensed Dietetic Technician' as description UNION 
             SELECT @v_namespace AS namespace,'544' as codevalue,'Licensed Veterinarian Technician' as shortdescription,'Licensed Veterinarian Technician' as description UNION 
             SELECT @v_namespace AS namespace,'545' as codevalue,'Licensed Vocational Nurse' as shortdescription,'Licensed Vocational Nurse' as description UNION 
             SELECT @v_namespace AS namespace,'546' as codevalue,'Limited License Radiology Technologist' as shortdescription,'Limited License Radiology Technologist' as description UNION 
             SELECT @v_namespace AS namespace,'547' as codevalue,'Medical Coding and Billing Specialist' as shortdescription,'Medical Coding and Billing Specialist' as description UNION 
             SELECT @v_namespace AS namespace,'548' as codevalue,'ManageFirst Professional' as shortdescription,'ManageFirst Professional' as description UNION 
             SELECT @v_namespace AS namespace,'549' as codevalue,'Mastercam Associate Certification' as shortdescription,'Mastercam Associate Certification' as description UNION 
             SELECT @v_namespace AS namespace,'550' as codevalue,'Medical Laboratory Assistant' as shortdescription,'Medical Laboratory Assistant' as description UNION 
             SELECT @v_namespace AS namespace,'551' as codevalue,'Microsoft Office Specialist Excel' as shortdescription,'Microsoft Office Specialist Excel' as description UNION 
             SELECT @v_namespace AS namespace,'662' as codevalue,'Microsoft Office Specialist Word' as shortdescription,'Microsoft Office Specialist Word' as description UNION 
             SELECT @v_namespace AS namespace,'560' as codevalue,'Microsoft Office Expert – Excel' as shortdescription,'Microsoft Office Expert – Excel' as description UNION 
             SELECT @v_namespace AS namespace,'570' as codevalue,'Microsoft Office Expert – Word' as shortdescription,'Microsoft Office Expert – Word' as description UNION 
             SELECT @v_namespace AS namespace,'580' as codevalue,'Microsoft Office Specialist (MOS) Master-2016' as shortdescription,'Microsoft Office Specialist (MOS) Master-2016' as description UNION 
             SELECT @v_namespace AS namespace,'581' as codevalue,'Microsoft Office Specialist (MOS) Master-2013 (Track 1)' as shortdescription,'Microsoft Office Specialist (MOS) Master-2013 (Track 1)' as description UNION 
             SELECT @v_namespace AS namespace,'582' as codevalue,'Microsoft Office Specialist (MOS) Master-2013 (Track 2)' as shortdescription,'Microsoft Office Specialist (MOS) Master-2013 (Track 2)' as description UNION 
             SELECT @v_namespace AS namespace,'583' as codevalue,'Microsoft Office Specialist (MOS) Master-2013 (Track 3)' as shortdescription,'Microsoft Office Specialist (MOS) Master-2013 (Track 3)' as description UNION 
             SELECT @v_namespace AS namespace,'590' as codevalue,'Microsoft Technology Associate (MTA) Cloud Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Cloud Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'591' as codevalue,'Microsoft Technology Associate (MTA) Database Administration Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Database Administration Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'592' as codevalue,'Microsoft Technology Associate (MTA) HTML5 App Development Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) HTML5 App Development Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'593' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using HTML and CSS' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using HTML and CSS' as description UNION 
             SELECT @v_namespace AS namespace,'594' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using Java' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using Java' as description UNION 
             SELECT @v_namespace AS namespace,'595' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using JavaScript' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using JavaScript' as description UNION 
             SELECT @v_namespace AS namespace,'596' as codevalue,'Microsoft Technology Associate (MTA) Intro Programming Using Python' as shortdescription,'Microsoft Technology Associate (MTA) Intro Programming Using Python' as description UNION 
             SELECT @v_namespace AS namespace,'597' as codevalue,'Microsoft Technology Associate (MTA) Mobility and Device Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Mobility and Device Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'598' as codevalue,'Microsoft Technology Associate (MTA) Networking Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Networking Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'599' as codevalue,'Microsoft Technology Associate (MTA) Security Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Security Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'600' as codevalue,'National Metal Working Skills Certification- ITM Basic Mechanical Systems' as shortdescription,'National Metal Working Skills Certification- ITM Basic Mechanical Systems' as description UNION 
             SELECT @v_namespace AS namespace,'601' as codevalue,'National Metal Working Skills Certification- ITM Basic Pneumatic Systems' as shortdescription,'National Metal Working Skills Certification- ITM Basic Pneumatic Systems' as description UNION 
             SELECT @v_namespace AS namespace,'602' as codevalue,'National Metal Working Skills Certification- ITM Electrical Systems' as shortdescription,'National Metal Working Skills Certification- ITM Electrical Systems' as description UNION 
             SELECT @v_namespace AS namespace,'603' as codevalue,'National Metal Working Skills Certification- ITM Electronic Control Systems' as shortdescription,'National Metal Working Skills Certification- ITM Electronic Control Systems' as description UNION 
             SELECT @v_namespace AS namespace,'604' as codevalue,'National Metal Working Skills Certification- ITM Maintenance Operations' as shortdescription,'National Metal Working Skills Certification- ITM Maintenance Operations' as description UNION 
             SELECT @v_namespace AS namespace,'605' as codevalue,'National Metal Working Skills Certification- ITM Maintenance Piping' as shortdescription,'National Metal Working Skills Certification- ITM Maintenance Piping' as description UNION 
             SELECT @v_namespace AS namespace,'606' as codevalue,'National Metal Working Skills Certification- ITM Maintenance Welding' as shortdescription,'National Metal Working Skills Certification- ITM Maintenance Welding' as description UNION 
             SELECT @v_namespace AS namespace,'607' as codevalue,'National Metal Working Skills Certification- ITM Process Control Systems' as shortdescription,'National Metal Working Skills Certification- ITM Process Control Systems' as description UNION 
             SELECT @v_namespace AS namespace,'610' as codevalue,'NCCER Carpentry Level I' as shortdescription,'NCCER Carpentry Level I' as description UNION 
             SELECT @v_namespace AS namespace,'611' as codevalue,'NCCER Carpentry Level II' as shortdescription,'NCCER Carpentry Level II' as description UNION 
             SELECT @v_namespace AS namespace,'612' as codevalue,'NCCER Commercial Carpenter' as shortdescription,'NCCER Commercial Carpenter' as description UNION 
             SELECT @v_namespace AS namespace,'613' as codevalue,'NCCER Construction Site Safety Technician' as shortdescription,'NCCER Construction Site Safety Technician' as description UNION 
             SELECT @v_namespace AS namespace,'620' as codevalue,'NCCER Construction Technology Certification Level I' as shortdescription,'NCCER Construction Technology Certification Level I' as description UNION 
             SELECT @v_namespace AS namespace,'630' as codevalue,'NCCER Core Level I' as shortdescription,'NCCER Core Level I' as description UNION 
             SELECT @v_namespace AS namespace,'640' as codevalue,'NCCER Electrical Level I' as shortdescription,'NCCER Electrical Level I' as description UNION 
             SELECT @v_namespace AS namespace,'641' as codevalue,'NCCER Electrical Level II' as shortdescription,'NCCER Electrical Level II' as description UNION 
             SELECT @v_namespace AS namespace,'642' as codevalue,'NCCER Commercial Electrician' as shortdescription,'NCCER Commercial Electrician' as description UNION 
             SELECT @v_namespace AS namespace,'650' as codevalue,'NCCER Electronic System Technician Level I' as shortdescription,'NCCER Electronic System Technician Level I' as description UNION 
             SELECT @v_namespace AS namespace,'651' as codevalue,'NCCER Electronic System Technician Level II' as shortdescription,'NCCER Electronic System Technician Level II' as description UNION 
             SELECT @v_namespace AS namespace,'660' as codevalue,'NCCER Heating Ventilation Air Conditioning Level I' as shortdescription,'NCCER Heating Ventilation Air Conditioning Level I' as description UNION 
             SELECT @v_namespace AS namespace,'670' as codevalue,'NCCER Industrial Maintenance Level I' as shortdescription,'NCCER Industrial Maintenance Level I' as description UNION 
             SELECT @v_namespace AS namespace,'680' as codevalue,'NCCER Instrumentation Level I' as shortdescription,'NCCER Instrumentation Level I' as description UNION 
             SELECT @v_namespace AS namespace,'690' as codevalue,'NCCER Masonry Level I' as shortdescription,'NCCER Masonry Level I' as description UNION 
             SELECT @v_namespace AS namespace,'691' as codevalue,'NCCER Masonry Level II' as shortdescription,'NCCER Masonry Level II' as description UNION 
             SELECT @v_namespace AS namespace,'700' as codevalue,'NCCER Millwright Level I' as shortdescription,'NCCER Millwright Level I' as description UNION 
             SELECT @v_namespace AS namespace,'701' as codevalue,'NCCER Millwright Level II' as shortdescription,'NCCER Millwright Level II' as description UNION 
             SELECT @v_namespace AS namespace,'710' as codevalue,'NCCER Painting Level I' as shortdescription,'NCCER Painting Level I' as description UNION 
             SELECT @v_namespace AS namespace,'720' as codevalue,'NCCER Pipefitting Level I' as shortdescription,'NCCER Pipefitting Level I' as description UNION 
             SELECT @v_namespace AS namespace,'730' as codevalue,'NCCER Plumbing Level I' as shortdescription,'NCCER Plumbing Level I' as description UNION 
             SELECT @v_namespace AS namespace,'731' as codevalue,'NCCER Plumbing Level II' as shortdescription,'NCCER Plumbing Level II' as description UNION 
             SELECT @v_namespace AS namespace,'740' as codevalue,'NCCER Sheet Metal Level I' as shortdescription,'NCCER Sheet Metal Level I' as description UNION 
             SELECT @v_namespace AS namespace,'750' as codevalue,'NCCER Weatherization Level I' as shortdescription,'NCCER Weatherization Level I' as description UNION 
             SELECT @v_namespace AS namespace,'760' as codevalue,'NCCER Welding Level I' as shortdescription,'NCCER Welding Level I' as description UNION 
             SELECT @v_namespace AS namespace,'761' as codevalue,'Non-Commissioned Security Officer Level II' as shortdescription,'Non-Commissioned Security Officer Level II' as description UNION 
             SELECT @v_namespace AS namespace,'770' as codevalue,'Oracle Certified Associate Java SE 8 Programmer ' as shortdescription,'Oracle Certified Associate Java SE 8 Programmer ' as description UNION 
             SELECT @v_namespace AS namespace,'780' as codevalue,'Oracle Certified Database Associate' as shortdescription,'Oracle Certified Database Associate' as description UNION 
             SELECT @v_namespace AS namespace,'781' as codevalue,'Orthopedic Exercise Specialty Certification' as shortdescription,'Orthopedic Exercise Specialty Certification' as description UNION 
             SELECT @v_namespace AS namespace,'782' as codevalue,'Orthopedic Technologist' as shortdescription,'Orthopedic Technologist' as description UNION 
             SELECT @v_namespace AS namespace,'783' as codevalue,'OSHA 30 Hour Construction' as shortdescription,'OSHA 30 Hour Construction' as description UNION 
             SELECT @v_namespace AS namespace,'784' as codevalue,'OSHA 30 Hour General' as shortdescription,'OSHA 30 Hour General' as description UNION 
             SELECT @v_namespace AS namespace,'785' as codevalue,'OSHA Hazardous Waste Operations and Emergency Response' as shortdescription,'OSHA Hazardous Waste Operations and Emergency Response' as description UNION 
             SELECT @v_namespace AS namespace,'786' as codevalue,'Patient Care Technician' as shortdescription,'Patient Care Technician' as description UNION 
             SELECT @v_namespace AS namespace,'790' as codevalue,'Pharmacy Technician' as shortdescription,'Pharmacy Technician' as description UNION 
             SELECT @v_namespace AS namespace,'800' as codevalue,'Phlebotomy Technician' as shortdescription,'Phlebotomy Technician' as description UNION 
             SELECT @v_namespace AS namespace,'810' as codevalue,'QuickBooks Certified User' as shortdescription,'QuickBooks Certified User' as description UNION 
             SELECT @v_namespace AS namespace,'811' as codevalue,'ServSafe Manager' as shortdescription,'ServSafe Manager' as description UNION 
             SELECT @v_namespace AS namespace,'812' as codevalue,'Texas State Floral Association Floral Skills Knowledge Based' as shortdescription,'Texas State Floral Association Floral Skills Knowledge Based' as description UNION 
             SELECT @v_namespace AS namespace,'813' as codevalue,'Texas State Floral Association Level I' as shortdescription,'Texas State Floral Association Level I' as description UNION 
             SELECT @v_namespace AS namespace,'814' as codevalue,'Texas State Floral Association Level II' as shortdescription,'Texas State Floral Association Level II' as description UNION 
             SELECT @v_namespace AS namespace,'815' as codevalue,'Tradesman Plumber-Limited License' as shortdescription,'Tradesman Plumber-Limited License' as description UNION 
             SELECT @v_namespace AS namespace,'816' as codevalue,'Unity Certified Programmer' as shortdescription,'Unity Certified Programmer' as description UNION 
             SELECT @v_namespace AS namespace,'820' as codevalue,'Wastewater Collections' as shortdescription,'Wastewater Collections' as description UNION 
             SELECT @v_namespace AS namespace,'830' as codevalue,'Water Operators' as shortdescription,'Water Operators' as description UNION 
             SELECT @v_namespace AS namespace,'831' as codevalue,'WD Certified Web Design' as shortdescription,'WD Certified Web Design' as description UNION 
             SELECT @v_namespace AS namespace,'832' as codevalue,'Google Cloud Certified Professional- G Suite' as shortdescription,'Google Cloud Certified Professional- G Suite' as description UNION 
             SELECT @v_namespace AS namespace,'833' as codevalue,'IAED Emergency Telecommunicator' as shortdescription,'IAED Emergency Telecommunicator' as description UNION 
             SELECT @v_namespace AS namespace,'834' as codevalue,'ISA Certified Control Systems Technician' as shortdescription,'ISA Certified Control Systems Technician' as description UNION 
             SELECT @v_namespace AS namespace,'835' as codevalue,'Mastercam Associate Certification Mill Design and Toolpaths' as shortdescription,'Mastercam Associate Certification Mill Design and Toolpaths' as description UNION 
             SELECT @v_namespace AS namespace,'836' as codevalue,'Mastercam Certified Professional Mill Level 1' as shortdescription,'Mastercam Certified Professional Mill Level 1' as description UNION 
             SELECT @v_namespace AS namespace,'837' as codevalue,'Mastercam Professional Level Certification' as shortdescription,'Mastercam Professional Level Certification' as description UNION 
             SELECT @v_namespace AS namespace,'838' as codevalue,'Microsoft Technology Associate (MTA) Software Development Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Software Development Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'839' as codevalue,'Microsoft Technology Associate (MTA) Windows Operating System Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Windows Operating System Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'840' as codevalue,'Microsoft Tech Associate (MTA) Windows Server Administration Fundamentals' as shortdescription,'Microsoft Technology Associate (MTA) Windows Server Administration Fundamentals' as description UNION 
             SELECT @v_namespace AS namespace,'841' as codevalue,'MSSC Certified Logistics Technician (CLT)' as shortdescription,'MSSC Certified Logistics Technician (CLT)' as description UNION 
             SELECT @v_namespace AS namespace,'842' as codevalue,'MSSC Certified Production Technician (CPT)' as shortdescription,'MSSC Certified Production Technician (CPT)' as description UNION 
             SELECT @v_namespace AS namespace,'843' as codevalue,'National Metal Working Skills Machining CNC Milling Operations' as shortdescription,'National Metal Working Skills Machining CNC Milling Operations' as description UNION 
             SELECT @v_namespace AS namespace,'844' as codevalue,'National Metal Working Skills Machining CNC Milling Programming Set Up' as shortdescription,'National Metal Working Skills Machining CNC Milling Programming Set Up' as description UNION 
             SELECT @v_namespace AS namespace,'845' as codevalue,'National Metal Working Skills Machining CNC Turning Operations' as shortdescription,'National Metal Working Skills Machining CNC Turning Operations' as description UNION 
             SELECT @v_namespace AS namespace,'846' as codevalue,'National Metal Working Skills Machining CNC Turning Programming Set Up' as shortdescription,'National Metal Working Skills Machining CNC Turning Programming Set Up' as description UNION 
             SELECT @v_namespace AS namespace,'847' as codevalue,'National Metal Working Skills Machining Drill Press Skills 1' as shortdescription,'National Metal Working Skills Machining Drill Press Skills 1' as description UNION 
             SELECT @v_namespace AS namespace,'848' as codevalue,'National Metal Working Skills Machining Grinding Skills 1' as shortdescription,'National Metal Working Skills Machining Grinding Skills 1' as description UNION 
             SELECT @v_namespace AS namespace,'849' as codevalue,'National Metal Working Skills Machining Manual Milling Skills 1' as shortdescription,'National Metal Working Skills Machining Manual Milling Skills 1' as description UNION 
             SELECT @v_namespace AS namespace,'850' as codevalue,'National Metal Working Skills Machining Measurement, Material, Safety' as shortdescription,'National Metal Working Skills Machining Measurement, Material, Safety' as description UNION 
             SELECT @v_namespace AS namespace,'860' as codevalue,'Real Estate Sales Agent License' as shortdescription,'Real Estate Sales Agent License' as description UNION 
             SELECT @v_namespace AS namespace,'870' as codevalue,'Refrigerant Handling (EPA 608)' as shortdescription,'Refrigerant Handling (EPA 608)' as description UNION 
             SELECT @v_namespace AS namespace,'880' as codevalue,'Registered Dental Assistant' as shortdescription,'Registered Dental Assistant' as description UNION 
             SELECT @v_namespace AS namespace,'890' as codevalue,'Registered Diagnostic Medical Sonographer – Abdomen' as shortdescription,'Registered Diagnostic Medical Sonographer – Abdomen' as description UNION 
             SELECT @v_namespace AS namespace,'891' as codevalue,'Registered Diagnostic Medical Sonographer - Obstetrics and Gynecology' as shortdescription,'Registered Diagnostic Medical Sonographer - Obstetrics and Gynecology' as description UNION 
             SELECT @v_namespace AS namespace,'900' as codevalue,'Registered Nurse' as shortdescription,'Registered Nurse' as description UNION 
             SELECT @v_namespace AS namespace,'910' as codevalue,'Registered Technologist - Cardiac-Interventional Radiography' as shortdescription,'Registered Technologist - Cardiac-Interventional Radiography' as description UNION 
             SELECT @v_namespace AS namespace,'911' as codevalue,'Registered Technologist - Computed Tomography' as shortdescription,'Registered Technologist - Computed Tomography' as description UNION 
             SELECT @v_namespace AS namespace,'912' as codevalue,'Registered Technologist - Magnetic Resonance Imaging' as shortdescription,'Registered Technologist - Magnetic Resonance Imaging' as description UNION 
             SELECT @v_namespace AS namespace,'913' as codevalue,'Registered Technologist – Mammography' as shortdescription,'Registered Technologist – Mammography' as description UNION 
             SELECT @v_namespace AS namespace,'914' as codevalue,'Registered Technologist - Nuclear Medicine Technology' as shortdescription,'Registered Technologist - Nuclear Medicine Technology' as description UNION 
             SELECT @v_namespace AS namespace,'915' as codevalue,'Registered Technologist – Radiography' as shortdescription,'Registered Technologist – Radiography' as description UNION 
             SELECT @v_namespace AS namespace,'916' as codevalue,'Registered Technologist – Sonography' as shortdescription,'Registered Technologist – Sonography' as description UNION 
             SELECT @v_namespace AS namespace,'917' as codevalue,'Registered Technologist - Vascular Sonography' as shortdescription,'Registered Technologist - Vascular Sonography' as description UNION 
             SELECT @v_namespace AS namespace,'918' as codevalue,'Registered Technologist - Vascular-Interventional Radiography' as shortdescription,'Registered Technologist - Vascular-Interventional Radiography' as description UNION 
             SELECT @v_namespace AS namespace,'930' as codevalue,'Registered Vascular Technology' as shortdescription,'Registered Vascular Technology' as description UNION 
             SELECT @v_namespace AS namespace,'931' as codevalue,'Medical Laboratory Technician' as shortdescription,'Medical Laboratory Technician' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PPCDServiceLocation;
    SET @v_descriptor = 'PPCDServiceLocation';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PPCDSERVICELOCATION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Not applicable to this student ' as shortdescription,'Not applicable to this student (i.e. students who do not meet PPCD reporting requirement).' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'PPCD EC Prog 10 Hrs Per Week and Majority of SPED Svcs in Reg EC Prog.' as shortdescription,'(A1) PPCD child participates in a regular early childhood program at least 10 hours per week and receives the majority of his/her special education services in the regular early childhood education program. The program is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities which includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)),
The location of the program may include but is not limited to:
(a) Community-Based Preschool (3- Through 5-Year-Olds);
(b) District or Community Child Care Programs;
(c) Head Start Programs;
(d) Kindergarten Programs;
(e) Prekindergarten Programs; or
(f) School-Based Preschool, Staff and/or Community Access (3- Through 5-Year-Olds).' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'PPCD SPED Prog Majority Svcs in Class With 50 percent of disabled children.' as shortdescription,'(C1, C2, C3) PPCD child participates in a special education program and receives the majority of his/her special education services in a program that is specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of disabled children (i.e., children with an individualized education program (IEP)).' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'PPCD EC Less Than 10 Hrs Per Week and Majority of SPED Svcs in Reg EC Prog.' as shortdescription,'(B1) PPCD child participates in a regular early childhood program less than 10 hours per week, and receives the majority of his/her special education services in the regular early childhood education program. The program is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities which includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)),
The location of the program may include but is not limited to:
(a) Community-Based Preschool (3- Through 5-Year-Olds);
(b) District or Community Child Care Programs;
(c) Head Start Programs;
(d) Kindergarten Programs;
(e) Prekindergarten Programs; or
(f) School-Based Preschool, Staff and/or Community Access (3- Through 5-Year-Olds).' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- PreferredHomeCommunicationMethod;
    SET @v_descriptor = 'PreferredHomeCommunicationMethod';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PREFERREDHOMECOMMUNICATIONMETHOD%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Visual' as shortdescription,'Visual' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Auditory' as shortdescription,'Auditory' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Tactile' as shortdescription,'Tactile' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Multiple or Total' as shortdescription,'Multiple or Total' as description UNION 
             SELECT @v_namespace AS namespace,'98' as codevalue,'Parent or Guardian did not Respond' as shortdescription,'Parent or Guardian did not Respond' as description UNION 
             SELECT @v_namespace AS namespace,'99' as codevalue,'Parent or Guardian was not able to be Reached' as shortdescription,'Parent or Guardian was not able to be Reached' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ProgramOfStudy;
    SET @v_descriptor = 'ProgramOfStudy';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PROGRAMOFSTUDY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'001' as codevalue,'Accounting and Financial Services' as shortdescription,'Accounting and Financial Services' as description UNION 
             SELECT @v_namespace AS namespace,'002' as codevalue,'Advanced Manufacturing and Machinery Mechanics' as shortdescription,'Advanced Manufacturing and Machinery Mechanics' as description UNION 
             SELECT @v_namespace AS namespace,'003' as codevalue,'Agribusiness' as shortdescription,'Agribusiness' as description UNION 
             SELECT @v_namespace AS namespace,'004' as codevalue,'Animal Science' as shortdescription,'Animal Science' as description UNION 
             SELECT @v_namespace AS namespace,'005' as codevalue,'Applied Agricultural Engineering' as shortdescription,'Applied Agricultural Engineering' as description UNION 
             SELECT @v_namespace AS namespace,'006' as codevalue,'Architectural Design' as shortdescription,'Architectural Design' as description UNION 
             SELECT @v_namespace AS namespace,'007' as codevalue,'Automotive' as shortdescription,'Automotive' as description UNION 
             SELECT @v_namespace AS namespace,'008' as codevalue,'Aviation Maintenance' as shortdescription,'Aviation Maintenance' as description UNION 
             SELECT @v_namespace AS namespace,'009' as codevalue,'Bio-Medical Science' as shortdescription,'Bio-Medical Science' as description UNION 
             SELECT @v_namespace AS namespace,'011' as codevalue,'Business Management' as shortdescription,'Business Management' as description UNION 
             SELECT @v_namespace AS namespace,'012' as codevalue,'Carpentry' as shortdescription,'Carpentry' as description UNION 
             SELECT @v_namespace AS namespace,'013' as codevalue,'Cosmetology and Personal Care Services' as shortdescription,'Cosmetology and Personal Care Services' as description UNION 
             SELECT @v_namespace AS namespace,'014' as codevalue,'Culinary Arts' as shortdescription,'Culinary Arts' as description UNION 
             SELECT @v_namespace AS namespace,'015' as codevalue,'Cybersecurity' as shortdescription,'Cybersecurity' as description UNION 
             SELECT @v_namespace AS namespace,'016' as codevalue,'Diesel and Heavy Equipment' as shortdescription,'Diesel and Heavy Equipment' as description UNION 
             SELECT @v_namespace AS namespace,'017' as codevalue,'Digital Communications' as shortdescription,'Digital Communications' as description UNION 
             SELECT @v_namespace AS namespace,'018' as codevalue,'Distribution and Logistics' as shortdescription,'Distribution and Logistics' as description UNION 
             SELECT @v_namespace AS namespace,'019' as codevalue,'Early Learning' as shortdescription,'Early Learning' as description UNION 
             SELECT @v_namespace AS namespace,'020' as codevalue,'Electrical' as shortdescription,'Electrical' as description UNION 
             SELECT @v_namespace AS namespace,'021' as codevalue,'Emergency Services' as shortdescription,'Emergency Services' as description UNION 
             SELECT @v_namespace AS namespace,'022' as codevalue,'Engineering' as shortdescription,'Engineering' as description UNION 
             SELECT @v_namespace AS namespace,'023' as codevalue,'Entrepreneurship' as shortdescription,'Entrepreneurship' as description UNION 
             SELECT @v_namespace AS namespace,'024' as codevalue,'Environmental and Natural Resources' as shortdescription,'Environmental and Natural Resources' as description UNION 
             SELECT @v_namespace AS namespace,'025' as codevalue,'Exercise Science and Wellness' as shortdescription,'Exercise Science and Wellness' as description UNION 
             SELECT @v_namespace AS namespace,'026' as codevalue,'Family and Community Services' as shortdescription,'Family and Community Services' as description UNION 
             SELECT @v_namespace AS namespace,'027' as codevalue,'Food Science and Technology' as shortdescription,'Food Science and Technology' as description UNION 
             SELECT @v_namespace AS namespace,'028' as codevalue,'Government and Public Administration' as shortdescription,'Government and Public Administration' as description UNION 
             SELECT @v_namespace AS namespace,'029' as codevalue,'Graphic Design and Multimedia Arts' as shortdescription,'Graphic Design and Multimedia Arts' as description UNION 
             SELECT @v_namespace AS namespace,'030' as codevalue,'Health and Wellness' as shortdescription,'Health and Wellness' as description UNION 
             SELECT @v_namespace AS namespace,'031' as codevalue,'Health Informatics' as shortdescription,'Health Informatics' as description UNION 
             SELECT @v_namespace AS namespace,'032' as codevalue,'Healthcare Diagnostics' as shortdescription,'Healthcare Diagnostics' as description UNION 
             SELECT @v_namespace AS namespace,'033' as codevalue,'Healthcare Therapeutic' as shortdescription,'Healthcare Therapeutic' as description UNION 
             SELECT @v_namespace AS namespace,'034' as codevalue,'HVAC and Sheet Metal' as shortdescription,'HVAC and Sheet Metal' as description UNION 
             SELECT @v_namespace AS namespace,'035' as codevalue,'Information Technology Support and Services' as shortdescription,'Information Technology Support and Services' as description UNION 
             SELECT @v_namespace AS namespace,'036' as codevalue,'Law Enforcement' as shortdescription,'Law Enforcement' as description UNION 
             SELECT @v_namespace AS namespace,'037' as codevalue,'Legal Studies' as shortdescription,'Legal Studies' as description UNION 
             SELECT @v_namespace AS namespace,'038' as codevalue,'Lodging and Resort Management' as shortdescription,'Lodging and Resort Management' as description UNION 
             SELECT @v_namespace AS namespace,'039' as codevalue,'Manufacturing Technology' as shortdescription,'Manufacturing Technology' as description UNION 
             SELECT @v_namespace AS namespace,'040' as codevalue,'Marketing and Sales' as shortdescription,'Marketing and Sales' as description UNION 
             SELECT @v_namespace AS namespace,'041' as codevalue,'Masonry' as shortdescription,'Masonry' as description UNION 
             SELECT @v_namespace AS namespace,'042' as codevalue,'Networking Systems' as shortdescription,'Networking Systems' as description UNION 
             SELECT @v_namespace AS namespace,'043' as codevalue,'Nursing Science' as shortdescription,'Nursing Science' as description UNION 
             SELECT @v_namespace AS namespace,'044' as codevalue,'Oil and Gas Exploration and Production' as shortdescription,'Oil and Gas Exploration and Production' as description UNION 
             SELECT @v_namespace AS namespace,'045' as codevalue,'Plant Science' as shortdescription,'Plant Science' as description UNION 
             SELECT @v_namespace AS namespace,'046' as codevalue,'Plumbing and Pipefitting' as shortdescription,'Plumbing and Pipefitting' as description UNION 
             SELECT @v_namespace AS namespace,'047' as codevalue,'Programming and Software Development' as shortdescription,'Programming and Software Development' as description UNION 
             SELECT @v_namespace AS namespace,'048' as codevalue,'Refining and Chemical Processes' as shortdescription,'Refining and Chemical Processes' as description UNION 
             SELECT @v_namespace AS namespace,'049' as codevalue,'Renewable Energy' as shortdescription,'Renewable Energy' as description UNION 
             SELECT @v_namespace AS namespace,'050' as codevalue,'Teaching and Training' as shortdescription,'Teaching and Training' as description UNION 
             SELECT @v_namespace AS namespace,'051' as codevalue,'Travel, Tourism, and Attractions' as shortdescription,'Travel, Tourism, and Attractions' as description UNION 
             SELECT @v_namespace AS namespace,'052' as codevalue,'Web Development' as shortdescription,'Web Development' as description UNION 
             SELECT @v_namespace AS namespace,'054' as codevalue,'Construction Management and Inspection' as shortdescription,'Construction Management and Inspection' as description UNION 
             SELECT @v_namespace AS namespace,'056' as codevalue,'Aviation (Flight)' as shortdescription,'Aviation (Flight)' as description UNION 
             SELECT @v_namespace AS namespace,'058' as codevalue,'Maritime' as shortdescription,'Maritime' as description UNION 
             SELECT @v_namespace AS namespace,'059' as codevalue,'Medical Therapy' as shortdescription,'Medical Therapy' as description UNION 
             SELECT @v_namespace AS namespace,'060' as codevalue,'Welding' as shortdescription,'Welding' as description UNION 
             SELECT @v_namespace AS namespace,'061' as codevalue,'Drone (Unmanned Flight)' as shortdescription,'Drone (Unmanned Flight)' as description UNION 
             SELECT @v_namespace AS namespace,'062' as codevalue,'Geospatial Engineering and Land Surveying' as shortdescription,'Geospatial Engineering and Land Surveying' as description UNION 
             SELECT @v_namespace AS namespace,'063' as codevalue,'Industrial Maintenance' as shortdescription,'Industrial Maintenance' as description UNION 
             SELECT @v_namespace AS namespace,'064' as codevalue,'Printing and Imaging' as shortdescription,'Printing and Imaging' as description UNION 
             SELECT @v_namespace AS namespace,'065' as codevalue,'Retail Management' as shortdescription,'Retail Management' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ProgramType;
    SET @v_descriptor = 'ProgramType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%PROGRAMTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Adult/Continuing Education' as shortdescription,'Adult/Continuing Education' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Alternative Education' as shortdescription,'Alternative Education' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Athletics' as shortdescription,'Athletics' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Bilingual' as shortdescription,'Bilingual' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Career and Technical Education' as shortdescription,'Career and Technical Education' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Cocurricular Programs' as shortdescription,'Cocurricular Programs' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'College Preparatory' as shortdescription,'College Preparatory' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Community Service Program' as shortdescription,'Community Service Program' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Community/Junior College Education Program' as shortdescription,'Community/Junior College Education Program' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Compensatory Services for Disadvantaged Students' as shortdescription,'Compensatory Services for Disadvantaged Students' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Counseling Services' as shortdescription,'Counseling Services' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'English as a Second Language (ESL)' as shortdescription,'English as a Second Language (ESL)' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Even Start' as shortdescription,'Even Start' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Extended Day/Child Care Services' as shortdescription,'Extended Day/Child Care Services' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'Gifted and Talented' as shortdescription,'Gifted and Talented' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Head Start' as shortdescription,'Head Start' as description UNION 
             SELECT @v_namespace AS namespace,'17' as codevalue,'Health Services Program' as shortdescription,'Health Services Program' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'HSEP' as shortdescription,'High School Equivalency Program (HSEP)' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'IDEA' as shortdescription,'IDEA' as description UNION 
             SELECT @v_namespace AS namespace,'20' as codevalue,'Immigrant Education' as shortdescription,'Immigrant Education' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'Indian Education' as shortdescription,'Indian Education' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'International Baccalaureate' as shortdescription,'International Baccalaureate' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'Library/Medica Services Program' as shortdescription,'Library/Medica Services Program' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'Magnet/Special Program Emphasis' as shortdescription,'Magnet/Special Program Emphasis' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'Migrant Education' as shortdescription,'Migrant Education' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'Neglected and Delinquent Program' as shortdescription,'Neglected and Delinquent Program' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'OFSDP' as shortdescription,'Optional Flexible School Day Program (OFSDP)' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'Regular Education' as shortdescription,'Regular Education' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'Remedial Education' as shortdescription,'Remedial Education' as description UNION 
             SELECT @v_namespace AS namespace,'31' as codevalue,'Section 504 Placement' as shortdescription,'Section 504 Placement' as description UNION 
             SELECT @v_namespace AS namespace,'32' as codevalue,'Service Learning' as shortdescription,'Service Learning' as description UNION 
             SELECT @v_namespace AS namespace,'33' as codevalue,'Special Education' as shortdescription,'Special Education' as description UNION 
             SELECT @v_namespace AS namespace,'34' as codevalue,'Student Retention/Dropout Prevention' as shortdescription,'Student Retention/Dropout Prevention' as description UNION 
             SELECT @v_namespace AS namespace,'35' as codevalue,'Substance Abuse Education/Prevention' as shortdescription,'Substance Abuse Education/Prevention' as description UNION 
             SELECT @v_namespace AS namespace,'36' as codevalue,'Teacher Professional Development/Mentoring' as shortdescription,'Teacher Professional Development/Mentoring' as description UNION 
             SELECT @v_namespace AS namespace,'37' as codevalue,'Technical Preparatory' as shortdescription,'Technical Preparatory' as description UNION 
             SELECT @v_namespace AS namespace,'38' as codevalue,'Title I Part A' as shortdescription,'Title I Part A' as description UNION 
             SELECT @v_namespace AS namespace,'39' as codevalue,'Vocational Education' as shortdescription,'Vocational Education' as description UNION 
             SELECT @v_namespace AS namespace,'40' as codevalue,'Bilingual Summer' as shortdescription,'Bilingual Summer' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Race;
    SET @v_descriptor = 'Race';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%RACE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'American Indian - Alaskan Native' as shortdescription,'American Indian - Alaskan Native' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Asian' as shortdescription,'Asian' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Black - African American' as shortdescription,'Black - African American' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Native Hawaiian - Pacific Islander' as shortdescription,'Native Hawaiian - Pacific Islander' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'White' as shortdescription,'White' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- RelationType;
    SET @v_descriptor = 'RelationType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%RELATIONTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Adopted Daughter' as shortdescription,'Adopted Daughter' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Adopted Son' as shortdescription,'Adopted Son' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Adoptive Parents' as shortdescription,'Adoptive Parents' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Advisor' as shortdescription,'Advisor' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Agency Representative' as shortdescription,'Agency Representative' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Aunt' as shortdescription,'Aunt' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Brother, Half' as shortdescription,'Brother, Half' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Brother, Natural/Adoptive' as shortdescription,'Brother, Natural/Adoptive' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Brother, Step' as shortdescription,'Brother, Step' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Brother-In-Law' as shortdescription,'Brother-In-Law' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Case Worker, CPS' as shortdescription,'Case Worker, CPS' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Court Appointed Guardian' as shortdescription,'Court Appointed Guardian' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Cousin' as shortdescription,'Cousin' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Daughter' as shortdescription,'Daughter' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'Daughter-In-Law' as shortdescription,'Daughter-In-Law' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Dependent' as shortdescription,'Dependent' as description UNION 
             SELECT @v_namespace AS namespace,'17' as codevalue,'Doctor' as shortdescription,'Doctor' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'Employer' as shortdescription,'Employer' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'Family Member' as shortdescription,'Family Member' as description UNION 
             SELECT @v_namespace AS namespace,'20' as codevalue,'Father''s Significant Other' as shortdescription,'Father''s Significant Other' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'Father, Foster' as shortdescription,'Father, Foster' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'Father' as shortdescription,'Father' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'Father, Step' as shortdescription,'Father, Step' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'Father-In-Law' as shortdescription,'Father-In-Law' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'Fiance' as shortdescription,'Fiance' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'Fiancee' as shortdescription,'Fiancee' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'Former Husband' as shortdescription,'Former Husband' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'Former Wife' as shortdescription,'Former Wife' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'Foster Daughter' as shortdescription,'Foster Daughter' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'Foster Parent' as shortdescription,'Foster Parent' as description UNION 
             SELECT @v_namespace AS namespace,'31' as codevalue,'Foster Son' as shortdescription,'Foster Son' as description UNION 
             SELECT @v_namespace AS namespace,'32' as codevalue,'Friend' as shortdescription,'Friend' as description UNION 
             SELECT @v_namespace AS namespace,'33' as codevalue,'Granddaughter' as shortdescription,'Granddaughter' as description UNION 
             SELECT @v_namespace AS namespace,'34' as codevalue,'Grandparent' as shortdescription,'Grandparent' as description UNION 
             SELECT @v_namespace AS namespace,'35' as codevalue,'Great Grandparent' as shortdescription,'Great Grandparent' as description UNION 
             SELECT @v_namespace AS namespace,'36' as codevalue,'Grandson' as shortdescription,'Grandson' as description UNION 
             SELECT @v_namespace AS namespace,'37' as codevalue,'Great Aunt' as shortdescription,'Great Aunt' as description UNION 
             SELECT @v_namespace AS namespace,'38' as codevalue,'Great Uncle' as shortdescription,'Great Uncle' as description UNION 
             SELECT @v_namespace AS namespace,'39' as codevalue,'Guardian' as shortdescription,'Guardian' as description UNION 
             SELECT @v_namespace AS namespace,'40' as codevalue,'Husband' as shortdescription,'Husband' as description UNION 
             SELECT @v_namespace AS namespace,'41' as codevalue,'Life Partner' as shortdescription,'Life Partner' as description UNION 
             SELECT @v_namespace AS namespace,'42' as codevalue,'Life Partner Of Parent' as shortdescription,'Life Partner Of Parent' as description UNION 
             SELECT @v_namespace AS namespace,'43' as codevalue,'Minister Or Priest' as shortdescription,'Minister Or Priest' as description UNION 
             SELECT @v_namespace AS namespace,'44' as codevalue,'Mother''s Significant Other' as shortdescription,'Mother''s Significant Other' as description UNION 
             SELECT @v_namespace AS namespace,'45' as codevalue,'Mother, Foster' as shortdescription,'Mother, Foster' as description UNION 
             SELECT @v_namespace AS namespace,'46' as codevalue,'Mother' as shortdescription,'Mother' as description UNION 
             SELECT @v_namespace AS namespace,'47' as codevalue,'Mother, Step' as shortdescription,'Mother, Step' as description UNION 
             SELECT @v_namespace AS namespace,'48' as codevalue,'Mother-In-Law' as shortdescription,'Mother-In-Law' as description UNION 
             SELECT @v_namespace AS namespace,'49' as codevalue,'Nephew' as shortdescription,'Nephew' as description UNION 
             SELECT @v_namespace AS namespace,'50' as codevalue,'Niece' as shortdescription,'Niece' as description UNION 
             SELECT @v_namespace AS namespace,'51' as codevalue,'None' as shortdescription,'None' as description UNION 
             SELECT @v_namespace AS namespace,'52' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT @v_namespace AS namespace,'53' as codevalue,'Parent' as shortdescription,'Parent' as description UNION 
             SELECT @v_namespace AS namespace,'54' as codevalue,'Partner' as shortdescription,'Partner' as description UNION 
             SELECT @v_namespace AS namespace,'55' as codevalue,'Partner Of Parent' as shortdescription,'Partner Of Parent' as description UNION 
             SELECT @v_namespace AS namespace,'56' as codevalue,'Probation Officer' as shortdescription,'Probation Officer' as description UNION 
             SELECT @v_namespace AS namespace,'57' as codevalue,'Sibling' as shortdescription,'Sibling' as description UNION 
             SELECT @v_namespace AS namespace,'58' as codevalue,'Sister, Half' as shortdescription,'Sister, Half' as description UNION 
             SELECT @v_namespace AS namespace,'59' as codevalue,'Sister, Natural/Adoptive' as shortdescription,'Sister, Natural/Adoptive' as description UNION 
             SELECT @v_namespace AS namespace,'60' as codevalue,'Sister, Step' as shortdescription,'Sister, Step' as description UNION 
             SELECT @v_namespace AS namespace,'61' as codevalue,'Sister-In-Law' as shortdescription,'Sister-In-Law' as description UNION 
             SELECT @v_namespace AS namespace,'62' as codevalue,'Son' as shortdescription,'Son' as description UNION 
             SELECT @v_namespace AS namespace,'63' as codevalue,'Son-In-Law' as shortdescription,'Son-In-Law' as description UNION 
             SELECT @v_namespace AS namespace,'64' as codevalue,'Spouse' as shortdescription,'Spouse' as description UNION 
             SELECT @v_namespace AS namespace,'65' as codevalue,'Stepdaughter' as shortdescription,'Stepdaughter' as description UNION 
             SELECT @v_namespace AS namespace,'66' as codevalue,'Stepson' as shortdescription,'Stepson' as description UNION 
             SELECT @v_namespace AS namespace,'67' as codevalue,'Stepsibling' as shortdescription,'Stepsibling' as description UNION 
             SELECT @v_namespace AS namespace,'68' as codevalue,'Uncle' as shortdescription,'Uncle' as description UNION 
             SELECT @v_namespace AS namespace,'69' as codevalue,'Ward' as shortdescription,'Ward' as description UNION 
             SELECT @v_namespace AS namespace,'70' as codevalue,'Wife' as shortdescription,'Wife' as description UNION 
             SELECT @v_namespace AS namespace,'71' as codevalue,'Emergency Contact' as shortdescription,'Emergency Contact' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Responsibility;
    SET @v_descriptor = 'Responsibility';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%RESPONSIBILITY%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Accountability' as shortdescription,'Accountability' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Residency' as shortdescription,'Residency' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- RestraintEventReason;
    SET @v_descriptor = 'RestraintEventReason';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%RESTRAINTEVENTREASON%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Imminent Serious Physical Harm To Themselves' as shortdescription,'Imminent Serious Physical Harm To Themselves' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Immident Serious Physical Harm To Others' as shortdescription,'Immident Serious Physical Harm To Others' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Imminent Serious Physical Harm To Themselves and Others' as shortdescription,'Imminent Serious Physical Harm To Themselves and Others' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Immident Serious Property Destruction' as shortdescription,'Immident Serious Property Destruction' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Imminent Serious Physical Harm To Themselves and Property Destruction' as shortdescription,'Imminent Serious Physical Harm To Themselves and Immident Serious Property Destruction' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Imminent Serious Physical Harm To Others and Property Destruction' as shortdescription,'Imminent Serious Physical Harm To Others and Immident Serious Property Destruction' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Imminent Serious Physical Harm To Themself, Others and Property Destruction' as shortdescription,'Imminent Serious Physical Harm To Themselves and Others and Immident Serious Property Destruction' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Restraint by District Police or Resource Officer' as shortdescription,'Restraint by School District Police Officer/School Resource Officer Performing Law Enforcement Duties and/or Providing a Police Presence on School Property or at a School-Sponsored or School-Related Activity.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- RestraintStaffType;
    SET @v_descriptor = 'RestraintStaffType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%RESTRAINTSTAFFTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'School district/Charter School employee or volunteer' as shortdescription,'School district/Charter School employee or volunteer' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'School district police officer or school resource officer (SRO)' as shortdescription,'School district police officer or school resource officer (SRO)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- RoleId;
    SET @v_descriptor = 'RoleId';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like 'ROLEIDDESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'002' as codevalue,'Art Therapist' as shortdescription,'Art Therapist - Serves as Art Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'003' as codevalue,'Assistant Principal' as shortdescription,'Assistant Principal - Assists the principal of a particular campus in any duties the principal may deem appropriate' as description UNION 
             SELECT @v_namespace AS namespace,'004' as codevalue,'Assistant/Associate/Deputy Superintendent' as shortdescription,'Assistant/Associate/Deputy Superintendent - Assists the superintendent of a particular school district in any duties the superintendent may deem appropriate. Persons assigned to this role usually perform functions associated with more than one campus' as description UNION 
             SELECT @v_namespace AS namespace,'005' as codevalue,'Psychological Associate' as shortdescription,'Psychological Associate - Serves under the Licensed Specialist in School Psychology (LSSP) or psychologist to provide guidance and counseling services to students' as description UNION 
             SELECT @v_namespace AS namespace,'006' as codevalue,'Audiologist' as shortdescription,'Audiologist - The person who provides audiological services to students with hearing impairments' as description UNION 
             SELECT @v_namespace AS namespace,'007' as codevalue,'Corrective Therapist' as shortdescription,'Corrective Therapist - Serves as Corrective Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'008' as codevalue,'School Counselor' as shortdescription,'School Counselor - Provides guidance and counseling services to students' as description UNION 
             SELECT @v_namespace AS namespace,'011' as codevalue,'Educational Diagnostician' as shortdescription,'Educational Diagnostician - Provides educational diagnostic services and individualized education program development' as description UNION 
             SELECT @v_namespace AS namespace,'012' as codevalue,'District Instructional Program Director or Executive Director' as shortdescription,'District Instructional Program Director or Executive Director - Serves under the superintendent, or higher grade instructional administrative officer, as the key specialist for a major instructional, instructional related, or pupil service program. Responsibilities may include curriculum development or supervision of programs or personnel whose assignments require certification or licensure. Only degreed, certified personnel may be placed in this category. Examples include, but are not limited to staff serving as Director of Guidance and Counseling, Director of Curriculum, Director of Librarians, Director of Bilingual/ESL, Career and Technical Director, Director of Special Ed, and Director of Social Studies' as description UNION 
             SELECT @v_namespace AS namespace,'013' as codevalue,'Librarian' as shortdescription,'Librarian - Supervises library/learning resources center, or functions as one of several librarians, or learning resource specialists, on a major campus' as description UNION 
             SELECT @v_namespace AS namespace,'015' as codevalue,'Music Therapist' as shortdescription,'Music Therapist - Serves as Music Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'016' as codevalue,'Occupational Therapist' as shortdescription,'Occupational Therapist - Serves as Occupational Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'017' as codevalue,'Certified Orientation and Mobility Specialist (COMS)' as shortdescription,'Certified Orientation and Mobility Specialist (COMS)' as description UNION 
             SELECT @v_namespace AS namespace,'018' as codevalue,'Physical Therapist' as shortdescription,'Physical Therapist - Serves as Physical Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'019' as codevalue,'Physician' as shortdescription,'Physician - Serves as school Physician' as description UNION 
             SELECT @v_namespace AS namespace,'020' as codevalue,'Principal' as shortdescription,'Principal - Serves as the instructional leader of the school whose duties include selecting teachers for the campus, setting education objectives, developing budgets for the campus, and working with school professionals to prepare individual development plans' as description UNION 
             SELECT @v_namespace AS namespace,'021' as codevalue,'Recreational Therapist' as shortdescription,'Recreational Therapist - Serves as Recreational Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'022' as codevalue,'School Nurse' as shortdescription,'School Nurse - A person that complies with TEC 21.003(b), "is licensed by the state agency that licenses that profession", [Nurse Practitioner (NP), Registered Nurse (RN), Licensed Vocational Nurse (LVN)] is employed/contracted by the school district, and whose primary job responsibility is that of school nurse. Only persons licensed by the state agency that licenses nurses may be employed as a school nurse' as description UNION 
             SELECT @v_namespace AS namespace,'023' as codevalue,'LSSP/Psychologist' as shortdescription,'LSSP/Psychologist - Serves as Licensed Specialist in School Psychology/Psychologist' as description UNION 
             SELECT @v_namespace AS namespace,'024' as codevalue,'Social Worker' as shortdescription,'Social Worker - Serves as the school social worker to provide comprehensive social services as a part of an education team. Social workers must be licensed by the Texas State Board of Examiners and must hold a bachelor''s or master''s degree' as description UNION 
             SELECT @v_namespace AS namespace,'026' as codevalue,'Speech Therapist/Speech-Language Pathologist' as shortdescription,'Speech Therapist/Speech-Language Pathologist - Serves as provider of speech-language pathology/speech therapy services' as description UNION 
             SELECT @v_namespace AS namespace,'027' as codevalue,'Superintendent/Chief Admin Officer/Chief Executive Officer/President' as shortdescription,'Superintendent/Chief Administrative Officer/Chief Executive Officer/President - The educational leader and administrative manager of the school district' as description UNION 
             SELECT @v_namespace AS namespace,'028' as codevalue,'Teacher Supervisor' as shortdescription,'Teacher Supervisor - Provides consultant services to teachers in a grade level, adjacent grades, in a teaching field, or group of related fields' as description UNION 
             SELECT @v_namespace AS namespace,'030' as codevalue,'Truant Officer/Visiting Teacher' as shortdescription,'Truant Officer/Visiting Teacher - Directs activities related to promoting and improving school attendance. Such certified staff members provide home, school, and community liaison services' as description UNION 
             SELECT @v_namespace AS namespace,'032' as codevalue,'Work-Based Learning Site Coordinator' as shortdescription,'Work-Based Learning Site Coordinator - The code for a Career and Technical Education teacher (087) assigned to career preparation work-based learning experiences is changed from 087 to 032 when visiting a student training site for the purpose of evaluating the student and consulting the employer' as description UNION 
             SELECT @v_namespace AS namespace,'040' as codevalue,'Athletic Director' as shortdescription,'Athletic Director - Used only when the staff member with such a title is performing administrative tasks directing the athletic program.  Responsibilities may include supervision of coaches and other personnel in the athletic program.  It is not used when coaching duties are being performed' as description UNION 
             SELECT @v_namespace AS namespace,'041' as codevalue,'Teacher Facilitator' as shortdescription,'Teacher Facilitator - Serves as an exemplary role model in assisting teachers with improving their classroom performance' as description UNION 
             SELECT @v_namespace AS namespace,'042' as codevalue,'Teacher Appraiser' as shortdescription,'Teacher Appraiser - Serves as an appraiser in the Texas Teacher Appraisal System' as description UNION 
             SELECT @v_namespace AS namespace,'043' as codevalue,'Business Manager' as shortdescription,'Business Manager - Serves as business manager or Chief Financial Officer (CFO)' as description UNION 
             SELECT @v_namespace AS namespace,'044' as codevalue,'Tax Assessor And/Or Collector' as shortdescription,'Tax Assessor And/Or Collector - Serves as district tax assessor, tax collector, or tax assessor-collector' as description UNION 
             SELECT @v_namespace AS namespace,'045' as codevalue,'Director Of Personnel/Human Resources' as shortdescription,'Director Of Personnel/Human Resources - Serves as personnel or human resources director' as description UNION 
             SELECT @v_namespace AS namespace,'047' as codevalue,'Substitute Teacher' as shortdescription,'Substitute Teacher - A person who serves in a classroom in the absence of a teacher certified for that assignment where the teacher has quit, died, or been terminated; or, a person who is permanently hired to substitute on an as-needed basis. (See StaffResponsibilitiesExtension complex type, Data Element Reporting Requirements, Chart A - Coding for Substitute and Absent Regular Staff)' as description UNION 
             SELECT @v_namespace AS namespace,'054' as codevalue,'Department Head' as shortdescription,'Department Head - Serves as head or chairman of a subject area department on a campus' as description UNION 
             SELECT @v_namespace AS namespace,'055' as codevalue,'Registrar' as shortdescription,'Registrar - Serves as school or district registrar' as description UNION 
             SELECT @v_namespace AS namespace,'056' as codevalue,'Athletic Trainer' as shortdescription,'Athletic Trainer - Serves as a trainer in the athletics program' as description UNION 
             SELECT @v_namespace AS namespace,'060' as codevalue,'Executive Director' as shortdescription,'Executive Director - Serves as the chief executive officer of an education service center' as description UNION 
             SELECT @v_namespace AS namespace,'061' as codevalue,'Assistant/Associate/Deputy Executive Director' as shortdescription,'Assistant/Associate/Deputy Executive Director - Assists the education service center executive director' as description UNION 
             SELECT @v_namespace AS namespace,'062' as codevalue,'Component/Department Director' as shortdescription,'Component/Department Director - Directs and manages the program activities of a component or department of an education service center' as description UNION 
             SELECT @v_namespace AS namespace,'063' as codevalue,'Coordinator/Manager/Supervisor' as shortdescription,'Coordinator/Manager/Supervisor - Coordinates, manages, and/or supervises specific programs and services of an education service center' as description UNION 
             SELECT @v_namespace AS namespace,'064' as codevalue,'Specialist/Consultant' as shortdescription,'Specialist/Consultant - Provides technical assistance and professional development in various areas of an education service center' as description UNION 
             SELECT @v_namespace AS namespace,'065' as codevalue,'Field Service Agent' as shortdescription,'Field Service Agent - Provides coordinated assistance to districts and campuses' as description UNION 
             SELECT @v_namespace AS namespace,'079' as codevalue,'Other Education Service Center Professional Personnel' as shortdescription,'Other Education Service Center Professional Personnel - Serves as professional staff member at an ESC. Do not use this role unless no other role applies to the staff member' as description UNION 
             SELECT @v_namespace AS namespace,'087' as codevalue,'Teacher' as shortdescription,'Teacher - A professional employee who is required to hold a valid teacher certificate or permit in order to perform some type of instruction to students; (combination of former codes 025 and 029)' as description UNION 
             SELECT @v_namespace AS namespace,'100' as codevalue,'Instructional Materials Coordinator' as shortdescription,'Instructional Materials Coordinator' as description UNION 
             SELECT @v_namespace AS namespace,'101' as codevalue,'Legal Services' as shortdescription,'Legal Services' as description UNION 
             SELECT @v_namespace AS namespace,'102' as codevalue,'Communications Professional' as shortdescription,'Communications Professional (Including but not limited to Public Information Officer, Community Liaison)' as description UNION 
             SELECT @v_namespace AS namespace,'103' as codevalue,'Research/Evaluation Professional' as shortdescription,'Research/Evaluation Professional (Including but not limited to Analysis, Grant Writers)' as description UNION 
             SELECT @v_namespace AS namespace,'104' as codevalue,'Internal Auditor' as shortdescription,'Internal Auditor' as description UNION 
             SELECT @v_namespace AS namespace,'105' as codevalue,'Security' as shortdescription,'Security (Including but not limited to Chief of Police, Investigators, Police Officers)' as description UNION 
             SELECT @v_namespace AS namespace,'106' as codevalue,'District/Campus Information Technology Professional' as shortdescription,'District/Campus Information Technology Professional (Including but not limited to Programmer/Analyst, Network Specialist, Database Administrator, PEIMS Coordinator, Other)' as description UNION 
             SELECT @v_namespace AS namespace,'107' as codevalue,'Food Service Professional (including but not limited to Dietician)' as shortdescription,'Food Service Professional (including but not limited to Dietician)' as description UNION 
             SELECT @v_namespace AS namespace,'108' as codevalue,'Transportation' as shortdescription,'Transportation' as description UNION 
             SELECT @v_namespace AS namespace,'109' as codevalue,'Athletics (Other than Athletic Director)' as shortdescription,'Athletics (Other than Athletic Director)' as description UNION 
             SELECT @v_namespace AS namespace,'110' as codevalue,'Custodial' as shortdescription,'Custodial - Staff serving in a professional/management role' as description UNION 
             SELECT @v_namespace AS namespace,'111' as codevalue,'Maintenance' as shortdescription,'Maintenance – Staff serving in a professional/management role' as description UNION 
             SELECT @v_namespace AS namespace,'112' as codevalue,'Business Services Professional' as shortdescription,'Business Services Professional (Including but not limited to Accounting, Budget, Professional Payroll Staff)' as description UNION 
             SELECT @v_namespace AS namespace,'113' as codevalue,'Other District Exempt Professional Auxiliary' as shortdescription,'Other District Exempt Professional Auxiliary - Assign this role to district staff who are professional-level, non-instructional staff who cannot be classified in any other role regardless of where assigned. Physical work location is not a determining factor' as description UNION 
             SELECT @v_namespace AS namespace,'114' as codevalue,'Other Campus Exempt Professional Auxiliary' as shortdescription,'Other Campus Exempt Professional Auxiliary:  
Serves as a professional staff member at one or more campuses. Do not use this role unless no other role applies to the staff member. Some examples of staff who are to be shown with this role are:
• campus/community liaisons
• campus volunteer coordinators
• dean and
• instructional officers assigned to a campus' as description UNION 
             SELECT @v_namespace AS namespace,'115' as codevalue,'Psychiatric Nurse' as shortdescription,'Psychiatric Nurse' as description UNION 
             SELECT @v_namespace AS namespace,'116' as codevalue,'Licensed Clinical Social Worker' as shortdescription,'Licensed Clinical Social Worker' as description UNION 
             SELECT @v_namespace AS namespace,'117' as codevalue,'Licensed Professional Counselor' as shortdescription,'Licensed Professional Counselor' as description UNION 
             SELECT @v_namespace AS namespace,'118' as codevalue,'Licensed Marriage and Family Therapist' as shortdescription,'Licensed Marriage and Family Therapist' as description UNION 
             SELECT @v_namespace AS namespace,'033' as codevalue,'Educational Aide ' as shortdescription,'Educational Aide - Performs routine classroom tasks under the general supervision of a certified teacher or teaching team' as description UNION 
             SELECT @v_namespace AS namespace,'036' as codevalue,'Certified Interpreter' as shortdescription,'Certified Interpreter - A state or nationally certified interpreter for the deaf who translates/transliterates for students who are deaf or hard of hearing, according to ARD committee recommendations. (Certified interpreters may be either professional or para-professional, depending on district classification)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- SchoolYear;
    SET @v_descriptor = 'SchoolYear';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%SCHOOLYEAR%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'1996-1997' as shortdescription,'1996-1997' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'1997-1998' as shortdescription,'1997-1998' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'1998-1999' as shortdescription,'1998-1999' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'1999-2000' as shortdescription,'1999-2000' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'2000-2001' as shortdescription,'2000-2001' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'2001-2002' as shortdescription,'2001-2002' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'2002-2003' as shortdescription,'2002-2003' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'2003-2004' as shortdescription,'2003-2004' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'2004-2005' as shortdescription,'2004-2005' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'2005-2006' as shortdescription,'2005-2006' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'2006-2007' as shortdescription,'2006-2007' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'2007-2008' as shortdescription,'2007-2008' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'2008-2009' as shortdescription,'2008-2009' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'2009-2010' as shortdescription,'2009-2010' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'2010-2011' as shortdescription,'2010-2011' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'2011-2012' as shortdescription,'2011-2012' as description UNION 
             SELECT @v_namespace AS namespace,'17' as codevalue,'2012-2013' as shortdescription,'2012-2013' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'2013-2014' as shortdescription,'2013-2014' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'2014-2015' as shortdescription,'2014-2015' as description UNION 
             SELECT @v_namespace AS namespace,'20' as codevalue,'2015-2016' as shortdescription,'2015-2016' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'2016-2017' as shortdescription,'2016-2017' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'2017-2018' as shortdescription,'2017-2018' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'2018-2019' as shortdescription,'2018-2019' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'2019-2020' as shortdescription,'2019-2020' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'2020-2021' as shortdescription,'2020-2021' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'2021-2022' as shortdescription,'2021-2022' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'2022-2023' as shortdescription,'2022-2023' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'2023-2024' as shortdescription,'2023-2024' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'2024-2025' as shortdescription,'2024-2025' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'2025-2026' as shortdescription,'2025-2026' as description UNION 
             SELECT @v_namespace AS namespace,'31' as codevalue,'2026-2027' as shortdescription,'2026-2027' as description UNION 
             SELECT @v_namespace AS namespace,'32' as codevalue,'2027-2028' as shortdescription,'2027-2028' as description UNION 
             SELECT @v_namespace AS namespace,'33' as codevalue,'2028-2029' as shortdescription,'2028-2029' as description UNION 
             SELECT @v_namespace AS namespace,'34' as codevalue,'2029-2030' as shortdescription,'2029-2030' as description UNION 
             SELECT @v_namespace AS namespace,'35' as codevalue,'2030-2031' as shortdescription,'2030-2031' as description UNION 
             SELECT @v_namespace AS namespace,'36' as codevalue,'2031-2032' as shortdescription,'2031-2032' as description UNION 
             SELECT @v_namespace AS namespace,'37' as codevalue,'2032-2033' as shortdescription,'2032-2033' as description UNION 
             SELECT @v_namespace AS namespace,'38' as codevalue,'2033-2034' as shortdescription,'2033-2034' as description UNION 
             SELECT @v_namespace AS namespace,'39' as codevalue,'2034-2035' as shortdescription,'2034-2035' as description UNION 
             SELECT @v_namespace AS namespace,'40' as codevalue,'2035-2036' as shortdescription,'2035-2036' as description UNION 
             SELECT @v_namespace AS namespace,'41' as codevalue,'2036-2037' as shortdescription,'2036-2037' as description UNION 
             SELECT @v_namespace AS namespace,'42' as codevalue,'2037-2038' as shortdescription,'2037-2038' as description UNION 
             SELECT @v_namespace AS namespace,'43' as codevalue,'2038-2039' as shortdescription,'2038-2039' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Sex;
    SET @v_descriptor = 'Sex';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%SEX%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Female' as shortdescription,'Female' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Male' as shortdescription,'Male' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- SharedServiceArrangementStaff;
    SET @v_descriptor = 'SharedServiceArrangementStaff';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%SHAREDSERVICEARRANGEMENTSTAFF%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Works For ESC Not Part Of SSA' as shortdescription,'For This Responsibility, The Staff Member Works For The ESC Only, And Is Not Part Of An ESC Shared Services Arrangement' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'ESC Part of SSA And ESC is Fiscal Agent' as shortdescription,'For This Responsibility, The Staff Member Is Part Of The ESC Shared Services Arrangement, For Which The ESC Is The Fiscal Agent' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- SpecialEducationProgramService;
    SET @v_descriptor = 'SpecialEducationProgramService';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%SPECIALEDUCATIONPROGRAMSERVICE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'No Special Education Program Services' as shortdescription,'No Special Education Program Services' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Social Work Services' as shortdescription,'Social Work Services' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Oral Transliteration Services' as shortdescription,'Oral Transliteration Interpreting Services' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'CUED Language Transliteration Services' as shortdescription,'CUED Language Transliteration Services' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Sign Language Transliteration Services' as shortdescription,'Sign Language Transliteration Services' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Sign Language Interpreting Services' as shortdescription,'Sign Language Interpreting Services' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Communication Access Realtime Translation (CART) Services' as shortdescription,'Communication Access Realtime Translation (CART) Services' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'C-Print Services' as shortdescription,'C-Print Services' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Type Well Services' as shortdescription,'Type Well Services' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'Deaf-Blind Interpreting Services' as shortdescription,'Deaf-Blind Interpreting Services' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Psychological Services' as shortdescription,'Psychological Services' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Physical Therapy Services' as shortdescription,'Physical Therapy Services' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Recreation Including Therapeutic Recreation' as shortdescription,'Recreation Including Therapeutic Recreation' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Counseling Services' as shortdescription,'Counseling Services' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Orientation And Mobility' as shortdescription,'Orientation And Mobility' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'Medical Services' as shortdescription,'Medical Services' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'School Health And/Or School Nurse Services' as shortdescription,'School Health And/Or School Nurse Services' as description UNION 
             SELECT @v_namespace AS namespace,'17' as codevalue,'Direct Language Acquisition Services' as shortdescription,'Direct Language Acquisition Services' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'Indirect Language Acquisition' as shortdescription,'Indirect Language Acquisition' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'Consultative Language Acquisition' as shortdescription,'Consultative Language Acquisition' as description UNION 
             SELECT @v_namespace AS namespace,'20' as codevalue,'Assistive Technology Device or Related Services' as shortdescription,'Assistive Technology Device or Related Services' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'Audiological Services' as shortdescription,'Audiological Services' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'Preschool Student with Disabilities Services' as shortdescription,'Preschool Student with Disabilities Services' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'Early Childhood Intervention Services' as shortdescription,'Early Childhood Intervention Services' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'Occupational And Physical Therapy' as shortdescription,'Occupational And Physical Therapy' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'Receiving Instructional Services from RDSPD' as shortdescription,'Receiving instructional services from the Regional Day School Program for the Deaf' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'Special Education Student Does Not Receive Speech Therapy' as shortdescription,'Special Education Student Does Not Receive Speech Therapy' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'Special Education Student Receives Speech Therapy Only' as shortdescription,'Special Education Student Receives Speech Therapy Only' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'Special Education Student Rec Speech Therapy and Other SPED Instr Setting' as shortdescription,'Student Receives Speech Therapy Along With Service Through Another Special Education Instructional Setting' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'Special Education Transportation Services' as shortdescription,'Special Education Transportation Services' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- SpecialEducationSetting;
    SET @v_descriptor = 'SpecialEducationSetting';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%SPECIALEDUCATIONSETTING%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'31' as codevalue,'Home-based Instruction' as shortdescription,'Home-based Instruction (not included in submission 3)' as description UNION 
             SELECT @v_namespace AS namespace,'32' as codevalue,'Center-based Instruction' as shortdescription,'Center-based Instruction (not included in submission 3)' as description UNION 
             SELECT @v_namespace AS namespace,'34' as codevalue,'Other environment' as shortdescription,'Other environment (not included in submission 3)' as description UNION 
             SELECT @v_namespace AS namespace,'00' as codevalue,'No instructional setting' as shortdescription,'No instructional setting (such as Speech Therapy)' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Homebound' as shortdescription,'Homebound' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Hospital class' as shortdescription,'Hospital class' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Vocational Adjustment Class/Program' as shortdescription,'Vocational Adjustment Class/Program' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'State Supported Living Centers' as shortdescription,'State Supported Living Centers' as description UNION 
             SELECT @v_namespace AS namespace,'40' as codevalue,'Mainstream ' as shortdescription,'Mainstream (not included in submission 3)' as description UNION 
             SELECT @v_namespace AS namespace,'50' as codevalue,'Residential Nonpublic School Program ' as shortdescription,'Residential Nonpublic School Program (not included in submission 3)' as description UNION 
             SELECT @v_namespace AS namespace,'60' as codevalue,'Nonpublic Day School ' as shortdescription,'Nonpublic Day School (not included in submission 3)' as description UNION 
             SELECT @v_namespace AS namespace,'70' as codevalue,'Texas School For The Blind And Visually Impaired' as shortdescription,'Texas School For The Blind And Visually Impaired (not included in submission 3)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end; 
 begin
   
    -- StaffIdentificationSystem;
    SET @v_descriptor = 'StaffIdentificationSystem';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%STAFFIDENTIFICATIONSYSTEM%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'06' as codevalue,'District' as shortdescription,'District' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'State' as shortdescription,'State' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- StaffType;
    SET @v_descriptor = 'StaffType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%STAFFTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'1' as codevalue,'School District Or Charter School Employee' as shortdescription,'School District Or Charter School Employee' as description UNION 
             SELECT @v_namespace AS namespace,'3' as codevalue,'Contracted Professional Staff' as shortdescription,'Contracted Professional Staff (Instructional and Non-Instructional with ROLE-ID in C021 table)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- StateAbbreviation;
    SET @v_descriptor = 'StateAbbreviation';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%STATEABBREVIATION%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'AA' as shortdescription,'Armed Forces Americas' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'AE' as shortdescription,'Armed Forces Europe, the Middle East, and Canada' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'AK' as shortdescription,'Alaska' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'AL' as shortdescription,'Alabama' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'AP' as shortdescription,'Armed Forces Pacific' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'AR' as shortdescription,'Arkansas' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'AS' as shortdescription,'American Samoa' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'AZ' as shortdescription,'Arizona' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'CA' as shortdescription,'California' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'CO' as shortdescription,'Colorado' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'CT' as shortdescription,'Connecticut' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'DC' as shortdescription,'District of Columbia' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'DE' as shortdescription,'Delaware' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'FL' as shortdescription,'Florida' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'FM' as shortdescription,'Federated States of Micronesia' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'GA' as shortdescription,'Georgia' as description UNION 
             SELECT @v_namespace AS namespace,'17' as codevalue,'GU' as shortdescription,'Guam' as description UNION 
             SELECT @v_namespace AS namespace,'18' as codevalue,'HI' as shortdescription,'Hawaii' as description UNION 
             SELECT @v_namespace AS namespace,'19' as codevalue,'IA' as shortdescription,'Iowa' as description UNION 
             SELECT @v_namespace AS namespace,'20' as codevalue,'ID' as shortdescription,'Idaho' as description UNION 
             SELECT @v_namespace AS namespace,'21' as codevalue,'IL' as shortdescription,'Illinois' as description UNION 
             SELECT @v_namespace AS namespace,'22' as codevalue,'IN' as shortdescription,'Indiana' as description UNION 
             SELECT @v_namespace AS namespace,'23' as codevalue,'KS' as shortdescription,'Kansas' as description UNION 
             SELECT @v_namespace AS namespace,'24' as codevalue,'KY' as shortdescription,'Kentucky' as description UNION 
             SELECT @v_namespace AS namespace,'25' as codevalue,'LA' as shortdescription,'Louisiana' as description UNION 
             SELECT @v_namespace AS namespace,'26' as codevalue,'MA' as shortdescription,'Massachusetts' as description UNION 
             SELECT @v_namespace AS namespace,'27' as codevalue,'MD' as shortdescription,'Maryland' as description UNION 
             SELECT @v_namespace AS namespace,'28' as codevalue,'ME' as shortdescription,'Maine' as description UNION 
             SELECT @v_namespace AS namespace,'29' as codevalue,'MH' as shortdescription,'Marshall Islands' as description UNION 
             SELECT @v_namespace AS namespace,'30' as codevalue,'MI' as shortdescription,'Michigan' as description UNION 
             SELECT @v_namespace AS namespace,'31' as codevalue,'MN' as shortdescription,'Minnesota' as description UNION 
             SELECT @v_namespace AS namespace,'32' as codevalue,'MO' as shortdescription,'Missouri' as description UNION 
             SELECT @v_namespace AS namespace,'33' as codevalue,'MP' as shortdescription,'Northern Mariana Islands' as description UNION 
             SELECT @v_namespace AS namespace,'34' as codevalue,'MS' as shortdescription,'Mississippi' as description UNION 
             SELECT @v_namespace AS namespace,'35' as codevalue,'MT' as shortdescription,'Montana' as description UNION 
             SELECT @v_namespace AS namespace,'36' as codevalue,'NC' as shortdescription,'North Carolina' as description UNION 
             SELECT @v_namespace AS namespace,'37' as codevalue,'ND' as shortdescription,'North Dakota' as description UNION 
             SELECT @v_namespace AS namespace,'38' as codevalue,'NE' as shortdescription,'Nebraska' as description UNION 
             SELECT @v_namespace AS namespace,'39' as codevalue,'NH' as shortdescription,'New Hampshire' as description UNION 
             SELECT @v_namespace AS namespace,'40' as codevalue,'NJ' as shortdescription,'New Jersey' as description UNION 
             SELECT @v_namespace AS namespace,'41' as codevalue,'NM' as shortdescription,'New Mexico' as description UNION 
             SELECT @v_namespace AS namespace,'42' as codevalue,'NV' as shortdescription,'Nevada' as description UNION 
             SELECT @v_namespace AS namespace,'43' as codevalue,'OH' as shortdescription,'Ohio' as description UNION 
             SELECT @v_namespace AS namespace,'44' as codevalue,'OK' as shortdescription,'Oklahoma' as description UNION 
             SELECT @v_namespace AS namespace,'45' as codevalue,'OR' as shortdescription,'Oregon' as description UNION 
             SELECT @v_namespace AS namespace,'46' as codevalue,'PA' as shortdescription,'Pennsylvania' as description UNION 
             SELECT @v_namespace AS namespace,'47' as codevalue,'PR' as shortdescription,'Puerto Rico' as description UNION 
             SELECT @v_namespace AS namespace,'48' as codevalue,'PW' as shortdescription,'Palau' as description UNION 
             SELECT @v_namespace AS namespace,'49' as codevalue,'RI' as shortdescription,'Rhode Island' as description UNION 
             SELECT @v_namespace AS namespace,'50' as codevalue,'SC' as shortdescription,'South Carolina' as description UNION 
             SELECT @v_namespace AS namespace,'51' as codevalue,'SD' as shortdescription,'South Dakota' as description UNION 
             SELECT @v_namespace AS namespace,'52' as codevalue,'TN' as shortdescription,'Tennessee' as description UNION 
             SELECT @v_namespace AS namespace,'53' as codevalue,'TX' as shortdescription,'Texas' as description UNION 
             SELECT @v_namespace AS namespace,'54' as codevalue,'UT' as shortdescription,'Utah' as description UNION 
             SELECT @v_namespace AS namespace,'55' as codevalue,'VA' as shortdescription,'Virginia' as description UNION 
             SELECT @v_namespace AS namespace,'56' as codevalue,'VI' as shortdescription,'Virgin Islands' as description UNION 
             SELECT @v_namespace AS namespace,'57' as codevalue,'VT' as shortdescription,'Vermont' as description UNION 
             SELECT @v_namespace AS namespace,'58' as codevalue,'WA' as shortdescription,'Washington' as description UNION 
             SELECT @v_namespace AS namespace,'59' as codevalue,'WI' as shortdescription,'Wisconsin' as description UNION 
             SELECT @v_namespace AS namespace,'60' as codevalue,'WV' as shortdescription,'West Virginia' as description UNION 
             SELECT @v_namespace AS namespace,'61' as codevalue,'WY' as shortdescription,'Wyoming' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- StudentCharacteristic;
    SET @v_descriptor = 'StudentCharacteristic';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%STUDENTCHARACTERISTIC%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Out Of Workforce Individual' as shortdescription,'Out Of Workforce Individual' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Transportation CTE Support Services' as shortdescription,'Transportation CTE Support Services' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'At Risk' as shortdescription,'At Risk' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Immigrant' as shortdescription,'Immigrant' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Migrant' as shortdescription,'Migrant' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Dyslexia Indicator' as shortdescription,'Dyslexia Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'T-Stem Indicator' as shortdescription,'T-Stem Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'ECHS Indicator' as shortdescription,'ECHS Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'P-Tech Indicator' as shortdescription,'P-Tech Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'New Tech Indicator' as shortdescription,'New Tech Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'IEP Continuer Indicator' as shortdescription,'IEP Continuer Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Star Of Texas Indicator' as shortdescription,'Star Of Texas Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'PK Eligible Prior Year Indicator' as shortdescription,'PK Eligible Prior Year Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'Section 504 Indicator' as shortdescription,'Section 504 Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'Intervention Strategy Indicator' as shortdescription,'Intervention Strategy Indicator' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Pregnancy Related Services' as shortdescription,'Pregnancy Related Services' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- TelephoneNumberType;
    SET @v_descriptor = 'TelephoneNumberType';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%TELEPHONENUMBERTYPE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Fax' as shortdescription,'Fax' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Home' as shortdescription,'Home' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Mobile' as shortdescription,'Mobile' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Other' as shortdescription,'Other' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Unlisted' as shortdescription,'Unlisted' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Work' as shortdescription,'Work' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Emergency 1' as shortdescription,'Emergency 1' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Emergency 2' as shortdescription,'Emergency 2' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- Term;
    SET @v_descriptor = 'Term';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%TERM%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'01' as codevalue,'Fall Semester' as shortdescription,'Fall Semester' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Spring Semester' as shortdescription,'Spring Semester' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Summer Semester' as shortdescription,'Summer Semester' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Semester' as shortdescription,'Semester' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'First Quarter' as shortdescription,'First Quarter' as description UNION 
             SELECT @v_namespace AS namespace,'06' as codevalue,'Second Quarter' as shortdescription,'Second Quarter' as description UNION 
             SELECT @v_namespace AS namespace,'07' as codevalue,'Third Quarter' as shortdescription,'Third Quarter' as description UNION 
             SELECT @v_namespace AS namespace,'08' as codevalue,'Fourth Quarter' as shortdescription,'Fourth Quarter' as description UNION 
             SELECT @v_namespace AS namespace,'09' as codevalue,'First Trimester' as shortdescription,'First Trimester' as description UNION 
             SELECT @v_namespace AS namespace,'10' as codevalue,'Second Trimester' as shortdescription,'Second Trimester' as description UNION 
             SELECT @v_namespace AS namespace,'11' as codevalue,'Third Trimester' as shortdescription,'Third Trimester' as description UNION 
             SELECT @v_namespace AS namespace,'12' as codevalue,'Trimester' as shortdescription,'Trimester' as description UNION 
             SELECT @v_namespace AS namespace,'13' as codevalue,'Quarter' as shortdescription,'Quarter' as description UNION 
             SELECT @v_namespace AS namespace,'14' as codevalue,'MiniTerm' as shortdescription,'MiniTerm' as description UNION 
             SELECT @v_namespace AS namespace,'15' as codevalue,'Year Round' as shortdescription,'Year Round' as description UNION 
             SELECT @v_namespace AS namespace,'16' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- TitleIPartAParticipant;
    SET @v_descriptor = 'TitleIPartAParticipant';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%TITLEIPARTAPARTICIPANT%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Student Attends School Not Designated As Title I, Pt A and Rec No Services' as shortdescription,'The Student Attends A School That Is Not Designated By The District As A Title I, Part A School And The Student Does Not Receive Any Services Funded By Title I, Part A, Or The Student Attends A Title I, Part A Targeted Assistance School, But Does Not Presently Participate In Services Funded By Title I, Part A And Has Not Previously Participated In Title I, Part A Services At The School In Which The Student Is Currently Enrolled' as description UNION 
             SELECT @v_namespace AS namespace,'A' as codevalue,'Reside in Facility for Neglected, Attend Non-Title I Cmps. Rec Title I SVC' as shortdescription,'The Student Resides In A Facility For The Neglected, Attends A Non-Title I Campus, And Receives Title I, Part A Services Through A Title I; Part A Program That Is Run Through The Central Administration Office.
“Neglected” students are those who reside in a public or private residential (children are under 24-hour care) facility that is operated primarily for the care of children who have been committed to, or voluntarily placed in, the facility because of abandonment, neglect, or death of parents.  These students are coded as “A” if they do not attend a schoolwide or targeted assistance campus.  Such students who attend a Title I campus would be coded “6,” or “7”, as appropriate; if they attend a non-Title I campus or if the district provides instructional services to the student at the facility, they should be coded “A.”  LEAs would only code students as “A” in one of the following circumstances:
The LEA received a “neglected share” as part of its Title I, Part A entitlement and provided Title I, Part A serv' as description UNION 
             SELECT @v_namespace AS namespace,'6' as codevalue,'Attends A Title I, Part A Schoolwide Program School.' as shortdescription,'The Student Attends A Title I, Part A Schoolwide Program School.' as description UNION 
             SELECT @v_namespace AS namespace,'7' as codevalue,'Attend Title I, Part A Targeted School Par Title I, Part A Prgm Services.' as shortdescription,'The Student Attends A Title I, Part A Targeted Assistance School And Participates In Title I, Part A Programs And/Or Services.' as description UNION 
             SELECT @v_namespace AS namespace,'8' as codevalue,'Attend Title I Pt A Targeted School No Par Title I, Part A Prgm Prev Par' as shortdescription,'The Student Attends A Title I, Part A Targeted Assistance School And Does Not Currently Participate In Title I, Part A Programs And/Or Services, But Previously Participated In Title I, Part A Programs And/Or Services At This School.' as description UNION 
             SELECT @v_namespace AS namespace,'9' as codevalue,'Student Attends School Not Designated As Title I, Rec SVCs Because Homeless' as shortdescription,'The Student Does Not Attend A School That Is Designated By The District As A Title I, Part A School; However, The student receives Title I, Part A services because the student is homeless as defined by 42 U.S.C. Section 11434(a), the term “homeless children and youths” -
(A) means individuals who lack a fixed, regular, and adequate nighttime residence [within the meaning of section 11302(a)(1)]; and
(B) includes -
(i) children and youths who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters; or are abandoned in hospitals
(ii) children and youths who have a primary nighttime residence that is a public or private place not designed for or ordinarily used as a regular sleeping accommodation for human beings [within the meaning of section 11302(a)(2)(C)]
(iii) children and youths who are livin' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- ToolOrAssessmentUsed;
    SET @v_descriptor = 'ToolOrAssessmentUsed';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%TOOLORASSESSMENTUSED%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'00' as codevalue,'Not Assessed' as shortdescription,'Not Assessed' as description UNION 
             SELECT @v_namespace AS namespace,'01' as codevalue,'Proficiency' as shortdescription,'Proficiency' as description UNION 
             SELECT @v_namespace AS namespace,'02' as codevalue,'Diagnostic' as shortdescription,'Diagnostic' as description UNION 
             SELECT @v_namespace AS namespace,'03' as codevalue,'Achievement' as shortdescription,'Achievement' as description UNION 
             SELECT @v_namespace AS namespace,'04' as codevalue,'Rubric' as shortdescription,'Rubric' as description UNION 
             SELECT @v_namespace AS namespace,'05' as codevalue,'Other' as shortdescription,'Other' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- UnaccompaniedYouth;
    SET @v_descriptor = 'UnaccompaniedYouth';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%UNACCOMPANIEDYOUTH%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'3' as codevalue,'Homeless Student In The Physical Custody Of A Parent Or Legal Guardian' as shortdescription,'Homeless student is in the physical custody of a parent or legal guardian (i.e., homeless student is not unaccompanied) for the entire school year.' as description UNION 
             SELECT @v_namespace AS namespace,'4' as codevalue,'Homeless Student Not In The Physical Custody Of A Parent Or Legal Guardian' as shortdescription,'Homeless student is not in the physical custody of a parent or legal guardian (i.e., homeless student is unaccompanied) at any time during the school year.' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
 begin
   
    -- UnschooledAsyleeRefugee;
    SET @v_descriptor = 'UnschooledAsyleeRefugee';
    begin TRY
   
       SET @v_err = 'NO';
       select @v_table_schema = table_schema, @v_table_name=table_name 
         from information_Schema.tables
        where upper(table_name) like '%UNSCHOOLEDASYLEEREFUGEE%DESCRIPTOR'
          and table_schema not like '%tracked%';
   
       SET @v_namespace = @v_tx_namespace+@v_descriptor+'Descriptor';
       if ISNULL(@v_table_name,'XYZ') = 'XYZ' 
          begin
             SET @v_err = 'NO_DATA';
             print 'Table '+@v_descriptor+' not found.'
          end;
    end TRY
    begin CATCH
         SET @v_err = 'NO_DATA';
         print 'Error Message Fist block: '+ ERROR_MESSAGE();
    end CATCH;
   
   begin TRY
      IF @v_err <> 'NO_DATA' 
      begin 
         MERGE INTO  edfi.descriptor tgt USING(
             SELECT @v_namespace AS namespace,'0' as codevalue,'Not applicable to this student' as shortdescription,'' as description UNION 
             SELECT @v_namespace AS namespace,'1' as codevalue,'Refugee' as shortdescription,'Refugee: Individual who has refugee status as defined by TEC Section 39.027(a-1)' as description UNION 
             SELECT @v_namespace AS namespace,'2' as codevalue,'Asylee' as shortdescription,'Asylee: Individual who has been granted asylum as defined by TEC Section 39.027(a-1)' as description) AS src
         ON(upper(tgt.namespace) = upper(src.namespace) AND upper(ltrim(rtrim(tgt.CodeValue)))=upper(ltrim(rtrim(src.codevalue))))
         WHEN MATCHED THEN
              UPDATE SET tgt.codevalue = src.codevalue, tgt.shortdescription = src.shortdescription, tgt.description=src.description, tgt.lastmodifieddate=getdate(),tgt.id=NEWID(),tgt.priordescriptorid=-999
         WHEN NOT MATCHED THEN
              INSERT (namespace, codevalue, shortdescription, description, createdate, lastmodifieddate, id,priordescriptorid)
              VALUES (src.namespace, src.codevalue, src.shortdescription, src.description, getdate(), getdate(), NEWID(),-999);
   
         SET @v_del_sql1 = 'DELETE FROM '+@v_table_schema+'.'+@v_table_name+ ' WHERE '+@v_table_name+'id IN(SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999)'
         SET @v_del_sql2 = 'DELETE FROM edfi.descriptor where priordescriptorid IS NULL and namespace='+''''+@v_namespace+''''
         SET @v_ins ='INSERT INTO '+@v_table_schema+'.'+@v_table_name+' SELECT descriptorid from edfi.descriptor where namespace='+''''+@v_namespace+''''+' and priordescriptorid=-999'
         EXEC(@v_del_sql1)
         EXEC(@v_del_sql2)
         EXEC(@v_ins)
      end; 
   end TRY
   begin CATCH
       print 'Error Message Second block: '+ ERROR_MESSAGE();
   end CATCH;
   
 end;
   
end ;
