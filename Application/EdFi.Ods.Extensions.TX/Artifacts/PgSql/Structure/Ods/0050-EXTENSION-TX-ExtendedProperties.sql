-- Extended Properties [tx].[ActualExt] --
COMMENT ON TABLE tx.ActualExt IS 'The ActualExtension Domain Entity represents the sum of the financial transactions to date relating to a specific account.';
COMMENT ON COLUMN tx.ActualExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.ActualExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 6 for the 2015-16 fiscal year.';
COMMENT ON COLUMN tx.ActualExt.FunctionDescriptorId IS 'E0317. Function identifies a general operational area and groups together related activities.';
COMMENT ON COLUMN tx.ActualExt.FundDescriptorId IS 'E0316. Fund identifies the fund group and specific fund (when applicable) for actual financial data.';
COMMENT ON COLUMN tx.ActualExt.ObjectDescriptorId IS 'E0318. Object identifies an account, a transaction, or a source of funds.';
COMMENT ON COLUMN tx.ActualExt.Organization IS 'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.';
COMMENT ON COLUMN tx.ActualExt.ProgramIntentDescriptorId IS 'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.ActualExt.ActualAmount IS 'E0774. ActualAmount indicates the dollar value associated with actual financial account information.';

-- Extended Properties [tx].[ADAEligibilityDescriptor] --
COMMENT ON TABLE tx.ADAEligibilityDescriptor IS 'Descriptor ADAEligibility is populated from Code Table C059.';
COMMENT ON COLUMN tx.ADAEligibilityDescriptor.ADAEligibilityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ApplicationTypeDescriptor] --
COMMENT ON TABLE tx.ApplicationTypeDescriptor IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.ApplicationTypeDescriptor.ApplicationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ArmedServicesVocAptBatteryDescriptor] --
COMMENT ON TABLE tx.ArmedServicesVocAptBatteryDescriptor IS 'Descriptor ArmedServicesVocAptBattery is populated from code table C217.';
COMMENT ON COLUMN tx.ArmedServicesVocAptBatteryDescriptor.ArmedServicesVocAptBatteryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AsOfStatusALeaver] --
COMMENT ON TABLE tx.AsOfStatusALeaver IS 'AsOfStatusALeaver - This entity is being reported on non-enrolled students and graduates that are enrolled in the prior school year and do not return in the current school year.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.StudentUID IS 'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.SexDescriptorId IS 'E1325, DC119. A person''s gender.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.HispanicLatinoEthnicity IS 'E1064, E1375. HispanicLatinoEthnicity indicates a person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish culture or origin, regardless of race.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.GradeLevelDescriptorId IS 'E1517, DC063. The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.ExitWithdrawTypeDescriptorId IS 'E1001, C162. ExitWithdrawType indicates the reason a prior year student in grade 7-12 student has not enrolled in the district during the current school year.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.LocalStudentID IS 'E0923. LocalStudentID is the student''s local identification number as assigned by the district.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.StudentID IS 'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.GenerationCodeDescriptorId IS 'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.StudentAttributionDescriptorId IS 'E1000, C161. is a characteristic of a student relating to their individual enrollment circumstances.  It indicates whether the student:
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
- student-initiated transfer due to remote learning.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.AssociateDegreeIndicator IS 'E1596. AssociateDegreeIndicator indicates that the student earned an associate degree prior to graduation from high school.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.AsOfStatusLastFridayOctoberDescriptorId IS 'AsOfStatusLastFridayOctober indicates the student’s status in the district on the last Friday in October in the current school year.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.HomelessStatusPriorYearDescriptorId IS 'HomelessStatusPriorYear indicates if a student at any time during the prior school year was identified as homeless.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.UnaccompaniedYouthPriorYearDescriptorId IS 'UnaccompaniedYouthPriorYear indicates if a student at any time during the prior school year was identified as an unaccompanied youth.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.UnschooledAsyleeRefugeePriorYearDescriptorId IS 'UnschooledAsyleeRefugeePriorYear indicates whether a student’s initial enrollment in a school in the United States in grades 7 through 12 was an unschooled asylee or refugee per TEC §39.027(a-1).';
COMMENT ON COLUMN tx.AsOfStatusALeaver.EconomicDisadvantageLastDateOfEnrollmentDescriptorId IS 'EconomicDisadvantageLastDateOfEnrollment indicates the student’s economic disadvantage status on the last date of their enrollment.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.ParentalPermissionLastDateOfEnrollmentDescriptorId IS 'ParentalPermissionLastDateOfEnrollment indicates in the prior school year whether the student’s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240)';
COMMENT ON COLUMN tx.AsOfStatusALeaver.MigrantPriorYear IS 'MigrantPriorYear indicates that the student (age 3-21 in the prior school year) was, or the student’s parent, spouse, or guardian was a migratory agricultural worker, including a migratory dairy worker, or a migratory fisher, and who, in the preceding 36 months, in order to obtain, or accompany such parent, spouse, or guardian in order to obtain, temporary or seasonal employment in agricultural or fishing work 1) has moved from one school district to another; or 2) resides in a school district of more than 15,000 square miles, and migrates a distance of 20 miles or more to a temporary residence to engage in a fishing activity.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.AdultPreviousAttendancePriorYear IS 'AdultPreviousAttendancePriorYear indicates whether an adult student (age 18-25) who was enrolled in the prior year in a high school equivalency program, dropout recovery school, or other adult education program (under TEC §29.259), has or has not attended school in the previous nine months prior to enrolling during the prior year.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.PersonalTitlePrefix IS 'A prefix used to denote the title, degree, position, or seniority of the person.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.FirstName IS 'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.MiddleName IS 'A secondary name given to an individual at birth, baptism, or during another naming ceremony.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.LastSurname IS 'The name borne in common by members of a family.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.GenerationCodeSuffix IS 'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).';
COMMENT ON COLUMN tx.AsOfStatusALeaver.MaidenName IS 'The person''s maiden name.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.BirthDate IS 'The month, day, and year on which an individual was born.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.BirthCity IS 'The city the student was born in.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.BirthStateAbbreviationDescriptorId IS 'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.BirthInternationalProvince IS 'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.BirthCountryDescriptorId IS 'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.DateEnteredUS IS 'For students born outside of the U.S., the date the student entered the U.S.';
COMMENT ON COLUMN tx.AsOfStatusALeaver.MultipleBirthStatus IS 'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)';
COMMENT ON COLUMN tx.AsOfStatusALeaver.BirthSexDescriptorId IS 'A person''s gender at birth.';

-- Extended Properties [tx].[AsOfStatusALeaverDiploma] --
COMMENT ON TABLE tx.AsOfStatusALeaverDiploma IS 'Extended Diploma common type';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.StudentUID IS 'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.AchievementTitle IS 'The title assigned to the achievement.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.AchievementCategoryDescriptorId IS 'The category of achievement attributed to the learner.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.AchievementCategorySystem IS 'The system that defines the categories by which an achievement is attributed to the learner.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.IssuerName IS 'The name of the agent, entity, or institution issuing the element.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.IssuerOriginURL IS 'The Uniform Resource Locator (URL) from which the award was issued.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.Criteria IS 'The criteria for competency-based completion of the achievement/award.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.CriteriaURL IS 'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.EvidenceStatement IS 'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.ImageURL IS 'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.DiplomaAwardDate IS 'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.DiplomaLevelDescriptorId IS 'The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.
        Minimum high school program
        Recommended high school program
        Distinguished Achievement Program.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.DiplomaTypeDescriptorId IS 'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.CTECompleter IS 'Indicated a student who reached a state-defined threshold of vocational education and who attained a high school diploma or its recognized state equivalent or GED.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.DiplomaDescription IS 'The description of diploma given to the student for accomplishments.';
COMMENT ON COLUMN tx.AsOfStatusALeaverDiploma.DiplomaAwardExpiresDate IS 'Date on which the award expires.';

-- Extended Properties [tx].[AsOfStatusALeaverIndustryBasedCertificationSet] --
COMMENT ON TABLE tx.AsOfStatusALeaverIndustryBasedCertificationSet IS 'Common Type IndustryBasedCertificationSet.';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.BeginDate IS 'Begin date of the effecive date for the IndustryBasedCertificationSet';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.DateCertEarned IS 'E1632. DateCertEarned indicates the date upon which the associated data value(s) is/are considered to take effect, or the associated data value(s) change(s).';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.IBCVendorDescriptorId IS 'E1655. IBCVendorCode identifies the organization or company that offered the service.';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.PostSecondaryCertificationLicensureDescriptorId IS 'E1640. PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.StudentUID IS 'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.IBCExamFeeAmount IS 'E1654. IBCExamFeeAmount identifies the amount of money that was paid for a student’s industry certification exam by the local education agency.';
COMMENT ON COLUMN tx.AsOfStatusALeaverIndustryBasedCertificationSet.EndDate IS 'End date of the effecive date for the IndustryBasedCertificationSet';

-- Extended Properties [tx].[AsOfStatusALeaverPersonalIdentificationDocument] --
COMMENT ON TABLE tx.AsOfStatusALeaverPersonalIdentificationDocument IS 'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.IdentificationDocumentUseDescriptorId IS 'The primary function of the document used for establishing identity.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.PersonalInformationVerificationDescriptorId IS 'The category of the document relative to its purpose.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.StudentUID IS 'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.DocumentTitle IS 'The title of the document given by the issuer.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.DocumentExpirationDate IS 'The day when the document  expires, if null then never expires.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.IssuerDocumentIdentificationCode IS 'The unique identifier on the issuer''s identification system.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.IssuerName IS 'Name of the entity or institution that issued the document.';
COMMENT ON COLUMN tx.AsOfStatusALeaverPersonalIdentificationDocument.IssuerCountryDescriptorId IS 'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';

-- Extended Properties [tx].[AsOfStatusALeaverRace] --
COMMENT ON TABLE tx.AsOfStatusALeaverRace IS 'E1343,E1059,E1060,E1061,E1062,E1063. The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races.';
COMMENT ON COLUMN tx.AsOfStatusALeaverRace.RaceDescriptorId IS 'E1343,E1059,E1060,E1061,E1062,E1063. The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races.';
COMMENT ON COLUMN tx.AsOfStatusALeaverRace.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.AsOfStatusALeaverRace.StudentUID IS 'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';

