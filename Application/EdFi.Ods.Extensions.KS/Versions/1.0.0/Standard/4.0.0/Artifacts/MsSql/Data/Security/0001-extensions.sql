-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

begin transaction
set xact_abort on
 
DECLARE @SystemDescriptorsId INT
DECLARE @RelationshipBasedDataResourceClaim INT
 

SELECT @SystemDescriptorsId = resourceclaimid
FROM   [dbo].[resourceclaims]
WHERE  [resourcename] = 'systemDescriptors'
 

SELECT @RelationshipBasedDataResourceClaim = resourceclaimid
FROM   [dbo].[resourceclaims]
WHERE  [resourcename] = 'relationshipBasedData'




INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'assessmentRequestDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/assessmentRequestDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'collegeCareerTypeDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/collegeCareerTypeDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'courseDeliveryTypeDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/courseDeliveryTypeDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'courseProgramTypeDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/courseProgramTypeDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'courseStatusDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/courseStatusDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'CTECertificationEarnedDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/cTECertificationEarnedDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'fundingSourceDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/fundingSourceDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'immigrantStudentDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/immigrantStudentDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'languageInstructionProgramTypeDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/languageInstructionProgramTypeDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'militaryConnectedStudentDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/militaryConnectedStudentDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'NeglectedDelinquentStudentDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/NeglectedDelinquentStudentDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'postGraduationPlansDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/postGraduationPlansDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'qualifiedFor504Descriptor',
'http://ed-fi.org/ods/identity/claims/ks/qualifiedFor504Descriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[resourceclaims]
            (
             [resourcename],
             [claimname],
             [parentresourceclaimid])
VALUES      ( 'workBasedLearningDescriptor',
'http://ed-fi.org/ods/identity/claims/ks/workBasedLearningDescriptor',
@SystemDescriptorsId)

INSERT INTO [dbo].[ResourceClaims] (
    [ResourceName]
    ,[ClaimName]
    ,[ParentResourceClaimId])
VALUES ( 'studentKPATProgramAssociation',
    'http://ed-fi.org/ods/identity/claims/ks/studentKPATProgramAssociation'
    ,@RelationshipBasedDataResourceClaim)
INSERT INTO [dbo].[ResourceClaims] (
    [ResourceName]
    ,[ClaimName]
    ,[ParentResourceClaimId])
VALUES ( 'studentKPPProgramAssociation',
    'http://ed-fi.org/ods/identity/claims/ks/studentKPPProgramAssociation'
    ,@RelationshipBasedDataResourceClaim)

INSERT INTO [dbo].[ResourceClaims] (
    [ResourceName]
    ,[ClaimName]
    ,[ParentResourceClaimId])
VALUES ( 'sectionEducator',
    'http://ed-fi.org/ods/identity/claims/ks/sectionEducator'
    ,@RelationshipBasedDataResourceClaim)
 
INSERT INTO [dbo].[ResourceClaims] (
    [ResourceName]
    ,[ClaimName]
    ,[ParentResourceClaimId])
VALUES ( 'snackPack',
    'http://ed-fi.org/ods/identity/claims/ks/snackPack'
    ,NULL)

--Setup Authorization Strategy

DECLARE @AuthorizationStrategyId INT
DECLARE @ResourceClaimId INT
 
SELECT @AuthorizationStrategyId = AuthorizationStrategyId
FROM AuthorizationStrategies
WHERE AuthorizationStrategyName = 'NoFurtherAuthorizationRequired'


-- snackPack
SELECT @ResourceClaimId = resourceclaimid
FROM ResourceClaims
WHERE ResourceName = 'snackPack'
 
INSERT INTO [dbo].[ResourceClaimActions] (
    [ResourceClaimId]
    ,[ActionId]
    ,[ValidationRuleSetName]
    )
SELECT ResourceClaimId, a.ActionId, null
FROM [dbo].[ResourceClaims]
CROSS APPLY (
    SELECT ActionId
    FROM [dbo].[Actions]
    WHERE ActionName IN ('Read')) AS a
WHERE ResourceClaimId = @ResourceClaimId
 
INSERT INTO [dbo].[ResourceClaimActionAuthorizationStrategies] (
    [ResourceClaimActionId]
    ,[AuthorizationStrategyId]
    )
SELECT ResourceClaimActionId, @AuthorizationStrategyId
FROM [dbo].[ResourceClaimActions] rca
INNER JOIN [dbo].[ResourceClaims] rc
    ON rca.[ResourceClaimId] = rc.[ResourceClaimId]
INNER JOIN [dbo].[Actions] a
    ON rca.ActionId = a.Actionid
        AND a.ActionName IN ('Read')
WHERE rc.ResourceClaimId = @ResourceClaimId
 
--Add to SIS Vendor and Ed-Fi Sandbox claim sets

INSERT INTO [dbo].[ClaimSetResourceClaimActions]
SELECT [ClaimSetId]
    ,[ResourceClaimId]
    ,[ActionId]
    ,NULL
FROM Actions a
    ,ClaimSets c
    ,ResourceClaims r
WHERE r.ResourceName = 'snackPack'
    AND (
        c.ClaimSetName = 'SIS Vendor'
        OR c.ClaimSetName = 'Ed-Fi Sandbox'
        )
    AND NOT EXISTS (
        SELECT 1
        FROM ClaimSetResourceClaimActions csrca
        WHERE csrca.ActionId = a.ActionId
            AND csrca.ClaimSetId = c.ClaimSetId
                 AND csrca.ResourceClaimId = r.ResourceClaimId
        )

commit;