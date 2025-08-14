/*
THis script customizes the default EdFi security on the SIS Vendor claim set so that
Staff, AssessmentMetadata, and programs are read only.

*/
begin transaction
set xact_abort on

--variables for security seed scripts
DECLARE @sisRoResourceClaimId INT;

-- set up parent resource claim
INSERT INTO ResourceClaims
(ResourceName, ClaimName)
VALUES
('sisVendorRo','http://ed-fi.org/ods/identity/claims/domains/sisVendorRo');

set @sisRoResourceClaimId = SCOPE_IDENTITY();

-- and its associated actions
INSERT INTO ResourceClaimActions
(ResourceClaimId, actionId)
SELECT @sisRoResourceClaimId, ActionId
FROM Actions
where ActionName != 'ReadChanges';

-- and auth strategy
INSERT INTO ResourceClaimActionAuthorizationStrategies
(ResourceClaimActionId, AuthorizationStrategyId)
SELECT ResourceClaimActionId , AuthorizationStrategyId
FROM AuthorizationStrategies
JOIN ResourceClaimActions
	ON AuthorizationStrategies.AuthorizationStrategyName = 'RelationshipsWithEdOrgsAndPeople'
	AND ResourceClaimActions.ResourceClaimId = @sisRoResourceClaimId;



-- and its permissions for all other claimsets. base this on the 'relationshipBasedData' resourceClaim
-- and exclude the "SIS Vendor" claim set
INSERT INTO ClaimSetResourceClaimActions
(ClaimSetId, ResourceClaimId, ActionId, validationRuleSetNameOverride)
SELECT
	ClaimSetId,
	@sisRoResourceClaimId,
	ActionId,
	validationRuleSetNameOverride
FROM ClaimSetResourceClaimActions
WHERE ResourceClaimId = (SELECT resourceClaimid from ResourceClaims where ResourceName = 'relationshipBasedData') 
AND ClaimSetId NOT IN (SELECT claimSetId from ClaimSets where ClaimSetName = 'SIS Vendor');

-- now get the read action for the new claim set
INSERT INTO ClaimSetResourceClaimActions
(ClaimSetId, ResourceClaimId, ActionId, validationRuleSetNameOverride)
SELECT
	ClaimSetId,
	@sisRoResourceClaimId,
	ActionId,
	validationRuleSetNameOverride
FROM ClaimSetResourceClaimActions
WHERE ResourceClaimId = (SELECT resourceClaimid from ResourceClaims where ResourceName = 'relationshipBasedData') 
AND ClaimSetId = (SELECT claimSetId from ClaimSets where ClaimSetName = 'SIS Vendor')
AND ActionId = (SELECT actionId from Actions where ActionName = 'Read');


-- and move staff and program over to use this new parent resourceclaim
UPDATE ResourceClaims
Set ParentResourceClaimId = @sisRoResourceClaimId
where ResourceName in ( 'staff', 'program')


-- now take everything accept for read away from SIS vendor for assessmentMetadata
DELETE ClaimSetResourceClaimActions
WHERE resourceClaimId = (SELECT resourceClaimid FROM ResourceClaims where ResourceName = 'assessmentMetadata')
AND Actionid != (SELECT ActionId FROM Actions WHERE ActionName = 'Read')
AND ClaimSetId = (SELECT ClaimsetId FROM ClaimSets WHERE ClaimSetName = 'SIS Vendor')



commit