-- Extended Properties [tx].[AsOfStatusLastDayEnrollmentDescriptor] --
COMMENT ON TABLE tx.AsOfStatusLastDayEnrollmentDescriptor IS 'AsOfStatusLastDayEnrollment indicates the student’s status in the district on the last day of school or last date of enrollment in the current school year.';
COMMENT ON COLUMN tx.AsOfStatusLastDayEnrollmentDescriptor.AsOfStatusLastDayEnrollmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AsOfStatusLastFridayOctoberDescriptor] --
COMMENT ON TABLE tx.AsOfStatusLastFridayOctoberDescriptor IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.AsOfStatusLastFridayOctoberDescriptor.AsOfStatusLastFridayOctoberDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AssessmentExtension] --
COMMENT ON TABLE tx.AssessmentExtension IS '';
COMMENT ON COLUMN tx.AssessmentExtension.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN tx.AssessmentExtension.Namespace IS 'Namespace for the Assessment.';
COMMENT ON COLUMN tx.AssessmentExtension.TitleOfAssessmentDescriptorId IS 'E1127. The title or name of the assessment.';
COMMENT ON COLUMN tx.AssessmentExtension.ReportAssessmentTypeDescriptorId IS 'E1573. ReportAssessmentType indicates the TEA collection for which the assessment should be reported.';

-- Extended Properties [tx].[AssessmentResultsObtainedDescriptor] --
COMMENT ON TABLE tx.AssessmentResultsObtainedDescriptor IS 'Descriptor AssessmentResultsObtained identifies the result of tools or assessments used to assess the student’s language acquisition. (DC163)';
COMMENT ON COLUMN tx.AssessmentResultsObtainedDescriptor.AssessmentResultsObtainedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AuxiliaryRoleIdDescriptor] --
COMMENT ON TABLE tx.AuxiliaryRoleIdDescriptor IS 'Descriptor AuxiliaryRoleId is populated from code table C213.';
COMMENT ON COLUMN tx.AuxiliaryRoleIdDescriptor.AuxiliaryRoleIdDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[BudgetExt] --
COMMENT ON TABLE tx.BudgetExt IS 'The BudgetExtension Domain Entity represents the amount of monies allocated to be spent or received by an education organization as related to a specific account';
COMMENT ON COLUMN tx.BudgetExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.BudgetExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 6 for the 2015-16 fiscal year.';
COMMENT ON COLUMN tx.BudgetExt.FunctionDescriptorId IS 'E0317. Function identifies a general operational area and groups together related activities.';
COMMENT ON COLUMN tx.BudgetExt.FundDescriptorId IS 'E0316. Fund identifies the fund group and specific fund (when applicable) for budget data.';
COMMENT ON COLUMN tx.BudgetExt.ObjectDescriptorId IS 'E0318. Object identifies an account, a transaction, or a source of funds.';
COMMENT ON COLUMN tx.BudgetExt.Organization IS 'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.';
COMMENT ON COLUMN tx.BudgetExt.ProgramIntentDescriptorId IS 'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.BudgetExt.BudgetAmount IS 'E0321. BudgetAmount indicates the dollar value associated with budget financial account information.';

-- Extended Properties [tx].[CalendarDateExtension] --
COMMENT ON TABLE tx.CalendarDateExtension IS '';
COMMENT ON COLUMN tx.CalendarDateExtension.CalendarCode IS 'The identifier for the Calendar.';
COMMENT ON COLUMN tx.CalendarDateExtension.Date IS 'The month, day, and year of the CalendarEvent.';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolYear IS 'The identifier for the school year associated with the Calendar.';
COMMENT ON COLUMN tx.CalendarDateExtension.CalendarWaiverEventTypeDescriptorId IS 'E1570, C204. CalendarWaiverEventType indicates the type of state approved waiver';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolDayOperationalMinutes IS 'E1571. SchoolDayOperationalMinutes indicates the minutes that a campus operated on a particular school day for the purpose of student instruction.';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolDayInstructionalMinutes IS 'E1599. SchoolDayInstructionalMinutes indicates the portion of the school day in which instruction takes place along with certain other exceptions and are considered a subset of operational minutes.';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolDayWaiverMinutes IS 'E1572. SchoolDayWaiverMinutes indicates the waiver minutes for the campus and calendar date.';

-- Extended Properties [tx].[CalendarWaiverEventTypeDescriptor] --
COMMENT ON TABLE tx.CalendarWaiverEventTypeDescriptor IS 'Descriptor CalendarWaiverEventType is populated from Code Table C204.';
COMMENT ON COLUMN tx.CalendarWaiverEventTypeDescriptor.CalendarWaiverEventTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[CampusEnrollmentTypeDescriptor] --
COMMENT ON TABLE tx.CampusEnrollmentTypeDescriptor IS 'Descriptor CampusEnrollmentType is populated from code table C219.';
COMMENT ON COLUMN tx.CampusEnrollmentTypeDescriptor.CampusEnrollmentTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ChildCountFundingDescriptor] --
COMMENT ON TABLE tx.ChildCountFundingDescriptor IS 'Descriptor ChildCountFunding indicates under which federal program the student receiving special education and related services is counted. (C066)';
COMMENT ON COLUMN tx.ChildCountFundingDescriptor.ChildCountFundingDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ClassPeriodExtension] --
COMMENT ON TABLE tx.ClassPeriodExtension IS '';
COMMENT ON COLUMN tx.ClassPeriodExtension.ClassPeriodName IS 'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).';
COMMENT ON COLUMN tx.ClassPeriodExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.ClassPeriodExtension.BeginDate IS 'Indicates the Begin/end Dates upon which the ClassPeriod is considered to take effect.';

-- Extended Properties [tx].[ClassTypeDescriptor] --
COMMENT ON TABLE tx.ClassTypeDescriptor IS 'Descriptor ClassType is populated from code table C179.';
COMMENT ON COLUMN tx.ClassTypeDescriptor.ClassTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ContractedInstructionalStaffFTEExt] --
COMMENT ON TABLE tx.ContractedInstructionalStaffFTEExt IS 'The ContractedInstructionalStaffFTEExtension Domain Entity represents financial information for contracted staff by Program Intent Code at the LEA/Campus level.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.ProgramIntentDescriptorId IS 'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.TotalContractedInstrStaffFTE IS 'E0980. TotalContractedInstrStaffFTE is a standard measurement of the portion of professional contracted instructional staff, expressed as a multiple of the standard work day, such as 7.7 FTEs.';

-- Extended Properties [tx].[CourseSequenceDescriptor] --
COMMENT ON TABLE tx.CourseSequenceDescriptor IS 'Descriptor CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.';
COMMENT ON COLUMN tx.CourseSequenceDescriptor.CourseSequenceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[CourseTranscriptExtension] --
COMMENT ON TABLE tx.CourseTranscriptExtension IS '';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CourseAttemptResultDescriptorId IS 'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CourseCode IS 'A unique alphanumeric code assigned to a course.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CourseEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CollegeCreditHours IS 'E1081. CollegeCreditHours indicate the number of college hours a student earned for the completion of a dual credit course.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CourseSequenceDescriptorId IS 'E0948, C135. CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.DualCreditIndicator IS 'E1011. DualCreditIndicator indicates whether the student was eligible to receive both high school and college credit for a college course.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.ATCIndicator IS 'E1058. ATCIndicator indicates a high school course for which college credit may be awarded by a post-secondary institution under the conditions of a local articulation agreement or the statewide Advanced Technical Credit (ATC) program agreement.';

-- Extended Properties [tx].[CrisisEventDescriptor] --
COMMENT ON TABLE tx.CrisisEventDescriptor IS 'Descriptor CrisisEvent is populated from Code Table C178.';
COMMENT ON COLUMN tx.CrisisEventDescriptor.CrisisEventDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[DisciplineActionExtension] --
COMMENT ON TABLE tx.DisciplineActionExtension IS '';
COMMENT ON COLUMN tx.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the DisciplineAction.';
COMMENT ON COLUMN tx.DisciplineActionExtension.DisciplineDate IS 'The date of the DisciplineAction.';
COMMENT ON COLUMN tx.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.DisciplineActionExtension.ActualLengthOfDisciplinaryAssignment IS 'E1008. ActualLengthOfDisciplinaryAssignment indicates the actual length in days of a student’s disciplinary assignment.';
COMMENT ON COLUMN tx.DisciplineActionExtension.OfficialLengthOfDisciplinaryAssignment IS 'E1007. OfficialLengthOfDisciplinaryAssignment indicates the official length in days of a student’s disciplinary assignment.';
COMMENT ON COLUMN tx.DisciplineActionExtension.InconsistentCodeOfConduct IS 'E1656. InconsistentCodeOfConduct indicates whether an out-of-school suspension, disciplinary alternative education program placement, or expulsion action is inconsistent with a local education agency’s student code of conduct.';
COMMENT ON COLUMN tx.DisciplineActionExtension.NonMembershipDisciplineRestraintIndicator IS 'E1725. NonMembershipDisciplineRestraintIndicator indicates the discipline incident or restraint event being reported is for a special education student enrolled, not in membership.';

