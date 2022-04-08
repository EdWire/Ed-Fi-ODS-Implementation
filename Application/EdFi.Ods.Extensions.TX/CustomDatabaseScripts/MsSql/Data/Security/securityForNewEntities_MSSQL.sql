USE EdFi_Security
GO

declare @vApplicationId int = 0,
	@vSystemDescriptorsId int = 0,
	@vAuthorizationStrategyId int = 0,
	@vResourceClaimId int = 0
BEGIN
	print('Descriptor block started');

	SELECT @vApplicationId = ApplicationId	
	FROM dbo.Applications
	WHERE ApplicationName = 'Ed-Fi ODS API';

	SELECT @vSystemDescriptorsId = resourceclaimid
	FROM   dbo.resourceclaims
	WHERE  displayname = 'systemDescriptors';

	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ADAEligibilityDescriptor',    'ADAEligibilityDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ADAEligibilityDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ArmedServicesVocAptBatteryIndicatorDescriptor',    'ArmedServicesVocAptBatteryIndicatorDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ArmedServicesVocAptBatteryIndicatorDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'AssessmentResultsObtainedDescriptor',    'AssessmentResultsObtainedDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/AssessmentResultsObtainedDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'AuxiliaryRoleIdDescriptor',    'AuxiliaryRoleIdDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/AuxiliaryRoleIdDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'CalendarWaiverEventTypeDescriptor',    'CalendarWaiverEventTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/CalendarWaiverEventTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'CampusEnrollmentTypeDescriptor',    'CampusEnrollmentTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/CampusEnrollmentTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ChildCountFundingDescriptor',    'ChildCountFundingDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ChildCountFundingDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ClassTypeDescriptor',    'ClassTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ClassTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'CourseSequenceDescriptor',    'CourseSequenceDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/CourseSequenceDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'CrisisEventDescriptor',    'CrisisEventDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/CrisisEventDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'DyslexiaRiskDescriptor',    'DyslexiaRiskDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/DyslexiaRiskDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'EarlyReadingIndicatorDescriptor',    'EarlyReadingIndicatorDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/EarlyReadingIndicatorDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'EconomicDisadvantageDescriptor',    'EconomicDisadvantageDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/EconomicDisadvantageDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ELOActivityDescriptor',    'ELOActivityDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ELOActivityDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ELOTypeDescriptor',    'ELOTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ELOTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'EndorsementCompletedDescriptor',    'EndorsementCompletedDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/EndorsementCompletedDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'EndorsementPursuingDescriptor',    'EndorsementPursuingDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/EndorsementPursuingDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'FosterCareTypeDescriptor',    'FosterCareTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/FosterCareTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'FrequencyOfServicesDescriptor',    'FrequencyOfServicesDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/FrequencyOfServicesDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'GiftedTalentedProgramDescriptor',    'GiftedTalentedProgramDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/GiftedTalentedProgramDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'HearingAmplifAvgDailyUseDescriptor',    'HearingAmplifAvgDailyUseDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/HearingAmplifAvgDailyUseDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'HearingAmplificationAccessDescriptor',    'HearingAmplificationAccessDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/HearingAmplificationAccessDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'HearingAmplificationTypeDescriptor',    'HearingAmplificationTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/HearingAmplificationTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'HomelessStatusDescriptor',    'HomelessStatusDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/HomelessStatusDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'HoursSpentReceivingServicesDescriptor',    'HoursSpentReceivingServicesDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/HoursSpentReceivingServicesDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'IBCVendorDescriptor',    'IBCVendorDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/IBCVendorDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'LangAcqServicesProvidedDescriptor',    'LangAcqServicesProvidedDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/LangAcqServicesProvidedDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'MilitaryConnectedStudentDescriptor',    'MilitaryConnectedStudentDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/MilitaryConnectedStudentDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'NonCampusBasedInstructionDescriptor',    'NonCampusBasedInstructionDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/NonCampusBasedInstructionDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'NSLPTypeDescriptor',    'NSLPTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/NSLPTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ParentalPermissionDescriptor',    'ParentalPermissionDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ParentalPermissionDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PKCurriculaDescriptor',    'PKCurriculaDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PKCurriculaDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PKFundingSourceDescriptor',    'PKFundingSourceDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PKFundingSourceDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PKProgramEvaluationTypeDescriptor',    'PKProgramEvaluationTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PKProgramEvaluationTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PKProgramTypeDescriptor',    'PKProgramTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PKProgramTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PKSchoolTypeDescriptor',    'PKSchoolTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PKSchoolTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PKStudentInstructionDescriptor',    'PKStudentInstructionDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PKStudentInstructionDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PKTeacherRequirementDescriptor',    'PKTeacherRequirementDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PKTeacherRequirementDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PostSecondaryCertificationLicensureDescriptor',    'PostSecondaryCertificationLicensureDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PostSecondaryCertificationLicensureDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PPCDServiceLocationDescriptor',    'PPCDServiceLocationDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PPCDServiceLocationDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'PreferredHomeCommunicationMethodDescriptor',    'PreferredHomeCommunicationMethodDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/PreferredHomeCommunicationMethodDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ProgramOfStudyDescriptor',    'ProgramOfStudyDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ProgramOfStudyDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'RestraintStaffTypeDescriptor',    'RestraintStaffTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/RestraintStaffTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'RoleIdDescriptor',    'RoleIdDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/RoleIdDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ServiceIdDescriptor',    'ServiceIdDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ServiceIdDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'SharedServiceArrangementStaffDescriptor',    'SharedServiceArrangementStaffDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/SharedServiceArrangementStaffDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'StaffTypeDescriptor',    'StaffTypeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/StaffTypeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'ToolOrAssessmentUsedDescriptor',    'ToolOrAssessmentUsedDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/ToolOrAssessmentUsedDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'UnaccompaniedYouthDescriptor',    'UnaccompaniedYouthDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/UnaccompaniedYouthDescriptor',       @vSystemDescriptorsId,       @vApplicationId );
	INSERT INTO dbo.resourceclaims (displayname,  resourcename,  claimname,  parentresourceclaimid,  application_applicationid)   VALUES      (  'UnschooledAsyleeRefugeeDescriptor',    'UnschooledAsyleeRefugeeDescriptor',       'http://ed-fi.org/ods/identity/claims/tx/UnschooledAsyleeRefugeeDescriptor',       @vSystemDescriptorsId,       @vApplicationId );	
		
	PRINT 'Descriptor block completed'

	
	PRINT 'Authorization for StaffResponsibility started';

	INSERT INTO dbo.resourceclaims               (displayname,                resourcename,                claimname,                parentresourceclaimid,                application_applicationid)   VALUES      (  'StaffResponsibility',                  'StaffResponsibility',       'http://ed-fi.org/ods/identity/claims/tx/StaffResponsibility',       @vSystemDescriptorsId,       @vApplicationId );
		SELECT @vAuthorizationStrategyId = AuthorizationStrategyId		
		FROM dbo.AuthorizationStrategies
		WHERE AuthorizationStrategyName = 'NoFurtherAuthorizationRequired'; --***********IS THIS WHAT WE WANT????***********************
	
		SELECT @vResourceClaimId = resourceclaimid
		FROM dbo.ResourceClaims
		WHERE ResourceName = 'StaffResponsibility';

		INSERT INTO dbo.ResourceClaimAuthorizationMetadatas (action_actionid, authorizationstrategy_authorizationstrategyid, resourceclaim_resourceclaimid)
		SELECT ActionId
			,@vAuthorizationStrategyId
			,@vResourceClaimId
		FROM Actions a
		WHERE NOT EXISTS (
				SELECT 1
				FROM ResourceClaimAuthorizationMetadatas
				WHERE Action_ActionId = a.ActionId
					AND AuthorizationStrategy_AuthorizationStrategyId = @vAuthorizationStrategyId
					AND ResourceClaim_ResourceClaimId = @vResourceClaimId
				);
	  
		--Add to SIS Vendor and Ed-Fi Sandbox claim sets
		INSERT INTO dbo.ClaimSetResourceClaims (action_actionid, claimset_claimsetid, resourceclaim_resourceclaimid)
		SELECT ActionId
			,ClaimSetId
			,ResourceClaimId
		FROM Actions a
			,ClaimSets c
			,ResourceClaims r
		WHERE r.ResourceName = 'StaffResponsibility'
			AND (
				c.ClaimSetName = 'SIS Vendor'
				OR c.ClaimSetName = 'Ed-Fi Sandbox'
				)
			AND NOT EXISTS (
				SELECT 1
				FROM ClaimSetResourceClaims
				WHERE Action_ActionId = a.ActionId
					AND ClaimSet_ClaimSetId = c.ClaimSetId
					AND ResourceClaim_ResourceClaimId = r.ResourceClaimId
				);

	PRINT 'Authorization for StaffResponsibility ENDED';
	
END