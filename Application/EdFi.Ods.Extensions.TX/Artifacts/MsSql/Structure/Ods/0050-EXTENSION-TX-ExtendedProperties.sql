-- Extended Properties [tx].[ActualExt] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ActualExtension Domain Entity represents the sum of the financial transactions to date relating to a specific account.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 6 for the 2015-16 fiscal year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0317. Function identifies a general operational area and groups together related activities.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'FunctionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0316. Fund identifies the fund group and specific fund (when applicable) for actual financial data.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'FundDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0318. Object identifies an account, a transaction, or a source of funds.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'ObjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'Organization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'ProgramIntentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0774. ActualAmount indicates the dollar value associated with actual financial account information.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ActualExt', @level2type=N'COLUMN', @level2name=N'ActualAmount'
GO

-- Extended Properties [tx].[ADAEligibilityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ADAEligibility is populated from Code Table C059.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ADAEligibilityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ADAEligibilityDescriptor', @level2type=N'COLUMN', @level2name=N'ADAEligibilityDescriptorId'
GO

-- Extended Properties [tx].[ApplicationTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ApplicationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ApplicationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ApplicationTypeDescriptorId'
GO

-- Extended Properties [tx].[ArmedServicesVocAptBatteryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ArmedServicesVocAptBattery is populated from code table C217.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ArmedServicesVocAptBatteryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ArmedServicesVocAptBatteryDescriptor', @level2type=N'COLUMN', @level2name=N'ArmedServicesVocAptBatteryDescriptorId'
GO

-- Extended Properties [tx].[AsOfStatusALeavers] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AsOfStatusALeavers - This entity is being reported on non-enrolled students and graduates that are enrolled in the prior school year and do not return in the current school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1325, DC119. A person''s gender.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1064, E1375. HispanicLatinoEthnicity indicates a person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish culture or origin, regardless of race.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1517, DC063. The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1001, C162. ExitWithdrawType indicates the reason a prior year student in grade 7-12 student has not enrolled in the district during the current school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'ExitWithdrawTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0923. LocalStudentID is the student''s local identification number as assigned by the district.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'LocalStudentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'StudentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'GenerationCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1000, C161. is a characteristic of a student relating to their individual enrollment circumstances.  It indicates whether the student:
- attends an open enrollment charter school;
- is served in a juvenile justice alternative education program (JJAEP);
- attends school in the district through a Public Education Grant (PEG);
- attends school by means of a transfer between LEAs;
- attends school in the district, lives outside the boundaries of the state of Texas, and therefore is not an inter district transfer;
- lives in Texas but outside district boundaries and is served in a juvenile pre-adjudication secure detention facility or a juvenile post-adjudication secure correctional facility;
- lives in Texas but outside district boundaries and is served in a residential treatment center;
- is served by the Texas School for the Deaf as a parent referral;
- is enrolled in South Texas ISD (031-916);
- is a student with a disability enrolled by their parent(s) in a private school (including a home school) but who receives special education and/or related services from the public school district under an individualized services plan (ISP);
- is a child of a charter school employee; or
- student-initiated transfer due to remote learning.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'StudentAttributionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1596. AssociateDegreeIndicator indicates that the student earned an associate degree prior to graduation from high school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'AssociateDegreeIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AsOfStatusLastFridayOctober indicates the student’s status in the district on the last Friday in October in the current school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'AsOfStatusLastFridayOctoberDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HomelessStatusPriorYear indicates if a student at any time during the prior school year was identified as homeless.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'HomelessStatusPriorYearDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UnaccompaniedYouthPriorYear indicates if a student at any time during the prior school year was identified as an unaccompanied youth.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'UnaccompaniedYouthPriorYearDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UnschooledAsyleeRefugeePriorYear indicates whether a student’s initial enrollment in a school in the United States in grades 7 through 12 was an unschooled asylee or refugee per TEC §39.027(a-1).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'UnschooledAsyleeRefugeePriorYearDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EconomicDisadvantageLastDateOfEnrollment indicates the student’s economic disadvantage status on the last date of their enrollment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'EconomicDisadvantageLastDateOfEnrollmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentalPermissionLastDateOfEnrollment indicates in the prior school year whether the student’s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'ParentalPermissionLastDateOfEnrollmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MigrantPriorYear indicates that the student (age 3-21 in the prior school year) was, or the student’s parent, spouse, or guardian was a migratory agricultural worker, including a migratory dairy worker, or a migratory fisher, and who, in the preceding 36 months, in order to obtain, or accompany such parent, spouse, or guardian in order to obtain, temporary or seasonal employment in agricultural or fishing work 1) has moved from one school district to another; or 2) resides in a school district of more than 15,000 square miles, and migrates a distance of 20 miles or more to a temporary residence to engage in a fishing activity.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'MigrantPriorYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AdultPreviousAttendancePriorYear indicates whether an adult student (age 18-25) who was enrolled in the prior year in a high school equivalency program, dropout recovery school, or other adult education program (under TEC §29.259), has or has not attended school in the previous nine months prior to enrolling during the prior year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'AdultPreviousAttendancePriorYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city the student was born in.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'BirthCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'BirthStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'BirthInternationalProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'BirthCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the date the student entered the U.S.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'DateEnteredUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'MultipleBirthStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender at birth.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeavers', @level2type=N'COLUMN', @level2name=N'BirthSexDescriptorId'
GO

-- Extended Properties [tx].[AsOfStatusALeaversEndorsementCompletedSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of EndorsementCompleted', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversEndorsementCompletedSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversEndorsementCompletedSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversEndorsementCompletedSet', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO

-- Extended Properties [tx].[AsOfStatusALeaversEndorsementCompletedSetEndorsementCompleted] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1544 - E1548. EndorsementCompleted indicates the student has successfully completed a FHSP program to earn one of the following endorsements:
• STEM
• Business and Industry
• Public Services
• Arts and Humanities
• Multi-Disciplinary Studies', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversEndorsementCompletedSetEndorsementCompleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1544 - E1548. EndorsementCompleted indicates the student has successfully completed a FHSP program to earn one of the following endorsements:
• STEM
• Business and Industry
• Public Services
• Arts and Humanities
• Multi-Disciplinary Studies', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'EndorsementCompletedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO

-- Extended Properties [tx].[AsOfStatusALeaversFinancialAidApplication] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1724. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (FAFSA or TAFSA) or submitting an exemption.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversFinancialAidApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1724. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (FAFSA or TAFSA) or submitting an exemption.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'FinancialAidApplicationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO

-- Extended Properties [tx].[AsOfStatusALeaversGraduationSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0791. DiplomaAwardDate indicates the month and year that the student graduated from high school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'DiplomaAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0806. DiplomaType indicates the type of plan under which the student graduated.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'DiplomaTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1562. IndividualGraduationCommitteeGraduateIndicator Indicates whether a student for whom an IGC was established has graduated based on an IGC decision.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'IndividualGraduationCommitteeGraduateIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1589. MilitaryEnlistmentIndicator indicates that a student leaver enlisted in the United States Armed Forces.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'MilitaryEnlistmentIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1542. FHSPDistingLevelGraduate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSet', @level2type=N'COLUMN', @level2name=N'FHSPDistingLevelGraduate'
GO

-- Extended Properties [tx].[AsOfStatusALeaversGraduationSetFinancialAidApplication] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1724. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (FAFSA or TAFSA) or submitting an exemption.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSetFinancialAidApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1724. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (FAFSA or TAFSA) or submitting an exemption.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSetFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'FinancialAidApplicationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSetFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversGraduationSetFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO

-- Extended Properties [tx].[AsOfStatusALeaversIndustryBasedCertificationSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Common Type IndustryBasedCertificationSet.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1632. DateCertTaken indicates the date upon which the industry based certification was taken.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'DateCertTaken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1655. IBCVendorCode identifies the organization or company that offered the service.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'IBCVendorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1640. PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'PostSecondaryCertificationLicensureDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1733. PostSecondaryCertLicensureResult indicates the result of a state, nationally, or internationally recognized industry-based certification exam taken by a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'PostSecondaryCertLicensureResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1654. IBCExamFeeAmount identifies the amount of money that was paid for a student’s industry certification exam by the local education agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'IBCExamFeeAmount'
GO

-- Extended Properties [tx].[AsOfStatusALeaversPersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [tx].[AsOfStatusALeaversRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1343,E1059,E1060,E1061,E1062,E1063. The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1343,E1059,E1060,E1061,E1062,E1063. The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversRace', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusALeaversRace', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO

-- Extended Properties [tx].[AsOfStatusLastDayEnrollmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AsOfStatusLastDayEnrollment indicates the student’s status in the district on the last day of school or last date of enrollment in the current school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusLastDayEnrollmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusLastDayEnrollmentDescriptor', @level2type=N'COLUMN', @level2name=N'AsOfStatusLastDayEnrollmentDescriptorId'
GO

-- Extended Properties [tx].[AsOfStatusLastFridayOctoberDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusLastFridayOctoberDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AsOfStatusLastFridayOctoberDescriptor', @level2type=N'COLUMN', @level2name=N'AsOfStatusLastFridayOctoberDescriptorId'
GO

-- Extended Properties [tx].[AssessmentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AssessmentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an assessment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the Assessment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'Namespace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1127. The title or name of the assessment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'TitleOfAssessmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1573. ReportAssessmentType indicates the TEA collection for which the assessment should be reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'ReportAssessmentTypeDescriptorId'
GO

-- Extended Properties [tx].[AssessmentResultsObtainedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor AssessmentResultsObtained identifies the result of tools or assessments used to assess the student’s language acquisition. (DC163)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AssessmentResultsObtainedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AssessmentResultsObtainedDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentResultsObtainedDescriptorId'
GO

-- Extended Properties [tx].[AuxiliaryRoleIdDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor AuxiliaryRoleId is populated from code table C213.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AuxiliaryRoleIdDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'AuxiliaryRoleIdDescriptor', @level2type=N'COLUMN', @level2name=N'AuxiliaryRoleIdDescriptorId'
GO

-- Extended Properties [tx].[BasicReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the recording of a student’s regular (basic) reporting period attendance.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0036. TotalDaysAbsent indicates the total number of days the student was absent during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'TotalDaysAbsent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0936. TotalIneligibleDaysPresent indicates the total number of days the student was present and ineligible for Foundation School Program funding during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'TotalIneligibleDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0937. TotalEligibleDaysPresent indicates the total number of days the student was present and eligible for Foundation School Program funding during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'TotalEligibleDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1678. RSTotalEligibleDaysPresent indicates the total number of days the student was remote synchronous present and eligible for Foundation School Program funding during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSTotalEligibleDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1679. RATotalEligibleDaysPresent indicates the total number of days the student was remote asynchronous present and eligible for Foundation School Program funding during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BasicReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RATotalEligibleDaysPresent'
GO

-- Extended Properties [tx].[BilingualESLFundingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor BilingualESLFunding is based on code table C225.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLFundingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLFundingDescriptor', @level2type=N'COLUMN', @level2name=N'BilingualESLFundingDescriptorId'
GO

-- Extended Properties [tx].[BilingualESLProgramReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the bilingual/ESL program attendance of a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1651. BilingualESLFunding indicates the language program in which the student participates during the reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'BilingualESLFundingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0938. TotalEligBilingualESLDaysPresent indicates the total number of days the student was present and an eligible participant in the state-approved bilingual/ESL program during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'TotalEligBilingualESLDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1682. RSTotalEligBilingualESLDaysPresent indicates the total number of days the student was remote synchronous present and an eligible participant in the state-approved bilingual/ESL program during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSTotalEligBilingualESLDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1683. RATotalEligBilingualESLDaysPresent indicates the total number of days the student was remote asynchronous present and an eligible participant in the state-approved bilingual/ESL program during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RATotalEligBilingualESLDaysPresent'
GO

-- Extended Properties [tx].[BudgetExt] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The BudgetExtension Domain Entity represents the amount of monies allocated to be spent or received by an education organization as related to a specific account', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 6 for the 2015-16 fiscal year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0317. Function identifies a general operational area and groups together related activities.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'FunctionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0316. Fund identifies the fund group and specific fund (when applicable) for budget data.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'FundDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0318. Object identifies an account, a transaction, or a source of funds.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'ObjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'Organization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'ProgramIntentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0321. BudgetAmount indicates the dollar value associated with budget financial account information.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'BudgetExt', @level2type=N'COLUMN', @level2name=N'BudgetAmount'
GO

-- Extended Properties [tx].[CalendarDateExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the CalendarEvent.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1570, C204. CalendarWaiverEventType indicates the type of state approved waiver', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'CalendarWaiverEventTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1571. SchoolDayOperationalMinutes indicates the minutes that a campus operated on a particular school day for the purpose of student instruction.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'SchoolDayOperationalMinutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1599. SchoolDayInstructionalMinutes indicates the portion of the school day in which instruction takes place along with certain other exceptions and are considered a subset of operational minutes.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'SchoolDayInstructionalMinutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1572. SchoolDayWaiverMinutes indicates the waiver minutes for the campus and calendar date.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'SchoolDayWaiverMinutes'
GO

-- Extended Properties [tx].[CalendarWaiverEventTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor CalendarWaiverEventType is populated from Code Table C204.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarWaiverEventTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CalendarWaiverEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CalendarWaiverEventTypeDescriptorId'
GO

-- Extended Properties [tx].[CampusEnrollmentTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor CampusEnrollmentType is populated from code table C219.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CampusEnrollmentTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CampusEnrollmentTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CampusEnrollmentTypeDescriptorId'
GO

-- Extended Properties [tx].[ChildCountFundingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ChildCountFunding indicates under which federal program the student receiving special education and related services is counted. (C066)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ChildCountFundingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ChildCountFundingDescriptor', @level2type=N'COLUMN', @level2name=N'ChildCountFundingDescriptorId'
GO

-- Extended Properties [tx].[ClassTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ClassType is populated from code table C179.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ClassTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ClassTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ClassTypeDescriptorId'
GO

-- Extended Properties [tx].[ContractedInstructionalStaffFTEExt] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ContractedInstructionalStaffFTEExtension Domain Entity represents financial information for contracted staff by Program Intent Code at the LEA/Campus level.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ContractedInstructionalStaffFTEExt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ContractedInstructionalStaffFTEExt', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ContractedInstructionalStaffFTEExt', @level2type=N'COLUMN', @level2name=N'ProgramIntentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ContractedInstructionalStaffFTEExt', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0980. TotalContractedInstrStaffFTE is a standard measurement of the portion of professional contracted instructional staff, expressed as a multiple of the standard work day, such as 7.7 FTEs.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ContractedInstructionalStaffFTEExt', @level2type=N'COLUMN', @level2name=N'TotalContractedInstrStaffFTE'
GO

-- Extended Properties [tx].[CourseSequenceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseSequenceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseSequenceDescriptor', @level2type=N'COLUMN', @level2name=N'CourseSequenceDescriptorId'
GO

-- Extended Properties [tx].[CourseTranscriptExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1081. CollegeCreditHours indicate the number of college hours a student earned for the completion of a dual credit course.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'CollegeCreditHours'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0948, C135. CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'CourseSequenceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1011. DualCreditIndicator indicates whether the student was eligible to receive both high school and college credit for a college course.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'DualCreditIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1058. ATCIndicator indicates a high school course for which college credit may be awarded by a post-secondary institution under the conditions of a local articulation agreement or the statewide Advanced Technical Credit (ATC) program agreement.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CourseTranscriptExtension', @level2type=N'COLUMN', @level2name=N'ATCIndicator'
GO

-- Extended Properties [tx].[CrisisEventDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor CrisisEvent is populated from Code Table C178.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CrisisEventDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CrisisEventDescriptor', @level2type=N'COLUMN', @level2name=N'CrisisEventDescriptorId'
GO

-- Extended Properties [tx].[CTEProgramReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the CTE program attendance of a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CTEServiceID refers to the approved career and technical education course that generates countact hours during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CTEServiceIdDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0950. EligibleDaysPresentV1 indicates the total number of days the student was eligible and present and enrolled in an approved career and technical course that generated one contact hour during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'EligibleDaysPresentV1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1696. RSEligibleDaysPresentV1 indicates the total number of days the student was eligible, remote synchronous present and enrolled in an approved career and technical course that generated one contact hour during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSEligibleDaysPresentV1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1702. RAEligibleDaysPresentV1 indicates the total number of days the student was eligible, remote asynchronous present and enrolled in an approved career and technical course that generated one contact hour during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RAEligibleDaysPresentV1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0951. EligibleDaysPresentV2 indicates the total number of days the student was eligible and present and enrolled in an approved career and technical course that generated two contact hours during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'EligibleDaysPresentV2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1697. RSEligibleDaysPresentV2 indicates the total number of days the student was eligible, remote synchronous present and enrolled in an approved career and technical course that generated two contact hours during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSEligibleDaysPresentV2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1703. RAEligibleDaysPresentV2 indicates the total number of days the student was eligible, remote asynchronous present and enrolled in an approved career and technical course that generated two contact hours during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RAEligibleDaysPresentV2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0952. EligibleDaysPresentV3 indicates the total number of days the student was eligible and present and enrolled in an approved career and technical course that generated three contact hours during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'EligibleDaysPresentV3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1698. RSEligibleDaysPresentV3 indicates the total number of days the student was eligible, remote synchronous present and enrolled in an approved career and technical course that generated three contact hours during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSEligibleDaysPresentV3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1704. RAEligibleDaysPresentV3 indicates the total number of days the student was eligible, remote asynchronous present and enrolled in an approved career and technical course that generated three contact hours during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RAEligibleDaysPresentV3'
GO

-- Extended Properties [tx].[CTEServiceIdDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEServiceIdDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'CTEServiceIdDescriptor', @level2type=N'COLUMN', @level2name=N'CTEServiceIdDescriptorId'
GO

-- Extended Properties [tx].[DisciplineActionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1008. ActualLengthOfDisciplinaryAssignment indicates the actual length in days of a student’s disciplinary assignment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'ActualLengthOfDisciplinaryAssignment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1007. OfficialLengthOfDisciplinaryAssignment indicates the official length in days of a student’s disciplinary assignment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'OfficialLengthOfDisciplinaryAssignment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1656. InconsistentCodeOfConduct indicates whether an out-of-school suspension, disciplinary alternative education program placement, or expulsion action is inconsistent with a local education agency’s student code of conduct.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'InconsistentCodeOfConduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1725. NonMembershipDisciplineRestraintIndicator indicates the discipline incident or restraint event being reported is for a special education student enrolled, not in membership.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'NonMembershipDisciplineRestraintIndicator'
GO

-- Extended Properties [tx].[DisciplineIncidentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1734. SafeSupportiveSchoolProgramTeamReview indicates whether the Safe and Supportive School Program (SSSP) team conducted a threat assessment related to a reported disciplinary incident.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'SafeSupportiveSchoolProgramTeamReview'
GO

-- Extended Properties [tx].[DyslexiaRiskDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor DyslexiaRisk is populated from Code Table C222.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DyslexiaRiskDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DyslexiaRiskDescriptor', @level2type=N'COLUMN', @level2name=N'DyslexiaRiskDescriptorId'
GO

-- Extended Properties [tx].[DyslexiaScreeningExceptionReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor DyslexiaScreeningExceptionReason is based on Code Table C231.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DyslexiaScreeningExceptionReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DyslexiaScreeningExceptionReasonDescriptor', @level2type=N'COLUMN', @level2name=N'DyslexiaScreeningExceptionReasonDescriptorId'
GO

-- Extended Properties [tx].[DyslexiaServicesDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor DyslexiaServices is based on code table C224.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DyslexiaServicesDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'DyslexiaServicesDescriptor', @level2type=N'COLUMN', @level2name=N'DyslexiaServicesDescriptorId'
GO

-- Extended Properties [tx].[EarlyReadingIndicatorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EarlyReadingIndicator is populated from Code Table C195.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EarlyReadingIndicatorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EarlyReadingIndicatorDescriptor', @level2type=N'COLUMN', @level2name=N'EarlyReadingIndicatorDescriptorId'
GO

-- Extended Properties [tx].[EconomicDisadvantageDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EconomicDisadvantage is populated from Code Table C054.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EconomicDisadvantageDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EconomicDisadvantageDescriptor', @level2type=N'COLUMN', @level2name=N'EconomicDisadvantageDescriptorId'
GO

-- Extended Properties [tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EconomicDisadvantageLastDateOfEnrollmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EconomicDisadvantageLastDateOfEnrollmentDescriptor', @level2type=N'COLUMN', @level2name=N'EconomicDisadvantageLastDateOfEnrollmentDescriptorId'
GO

-- Extended Properties [tx].[EligibilityDelayReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EligibilityDelayReason is based on Code Table DC164', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EligibilityDelayReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EligibilityDelayReasonDescriptor', @level2type=N'COLUMN', @level2name=N'EligibilityDelayReasonDescriptorId'
GO

-- Extended Properties [tx].[ELOActivityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ELOActivity is populated from code table C229.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ELOActivityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ELOActivityDescriptor', @level2type=N'COLUMN', @level2name=N'ELOActivityDescriptorId'
GO

-- Extended Properties [tx].[ELOTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ELOType is populated from code table C218.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ELOTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ELOTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ELOTypeDescriptorId'
GO

-- Extended Properties [tx].[EmergentBilingualIndicatorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EmergentBilingualIndicator is populated from code table C061/DC079.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EmergentBilingualIndicatorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EmergentBilingualIndicatorDescriptor', @level2type=N'COLUMN', @level2name=N'EmergentBilingualIndicatorDescriptorId'
GO

-- Extended Properties [tx].[EndorsementCompletedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EndorsementCompleted.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EndorsementCompletedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EndorsementCompletedDescriptor', @level2type=N'COLUMN', @level2name=N'EndorsementCompletedDescriptorId'
GO

-- Extended Properties [tx].[EndorsementPursuingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EndorsementPursuing.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EndorsementPursuingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EndorsementPursuingDescriptor', @level2type=N'COLUMN', @level2name=N'EndorsementPursuingDescriptorId'
GO

-- Extended Properties [tx].[EvaluationDelayReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EvaluationDelayReason is based on table DC164.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EvaluationDelayReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'EvaluationDelayReasonDescriptor', @level2type=N'COLUMN', @level2name=N'EvaluationDelayReasonDescriptorId'
GO

-- Extended Properties [tx].[ExtendedSchoolYearServicesAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the students who are served through the Extended School Year (ESY) Services Program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'InstructionalSetting1 identifies the setting used in providing extended year services component of special education. The InstructionalSetting reported is the EducationalEnvironment in which the student was served during the regular school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance', @level2type=N'COLUMN', @level2name=N'FirstInstructionalSettingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1013. TotalESYContactHoursInFirstInstructionalSetting indicates the total contact hours in a special education setting provided to the student through the extended school year services component of special education. InstructionalSetting1 reported is the EducationalEnvironment in which the student was served during the regular school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance', @level2type=N'COLUMN', @level2name=N'TotalESYContactHoursInFirstInstructionalSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'InstructionalSetting2 identifies the setting used in providing extended year services component of special education. The InstructionalSetting reported is the EducationalEnvironment in which the student was served during the regular school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance', @level2type=N'COLUMN', @level2name=N'SecondInstructionalSettingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1013. TotalESYContactHoursInSecondInstructionalSetting indicates the total contact hours in a special education setting provided to the student through the extended school year services component of special education. InstructionalSetting1 reported is the EducationalEnvironment in which the student was served during the regular school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ExtendedSchoolYearServicesAttendance', @level2type=N'COLUMN', @level2name=N'TotalESYContactHoursInSecondInstructionalSetting'
GO

-- Extended Properties [tx].[FinancialAidApplicationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor FinancialAidApplication is based on Code Table C230.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FinancialAidApplicationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FinancialAidApplicationDescriptor', @level2type=N'COLUMN', @level2name=N'FinancialAidApplicationDescriptorId'
GO

-- Extended Properties [tx].[FlexAttendanceProgramDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor FlexAttendanceProgram is based on code table C177.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexAttendanceProgramDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexAttendanceProgramDescriptor', @level2type=N'COLUMN', @level2name=N'FlexAttendanceProgramDescriptorId'
GO

-- Extended Properties [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the bilingual/ESL program attendance for the students who are served through a flexible attendance program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1651. BilingualESLFunding indicates the language program in which the student participates during the reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'BilingualESLFundingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1045. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendanceProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1050. FlexAttendExcessMinutesInInstrSetting indicates the total number of minutes the student was present in a designated instructional setting above the allowable 360-minute daily limit of combined career and technical education and special education and related services during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleBilingualESLProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexTotalEligBilingualESLDaysPresent'
GO

-- Extended Properties [tx].[FlexibleCTEProgramReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the CTE program attendance for students who are served through a flexible attendance program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1045. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendanceProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1053. FlexAttendTotalCareerTechMinutesPresent indicates the total number of minutes the student was present in an approved career and technical education course(s) that the student was eligible for and enrolled in during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleCTEProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendTotalCareerTechMinutesPresent'
GO

-- Extended Properties [tx].[FlexibleRegularProgramReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the attendance for students who are served through a flexible attendance program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1045. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendanceProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1046. FlexAttendTotalEligibleMinutesPresent indicates the total number of minutes the student was present and eligible for Foundation School Program funding during a particular reporting period. Eligiblity for this program is determined by September 1 age and grade level.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendTotalEligibleMinutesPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1047. FlexAttendTotalIneligibleMinutesPresent indicates the total number of minutes the student was present and ineligible for Foundation School Program funding during a particular reporting period. Ineligiblity for this program is determined by September 1 age and grade level.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendTotalIneligibleMinutesPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1048. FlexTotalEligPregRelSvcsDaysPresent indicates the total number of school days a female student was eligible for Compensatory Education Home Instruction (CEHI) services and/or pregnancy related services during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexTotalEligPregRelSvcsDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1049. FlexTotalEligSpEdMainstreamDaysPresent indicates the total number of school days a student with a special education individualized education program (IEP) that provided for the mainstream instructional arrangement/setting was eligible for that instructional arrangement/setting during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexTotalEligSpEdMainstreamDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1653. FlexTotalEligResidentialFacilityDaysPresent indicates the total number of days the student was present and eligible for LEA services while living in a Residential Facility in a flexible attendance program during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleRegularProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexTotalEligResidentialFacilityDaysPresent'
GO

-- Extended Properties [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the special education program attendance for students who are served through a flexible attendance program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1045. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendanceProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0173. InstructionalSetting identifies the setting used in providing instruction to students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'InstructionalSettingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1051. FlexAttendExcessMinutesInInstrSetting indicates the total number of minutes the student was present in a designated instructional setting above the allowable 360-minute daily limit of combined career and technical education and special education and related services during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendDaysEligibleInInstrSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1052. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FlexibleSpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'FlexAttendExcessMinutesInInstrSetting'
GO

-- Extended Properties [tx].[FosterCareTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor FosterCareType is populated from Code Table C196.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FosterCareTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FosterCareTypeDescriptor', @level2type=N'COLUMN', @level2name=N'FosterCareTypeDescriptorId'
GO

-- Extended Properties [tx].[FrequencyOfServicesDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor FrequencyOfServices identifies the frequency with which a student receives services. (DC157)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FrequencyOfServicesDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FrequencyOfServicesDescriptor', @level2type=N'COLUMN', @level2name=N'FrequencyOfServicesDescriptorId'
GO

-- Extended Properties [tx].[FunctionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor Function is populated from Code Table C146.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FunctionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FunctionDescriptor', @level2type=N'COLUMN', @level2name=N'FunctionDescriptorId'
GO

-- Extended Properties [tx].[FundDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor Fund is populated from Code Table C145.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FundDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'FundDescriptor', @level2type=N'COLUMN', @level2name=N'FundDescriptorId'
GO

-- Extended Properties [tx].[GenerationCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor GenerationCode is based on Code Tables C012 and DC148', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'GenerationCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'GenerationCodeDescriptor', @level2type=N'COLUMN', @level2name=N'GenerationCodeDescriptorId'
GO

-- Extended Properties [tx].[GiftedTalentedProgramDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor GiftedTalentedProgram is populated from code table C223', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'GiftedTalentedProgramDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'GiftedTalentedProgramDescriptor', @level2type=N'COLUMN', @level2name=N'GiftedTalentedProgramDescriptorId'
GO

-- Extended Properties [tx].[HearingAmplifAvgDailyUseDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor HearingAmplifAvgDailyUse identifies the average amount of time the hearing amplification device is used in a day based on the HEARING-AMPLIFICATION-ACCESS reported. (DC161)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HearingAmplifAvgDailyUseDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HearingAmplifAvgDailyUseDescriptor', @level2type=N'COLUMN', @level2name=N'HearingAmplifAvgDailyUseDescriptorId'
GO

-- Extended Properties [tx].[HearingAmplificationAccessDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor HearingAmplificationAccess identifies whether the student has access to the hearing amplification device for the full-day or partial day for each HEARING-AMPLIFICATION-TYPE reported. (DC160)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HearingAmplificationAccessDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HearingAmplificationAccessDescriptor', @level2type=N'COLUMN', @level2name=N'HearingAmplificationAccessDescriptorId'
GO

-- Extended Properties [tx].[HearingAmplificationTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor HearingAmplificationType identifies the type of hearing amplification device used by the student. (DC159)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HearingAmplificationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HearingAmplificationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'HearingAmplificationTypeDescriptorId'
GO

-- Extended Properties [tx].[HomelessStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor HomelessStatus is populated from Code Table C189', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HomelessStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HomelessStatusDescriptor', @level2type=N'COLUMN', @level2name=N'HomelessStatusDescriptorId'
GO

-- Extended Properties [tx].[HomelessStatusPriorYearDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HomelessStatusPriorYearDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HomelessStatusPriorYearDescriptor', @level2type=N'COLUMN', @level2name=N'HomelessStatusPriorYearDescriptorId'
GO

-- Extended Properties [tx].[HoursSpentReceivingServicesDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor HoursSpentReceivingServices identifies the amount of time in which the student receives services. (DC158)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HoursSpentReceivingServicesDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'HoursSpentReceivingServicesDescriptor', @level2type=N'COLUMN', @level2name=N'HoursSpentReceivingServicesDescriptorId'
GO

-- Extended Properties [tx].[IBCVendorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor IBCVendorCode identifies the organization or company that offered the service.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'IBCVendorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'IBCVendorDescriptor', @level2type=N'COLUMN', @level2name=N'IBCVendorDescriptorId'
GO

-- Extended Properties [tx].[InstructionalSettingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor InstructionalSetting is based on code table C035.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'InstructionalSettingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'InstructionalSettingDescriptor', @level2type=N'COLUMN', @level2name=N'InstructionalSettingDescriptorId'
GO

-- Extended Properties [tx].[LangAcqServicesProvidedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor LangAcqServicesProvided indicates the specific language acquisition services provided to the student. (DC156)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LangAcqServicesProvidedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LangAcqServicesProvidedDescriptor', @level2type=N'COLUMN', @level2name=N'LangAcqServicesProvidedDescriptorId'
GO

-- Extended Properties [tx].[LocalEducationAgencyChildCareOperationNumber] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1726. ChildCareOperationNumber identifies the operation number of the childcare facility which participates in a partnership with a Local Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyChildCareOperationNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1726. ChildCareOperationNumber identifies the operation number of the childcare facility which participates in a partnership with a Local Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyChildCareOperationNumber', @level2type=N'COLUMN', @level2name=N'ChildCareOperationNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyChildCareOperationNumber', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO

-- Extended Properties [tx].[LocalEducationAgencyExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyExtension', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1556. TotalNumSchoolBoardRequests indicates the total number of requests submitted outside of a school board meeting by a member of the district''s board of trustees (school board) for information, documents, and records as specified in TEC SECTION 11.1512.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyExtension', @level2type=N'COLUMN', @level2name=N'TotalNumSchoolBoardRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1557. TotalCostSchoolBoardRequests indicates the cost to the district with fulfilling requests submitted outside of a school board meeting by a member of the district''s board of trustees (school board) for information, documents, and records as specified in TEC SECTION 11.1512.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyExtension', @level2type=N'COLUMN', @level2name=N'TotalCostSchoolBoardRequests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1583. FamilyEngagementPlanLink indicates the internet website link for LEAs to provide their Family Engagement Plan.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyExtension', @level2type=N'COLUMN', @level2name=N'FamilyEngagementPlanLink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1625, C217. ArmedServicesVocAptBattery indicates whether a school district or open-enrollment charter school provides students in grades 10 through 12 an opportunity to take the Armed Services Vocational Aptitude Battery (ASVAB) test or a comparable substitute.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyExtension', @level2type=N'COLUMN', @level2name=N'ArmedServicesVocAptBatteryDescriptorId'
GO

-- Extended Properties [tx].[LocalEducationAgencyGiftedTalentedProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1645, C223. GiftedTalentedProgram indicates a gifted and talented program the LEA has established that is consistent with the state plan developed under TEC 29.123.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyGiftedTalentedProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1645, C223. GiftedTalentedProgram indicates a gifted and talented program the LEA has established that is consistent with the state plan developed under TEC 29.123.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyGiftedTalentedProgram', @level2type=N'COLUMN', @level2name=N'GiftedTalentedProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyGiftedTalentedProgram', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO

-- Extended Properties [tx].[LocalEducationAgencyProgramOfStudy] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1643, C220. ProgramOfStudy indicates a program of study the LEA offers. A program of study is a comprehensive, structured approach for delivering academic and career and technical education to prepare a student for postsecondary education and career success.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyProgramOfStudy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyProgramOfStudy', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1643, C220. ProgramOfStudy indicates a program of study the LEA offers. A program of study is a comprehensive, structured approach for delivering academic and career and technical education to prepare a student for postsecondary education and career success.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyProgramOfStudy', @level2type=N'COLUMN', @level2name=N'ProgramOfStudyDescriptorId'
GO

-- Extended Properties [tx].[MilitaryConnectedStudentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor MilitaryConnectedStudent is populated from Code Table C197.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'MilitaryConnectedStudentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'MilitaryConnectedStudentDescriptor', @level2type=N'COLUMN', @level2name=N'MilitaryConnectedStudentDescriptorId'
GO

-- Extended Properties [tx].[NonCampusBasedInstructionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor NonCampusBasedInstruction indicates that a course was offered for class credit or student achievement, but 1) was not taught by a school district/charter school employee or a contracted teacher , or 2) was taught by a school district/charter school employee or a contracted teacher at a facility other than the campus where the student is enrolled. Examples include but are not limited to college based instruction, non-district teacher, non-campus teacher, internet based instruction, electronic Course Pilot (eCP), and Texas Virtual School Network (TxVSN). (C182)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'NonCampusBasedInstructionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'NonCampusBasedInstructionDescriptor', @level2type=N'COLUMN', @level2name=N'NonCampusBasedInstructionDescriptorId'
GO

-- Extended Properties [tx].[NSLPTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor NSLPType is populated from code table C212.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'NSLPTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'NSLPTypeDescriptor', @level2type=N'COLUMN', @level2name=N'NSLPTypeDescriptorId'
GO

-- Extended Properties [tx].[ObjectDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor Object is populated from Code Table C159.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ObjectDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ObjectDescriptor', @level2type=N'COLUMN', @level2name=N'ObjectDescriptorId'
GO

-- Extended Properties [tx].[ParentalPermissionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ParentalPermission indicates whether the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.) (C093)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ParentalPermissionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ParentalPermissionDescriptor', @level2type=N'COLUMN', @level2name=N'ParentalPermissionDescriptorId'
GO

-- Extended Properties [tx].[ParentalPermissionLastDateOfEnrollmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ParentalPermissionLastDateOfEnrollmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ParentalPermissionLastDateOfEnrollmentDescriptor', @level2type=N'COLUMN', @level2name=N'ParentalPermissionLastDateOfEnrollmentDescriptorId'
GO

-- Extended Properties [tx].[ParentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ParentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ParentExtension', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ParentExtension', @level2type=N'COLUMN', @level2name=N'GenerationCodeDescriptorId'
GO

-- Extended Properties [tx].[PayrollActivityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PayrollActivity is populated from Code Table C018.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollActivityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollActivityDescriptor', @level2type=N'COLUMN', @level2name=N'PayrollActivityDescriptorId'
GO

-- Extended Properties [tx].[PayrollExt] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PayrollExtension Domain Entity represents the financial transactions for employee compensation.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 4 for the 1993-94 fiscal year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0317. Function identifies a general operational area and groups together related activities.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'FunctionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0316. Fund identifies the fund group and specific fund for payroll data.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'FundDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0318. Object identifies an account, a transaction, or a source of funds.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'ObjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'Organization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0424. PayrollActivity indicates the types of duty for which a staff member receives salary, salary supplements, or bonuses.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'PayrollActivityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'ProgramIntentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0425. PayrollAmount indicates the dollar value that is paid to a staff member for a given payroll activity per year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PayrollExt', @level2type=N'COLUMN', @level2name=N'PayrollAmount'
GO

-- Extended Properties [tx].[PKCurriculaDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PKCurricula indicates curricula used in the district’s prekindergarten program section TEC 29.1532(c)(6). (C206)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKCurriculaDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKCurriculaDescriptor', @level2type=N'COLUMN', @level2name=N'PKCurriculaDescriptorId'
GO

-- Extended Properties [tx].[PKFundingSourceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PKFundingSource is populated from Code Table C186.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKFundingSourceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKFundingSourceDescriptor', @level2type=N'COLUMN', @level2name=N'PKFundingSourceDescriptorId'
GO

-- Extended Properties [tx].[PKProgramEvaluationTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ProgramEvaluationType indicates for each High-Quality PK course/section, the type of program evaluation tool that is used. C216', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKProgramEvaluationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKProgramEvaluationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'PKProgramEvaluationTypeDescriptorId'
GO

-- Extended Properties [tx].[PKProgramTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PKProgramType is populated from Code Table C185.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'PKProgramTypeDescriptorId'
GO

-- Extended Properties [tx].[PKSchoolTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PKSchoolType is populated from Code Table DC152.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKSchoolTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKSchoolTypeDescriptor', @level2type=N'COLUMN', @level2name=N'PKSchoolTypeDescriptorId'
GO

-- Extended Properties [tx].[PKStudentInstructionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor StudentInstruction DC153.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKStudentInstructionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKStudentInstructionDescriptor', @level2type=N'COLUMN', @level2name=N'PKStudentInstructionDescriptorId'
GO

-- Extended Properties [tx].[PKTeacherRequirementDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PKTeacherRequirement is populated from code table C207.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKTeacherRequirementDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PKTeacherRequirementDescriptor', @level2type=N'COLUMN', @level2name=N'PKTeacherRequirementDescriptorId'
GO

-- Extended Properties [tx].[PostSecondaryCertificationLicensureDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PostSecondaryCertificationLicensureDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PostSecondaryCertificationLicensureDescriptor', @level2type=N'COLUMN', @level2name=N'PostSecondaryCertificationLicensureDescriptorId'
GO

-- Extended Properties [tx].[PostSecondaryCertLicensureResultDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PostSecondaryCertLicensureResult is based on Code Table C232.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PostSecondaryCertLicensureResultDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PostSecondaryCertLicensureResultDescriptor', @level2type=N'COLUMN', @level2name=N'PostSecondaryCertLicensureResultDescriptorId'
GO

-- Extended Properties [tx].[PPCDServiceLocationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PPCDServiceLocation indicates whether or not the Preschool Program for Children with Disabilities (PPCD) student received their special education services in a regular early childhood program, which is defined as a program that is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)). (C184)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PPCDServiceLocationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PPCDServiceLocationDescriptor', @level2type=N'COLUMN', @level2name=N'PPCDServiceLocationDescriptorId'
GO

-- Extended Properties [tx].[PreferredHomeCommunicationMethodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor PreferredHomeCommunicationMethod identifies the preferred unique communication method used by the child at home. (DC155)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PreferredHomeCommunicationMethodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'PreferredHomeCommunicationMethodDescriptor', @level2type=N'COLUMN', @level2name=N'PreferredHomeCommunicationMethodDescriptorId'
GO

-- Extended Properties [tx].[ProgramIntentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ProgramIntent is populated from Code Table C147.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ProgramIntentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ProgramIntentDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramIntentDescriptorId'
GO

-- Extended Properties [tx].[ProgramOfStudyDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ProgramOfStudy is populated from code table C220.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ProgramOfStudyDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ProgramOfStudyDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramOfStudyDescriptorId'
GO

-- Extended Properties [tx].[RegionalDaySchoolProgramForDeafDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor RegionalDaySchoolProgramForDeaf is based on code table C067.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RegionalDaySchoolProgramForDeafDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RegionalDaySchoolProgramForDeafDescriptor', @level2type=N'COLUMN', @level2name=N'RegionalDaySchoolProgramForDeafDescriptorId'
GO

-- Extended Properties [tx].[ReportAssessmentTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ReportAssessmentType is populated from code table DC123.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ReportAssessmentTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ReportAssessmentTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ReportAssessmentTypeDescriptorId'
GO

-- Extended Properties [tx].[ReportingPeriodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ReportingPeriod is based on code table C130.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ReportingPeriodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ReportingPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO

-- Extended Properties [tx].[RestraintEventExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintEventExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'RestraintEventIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1516, C194. RestraintStaffType indicates the kind of school staff person that performed a student restraint.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'RestraintStaffTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1725. NonMembershipDisciplineRestraintIndicator indicates the discipline incident or restraint event being reported is for a special education student enrolled, not in membership.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintEventExtension', @level2type=N'COLUMN', @level2name=N'NonMembershipDisciplineRestraintIndicator'
GO

-- Extended Properties [tx].[RestraintStaffTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor RestraintStaffType indicates the kind of school staff person that performed a student restraint.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintStaffTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RestraintStaffTypeDescriptor', @level2type=N'COLUMN', @level2name=N'RestraintStaffTypeDescriptorId'
GO

-- Extended Properties [tx].[RoleIdDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor RoleId is based on code table C021.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RoleIdDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'RoleIdDescriptor', @level2type=N'COLUMN', @level2name=N'RoleIdDescriptorId'
GO

-- Extended Properties [tx].[SchoolCampusEnrollmentTypeSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CampusEnrollmentType with effective dates', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCampusEnrollmentTypeSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the CampusEnrollmentType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCampusEnrollmentTypeSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCampusEnrollmentTypeSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1641, C219. CampusEnrollmentType specifies the method by which the campus draws student enrollment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCampusEnrollmentTypeSet', @level2type=N'COLUMN', @level2name=N'CampusEnrollmentTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the CampusEnrollmentType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCampusEnrollmentTypeSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[SchoolCharterWaitlistSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CharterWaitlist with effective dates', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCharterWaitlistSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the CharterWaitlistSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCharterWaitlistSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1676. CharterAdmissionWaitlist indicates whether the charter school campus uses a waitlist for admission.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCharterWaitlistSet', @level2type=N'COLUMN', @level2name=N'CharterAdmissionWaitlist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1675. CharterEducationalEnrollmentCapacity indicates the number of students to which the charter school’s campus is able to provide instruction without exceeding staffing and facility limitations and the approved charter holder''s maximum enrollment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCharterWaitlistSet', @level2type=N'COLUMN', @level2name=N'CharterEducationalEnrollmentCapacity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1674. NumberCharterStudentsEnrolled indicates the number of students enrolled at a charter school’s campus as of the last Friday in September.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCharterWaitlistSet', @level2type=N'COLUMN', @level2name=N'NumberCharterStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCharterWaitlistSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the CharterWaitlistSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolCharterWaitlistSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[SchoolELOSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ELOSet captures data (with effective dates) for school participation in expanded learning opportunities.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the ELOSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1614, C218. ELOType indicates the type of expanded learning opportunity (ELO) program offered at the campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSet', @level2type=N'COLUMN', @level2name=N'ELOTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the ELOSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[SchoolELOSetELOActivitySet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of SchoolELOActivity. For each expanded learning opportunity offered by a school, more than one ELO activity can be reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSetELOActivitySet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the ELOSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSetELOActivitySet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1719, C229. ELOActivity indicates the specific Expanded Learning Opportunity (ELO) activity offered at the campus', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSetELOActivitySet', @level2type=N'COLUMN', @level2name=N'ELOActivityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1614, C218. ELOType indicates the type of expanded learning opportunity (ELO) program offered at the campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSetELOActivitySet', @level2type=N'COLUMN', @level2name=N'ELOTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSetELOActivitySet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1720. ELODaysScheduledPerYear indicates the number of days the Expanded Learning Opportunity (ELO) activity is offered during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSetELOActivitySet', @level2type=N'COLUMN', @level2name=N'ELODaysScheduledPerYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1621. ELOMinutesScheduledPerDay indicates the number of minutes scheduled each day for a given ELOActivity.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolELOSetELOActivitySet', @level2type=N'COLUMN', @level2name=N'ELOMinutesScheduledPerDay'
GO

-- Extended Properties [tx].[SchoolExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1646. PKFullDayWaiver indicates whether the campus has received an exemption from offering a full-day prekindergarten program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'PKFullDayWaiver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1671. AdditionalDaysProgram indicates whether the campus offers an Additional Days School Year program to any students in prekindergarten through fifth grades as described in TEC Sec. 48.0051.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'AdditionalDaysProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1727. NumberOfBullyingIncidents indicates the number of reported incidents of bullying at each campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'NumberOfBullyingIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1727. NumberOfCyberbullyingIncidents indicates the number of reported incidents of cyberbullying at each campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'NumberOfCyberbullyingIncidents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1613. ExpandedLearningOpportunity indicates if the campus offers any expanded learning opportunity (ELO) as listed in TEC 33.252.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'ExpandedLearningOpportunity'
GO

-- Extended Properties [tx].[SchoolNSLPTypeSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NSLPType with effective dates', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolNSLPTypeSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the NSLPType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolNSLPTypeSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolNSLPTypeSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1591, C212. NSLPType indicates a campus''s  National School Lunch Program (NSLP) participation status.  The NSLP provides reimbursement to schools for free or reduced-price meals based on student eligibility.  Options for claiming reimbursement under the NSLP include:  eligibility determined at the individual student/family level (participation in NSLP without using any Provision or the Community Eligibility Program) or at the campus/community level (Provision 2 or Community Eligibility Program).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolNSLPTypeSet', @level2type=N'COLUMN', @level2name=N'NSLPTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the NSLPType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SchoolNSLPTypeSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[SectionSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Extensions to Section with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0747, C030. PopulationServed identifies the student population for which a service has been designed or is intended. It does not necessarily identify the program eligibility of the students who receive the service.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SPEDStudentAgeRange identifies the age range of Special Education students that teaching and paraprofessional staff provide services to.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'SPEDStudentAgeRangeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0948, C135. CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'CourseSequenceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1072, C182. NonCampusBasedInstruction indicates that a course was offered for class credit or student achievement, but 1) was not taught by a school district/charter school employee or a contracted teacher , or 2) was taught by a school district/charter school employee or a contracted teacher at a facility other than the campus where the student is enrolled. Examples include but are not limited to college based instruction, non-district teacher, non-campus teacher, internet based instruction, electronic Course Pilot (eCP), and Texas Virtual School Network (TxVSN).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'NonCampusBasedInstructionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1579, C206. PKCurricula indicates curricula used in the district’s prekindergarten program section TEC 29.1532(c)(6).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'PKCurriculaDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1580. HighQualityPKProgram indicates campus/course/section participation in the High Quality Pre-K Program consistent with requirements in TEC 29.167-29.171.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'HighQualityPKProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1558, DC153. StudentInstruction indicates the PK student type of instruction.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'PKStudentInstructionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1555, DC152. PKSchoolType indicates the PK program that is offered at the campus/course/section level.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'PKSchoolTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1626, C216. ProgramEvaluationType indicates for each High-Quality PK course/section, the type of program evaluation tool that is used.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'PKProgramEvaluationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1055. ClassType identifies the type of class providing instruction to students in particular class settings.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'ClassTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CTEHours indicate the number of contact hours assigned to a particular section of a course.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'CTEHours'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SectionSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[ServiceIdDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ServiceId is populated from code table C022.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ServiceIdDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ServiceIdDescriptor', @level2type=N'COLUMN', @level2name=N'ServiceIdDescriptorId'
GO

-- Extended Properties [tx].[SharedServiceArrangementExt] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The SharedServiceArrangementExtension Domain Entity represents the sum of the financial transactions to date for shared service arrangements.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementExt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementExt', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 4 for the 2013-14 fiscal year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementExt', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0316. Fund identifies the fund group and specific fund (when applicable) for actual financial data.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementExt', @level2type=N'COLUMN', @level2name=N'FundDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0981. SSAMemberDistrictID indicates the county-district number of the school district (as registered with the Texas Education Agency) which is a member district in the shared services arrangement.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementExt', @level2type=N'COLUMN', @level2name=N'SSAMemberDistrictID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0776. SSAType indicates the type of program or service provided by a shared services arrangement.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementExt', @level2type=N'COLUMN', @level2name=N'SSATypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0774. ActualAmount indicates the dollar value associated with actual financial account information.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementExt', @level2type=N'COLUMN', @level2name=N'ActualAmount'
GO

-- Extended Properties [tx].[SharedServiceArrangementStaffDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor SharedServiceArrangementStaff is populated from code table C169', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementStaffDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SharedServiceArrangementStaffDescriptor', @level2type=N'COLUMN', @level2name=N'SharedServiceArrangementStaffDescriptorId'
GO

-- Extended Properties [tx].[SpecialEducationProgramReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the special education program attendance of a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0173. InstructionalSetting identifies the setting used in providing instruction to students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'InstructionalSettingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0833. RegionalDaySchoolProgramForDeaf indicates the student is receiving instructional servies from the regional day school program for the deaf.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RegionalDaySchoolProgramForDeafDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0944. EligibleDaysPresentInInstrSetting indicates the number of days the student was eligible and present in a designated instructional setting during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'EligibleDaysPresentInInstrSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1690. RSEligibleDaysPresentInInstrSetting indicates the number of days the student was eligible and remote synchronous present in a designated instructional setting during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSEligibleDaysPresentInInstrSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1691. RAEligibleDaysPresentInInstrSetting indicates the number of days the student was eligible and remote asynchronous present in a designated instructional setting during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RAEligibleDaysPresentInInstrSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0945. ExcessHoursInInstructionalSetting indicates the number of hours above the allowable six hours per day of combined career and technical education and special education and related services in a designated instructional setting during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ExcessHoursInInstructionalSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1694. RSExcessHoursInInstructionalSetting indicates the number of hours above the allowable six hours per day of remote synchronous instruction combined career and technical education and special education and related services in a designed instructional setting during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSExcessHoursInInstructionalSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1695. RAExcessHoursInInstructionalSetting indicates the number of hours above the allowable six hours per day of remote asynchronous instruction combined career and technical education and special education and related services in a designed instructional setting during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RAExcessHoursInInstructionalSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1527. LEAOfRDSPDService indicates the RDSPD Fiscal Agent district that provides the RDSPD service to a particular RDSPD student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'LEAOfRDSPDService'
GO

-- Extended Properties [tx].[SpecialProgramsReportingPeriodAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This extended entity represents the recording of a student’s special programs reporting period attendance.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'GradeLevel indicates the current grade level of the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ReportingPeriod indicates the period for which the attendance data are being reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'ReportingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'NumberDaysTaught'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0939. TotalEligPregRelSvcsDaysPresent indicates the total number of days a female student was present at school or served through Compensatory Education Home Instruction (CEHI) and an eligible recipient of pregnancy related services during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'TotalEligPregRelSvcsDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1686. RSTotalEligPregRelSvcsDaysPresent indicates the total number of days a female student was remote synchronous present or served through Compensatory Education Home Instruction (CEHI) and an eligible recipient of pregnancy related services during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSTotalEligPregRelSvcsDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1687. RATotalEligPregRelSvcsDaysPresent indicates the total number of days a female student was remote asynchronous present or served through Compensatory Education Home Instruction (CEHI) and an eligible recipient of pregnancy related services during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RATotalEligPregRelSvcsDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0940. TotalEligSpEdMainstreamDaysPresent indicates the total number of days a student with a special education individualized education program which provided for the mainstream instructional arrangement/setting was present during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'TotalEligSpEdMainstreamDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1688. RSTotalEligSpEdMainstreamDaysPresent indicates the total number of days a student with special education individualized education program which provided for the mainstream instructional arrangement/setting was remote synchronous present during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSTotalEligSpEdMainstreamDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1689. SpecialProgramsReportingPeriodAttendance indicates the total number of days a student with special education individualized education program which provided for the mainstream instructional arrangement/setting was remote asynchronous present during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RATotalEligSpEdMainstreamDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1652. TotalEligResidentialFacilityDaysPresent indicates the total number of days the student was present and eligible for LEA services while living in a Residential Facility during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'TotalEligResidentialFacilityDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1684. TotalEligResidentialFacilityDaysPresent indicates the total number of days the student was present and eligible for LEA services while living in a Residential Facility during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RSTotalEligResidentialFacilityDaysPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1685. RATotalEligResidentialFacilityDaysPresent indicates the total number of days the student was remote asynchronous present and eligible for LEA services in a Residential Facility during a particular reporting period.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SpecialProgramsReportingPeriodAttendance', @level2type=N'COLUMN', @level2name=N'RATotalEligResidentialFacilityDaysPresent'
GO

-- Extended Properties [tx].[SPEDStudentAgeRangeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SPEDStudentAgeRange identifies the age range of Special Education students that teaching and paraprofessional staff provide services to.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SPEDStudentAgeRangeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SPEDStudentAgeRangeDescriptor', @level2type=N'COLUMN', @level2name=N'SPEDStudentAgeRangeDescriptorId'
GO

-- Extended Properties [tx].[SSAOrgAssociationExt] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The SSAOrgAssociationExtension Domain Entity identifies the ESC/LEA fiscal agents and the ESC and/or LEA member(s) for each type of shared services arrangement (SSA) that exists among two or more ESCs and or LEAs.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SSAOrgAssociationExt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SSAOrgAssociationExt', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0777. FiscalAgentDistrictID is the county-district number of the shared services arrangement fiscal agent registered with the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SSAOrgAssociationExt', @level2type=N'COLUMN', @level2name=N'FiscalAgentDistrictID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0776. SSAType indicates the type of program or service provided by the shared service arrangement.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SSAOrgAssociationExt', @level2type=N'COLUMN', @level2name=N'SSATypeDescriptorId'
GO

-- Extended Properties [tx].[SSATypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor SSAType is populated from Code Table C049.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SSATypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'SSATypeDescriptor', @level2type=N'COLUMN', @level2name=N'SSATypeDescriptorId'
GO

-- Extended Properties [tx].[StaffEducationOrganizationAssignmentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1015, C169. SharedServiceArrangementStaff indicates whether the education service center staff responsibility being reported is part of a shared services arrangement for which the education service center is the fiscal agent.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'SharedServiceArrangementStaffDescriptorId'
GO

-- Extended Properties [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the StaffServiceSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'StaffServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0724. StaffService refers to the services supplied by staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'StaffServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SPEDStudentAgeRange identifies the age range of Special Education students that teaching and paraprofessional staff provide services to.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'SPEDStudentAgeRangeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0747, C030. identifies the student population for which a student has been designed or is intended. It does not necessarily identify the program eligibility of the students who receive the service.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1057. MonthlyMinutes is the total number of minutes devoted to a particular service in a standard month. A standard month is considered to be the four weeks in October including the PEIMS Fall snapshot date (last Friday in October).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'MonthlyMinutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the StaffServiceSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationStaffServiceSet', @level2type=N'COLUMN', @level2name=N'StaffServiceEndDate'
GO

-- Extended Properties [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AuxiliaryRoleId with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1594, C213. AuxiliaryRoleId identifies the capacity in which a non-exempt auxiliary employee serves.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet', @level2type=N'COLUMN', @level2name=N'AuxiliaryRoleIdDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the AuxiliaryRoleId', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the AuxiliaryRoleId', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationAuxiliaryRoleIdSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StaffEducationOrganizationEmploymentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0760. PercentDayEmployed is that percentage of a standard district work day for which the employee is hired to work. For an employee on contract, the percentage may be determined directly from the contract: full-time = ''100''; half-time = ''50''; and so on. For an employee who is not on contract, the percentage may be determined as follows. Example: The standard work day for the district is 7 hours. An employee is hired to work for 4 hours a day. This data element is coded as ''57'' for this employee because 4/7 = .571, which is rounded down.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'PercentDayEmployed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0160. NumberDaysEmployed indicates the actual number of at-work days within the school year that a person is scheduled to work in the district. This number does not include holidays, weekends, and any other days the employee is not scheduled to work.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberDaysEmployed'
GO

-- Extended Properties [tx].[StaffExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1721. CreditableYearOfService indicates a teacher (ROLE-ID 087) who currently qualifies for the TIA allotment or has been submitted by the LEA for a new or change of designation, and has been employed by the LEA and compensated or will be compensated by the LEA for a creditable year of service. (§153.1021)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'CreditableYearOfService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0161. YearsExperienceInDistrict indicates the number of completed years that a person has been employed in any professional position in the current district or education service center, whether or not there has been any interruption in service.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'YearsExperienceInDistrict'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0505. StaffID is the person''s Social Security number.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'StaffID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1581, C207. Each teacher of record for a prekindergarten program class serving eligible four-year-old students must be certified under Subchapter B, Chapter 21; and have one of the additional qualifications found in the C207 code table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'PKTeacherRequirementDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0130. TotalYearsProfExperience indicates the number of verifiable years of creditable experience as specified in 19 TAC, Chapter 153.1021.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'TotalYearsProfExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1377. TotalYearsPriorTeachingExperience indicates the total number of years that an individual has previously held a teaching position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'TotalYearsPriorTeachingExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'GenerationCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1673. AdditionalDaysProgramTeacher indicates if a teacher is teaching students eligible for the additional days school year program as described in TEC Sec. §48.0051.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'AdditionalDaysProgramTeacher'
GO

-- Extended Properties [tx].[StaffParaprofessionalCertificationSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParaprofessionalCertification with effective dates', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffParaprofessionalCertificationSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the StaffTypeSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffParaprofessionalCertificationSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffParaprofessionalCertificationSet', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1670. ParaprofessionalCertification indicates whether a paraprofessional staff person is certified.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffParaprofessionalCertificationSet', @level2type=N'COLUMN', @level2name=N'ParaprofessionalCertification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the StaffTypeSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffParaprofessionalCertificationSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StaffSectionAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0170. NumberOfStudentInClass indicates the number of students in membership in the class.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberOfStudentInClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1057. is the total number of minutes devoted to a particular service in a standard month. A standard month is considered to be the four weeks in October including the PEIMS Fall snapshot date (last Friday in October).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'MonthlyMinutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1604. NumberDaysTaughtWeek1 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberDaysTaughtWeek1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1605. NumberDaysTaughtWeek2 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberDaysTaughtWeek2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1606. NumberDaysTaughtWeek3 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberDaysTaughtWeek3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1607. NumberDaysTaughtWeek4 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberDaysTaughtWeek4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1608. NumberMinutesTaughtWeek1 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberMinutesTaughtWeek1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1609. NumberMinutesTaughtWeek2 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberMinutesTaughtWeek2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1610. NumberMinutesTaughtWeek3 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberMinutesTaughtWeek3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1611. NumberMinutesTaughtWeek4 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'NumberMinutesTaughtWeek4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1015, C169. SharedServiceArrangementStaff indicates whether the education service center staff responsibility being reported is part of a shared services arrangement for which the education service center is the fiscalagent.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SharedServiceArrangementStaffDescriptorId'
GO

-- Extended Properties [tx].[StaffServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StaffService refers to the services supplied by staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffServiceDescriptor', @level2type=N'COLUMN', @level2name=N'StaffServiceDescriptorId'
GO

-- Extended Properties [tx].[StaffTeacherIncentiveAllotmentDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1722, DC165. TeacherIncentiveAllotmentDesignationCode indicates a teacher (ROLE-ID 087) is an Active National Board Certified Teacher, holds a current designation (Recognized, Exemplary, or Master) and/or has been submitted by an LEA for a new or change of designation in the Teacher Incentive Allotment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTeacherIncentiveAllotmentDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTeacherIncentiveAllotmentDesignation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1722, DC165. TeacherIncentiveAllotmentDesignationCode indicates a teacher (ROLE-ID 087) is an Active National Board Certified Teacher, holds a current designation (Recognized, Exemplary, or Master) and/or has been submitted by an LEA for a new or change of designation in the Teacher Incentive Allotment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTeacherIncentiveAllotmentDesignation', @level2type=N'COLUMN', @level2name=N'TeacherIncentiveAllotmentDesignationDescriptorId'
GO

-- Extended Properties [tx].[StaffTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor StaffType is populated from code table C181', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTypeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffTypeDescriptorId'
GO

-- Extended Properties [tx].[StaffTypeSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StaffType with effective dates', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTypeSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the StaffTypeSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTypeSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTypeSet', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1073, C181. StaffType indicates whether the staff person is on the district payroll or is a contracted professional staff person (instructional and non-instructional)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTypeSet', @level2type=N'COLUMN', @level2name=N'StaffTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the StaffTypeSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StaffTypeSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentAcademicRecordDiplomaExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Extension to diploma.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'DiplomaAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'DiplomaTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1562. IndividualGraduationCommitteeGraduateIndicator Indicates whether a student for whom an IGC was established has graduated based on an IGC decision.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'IndividualGraduationCommitteeGraduateIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1589. MilitaryEnlistmentIndicator indicates that a student leaver enlisted in the United States Armed Forces.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'MilitaryEnlistmentIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1542. FHSPDistingLevelGraduate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaExtension', @level2type=N'COLUMN', @level2name=N'FHSPDistingLevelGraduate'
GO

-- Extended Properties [tx].[StudentAcademicRecordDiplomaFinancialAidApplication] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1724. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (FAFSA or TAFSA) or submitting an exemption.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'DiplomaAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'DiplomaTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1724. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (FAFSA or TAFSA) or submitting an exemption.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'FinancialAidApplicationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiplomaFinancialAidApplication', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [tx].[StudentAcademicRecordEndorsementCompletedSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Collection of EndorsementCompleted', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSet', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSet', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [tx].[StudentAcademicRecordEndorsementCompletedSetEndorsementCompleted] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1544 - E1548. EndorsementCompleted indicates the student has successfully completed a FHSP program to earn one of the following endorsements:
• STEM
• Business and Industry
• Public Services
• Arts and Humanities
• Multi-Disciplinary Studies', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSetEndorsementCompleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1544 - E1548. EndorsementCompleted indicates the student has successfully completed a FHSP program to earn one of the following endorsements:
• STEM
• Business and Industry
• Public Services
• Arts and Humanities
• Multi-Disciplinary Studies', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'EndorsementCompletedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementCompletedSetEndorsementCompleted', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [tx].[StudentAcademicRecordEndorsementPursuing] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1544,E1545,E1546,E1547,E1548. EndorsementPursuing indicates whether a student is currently enrolled in (pursuing) or has successfully completed a FHSP program to earn an endorsement.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementPursuing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementPursuing', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1544,E1545,E1546,E1547,E1548. EndorsementPursuing indicates whether a student is currently enrolled in (pursuing) or has successfully completed a FHSP program to earn an endorsement.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementPursuing', @level2type=N'COLUMN', @level2name=N'EndorsementPursuingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementPursuing', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementPursuing', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordEndorsementPursuing', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [tx].[StudentAcademicRecordExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1563. IndividualGraduationCommitteeReview indicates whether an IGC has been established for a student regardless of which graduation program type is being pursued.  This is collected for students in grades 11 and 12.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'IndividualGraduationCommitteeReview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1596. AssociateDegreeIndicator indicates that the student earned an associate degree prior to graduation from high school. ', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'AssociateDegreeIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1541. FHSPParticipant indicates whether a student is currently enrolled in the Foundation High School Program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'FHSPParticipant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1542. FHSPDistingLevelParticipant indicates whether a student is currently pursuing or has successfully completed the distinguished level of achievement under the Foundation High School Program as provided by TEC 28.025 (b-15).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordExtension', @level2type=N'COLUMN', @level2name=N'FHSPDistingLevelParticipant'
GO

-- Extended Properties [tx].[StudentAcademicRecordIndustryBasedCertificationSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Common Type IndustryBasedCertificationSet.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1632. DateCertTaken indicates the date upon which the industry based certification was taken.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'DateCertTaken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1655. IBCVendorCode identifies the organization or company that offered the service.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'IBCVendorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1640. PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'PostSecondaryCertificationLicensureDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1733. PostSecondaryCertLicensureResult indicates the result of a state, nationally, or internationally recognized industry-based certification exam taken by a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'PostSecondaryCertLicensureResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1654. IBCExamFeeAmount identifies the amount of money that was paid for a student’s industry certification exam by the local education agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordIndustryBasedCertificationSet', @level2type=N'COLUMN', @level2name=N'IBCExamFeeAmount'
GO

-- Extended Properties [tx].[StudentApplication] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ApplicationIdentifier is a unique number or alphanumeric code assigned to an application.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'ApplicationIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1093. The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'StudentUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1325, DC119. A person''s gender.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1517, DC063. The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'EntryGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ApplicationDate is the month, day, and year the application was submitted.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'ApplicationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ApplicationType indicates the type of application submitted.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'ApplicationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'GenerationCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'StudentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city the student was born in.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'BirthCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'BirthStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'BirthInternationalProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'BirthCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the date the student entered the U.S.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'DateEnteredUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'MultipleBirthStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender at birth.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplication', @level2type=N'COLUMN', @level2name=N'BirthSexDescriptorId'
GO

-- Extended Properties [tx].[StudentApplicationPersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ApplicationIdentifier is a unique number or alphanumeric code assigned to an application.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ApplicationIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1093. The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentApplicationPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [tx].[StudentAttributionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor StudentAttribution is based on code table C161.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAttributionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentAttributionDescriptor', @level2type=N'COLUMN', @level2name=N'StudentAttributionDescriptorId'
GO

-- Extended Properties [tx].[StudentCensusBlockGroupSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentCensusBlockGroup indicates the census block in which the student resides.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCensusBlockGroupSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the StudentCensusBlockGroup', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCensusBlockGroupSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCensusBlockGroupSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1648. StudentCensusBlockGroup indicates the census block in which the student resides.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCensusBlockGroupSet', @level2type=N'COLUMN', @level2name=N'StudentCensusBlockGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the StudentCensusBlockGroup', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCensusBlockGroupSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentCrisisEventSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CommonType CrisisEvent indicates a state health or weather-related event that impacts a group of students, and may require additional funding, educational, or social services. The event may or may not cause the student to leave the district or campus of residence.  A crisis event is designated by the Commissioner of Education.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCrisisEventSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the CrisisEvent', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCrisisEventSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1054, C178. Descriptor CrisisEvent indicates a state health or weather-related event that impacts a group of students, and may require additional funding, educational, or social services. The event may or may not cause the student to leave the district or campus of residence.  A crisis event is designated by the Commissioner of Education.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCrisisEventSet', @level2type=N'COLUMN', @level2name=N'CrisisEventDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCrisisEventSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the CrisisEvent', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentCrisisEventSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DyslexiaRisk with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaRiskSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the DyslexiaRisk', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaRiskSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaRiskSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaRiskSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1644, C222. Descriptor DyslexiaRisk', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaRiskSet', @level2type=N'COLUMN', @level2name=N'DyslexiaRiskDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the DyslexiaRisk', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaRiskSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationDyslexiaScreeningExceptionReasonSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DyslexiaScreeningExceptionReasonSet with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaScreeningExceptionReasonSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the DyslexiaScreeningExceptionReasonSet.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaScreeningExceptionReasonSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaScreeningExceptionReasonSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaScreeningExceptionReasonSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1732. DyslexiaScreeningExceptionReason indicates the reason a student in kindergarten or first grade was not screened for dyslexia or related disorders during the dyslexia screening window.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaScreeningExceptionReasonSet', @level2type=N'COLUMN', @level2name=N'DyslexiaScreeningExceptionReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the DyslexiaScreeningExceptionReasonSet.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaScreeningExceptionReasonSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DyslexiaServicesSet with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaServicesSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the DyslexiaServices', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaServicesSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1650, C224. DyslexiaServices indicates the type of dyslexia or related service a student has received at any time during the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaServicesSet', @level2type=N'COLUMN', @level2name=N'DyslexiaServicesDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaServicesSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaServicesSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the DyslexiaServices', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDyslexiaServicesSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EarlyReadingIndicator with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEarlyReadingIndicatorSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the EarlyReadingIndicator', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEarlyReadingIndicatorSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEarlyReadingIndicatorSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEarlyReadingIndicatorSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1522, C195. EarlyReadingIndicator indicates whether a student is eligible for accelerated reading instruction as indicated by the administered reading instrument.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEarlyReadingIndicatorSet', @level2type=N'COLUMN', @level2name=N'EarlyReadingIndicatorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the EarlyReadingIndicator', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEarlyReadingIndicatorSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EconomicDisadvantage with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEconomicDisadvantageSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the EconomicDisadvantage', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEconomicDisadvantageSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEconomicDisadvantageSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEconomicDisadvantageSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0785, C054. EconomicDisadvantage indicates the student''s economic disadvantage status.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEconomicDisadvantageSet', @level2type=N'COLUMN', @level2name=N'EconomicDisadvantageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the EconomicDisadvantage', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEconomicDisadvantageSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EmergentBilingualSet with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEmergentBilingualSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the EmergentBilingualSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEmergentBilingualSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEmergentBilingualSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEmergentBilingualSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor EmergentBilingualIndicator indicates that the student has been identified as an emergent bilingual (EB) student by the Language Proficiency Assessment Committee (LPAC), or English proficient.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEmergentBilingualSet', @level2type=N'COLUMN', @level2name=N'EmergentBilingualIndicatorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the EmergentBilingualSet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationEmergentBilingualSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FosterCareType  with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationFosterCareTypeSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the FosterCareType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationFosterCareTypeSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationFosterCareTypeSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationFosterCareTypeSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1528, C196. FosterCareType indicates whether a student is in the conservatorship of the Department of Family and Protective Services (DFPS) currently, or for a prekindergarten student that was previously in the conservatorship of DFPS, or for a prekindergarten student that is or ever has been in foster care in another state or territory, if the student resides in this state (Texas).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationFosterCareTypeSet', @level2type=N'COLUMN', @level2name=N'FosterCareTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the FosterCareType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationFosterCareTypeSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HomelessStatus  with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationHomelessStatusSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the HomelessStatus', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationHomelessStatusSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationHomelessStatusSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationHomelessStatusSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1082, C189. As defined by 42 U.S.C. Section 11434(a), the term “homeless children and youths” —
(A) means individuals who lack a fixed, regular, and adequate nighttime residence [within the meaning of section 11302(a)(1)]; and

(B) includes —

(i) children and youths who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters

(ii) children and youths who have a primary nighttime residence that is a public or private place not designed for or ordinarily used as a regular sleeping accommodation for human beings [within the meaning of section 11302(a)(2)(C)];

(iii) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings; and

(iv) migratory children (as such term is defined in section 6399 of title 20) who qualify as homeless for the purposes of this subtitle because the children are living in circumstances described in clauses (i) through (iii).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationHomelessStatusSet', @level2type=N'COLUMN', @level2name=N'HomelessStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the HomelessStatus', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationHomelessStatusSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationLanguageSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LanguageSet being used', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the Language', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSet', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the Language', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationLanguageSetLanguageUse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSetLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the Language', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSetLanguageUse', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSetLanguageUse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSetLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSetLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationLanguageSetLanguageUse', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationMilitaryConnectedStudentSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MilitaryConnectedStudentIndicator with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMilitaryConnectedStudentSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for MilitaryConnectedStudent', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMilitaryConnectedStudentSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMilitaryConnectedStudentSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMilitaryConnectedStudentSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1529, C197. MilitaryConnectedStudent indicates a student enrolled in a school district or open-enrollment charter school who is a dependent of an active duty or former member of the United States military, the Texas National Guard, or a reserve force of the United States military, or who is a dependent of a member of the United States military, the Texas National Guard, or a reserve force of the United States military who was killed in the line of duty.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMilitaryConnectedStudentSet', @level2type=N'COLUMN', @level2name=N'MilitaryConnectedStudentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for MilitaryConnectedStudent', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationMilitaryConnectedStudentSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PKFundingSource with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKFundingSourceSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the PKFundingSource', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKFundingSourceSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKFundingSourceSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Order of PK Funding Source.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKFundingSourceSet', @level2type=N'COLUMN', @level2name=N'OrderOfPKFundingSource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKFundingSourceSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1079, E1080, C186. PKFundingSource indicates the source of funding for a Pre-kindergarten student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKFundingSourceSet', @level2type=N'COLUMN', @level2name=N'PKFundingSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the PKFundingSource', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKFundingSourceSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PKProgramType with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKProgramTypeSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the PKProgramType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKProgramTypeSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKProgramTypeSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1078, C185. PKProgramType indicates the length of the Prekindergarten instructional day for a particular Prekindergarten student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKProgramTypeSet', @level2type=N'COLUMN', @level2name=N'PKProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKProgramTypeSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the PKProgramType', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationPKProgramTypeSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationTruancySet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TruancySet represents truancy data associated to students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTruancySet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DateMet.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTruancySet', @level2type=N'COLUMN', @level2name=N'DateMet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTruancySet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTruancySet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1657,E1658,E1659. Truancy descriptor.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTruancySet', @level2type=N'COLUMN', @level2name=N'TruancyDescriptorId'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UnaccompaniedYouthStatus with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnaccompaniedYouthSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for the UnaccompaniedYouth', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnaccompaniedYouthSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnaccompaniedYouthSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnaccompaniedYouthSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1084, C192. As defined by NCLB, Title X, Part C, Section 725(6), the term “unaccompanied youth” means a youth not in the physical custody of a parent or guardian.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnaccompaniedYouthSet', @level2type=N'COLUMN', @level2name=N'UnaccompaniedYouthDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for the UnaccompaniedYouth', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnaccompaniedYouthSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UnschooledAsyleeRefugee with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date of the effecive date for UnschooledAsyleeRefugee', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1076, C183. As defined by NCLB, Title X, Part C, Section 725(6), the term “unaccompanied youth” means a youth not in the physical custody of a parent or guardian.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet', @level2type=N'COLUMN', @level2name=N'UnschooledAsyleeRefugeeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date of the effecive date for UnschooledAsyleeRefugee', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationUnschooledAsyleeRefugeeSet', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [tx].[StudentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0923. LocalStudentId is the student''s local identification number as assigned by the district.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentExtension', @level2type=N'COLUMN', @level2name=N'LocalStudentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentExtension', @level2type=N'COLUMN', @level2name=N'StudentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentExtension', @level2type=N'COLUMN', @level2name=N'GenerationCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AsOfStatusLastFridayOctober indicates the student’s status in the district on the last Friday in October in the current school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentExtension', @level2type=N'COLUMN', @level2name=N'AsOfStatusLastFridayOctoberDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AsOfStatusLastDayEnrollment indicates the student’s status in the district on the last day of school or last date of enrollment in the current school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentExtension', @level2type=N'COLUMN', @level2name=N'AsOfStatusLastDayEnrollmentDescriptorId'
GO

-- Extended Properties [tx].[StudentLanguageInstructionProgramAssociationParentalPermissionSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentalPermissionSet with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentalPermissionSetBeginDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'ParentPermissionSetBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0896, C093. ParentalPermission indicates whether the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'ParentalPermissionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ParentalPermissionSetBeginDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationParentalPermissionSet', @level2type=N'COLUMN', @level2name=N'ParentPermissionSetEndDate'
GO

-- Extended Properties [tx].[StudentSchoolAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0787, C059. ADAEligibility indicates the eligibility status of the student as reflected in the attendance accounting records of the district.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'ADAEligibilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1000, C161. is a characteristic of a student relating to their individual enrollment circumstances.  It indicates whether the student:
- attends an open enrollment charter school;
- is served in a juvenile justice alternative education program (JJAEP);
- attends school in the district through a Public Education Grant (PEG);
- attends school by means of a transfer between LEAs;
- attends school in the district, lives outside the boundaries of the state of Texas, and therefore is not an inter district transfer;
- lives in Texas but outside district boundaries and is served in a juvenile pre-adjudication secure detention facility or a juvenile post-adjudication secure correctional facility;
- lives in Texas but outside district boundaries and is served in a residential treatment center;
- is served by the Texas School for the Deaf as a parent referral;
- is enrolled in South Texas ISD (031-916);
- is a student with a disability enrolled by their parent(s) in a private school (including a home school) but who receives special education and/or related services from the public school district under an individualized services plan (ISP);
- is a child of a charter school employee; or
- student-initiated transfer due to remote learning.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentAttributionDescriptorId'
GO

-- Extended Properties [tx].[StudentSectionAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1068. CourseCompletionIndicator indicates whether or not the student finished the full sequence of instruction for a course.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'CourseCompletionIndicator'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationAssessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assessment represents the assessments conducted to evaluate a student’s language acquisition.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1668, DC162. ToolOrAssessmentUsed identifies the tool or assessment used to assess the student’s language acquisition.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'ToolOrAssessmentUsedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1669, DC163. AssessmentResultsObtained identifies the result of tools or assessments used to assess the student’s language acquisition.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentResultsObtainedDescriptorId'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DisabilitySet', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DisabilitySetBeginDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'DisabilitySetBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EligibilityDateDisabilities indicates the date upon which a student who is deaf or hard of hearing is eligible for services.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'EligibilityDateDisabilities'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DisabilitySetEndDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'DisabilitySetEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilitySet', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1661, DC155. PreferredHomeCommunicationMethod identifies the preferred unique communication method used by the child at home.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'PreferredHomeCommunicationMethodDescriptorId'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HearingAmplification represents the hearing amplification device(s), access and use for a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1665, DC159. HearingAmplificationType identifies the type of hearing amplification device used by the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'HearingAmplificationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1666, DC160.HearingAmplificationAccess identifies whether the student has access to the hearing amplification device for the full-day or partial day for each HEARING-AMPLIFICATION-TYPE reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'HearingAmplificationAccessDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1667, DC161.HearingAmplifAvgDailyUse identifies the average amount of time the hearing amplification device is used in a day based on the HEARING-AMPLIFICATION-ACCESS reported.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationHearingAmplification', @level2type=N'COLUMN', @level2name=N'HearingAmplifAvgDailyUseDescriptorId'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LanguageAcquisition represents the language acquisition services a student has received.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1662, DC156. LangAcqServicesProvided indicates the specific language acquisition services provided to the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'LangAcqServicesProvidedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1663, DC157. FrequencyOfServices identifies the frequency with which a student receives services.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'FrequencyOfServicesDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1664, DC158. HoursSpentReceivingServices identifies the amount of time in which the student receives services.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationLanguageAcquisition', @level2type=N'COLUMN', @level2name=N'HoursSpentReceivingServicesDescriptorId'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentSPEDProgramAssociationSet representshe MedicallyFragile, MultiplyDisabled, LEAOfRDSPDService, ChildCountFunding, PPCDServiceLocation with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EnvironmentBeginDate indicates the first month, day, and year the EducationalEnvironment becomes true for a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'EnvironmentBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0173. EducationalEnvironment identifies the setting used in providing instruction to students.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EnvironmentEndDate indicates the first month, day, and year of non-participation in the EducationalEnvironment for a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationEnvironmentSet', @level2type=N'COLUMN', @level2name=N'EnvironmentEndDate'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentResidentialFacilityAssociation captures enrollment data for students enrolled at a residential facility during a particular school year.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1630. DateEnteredRF indicates the date the student enters the residential facility. ', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'DateEnteredRF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1627. ResidentialFacilityId denotes the residential facility enrolling the student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'ResidentialFacilityID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1631. DateExitedRF indicates the date the student exits the residential facility. ', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'DateExitedRF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0782. CampusIdOfEnrollment indicates the unique campus identification number of the campus in which the student is enrolled.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'CampusIDOfEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1633. AttendanceZoneCampus is the 9-digit identifying number (assigned by the TEA) of the campus the student is expected to attend based on the geographic location (address) of the residential facility in which the student resides.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'AttendanceZoneCampus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1634. EducatedAtResidentialFacility indicates whether a student is educated at or in the general location of a residential facility.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'EducatedAtResidentialFacility'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1635. SurrogateParentAssigned indicates whether the student has been assigned a surrogate parent.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'SurrogateParentAssigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1636. NumberOtherStudentsAssignedSameSurrogateParent indicates how many other students have been assigned to the same surrogate parent.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'NumberOtherStudentsAssignedSameSurrogateParent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1637. ResidentialFacilityStudentSchoolDayLength indicates the number of minutes the residential facility student receives instruction based on the Individualized Education Plan (IEP).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'ResidentialFacilityStudentSchoolDayLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1638. CampusIdOfEnrollmentSchoolDayLength indicates the number of instructional minutes in a school day for a non-disabled peer at the campus ID of enrollment.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentResidentialFacilityAssociation', @level2type=N'COLUMN', @level2name=N'CampusIDOfEnrollmentSchoolDayLength'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentSPEDProgramAssociationSet representshe MedicallyFragile, MultiplyDisabled, LEAOfRDSPDService, ChildCountFunding, PPCDServiceLocation with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentSPEDProgramAssociationSetBeginDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0999. MedicallyFragile indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and4) lives with ongoing threat to his or her continued well-being.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'MedicallyFragile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0882. MultiplyDisabled indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'MultiplyDisabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1527. LEAOfRDSPDService indicates the RDSPD Fiscal Agent district that provides the RDSPD service to a particular RDSPD student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'LEAOfRDSPDService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0832, C066. ChildCountFunding indicates under which federal program the student receiving special education and related services is counted.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ChildCountFundingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1077, C184. PPCDServiceLocation indicates whether or not the Preschool Program for Children with Disabilities (PPCD) student received their special education services in a regular early childhood program, which is defined as a program that is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'PPCDServiceLocationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentSPEDProgramAssociationSetEndDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationStudentSPEDProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramEndDate'
GO

-- Extended Properties [tx].[StudentSpecialEducationProgramEligibilityAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the Child Find collection. Child Find combines State Performance Plan Indicator 11 (SPPI-11) and State Performance Plan Indicator 12 (SPPI-12) in the TSDS Core Collection. SPPI-11 refers to the timely evaluation of students, ages 3-21, for special education services under Part B of IDEA. SPPI-12 refers to children who are referred from Part C of IDEA prior to age 3, found eligible for Part B of IDEA, and have an individualized education plan (IEP) developed and implemented by their third birthday to receive early childhood special education (ECSE) services from a local education agency (LEA).', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1714. ConsentToEvaluationReceivedDate indicates the month, day, and year of the first instructional day following the date on which the Local Education Agency (LEA) received written consent for the full individual and initial evaluation (FIIE) from the student''s parent. The date entered for this data element counts as day 1 of the timeframe required for completing the FIIE.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'ConsentToEvaluationReceivedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1715. EligibilityEvaluationDate indicates the month, day, and year when the written full individual and initial evaluation (FIIE) report was completed.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'EligibilityEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1711. EvaluationDelayDays indicates the number of student absences, if any, beginning the first instructional day following the date on which the Local Education Agency (LEA) received written parental consent for the full individual and initial evaluation (FIIE) report.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'EvaluationDelayDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1718, DC164. EvaluationDelayReason refers to the justification as to why the written full individual and initial evaluation (FIIE) report was completed beyond the State-established 45 instructional day timeframe for state performance plan indicator 11 (SPPI-11), or the justification as to why a child who was receiving early childhood intervention (ECI) services had their eligibility for early childhood special education (ECSE) determined beyond the child’s third birthday for SPPI-12.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'EvaluationDelayReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1716. EligibilityDeterminationDate indicates the month, day, and year the LEA held the admission, review, and dismissal (ARD) committee meeting regarding the child’s initial eligibility determination for special education and related services.  An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'EligibilityDeterminationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1717. IDEAIndicator indicates whether or not the student was determined eligible and enrolled in special education and related services as a result of the full individual and initial evaluation (FIIE) report and the admission, review, and dismissal (ARD) committee meeting decision.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'IDEAIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1731. EligibilityDelayReason refers to the reason why the eligibility determination was completed beyond the required timeframe.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'EligibilityDelayReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0900, E1632. OriginalECIServicesDate is the month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention program. (See Texas Human Resources Code §73.001 and 73.021)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'OriginalECIServicesDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1712. TransitionNotificationDate indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE).  The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent may opt out from the referral.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'TransitionNotificationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E1713. TransitionConferenceDate indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the LEA where the child resides to discuss the child’s potential eligibility for early childhood special education (ECSE) services.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramEligibilityAssociation', @level2type=N'COLUMN', @level2name=N'TransitionConferenceDate'
GO

-- Extended Properties [tx].[StudentTitleIPartAProgramAssociationSet] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentTitleIPartAProgramAssociationSet with effective dates.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentTitleIPartAProgramAssociationBeginDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'StudentTitleIPartAProgramAssociationSetBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E0894, C122. An indication of the type of Title I program, if any, in which the student is participating and by which the student is served.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'TitleIPartAParticipantDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'StudentTitleIPartAProgramAssociationEndDate', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationSet', @level2type=N'COLUMN', @level2name=N'StudentTitleIPartAProgramAssociationSetEndDate'
GO

-- Extended Properties [tx].[TeacherIncentiveAllotmentDesignationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor TeacherIncentiveAllotmentDesignation is based on code table DC165', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'TeacherIncentiveAllotmentDesignationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'TeacherIncentiveAllotmentDesignationDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherIncentiveAllotmentDesignationDescriptorId'
GO

-- Extended Properties [tx].[TitleOfAssessmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor TitleOfAssessment is populated from Code Table DC154.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'TitleOfAssessmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'TitleOfAssessmentDescriptor', @level2type=N'COLUMN', @level2name=N'TitleOfAssessmentDescriptorId'
GO

-- Extended Properties [tx].[ToolOrAssessmentUsedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor ToolOrAssessmentUsed identifies the tool or assessment used to assess the student’s language acquisition. (DC162)', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ToolOrAssessmentUsedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'ToolOrAssessmentUsedDescriptor', @level2type=N'COLUMN', @level2name=N'ToolOrAssessmentUsedDescriptorId'
GO

-- Extended Properties [tx].[TruancyDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Truancy descriptor', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'TruancyDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'TruancyDescriptor', @level2type=N'COLUMN', @level2name=N'TruancyDescriptorId'
GO

-- Extended Properties [tx].[UnaccompaniedYouthDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor UnaccompaniedYouth is populated from Code Table C192.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnaccompaniedYouthDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnaccompaniedYouthDescriptor', @level2type=N'COLUMN', @level2name=N'UnaccompaniedYouthDescriptorId'
GO

-- Extended Properties [tx].[UnaccompaniedYouthPriorYearDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnaccompaniedYouthPriorYearDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnaccompaniedYouthPriorYearDescriptor', @level2type=N'COLUMN', @level2name=N'UnaccompaniedYouthPriorYearDescriptorId'
GO

-- Extended Properties [tx].[UnschooledAsyleeRefugeeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descriptor UnschooledAsyleeRefugee is populated from Code Table C183.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnschooledAsyleeRefugeeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnschooledAsyleeRefugeeDescriptor', @level2type=N'COLUMN', @level2name=N'UnschooledAsyleeRefugeeDescriptorId'
GO

-- Extended Properties [tx].[UnschooledAsyleeRefugeePriorYearDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DOCUMENTATION PENDING', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnschooledAsyleeRefugeePriorYearDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'tx', @level1type=N'TABLE', @level1name=N'UnschooledAsyleeRefugeePriorYearDescriptor', @level2type=N'COLUMN', @level2name=N'UnschooledAsyleeRefugeePriorYearDescriptorId'
GO