-- Extended Properties [tx].[DyslexiaRiskDescriptor] --
COMMENT ON TABLE tx.DyslexiaRiskDescriptor IS 'Descriptor DyslexiaRisk is populated from Code Table C222.';
COMMENT ON COLUMN tx.DyslexiaRiskDescriptor.DyslexiaRiskDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[DyslexiaServicesDescriptor] --
COMMENT ON TABLE tx.DyslexiaServicesDescriptor IS 'Descriptor DyslexiaServices is based on code table C224.';
COMMENT ON COLUMN tx.DyslexiaServicesDescriptor.DyslexiaServicesDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EarlyReadingIndicatorDescriptor] --
COMMENT ON TABLE tx.EarlyReadingIndicatorDescriptor IS 'Descriptor EarlyReadingIndicator is populated from Code Table C195.';
COMMENT ON COLUMN tx.EarlyReadingIndicatorDescriptor.EarlyReadingIndicatorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EconomicDisadvantageDescriptor] --
COMMENT ON TABLE tx.EconomicDisadvantageDescriptor IS 'Descriptor EconomicDisadvantage is populated from Code Table C054.';
COMMENT ON COLUMN tx.EconomicDisadvantageDescriptor.EconomicDisadvantageDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EconomicDisadvantageLastDateOfEnrollmentDescriptor] --
COMMENT ON TABLE tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor.EconomicDisadvantageLastDateOfEnrollmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ELOActivityDescriptor] --
COMMENT ON TABLE tx.ELOActivityDescriptor IS 'Descriptor ELOActivity is populated from code table C229.';
COMMENT ON COLUMN tx.ELOActivityDescriptor.ELOActivityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ELOTypeDescriptor] --
COMMENT ON TABLE tx.ELOTypeDescriptor IS 'Descriptor ELOType is populated from code table C218.';
COMMENT ON COLUMN tx.ELOTypeDescriptor.ELOTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EmergentBilingualIndicatorDescriptor] --
COMMENT ON TABLE tx.EmergentBilingualIndicatorDescriptor IS 'Descriptor EmergentBilingualIndicator is populated from code table C061/DC079.';
COMMENT ON COLUMN tx.EmergentBilingualIndicatorDescriptor.EmergentBilingualIndicatorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EndorsementCompletedDescriptor] --
COMMENT ON TABLE tx.EndorsementCompletedDescriptor IS 'Descriptor EndorsementCompleted.';
COMMENT ON COLUMN tx.EndorsementCompletedDescriptor.EndorsementCompletedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EndorsementPursuingDescriptor] --
COMMENT ON TABLE tx.EndorsementPursuingDescriptor IS 'Descriptor EndorsementPursuing.';
COMMENT ON COLUMN tx.EndorsementPursuingDescriptor.EndorsementPursuingDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EvaluationDelayReasonDescriptor] --
COMMENT ON TABLE tx.EvaluationDelayReasonDescriptor IS 'Descriptor EvaluationDelayReason is based on table DC164.';
COMMENT ON COLUMN tx.EvaluationDelayReasonDescriptor.EvaluationDelayReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[FosterCareTypeDescriptor] --
COMMENT ON TABLE tx.FosterCareTypeDescriptor IS 'Descriptor FosterCareType is populated from Code Table C196.';
COMMENT ON COLUMN tx.FosterCareTypeDescriptor.FosterCareTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[FrequencyOfServicesDescriptor] --
COMMENT ON TABLE tx.FrequencyOfServicesDescriptor IS 'Descriptor FrequencyOfServices identifies the frequency with which a student receives services. (DC157)';
COMMENT ON COLUMN tx.FrequencyOfServicesDescriptor.FrequencyOfServicesDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[FunctionDescriptor] --
COMMENT ON TABLE tx.FunctionDescriptor IS 'Descriptor Function is populated from Code Table C146.';
COMMENT ON COLUMN tx.FunctionDescriptor.FunctionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[FundDescriptor] --
COMMENT ON TABLE tx.FundDescriptor IS 'Descriptor Fund is populated from Code Table C145.';
COMMENT ON COLUMN tx.FundDescriptor.FundDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[GenerationCodeDescriptor] --
COMMENT ON TABLE tx.GenerationCodeDescriptor IS 'Descriptor GenerationCode is based on Code Tables C012 and DC148';
COMMENT ON COLUMN tx.GenerationCodeDescriptor.GenerationCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[GiftedTalentedProgramDescriptor] --
COMMENT ON TABLE tx.GiftedTalentedProgramDescriptor IS 'Descriptor GiftedTalentedProgram is populated from code table C223';
COMMENT ON COLUMN tx.GiftedTalentedProgramDescriptor.GiftedTalentedProgramDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HearingAmplifAvgDailyUseDescriptor] --
COMMENT ON TABLE tx.HearingAmplifAvgDailyUseDescriptor IS 'Descriptor HearingAmplifAvgDailyUse identifies the average amount of time the hearing amplification device is used in a day based on the HEARING-AMPLIFICATION-ACCESS reported. (DC161)';
COMMENT ON COLUMN tx.HearingAmplifAvgDailyUseDescriptor.HearingAmplifAvgDailyUseDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HearingAmplificationAccessDescriptor] --
COMMENT ON TABLE tx.HearingAmplificationAccessDescriptor IS 'Descriptor HearingAmplificationAccess identifies whether the student has access to the hearing amplification device for the full-day or partial day for each HEARING-AMPLIFICATION-TYPE reported. (DC160)';
COMMENT ON COLUMN tx.HearingAmplificationAccessDescriptor.HearingAmplificationAccessDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HearingAmplificationTypeDescriptor] --
COMMENT ON TABLE tx.HearingAmplificationTypeDescriptor IS 'Descriptor HearingAmplificationType identifies the type of hearing amplification device used by the student. (DC159)';
COMMENT ON COLUMN tx.HearingAmplificationTypeDescriptor.HearingAmplificationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HomelessStatusDescriptor] --
COMMENT ON TABLE tx.HomelessStatusDescriptor IS 'Descriptor HomelessStatus is populated from Code Table C189';
COMMENT ON COLUMN tx.HomelessStatusDescriptor.HomelessStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HomelessStatusPriorYearDescriptor] --
COMMENT ON TABLE tx.HomelessStatusPriorYearDescriptor IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.HomelessStatusPriorYearDescriptor.HomelessStatusPriorYearDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HoursSpentReceivingServicesDescriptor] --
COMMENT ON TABLE tx.HoursSpentReceivingServicesDescriptor IS 'Descriptor HoursSpentReceivingServices identifies the amount of time in which the student receives services. (DC158)';
COMMENT ON COLUMN tx.HoursSpentReceivingServicesDescriptor.HoursSpentReceivingServicesDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[IBCVendorDescriptor] --
COMMENT ON TABLE tx.IBCVendorDescriptor IS 'Descriptor IBCVendorCode identifies the organization or company that offered the service.';
COMMENT ON COLUMN tx.IBCVendorDescriptor.IBCVendorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[LangAcqServicesProvidedDescriptor] --
COMMENT ON TABLE tx.LangAcqServicesProvidedDescriptor IS 'Descriptor LangAcqServicesProvided indicates the specific language acquisition services provided to the student. (DC156)';
COMMENT ON COLUMN tx.LangAcqServicesProvidedDescriptor.LangAcqServicesProvidedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[LocalEducationAgencyChildCareOperationNumber] --
COMMENT ON TABLE tx.LocalEducationAgencyChildCareOperationNumber IS 'E1726. ChildCareOperationNumber identifies the operation number of the childcare facility which participates in a partnership with a Local Education Agency.';
COMMENT ON COLUMN tx.LocalEducationAgencyChildCareOperationNumber.ChildCareOperationNumber IS 'E1726. ChildCareOperationNumber identifies the operation number of the childcare facility which participates in a partnership with a Local Education Agency.';
COMMENT ON COLUMN tx.LocalEducationAgencyChildCareOperationNumber.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';

-- Extended Properties [tx].[LocalEducationAgencyExtension] --
COMMENT ON TABLE tx.LocalEducationAgencyExtension IS '';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.TotalNumSchoolBoardRequests IS 'E1556. TotalNumSchoolBoardRequests indicates the total number of requests submitted outside of a school board meeting by a member of the district''s board of trustees (school board) for information, documents, and records as specified in TEC SECTION 11.1512.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.TotalCostSchoolBoardRequests IS 'E1557. TotalCostSchoolBoardRequests indicates the cost to the district with fulfilling requests submitted outside of a school board meeting by a member of the district''s board of trustees (school board) for information, documents, and records as specified in TEC SECTION 11.1512.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.FamilyEngagementPlanLink IS 'E1583. FamilyEngagementPlanLink indicates the internet website link for LEAs to provide their Family Engagement Plan.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.ArmedServicesVocAptBatteryDescriptorId IS 'E1625, C217. ArmedServicesVocAptBattery indicates whether a school district or open-enrollment charter school provides students in grades 10 through 12 an opportunity to take the Armed Services Vocational Aptitude Battery (ASVAB) test or a comparable substitute.';

-- Extended Properties [tx].[LocalEducationAgencyGiftedTalentedProgram] --
COMMENT ON TABLE tx.LocalEducationAgencyGiftedTalentedProgram IS 'E1645, C223. GiftedTalentedProgram indicates a gifted and talented program the LEA has established that is consistent with the state plan developed under TEC 29.123.';
COMMENT ON COLUMN tx.LocalEducationAgencyGiftedTalentedProgram.GiftedTalentedProgramDescriptorId IS 'E1645, C223. GiftedTalentedProgram indicates a gifted and talented program the LEA has established that is consistent with the state plan developed under TEC 29.123.';
COMMENT ON COLUMN tx.LocalEducationAgencyGiftedTalentedProgram.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';

-- Extended Properties [tx].[LocalEducationAgencyProgramOfStudy] --
COMMENT ON TABLE tx.LocalEducationAgencyProgramOfStudy IS 'E1643, C220. ProgramOfStudy indicates a program of study the LEA offers. A program of study is a comprehensive, structured approach for delivering academic and career and technical education to prepare a student for postsecondary education and career success.';
COMMENT ON COLUMN tx.LocalEducationAgencyProgramOfStudy.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN tx.LocalEducationAgencyProgramOfStudy.ProgramOfStudyDescriptorId IS 'E1643, C220. ProgramOfStudy indicates a program of study the LEA offers. A program of study is a comprehensive, structured approach for delivering academic and career and technical education to prepare a student for postsecondary education and career success.';

-- Extended Properties [tx].[MilitaryConnectedStudentDescriptor] --
COMMENT ON TABLE tx.MilitaryConnectedStudentDescriptor IS 'Descriptor MilitaryConnectedStudent is populated from Code Table C197.';
COMMENT ON COLUMN tx.MilitaryConnectedStudentDescriptor.MilitaryConnectedStudentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[NonCampusBasedInstructionDescriptor] --
COMMENT ON TABLE tx.NonCampusBasedInstructionDescriptor IS 'Descriptor NonCampusBasedInstruction indicates that a course was offered for class credit or student achievement, but 1) was not taught by a school district/charter school employee or a contracted teacher , or 2) was taught by a school district/charter school employee or a contracted teacher at a facility other than the campus where the student is enrolled. Examples include but are not limited to college based instruction, non-district teacher, non-campus teacher, internet based instruction, electronic Course Pilot (eCP), and Texas Virtual School Network (TxVSN). (C182)';
COMMENT ON COLUMN tx.NonCampusBasedInstructionDescriptor.NonCampusBasedInstructionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[NSLPTypeDescriptor] --
COMMENT ON TABLE tx.NSLPTypeDescriptor IS 'Descriptor NSLPType is populated from code table C212.';
COMMENT ON COLUMN tx.NSLPTypeDescriptor.NSLPTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ObjectDescriptor] --
COMMENT ON TABLE tx.ObjectDescriptor IS 'Descriptor Object is populated from Code Table C159.';
COMMENT ON COLUMN tx.ObjectDescriptor.ObjectDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ParentalPermissionDescriptor] --
COMMENT ON TABLE tx.ParentalPermissionDescriptor IS 'Descriptor ParentalPermission indicates whether the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.) (C093)';
COMMENT ON COLUMN tx.ParentalPermissionDescriptor.ParentalPermissionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ParentalPermissionLastDateOfEnrollmentDescriptor] --
COMMENT ON TABLE tx.ParentalPermissionLastDateOfEnrollmentDescriptor IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.ParentalPermissionLastDateOfEnrollmentDescriptor.ParentalPermissionLastDateOfEnrollmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ParentExtension] --
COMMENT ON TABLE tx.ParentExtension IS '';
COMMENT ON COLUMN tx.ParentExtension.ParentUSI IS 'A unique alphanumeric code assigned to a parent.';
COMMENT ON COLUMN tx.ParentExtension.GenerationCodeDescriptorId IS 'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';

