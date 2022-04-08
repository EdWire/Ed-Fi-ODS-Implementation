do $$ 
<<resourceclaims_block>>
declare
  	vApplicationId integer := 0;
	vSystemDescriptorsId integer := 0;
	--ADD NEW DESCRIPTORS TO THIS ARRAY BY RUNNING POWESHELL SCRIPT \HelperScripts\getDescriptorNameList.ps!!
	vDescriptorArray varchar[] := array['ADAEligibilityDescriptor',
'ApplicationTypeDescriptor',
'ArmedServicesVocAptBatteryDescriptor',
'AsOfStatusLastDayEnrollmentDescriptor',
'AsOfStatusLastFridayOctoberDescriptor',
'AssessmentResultsObtainedDescriptor',
'AuxiliaryRoleIdDescriptor',
'CalendarWaiverEventTypeDescriptor',
'CampusEnrollmentTypeDescriptor',
'ChildCountFundingDescriptor',
'ClassTypeDescriptor',
'CourseSequenceDescriptor',
'CrisisEventDescriptor',
'DyslexiaRiskDescriptor',
'DyslexiaServicesDescriptor',
'EarlyReadingIndicatorDescriptor',
'EconomicDisadvantageDescriptor',
'EconomicDisadvantageLastDateOfEnrollmentDescriptor',
'ELOActivityDescriptor',
'ELOTypeDescriptor',
'EmergentBilingualIndicatorDescriptor',
'EndorsementCompletedDescriptor',
'EndorsementPursuingDescriptor',
'EvaluationDelayReasonDescriptor',
'FosterCareTypeDescriptor',
'FrequencyOfServicesDescriptor',
'FunctionDescriptor',
'FundDescriptor',
'GenerationCodeDescriptor',
'GiftedTalentedProgramDescriptor',
'HearingAmplifAvgDailyUseDescriptor',
'HearingAmplificationAccessDescriptor',
'HearingAmplificationTypeDescriptor',
'HomelessStatusDescriptor',
'HomelessStatusPriorYearDescriptor',
'HoursSpentReceivingServicesDescriptor',
'IBCVendorDescriptor',
'LangAcqServicesProvidedDescriptor',
'MilitaryConnectedStudentDescriptor',
'NonCampusBasedInstructionDescriptor',
'NSLPTypeDescriptor',
'ObjectDescriptor',
'ParentalPermissionDescriptor',
'ParentalPermissionLastDateOfEnrollmentDescriptor',
'PayrollActivityDescriptor',
'PKCurriculaDescriptor',
'PKFundingSourceDescriptor',
'PKProgramEvaluationTypeDescriptor',
'PKProgramTypeDescriptor',
'PKSchoolTypeDescriptor',
'PKStudentInstructionDescriptor',
'PKTeacherRequirementDescriptor',
'PostSecondaryCertificationLicensureDescriptor',
'PPCDServiceLocationDescriptor',
'PreferredHomeCommunicationMethodDescriptor',
'ProgramIntentDescriptor',
'ProgramOfStudyDescriptor',
'ReportAssessmentTypeDescriptor',
'RestraintStaffTypeDescriptor',
'RoleIdDescriptor',
'ServiceIdDescriptor',
'SharedServiceArrangementStaffDescriptor',
'SSATypeDescriptor',
'StaffServiceDescriptor',
'StaffTypeDescriptor',
'StudentAttributionDescriptor',
'TeacherIncentiveAllotmentDesignationCodeDescriptor',
'TitleOfAssessmentDescriptor',
'ToolOrAssessmentUsedDescriptor',
'TruancyDescriptor',
'UnaccompaniedYouthDescriptor',
'UnaccompaniedYouthPriorYearDescriptor',
'UnschooledAsyleeRefugeeDescriptor',
'UnschooledAsyleeRefugeePriorYearDescriptor'];
	vDescriptor varchar;

	vAuthorizationStrategyId integer := 0;
    vResourceClaimId integer := 0;
   	--ADD NEW ENTITIES WITH THEIR RESPECTIVE AUTHORIZATION STRATEGY TO THIS ARRAY!!
    vEntitiesStrategyArray varchar[] := array['StaffResponsibilities#RelationshipsWithEdOrgsAndPeople',
    	'SSAOrgAssociationExt#RelationshipsWithEdOrgsOnly',
   		'ActualExt#RelationshipsWithEdOrgsOnly',
   		'BudgetExt#RelationshipsWithEdOrgsOnly',
   		'SharedServiceArrangementExt#RelationshipsWithEdOrgsOnly',
   		'PayrollExt#RelationshipsWithEdOrgsAndPeople',
   		'ContractedInstructionalStaffFTEExt#RelationshipsWithEdOrgsOnly',
   		'StudentSpecialEducationProgramEligibilityAssociation#RelationshipsWithEdOrgsAndPeople',
   		'AsOfStatusALeaver#RelationshipsWithEdOrgsOnly', --is this authorization strategy correct?
   		'StudentApplication#RelationshipsWithEdOrgsOnly'
	];
	vEntityStrategy varchar;
    vEntity varchar;
	vStrategyName varchar;
