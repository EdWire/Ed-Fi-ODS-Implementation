CREATE OR ALTER PROCEDURE [edfi].[sp_LoadSnackPackTable]
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

    DROP TABLE IF EXISTS [#SnackPack];

    CREATE TABLE [#SnackPack]
    (
        [StateStudentId] [NVARCHAR](32) NOT NULL PRIMARY KEY,
        [StudentUSI] [INT] NOT NULL,
        [SchoolId] [INT] NOT NULL,
        [MostRecentSchool] [NVARCHAR](75) NULL,
        [AccountabilitySchool] [NVARCHAR](75) NULL,
        [SchoolEntryDate] [DATE] NULL,
        [SchoolExitWithdrawalDate] [DATE] NULL,
        [GradeLevel] [NVARCHAR](75) NULL,
        [CumulativeDaysAttended] [DECIMAL](4, 1) NULL,
        [Homeless] [NVARCHAR](10) NULL,
        [Immigrant] [NVARCHAR](10) NULL,
        [KansasAtRiskProgramParticipation] [NVARCHAR](10) NULL,
        [ESOLBilingualProgramEntryDate] [NVARCHAR](10) NULL,
        [FirstLanguage] [NVARCHAR](75) NULL,
        [ESOLBilingualProgramParticipationCode] [NVARCHAR](75) NULL,
        [NeglectedDelinquentStudent] [NVARCHAR](10) NULL,
        [TitleIParticipation] [NVARCHAR](10) NULL,
        [LunchProgramEligibilityAtRiskFunding] [NVARCHAR](75) NULL,
        [ResidenceDistrict] [NVARCHAR](75) NULL,
        [Qualifiedfor504] [NVARCHAR](10) NULL,
        [PrimaryDisabilityIndicator] [NVARCHAR](10) NULL,
        [GiftedStudentIndicator] [NVARCHAR](10) NULL
    );

    ---------------------------------------------------------------------------------	 Update Column: MostRecentSchoolDistrict
    ;
    WITH [CTE_MostRecentEnrollment]
    AS (SELECT [StudentUSI],
               [StudentUniqueId] AS [StateStudentId],
               [SchoolId],
               [MostRecentSchool],
               [SchoolEntryDate],
               [SchoolExitWithdrawalDate],
               [GradeLevel],
               [CumulativeDaysAttended],
               [Qualifiedfor504]
        FROM
        (
            SELECT [s].[StudentUSI],
                   [s].[StudentUniqueId],
                   [ssa].[SchoolId],
                   CONCAT(
                             '[',
                             [dst].[IdentificationCode],
                             '] ',
                             [sc].[IdentificationCode],
                             ' ',
                             [eo].[NameOfInstitution]
                         ) AS [MostRecentSchool],
                   [ssa].[EntryDate] AS [SchoolEntryDate],
                   [ssa].[ExitWithdrawDate] AS [SchoolExitWithdrawalDate],
                   [gld].[CodeValue] AS [GradeLevel],
                   [ssae].[AttendanceDays] AS [CumulativeDaysAttended],
                   IIF([qfd].[CodeValue] = 'Currently a 504 qualified student', 'Yes', 'No') AS [Qualifiedfor504],
                   [RN] = ROW_NUMBER() OVER (PARTITION BY [s].[StudentUniqueId]
                                             ORDER BY [ssa].[EntryDate] DESC,
                                                      [ssa].[ExitWithdrawDate] ASC
                                            )
            FROM [edfi].[Student] AS [s]
                INNER JOIN [edfi].[StudentSchoolAssociation] AS [ssa]
                    ON [ssa].[StudentUSI] = [s].[StudentUSI]
                INNER JOIN [edfi].[EducationOrganization] AS [eo]
                    ON [ssa].[SchoolId] = [eo].[EducationOrganizationId]
                INNER JOIN [edfi].[School] AS [sch]
                    ON [sch].[SchoolId] = [ssa].[SchoolId]
                INNER JOIN [edfi].[EducationOrganizationIdentificationCode] AS [dst]
                    ON [sch].[LocalEducationAgencyId] = [dst].[EducationOrganizationId]
                INNER JOIN [edfi].[EducationOrganizationIdentificationCode] AS [sc]
                    ON [sch].[SchoolId] = [sc].[EducationOrganizationId]
                INNER JOIN [edfi].[Descriptor] AS [dst_dc]
                    ON [dst].[EducationOrganizationIdentificationSystemDescriptorId] = [dst_dc].[DescriptorId]
                       AND [dst_dc].[CodeValue] = 'SEA'
                INNER JOIN [edfi].[Descriptor] AS [sch_dc]
                    ON [sc].[EducationOrganizationIdentificationSystemDescriptorId] = [sch_dc].[DescriptorId]
                       AND [sch_dc].[CodeValue] = 'SEA'
                INNER JOIN [edfi].[Descriptor] AS [gld]
                    ON [ssa].[EntryGradeLevelDescriptorId] = [gld].[DescriptorId]
                LEFT JOIN [ks].[StudentSchoolAssociationExtension] [ssae]
                    ON [ssae].[EntryDate] = [ssa].[EntryDate]
                       AND [ssae].[SchoolId] = [ssa].[SchoolId]
                       AND [ssae].[StudentUSI] = [ssa].[StudentUSI]
                LEFT JOIN [edfi].[Descriptor] AS [qfd]
                    ON [ssae].[QualifiedFor504DescriptorId] = [qfd].[DescriptorId]
        ) AS [InnerQuery]
        WHERE [RN] = 1)
    INSERT INTO [#SnackPack]
    (
        [StateStudentId],
        [StudentUSI],
        [SchoolId],
        [MostRecentSchool],
        [SchoolEntryDate],
        [SchoolExitWithdrawalDate],
        [GradeLevel],
        [CumulativeDaysAttended],
        [Qualifiedfor504]
    )
    SELECT [StateStudentId],
           [StudentUSI],
           [SchoolId],
           [MostRecentSchool],
           [SchoolEntryDate],
           [SchoolExitWithdrawalDate],
           [GradeLevel],
           [CumulativeDaysAttended],
           [Qualifiedfor504]
    FROM [CTE_MostRecentEnrollment];



    CREATE NONCLUSTERED INDEX [NCI_Enrollment]
    ON [#SnackPack] (
                        [StudentUSI],
                        [SchoolId]
                    );
    WITH [CTE_AccountabilitySchool]
    AS (SELECT [StudentUSI],
               [AccountabilitySchool]
        FROM
        (
            SELECT [sra].[StudentUSI],
                   CONCAT(
                             '[',
                             [dst].[IdentificationCode],
                             '] ',
                             [sc].[IdentificationCode],
                             ' ',
                             [eo].[NameOfInstitution]
                         ) AS [AccountabilitySchool],
                   ROW_NUMBER() OVER (PARTITION BY [sra].[StudentUSI],
                                                   [eo].[EducationOrganizationId]
                                      ORDER BY [sra].[BeginDate] DESC
                                     ) AS [RN]
            FROM [edfi].[StudentEducationOrganizationResponsibilityAssociation] AS [sra]
                INNER JOIN [edfi].[EducationOrganization] [eo]
                    ON [eo].[EducationOrganizationId] = [sra].[EducationOrganizationId]
                INNER JOIN [edfi].[Descriptor] AS [dr]
                    ON [dr].[DescriptorId] = [sra].[ResponsibilityDescriptorId]
                INNER JOIN [edfi].[School] AS [sch]
                    ON [sch].[SchoolId] = [sra].[EducationOrganizationId]
                INNER JOIN [edfi].[EducationOrganizationIdentificationCode] AS [dst]
                    ON [sch].[LocalEducationAgencyId] = [dst].[EducationOrganizationId]
                INNER JOIN [edfi].[EducationOrganizationIdentificationCode] AS [sc]
                    ON [sch].[SchoolId] = [sc].[EducationOrganizationId]
                INNER JOIN [edfi].[Descriptor] AS [dst_dc]
                    ON [dst].[EducationOrganizationIdentificationSystemDescriptorId] = [dst_dc].[DescriptorId]
                       AND [dst_dc].[CodeValue] = 'SEA'
                INNER JOIN [edfi].[Descriptor] AS [sch_dc]
                    ON [sc].[EducationOrganizationIdentificationSystemDescriptorId] = [sch_dc].[DescriptorId]
                       AND [sch_dc].[CodeValue] = 'SEA'
            WHERE [dr].[CodeValue] = 'Accountability'
        ) [InnerQuery]
        WHERE [RN] = 1)
    UPDATE [sk]
    SET [sk].[AccountabilitySchool] = [c].[AccountabilitySchool]
    FROM [#SnackPack] [sk]
        INNER JOIN [CTE_AccountabilitySchool] [c]
            ON [sk].[StudentUSI] = [c].[StudentUSI];


    -----------------------------------------------------------------------------------
    -- Update Column: Homeless
    UPDATE [sp]
    SET [sp].[Homeless] = IIF([shr].[StudentUSI] IS NOT NULL, 'Yes', 'No')
    FROM [#SnackPack] [sp]
        LEFT JOIN [edfi].[StudentHomelessProgramAssociation] [shr]
            ON [sp].[StudentUSI] = [shr].[StudentUSI]
               AND [sp].[SchoolId] = [shr].[EducationOrganizationId];


    -----------------------------------------------------------------------------------
    -- Update Column: Immigrant, NeglectedDelinquentStudent, ResidenceDistrict
	 UPDATE [sp]
     SET [sp].[NeglectedDelinquentStudent] = ISNULL(
                                            IIF(
                                                [neg].[CodeValue] IN ( 'Delinquent student',
                                                                       'Neglected student'
                                                                     ),
                                                'Yes',
                                                'No'),
                                            'No'
                                        ),
        [sp].[Immigrant] = ISNULL(
                                     IIF(
                                         [img].[CodeValue] IN ( 'Yes but not receiving Title III Immigrant Services',
                                                                'Yes, and receiving Title III Immigrant Services'
                                                              ),
                                         'Yes',
                                         'No'),
                                     'No'
                                 ),
        [sp].[ResidenceDistrict] = CONCAT('[', [seoae].[DistrictOfResidence], '] ', [NameOfInstitution])
		FROM [#SnackPack] [sp]
        LEFT JOIN [ks].[StudentEducationOrganizationAssociationExtension] AS [seoae]
            ON [seoae].[StudentUSI] = [sp].[StudentUSI]
               AND [seoae].[EducationOrganizationId] = [sp].[SchoolId]
        LEFT JOIN [edfi].[EducationOrganizationIdentificationCode] [eoi]
            ON [seoae].[DistrictOfResidence] = [IdentificationCode]
        LEFT JOIN [edfi].[EducationOrganization] [eo]
            ON [eo].[EducationOrganizationId] = [eoi].[EducationOrganizationId]
        LEFT JOIN [edfi].[Descriptor] [neg]
            ON [seoae].[NeglectedDelinquentStudentDescriptorId] = [neg].[DescriptorId]
        LEFT JOIN [edfi].[Descriptor] [img]
            ON [seoae].[ImmigrantStudentDescriptorId] = [img].[DescriptorId];

    -----------------------------------------------------------------------------------
    -- Update Column: KansasAtRiskProgramParticipation
    UPDATE [sp]
    SET [sp].[KansasAtRiskProgramParticipation] = IIF([shr].[StudentUSI] IS NOT NULL, 'Yes', 'No')
    FROM [#SnackPack] [sp]
        LEFT JOIN [ks].[StudentKPPProgramAssociation] [shr]
            ON [sp].[StudentUSI] = [shr].[StudentUSI]
               AND [sp].[SchoolId] = [shr].[EducationOrganizationId]


    -----------------------------------------------------------------------------------
    -- Update Column: ESOLBilingualProgramEntryDate, ESOLBilingualProgramParticipationCode
    ;
    WITH [CTE_LanguageInstructionProgram]
    AS (SELECT [StudentUSI],
               [ESOLBilingualProgramEntryDate],
               [ESOLBilingualProgramParticipationCode]
        FROM
        (
            SELECT [sp].[StudentUSI],
                   [slip].[BeginDate] AS [ESOLBilingualProgramEntryDate],
                   [ds].[CodeValue] AS [ESOLBilingualProgramParticipationCode],
                   [RN_ProgramEntryDate] = ROW_NUMBER() OVER (PARTITION BY [sp].[StudentUSI] ORDER BY [slip].[BeginDate] DESC),
                   [RN_ProgramParticipationCode] = [ds].[CodeValue]
            FROM [#SnackPack] [sp]
                LEFT JOIN [ks].[StudentLanguageInstructionProgramAssociationExtension] AS [slip]
                    ON [sp].[StudentUSI] = [slip].[StudentUSI]
                       AND [sp].[SchoolId] = [slip].[EducationOrganizationId]
                LEFT JOIN [edfi].[Descriptor] AS [ds]
                    ON [ds].[DescriptorId] = [slip].[FundingSourceDescriptorId]
        ) AS [InnerQuery]
        WHERE [RN_ProgramEntryDate] = 1)
    UPDATE [sp]
    SET [sp].[ESOLBilingualProgramEntryDate] = [cte].[ESOLBilingualProgramEntryDate],
        [sp].[ESOLBilingualProgramParticipationCode] = [cte].[ESOLBilingualProgramParticipationCode]
    FROM [#SnackPack] [sp]
        LEFT JOIN [CTE_LanguageInstructionProgram] [cte]
            ON [sp].[StudentUSI] = [cte].[StudentUSI]



    -----------------------------------------------------------------------------------
    -- Update Column: FirstLanguage
    ;
    WITH [CTE_FirstLanguage]
    AS (SELECT [StudentUSI],
               [FirstLanguage]
        FROM
        (
            SELECT [sp].[StudentUSI],
                   [dl].[Description] AS [FirstLanguage],
                   [RN] = ROW_NUMBER() OVER (PARTITION BY [sp].[StudentUSI] ORDER BY [dl].[CodeValue])
            FROM [#SnackPack] [sp]
                LEFT JOIN [edfi].[StudentEducationOrganizationAssociationLanguage] AS [seoa]
                    ON [seoa].[StudentUSI] = [sp].[StudentUSI]
                       AND [seoa].[EducationOrganizationId] = [sp].[SchoolId]
                LEFT JOIN [edfi].[Descriptor] AS [dl]
                    ON [dl].[DescriptorId] = [seoa].[LanguageDescriptorId]
        ) AS [InnerQuery]
        WHERE [RN] = 1)
    UPDATE [sp]
    SET [sp].[FirstLanguage] = [cte].[FirstLanguage]
    FROM [#SnackPack] [sp]
        LEFT JOIN [CTE_FirstLanguage] [cte]
            ON [sp].[StudentUSI] = [cte].[StudentUSI]


    -----------------------------------------------------------------------------------
    -- Update Column: TitleIParticipation
    ;
    WITH [CTE_TitleIParticipation]
    AS (SELECT [StudentUSI],
               [TitleIParticipation]
        FROM
        (
            SELECT [sp].[StudentUSI],
                   ISNULL(
                             CASE
                                 WHEN [dt].[CodeValue] IN ( 'Public Schoolwide Program',
                                                            'Public Targeted Assistance Program',
                                                            'Private school students participating'
                                                          ) THEN
                                     'Yes'
                                 ELSE
                                     'No'
                             END,
                             'No'
                         ) AS [TitleIParticipation],
                   [RN] = ROW_NUMBER() OVER (PARTITION BY [sp].[StudentUSI],
                                                          [sp].[SchoolId]
                                             ORDER BY CASE
                                                          WHEN [dt].[CodeValue] IN ( 'Public Schoolwide Program',
                                                                                     'Public Targeted Assistance Program',
                                                                                     'Private school students participating'
                                                                                   ) THEN
                                                              1
                                                          ELSE
                                                              0
                                                      END DESC
                                            )
            FROM [#SnackPack] [sp]
                LEFT JOIN [edfi].[StudentTitleIPartAProgramAssociation] AS [stpa]
                    ON [stpa].[StudentUSI] = [sp].[StudentUSI]
                       AND [stpa].[EducationOrganizationId] = [sp].[SchoolId]
                LEFT JOIN [edfi].[Descriptor] AS [dt]
                    ON [dt].[DescriptorId] = [stpa].[TitleIPartAParticipantDescriptorId]
        ) AS [InnerQuery]
        WHERE [RN] = 1)
    UPDATE [sp]
    SET [sp].[TitleIParticipation] = [cte].[TitleIParticipation]
    FROM [#SnackPack] [sp]
        LEFT JOIN [CTE_TitleIParticipation] [cte]
            ON [sp].[StudentUSI] = [cte].[StudentUSI]

    -----------------------------------------------------------------------------------
    -- Update Column: LunchProgramEligibilityAtRiskFunding
    ;
    WITH [CTE_LunchProgramEligibility]
    AS (SELECT [StudentUSI],
               [LunchProgramEligibilityAtRiskFunding]
        FROM
        (
            SELECT [sp].[StudentUSI],
                   [df].[Description] AS [LunchProgramEligibilityAtRiskFunding],
                   [RN] = ROW_NUMBER() OVER (PARTITION BY [sp].[StudentUSI]
                                             ORDER BY CASE
                                                          WHEN [df].[CodeValue] IS NOT NULL THEN
                                                              1
                                                          ELSE
                                                              0
                                                      END DESC,
                                                      [ssf].[BeginDate] DESC
                                            )
            FROM [#SnackPack] [sp]
                LEFT JOIN [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] AS [ssf]
                    ON [ssf].[StudentUSI] = [sp].[StudentUSI]
                       AND [ssf].[EducationOrganizationId] = [sp].[SchoolId]
                LEFT JOIN [edfi].[Descriptor] [df]
                    ON [df].[DescriptorId] = [ssf].[SchoolFoodServiceProgramServiceDescriptorId]
        ) AS [InnerQuery]
        WHERE [RN] = 1)
    UPDATE [sp]
    SET [sp].[LunchProgramEligibilityAtRiskFunding] = [cte].[LunchProgramEligibilityAtRiskFunding]
    FROM [#SnackPack] [sp]
        LEFT JOIN [CTE_LunchProgramEligibility] [cte]
            ON [sp].[StudentUSI] = [cte].[StudentUSI]

    -----------------------------------------------------------------------------------
    -- Update Column: PrimaryDisabilityIndicator, GiftedStudentIndicator
    ;
    WITH [CTE_StudentCharacteristic]
    AS (SELECT [StudentUSI],
               [PrimaryDisabilityIndicator],
               [GiftedStudentIndicator]
        FROM
        (
            SELECT [sp].[StudentUSI],
                   ISNULL(IIF([dc].[CodeValue] = 'IEP Student', 'Yes', 'No'), 'No') AS [PrimaryDisabilityIndicator],
                   ISNULL(IIF([dc].[CodeValue] = 'Gifted Student', 'Yes', 'No'), 'No') AS [GiftedStudentIndicator],
                   [RN] = ROW_NUMBER() OVER (PARTITION BY [sp].[StudentUSI]
                                             ORDER BY CASE
                                                          WHEN [dc].[CodeValue] IS NOT NULL THEN
                                                              1
                                                          ELSE
                                                              0
                                                      END DESC
                                            )
            FROM [#SnackPack] [sp]
                LEFT JOIN [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] AS [soac]
                    ON [soac].[StudentUSI] = [sp].[StudentUSI]
                       AND [soac].[EducationOrganizationId] = [sp].[SchoolId]
                LEFT JOIN [edfi].[Descriptor] AS [dc]
                    ON [dc].[DescriptorId] = [soac].[StudentCharacteristicDescriptorId]
        ) AS [InnerQuery]
        WHERE [RN] = 1)
    UPDATE [sp]
    SET [sp].[PrimaryDisabilityIndicator] = [cte].[PrimaryDisabilityIndicator],
        [sp].[GiftedStudentIndicator] = [cte].[GiftedStudentIndicator]
    FROM [#SnackPack] [sp]
        LEFT JOIN [CTE_StudentCharacteristic] [cte]
            ON [sp].[StudentUSI] = [cte].[StudentUSI];


    -----------------------------------------------------------------------------------
    -- Final Merge
    MERGE INTO [ks].[SnackPack] AS [Target]
    USING [#SnackPack] AS [Source]
    ON ([Target].[StateStudentId] = [Source].[StateStudentId])
    WHEN MATCHED AND (
                         NULLIF([Source].[MostRecentSchool], [Target].[MostRecentSchool]) IS NOT NULL
                         OR NULLIF([Target].[MostRecentSchool], [Source].[MostRecentSchool]) IS NOT NULL
                         OR NULLIF([Source].[AccountabilitySchool], [Target].[AccountabilitySchool]) IS NOT NULL
                         OR NULLIF([Target].[AccountabilitySchool], [Source].[AccountabilitySchool]) IS NOT NULL
                         OR NULLIF([Source].[SchoolEntryDate], [Target].[SchoolEntryDate]) IS NOT NULL
                         OR NULLIF([Target].[SchoolEntryDate], [Source].[SchoolEntryDate]) IS NOT NULL
                         OR NULLIF([Source].[SchoolExitWithdrawalDate], [Target].[SchoolExitWithdrawalDate]) IS NOT NULL
                         OR NULLIF([Target].[SchoolExitWithdrawalDate], [Source].[SchoolExitWithdrawalDate]) IS NOT NULL
                         OR NULLIF([Source].[GradeLevel], [Target].[GradeLevel]) IS NOT NULL
                         OR NULLIF([Target].[GradeLevel], [Source].[GradeLevel]) IS NOT NULL
                         OR NULLIF([Source].[CumulativeDaysAttended], [Target].[CumulativeDaysAttended]) IS NOT NULL
                         OR NULLIF([Target].[CumulativeDaysAttended], [Source].[CumulativeDaysAttended]) IS NOT NULL
                         OR NULLIF([Source].[Homeless], [Target].[Homeless]) IS NOT NULL
                         OR NULLIF([Target].[Homeless], [Source].[Homeless]) IS NOT NULL
                         OR NULLIF([Source].[Immigrant], [Target].[Immigrant]) IS NOT NULL
                         OR NULLIF([Target].[Immigrant], [Source].[Immigrant]) IS NOT NULL
                         OR NULLIF([Source].[KansasAtRiskProgramParticipation], [Target].[KansasAtRiskProgramParticipation]) IS NOT NULL
                         OR NULLIF([Target].[KansasAtRiskProgramParticipation], [Source].[KansasAtRiskProgramParticipation]) IS NOT NULL
                         OR NULLIF([Source].[ESOLBilingualProgramEntryDate], [Target].[ESOLBilingualProgramEntryDate]) IS NOT NULL
                         OR NULLIF([Target].[ESOLBilingualProgramEntryDate], [Source].[ESOLBilingualProgramEntryDate]) IS NOT NULL
                         OR NULLIF([Source].[FirstLanguage], [Target].[FirstLanguage]) IS NOT NULL
                         OR NULLIF([Target].[FirstLanguage], [Source].[FirstLanguage]) IS NOT NULL
                         OR NULLIF([Source].[ESOLBilingualProgramParticipationCode], [Target].[ESOLBilingualProgramParticipationCode]) IS NOT NULL
                         OR NULLIF([Target].[ESOLBilingualProgramParticipationCode], [Source].[ESOLBilingualProgramParticipationCode]) IS NOT NULL
                         OR NULLIF([Source].[NeglectedDelinquentStudent], [Target].[NeglectedDelinquentStudent]) IS NOT NULL
                         OR NULLIF([Target].[NeglectedDelinquentStudent], [Source].[NeglectedDelinquentStudent]) IS NOT NULL
                         OR NULLIF([Source].[TitleIParticipation], [Target].[TitleIParticipation]) IS NOT NULL
                         OR NULLIF([Target].[TitleIParticipation], [Source].[TitleIParticipation]) IS NOT NULL
                         OR NULLIF([Source].[LunchProgramEligibilityAtRiskFunding], [Target].[LunchProgramEligibilityAtRiskFunding]) IS NOT NULL
                         OR NULLIF([Target].[LunchProgramEligibilityAtRiskFunding], [Source].[LunchProgramEligibilityAtRiskFunding]) IS NOT NULL
                         OR NULLIF([Source].[ResidenceDistrict], [Target].[ResidenceDistrict]) IS NOT NULL
                         OR NULLIF([Target].[ResidenceDistrict], [Source].[ResidenceDistrict]) IS NOT NULL
                         OR NULLIF([Source].[Qualifiedfor504], [Target].[Qualifiedfor504]) IS NOT NULL
                         OR NULLIF([Target].[Qualifiedfor504], [Source].[Qualifiedfor504]) IS NOT NULL
                         OR NULLIF([Source].[PrimaryDisabilityIndicator], [Target].[PrimaryDisabilityIndicator]) IS NOT NULL
                         OR NULLIF([Target].[PrimaryDisabilityIndicator], [Source].[PrimaryDisabilityIndicator]) IS NOT NULL
                         OR NULLIF([Source].[GiftedStudentIndicator], [Target].[GiftedStudentIndicator]) IS NOT NULL
                         OR NULLIF([Target].[GiftedStudentIndicator], [Source].[GiftedStudentIndicator]) IS NOT NULL
                     ) THEN
        UPDATE SET [Target].[MostRecentSchool] = [Source].[MostRecentSchool],
                   [Target].[AccountabilitySchool] = [Source].[AccountabilitySchool],
                   [Target].[SchoolEntryDate] = [Source].[SchoolEntryDate],
                   [Target].[SchoolExitWithdrawalDate] = [Source].[SchoolExitWithdrawalDate],
                   [Target].[GradeLevel] = [Source].[GradeLevel],
                   [Target].[CumulativeDaysAttended] = [Source].[CumulativeDaysAttended],
                   [Target].[Homeless] = [Source].[Homeless],
                   [Target].[Immigrant] = [Source].[Immigrant],
                   [Target].[KansasAtRiskProgramParticipation] = [Source].[KansasAtRiskProgramParticipation],
                   [Target].[ESOLBilingualProgramEntryDate] = [Source].[ESOLBilingualProgramEntryDate],
                   [Target].[FirstLanguage] = [Source].[FirstLanguage],
                   [Target].[ESOLBilingualProgramParticipationCode] = [Source].[ESOLBilingualProgramParticipationCode],
                   [Target].[NeglectedDelinquentStudent] = [Source].[NeglectedDelinquentStudent],
                   [Target].[TitleIParticipation] = [Source].[TitleIParticipation],
                   [Target].[LunchProgramEligibilityAtRiskFunding] = [Source].[LunchProgramEligibilityAtRiskFunding],
                   [Target].[ResidenceDistrict] = [Source].[ResidenceDistrict],
                   [Target].[Qualifiedfor504] = [Source].[Qualifiedfor504],
                   [Target].[PrimaryDisabilityIndicator] = [Source].[PrimaryDisabilityIndicator],
                   [Target].[GiftedStudentIndicator] = [Source].[GiftedStudentIndicator],
                   [Target].[LastModifiedDate] = GETDATE()
    WHEN NOT MATCHED BY TARGET THEN
        INSERT
        (
            [StateStudentId],
            [MostRecentSchool],
            [AccountabilitySchool],
            [SchoolEntryDate],
            [SchoolExitWithdrawalDate],
            [GradeLevel],
            [CumulativeDaysAttended],
            [Homeless],
            [Immigrant],
            [KansasAtRiskProgramParticipation],
            [ESOLBilingualProgramEntryDate],
            [FirstLanguage],
            [ESOLBilingualProgramParticipationCode],
            [NeglectedDelinquentStudent],
            [TitleIParticipation],
            [LunchProgramEligibilityAtRiskFunding],
            [ResidenceDistrict],
            [Qualifiedfor504],
            [PrimaryDisabilityIndicator],
            [GiftedStudentIndicator]
        )
        VALUES
        ([Source].[StateStudentId], [Source].[MostRecentSchool], [Source].[AccountabilitySchool],
         [Source].[SchoolEntryDate], [Source].[SchoolExitWithdrawalDate], [Source].[GradeLevel],
         [Source].[CumulativeDaysAttended], [Source].[Homeless], [Source].[Immigrant],
         [Source].[KansasAtRiskProgramParticipation], [Source].[ESOLBilingualProgramEntryDate],
         [Source].[FirstLanguage], [Source].[ESOLBilingualProgramParticipationCode], [Source].[NeglectedDelinquentStudent],
         [Source].[TitleIParticipation], [Source].[LunchProgramEligibilityAtRiskFunding], [Source].[ResidenceDistrict],
         [Source].[Qualifiedfor504], [Source].[PrimaryDisabilityIndicator], [Source].[GiftedStudentIndicator])
    WHEN NOT MATCHED BY SOURCE THEN
        DELETE;


    DROP TABLE [#SnackPack];
    SET NOCOUNT OFF;
    SET XACT_ABORT OFF;
END;
GO