-- Extended Properties [tx].[PayrollActivityDescriptor] --
COMMENT ON TABLE tx.PayrollActivityDescriptor IS 'Descriptor PayrollActivity is populated from Code Table C018.';
COMMENT ON COLUMN tx.PayrollActivityDescriptor.PayrollActivityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PayrollExt] --
COMMENT ON TABLE tx.PayrollExt IS 'The PayrollExtension Domain Entity represents the financial transactions for employee compensation.';
COMMENT ON COLUMN tx.PayrollExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.PayrollExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 4 for the 1993-94 fiscal year.';
COMMENT ON COLUMN tx.PayrollExt.FunctionDescriptorId IS 'E0317. Function identifies a general operational area and groups together related activities.';
COMMENT ON COLUMN tx.PayrollExt.FundDescriptorId IS 'E0316. Fund identifies the fund group and specific fund for payroll data.';
COMMENT ON COLUMN tx.PayrollExt.ObjectDescriptorId IS 'E0318. Object identifies an account, a transaction, or a source of funds.';
COMMENT ON COLUMN tx.PayrollExt.Organization IS 'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.';
COMMENT ON COLUMN tx.PayrollExt.PayrollActivityDescriptorId IS 'E0424. PayrollActivity indicates the types of duty for which a staff member receives salary, salary supplements, or bonuses.';
COMMENT ON COLUMN tx.PayrollExt.ProgramIntentDescriptorId IS 'E0320. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.PayrollExt.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.PayrollExt.PayrollAmount IS 'E0425. PayrollAmount indicates the dollar value that is paid to a staff member for a given payroll activity per year.';

-- Extended Properties [tx].[PKCurriculaDescriptor] --
COMMENT ON TABLE tx.PKCurriculaDescriptor IS 'Descriptor PKCurricula indicates curricula used in the district’s prekindergarten program section TEC 29.1532(c)(6). (C206)';
COMMENT ON COLUMN tx.PKCurriculaDescriptor.PKCurriculaDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKFundingSourceDescriptor] --
COMMENT ON TABLE tx.PKFundingSourceDescriptor IS 'Descriptor PKFundingSource is populated from Code Table C186.';
COMMENT ON COLUMN tx.PKFundingSourceDescriptor.PKFundingSourceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKProgramEvaluationTypeDescriptor] --
COMMENT ON TABLE tx.PKProgramEvaluationTypeDescriptor IS 'Descriptor ProgramEvaluationType indicates for each High-Quality PK course/section, the type of program evaluation tool that is used. C216';
COMMENT ON COLUMN tx.PKProgramEvaluationTypeDescriptor.PKProgramEvaluationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKProgramTypeDescriptor] --
COMMENT ON TABLE tx.PKProgramTypeDescriptor IS 'Descriptor PKProgramType is populated from Code Table C185.';
COMMENT ON COLUMN tx.PKProgramTypeDescriptor.PKProgramTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKSchoolTypeDescriptor] --
COMMENT ON TABLE tx.PKSchoolTypeDescriptor IS 'Descriptor PKSchoolType is populated from Code Table DC152.';
COMMENT ON COLUMN tx.PKSchoolTypeDescriptor.PKSchoolTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKStudentInstructionDescriptor] --
COMMENT ON TABLE tx.PKStudentInstructionDescriptor IS 'Descriptor StudentInstruction DC153.';
COMMENT ON COLUMN tx.PKStudentInstructionDescriptor.PKStudentInstructionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKTeacherRequirementDescriptor] --
COMMENT ON TABLE tx.PKTeacherRequirementDescriptor IS 'Descriptor PKTeacherRequirement is populated from code table C207.';
COMMENT ON COLUMN tx.PKTeacherRequirementDescriptor.PKTeacherRequirementDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PostSecondaryCertificationLicensureDescriptor] --
COMMENT ON TABLE tx.PostSecondaryCertificationLicensureDescriptor IS 'Descriptor PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.';
COMMENT ON COLUMN tx.PostSecondaryCertificationLicensureDescriptor.PostSecondaryCertificationLicensureDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PPCDServiceLocationDescriptor] --
COMMENT ON TABLE tx.PPCDServiceLocationDescriptor IS 'Descriptor PPCDServiceLocation indicates whether or not the Preschool Program for Children with Disabilities (PPCD) student received their special education services in a regular early childhood program, which is defined as a program that is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)). (C184)';
COMMENT ON COLUMN tx.PPCDServiceLocationDescriptor.PPCDServiceLocationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PreferredHomeCommunicationMethodDescriptor] --
COMMENT ON TABLE tx.PreferredHomeCommunicationMethodDescriptor IS 'Descriptor PreferredHomeCommunicationMethod identifies the preferred unique communication method used by the child at home. (DC155)';
COMMENT ON COLUMN tx.PreferredHomeCommunicationMethodDescriptor.PreferredHomeCommunicationMethodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ProgramIntentDescriptor] --
COMMENT ON TABLE tx.ProgramIntentDescriptor IS 'Descriptor ProgramIntent is populated from Code Table C147.';
COMMENT ON COLUMN tx.ProgramIntentDescriptor.ProgramIntentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ProgramOfStudyDescriptor] --
COMMENT ON TABLE tx.ProgramOfStudyDescriptor IS 'Descriptor ProgramOfStudy is populated from code table C220.';
COMMENT ON COLUMN tx.ProgramOfStudyDescriptor.ProgramOfStudyDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ReportAssessmentTypeDescriptor] --
COMMENT ON TABLE tx.ReportAssessmentTypeDescriptor IS 'Descriptor ReportAssessmentType is populated from code table DC123.';
COMMENT ON COLUMN tx.ReportAssessmentTypeDescriptor.ReportAssessmentTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[RestraintEventExtension] --
COMMENT ON TABLE tx.RestraintEventExtension IS '';
COMMENT ON COLUMN tx.RestraintEventExtension.RestraintEventIdentifier IS 'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.';
COMMENT ON COLUMN tx.RestraintEventExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.RestraintEventExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.RestraintEventExtension.RestraintStaffTypeDescriptorId IS 'E1516, C194. RestraintStaffType indicates the kind of school staff person that performed a student restraint.';
COMMENT ON COLUMN tx.RestraintEventExtension.NonMembershipDisciplineRestraintIndicator IS 'E1725. NonMembershipDisciplineRestraintIndicator indicates the discipline incident or restraint event being reported is for a special education student enrolled, not in membership.';

-- Extended Properties [tx].[RestraintStaffTypeDescriptor] --
COMMENT ON TABLE tx.RestraintStaffTypeDescriptor IS 'Descriptor RestraintStaffType indicates the kind of school staff person that performed a student restraint.';
COMMENT ON COLUMN tx.RestraintStaffTypeDescriptor.RestraintStaffTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[RoleIdDescriptor] --
COMMENT ON TABLE tx.RoleIdDescriptor IS 'Descriptor RoleId is based on code table C021.';
COMMENT ON COLUMN tx.RoleIdDescriptor.RoleIdDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[SchoolCampusEnrollmentTypeSet] --
COMMENT ON TABLE tx.SchoolCampusEnrollmentTypeSet IS 'CampusEnrollmentType with effective dates';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.BeginDate IS 'Begin date of the effecive date for the CampusEnrollmentType';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.CampusEnrollmentTypeDescriptorId IS 'E1641, C219. CampusEnrollmentType specifies the method by which the campus draws student enrollment.';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.EndDate IS 'End date of the effecive date for the CampusEnrollmentType';

-- Extended Properties [tx].[SchoolCharterWaitlistSet] --
COMMENT ON TABLE tx.SchoolCharterWaitlistSet IS 'CharterWaitlist with effective dates';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.BeginDate IS 'Begin date of the effecive date for the CharterWaitlistSet';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.CharterAdmissionWaitlist IS 'E1676. CharterAdmissionWaitlist indicates whether the charter school campus uses a waitlist for admission.';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.CharterEducationalEnrollmentCapacity IS 'E1675. CharterEducationalEnrollmentCapacity indicates the number of students to which the charter school’s campus is able to provide instruction without exceeding staffing and facility limitations and the approved charter holder''s maximum enrollment.';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.NumberCharterStudentsEnrolled IS 'E1674. NumberCharterStudentsEnrolled indicates the number of students enrolled at a charter school’s campus as of the last Friday in September.';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.EndDate IS 'End date of the effecive date for the CharterWaitlistSet';

-- Extended Properties [tx].[SchoolELOSet] --
COMMENT ON TABLE tx.SchoolELOSet IS 'ELOSet captures data (with effective dates) for school participation in expanded learning opportunities.';
COMMENT ON COLUMN tx.SchoolELOSet.BeginDate IS 'Begin date of the effecive date for the ELOSet';
COMMENT ON COLUMN tx.SchoolELOSet.ELOTypeDescriptorId IS 'E1614, C218. ELOType indicates the type of expanded learning opportunity (ELO) program offered at the campus.';
COMMENT ON COLUMN tx.SchoolELOSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolELOSet.EndDate IS 'End date of the effecive date for the ELOSet';

-- Extended Properties [tx].[SchoolELOSetELOActivitySet] --
COMMENT ON TABLE tx.SchoolELOSetELOActivitySet IS 'Collection of SchoolELOActivity. For each expanded learning opportunity offered by a school, more than one ELO activity can be reported.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.BeginDate IS 'Begin date of the effecive date for the ELOSet';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELOActivityDescriptorId IS 'E1719, C229. ELOActivity indicates the specific Expanded Learning Opportunity (ELO) activity offered at the campus';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELOTypeDescriptorId IS 'E1614, C218. ELOType indicates the type of expanded learning opportunity (ELO) program offered at the campus.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELODaysScheduledPerYear IS 'E1720. ELODaysScheduledPerYear indicates the number of days the Expanded Learning Opportunity (ELO) activity is offered during the school year.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELOMinutesScheduledPerDay IS 'E1621. ELOMinutesScheduledPerDay indicates the number of minutes scheduled each day for a given ELOActivity.';

-- Extended Properties [tx].[SchoolExtension] --
COMMENT ON TABLE tx.SchoolExtension IS '';
COMMENT ON COLUMN tx.SchoolExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolExtension.PKFullDayWaiver IS 'E1646. PKFullDayWaiver indicates whether the campus has received an exemption from offering a full-day prekindergarten program.';
COMMENT ON COLUMN tx.SchoolExtension.AdditionalDaysProgram IS 'E1671. AdditionalDaysProgram indicates whether the campus offers an Additional Days School Year program to any students in prekindergarten through fifth grades as described in TEC Sec. 48.0051.';
COMMENT ON COLUMN tx.SchoolExtension.NumberOfBullyingIncidents IS 'E1727. NumberOfBullyingIncidents indicates the number of reported incidents of bullying at each campus.';
COMMENT ON COLUMN tx.SchoolExtension.NumberOfCyberbullyingIncidents IS 'E1727. NumberOfCyberbullyingIncidents indicates the number of reported incidents of cyberbullying at each campus.';
COMMENT ON COLUMN tx.SchoolExtension.ExpandedLearningOpportunity IS 'E1613. ExpandedLearningOpportunity indicates if the campus offers any expanded learning opportunity (ELO) as listed in TEC 33.252.';