begin
	raise notice 'Descriptor block started';
	  
	SELECT ApplicationId
	INTO vApplicationId
	FROM dbo.Applications
	WHERE ApplicationName = 'Ed-Fi ODS API';

	SELECT resourceclaimid
	INTO vSystemDescriptorsId
	FROM   dbo.resourceclaims
	WHERE  displayname = 'systemDescriptors';
	
	<<"FOREACH descriptor">>
	foreach vDescriptor in array vDescriptorArray loop
		--For each descriptor in the array, create a resourceClaims record
		raise notice 'Processing %',vDescriptor ;
		INSERT INTO dbo.resourceclaims
	            (displayname,
	             resourcename,
	             claimname,
	             parentresourceclaimid,
	             application_applicationid)
		VALUES      ( vDescriptor,
	              	vDescriptor,
					'http://ed-fi.org/ods/identity/claims/tx/'||vDescriptor,
					vSystemDescriptorsId,
					vApplicationId );
	end loop "FOREACH descriptor";
			

			
   	-- display a message
   	raise notice 'Descriptor block completed';
  	raise notice 'Starting with new entities';

	<<"FOREACH Entity">>
	foreach vEntityStrategy in array vEntitiesStrategyArray loop
		--For each entity and strategy on the array, create records on resourceClaims, ResourceClaimAuthorizationMetadatas, and ClaimSetResourceClaims tables
		
		--extract the Authorization strategy
		select substring(vEntityStrategy, position('#' in vEntityStrategy)+1, length(vEntityStrategy) ) into vStrategyName;
		--extract the entity name
   		select substring(vEntityStrategy, 1, position('#' in vEntityStrategy)-1) into vEntity;
   	
   		INSERT INTO dbo.resourceclaims
	            (displayname,
	             resourcename,
	             claimname,
	             parentresourceclaimid,
	             application_applicationid)
		VALUES      ( 	vEntity,
		              	vEntity,
						'http://ed-fi.org/ods/identity/claims/tx/'||vEntity,
						null,--vSystemDescriptorsId,
						vApplicationId );
	
		raise notice 'Authorization for % started',vEntity;

	    SELECT AuthorizationStrategyId
	    into    vAuthorizationStrategyId
	    FROM dbo.AuthorizationStrategies
	    WHERE AuthorizationStrategyName = vStrategyName; 
	
	    SELECT resourceclaimid
	    into vResourceClaimId
	    FROM dbo.ResourceClaims
	    WHERE ResourceName = vEntity;
	
	    INSERT INTO dbo.ResourceClaimAuthorizationMetadatas (action_actionid, authorizationstrategy_authorizationstrategyid, resourceclaim_resourceclaimid)
	    SELECT ActionId
	        ,vAuthorizationStrategyId
	        ,vResourceClaimId
	    FROM dbo.Actions a
	    WHERE NOT EXISTS (
	            SELECT 1
	            FROM dbo.ResourceClaimAuthorizationMetadatas
	            WHERE Action_ActionId = a.ActionId
	                AND AuthorizationStrategy_AuthorizationStrategyId = vAuthorizationStrategyId
	                AND ResourceClaim_ResourceClaimId = vResourceClaimId
	            );
	
	    --Add to SIS Vendor and Ed-Fi Sandbox claim sets
	    INSERT INTO dbo.ClaimSetResourceClaims (action_actionid, claimset_claimsetid, resourceclaim_resourceclaimid)
	    SELECT ActionId
	        ,ClaimSetId
	        ,ResourceClaimId
	    FROM dbo.Actions a
	        , dbo.ClaimSets c
	        , dbo.ResourceClaims r
	    WHERE r.ResourceName = vEntity
	        AND (
	            c.ClaimSetName = 'SIS Vendor'
	            OR c.ClaimSetName = 'Ed-Fi Sandbox'
	            )
	        AND NOT EXISTS (
	            SELECT 1
	            FROM dbo.ClaimSetResourceClaims
	            WHERE Action_ActionId = a.ActionId
	                AND ClaimSet_ClaimSetId = c.ClaimSetId
	                AND ResourceClaim_ResourceClaimId = r.ResourceClaimId
	            );
	
	    raise notice 'Authorization for % ended',vEntity;
	end loop "FOREACH Entity";   

	raise notice 'delete repeated claims in case this script was run more than once';
	delete from dbo.claimsetresourceclaims c
	where c.resourceclaim_resourceclaimid in (select rc1.resourceclaimid 
		from dbo.resourceclaims rc1 
		join dbo.resourceclaims rc2 on  
		 rc1.displayname = rc2.displayname 
		and rc1.resourcename = rc2.resourcename 
		and rc1.claimname = rc2.claimname 
		and (rc1.parentresourceclaimid = rc2.parentresourceclaimid or rc1.parentresourceclaimid is null and rc2.parentresourceclaimid is null)
		and rc1.application_applicationid = rc2.application_applicationid 
		where  rc1.resourceclaimid > rc2.resourceclaimid)
	;
	delete from dbo.resourceclaims rc1
	using dbo.resourceclaims rc2
	where rc1.resourceclaimid > rc2.resourceclaimid 
		and rc1.displayname = rc2.displayname 
		and rc1.resourcename = rc2.resourcename 
		and rc1.claimname = rc2.claimname 
		and (rc1.parentresourceclaimid = rc2.parentresourceclaimid or rc1.parentresourceclaimid is null and rc2.parentresourceclaimid is null)
		and rc1.application_applicationid = rc2.application_applicationid 
	;
end resourceclaims_block $$;




