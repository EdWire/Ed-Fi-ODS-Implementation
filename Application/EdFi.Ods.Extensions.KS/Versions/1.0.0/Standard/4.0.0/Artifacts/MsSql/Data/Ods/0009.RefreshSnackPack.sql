create or alter procedure edfi.RefreshSnackPack
as
begin
	declare @PrevSYODS nvarchar(255) = (select left(db_name(), len(db_name()) - 4) 
											+ cast(cast(right(db_name(), 4) as int) - 1 as nvarchar(4)))

	declare @sql nvarchar(max);

	declare @SnackPack as table (
		[StateStudentId] [nvarchar](32) NOT NULL,
		[MostRecentSchool] [nvarchar](75) NULL,
		[AccountabilitySchool] [nvarchar](75) NULL,
		[SchoolEntryDate] [date] NULL,
		[SchoolExitWithdrawalDate] [date] NULL,
		[GradeLevel] [nvarchar](75) NULL,
		[CumulativeDaysAttended] [decimal](4, 1) NULL,
		[Homeless] [nvarchar](10) NULL,
		[Immigrant] [nvarchar](10) NULL,
		[KansasAtRiskProgramParticipation] [nvarchar](10) NULL,
		[ESOLBilingualProgramEntryDate] [nvarchar](10) NULL,
		[FirstLanguage] [nvarchar](75) NULL,
		[ESOLBilingualProgramParticipationCode] [nvarchar](75) NULL,
		[NeglectedDelinquentStudent] [nvarchar](10) NULL,
		[TitleIParticipation] [nvarchar](10) NULL,
		[LunchProgramEligibilityAtRiskFunding] [nvarchar](75) NULL,
		[ResidenceDistrict] [nvarchar](75) NULL,
		[Qualifiedfor504] [nvarchar](10) NULL,
		[PrimaryDisabilityIndicator] [nvarchar](10) NULL,
		[GiftedStudentIndicator] [nvarchar](10) NULL
	);

	/* Confirm if previous school year exists	*/
	if exists (select 1 from sys.databases where [name] = @PrevSYODS)
	begin
		/* Refresh SnackPack Table for last SY	*/
		set @sql = 'exec ' + '[' +@PrevSYODS + ']' + '.edfi.sp_LoadSnackPackTable'
		
		execute sp_executesql @sql;

		set @sql = concat(
			'SELECT [StateStudentId]
				  ,[MostRecentSchool]
				  ,[AccountabilitySchool]
				  ,[SchoolEntryDate]
				  ,[SchoolExitWithdrawalDate]
				  ,[GradeLevel]
				  ,[CumulativeDaysAttended]
				  ,[Homeless]
				  ,[Immigrant]
				  ,[KansasAtRiskProgramParticipation]
				  ,[ESOLBilingualProgramEntryDate]
				  ,[FirstLanguage]
				  ,[ESOLBilingualProgramParticipationCode]
				  ,[NeglectedDelinquentStudent]
				  ,[TitleIParticipation]
				  ,[LunchProgramEligibilityAtRiskFunding]
				  ,[ResidenceDistrict]
				  ,[Qualifiedfor504]
				  ,[PrimaryDisabilityIndicator]
				  ,[GiftedStudentIndicator]
			FROM ', '[' +@PrevSYODS + ']', '.ks.SnackPack
	  ')

	  insert into @SnackPack
	  execute sp_executesql @sql;
	end

	/* Refresh SnackPack Table for current SY	*/
	exec edfi.sp_LoadSnackPackTable;

	/* Append last school year data to current SY SnackPack	*/
	insert into ks.SnackPack ([StateStudentId]
				  ,[MostRecentSchool]
				  ,[AccountabilitySchool]
				  ,[SchoolEntryDate]
				  ,[SchoolExitWithdrawalDate]
				  ,[GradeLevel]
				  ,[CumulativeDaysAttended]
				  ,[Homeless]
				  ,[Immigrant]
				  ,[KansasAtRiskProgramParticipation]
				  ,[ESOLBilingualProgramEntryDate]
				  ,[FirstLanguage]
				  ,[ESOLBilingualProgramParticipationCode]
				  ,[NeglectedDelinquentStudent]
				  ,[TitleIParticipation]
				  ,[LunchProgramEligibilityAtRiskFunding]
				  ,[ResidenceDistrict]
				  ,[Qualifiedfor504]
				  ,[PrimaryDisabilityIndicator]
				  ,[GiftedStudentIndicator])
	select [psp].[StateStudentId]
		,[psp].[MostRecentSchool]
		,[psp].[AccountabilitySchool]
		,[psp].[SchoolEntryDate]
		,[psp].[SchoolExitWithdrawalDate]
		,[psp].[GradeLevel]
		,[psp].[CumulativeDaysAttended]
		,[psp].[Homeless]
		,[psp].[Immigrant]
		,[psp].[KansasAtRiskProgramParticipation]
		,[psp].[ESOLBilingualProgramEntryDate]
		,[psp].[FirstLanguage]
		,[psp].[ESOLBilingualProgramParticipationCode]
		,[psp].[NeglectedDelinquentStudent]
		,[psp].[TitleIParticipation]
		,[psp].[LunchProgramEligibilityAtRiskFunding]
		,[psp].[ResidenceDistrict]
		,[psp].[Qualifiedfor504]
		,[psp].[PrimaryDisabilityIndicator]
		,[psp].[GiftedStudentIndicator]
	from @SnackPack psp
	left join ks.SnackPack csp
		on psp.StateStudentId = csp.StateStudentId
	where csp.StateStudentId is null;

end