-- Extended Properties [tx].[SchoolNSLPTypeSet] --
COMMENT ON TABLE tx.SchoolNSLPTypeSet IS 'NSLPType with effective dates';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.BeginDate IS 'Begin date of the effecive date for the NSLPType';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.NSLPTypeDescriptorId IS 'E1591, C212. NSLPType indicates a campus''s  National School Lunch Program (NSLP) participation status.  The NSLP provides reimbursement to schools for free or reduced-price meals based on student eligibility.  Options for claiming reimbursement under the NSLP include:  eligibility determined at the individual student/family level (participation in NSLP without using any Provision or the Community Eligibility Program) or at the campus/community level (Provision 2 or Community Eligibility Program).';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.EndDate IS 'End date of the effecive date for the NSLPType';

-- Extended Properties [tx].[SectionSet] --
COMMENT ON TABLE tx.SectionSet IS 'Extensions to Section with effective dates.';
COMMENT ON COLUMN tx.SectionSet.BeginDate IS 'The month, day, and year for the start of the period.';
COMMENT ON COLUMN tx.SectionSet.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN tx.SectionSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SectionSet.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.SectionSet.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN tx.SectionSet.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN tx.SectionSet.PopulationServedDescriptorId IS 'E0747, C030. PopulationServed identifies the student population for which a service has been designed or is intended. It does not necessarily identify the program eligibility of the students who receive the service.';
COMMENT ON COLUMN tx.SectionSet.CourseSequenceDescriptorId IS 'E0948, C135. CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.';
COMMENT ON COLUMN tx.SectionSet.NonCampusBasedInstructionDescriptorId IS 'E1072, C182. NonCampusBasedInstruction indicates that a course was offered for class credit or student achievement, but 1) was not taught by a school district/charter school employee or a contracted teacher , or 2) was taught by a school district/charter school employee or a contracted teacher at a facility other than the campus where the student is enrolled. Examples include but are not limited to college based instruction, non-district teacher, non-campus teacher, internet based instruction, electronic Course Pilot (eCP), and Texas Virtual School Network (TxVSN).';
COMMENT ON COLUMN tx.SectionSet.PKCurriculaDescriptorId IS 'E1579, C206. PKCurricula indicates curricula used in the district’s prekindergarten program section TEC 29.1532(c)(6).';
COMMENT ON COLUMN tx.SectionSet.HighQualityPKProgram IS 'E1580. HighQualityPKProgram indicates campus/course/section participation in the High Quality Pre-K Program consistent with requirements in TEC 29.167-29.171.';
COMMENT ON COLUMN tx.SectionSet.PKStudentInstructionDescriptorId IS 'E1558, DC153. StudentInstruction indicates the PK student type of instruction.';
COMMENT ON COLUMN tx.SectionSet.PKSchoolTypeDescriptorId IS 'E1555, DC152. PKSchoolType indicates the PK program that is offered at the campus/course/section level.';
COMMENT ON COLUMN tx.SectionSet.PKProgramEvaluationTypeDescriptorId IS 'E1626, C216. ProgramEvaluationType indicates for each High-Quality PK course/section, the type of program evaluation tool that is used.';
COMMENT ON COLUMN tx.SectionSet.CTEHours IS 'CTEHours indicate the number of contact hours assigned to a particular section of a course.';
COMMENT ON COLUMN tx.SectionSet.ClassTypeDescriptorId IS 'E1055. ClassType identifies the type of class providing instruction to students in particular class settings.';
COMMENT ON COLUMN tx.SectionSet.EndDate IS 'The month, day, and year for the end of the period.';

-- Extended Properties [tx].[ServiceIdDescriptor] --
COMMENT ON TABLE tx.ServiceIdDescriptor IS 'Descriptor ServiceId is populated from code table C022.';
COMMENT ON COLUMN tx.ServiceIdDescriptor.ServiceIdDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[SharedServiceArrangementExt] --
COMMENT ON TABLE tx.SharedServiceArrangementExt IS 'The SharedServiceArrangementExtension Domain Entity represents the sum of the financial transactions to date for shared service arrangements.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 4 for the 2013-14 fiscal year.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.FundDescriptorId IS 'E0316. Fund identifies the fund group and specific fund (when applicable) for actual financial data.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.SSAMemberDistrictID IS 'E0981. SSAMemberDistrictID indicates the county-district number of the school district (as registered with the Texas Education Agency) which is a member district in the shared services arrangement.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.SSATypeDescriptorId IS 'E0776. SSAType indicates the type of program or service provided by a shared services arrangement.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.ActualAmount IS 'E0774. ActualAmount indicates the dollar value associated with actual financial account information.';

-- Extended Properties [tx].[SharedServiceArrangementStaffDescriptor] --
COMMENT ON TABLE tx.SharedServiceArrangementStaffDescriptor IS 'Descriptor SharedServiceArrangementStaff is populated from code table C169';
COMMENT ON COLUMN tx.SharedServiceArrangementStaffDescriptor.SharedServiceArrangementStaffDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[SSAOrgAssociationExt] --
COMMENT ON TABLE tx.SSAOrgAssociationExt IS 'The SSAOrgAssociationExtension Domain Entity identifies the ESC/LEA fiscal agents and the ESC and/or LEA member(s) for each type of shared services arrangement (SSA) that exists among two or more ESCs and or LEAs.';
COMMENT ON COLUMN tx.SSAOrgAssociationExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.SSAOrgAssociationExt.FiscalAgentDistrictID IS 'E0777. FiscalAgentDistrictID is the county-district number of the shared services arrangement fiscal agent registered with the Texas Education Agency.';
COMMENT ON COLUMN tx.SSAOrgAssociationExt.SSATypeDescriptorId IS 'E0776. SSAType indicates the type of program or service provided by the shared service arrangement.';

-- Extended Properties [tx].[SSATypeDescriptor] --
COMMENT ON TABLE tx.SSATypeDescriptor IS 'Descriptor SSAType is populated from Code Table C049.';
COMMENT ON COLUMN tx.SSATypeDescriptor.SSATypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StaffEducationOrganizationAssignmentAssociationExtension] --
COMMENT ON TABLE tx.StaffEducationOrganizationAssignmentAssociationExtension IS '';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.BeginDate IS 'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the LEA.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.SharedServiceArrangementStaffDescriptorId IS 'E1015, C169. SharedServiceArrangementStaff indicates whether the education service center staff responsibility being reported is part of a shared services arrangement for which the education service center is the fiscal agent.';

-- Extended Properties [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] --
COMMENT ON TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.BeginDate IS 'Begin date of the effecive date for the StaffServiceSet';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffServiceDescriptorId IS 'E0724. StaffService refers to the services supplied by staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.PopulationServedDescriptorId IS 'E0747, C030. identifies the student population for which a student has been designed or is intended. It does not necessarily identify the program eligibility of the students who receive the service.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.MonthlyMinutes IS 'E1057. MonthlyMinutes is the total number of minutes devoted to a particular service in a standard month. A standard month is considered to be the four weeks in October including the PEIMS Fall snapshot date (last Friday in October).';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.EndDate IS 'End date of the effecive date for the StaffServiceSet';

-- Extended Properties [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82] --
COMMENT ON TABLE tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 IS 'AuxiliaryRoleId with effective dates.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.AuxiliaryRoleIdDescriptorId IS 'E1594, C213. AuxiliaryRoleId identifies the capacity in which a non-exempt auxiliary employee serves.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.BeginDate IS 'Begin date of the effecive date for the AuxiliaryRoleId';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.EndDate IS 'End date of the effecive date for the AuxiliaryRoleId';

-- Extended Properties [tx].[StaffEducationOrganizationEmploymentAssociationExtension] --
COMMENT ON TABLE tx.StaffEducationOrganizationEmploymentAssociationExtension IS '';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.PercentDayEmployed IS 'E0760. PercentDayEmployed is that percentage of a standard district work day for which the employee is hired to work. For an employee on contract, the percentage may be determined directly from the contract: full-time = ''100''; half-time = ''50''; and so on. For an employee who is not on contract, the percentage may be determined as follows. Example: The standard work day for the district is 7 hours. An employee is hired to work for 4 hours a day. This data element is coded as ''57'' for this employee because 4/7 = .571, which is rounded down.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.NumberDaysEmployed IS 'E0160. NumberDaysEmployed indicates the actual number of at-work days within the school year that a person is scheduled to work in the district. This number does not include holidays, weekends, and any other days the employee is not scheduled to work.';

-- Extended Properties [tx].[StaffExtension] --
COMMENT ON TABLE tx.StaffExtension IS '';
COMMENT ON COLUMN tx.StaffExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffExtension.CreditableYearOfService IS 'E1721. CreditableYearOfService indicates a teacher (ROLE-ID 087) who currently qualifies for the TIA allotment or has been submitted by the LEA for a new or change of designation, and has been employed by the LEA and compensated or will be compensated by the LEA for a creditable year of service. (§153.1021)';
COMMENT ON COLUMN tx.StaffExtension.YearsExperienceInDistrict IS 'E0161. YearsExperienceInDistrict indicates the number of completed years that a person has been employed in any professional position in the current district or education service center, whether or not there has been any interruption in service.';
COMMENT ON COLUMN tx.StaffExtension.StaffID IS 'E0505. StaffID is the person''s Social Security number.';
COMMENT ON COLUMN tx.StaffExtension.PKTeacherRequirementDescriptorId IS 'E1581, C207. Each teacher of record for a prekindergarten program class serving eligible four-year-old students must be certified under Subchapter B, Chapter 21; and have one of the additional qualifications found in the C207 code table.';
COMMENT ON COLUMN tx.StaffExtension.TotalYearsProfExperience IS 'E0130. TotalYearsProfExperience indicates the number of verifiable years of creditable experience as specified in 19 TAC, Chapter 153.1021.';
COMMENT ON COLUMN tx.StaffExtension.TotalYearsPriorTeachingExperience IS 'E1377. TotalYearsPriorTeachingExperience indicates the total number of years that an individual has previously held a teaching position in one or more education institutions.';
COMMENT ON COLUMN tx.StaffExtension.GenerationCodeDescriptorId IS 'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';
COMMENT ON COLUMN tx.StaffExtension.AdditionalDaysProgramTeacher IS 'E1673. AdditionalDaysProgramTeacher indicates if a teacher is teaching students eligible for the additional days school year program as described in TEC Sec. §48.0051.';

-- Extended Properties [tx].[StaffParaprofessionalCertificationSet] --
COMMENT ON TABLE tx.StaffParaprofessionalCertificationSet IS 'ParaprofessionalCertification with effective dates';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.BeginDate IS 'Begin date of the effecive date for the StaffTypeSet';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.ParaprofessionalCertification IS 'E1670. ParaprofessionalCertification indicates whether a paraprofessional staff person is certified.';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.EndDate IS 'End date of the effecive date for the StaffTypeSet';

-- Extended Properties [tx].[StaffSectionAssociationExtension] --
COMMENT ON TABLE tx.StaffSectionAssociationExtension IS '';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberOfStudentInClass IS 'E0170. NumberOfStudentInClass indicates the number of students in membership in the class.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.MonthlyMinutes IS 'E1057. is the total number of minutes devoted to a particular service in a standard month. A standard month is considered to be the four weeks in October including the PEIMS Fall snapshot date (last Friday in October).';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek1 IS 'E1604. NumberDaysTaughtWeek1 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek2 IS 'E1605. NumberDaysTaughtWeek2 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek3 IS 'E1606. NumberDaysTaughtWeek3 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek4 IS 'E1607. NumberDaysTaughtWeek4 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek1 IS 'E1608. NumberMinutesTaughtWeek1 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek2 IS 'E1609. NumberMinutesTaughtWeek2 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek3 IS 'E1610. NumberMinutesTaughtWeek3 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek4 IS 'E1611. NumberMinutesTaughtWeek4 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SharedServiceArrangementStaffDescriptorId IS 'E1015, C169. SharedServiceArrangementStaff indicates whether the education service center staff responsibility being reported is part of a shared services arrangement for which the education service center is the fiscalagent.';

-- Extended Properties [tx].[StaffServiceDescriptor] --
COMMENT ON TABLE tx.StaffServiceDescriptor IS 'StaffService refers to the services supplied by staff.';
COMMENT ON COLUMN tx.StaffServiceDescriptor.StaffServiceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StaffTeacherIncentiveAllotmentDesignationCode] --
COMMENT ON TABLE tx.StaffTeacherIncentiveAllotmentDesignationCode IS 'E1722, DC165. TeacherIncentiveAllotmentDesignationCode indicates a teacher (ROLE-ID 087) is an Active National Board Certified Teacher, holds a current designation (Recognized, Exemplary, or Master) and/or has been submitted by an LEA for a new or change of designation in the Teacher Incentive Allotment.';
COMMENT ON COLUMN tx.StaffTeacherIncentiveAllotmentDesignationCode.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffTeacherIncentiveAllotmentDesignationCode.TeacherIncentiveAllotmentDesignationCodeDescriptorId IS 'E1722, DC165. TeacherIncentiveAllotmentDesignationCode indicates a teacher (ROLE-ID 087) is an Active National Board Certified Teacher, holds a current designation (Recognized, Exemplary, or Master) and/or has been submitted by an LEA for a new or change of designation in the Teacher Incentive Allotment.';

-- Extended Properties [tx].[StaffTypeDescriptor] --
COMMENT ON TABLE tx.StaffTypeDescriptor IS 'Descriptor StaffType is populated from code table C181';
COMMENT ON COLUMN tx.StaffTypeDescriptor.StaffTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StaffTypeSet] --
COMMENT ON TABLE tx.StaffTypeSet IS 'StaffType with effective dates';
COMMENT ON COLUMN tx.StaffTypeSet.BeginDate IS 'Begin date of the effecive date for the StaffTypeSet';
COMMENT ON COLUMN tx.StaffTypeSet.StaffTypeDescriptorId IS 'E1073, C181. StaffType indicates whether the staff person is on the district payroll or is a contracted professional staff person (instructional and non-instructional)';
COMMENT ON COLUMN tx.StaffTypeSet.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffTypeSet.EndDate IS 'End date of the effecive date for the StaffTypeSet';

-- Extended Properties [tx].[StudentAcademicRecordEndorsementPursuing] --
COMMENT ON TABLE tx.StudentAcademicRecordEndorsementPursuing IS 'E1544,E1545,E1546,E1547,E1548. EndorsementPursuing indicates whether a student is currently enrolled in (pursuing) or has successfully completed a FHSP program to earn an endorsement.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.EndorsementPursuingDescriptorId IS 'E1544,E1545,E1546,E1547,E1548. EndorsementPursuing indicates whether a student is currently enrolled in (pursuing) or has successfully completed a FHSP program to earn an endorsement.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.TermDescriptorId IS 'The term for the session during the school year.';

-- Extended Properties [tx].[StudentAcademicRecordExtension] --
COMMENT ON TABLE tx.StudentAcademicRecordExtension IS '';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.AssociateDegreeIndicator IS 'E1596. AssociateDegreeIndicator indicates that the student earned an associate degree prior to graduation from high school. ';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.IndividualGraduationCommitteeReview IS 'E1563. IndividualGraduationCommitteeReview indicates whether an IGC has been established for a student regardless of which graduation program type is being pursued.  This is collected for students in grades 11 and 12.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.FHSPParticipant IS 'E1541. FHSPParticipant indicates whether a student is currently enrolled in the Foundation High School Program.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.FHSPDistingLevelParticipant IS 'E1542. FHSPDistingLevelParticipant indicates whether a student is currently pursuing or has successfully completed the distinguished level of achievement under the Foundation High School Program as provided by TEC 28.025 (b-15).';

-- Extended Properties [tx].[StudentAcademicRecordIndustryBasedCertificationSet] --
COMMENT ON TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet IS 'Common Type IndustryBasedCertificationSet.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.BeginDate IS 'Begin date of the effecive date for the IndustryBasedCertificationSet';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.DateCertEarned IS 'E1632. DateCertEarned indicates the date upon which the associated data value(s) is/are considered to take effect, or the associated data value(s) change(s).';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.IBCVendorDescriptorId IS 'E1655. IBCVendorCode identifies the organization or company that offered the service.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.PostSecondaryCertificationLicensureDescriptorId IS 'E1640. PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.IBCExamFeeAmount IS 'E1654. IBCExamFeeAmount identifies the amount of money that was paid for a student’s industry certification exam by the local education agency.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.EndDate IS 'End date of the effecive date for the IndustryBasedCertificationSet';

-- Extended Properties [tx].[StudentApplication] --
COMMENT ON TABLE tx.StudentApplication IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.StudentApplication.ApplicationIdentifier IS 'ApplicationIdentifier is a unique number or alphanumeric code assigned to an application.';
COMMENT ON COLUMN tx.StudentApplication.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentApplication.SchoolYear IS 'E1093. The identifier for the school year.';
COMMENT ON COLUMN tx.StudentApplication.StudentUID IS 'E1523. StudentUID (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.StudentApplication.SexDescriptorId IS 'E1325, DC119. A person''s gender.';
COMMENT ON COLUMN tx.StudentApplication.EntryGradeLevelDescriptorId IS 'E1517, DC063. The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.';
COMMENT ON COLUMN tx.StudentApplication.ApplicationDate IS 'ApplicationDate is the month, day, and year the application was submitted.';
COMMENT ON COLUMN tx.StudentApplication.ApplicationTypeDescriptorId IS 'ApplicationType indicates the type of application submitted.';
COMMENT ON COLUMN tx.StudentApplication.PersonalTitlePrefix IS 'A prefix used to denote the title, degree, position, or seniority of the person.';
COMMENT ON COLUMN tx.StudentApplication.FirstName IS 'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.';
COMMENT ON COLUMN tx.StudentApplication.MiddleName IS 'A secondary name given to an individual at birth, baptism, or during another naming ceremony.';
COMMENT ON COLUMN tx.StudentApplication.LastSurname IS 'The name borne in common by members of a family.';
COMMENT ON COLUMN tx.StudentApplication.GenerationCodeSuffix IS 'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).';
COMMENT ON COLUMN tx.StudentApplication.MaidenName IS 'The person''s maiden name.';
COMMENT ON COLUMN tx.StudentApplication.BirthDate IS 'The month, day, and year on which an individual was born.';
COMMENT ON COLUMN tx.StudentApplication.BirthCity IS 'The city the student was born in.';
COMMENT ON COLUMN tx.StudentApplication.BirthStateAbbreviationDescriptorId IS 'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.';
COMMENT ON COLUMN tx.StudentApplication.BirthInternationalProvince IS 'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.';
COMMENT ON COLUMN tx.StudentApplication.BirthCountryDescriptorId IS 'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN tx.StudentApplication.DateEnteredUS IS 'For students born outside of the U.S., the date the student entered the U.S.';
COMMENT ON COLUMN tx.StudentApplication.MultipleBirthStatus IS 'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)';
COMMENT ON COLUMN tx.StudentApplication.BirthSexDescriptorId IS 'A person''s gender at birth.';

-- Extended Properties [tx].[StudentApplicationPersonalIdentificationDocument] --
COMMENT ON TABLE tx.StudentApplicationPersonalIdentificationDocument IS 'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.ApplicationIdentifier IS 'ApplicationIdentifier is a unique number or alphanumeric code assigned to an application.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IdentificationDocumentUseDescriptorId IS 'The primary function of the document used for establishing identity.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.PersonalInformationVerificationDescriptorId IS 'The category of the document relative to its purpose.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.SchoolYear IS 'E1093. The identifier for the school year.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.DocumentTitle IS 'The title of the document given by the issuer.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.DocumentExpirationDate IS 'The day when the document  expires, if null then never expires.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IssuerDocumentIdentificationCode IS 'The unique identifier on the issuer''s identification system.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IssuerName IS 'Name of the entity or institution that issued the document.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IssuerCountryDescriptorId IS 'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';

-- Extended Properties [tx].[StudentAttributionDescriptor] --
COMMENT ON TABLE tx.StudentAttributionDescriptor IS 'Descriptor StudentAttribution is based on code table C161.';
COMMENT ON COLUMN tx.StudentAttributionDescriptor.StudentAttributionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StudentCensusBlockGroupSet] --
COMMENT ON TABLE tx.StudentCensusBlockGroupSet IS 'StudentCensusBlockGroup indicates the census block in which the student resides.';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.BeginDate IS 'Begin date of the effecive date for the StudentCensusBlockGroup';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.StudentCensusBlockGroup IS 'E1648. StudentCensusBlockGroup indicates the census block in which the student resides.';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.EndDate IS 'End date of the effecive date for the StudentCensusBlockGroup';

-- Extended Properties [tx].[StudentCrisisEventSet] --
COMMENT ON TABLE tx.StudentCrisisEventSet IS 'CommonType CrisisEvent indicates a state health or weather-related event that impacts a group of students, and may require additional funding, educational, or social services. The event may or may not cause the student to leave the district or campus of residence.  A crisis event is designated by the Commissioner of Education.';
COMMENT ON COLUMN tx.StudentCrisisEventSet.BeginDate IS 'Begin date of the effecive date for the CrisisEvent';
COMMENT ON COLUMN tx.StudentCrisisEventSet.CrisisEventDescriptorId IS 'E1054, C178. Descriptor CrisisEvent indicates a state health or weather-related event that impacts a group of students, and may require additional funding, educational, or social services. The event may or may not cause the student to leave the district or campus of residence.  A crisis event is designated by the Commissioner of Education.';
COMMENT ON COLUMN tx.StudentCrisisEventSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentCrisisEventSet.EndDate IS 'End date of the effecive date for the CrisisEvent';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationDyslexiaRiskSet IS 'DyslexiaRisk with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.BeginDate IS 'Begin date of the effecive date for the DyslexiaRisk';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.DyslexiaRiskDescriptorId IS 'E1644, C222. Descriptor DyslexiaRisk';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.EndDate IS 'End date of the effecive date for the DyslexiaRisk';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationDyslexiaServicesSet IS 'DyslexiaServicesSet with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.BeginDate IS 'Begin date of the effecive date for the DyslexiaServices';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.DyslexiaServicesDescriptorId IS 'E1650, C224. DyslexiaServices indicates the type of dyslexia or related service a student has received at any time during the school year.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.EndDate IS 'End date of the effecive date for the DyslexiaServices';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet IS 'EarlyReadingIndicator with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.BeginDate IS 'Begin date of the effecive date for the EarlyReadingIndicator';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.EarlyReadingIndicatorDescriptorId IS 'E1522, C195. EarlyReadingIndicator indicates whether a student is eligible for accelerated reading instruction as indicated by the administered reading instrument.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.EndDate IS 'End date of the effecive date for the EarlyReadingIndicator';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet IS 'EconomicDisadvantage with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.BeginDate IS 'Begin date of the effecive date for the EconomicDisadvantage';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.EconomicDisadvantageDescriptorId IS 'E0785, C054. EconomicDisadvantage indicates the student''s economic disadvantage status.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.EndDate IS 'End date of the effecive date for the EconomicDisadvantage';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet IS 'EmergentBilingualSet with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.BeginDate IS 'Begin date of the effecive date for the EmergentBilingualSet';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.EmergentBilingualIndicatorDescriptorId IS 'Descriptor EmergentBilingualIndicator indicates that the student has been identified as an emergent bilingual (EB) student by the Language Proficiency Assessment Committee (LPAC), or English proficient.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.EndDate IS 'End date of the effecive date for the EmergentBilingualSet';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet IS 'FosterCareType  with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.BeginDate IS 'Begin date of the effecive date for the FosterCareType';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.FosterCareTypeDescriptorId IS 'E1528, C196. FosterCareType indicates whether a student is in the conservatorship of the Department of Family and Protective Services (DFPS) currently, or for a prekindergarten student that was previously in the conservatorship of DFPS, or for a prekindergarten student that is or ever has been in foster care in another state or territory, if the student resides in this state (Texas).';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.EndDate IS 'End date of the effecive date for the FosterCareType';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet IS 'HomelessStatus  with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.BeginDate IS 'Begin date of the effecive date for the HomelessStatus';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.HomelessStatusDescriptorId IS 'E1082, C189. As defined by 42 U.S.C. Section 11434(a), the term “homeless children and youths” —
(A) means individuals who lack a fixed, regular, and adequate nighttime residence [within the meaning of section 11302(a)(1)]; and

(B) includes —

(i) children and youths who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters

(ii) children and youths who have a primary nighttime residence that is a public or private place not designed for or ordinarily used as a regular sleeping accommodation for human beings [within the meaning of section 11302(a)(2)(C)];

(iii) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings; and

(iv) migratory children (as such term is defined in section 6399 of title 20) who qualify as homeless for the purposes of this subtitle because the children are living in circumstances described in clauses (i) through (iii).';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.EndDate IS 'End date of the effecive date for the HomelessStatus';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationLanguageSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationLanguageSet IS 'LanguageSet being used';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSet.BeginDate IS 'Begin date of the effecive date for the Language';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSet.LanguageDescriptorId IS 'A specification of which written or spoken communication is being used.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSet.EndDate IS 'End date of the effecive date for the Language';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationLanguageSetLanguageUse] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse IS 'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse.BeginDate IS 'Begin date of the effecive date for the Language';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse.LanguageDescriptorId IS 'A specification of which written or spoken communication is being used.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse.LanguageUseDescriptorId IS 'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationLanguageSetLanguageUse.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationMilitaryConnected_662c97] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 IS 'MilitaryConnectedStudentIndicator with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.BeginDate IS 'Begin date of the effecive date for MilitaryConnectedStudent';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.MilitaryConnectedStudentDescriptorId IS 'E1529, C197. MilitaryConnectedStudent indicates a student enrolled in a school district or open-enrollment charter school who is a dependent of an active duty or former member of the United States military, the Texas National Guard, or a reserve force of the United States military, or who is a dependent of a member of the United States military, the Texas National Guard, or a reserve force of the United States military who was killed in the line of duty.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.EndDate IS 'End date of the effecive date for MilitaryConnectedStudent';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationPKFundingSourceSet IS 'PKFundingSource with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.BeginDate IS 'Begin date of the effecive date for the PKFundingSource';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.OrderOfPKFundingSource IS 'Order of PK Funding Source.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.PKFundingSourceDescriptorId IS 'E1079, E1080, C186. PKFundingSource indicates the source of funding for a Pre-kindergarten student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.EndDate IS 'End date of the effecive date for the PKFundingSource';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationPKProgramTypeSet IS 'PKProgramType with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.BeginDate IS 'Begin date of the effecive date for the PKProgramType';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.PKProgramTypeDescriptorId IS 'E1078, C185. PKProgramType indicates the length of the Prekindergarten instructional day for a particular Prekindergarten student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.EndDate IS 'End date of the effecive date for the PKProgramType';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationTruancySet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationTruancySet IS 'TruancySet represents truancy data associated to students.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.DateMet IS 'DateMet.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.TruancyDescriptorId IS 'E1657,E1658,E1659. Truancy descriptor.';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet IS 'UnaccompaniedYouthStatus with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.BeginDate IS 'Begin date of the effecive date for the UnaccompaniedYouth';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.UnaccompaniedYouthDescriptorId IS 'E1084, C192. As defined by NCLB, Title X, Part C, Section 725(6), the term “unaccompanied youth” means a youth not in the physical custody of a parent or guardian.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.EndDate IS 'End date of the effecive date for the UnaccompaniedYouth';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b IS 'UnschooledAsyleeRefugee with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.BeginDate IS 'Begin date of the effecive date for UnschooledAsyleeRefugee';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.UnschooledAsyleeRefugeeDescriptorId IS 'E1076, C183. As defined by NCLB, Title X, Part C, Section 725(6), the term “unaccompanied youth” means a youth not in the physical custody of a parent or guardian.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.EndDate IS 'End date of the effecive date for UnschooledAsyleeRefugee';

-- Extended Properties [tx].[StudentExtension] --
COMMENT ON TABLE tx.StudentExtension IS '';
COMMENT ON COLUMN tx.StudentExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentExtension.LocalStudentID IS 'E0923. LocalStudentId is the student''s local identification number as assigned by the district.';
COMMENT ON COLUMN tx.StudentExtension.StudentID IS 'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.';
COMMENT ON COLUMN tx.StudentExtension.GenerationCodeDescriptorId IS 'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';
COMMENT ON COLUMN tx.StudentExtension.AsOfStatusLastFridayOctoberDescriptorId IS 'AsOfStatusLastFridayOctober indicates the student’s status in the district on the last Friday in October in the current school year.';
COMMENT ON COLUMN tx.StudentExtension.AsOfStatusLastDayEnrollmentDescriptorId IS 'AsOfStatusLastDayEnrollment indicates the student’s status in the district on the last day of school or last date of enrollment in the current school year.';

-- Extended Properties [tx].[StudentLanguageInstructionProgramAssociationParentalPerm_710c81] --
COMMENT ON TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 IS 'ParentalPermissionSet with effective dates.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ParentalPermissionDescriptorId IS 'E0896, C093. ParentalPermission indicates whether the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.)';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ParentPermissionSetBeginDate IS 'ParentalPermissionSetBeginDate';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ParentPermissionSetEndDate IS 'ParentalPermissionSetBeginDate';

-- Extended Properties [tx].[StudentSchoolAssociationExtension] --
COMMENT ON TABLE tx.StudentSchoolAssociationExtension IS '';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.ADAEligibilityDescriptorId IS 'E0787, C059. ADAEligibility indicates the eligibility status of the student as reflected in the attendance accounting records of the district.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.StudentAttributionDescriptorId IS 'E1000, C161. is a characteristic of a student relating to their individual enrollment circumstances.  It indicates whether the student:
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
- student-initiated transfer due to remote learning.';

-- Extended Properties [tx].[StudentSectionAssociationExtension] --
COMMENT ON TABLE tx.StudentSectionAssociationExtension IS '';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.BeginDate IS 'Month, day, and year of the Student''s entry or assignment to the Section.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.CourseCompletionIndicator IS 'E1068. CourseCompletionIndicator indicates whether or not the student finished the full sequence of instruction for a course.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationAssessment] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationAssessment IS 'Assessment represents the assessments conducted to evaluate a student’s language acquisition.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ToolOrAssessmentUsedDescriptorId IS 'E1668, DC162. ToolOrAssessmentUsed identifies the tool or assessment used to assess the student’s language acquisition.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.AssessmentResultsObtainedDescriptorId IS 'E1669, DC163. AssessmentResultsObtained identifies the result of tools or assessments used to assess the student’s language acquisition.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationDisabilitySet IS 'DisabilitySet';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.DisabilityDescriptorId IS 'A disability category that describes a child''s impairment.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.DisabilitySetBeginDate IS 'DisabilitySetBeginDate';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.EligibilityDateDisabilities IS 'EligibilityDateDisabilities indicates the date upon which a student who is deaf or hard of hearing is eligible for services.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.DisabilitySetEndDate IS 'DisabilitySetEndDate';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.OrderOfDisability IS 'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationESYProgramAssociation] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationESYProgramAssociation IS 'ESYProgramAssociation represents the students who served through the Extended School Year (ESY) Services Program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.TotalESYContactHoursInstructionalSetting IS 'E1013. TotalESYContactHoursInstructionalSetting indicates the total contact hours in an instructional setting provided to the student through the extended school year services component of special education.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationESYProgramAssociation.OrderOfSpecialEducationSetting IS 'OrderOfSpecialEducationSetting indicates the order of Special Education Setting';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationExtension] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationExtension IS '';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.PreferredHomeCommunicationMethodDescriptorId IS 'E1661, DC155. PreferredHomeCommunicationMethod identifies the preferred unique communication method used by the child at home.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification IS 'HearingAmplification represents the hearing amplification device(s), access and use for a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.HearingAmplificationTypeDescriptorId IS 'E1665, DC159. HearingAmplificationType identifies the type of hearing amplification device used by the student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.HearingAmplificationAccessDescriptorId IS 'E1666, DC160.HearingAmplificationAccess identifies whether the student has access to the hearing amplification device for the full-day or partial day for each HEARING-AMPLIFICATION-TYPE reported.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.HearingAmplifAvgDailyUseDescriptorId IS 'E1667, DC161.HearingAmplifAvgDailyUse identifies the average amount of time the hearing amplification device is used in a day based on the HEARING-AMPLIFICATION-ACCESS reported.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition IS 'LanguageAcquisition represents the language acquisition services a student has received.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.LangAcqServicesProvidedDescriptorId IS 'E1662, DC156. LangAcqServicesProvided indicates the specific language acquisition services provided to the student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.FrequencyOfServicesDescriptorId IS 'E1663, DC157. FrequencyOfServices identifies the frequency with which a student receives services.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.HoursSpentReceivingServicesDescriptorId IS 'E1664, DC158. HoursSpentReceivingServices identifies the amount of time in which the student receives services.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076 IS 'StudentSPEDProgramAssociationSet represents the Student SPED Program Association Settings with effective dates.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.OrderOfSpecialEducationSetting IS 'OrderOfSpecialEducationSetting identifies the oredr if Special Education Setting.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.SettingBeginDate IS 'SpecialEducationSettingSetBeginDate';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.SpecialEducationSettingDescriptorId IS 'E0173, C035. SpecialEducationSetting identifies the setting used in providing instruction to students.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationSpecialEducatio_c5b076.SettingEndDate IS 'SpecialEducationSettingSetEndDate';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationStudentResident_727129] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_727129 IS 'StudentResidentialFacilityAssociation captures enrollment data for students enrolled at a residential facility during a particular school year.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.DateEnteredRF IS 'E1630. DateEnteredRF indicates the date the student enters the residential facility. ';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ResidentialFacilityID IS 'E1627. ResidentialFacilityId denotes the residential facility enrolling the student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.DateExitedRF IS 'E1631. DateExitedRF indicates the date the student exits the residential facility. ';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.CampusIDOfEnrollment IS 'E0782. CampusIdOfEnrollment indicates the unique campus identification number of the campus in which the student is enrolled.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.AttendanceZoneCampus IS 'E1633. AttendanceZoneCampus is the 9-digit identifying number (assigned by the TEA) of the campus the student is expected to attend based on the geographic location (address) of the residential facility in which the student resides.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.EducatedAtResidentialFacility IS 'E1634. EducatedAtResidentialFacility indicates whether a student is educated at or in the general location of a residential facility.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.SurrogateParentAssigned IS 'E1635. SurrogateParentAssigned indicates whether the student has been assigned a surrogate parent.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.NumberOtherStudentsAssignedSameSurrogateParent IS 'E1636. NumberOtherStudentsAssignedSameSurrogateParent indicates how many other students have been assigned to the same surrogate parent.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ResidentialFacilityStudentSchoolDayLength IS 'E1637. ResidentialFacilityStudentSchoolDayLength indicates the number of minutes the residential facility student receives instruction based on the Individualized Education Plan (IEP).';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.CampusIDOfEnrollmentSchoolDayLength IS 'E1638. CampusIdOfEnrollmentSchoolDayLength indicates the number of instructional minutes in a school day for a non-disabled peer at the campus ID of enrollment.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 IS 'StudentSPEDProgramAssociationSet representshe MedicallyFragile, MultiplyDisabled, LEAOfRDSPDService, ChildCountFunding, PPCDServiceLocation with effective dates.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramBeginDate IS 'StudentSPEDProgramAssociationSetBeginDate';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.MedicallyFragile IS 'E0999. MedicallyFragile indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and4) lives with ongoing threat to his or her continued well-being.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.MultiplyDisabled IS 'E0882. MultiplyDisabled indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.LEAOfRDSPDService IS 'E1527. LEAOfRDSPDService indicates the RDSPD Fiscal Agent district that provides the RDSPD service to a particular RDSPD student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ChildCountFundingDescriptorId IS 'E0832, C066. ChildCountFunding indicates under which federal program the student receiving special education and related services is counted.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.PPCDServiceLocationDescriptorId IS 'E1077, C184. PPCDServiceLocation indicates whether or not the Preschool Program for Children with Disabilities (PPCD) student received their special education services in a regular early childhood program, which is defined as a program that is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)).';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramEndDate IS 'StudentSPEDProgramAssociationSetEndDate';

-- Extended Properties [tx].[StudentSpecialEducationProgramEligibilityAssociation] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramEligibilityAssociation IS 'This is the Child Find collection. Child Find combines State Performance Plan Indicator 11 (SPPI-11) and State Performance Plan Indicator 12 (SPPI-12) in the TSDS Core Collection. SPPI-11 refers to the timely evaluation of students, ages 3-21, for special education services under Part B of IDEA. SPPI-12 refers to children who are referred from Part C of IDEA prior to age 3, found eligible for Part B of IDEA, and have an individualized education plan (IEP) developed and implemented by their third birthday to receive early childhood special education (ECSE) services from a local education agency (LEA).';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.ConsentToEvaluationReceivedDate IS 'E1714. ConsentToEvaluationReceivedDate indicates the month, day, and year of the first instructional day following the date on which the Local Education Agency (LEA) received written consent for the full individual and initial evaluation (FIIE) from the student''s parent. The date entered for this data element counts as day 1 of the timeframe required for completing the FIIE.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EligibilityEvaluationDate IS 'E1715. EligibilityEvaluationDate indicates the month, day, and year when the written full individual and initial evaluation (FIIE) report was completed.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EvaluationDelayDays IS 'E1711. EvaluationDelayDays indicates the number of student absences, if any, beginning the first instructional day following the date on which the Local Education Agency (LEA) received written parental consent for the full individual and initial evaluation (FIIE) report.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EvaluationDelayReasonDescriptorId IS 'E1718, DC164. EvaluationDelayReason refers to the justification as to why the written full individual and initial evaluation (FIIE) report was completed beyond the State-established 45 instructional day timeframe for state performance plan indicator 11 (SPPI-11), or the justification as to why a child who was receiving early childhood intervention (ECI) services had their eligibility for early childhood special education (ECSE) determined beyond the child’s third birthday for SPPI-12.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EligibilityDeterminationDate IS 'E1716. EligibilityDeterminationDate indicates the month, day, and year the LEA held the admission, review, and dismissal (ARD) committee meeting regarding the child’s initial eligibility determination for special education and related services.  An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.IDEAIndicator IS 'E1717. IDEAIndicator indicates whether or not the student was determined eligible and enrolled in special education and related services as a result of the full individual and initial evaluation (FIIE) report and the admission, review, and dismissal (ARD) committee meeting decision.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.OriginalECIServicesDate IS 'E0900, E1632. OriginalECIServicesDate is the month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention program. (See Texas Human Resources Code §73.001 and 73.021)';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.TransitionNotificationDate IS 'E1712. TransitionNotificationDate indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE).  The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent may opt out from the referral.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.TransitionConferenceDate IS 'E1713. TransitionConferenceDate indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the LEA where the child resides to discuss the child’s potential eligibility for early childhood special education (ECSE) services.';

-- Extended Properties [tx].[StudentTitleIPartAProgramAssociationSet] --
COMMENT ON TABLE tx.StudentTitleIPartAProgramAssociationSet IS 'StudentTitleIPartAProgramAssociationSet with effective dates.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.ProgramName IS 'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.StudentTitleIPartAProgramAssociationSetBeginDate IS 'StudentTitleIPartAProgramAssociationBeginDate';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.TitleIPartAParticipantDescriptorId IS 'E0894, C122. An indication of the type of Title I program, if any, in which the student is participating and by which the student is served.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.StudentTitleIPartAProgramAssociationSetEndDate IS 'StudentTitleIPartAProgramAssociationEndDate';

-- Extended Properties [tx].[TeacherIncentiveAllotmentDesignationCodeDescriptor] --
COMMENT ON TABLE tx.TeacherIncentiveAllotmentDesignationCodeDescriptor IS 'Descriptor TeacherIncentiveAllotmentDesignationCode is based on code table DC165';
COMMENT ON COLUMN tx.TeacherIncentiveAllotmentDesignationCodeDescriptor.TeacherIncentiveAllotmentDesignationCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[TitleOfAssessmentDescriptor] --
COMMENT ON TABLE tx.TitleOfAssessmentDescriptor IS 'Descriptor TitleOfAssessment is populated from Code Table DC154.';
COMMENT ON COLUMN tx.TitleOfAssessmentDescriptor.TitleOfAssessmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ToolOrAssessmentUsedDescriptor] --
COMMENT ON TABLE tx.ToolOrAssessmentUsedDescriptor IS 'Descriptor ToolOrAssessmentUsed identifies the tool or assessment used to assess the student’s language acquisition. (DC162)';
COMMENT ON COLUMN tx.ToolOrAssessmentUsedDescriptor.ToolOrAssessmentUsedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[TruancyDescriptor] --
COMMENT ON TABLE tx.TruancyDescriptor IS 'Truancy descriptor';
COMMENT ON COLUMN tx.TruancyDescriptor.TruancyDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[UnaccompaniedYouthDescriptor] --
COMMENT ON TABLE tx.UnaccompaniedYouthDescriptor IS 'Descriptor UnaccompaniedYouth is populated from Code Table C192.';
COMMENT ON COLUMN tx.UnaccompaniedYouthDescriptor.UnaccompaniedYouthDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[UnaccompaniedYouthPriorYearDescriptor] --
COMMENT ON TABLE tx.UnaccompaniedYouthPriorYearDescriptor IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.UnaccompaniedYouthPriorYearDescriptor.UnaccompaniedYouthPriorYearDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[UnschooledAsyleeRefugeeDescriptor] --
COMMENT ON TABLE tx.UnschooledAsyleeRefugeeDescriptor IS 'Descriptor UnschooledAsyleeRefugee is populated from Code Table C183.';
COMMENT ON COLUMN tx.UnschooledAsyleeRefugeeDescriptor.UnschooledAsyleeRefugeeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[UnschooledAsyleeRefugeePriorYearDescriptor] --
COMMENT ON TABLE tx.UnschooledAsyleeRefugeePriorYearDescriptor IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.UnschooledAsyleeRefugeePriorYearDescriptor.UnschooledAsyleeRefugeePriorYearDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

