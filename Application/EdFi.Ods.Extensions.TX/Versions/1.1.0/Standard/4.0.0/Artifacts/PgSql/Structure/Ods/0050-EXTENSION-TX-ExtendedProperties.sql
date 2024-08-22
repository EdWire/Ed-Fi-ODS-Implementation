-- Extended Properties [tx].[AcceleratedInstructionSubjectDescriptor] --
COMMENT ON TABLE tx.AcceleratedInstructionSubjectDescriptor IS 'E3084. AcceleratedInstructionSubject indicates the subject in which the student is eligible to receive accelerated instruction.';
COMMENT ON COLUMN tx.AcceleratedInstructionSubjectDescriptor.AcceleratedInstructionSubjectDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ActualFunctionDescriptor] --
COMMENT ON TABLE tx.ActualFunctionDescriptor IS 'Descriptor Function is populated from Code Table C146A.';
COMMENT ON COLUMN tx.ActualFunctionDescriptor.ActualFunctionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ActualFundDescriptor] --
COMMENT ON TABLE tx.ActualFundDescriptor IS 'Descriptor Fund is populated from Code Table C145A.';
COMMENT ON COLUMN tx.ActualFundDescriptor.ActualFundDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ActualObjectDescriptor] --
COMMENT ON TABLE tx.ActualObjectDescriptor IS 'Descriptor Object is populated from Code Table C159A.';
COMMENT ON COLUMN tx.ActualObjectDescriptor.ActualObjectDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ActualProgramIntentDescriptor] --
COMMENT ON TABLE tx.ActualProgramIntentDescriptor IS 'Descriptor ProgramIntent is populated from Code Table C147A.';
COMMENT ON COLUMN tx.ActualProgramIntentDescriptor.ActualProgramIntentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ADAEligibilityDescriptor] --
COMMENT ON TABLE tx.ADAEligibilityDescriptor IS 'Descriptor ADAEligibility is populated from Code Table C059.';
COMMENT ON COLUMN tx.ADAEligibilityDescriptor.ADAEligibilityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ApiOperationTypeDescriptor] --
COMMENT ON TABLE tx.ApiOperationTypeDescriptor IS 'Represents the type of operation on the API, e.g. create, delete, update';
COMMENT ON COLUMN tx.ApiOperationTypeDescriptor.ApiOperationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ApplicationTypeDescriptor] --
COMMENT ON TABLE tx.ApplicationTypeDescriptor IS 'Descriptor ApplicationType is populated from Code Table C327.';
COMMENT ON COLUMN tx.ApplicationTypeDescriptor.ApplicationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ArmedServicesVocAptBatteryDescriptor] --
COMMENT ON TABLE tx.ArmedServicesVocAptBatteryDescriptor IS 'Descriptor ArmedServicesVocAptBattery is populated from code table C217.';
COMMENT ON COLUMN tx.ArmedServicesVocAptBatteryDescriptor.ArmedServicesVocAptBatteryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AsOfStatusLastDayEnrollmentDescriptor] --
COMMENT ON TABLE tx.AsOfStatusLastDayEnrollmentDescriptor IS 'E3006. AsOfStatusLastDayEnrollment indicates the student''s status in the district on the last day of school or last date of enrollment in the current school year.';
COMMENT ON COLUMN tx.AsOfStatusLastDayEnrollmentDescriptor.AsOfStatusLastDayEnrollmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AsOfStatusLastFridayOctoberDescriptor] --
COMMENT ON TABLE tx.AsOfStatusLastFridayOctoberDescriptor IS 'E3007. AsOfStatusLastFridayOctober indicates the student''s status in the local education agency on the last Friday in October in the current school year.';
COMMENT ON COLUMN tx.AsOfStatusLastFridayOctoberDescriptor.AsOfStatusLastFridayOctoberDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AssessmentExtension] --
COMMENT ON TABLE tx.AssessmentExtension IS '';
COMMENT ON COLUMN tx.AssessmentExtension.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN tx.AssessmentExtension.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN tx.AssessmentExtension.ReportAssessmentTypeDescriptorId IS 'E1573, C306. ReportAssessmentType indicates the TEA collection for which the assessment should be reported.';
COMMENT ON COLUMN tx.AssessmentExtension.TitleOfAssessmentDescriptorId IS 'E1127, C312. The title or name of the assessment.';

-- Extended Properties [tx].[AssessmentResultsObtainedDescriptor] --
COMMENT ON TABLE tx.AssessmentResultsObtainedDescriptor IS 'Descriptor AssessmentResultsObtained identifies the result of tools or assessments used to assess the student''s language acquisition. (DC163)';
COMMENT ON COLUMN tx.AssessmentResultsObtainedDescriptor.AssessmentResultsObtainedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AssociateDegreeIndicatorDescriptor] --
COMMENT ON TABLE tx.AssociateDegreeIndicatorDescriptor IS 'Descriptor Function is populated from Code Table C235.';
COMMENT ON COLUMN tx.AssociateDegreeIndicatorDescriptor.AssociateDegreeIndicatorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[AuxiliaryRoleIdDescriptor] --
COMMENT ON TABLE tx.AuxiliaryRoleIdDescriptor IS 'Descriptor AuxiliaryRoleId is populated from code table C213.';
COMMENT ON COLUMN tx.AuxiliaryRoleIdDescriptor.AuxiliaryRoleIdDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[BasicReportingPeriodAttendance] --
COMMENT ON TABLE tx.BasicReportingPeriodAttendance IS 'This extended entity represents the recording of a student''s regular (basic) reporting period attendance.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.NumberOfHoursInRPEP IS 'E3090. NumberOfHoursInRPEP captures the number of hours during a particular reporting period a student participates in the Rural Pathway Excellence Partnership (R-PEP) program.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.RATotalEligibleDaysPresent IS 'E1679. RATotalEligibleDaysPresent indicates the total number of days the student was remote asynchronous present and eligible for Foundation School Program funding during a particular reporting period.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.RSTotalEligibleDaysPresent IS 'E1678. RSTotalEligibleDaysPresent indicates the total number of days the student was remote synchronous present and eligible for Foundation School Program funding during a particular reporting period.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.TotalDaysAbsent IS 'E0036. TotalDaysAbsent indicates the total number of days the student was absent during a particular reporting period.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.TotalEligibleDaysPresent IS 'E0937. TotalEligibleDaysPresent indicates the total number of days the student was present and eligible for Foundation School Program funding during a particular reporting period.';
COMMENT ON COLUMN tx.BasicReportingPeriodAttendance.TotalIneligibleDaysPresent IS 'E0936. TotalIneligibleDaysPresent indicates the total number of days the student was present and ineligible for Foundation School Program funding during a particular reporting period.';

-- Extended Properties [tx].[BilingualESLFundingDescriptor] --
COMMENT ON TABLE tx.BilingualESLFundingDescriptor IS 'Descriptor BilingualESLFunding is based on code table C225.';
COMMENT ON COLUMN tx.BilingualESLFundingDescriptor.BilingualESLFundingDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[BilingualESLProgramReportingPeriodAttendance] --
COMMENT ON TABLE tx.BilingualESLProgramReportingPeriodAttendance IS 'This extended entity represents the bilingual/ESL program attendance of a student.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.BilingualESLFundingDescriptorId IS 'E1651, C225. BilingualESLFunding indicates the language program in which the student participates during the reporting period.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.RATotalEligBilingualESLDaysPresent IS 'E1683. RATotalEligBilingualESLDaysPresent indicates the total number of days the student was remote asynchronous present and an eligible participant in the state-approved bilingual/ESL program during a particular reporting period.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.RSTotalEligBilingualESLDaysPresent IS 'E1682. RSTotalEligBilingualESLDaysPresent indicates the total number of days the student was remote synchronous present and an eligible participant in the state-approved bilingual/ESL program during a particular reporting period.';
COMMENT ON COLUMN tx.BilingualESLProgramReportingPeriodAttendance.TotalEligBilingualESLDaysPresent IS 'E0938. TotalEligBilingualESLDaysPresent indicates the total number of days the student was present and an eligible participant in the state-approved bilingual/ESL program during a particular reporting period.';

-- Extended Properties [tx].[BudgetExt] --
COMMENT ON TABLE tx.BudgetExt IS 'The BudgetExtension Domain Entity represents the amount of monies allocated to be spent or received by an education organization as related to a specific account';
COMMENT ON COLUMN tx.BudgetExt.BeginDate IS 'E3010. BeginDate indicates the month, day, and year for the specified data element becomes true of the student, staff, program, etc.';
COMMENT ON COLUMN tx.BudgetExt.BudgetFunctionDescriptorId IS 'E0317, C146. Function identifies a general operational area and groups together related activities.';
COMMENT ON COLUMN tx.BudgetExt.BudgetFundDescriptorId IS 'E0316, C145. Fund identifies the fund group and specific fund (when applicable) for budget data.';
COMMENT ON COLUMN tx.BudgetExt.BudgetObjectDescriptorId IS 'E0318, C159. Object identifies an account, a transaction, or a source of funds.';
COMMENT ON COLUMN tx.BudgetExt.BudgetProgramIntentDescriptorId IS 'E0320, C147. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.BudgetExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.BudgetExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 6 for the 2015-16 fiscal year.';
COMMENT ON COLUMN tx.BudgetExt.Organization IS 'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.';
COMMENT ON COLUMN tx.BudgetExt.BudgetAmount IS 'E0321. BudgetAmount indicates the dollar value associated with budget financial account information.';
COMMENT ON COLUMN tx.BudgetExt.EndDate IS 'E3020. EndDate indicates the month, day, and year for the specified data element becomes false of the student, staff, program, etc.';

-- Extended Properties [tx].[BudgetFunctionDescriptor] --
COMMENT ON TABLE tx.BudgetFunctionDescriptor IS 'Descriptor Function is populated from Code Table C146B.';
COMMENT ON COLUMN tx.BudgetFunctionDescriptor.BudgetFunctionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[BudgetFundDescriptor] --
COMMENT ON TABLE tx.BudgetFundDescriptor IS 'Descriptor Fund is populated from Code Table C145B.';
COMMENT ON COLUMN tx.BudgetFundDescriptor.BudgetFundDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[BudgetObjectDescriptor] --
COMMENT ON TABLE tx.BudgetObjectDescriptor IS 'Descriptor Object is populated from Code Table C159B.';
COMMENT ON COLUMN tx.BudgetObjectDescriptor.BudgetObjectDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[BudgetProgramIntentDescriptor] --
COMMENT ON TABLE tx.BudgetProgramIntentDescriptor IS 'Descriptor ProgramIntent is populated from Code Table C147B.';
COMMENT ON COLUMN tx.BudgetProgramIntentDescriptor.BudgetProgramIntentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[CalendarDateExtension] --
COMMENT ON TABLE tx.CalendarDateExtension IS '';
COMMENT ON COLUMN tx.CalendarDateExtension.CalendarCode IS 'The identifier for the calendar.';
COMMENT ON COLUMN tx.CalendarDateExtension.Date IS 'The month, day, and year of the calendar event.';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolYear IS 'The identifier for the school year associated with the calendar.';
COMMENT ON COLUMN tx.CalendarDateExtension.CalendarWaiverEventTypeDescriptorId IS 'E1570, C204. CalendarWaiverEventType indicates the type of state approved waiver';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolDayInstructionalMinutes IS 'E1599. SchoolDayInstructionalMinutes indicates the portion of the school day in which instruction takes place along with certain other exceptions and are considered a subset of operational minutes.';
COMMENT ON COLUMN tx.CalendarDateExtension.SchoolDayOperationalMinutes IS 'E1571. SchoolDayOperationalMinutes indicates the minutes that a campus operated on a particular school day for the purpose of student instruction.';
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

-- Extended Properties [tx].[CIStaffProgramIntentDescriptor] --
COMMENT ON TABLE tx.CIStaffProgramIntentDescriptor IS 'Descriptor ProgramIntent is populated from Code Table C147C.';
COMMENT ON COLUMN tx.CIStaffProgramIntentDescriptor.CIStaffProgramIntentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ClassTypeDescriptor] --
COMMENT ON TABLE tx.ClassTypeDescriptor IS 'Descriptor ClassType is populated from code table C179.';
COMMENT ON COLUMN tx.ClassTypeDescriptor.ClassTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ContractedInstructionalStaffFTEExt] --
COMMENT ON TABLE tx.ContractedInstructionalStaffFTEExt IS 'The ContractedInstructionalStaffFTEExtension Domain Entity represents financial information for contracted staff by Program Intent Code at the LEA/Campus level.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.CIStaffProgramIntentDescriptorId IS 'E0320, C147. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.ContractedInstructionalStaffFTEExt.TotalContractedInstrStaffFTE IS 'E0980. TotalContractedInstrStaffFTE is a standard measurement of the portion of professional contracted instructional staff, expressed as a multiple of the standard work day, such as 7.7 FTEs.';

-- Extended Properties [tx].[CourseSequenceDescriptor] --
COMMENT ON TABLE tx.CourseSequenceDescriptor IS 'Descriptor CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.';
COMMENT ON COLUMN tx.CourseSequenceDescriptor.CourseSequenceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[CourseTranscriptExtension] --
COMMENT ON TABLE tx.CourseTranscriptExtension IS '';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CourseAttemptResultDescriptorId IS 'The result from the student''s attempt to take the course.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CourseCode IS 'A unique alphanumeric code assigned to a course.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CourseEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.ATCIndicator IS 'E1058. ATCIndicator indicates a high school course for which college credit may be awarded by a post-secondary institution under the conditions of a local articulation agreement or the statewide Advanced Technical Credit (ATC) program agreement.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.CollegeCreditHours IS 'E1081. CollegeCreditHours indicate the number of college hours a student earned for the completion of a dual credit course.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.DualCreditIndicator IS 'E1011. DualCreditIndicator indicates whether the student was eligible to receive both high school and college credit for a college course.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN tx.CourseTranscriptExtension.SummerSchoolIndicator IS 'E3091. SummerSchoolIndicator indicates the course completed by a student was completed during the summer (between school years).';

-- Extended Properties [tx].[CrisisEventDescriptor] --
COMMENT ON TABLE tx.CrisisEventDescriptor IS 'Descriptor CrisisEvent is populated from Code Table C178.';
COMMENT ON COLUMN tx.CrisisEventDescriptor.CrisisEventDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[CTEProgramReportingPeriodAttendance] --
COMMENT ON TABLE tx.CTEProgramReportingPeriodAttendance IS 'This extended entity represents the CTE program attendance of a student.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.CTEServiceIdDescriptorId IS 'E3013, C330. CTEServiceID refers to the approved career and technical education course that generates countact hours during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.EligibleDaysPresentV1 IS 'E0950. EligibleDaysPresentV1 indicates the total number of days the student was eligible and present and enrolled in an approved career and technical course that generated one contact hour during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.EligibleDaysPresentV2 IS 'E0951. EligibleDaysPresentV2 indicates the total number of days the student was eligible and present and enrolled in an approved career and technical course that generated two contact hours during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.EligibleDaysPresentV3 IS 'E0952. EligibleDaysPresentV3 indicates the total number of days the student was eligible and present and enrolled in an approved career and technical course that generated three contact hours during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.RAEligibleDaysPresentV1 IS 'E1702. RAEligibleDaysPresentV1 indicates the total number of days the student was eligible, remote asynchronous present and enrolled in an approved career and technical course that generated one contact hour during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.RAEligibleDaysPresentV2 IS 'E1703. RAEligibleDaysPresentV2 indicates the total number of days the student was eligible, remote asynchronous present and enrolled in an approved career and technical course that generated two contact hours during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.RAEligibleDaysPresentV3 IS 'E1704. RAEligibleDaysPresentV3 indicates the total number of days the student was eligible, remote asynchronous present and enrolled in an approved career and technical course that generated three contact hours during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.RSEligibleDaysPresentV1 IS 'E1696. RSEligibleDaysPresentV1 indicates the total number of days the student was eligible, remote synchronous present and enrolled in an approved career and technical course that generated one contact hour during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.RSEligibleDaysPresentV2 IS 'E1697. RSEligibleDaysPresentV2 indicates the total number of days the student was eligible, remote synchronous present and enrolled in an approved career and technical course that generated two contact hours during a particular reporting period.';
COMMENT ON COLUMN tx.CTEProgramReportingPeriodAttendance.RSEligibleDaysPresentV3 IS 'E1698. RSEligibleDaysPresentV3 indicates the total number of days the student was eligible, remote synchronous present and enrolled in an approved career and technical course that generated three contact hours during a particular reporting period.';

-- Extended Properties [tx].[CTEServiceIdDescriptor] --
COMMENT ON TABLE tx.CTEServiceIdDescriptor IS 'CTEServiceId refers to the approved career and technical education course that generates countact hours during a particular reporting period.';
COMMENT ON COLUMN tx.CTEServiceIdDescriptor.CTEServiceIdDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[DescriptorMappingHistory] --
COMMENT ON TABLE tx.DescriptorMappingHistory IS 'This entity is intended to log all changes to the descriptormapping table';
COMMENT ON COLUMN tx.DescriptorMappingHistory.DateOfOperation IS 'The date/time when the operation occurred';
COMMENT ON COLUMN tx.DescriptorMappingHistory.MappedNamespace IS 'The namespace of the descriptor value to which the from descriptor value is mapped to.';
COMMENT ON COLUMN tx.DescriptorMappingHistory.MappedValue IS 'The descriptor value to which the from descriptor value is being mapped to.';
COMMENT ON COLUMN tx.DescriptorMappingHistory.Namespace IS 'The namespace of the descriptor value that is being mapped to another value.';
COMMENT ON COLUMN tx.DescriptorMappingHistory.Value IS 'The descriptor value that is being mapped to another value.';
COMMENT ON COLUMN tx.DescriptorMappingHistory.AccountName IS 'User name of the account which created/modified the mapping';
COMMENT ON COLUMN tx.DescriptorMappingHistory.ApiOperationTypeDescriptorId IS 'The type of operation performed on the descriptor';
COMMENT ON COLUMN tx.DescriptorMappingHistory.DescriptorMappingId IS 'The id of the resource in question';
COMMENT ON COLUMN tx.DescriptorMappingHistory.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.DescriptorMappingHistory.SchoolYear IS 'School year in which the mapping was created/modified';

-- Extended Properties [tx].[DifferenceReasonHoursAcceleratedInstructionDescriptor] --
COMMENT ON TABLE tx.DifferenceReasonHoursAcceleratedInstructionDescriptor IS 'E3088. DifferenceReasonHoursAcceleratedInstruction indicates the reason the student did not complete the full number of assigned hours of accelerated instruction.';
COMMENT ON COLUMN tx.DifferenceReasonHoursAcceleratedInstructionDescriptor.DifferenceReasonHoursAcceleratedInstructionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[DisciplineActionExtension] --
COMMENT ON TABLE tx.DisciplineActionExtension IS '';
COMMENT ON COLUMN tx.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the discipline action.';
COMMENT ON COLUMN tx.DisciplineActionExtension.DisciplineDate IS 'The date of the discipline action.';
COMMENT ON COLUMN tx.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.DisciplineActionExtension.ActualLengthOfDisciplinaryAssignment IS 'E1008. ActualLengthOfDisciplinaryAssignment indicates the actual length in days of a student’s disciplinary assignment.';
COMMENT ON COLUMN tx.DisciplineActionExtension.InconsistentCodeOfConduct IS 'E1656. InconsistentCodeOfConduct indicates whether an out-of-school suspension, disciplinary alternative education program placement, or expulsion action is inconsistent with a local education agency’s student code of conduct.';
COMMENT ON COLUMN tx.DisciplineActionExtension.NonMembershipDisciplineRestraintIndicator IS 'E1725. NonMembershipDisciplineRestraintIndicator indicates the discipline incident or restraint event being reported is for a special education student enrolled, not in membership.';
COMMENT ON COLUMN tx.DisciplineActionExtension.OfficialLengthOfDisciplinaryAssignment IS 'E1007. OfficialLengthOfDisciplinaryAssignment indicates the official length in days of a student’s disciplinary assignment.';

-- Extended Properties [tx].[DisciplineIncidentExtension] --
COMMENT ON TABLE tx.DisciplineIncidentExtension IS '';
COMMENT ON COLUMN tx.DisciplineIncidentExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN tx.DisciplineIncidentExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.DisciplineIncidentExtension.SafeSupportiveSchoolProgramTeamReview IS 'E1734. SafeSupportiveSchoolProgramTeamReview indicates whether the Safe and Supportive School Program (SSSP) team conducted a threat assessment related to a reported disciplinary incident.';

-- Extended Properties [tx].[DyslexiaRiskDescriptor] --
COMMENT ON TABLE tx.DyslexiaRiskDescriptor IS 'Descriptor DyslexiaRisk is populated from Code Table C222.';
COMMENT ON COLUMN tx.DyslexiaRiskDescriptor.DyslexiaRiskDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[DyslexiaScreeningExceptionReasonDescriptor] --
COMMENT ON TABLE tx.DyslexiaScreeningExceptionReasonDescriptor IS 'Descriptor DyslexiaScreeningExceptionReason is based on Code Table C231.';
COMMENT ON COLUMN tx.DyslexiaScreeningExceptionReasonDescriptor.DyslexiaScreeningExceptionReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[DyslexiaServicesDescriptor] --
COMMENT ON TABLE tx.DyslexiaServicesDescriptor IS 'Descriptor DyslexiaServices is based on code table C224.';
COMMENT ON COLUMN tx.DyslexiaServicesDescriptor.DyslexiaServicesDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EarlyReadingIndicatorDescriptor] --
COMMENT ON TABLE tx.EarlyReadingIndicatorDescriptor IS 'Descriptor EarlyReadingIndicator is populated from Code Table C195.';
COMMENT ON COLUMN tx.EarlyReadingIndicatorDescriptor.EarlyReadingIndicatorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EconomicDisadvantageDescriptor] --
COMMENT ON TABLE tx.EconomicDisadvantageDescriptor IS 'Descriptor EconomicDisadvantage is populated from Code Table C054.';
COMMENT ON COLUMN tx.EconomicDisadvantageDescriptor.EconomicDisadvantageDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EligibilityDelayReasonDescriptor] --
COMMENT ON TABLE tx.EligibilityDelayReasonDescriptor IS 'Descriptor EligibilityDelayReason is based on Code Table C347';
COMMENT ON COLUMN tx.EligibilityDelayReasonDescriptor.EligibilityDelayReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ELOActivityDescriptor] --
COMMENT ON TABLE tx.ELOActivityDescriptor IS 'Descriptor ELOActivity is populated from code table C229.';
COMMENT ON COLUMN tx.ELOActivityDescriptor.ELOActivityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ELOTypeDescriptor] --
COMMENT ON TABLE tx.ELOTypeDescriptor IS 'Descriptor ELOType is populated from code table C218.';
COMMENT ON COLUMN tx.ELOTypeDescriptor.ELOTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EmergentBilingualIndicatorDescriptor] --
COMMENT ON TABLE tx.EmergentBilingualIndicatorDescriptor IS 'E0790. EmergentBilingualIndicator is an indication that the student has been identified as an emergent bilingual (EB) student by the Language Proficiency Assessment Committee (LPAC), or English proficient according to the criteria established in 19 TAC §89.1226.';
COMMENT ON COLUMN tx.EmergentBilingualIndicatorDescriptor.EmergentBilingualIndicatorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EndorsementCompletedDescriptor] --
COMMENT ON TABLE tx.EndorsementCompletedDescriptor IS 'E3021. EndorsementCompleted indicates the student has successfully completed a Foundation High School Program to earn a STEM, Business and Industry, Public Services, Arts and Humanities, or Multi-Disciplinary Studies endorsement.';
COMMENT ON COLUMN tx.EndorsementCompletedDescriptor.EndorsementCompletedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EndorsementPursuingDescriptor] --
COMMENT ON TABLE tx.EndorsementPursuingDescriptor IS 'Descriptor EndorsementPursuing id=s populated from Code Table C333.';
COMMENT ON COLUMN tx.EndorsementPursuingDescriptor.EndorsementPursuingDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EnrollmentTrackingVerificationDescriptor] --
COMMENT ON TABLE tx.EnrollmentTrackingVerificationDescriptor IS 'Descriptor EnrollmentTrackingVerification is populated from Code Table C351.';
COMMENT ON COLUMN tx.EnrollmentTrackingVerificationDescriptor.EnrollmentTrackingVerificationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[EvaluationDelayReasonDescriptor] --
COMMENT ON TABLE tx.EvaluationDelayReasonDescriptor IS 'Descriptor EvaluationDelayReason is populated from code table C348.';
COMMENT ON COLUMN tx.EvaluationDelayReasonDescriptor.EvaluationDelayReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ExtendedSchoolYearServicesAttendance] --
COMMENT ON TABLE tx.ExtendedSchoolYearServicesAttendance IS 'This extended entity represents the students who are served through the Extended School Year (ESY) Services Program.';
COMMENT ON COLUMN tx.ExtendedSchoolYearServicesAttendance.FirstInstructionalSettingDescriptorId IS 'E3031, C035. The FirstInstructionalSetting identifies the setting used in providing extended year services component of special education. The InstructionalSetting reported is the EducationalEnvironment in which the student was served during the regular school year.';
COMMENT ON COLUMN tx.ExtendedSchoolYearServicesAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.ExtendedSchoolYearServicesAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.ExtendedSchoolYearServicesAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.ExtendedSchoolYearServicesAttendance.SecondInstructionalSettingDescriptorId IS 'E3054, C035. The SecondInstructionalSetting identifies the setting used in providing extended year services component of special education. The InstructionalSetting reported is the EducationalEnvironment in which the student was served during the regular school year.';
COMMENT ON COLUMN tx.ExtendedSchoolYearServicesAttendance.TotalESYContactHoursInFirstInstructionalSetting IS 'E1013. TotalESYContactHoursInFirstInstructionalSetting indicates the total contact hours in a special education setting provided to the student through the extended school year services component of special education. InstructionalSetting1 reported is the EducationalEnvironment in which the student was served during the regular school year.';
COMMENT ON COLUMN tx.ExtendedSchoolYearServicesAttendance.TotalESYContactHoursInSecondInstructionalSetting IS 'E1013. TotalESYContactHoursInSecondInstructionalSetting indicates the total contact hours in a special education setting provided to the student through the extended school year services component of special education. InstructionalSetting1 reported is the EducationalEnvironment in which the student was served during the regular school year.';

-- Extended Properties [tx].[FinancialAidApplicationDescriptor] --
COMMENT ON TABLE tx.FinancialAidApplicationDescriptor IS 'E1724. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (Free application for Federal Student Aid (FAFSA) or Texas Application for State Financial Aid (TASFA)) or submitting an exemption.';
COMMENT ON COLUMN tx.FinancialAidApplicationDescriptor.FinancialAidApplicationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[FlexAttendanceProgramDescriptor] --
COMMENT ON TABLE tx.FlexAttendanceProgramDescriptor IS 'Descriptor FlexAttendanceProgram is based on code table C177.';
COMMENT ON COLUMN tx.FlexAttendanceProgramDescriptor.FlexAttendanceProgramDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[FlexibleBilingualESLProgramReportingPeriodAttendance] --
COMMENT ON TABLE tx.FlexibleBilingualESLProgramReportingPeriodAttendance IS 'This extended entity represents the bilingual/ESL program attendance for the students who are served through a flexible attendance program.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.BilingualESLFundingDescriptorId IS 'E1651, C225. BilingualESLFunding indicates the language program in which the student participates during the reporting period.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.FlexAttendanceProgramDescriptorId IS 'E1045, C177. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.FlexTotalEligBilingualESLDaysPresent IS 'E1050. FlexAttendExcessMinutesInInstrSetting indicates the total number of minutes the student was present in a designated instructional setting above the allowable 360-minute daily limit of combined career and technical education and special education and related services during a particular reporting period.';
COMMENT ON COLUMN tx.FlexibleBilingualESLProgramReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';

-- Extended Properties [tx].[FlexibleCTEProgramReportingPeriodAttendance] --
COMMENT ON TABLE tx.FlexibleCTEProgramReportingPeriodAttendance IS 'This extended entity represents the CTE program attendance for students who are served through a flexible attendance program.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.FlexAttendanceProgramDescriptorId IS 'E1045, C177. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.FlexAttendTotalCareerTechMinutesPresent IS 'E1053. FlexAttendTotalCareerTechMinutesPresent indicates the total number of minutes the student was present in an approved career and technical education course(s) that the student was eligible for and enrolled in during a particular reporting period.';
COMMENT ON COLUMN tx.FlexibleCTEProgramReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';

-- Extended Properties [tx].[FlexibleRegularProgramReportingPeriodAttendance] --
COMMENT ON TABLE tx.FlexibleRegularProgramReportingPeriodAttendance IS 'This extended entity represents the attendance for students who are served through a flexible attendance program.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.FlexAttendanceProgramDescriptorId IS 'E1045, C177. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.FlexAttendTotalEligibleMinutesPresent IS 'E1046. FlexAttendTotalEligibleMinutesPresent indicates the total number of minutes the student was present and eligible for Foundation School Program funding during a particular reporting period. Eligiblity for this program is determined by September 1 age and grade level.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.FlexAttendTotalIneligibleMinutesPresent IS 'E1047. FlexAttendTotalIneligibleMinutesPresent indicates the total number of minutes the student was present and ineligible for Foundation School Program funding during a particular reporting period. Ineligiblity for this program is determined by September 1 age and grade level.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.FlexTotalEligPregRelSvcsDaysPresent IS 'E1048. FlexTotalEligPregRelSvcsDaysPresent indicates the total number of school days a female student was eligible for Compensatory Education Home Instruction (CEHI) services and/or pregnancy related services during a particular reporting period.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.FlexTotalEligResidentialFacilityDaysPresent IS 'E1653. FlexTotalEligResidentialFacilityDaysPresent indicates the total number of days the student was present and eligible for LEA services while living in a Residential Facility in a flexible attendance program during a particular reporting period.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.FlexTotalEligSpEdMainstreamDaysPresent IS 'E1049. FlexTotalEligSpEdMainstreamDaysPresent indicates the total number of school days a student with a special education individualized education program (IEP) that provided for the mainstream instructional arrangement/setting was eligible for that instructional arrangement/setting during a particular reporting period.';
COMMENT ON COLUMN tx.FlexibleRegularProgramReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';

-- Extended Properties [tx].[FlexibleSpecialEducationProgramReportingPeriodAttendance] --
COMMENT ON TABLE tx.FlexibleSpecialEducationProgramReportingPeriodAttendance IS 'This extended entity represents the special education program attendance for students who are served through a flexible attendance program.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.FlexAttendanceProgramDescriptorId IS 'E1045, C177. FlexAttendanceProgram indicates the unique type of flexible attendance program to which the student’s flexible attendance is related.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.InstructionalSettingDescriptorId IS 'E0173, C035. InstructionalSetting identifies the setting used in providing instruction to students.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.FlexAttendDaysEligibleInInstrSetting IS 'E1051. FlexAttendExcessMinutesInInstrSetting indicates the total number of minutes the student was present in a designated instructional setting above the allowable 360-minute daily limit of combined career and technical education and special education and related services during a particular reporting period.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.FlexAttendExcessMinutesInInstrSetting IS 'E1052. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';
COMMENT ON COLUMN tx.FlexibleSpecialEducationProgramReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';

-- Extended Properties [tx].[FosterCareTypeDescriptor] --
COMMENT ON TABLE tx.FosterCareTypeDescriptor IS 'Descriptor FosterCareType is populated from Code Table C196.';
COMMENT ON COLUMN tx.FosterCareTypeDescriptor.FosterCareTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[FrequencyOfServicesDescriptor] --
COMMENT ON TABLE tx.FrequencyOfServicesDescriptor IS 'Descriptor FrequencyOfServices identifies the frequency with which a student receives services. (C315)';
COMMENT ON COLUMN tx.FrequencyOfServicesDescriptor.FrequencyOfServicesDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[GenerationCodeDescriptor] --
COMMENT ON TABLE tx.GenerationCodeDescriptor IS 'Descriptor GenerationCode is based on Code Table C012';
COMMENT ON COLUMN tx.GenerationCodeDescriptor.GenerationCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[GiftedTalentedProgramDescriptor] --
COMMENT ON TABLE tx.GiftedTalentedProgramDescriptor IS 'Descriptor GiftedTalentedProgram is populated from code table C223';
COMMENT ON COLUMN tx.GiftedTalentedProgramDescriptor.GiftedTalentedProgramDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HearingAmplificationAccessDescriptor] --
COMMENT ON TABLE tx.HearingAmplificationAccessDescriptor IS 'Descriptor HearingAmplificationAccess identifies whether the student has access to the hearing amplification device for the full-day or partial day for each HEARING-AMPLIFICATION-TYPE reported. (C318)';
COMMENT ON COLUMN tx.HearingAmplificationAccessDescriptor.HearingAmplificationAccessDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HearingAmplificationDailyUseDescriptor] --
COMMENT ON TABLE tx.HearingAmplificationDailyUseDescriptor IS 'Descriptor HearingAmplificationDailyUse identifies the average amount of time the hearing amplification device is used in a day based on the HEARING-AMPLIFICATION-ACCESS reported. (C319)';
COMMENT ON COLUMN tx.HearingAmplificationDailyUseDescriptor.HearingAmplificationDailyUseDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HearingAmplificationTypeDescriptor] --
COMMENT ON TABLE tx.HearingAmplificationTypeDescriptor IS 'Descriptor HearingAmplificationType identifies the type of hearing amplification device used by the student. (C317)';
COMMENT ON COLUMN tx.HearingAmplificationTypeDescriptor.HearingAmplificationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HomelessStatusDescriptor] --
COMMENT ON TABLE tx.HomelessStatusDescriptor IS 'E1082. HomelessStatus as defined by 42 U.S.C. Section Part B §11434(a), definitions the term “homeless children and youths” —
(A) means individuals who lack a fixed, regular, and adequate nighttime residence [within the meaning of section 11302(a)(1)]; and
(B) the term includes —
(i) children and youths who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters
(ii) children and youths who have a primary nighttime residence that is a public or private place not designed for or ordinarily used as a regular sleeping accommodation for human beings [within the meaning of section 11302(a)(2)(C)];
(iii) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings; and
(iv) migratory children (as such term is defined in section 6399 of title 20) who qualify as homeless for the purposes of this subtitle because the children are living in circumstances described in clauses (i) through (iii).';
COMMENT ON COLUMN tx.HomelessStatusDescriptor.HomelessStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[HoursSpentReceivingServicesDescriptor] --
COMMENT ON TABLE tx.HoursSpentReceivingServicesDescriptor IS 'Descriptor HoursSpentReceivingServices identifies the amount of time in which the student receives services. (C316)';
COMMENT ON COLUMN tx.HoursSpentReceivingServicesDescriptor.HoursSpentReceivingServicesDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[IBCVendorDescriptor] --
COMMENT ON TABLE tx.IBCVendorDescriptor IS 'Descriptor IBCVendorCode identifies the organization or company that offered the service. (C226)';
COMMENT ON COLUMN tx.IBCVendorDescriptor.IBCVendorDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[InstructionalSettingDescriptor] --
COMMENT ON TABLE tx.InstructionalSettingDescriptor IS 'Descriptor InstructionalSetting is based on code table C035.';
COMMENT ON COLUMN tx.InstructionalSettingDescriptor.InstructionalSettingDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[LangAcqServicesProvidedDescriptor] --
COMMENT ON TABLE tx.LangAcqServicesProvidedDescriptor IS 'Descriptor LangAcqServicesProvided indicates the specific language acquisition services provided to the student. (C314)';
COMMENT ON COLUMN tx.LangAcqServicesProvidedDescriptor.LangAcqServicesProvidedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[LocalEducationAgencyExtension] --
COMMENT ON TABLE tx.LocalEducationAgencyExtension IS '';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.ArmedServicesVocAptBatteryDescriptorId IS 'E1625, C217. ArmedServicesVocAptBattery indicates whether a school district or open-enrollment charter school provides students in grades 10 through 12 an opportunity to take the Armed Services Vocational Aptitude Battery (ASVAB) test or a comparable substitute.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.FamilyEngagementPlanLink IS 'E1583. FamilyEngagementPlanLink indicates the internet website address that connects directly to the Local Education Agency''s high-quality prekindergarten Family Engagement Plan document.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.PKProgramEvaluationTypeDescriptorId IS 'E1626, C216. PKProgramEvaluationType indicates the type of program evaluation tool LEAs use to report the progress of students participating in a High-Quality prekindergarten program.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.TotalCostSchoolBoardRequests IS 'E1557. TotalCostSchoolBoardRequests indicates the cost to the district with fulfilling requests submitted outside of a school board meeting by a member of the district''s board of trustees (school board) for information, documents, and records as specified in TEC SECTION 11.1512.';
COMMENT ON COLUMN tx.LocalEducationAgencyExtension.TotalNumSchoolBoardRequests IS 'E1556. TotalNumSchoolBoardRequests indicates the total number of requests submitted outside of a school board meeting by a member of the district''s board of trustees (school board) for information, documents, and records as specified in TEC SECTION 11.1512.';

-- Extended Properties [tx].[LocalEducationAgencyGiftedTalentedProgram] --
COMMENT ON TABLE tx.LocalEducationAgencyGiftedTalentedProgram IS 'E1645, C223. GiftedTalentedProgram indicates a gifted and talented program the LEA has established that is consistent with the state plan developed under TEC 29.123.';
COMMENT ON COLUMN tx.LocalEducationAgencyGiftedTalentedProgram.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN tx.LocalEducationAgencyGiftedTalentedProgram.GiftedTalentedProgramDescriptorId IS 'E1645, C223. GiftedTalentedProgram indicates a gifted and talented program the LEA has established that is consistent with the state plan developed under TEC 29.123.';

-- Extended Properties [tx].[LocalEducationAgencyProgramOfStudy] --
COMMENT ON TABLE tx.LocalEducationAgencyProgramOfStudy IS 'E1643, C220. ProgramOfStudy indicates a program of study the LEA offers. A program of study is a comprehensive, structured approach for delivering academic and career and technical education to prepare a student for postsecondary education and career success.';
COMMENT ON COLUMN tx.LocalEducationAgencyProgramOfStudy.LocalEducationAgencyId IS 'The identifier assigned to a local education agency.';
COMMENT ON COLUMN tx.LocalEducationAgencyProgramOfStudy.ProgramOfStudyDescriptorId IS 'E1643, C220. ProgramOfStudy indicates a program of study the LEA offers. A program of study is a comprehensive, structured approach for delivering academic and career and technical education to prepare a student for postsecondary education and career success.';

-- Extended Properties [tx].[MilitaryConnectedStudentDescriptor] --
COMMENT ON TABLE tx.MilitaryConnectedStudentDescriptor IS 'Descriptor MilitaryConnectedStudent is populated from Code Table C197.';
COMMENT ON COLUMN tx.MilitaryConnectedStudentDescriptor.MilitaryConnectedStudentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[NonCampusBasedInstructionDescriptor] --
COMMENT ON TABLE tx.NonCampusBasedInstructionDescriptor IS 'Descriptor NonCampusBasedInstruction is populated by Code Table C182.';
COMMENT ON COLUMN tx.NonCampusBasedInstructionDescriptor.NonCampusBasedInstructionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[NonEnrolledStudentUILActivityDescriptor] --
COMMENT ON TABLE tx.NonEnrolledStudentUILActivityDescriptor IS 'Descriptor Function is populated from Code Table C234.';
COMMENT ON COLUMN tx.NonEnrolledStudentUILActivityDescriptor.NonEnrolledStudentUILActivityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[NSLPTypeDescriptor] --
COMMENT ON TABLE tx.NSLPTypeDescriptor IS 'Descriptor NSLPType is populated from code table C212.';
COMMENT ON COLUMN tx.NSLPTypeDescriptor.NSLPTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ParentalPermissionDescriptor] --
COMMENT ON TABLE tx.ParentalPermissionDescriptor IS 'Descriptor ParentalPermission indicates whether the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.) (C093)';
COMMENT ON COLUMN tx.ParentalPermissionDescriptor.ParentalPermissionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ParentExtension] --
COMMENT ON TABLE tx.ParentExtension IS '';
COMMENT ON COLUMN tx.ParentExtension.ParentUSI IS 'A unique alphanumeric code assigned to a parent.';
COMMENT ON COLUMN tx.ParentExtension.GenerationCodeDescriptorId IS 'E0706, C012. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';

-- Extended Properties [tx].[PayrollActivityDescriptor] --
COMMENT ON TABLE tx.PayrollActivityDescriptor IS 'Descriptor PayrollActivity is populated from Code Table C018.';
COMMENT ON COLUMN tx.PayrollActivityDescriptor.PayrollActivityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PayrollExt] --
COMMENT ON TABLE tx.PayrollExt IS 'The PayrollExtension Domain Entity represents the financial transactions for employee compensation.';
COMMENT ON COLUMN tx.PayrollExt.BeginDate IS 'E3010. BeginDate indicates the month, day, and year for the specified data element becomes true of the student, staff, program, etc.';
COMMENT ON COLUMN tx.PayrollExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.PayrollExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 4 for the 1993-94 fiscal year.';
COMMENT ON COLUMN tx.PayrollExt.Organization IS 'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.';
COMMENT ON COLUMN tx.PayrollExt.PayrollActivityDescriptorId IS 'E0424, C018. PayrollActivity indicates the types of duty for which a staff member receives salary, salary supplements, or bonuses.';
COMMENT ON COLUMN tx.PayrollExt.PayrollFunctionDescriptorId IS 'E0317, C146. Function identifies a general operational area and groups together related activities.';
COMMENT ON COLUMN tx.PayrollExt.PayrollFundDescriptorId IS 'E0316, C145. Fund identifies the fund group and specific fund for payroll data.';
COMMENT ON COLUMN tx.PayrollExt.PayrollObjectDescriptorId IS 'E0318, C159. Object identifies an account, a transaction, or a source of funds.';
COMMENT ON COLUMN tx.PayrollExt.PayrollProgramIntentDescriptorId IS 'E0320, C147. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.PayrollExt.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.PayrollExt.EndDate IS 'E3020. EndDate indicates the month, day, and year for the specified data element becomes false of the student, staff, program, etc.';
COMMENT ON COLUMN tx.PayrollExt.PayrollAmount IS 'E0425. PayrollAmount indicates the dollar value that is paid to a staff member for a given payroll activity per year.';

-- Extended Properties [tx].[PayrollFunctionDescriptor] --
COMMENT ON TABLE tx.PayrollFunctionDescriptor IS 'Descriptor Function is populated from Code Table C146P.';
COMMENT ON COLUMN tx.PayrollFunctionDescriptor.PayrollFunctionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PayrollFundDescriptor] --
COMMENT ON TABLE tx.PayrollFundDescriptor IS 'Descriptor Fund is populated from Code Table C145P.';
COMMENT ON COLUMN tx.PayrollFundDescriptor.PayrollFundDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PayrollObjectDescriptor] --
COMMENT ON TABLE tx.PayrollObjectDescriptor IS 'Descriptor Object is populated from Code Table C159P.';
COMMENT ON COLUMN tx.PayrollObjectDescriptor.PayrollObjectDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PayrollProgramIntentDescriptor] --
COMMENT ON TABLE tx.PayrollProgramIntentDescriptor IS 'Descriptor ProgramIntent is populated from Code Table C147P.';
COMMENT ON COLUMN tx.PayrollProgramIntentDescriptor.PayrollProgramIntentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKCurriculaDescriptor] --
COMMENT ON TABLE tx.PKCurriculaDescriptor IS 'Descriptor PKCurricula indicates curricula used in the district’s prekindergarten program section TEC 29.1532(c)(6). (C206)';
COMMENT ON COLUMN tx.PKCurriculaDescriptor.PKCurriculaDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKFundingSourceDescriptor] --
COMMENT ON TABLE tx.PKFundingSourceDescriptor IS 'Descriptor PKFundingSource is populated by Code Table C186.';
COMMENT ON COLUMN tx.PKFundingSourceDescriptor.PKFundingSourceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKProgramEvaluationTypeDescriptor] --
COMMENT ON TABLE tx.PKProgramEvaluationTypeDescriptor IS 'Descriptor PKProgramEvaluationType indicates for each High-Quality PK course/section, the type of program evaluation tool that is used. C216';
COMMENT ON COLUMN tx.PKProgramEvaluationTypeDescriptor.PKProgramEvaluationTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKProgramTypeDescriptor] --
COMMENT ON TABLE tx.PKProgramTypeDescriptor IS 'Descriptor PKProgramType is populated by Code Table C185.';
COMMENT ON COLUMN tx.PKProgramTypeDescriptor.PKProgramTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKSchoolTypeDescriptor] --
COMMENT ON TABLE tx.PKSchoolTypeDescriptor IS 'Descriptor PKSchoolType is populated from Code Table C310.';
COMMENT ON COLUMN tx.PKSchoolTypeDescriptor.PKSchoolTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKStudentInstructionDescriptor] --
COMMENT ON TABLE tx.PKStudentInstructionDescriptor IS 'Descriptor PKStudentInstruction C311.';
COMMENT ON COLUMN tx.PKStudentInstructionDescriptor.PKStudentInstructionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PKTeacherRequirementDescriptor] --
COMMENT ON TABLE tx.PKTeacherRequirementDescriptor IS 'Descriptor PKTeacherRequirement is populated from code table C207.';
COMMENT ON COLUMN tx.PKTeacherRequirementDescriptor.PKTeacherRequirementDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PostSecondaryCertificationLicensureDescriptor] --
COMMENT ON TABLE tx.PostSecondaryCertificationLicensureDescriptor IS 'Descriptor PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student. (C214)';
COMMENT ON COLUMN tx.PostSecondaryCertificationLicensureDescriptor.PostSecondaryCertificationLicensureDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PostSecondaryCertLicensureResultDescriptor] --
COMMENT ON TABLE tx.PostSecondaryCertLicensureResultDescriptor IS 'Descriptor PostSecondaryCertLicensureResult is based on Code Table C232.';
COMMENT ON COLUMN tx.PostSecondaryCertLicensureResultDescriptor.PostSecondaryCertLicensureResultDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PPCDServiceLocationDescriptor] --
COMMENT ON TABLE tx.PPCDServiceLocationDescriptor IS 'Descriptor PPCDServiceLocation indicates whether or not the Preschool Program for Children with Disabilities (PPCD) student received their special education services in a regular early childhood program, which is defined as a program that is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)). (C184)';
COMMENT ON COLUMN tx.PPCDServiceLocationDescriptor.PPCDServiceLocationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PreferredHomeCommunicationMethodDescriptor] --
COMMENT ON TABLE tx.PreferredHomeCommunicationMethodDescriptor IS 'Descriptor PreferredHomeCommunicationMethod identifies the preferred unique communication method used by the child at home. (C313)';
COMMENT ON COLUMN tx.PreferredHomeCommunicationMethodDescriptor.PreferredHomeCommunicationMethodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[PriorYearActualExt] --
COMMENT ON TABLE tx.PriorYearActualExt IS 'The ActualExtension Domain Entity represents the sum of the financial transactions to date relating to a specific account.';
COMMENT ON COLUMN tx.PriorYearActualExt.ActualFunctionDescriptorId IS 'E0317, C146. Function identifies a general operational area and groups together related activities.';
COMMENT ON COLUMN tx.PriorYearActualExt.ActualFundDescriptorId IS 'E0316, C145. Fund identifies the fund group and specific fund (when applicable) for actual financial data.';
COMMENT ON COLUMN tx.PriorYearActualExt.ActualObjectDescriptorId IS 'E0318, C159. Object identifies an account, a transaction, or a source of funds.';
COMMENT ON COLUMN tx.PriorYearActualExt.ActualProgramIntentDescriptorId IS 'E0320, C147. ProgramIntent identifies the cost of instruction and other services that are directed toward a particular need of a specific set of students.';
COMMENT ON COLUMN tx.PriorYearActualExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.PriorYearActualExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 6 for the 2015-16 fiscal year.';
COMMENT ON COLUMN tx.PriorYearActualExt.Organization IS 'E0319. Organization identifies the unique organizational unit within the district with which the account is associated.';
COMMENT ON COLUMN tx.PriorYearActualExt.ActualAmount IS 'E0774. ActualAmount indicates the dollar value associated with actual financial account information.';

-- Extended Properties [tx].[PriorYearLeaver] --
COMMENT ON TABLE tx.PriorYearLeaver IS 'PriorYearLeaver - This entity is being reported on non-enrolled students and graduates that are enrolled in the prior school year and do not return in the current school year.';
COMMENT ON COLUMN tx.PriorYearLeaver.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaver.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaver.AsOfStatusLastFridayOctoberDescriptorId IS 'E3007, C324. AsOfStatusLastFridayOctober indicates the student''s status in the local education agency on the last Friday in October in the current school year.';
COMMENT ON COLUMN tx.PriorYearLeaver.AssociateDegreeIndicatorDescriptorId IS 'E1596. AssociateDegreeIndicator indicates that the student earned an associate degree by August 31 immediately following graduation.';
COMMENT ON COLUMN tx.PriorYearLeaver.BirthCity IS 'The city the student was born in.';
COMMENT ON COLUMN tx.PriorYearLeaver.BirthCountryDescriptorId IS 'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN tx.PriorYearLeaver.BirthDate IS 'The month, day, and year on which an individual was born.';
COMMENT ON COLUMN tx.PriorYearLeaver.BirthInternationalProvince IS 'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.';
COMMENT ON COLUMN tx.PriorYearLeaver.BirthSexDescriptorId IS 'A person''s gender at birth.';
COMMENT ON COLUMN tx.PriorYearLeaver.BirthStateAbbreviationDescriptorId IS 'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.';
COMMENT ON COLUMN tx.PriorYearLeaver.DateEnteredUS IS 'For students born outside of the U.S., the date the student entered the U.S.';
COMMENT ON COLUMN tx.PriorYearLeaver.EconomicDisadvantageDescriptorId IS 'E0785, C054. EconomicDisadvantage is an indication of an inadequate financial condition of an individual''s family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.';
COMMENT ON COLUMN tx.PriorYearLeaver.EmergentBilingualIndicatorDescriptorId IS 'E0790, C061. EmergentBilingualIndicator is an indication that the student has been identified as an emergent bilingual (EB) student by the Language Proficiency Assessment Committee (LPAC), or English proficient according to the criteria established in 19 TAC §89.1226.';
COMMENT ON COLUMN tx.PriorYearLeaver.ExitWithdrawDate IS 'E3028. The ExitWithdrawDate is the month, day, and year of the first day after an individual''s last attendance at school (if known), the date on which an individual graduated, or the date it becomes known officially that an individual left school.';
COMMENT ON COLUMN tx.PriorYearLeaver.ExitWithdrawTypeDescriptorId IS 'This descriptor defines the circumstances under which the student exited from membership in an educational institution.';
COMMENT ON COLUMN tx.PriorYearLeaver.FinancialAidApplicationDescriptorId IS 'E1724, C230. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (Free application for Federal Student Aid (FAFSA) or Texas Application for State Financial Aid (TASFA)) or submitting an exemption.';
COMMENT ON COLUMN tx.PriorYearLeaver.FirstName IS 'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.';
COMMENT ON COLUMN tx.PriorYearLeaver.FosterCareTypeDescriptorId IS 'E1528, C196. FosterCareType indicates whether a student is in the conservatorship of the Department of Family and Protective Services (DFPS) currently, or for a prekindergarten student that was previously in the conservatorship of DFPS, or for a prekindergarten student that is or ever has been in foster care in another state or territory, if the student resides in this state (Texas).';
COMMENT ON COLUMN tx.PriorYearLeaver.GenerationCodeDescriptorId IS 'E0706, C012. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';
COMMENT ON COLUMN tx.PriorYearLeaver.GenerationCodeSuffix IS 'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).';
COMMENT ON COLUMN tx.PriorYearLeaver.GradeLevelDescriptorId IS 'This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required.';
COMMENT ON COLUMN tx.PriorYearLeaver.HispanicLatinoEthnicity IS 'E1064. HispanicLatinoEthnicity is an indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."';
COMMENT ON COLUMN tx.PriorYearLeaver.HomelessStatusDescriptorId IS 'E1082, C189. HomelessStatus as defined by 42 U.S.C. Section Part B §11434(a), definitions the term “homeless children and youths” —
(A) means individuals who lack a fixed, regular, and adequate nighttime residence [within the meaning of section 11302(a)(1)]; and
(B) the term includes —
(i) children and youths who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters
(ii) children and youths who have a primary nighttime residence that is a public or private place not designed for or ordinarily used as a regular sleeping accommodation for human beings [within the meaning of section 11302(a)(2)(C)];
(iii) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings; and
(iv) migratory children (as such term is defined in section 6399 of title 20) who qualify as homeless for the purposes of this subtitle because the children are living in circumstances described in clauses (i) through (iii).';
COMMENT ON COLUMN tx.PriorYearLeaver.LanguageInstructionProgramServiceDescriptorId IS 'This descriptor defines the services provided by an education organization to populations of students associated with a language instruction program.';
COMMENT ON COLUMN tx.PriorYearLeaver.LastSurname IS 'The name borne in common by members of a family.';
COMMENT ON COLUMN tx.PriorYearLeaver.LocalStudentId IS 'E0923. LocalStudentId is the student''s local identification number as assigned by the local education agency.';
COMMENT ON COLUMN tx.PriorYearLeaver.MaidenName IS 'The individual''s maiden name.';
COMMENT ON COLUMN tx.PriorYearLeaver.MiddleName IS 'A secondary name given to an individual at birth, baptism, or during another naming ceremony.';
COMMENT ON COLUMN tx.PriorYearLeaver.MilitaryConnectedStudentDescriptorId IS 'E1529, C197. MilitaryConnectedStudent indicates a student enrolled in a school district or open-enrollment charter school who is a dependent of an active duty or former member of the United States military, the Texas National Guard, or a reserve force of the United States military, or who is a dependent of a member of the United States military, the Texas National Guard, or a reserve force of the United States military who was killed in the line of duty.';
COMMENT ON COLUMN tx.PriorYearLeaver.MultipleBirthStatus IS 'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)';
COMMENT ON COLUMN tx.PriorYearLeaver.ParentalPermissionDescriptorId IS 'E0896, C093. ParentalPermission indicates whether the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.)';
COMMENT ON COLUMN tx.PriorYearLeaver.PersonalTitlePrefix IS 'A prefix used to denote the title, degree, position, or seniority of the individual.';
COMMENT ON COLUMN tx.PriorYearLeaver.SexDescriptorId IS 'A person''s gender.';
COMMENT ON COLUMN tx.PriorYearLeaver.SpecialEducationStudent IS 'E0794. SpecialEducationStudent indicates whether the leaver participated in a special education instructional and related services program or a general education program using special education support services, supplementary aids, or other special arrangements.';
COMMENT ON COLUMN tx.PriorYearLeaver.StudentId IS 'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.';
COMMENT ON COLUMN tx.PriorYearLeaver.TitleIPartAParticipantDescriptorId IS 'An indication of the type of Title I program, if any, in which the student is participating and served.';

-- Extended Properties [tx].[PriorYearLeaverAddress] --
COMMENT ON TABLE tx.PriorYearLeaverAddress IS 'The set of elements that describes an address, including the street address, city, state, and ZIP code.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.AddressTypeDescriptorId IS 'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.ApartmentRoomSuiteNumber IS 'The apartment, room, or suite number of an address.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.BuildingSiteNumber IS 'The number of the building on the site, if more than one building shares the same address.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.City IS 'The name of the city in which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.CongressionalDistrict IS 'The congressional district in which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.CountyFIPSCode IS 'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.DoNotPublishIndicator IS 'An indication that the address should not be published.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.Latitude IS 'The geographic latitude of the physical address.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.LocaleDescriptorId IS 'A general geographic indicator that categorizes U.S. territory (e.g., City, Suburban).';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.Longitude IS 'The geographic longitude of the physical address.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.NameOfCounty IS 'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.PostalCode IS 'The five or nine digit zip code or overseas postal code portion of an address.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.StateAbbreviationDescriptorId IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverAddress.StreetNumberName IS 'The street number and street name or post office box number of an address.';

-- Extended Properties [tx].[PriorYearLeaverAddressPeriod] --
COMMENT ON TABLE tx.PriorYearLeaverAddressPeriod IS 'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.';
COMMENT ON COLUMN tx.PriorYearLeaverAddressPeriod.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverAddressPeriod.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverAddressPeriod.BeginDate IS 'The month, day, and year for the start of the period.';
COMMENT ON COLUMN tx.PriorYearLeaverAddressPeriod.EndDate IS 'The month, day, and year for the end of the period.';

-- Extended Properties [tx].[PriorYearLeaverElectronicMail] --
COMMENT ON TABLE tx.PriorYearLeaverElectronicMail IS 'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.';
COMMENT ON COLUMN tx.PriorYearLeaverElectronicMail.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverElectronicMail.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverElectronicMail.ElectronicMailAddress IS 'The electronic mail (e-mail) address listed for an individual or organization.';
COMMENT ON COLUMN tx.PriorYearLeaverElectronicMail.ElectronicMailTypeDescriptorId IS 'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)';
COMMENT ON COLUMN tx.PriorYearLeaverElectronicMail.DoNotPublishIndicator IS 'An indication that the electronic email address should not be published.';
COMMENT ON COLUMN tx.PriorYearLeaverElectronicMail.PrimaryEmailAddressIndicator IS 'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.';

-- Extended Properties [tx].[PriorYearLeaverEndorsementCompleted] --
COMMENT ON TABLE tx.PriorYearLeaverEndorsementCompleted IS 'E3021, C332. EndorsementCompleted indicates the student has successfully completed a Foundation High School Program to earn a STEM, Business and Industry, Public Services, Arts and Humanities, or Multi-Disciplinary Studies endorsement.';
COMMENT ON COLUMN tx.PriorYearLeaverEndorsementCompleted.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverEndorsementCompleted.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverEndorsementCompleted.EndorsementCompletedDescriptorId IS 'E3021, C332. EndorsementCompleted indicates the student has successfully completed a Foundation High School Program to earn a STEM, Business and Industry, Public Services, Arts and Humanities, or Multi-Disciplinary Studies endorsement.';

-- Extended Properties [tx].[PriorYearLeaverGraduationSet] --
COMMENT ON TABLE tx.PriorYearLeaverGraduationSet IS 'This educational entity represents the conferring or certification by an educational organization that the student has successfully completed a particular course of study. It represents the electronic version of its physical document counterpart.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.AchievementCategoryDescriptorId IS 'The category of achievement attributed to the learner.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.DiplomaAwardDate IS 'E0791. DiplomaAwardDate indicates the month and year that the student graduated from high school.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.DiplomaTypeDescriptorId IS 'E0806, C062. DiplomaType indicates the type of plan under which the student graduated.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.DistingLevelAchievementGraduate IS 'E3089. DistingLevelAchievementGraduate indicates the student has successfully completed the distinguished level of achievement as provided by TEC §28.025 (b-15) or TEC §28.0253.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.IndividualGraduationCommitteeGraduateIndicator IS 'E1562. IndividualGraduationCommitteeGraduateIndicator Indicates whether a student for whom an IGC was established has graduated based on an IGC decision.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.MilitaryEnlistmentIndicator IS 'E1589. MilitaryEnlistmentIndicator indicates that a student leaver enlisted in the United States Armed Forces.';
COMMENT ON COLUMN tx.PriorYearLeaverGraduationSet.TexasFirstEarlyHSCompletionProgramDescriptorId IS 'E1736, C233. TexasFirstEarlyHSCompletionProgram indicates the student graduated early under the Texas First Early High School Completion Program and specifies whether the student graduated two or more semesters or less than two semesters or equivalent earlier than the expected graduation date of the student''s high school cohort.';

-- Extended Properties [tx].[PriorYearLeaverIndustryBasedCertificationSet] --
COMMENT ON TABLE tx.PriorYearLeaverIndustryBasedCertificationSet IS 'Common Type IndustryBasedCertificationSet.';
COMMENT ON COLUMN tx.PriorYearLeaverIndustryBasedCertificationSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverIndustryBasedCertificationSet.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverIndustryBasedCertificationSet.DateCertTaken IS 'E1632. DateCertTaken indicates the date upon which the industry based certification was taken.';
COMMENT ON COLUMN tx.PriorYearLeaverIndustryBasedCertificationSet.IBCVendorDescriptorId IS 'E1655, C226. IBCVendorCode identifies the organization or company that offered the service.';
COMMENT ON COLUMN tx.PriorYearLeaverIndustryBasedCertificationSet.PostSecondaryCertificationLicensureDescriptorId IS 'E1640, C214. PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.';
COMMENT ON COLUMN tx.PriorYearLeaverIndustryBasedCertificationSet.PostSecondaryCertLicensureResultDescriptorId IS 'E1733, C232. PostSecondaryCertLicensureResult indicates the result of a state, nationally, or internationally recognized industry-based certification exam taken by a student.';
COMMENT ON COLUMN tx.PriorYearLeaverIndustryBasedCertificationSet.IBCExamFeeAmount IS 'E1654. IBCExamFeeAmount identifies the amount of money that was paid for a student''s industry certification exam by the local education agency.';

-- Extended Properties [tx].[PriorYearLeaverLanguage] --
COMMENT ON TABLE tx.PriorYearLeaverLanguage IS 'E3033, C092. Language indicates the language used in the student’s home and the language used by the student, as determined by the student’s home language survey. (see 19 TAC §89.1215).';
COMMENT ON COLUMN tx.PriorYearLeaverLanguage.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverLanguage.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverLanguage.LanguageDescriptorId IS 'A specification of which written or spoken communication is being used.';

-- Extended Properties [tx].[PriorYearLeaverLanguageUse] --
COMMENT ON TABLE tx.PriorYearLeaverLanguageUse IS 'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).';
COMMENT ON COLUMN tx.PriorYearLeaverLanguageUse.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverLanguageUse.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverLanguageUse.LanguageDescriptorId IS 'A specification of which written or spoken communication is being used.';
COMMENT ON COLUMN tx.PriorYearLeaverLanguageUse.LanguageUseDescriptorId IS 'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).';

-- Extended Properties [tx].[PriorYearLeaverParent] --
COMMENT ON TABLE tx.PriorYearLeaverParent IS 'This entity represents a parent or guardian of a student, such as mother, father, or caretaker, for a prior year leaver.';
COMMENT ON COLUMN tx.PriorYearLeaverParent.ParentUId IS 'E3078. ParentUId is a unique number or alphanumeric code assigned to a person by the LEA.';
COMMENT ON COLUMN tx.PriorYearLeaverParent.FirstName IS 'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.';
COMMENT ON COLUMN tx.PriorYearLeaverParent.GenerationCodeDescriptorId IS 'E0706, C012. GenerationCode identifies the generation suffix, if any, which the person attaches to his name (e.g., Jr., Sr., III).';
COMMENT ON COLUMN tx.PriorYearLeaverParent.GenerationCodeSuffix IS 'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).';
COMMENT ON COLUMN tx.PriorYearLeaverParent.LastSurname IS 'The name borne in common by members of a family.';
COMMENT ON COLUMN tx.PriorYearLeaverParent.MaidenName IS 'The individual''s maiden name.';
COMMENT ON COLUMN tx.PriorYearLeaverParent.MiddleName IS 'A secondary name given to an individual at birth, baptism, or during another naming ceremony.';
COMMENT ON COLUMN tx.PriorYearLeaverParent.PersonalTitlePrefix IS 'A prefix used to denote the title, degree, position, or seniority of the individual.';

-- Extended Properties [tx].[PriorYearLeaverParentAddress] --
COMMENT ON TABLE tx.PriorYearLeaverParentAddress IS 'The set of elements that describes an address, including the street address, city, state, and ZIP code.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.ParentUId IS 'E3078. ParentUId is a unique number or alphanumeric code assigned to a person by the LEA.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.AddressTypeDescriptorId IS 'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.ApartmentRoomSuiteNumber IS 'The apartment, room, or suite number of an address.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.BuildingSiteNumber IS 'The number of the building on the site, if more than one building shares the same address.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.City IS 'The name of the city in which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.CongressionalDistrict IS 'The congressional district in which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.CountyFIPSCode IS 'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.DoNotPublishIndicator IS 'An indication that the address should not be published.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.Latitude IS 'The geographic latitude of the physical address.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.LocaleDescriptorId IS 'A general geographic indicator that categorizes U.S. territory (e.g., City, Suburban).';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.Longitude IS 'The geographic longitude of the physical address.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.NameOfCounty IS 'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.PostalCode IS 'The five or nine digit zip code or overseas postal code portion of an address.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.StateAbbreviationDescriptorId IS 'The abbreviation for the state (within the United States) or outlying area in which an address is located.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddress.StreetNumberName IS 'The street number and street name or post office box number of an address.';

-- Extended Properties [tx].[PriorYearLeaverParentAddressPeriod] --
COMMENT ON TABLE tx.PriorYearLeaverParentAddressPeriod IS 'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddressPeriod.ParentUId IS 'E3078. ParentUId is a unique number or alphanumeric code assigned to a person by the LEA.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddressPeriod.BeginDate IS 'The month, day, and year for the start of the period.';
COMMENT ON COLUMN tx.PriorYearLeaverParentAddressPeriod.EndDate IS 'The month, day, and year for the end of the period.';

-- Extended Properties [tx].[PriorYearLeaverParentElectronicMail] --
COMMENT ON TABLE tx.PriorYearLeaverParentElectronicMail IS 'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.';
COMMENT ON COLUMN tx.PriorYearLeaverParentElectronicMail.ParentUId IS 'E3078. ParentUId is a unique number or alphanumeric code assigned to a person by the LEA.';
COMMENT ON COLUMN tx.PriorYearLeaverParentElectronicMail.DoNotPublishIndicator IS 'An indication that the electronic email address should not be published.';
COMMENT ON COLUMN tx.PriorYearLeaverParentElectronicMail.ElectronicMailAddress IS 'The electronic mail (e-mail) address listed for an individual or organization.';
COMMENT ON COLUMN tx.PriorYearLeaverParentElectronicMail.ElectronicMailTypeDescriptorId IS 'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)';
COMMENT ON COLUMN tx.PriorYearLeaverParentElectronicMail.PrimaryEmailAddressIndicator IS 'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.';

-- Extended Properties [tx].[PriorYearLeaverParentPersonalIdentificationDocument] --
COMMENT ON TABLE tx.PriorYearLeaverParentPersonalIdentificationDocument IS 'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.ParentUId IS 'E3078. ParentUId is a unique number or alphanumeric code assigned to a person by the LEA.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.IdentificationDocumentUseDescriptorId IS 'The primary function of the document used for establishing identity.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.PersonalInformationVerificationDescriptorId IS 'The category of the document relative to its purpose.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.DocumentExpirationDate IS 'The day when the document  expires, if null then never expires.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.DocumentTitle IS 'The title of the document given by the issuer.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.IssuerCountryDescriptorId IS 'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.IssuerDocumentIdentificationCode IS 'The unique identifier on the issuer''s identification system.';
COMMENT ON COLUMN tx.PriorYearLeaverParentPersonalIdentificationDocument.IssuerName IS 'Name of the entity or institution that issued the document.';

-- Extended Properties [tx].[PriorYearLeaverParentTelephone] --
COMMENT ON TABLE tx.PriorYearLeaverParentTelephone IS 'The 10-digit telephone number, including the area code, of an individual or organization.';
COMMENT ON COLUMN tx.PriorYearLeaverParentTelephone.ParentUId IS 'E3078. ParentUId is a unique number or alphanumeric code assigned to a person by the LEA.';
COMMENT ON COLUMN tx.PriorYearLeaverParentTelephone.DoNotPublishIndicator IS 'An indication that the telephone number should not be published.';
COMMENT ON COLUMN tx.PriorYearLeaverParentTelephone.OrderOfPriority IS 'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.';
COMMENT ON COLUMN tx.PriorYearLeaverParentTelephone.TelephoneNumber IS 'The telephone number including the area code, and extension, if applicable.';
COMMENT ON COLUMN tx.PriorYearLeaverParentTelephone.TelephoneNumberTypeDescriptorId IS 'The type of communication number listed for an individual or organization.';
COMMENT ON COLUMN tx.PriorYearLeaverParentTelephone.TextMessageCapabilityIndicator IS 'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.';

-- Extended Properties [tx].[PriorYearLeaverPersonalIdentificationDocument] --
COMMENT ON TABLE tx.PriorYearLeaverPersonalIdentificationDocument IS 'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.IdentificationDocumentUseDescriptorId IS 'The primary function of the document used for establishing identity.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.PersonalInformationVerificationDescriptorId IS 'The category of the document relative to its purpose.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.DocumentExpirationDate IS 'The day when the document  expires, if null then never expires.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.DocumentTitle IS 'The title of the document given by the issuer.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.IssuerCountryDescriptorId IS 'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.IssuerDocumentIdentificationCode IS 'The unique identifier on the issuer''s identification system.';
COMMENT ON COLUMN tx.PriorYearLeaverPersonalIdentificationDocument.IssuerName IS 'Name of the entity or institution that issued the document.';

-- Extended Properties [tx].[PriorYearLeaverRace] --
COMMENT ON TABLE tx.PriorYearLeaverRace IS 'The enumeration items defining the racial categories which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies.';
COMMENT ON COLUMN tx.PriorYearLeaverRace.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverRace.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverRace.RaceDescriptorId IS 'The enumeration items defining the racial categories which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies.';

-- Extended Properties [tx].[PriorYearLeaverStudentCharacteristic] --
COMMENT ON TABLE tx.PriorYearLeaverStudentCharacteristic IS 'This descriptor captures important characteristics of the student''s environment or situation. Generally used for non-program-based student characteristics.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentCharacteristic.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentCharacteristic.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentCharacteristic.StudentCharacteristicDescriptorId IS 'This descriptor captures important characteristics of the student''s environment or situation. Generally used for non-program-based student characteristics.';

-- Extended Properties [tx].[PriorYearLeaverStudentParentAssociation] --
COMMENT ON TABLE tx.PriorYearLeaverStudentParentAssociation IS 'This association relates prior year leavers to their parents, guardians, or caretakers, as they were reported in the prior year.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentParentAssociation.ParentUId IS 'E3078. ParentUId is a unique number or alphanumeric code assigned to a person by the LEA.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentParentAssociation.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentParentAssociation.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentParentAssociation.ContactPriority IS 'E1427. ContactPriority indicates the numeric order of the preferred sequence or priority of contact.';
COMMENT ON COLUMN tx.PriorYearLeaverStudentParentAssociation.RelationDescriptorId IS 'The nature of an individual''s relationship to a student.';

-- Extended Properties [tx].[PriorYearLeaverTelephone] --
COMMENT ON TABLE tx.PriorYearLeaverTelephone IS 'The 10-digit telephone number, including the area code, of an individual or organization.';
COMMENT ON COLUMN tx.PriorYearLeaverTelephone.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.PriorYearLeaverTelephone.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';
COMMENT ON COLUMN tx.PriorYearLeaverTelephone.TelephoneNumber IS 'The telephone number including the area code, and extension, if applicable.';
COMMENT ON COLUMN tx.PriorYearLeaverTelephone.TelephoneNumberTypeDescriptorId IS 'The type of communication number listed for an individual or organization.';
COMMENT ON COLUMN tx.PriorYearLeaverTelephone.DoNotPublishIndicator IS 'An indication that the telephone number should not be published.';
COMMENT ON COLUMN tx.PriorYearLeaverTelephone.OrderOfPriority IS 'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.';
COMMENT ON COLUMN tx.PriorYearLeaverTelephone.TextMessageCapabilityIndicator IS 'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.';

-- Extended Properties [tx].[ProgramOfStudyDescriptor] --
COMMENT ON TABLE tx.ProgramOfStudyDescriptor IS 'Descriptor ProgramOfStudy is populated from code table C220.';
COMMENT ON COLUMN tx.ProgramOfStudyDescriptor.ProgramOfStudyDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[RegionalDaySchoolProgramForDeafDescriptor] --
COMMENT ON TABLE tx.RegionalDaySchoolProgramForDeafDescriptor IS 'Descriptor RegionalDaySchoolProgramForDeaf is based on code table C067.';
COMMENT ON COLUMN tx.RegionalDaySchoolProgramForDeafDescriptor.RegionalDaySchoolProgramForDeafDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ReportAssessmentTypeDescriptor] --
COMMENT ON TABLE tx.ReportAssessmentTypeDescriptor IS 'Descriptor ReportAssessmentType is populated from code table C306.';
COMMENT ON COLUMN tx.ReportAssessmentTypeDescriptor.ReportAssessmentTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ReportingPeriodDescriptor] --
COMMENT ON TABLE tx.ReportingPeriodDescriptor IS 'Descriptor ReportingPeriod is populated from Code Table C130.';
COMMENT ON COLUMN tx.ReportingPeriodDescriptor.ReportingPeriodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ReportingPeriodExt] --
COMMENT ON TABLE tx.ReportingPeriodExt IS 'The ActualExtension Domain Entity represents the sum of the financial transactions to date relating to a specific account.';
COMMENT ON COLUMN tx.ReportingPeriodExt.CalendarCode IS 'The identifier for the calendar.';
COMMENT ON COLUMN tx.ReportingPeriodExt.Date IS 'The month, day, and year of the calendar event.';
COMMENT ON COLUMN tx.ReportingPeriodExt.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.ReportingPeriodExt.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.ReportingPeriodExt.SchoolYear IS 'The identifier for the school year associated with the calendar.';
COMMENT ON COLUMN tx.ReportingPeriodExt.BeginDate IS 'E3010. BeginDate indicates the month, day, and year for the specified data element becomes true of the student, staff, program, etc.';
COMMENT ON COLUMN tx.ReportingPeriodExt.EndDate IS 'E3020. EndDate indicates the month, day, and year for the specified data element becomes false of the student, staff, program, etc.';
COMMENT ON COLUMN tx.ReportingPeriodExt.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';

-- Extended Properties [tx].[RestraintEventExtension] --
COMMENT ON TABLE tx.RestraintEventExtension IS '';
COMMENT ON COLUMN tx.RestraintEventExtension.RestraintEventIdentifier IS 'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.';
COMMENT ON COLUMN tx.RestraintEventExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.RestraintEventExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.RestraintEventExtension.NonMembershipDisciplineRestraintIndicator IS 'E1725. NonMembershipDisciplineRestraintIndicator indicates the discipline incident or restraint event being reported is for a special education student enrolled, not in membership.';
COMMENT ON COLUMN tx.RestraintEventExtension.RestraintStaffTypeDescriptorId IS 'E1516, C194. RestraintStaffType indicates the kind of school staff person that performed a student restraint.';

-- Extended Properties [tx].[RestraintStaffTypeDescriptor] --
COMMENT ON TABLE tx.RestraintStaffTypeDescriptor IS 'Descriptor RestraintStaffType indicates the kind of school staff person that performed a student restraint. (C194)';
COMMENT ON COLUMN tx.RestraintStaffTypeDescriptor.RestraintStaffTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[SchoolCampusEnrollmentTypeSet] --
COMMENT ON TABLE tx.SchoolCampusEnrollmentTypeSet IS 'CampusEnrollmentType with effective dates';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.BeginDate IS 'Begin date of the effecive date for the CampusEnrollmentType';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.CampusEnrollmentTypeDescriptorId IS 'E1641, C219. CampusEnrollmentType specifies the method by which the campus draws student enrollment.';
COMMENT ON COLUMN tx.SchoolCampusEnrollmentTypeSet.EndDate IS 'End date of the effecive date for the CampusEnrollmentType';

-- Extended Properties [tx].[SchoolCharterWaitlistSet] --
COMMENT ON TABLE tx.SchoolCharterWaitlistSet IS 'CharterWaitlist with effective dates';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.CharterAdmissionWaitlist IS 'E1676. CharterAdmissionWaitlist indicates whether the charter school campus uses a waitlist for admission.';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.CharterEducationalEnrollmentCapacity IS 'E1675. CharterEducationalEnrollmentCapacity indicates the number of students to which the charter school’s campus is able to provide instruction without exceeding staffing and facility limitations and the approved charter holder''s maximum enrollment.';
COMMENT ON COLUMN tx.SchoolCharterWaitlistSet.NumberCharterStudentsEnrolled IS 'E1674. NumberCharterStudentsEnrolled indicates the number of students enrolled at a charter school’s campus as of the last Friday in September.';

-- Extended Properties [tx].[SchoolELOSet] --
COMMENT ON TABLE tx.SchoolELOSet IS 'ELOSet captures data (with effective dates) for school participation in expanded learning opportunities.';
COMMENT ON COLUMN tx.SchoolELOSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolELOSet.ELOTypeDescriptorId IS 'E1614, C218. ELOType indicates the type of expanded learning opportunity (ELO) program offered at the campus.';

-- Extended Properties [tx].[SchoolELOSetELOActivitySet] --
COMMENT ON TABLE tx.SchoolELOSetELOActivitySet IS 'Collection of SchoolELOActivity. For each expanded learning opportunity offered by a school, more than one ELO activity can be reported.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELOTypeDescriptorId IS 'E1614, C218. ELOType indicates the type of expanded learning opportunity (ELO) program offered at the campus.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELOActivityDescriptorId IS 'E1719, C229. ELOActivity indicates the specific Expanded Learning Opportunity (ELO) activity offered at the campus';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELODaysScheduledPerYear IS 'E1720. ELODaysScheduledPerYear indicates the number of days the Expanded Learning Opportunity (ELO) activity is offered during the school year.';
COMMENT ON COLUMN tx.SchoolELOSetELOActivitySet.ELOMinutesScheduledPerDay IS 'E1621. ELOMinutesScheduledPerDay indicates the number of minutes scheduled each day for a given ELOActivity.';

-- Extended Properties [tx].[SchoolExtension] --
COMMENT ON TABLE tx.SchoolExtension IS '';
COMMENT ON COLUMN tx.SchoolExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolExtension.AdditionalDaysProgram IS 'E1671. AdditionalDaysProgram indicates whether the campus implemented an Additional Days School Year program for any students in prekindergarten through fifth grades as described in TEC §48.0051.';
COMMENT ON COLUMN tx.SchoolExtension.ExpandedLearningOpportunity IS 'E1613. ExpandedLearningOpportunity indicates if the campus offers any expanded learning opportunity (ELO) as listed in TEC 33.252.';
COMMENT ON COLUMN tx.SchoolExtension.NumberOfBullyingIncidents IS 'E1727. NumberOfBullyingIncidents indicates the number of reported incidents of bullying at each campus.';
COMMENT ON COLUMN tx.SchoolExtension.NumberOfCyberbullyingIncidents IS 'E1727. NumberOfCyberbullyingIncidents indicates the number of reported incidents of cyberbullying at each campus.';
COMMENT ON COLUMN tx.SchoolExtension.PKFullDayWaiver IS 'E1646. PKFullDayWaiver indicates whether the campus has received an exemption from offering a full-day prekindergarten program.';

-- Extended Properties [tx].[SchoolNSLPTypeSet] --
COMMENT ON TABLE tx.SchoolNSLPTypeSet IS 'NSLPType with effective dates';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.BeginDate IS 'Begin date of the effecive date for the NSLPType';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.EndDate IS 'End date of the effecive date for the NSLPType';
COMMENT ON COLUMN tx.SchoolNSLPTypeSet.NSLPTypeDescriptorId IS 'E1591, C212. NSLPType indicates a campus''s  National School Lunch Program (NSLP) participation status.  The NSLP provides reimbursement to schools for free or reduced-price meals based on student eligibility.  Options for claiming reimbursement under the NSLP include:  eligibility determined at the individual student/family level (participation in NSLP without using any Provision or the Community Eligibility Program) or at the campus/community level (Provision 2 or Community Eligibility Program).';

-- Extended Properties [tx].[SectionSet] --
COMMENT ON TABLE tx.SectionSet IS 'Extensions to Section with effective dates.';
COMMENT ON COLUMN tx.SectionSet.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN tx.SectionSet.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SectionSet.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.SectionSet.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN tx.SectionSet.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN tx.SectionSet.BeginDate IS 'The month, day, and year for the start of the period.';
COMMENT ON COLUMN tx.SectionSet.ChildCareOperationNumber IS 'E1726. ChildCareOperationNumber identifies the childcare facility operation number assigned by the Child Care Regulation (CCR) department. The facility serves students who are dually enrolled in the Local Education Agency''s public prekindergarten course section and childcare program.';
COMMENT ON COLUMN tx.SectionSet.ClassTypeDescriptorId IS 'E1055, C179. ClassType identifies the type of class providing instruction to students in particular class settings.';
COMMENT ON COLUMN tx.SectionSet.CourseSequenceDescriptorId IS 'E0948, C135. CourseSequence identifies the unique part(s) of a course when a course is taught during a single grading period or semester or across multiple grading periods or semesters.';
COMMENT ON COLUMN tx.SectionSet.CTEHours IS 'E3011. CTEHours indicate the number of contact hours assigned to a particular section of a course.';
COMMENT ON COLUMN tx.SectionSet.EndDate IS 'The month, day, and year for the end of the period.';
COMMENT ON COLUMN tx.SectionSet.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student, or the grade level(s) offered at a school.';
COMMENT ON COLUMN tx.SectionSet.HighQualityPKProgram IS 'E1580. HighQualityPKProgram indicates campus/course/section participation in the High Quality Pre-K Program consistent with requirements in TEC 29.167-29.171.';
COMMENT ON COLUMN tx.SectionSet.NonCampusBasedInstructionDescriptorId IS 'E1072, C182. NonCampusBasedInstruction indicates that a course was offered for class credit or student achievement, but 1) was not taught by a school district/charter school employee or a contracted teacher, or 2) was taught by a school district/charter school employee or a contracted teacher at a facility other than the campus where the student is enrolled. Examples include but are not limited to college based instruction, non-district teacher, non-campus teacher, internet based instruction, and Texas Virtual School Network (TxVSN).';
COMMENT ON COLUMN tx.SectionSet.PKCurriculaDescriptorId IS 'E1579, C206. PKCurricula indicates curricula used in the district''s prekindergarten program section TEC 29.1532(c)(6).';
COMMENT ON COLUMN tx.SectionSet.PKSchoolTypeDescriptorId IS 'E1555, C310. PKSchoolType indicates the type of prekindergarten program that is offered.';
COMMENT ON COLUMN tx.SectionSet.PKStudentInstructionDescriptorId IS 'E1558, C311. StudentInstruction indicates the PK student type of instruction.';
COMMENT ON COLUMN tx.SectionSet.PopulationServedDescriptorId IS 'E0747, C030. PopulationServed identifies the student population for which a service has been designed or is intended. It does not necessarily identify the program eligibility of the students who receive the service.';

-- Extended Properties [tx].[SharedServiceArrangementExt] --
COMMENT ON TABLE tx.SharedServiceArrangementExt IS 'The SharedServiceArrangementExtension Domain Entity represents the sum of the financial transactions to date for shared service arrangements.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.FiscalYear IS 'E0974. FiscalYear is the last digit of the fiscal year, e.g., the fiscal year is 4 for the 2013-14 fiscal year.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.SSAFundDescriptorId IS 'E0316, C145. Fund identifies the fund group and specific fund (when applicable) for actual financial data.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.SSAMemberDistrictId IS 'E0981. SSAMemberDistrictID indicates the county-district number of the school district (as registered with the Texas Education Agency) which is a member district in the shared services arrangement.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.SSATypeDescriptorId IS 'E0776, C049. SSAType indicates the type of program or service provided by a shared services arrangement.';
COMMENT ON COLUMN tx.SharedServiceArrangementExt.ActualAmount IS 'E0774. ActualAmount indicates the dollar value associated with actual financial account information.';

-- Extended Properties [tx].[SharedServiceArrangementStaffDescriptor] --
COMMENT ON TABLE tx.SharedServiceArrangementStaffDescriptor IS 'Descriptor SharedServiceArrangementStaff is populated from code table C169';
COMMENT ON COLUMN tx.SharedServiceArrangementStaffDescriptor.SharedServiceArrangementStaffDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[SpecialEducationProgramReportingPeriodAttendance] --
COMMENT ON TABLE tx.SpecialEducationProgramReportingPeriodAttendance IS 'This extended entity represents the special education program attendance of a student.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.InstructionalSettingDescriptorId IS 'E0173, C035. InstructionalSetting identifies the setting used in providing instruction to students.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.RegionalDaySchoolProgramForDeafDescriptorId IS 'E0833. RegionalDaySchoolProgramForDeaf indicates the student is receiving instructional servies from the regional day school program for the deaf.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.EligibleDaysPresentInInstrSetting IS 'E0944. EligibleDaysPresentInInstrSetting indicates the number of days the student was eligible and present in a designated instructional setting during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.ExcessHoursInInstructionalSetting IS 'E0945. ExcessHoursInInstructionalSetting indicates the number of hours above the allowable six hours per day of combined career and technical education and special education and related services in a designated instructional setting during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.LEAOfRDSPDService IS 'E1527. LEAOfRDSPDService indicates the RDSPD Fiscal Agent district that provides the RDSPD service to a particular RDSPD student.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.RAEligibleDaysPresentInInstrSetting IS 'E1691. RAEligibleDaysPresentInInstrSetting indicates the number of days the student was eligible and remote asynchronous present in a designated instructional setting during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.RAExcessHoursInInstructionalSetting IS 'E1695. RAExcessHoursInInstructionalSetting indicates the number of hours above the allowable six hours per day of remote asynchronous instruction combined career and technical education and special education and related services in a designed instructional setting during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.RSEligibleDaysPresentInInstrSetting IS 'E1690. RSEligibleDaysPresentInInstrSetting indicates the number of days the student was eligible and remote synchronous present in a designated instructional setting during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialEducationProgramReportingPeriodAttendance.RSExcessHoursInInstructionalSetting IS 'E1694. RSExcessHoursInInstructionalSetting indicates the number of hours above the allowable six hours per day of remote synchronous instruction combined career and technical education and special education and related services in a designed instructional setting during a particular reporting period.';

-- Extended Properties [tx].[SpecialProgramsReportingPeriodAttendance] --
COMMENT ON TABLE tx.SpecialProgramsReportingPeriodAttendance IS 'This extended entity represents the recording of a student’s special programs reporting period attendance.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.CalendarCode IS 'E0975. CalendarCode indicates a unique campus calendar of school days for a particular group of students on a campus. Students with the same instructional track have the same number of days taught in a particular reporting period at a campus.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.GradeLevelDescriptorId IS 'E0017, C050. GradeLevel indicates the current grade level of the student.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.ReportingPeriodDescriptorId IS 'E0934, C130. ReportingPeriod indicates the period for which the attendance data are being reported.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.NumberDaysTaught IS 'E0935. NumberDaysTaught indicates the number of days of instruction offered, as shown on the school calendar, during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.RATotalEligPregRelSvcsDaysPresent IS 'E1687. RATotalEligPregRelSvcsDaysPresent indicates the total number of days a female student was remote asynchronous present or served through Compensatory Education Home Instruction (CEHI) and an eligible recipient of pregnancy related services during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.RATotalEligResidentialFacilityDaysPresent IS 'E1685. RATotalEligResidentialFacilityDaysPresent indicates the total number of days the student was remote asynchronous present and eligible for LEA services in a Residential Facility during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.RATotalEligSpEdMainstreamDaysPresent IS 'E1689. SpecialProgramsReportingPeriodAttendance indicates the total number of days a student with special education individualized education program which provided for the mainstream instructional arrangement/setting was remote asynchronous present during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.RSTotalEligPregRelSvcsDaysPresent IS 'E1686. RSTotalEligPregRelSvcsDaysPresent indicates the total number of days a female student was remote synchronous present or served through Compensatory Education Home Instruction (CEHI) and an eligible recipient of pregnancy related services during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.RSTotalEligResidentialFacilityDaysPresent IS 'E1684. TotalEligResidentialFacilityDaysPresent indicates the total number of days the student was present and eligible for LEA services while living in a Residential Facility during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.RSTotalEligSpEdMainstreamDaysPresent IS 'E1688. RSTotalEligSpEdMainstreamDaysPresent indicates the total number of days a student with special education individualized education program which provided for the mainstream instructional arrangement/setting was remote synchronous present during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.TotalEligPregRelSvcsDaysPresent IS 'E0939. TotalEligPregRelSvcsDaysPresent indicates the total number of days a female student was present at school or served through Compensatory Education Home Instruction (CEHI) and an eligible recipient of pregnancy related services during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.TotalEligResidentialFacilityDaysPresent IS 'E1652. TotalEligResidentialFacilityDaysPresent indicates the total number of days the student was present and eligible for LEA services while living in a Residential Facility during a particular reporting period.';
COMMENT ON COLUMN tx.SpecialProgramsReportingPeriodAttendance.TotalEligSpEdMainstreamDaysPresent IS 'E0940. TotalEligSpEdMainstreamDaysPresent indicates the total number of days a student with a special education individualized education program which provided for the mainstream instructional arrangement/setting was present during a particular reporting period.';

-- Extended Properties [tx].[SSAFundDescriptor] --
COMMENT ON TABLE tx.SSAFundDescriptor IS 'Descriptor Fund is populated from Code Table C145S.';
COMMENT ON COLUMN tx.SSAFundDescriptor.SSAFundDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[SSAOrgAssociationExt] --
COMMENT ON TABLE tx.SSAOrgAssociationExt IS 'The SSAOrgAssociationExtension Domain Entity identifies the ESC/LEA fiscal agents and the ESC and/or LEA member(s) for each type of shared services arrangement (SSA) that exists among two or more ESCs and or LEAs.';
COMMENT ON COLUMN tx.SSAOrgAssociationExt.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.SSAOrgAssociationExt.FiscalAgentDistrictId IS 'E0777. FiscalAgentDistrictID is the county-district number of the shared services arrangement fiscal agent registered with the Texas Education Agency.';
COMMENT ON COLUMN tx.SSAOrgAssociationExt.SSATypeDescriptorId IS 'E0776, C049. SSAType indicates the type of program or service provided by the shared service arrangement.';

-- Extended Properties [tx].[SSATypeDescriptor] --
COMMENT ON TABLE tx.SSATypeDescriptor IS 'Descriptor SSAType is populated from Code Table C049.';
COMMENT ON COLUMN tx.SSATypeDescriptor.SSATypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StaffEducationOrganizationAssignmentAssociationExtension] --
COMMENT ON TABLE tx.StaffEducationOrganizationAssignmentAssociationExtension IS '';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.BeginDate IS 'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationExtension.SharedServiceArrangementStaffDescriptorId IS 'E1015, C169. SharedServiceArrangementStaff indicates whether the education service center staff responsibility being reported is part of a shared services arrangement for which the education service center is the fiscal agent.';

-- Extended Properties [tx].[StaffEducationOrganizationAssignmentAssociationStaffServiceSet] --
COMMENT ON TABLE tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet IS 'StaffServiceSet represents the non-instructional responsibilities of the associated staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.BeginDate IS 'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffClassificationDescriptorId IS 'The titles of employment, official status, or rank of education staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffServiceBeginDate IS 'E3060. StaffServiceBeginDate indicates the month, day, and year the staff member began providing the particular services.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffServiceDescriptorId IS 'E0724, C021. StaffService refers to the services supplied by staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.GradeLevelDescriptorId IS 'This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.MonthlyMinutes IS 'E1057. MonthlyMinutes is the total minutes devoted to a particular service in a standard month. A standard month is the four weeks in October, including the PEIMS Fall snapshot date (last Friday in October).';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.NumberOfStudentsInClass IS 'E0170. NumberOfStudentsInClass indicates the number of students served in the class.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.PopulationServedDescriptorId IS 'E0747, C030. identifies the student population for which a student has been designed or is intended. It does not necessarily identify the program eligibility of the students who receive the service.';
COMMENT ON COLUMN tx.StaffEducationOrganizationAssignmentAssociationStaffServiceSet.StaffServiceEndDate IS 'E3061. StaffServiceEndDate indicates the month, day, and year for when the services supplied by the staff becomes false.';

-- Extended Properties [tx].[StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82] --
COMMENT ON TABLE tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82 IS 'AuxiliaryRoleId with effective dates.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.AuxiliaryRoleIdDescriptorId IS 'E1594, C213. AuxiliaryRoleId identifies the capacity in which a non-exempt auxiliary employee serves.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.BeginDate IS 'Begin date of the effecive date for the AuxiliaryRoleId';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationAuxiliary_116d82.EndDate IS 'End date of the effecive date for the AuxiliaryRoleId';

-- Extended Properties [tx].[StaffEducationOrganizationEmploymentAssociationExtension] --
COMMENT ON TABLE tx.StaffEducationOrganizationEmploymentAssociationExtension IS '';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.HireDate IS 'The month, day, and year on which an individual was hired for a position.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.NumberDaysEmployed IS 'E0160. NumberDaysEmployed indicates the actual number of at-work days within the school year that a person is scheduled to work in the district. This number does not include holidays, weekends, and any other days the employee is not scheduled to work.';
COMMENT ON COLUMN tx.StaffEducationOrganizationEmploymentAssociationExtension.PercentDayEmployed IS 'E0760. PercentDayEmployed is that percentage of a standard district work day for which the employee is hired to work. For an employee on contract, the percentage may be determined directly from the contract: full-time = ''100''; half-time = ''50''; and so on. For an employee who is not on contract, the percentage may be determined as follows. Example: The standard work day for the district is 7 hours. An employee is hired to work for 4 hours a day. This data element is coded as ''57'' for this employee because 4/7 = .571, which is rounded down.';

-- Extended Properties [tx].[StaffExtension] --
COMMENT ON TABLE tx.StaffExtension IS '';
COMMENT ON COLUMN tx.StaffExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffExtension.AdditionalDaysProgramTeacher IS 'E1673. AdditionalDaysProgramTeacher indicates if a teacher is teaching students eligible for the additional days school year program as described in TEC Sec. §48.0051.';
COMMENT ON COLUMN tx.StaffExtension.CreditableYearOfService IS 'E1721. CreditableYearOfService indicates a teacher (ROLE-ID 087) who currently qualifies for the TIA allotment or has been submitted by the LEA for a new or change of designation, and has been employed by the LEA and compensated or will be compensated by the LEA for a creditable year of service. (§153.1021)';
COMMENT ON COLUMN tx.StaffExtension.GenerationCodeDescriptorId IS 'E0706, E1303, C012, DC148. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';
COMMENT ON COLUMN tx.StaffExtension.PKTeacherRequirementDescriptorId IS 'E1581, C207. Each teacher of record for a prekindergarten program class serving eligible four-year-old students must be certified under Subchapter B, Chapter 21; and have one of the additional qualifications found in the C207 code table.';
COMMENT ON COLUMN tx.StaffExtension.StaffDoNotReportTSDS IS 'E3069. StaffDoNotReportTSDS indicates the staff should not be reported for TSDS state or federal data collections.';
COMMENT ON COLUMN tx.StaffExtension.StaffId IS 'E0505. StaffID is the person''s Social Security number.';
COMMENT ON COLUMN tx.StaffExtension.TotalYearsPriorTeachingExperience IS 'E1377. TotalYearsPriorTeachingExperience indicates the total number of years that an individual has previously held a teaching position in one or more education institutions.';
COMMENT ON COLUMN tx.StaffExtension.TotalYearsProfExperience IS 'E0130. TotalYearsProfExperience indicates the number of verifiable years of creditable experience as specified in 19 TAC, Chapter 153.1021.';
COMMENT ON COLUMN tx.StaffExtension.YearsExperienceInDistrict IS 'E0161. YearsExperienceInDistrict indicates the number of completed years that a person has been employed in any professional position in the current district or education service center, whether or not there has been any interruption in service.';

-- Extended Properties [tx].[StaffParaprofessionalCertificationSet] --
COMMENT ON TABLE tx.StaffParaprofessionalCertificationSet IS 'ParaprofessionalCertification with effective dates';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.BeginDate IS 'Begin date of the effecive date for the StaffTypeSet';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.EndDate IS 'End date of the effecive date for the StaffTypeSet';
COMMENT ON COLUMN tx.StaffParaprofessionalCertificationSet.ParaprofessionalCertification IS 'E1670. ParaprofessionalCertification indicates whether a paraprofessional staff person is certified.';

-- Extended Properties [tx].[StaffSectionAssociationExtension] --
COMMENT ON TABLE tx.StaffSectionAssociationExtension IS '';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.MonthlyMinutes IS 'E1057. is the total number of minutes devoted to a particular service in a standard month. A standard month is considered to be the four weeks in October including the PEIMS Fall snapshot date (last Friday in October).';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek1 IS 'E1604. NumberDaysTaughtWeek1 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek2 IS 'E1605. NumberDaysTaughtWeek2 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek3 IS 'E1606. NumberDaysTaughtWeek3 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberDaysTaughtWeek4 IS 'E1607. NumberDaysTaughtWeek4 indicates, for a physical education teaching staff responsibility, the number of days in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek1 IS 'E1608. NumberMinutesTaughtWeek1 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek2 IS 'E1609. NumberMinutesTaughtWeek2 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek3 IS 'E1610. NumberMinutesTaughtWeek3 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberMinutesTaughtWeek4 IS 'E1611. NumberMinutesTaughtWeek4 indicates, for a physical education teaching staff responsibility, the number of minutes in which physical education instruction is provided for each course section by campus during the first week of the 4 weeks in October that includes the last Friday in October.';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.NumberOfStudentsInClass IS 'E0170. NumberOfStudentsInClass indicates the number of students served in the class';
COMMENT ON COLUMN tx.StaffSectionAssociationExtension.SharedServiceArrangementStaffDescriptorId IS 'E1015, C169. SharedServiceArrangementStaff indicates whether the education service center staff responsibility being reported is part of a shared services arrangement for which the education service center is the fiscalagent.';

-- Extended Properties [tx].[StaffServiceDescriptor] --
COMMENT ON TABLE tx.StaffServiceDescriptor IS 'StaffService refers to the services supplied by staff. (C343)';
COMMENT ON COLUMN tx.StaffServiceDescriptor.StaffServiceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StaffTeacherIncentiveAllotmentDesignation] --
COMMENT ON TABLE tx.StaffTeacherIncentiveAllotmentDesignation IS 'E1722, C322. TeacherIncentiveAllotmentDesignationCode indicates a teacher (ROLE-ID 087) is an Active National Board Certified Teacher, holds a current designation (Recognized, Exemplary, or Master) and/or has been submitted by an LEA for a new or change of designation in the Teacher Incentive Allotment.';
COMMENT ON COLUMN tx.StaffTeacherIncentiveAllotmentDesignation.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffTeacherIncentiveAllotmentDesignation.TeacherIncentiveAllotmentDesignationDescriptorId IS 'E1722, C322. TeacherIncentiveAllotmentDesignationCode indicates a teacher (ROLE-ID 087) is an Active National Board Certified Teacher, holds a current designation (Recognized, Exemplary, or Master) and/or has been submitted by an LEA for a new or change of designation in the Teacher Incentive Allotment.';

-- Extended Properties [tx].[StaffTypeDescriptor] --
COMMENT ON TABLE tx.StaffTypeDescriptor IS 'StaffType indicates whether the staff person is on the district payroll, is a contracted professional staff person (instructional and non-instructional), or a teacher (ROLE-ID 087) employed at the in-district charter campus by an organization that has been granted a campus charter under TEC, Chapter 12, Subchapter C and is eligible for benefits under TEC, §11.174 and 11.147(b). (C181)';
COMMENT ON COLUMN tx.StaffTypeDescriptor.StaffTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StaffTypeSet] --
COMMENT ON TABLE tx.StaffTypeSet IS 'StaffType with effective dates';
COMMENT ON COLUMN tx.StaffTypeSet.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN tx.StaffTypeSet.BeginDate IS 'Begin date of the effecive date for the StaffTypeSet';
COMMENT ON COLUMN tx.StaffTypeSet.EndDate IS 'End date of the effecive date for the StaffTypeSet';
COMMENT ON COLUMN tx.StaffTypeSet.StaffTypeDescriptorId IS 'E1073, C181. StaffType indicates whether the staff person is on the district payroll or is a contracted professional staff person (instructional and non-instructional)';

-- Extended Properties [tx].[StudentAcademicRecordDiplomaExtension] --
COMMENT ON TABLE tx.StudentAcademicRecordDiplomaExtension IS 'Extension to diploma.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.DiplomaAwardDate IS 'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.DiplomaTypeDescriptorId IS 'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.DistingLevelAchievementGraduate IS 'E3089. DistingLevelAchievementGraduate indicates the student has successfully completed the distinguished level of achievement as provided by TEC §28.025 (b-15) or TEC §28.0253.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.FinancialAidApplicationDescriptorId IS 'E1724, C230. The FinancialAidApplication indicates the manner in which the student completed the graduation requirement of either completing a financial aid application (Free application for Federal Student Aid (FAFSA) or Texas Application for State Financial Aid (TASFA)) or submitting an exemption.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.IndividualGraduationCommitteeGraduateIndicator IS 'E1562. IndividualGraduationCommitteeGraduateIndicator Indicates whether a student for whom an IGC was established has graduated based on an IGC decision.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.MilitaryEnlistmentIndicator IS 'E1589. MilitaryEnlistmentIndicator indicates that a student leaver enlisted in the United States Armed Forces.';
COMMENT ON COLUMN tx.StudentAcademicRecordDiplomaExtension.TexasFirstEarlyHSCompletionProgramDescriptorId IS 'E1736, C233. TexasFirstEarlyHSCompletionProgram indicates the student graduated early under the Texas First Early High School Completion Program and specifies whether the student graduated two or more semesters or less than two semesters or equivalent earlier than the expected graduation date of the student''s high school cohort.';

-- Extended Properties [tx].[StudentAcademicRecordEndorsementCompleted] --
COMMENT ON TABLE tx.StudentAcademicRecordEndorsementCompleted IS 'E3021, C332. EndorsementCompleted indicates the student has successfully completed a Foundation High School Program to earn a STEM, Business and Industry, Public Services, Arts and Humanities, or Multi-Disciplinary Studies endorsement.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementCompleted.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementCompleted.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementCompleted.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementCompleted.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementCompleted.EndorsementCompletedDescriptorId IS 'E3021, C332. EndorsementCompleted indicates the student has successfully completed a Foundation High School Program to earn a STEM, Business and Industry, Public Services, Arts and Humanities, or Multi-Disciplinary Studies endorsement.';

-- Extended Properties [tx].[StudentAcademicRecordEndorsementPursuing] --
COMMENT ON TABLE tx.StudentAcademicRecordEndorsementPursuing IS 'E3022, C333. EndorsementPursuing indicates whether a student is currently enrolled in (pursuing) or has successfully completed a FHSP program to earn an endorsement.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordEndorsementPursuing.EndorsementPursuingDescriptorId IS 'E3022, C333. EndorsementPursuing indicates whether a student is currently enrolled in (pursuing) or has successfully completed a FHSP program to earn an endorsement.';

-- Extended Properties [tx].[StudentAcademicRecordExtension] --
COMMENT ON TABLE tx.StudentAcademicRecordExtension IS '';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.AssociateDegreeIndicatorDescriptorId IS 'E1596. AssociateDegreeIndicator indicates that the student earned an associate degree prior to graduation from high school. ';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.FHSPDistingLevelParticipant IS 'E3029. FHSPDistingLevelParticipant indicates whether a student is currently pursuing or has successfully completed the distinguished level of achievement under the Foundation High School Program as provided by TEC 28.025 (b-15).';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.FHSPParticipant IS 'E3030. FHSPParticipant indicates whether a student is currently enrolled in the Foundation High School Program.';
COMMENT ON COLUMN tx.StudentAcademicRecordExtension.IndividualGraduationCommitteeReview IS 'E1563. IndividualGraduationCommitteeReview indicates whether an IGC has been established for a student regardless of which graduation program type is being pursued.  This is collected for students in grades 11 and 12.';

-- Extended Properties [tx].[StudentAcademicRecordIndustryBasedCertificationSet] --
COMMENT ON TABLE tx.StudentAcademicRecordIndustryBasedCertificationSet IS 'Common Type IndustryBasedCertificationSet.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.TermDescriptorId IS 'The term for the session during the school year.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.DateCertTaken IS 'E1632. DateCertTaken indicates the date upon which the industry based certification was taken.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.IBCVendorDescriptorId IS 'E1655, C226. IBCVendorCode identifies the organization or company that offered the service.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.PostSecondaryCertificationLicensureDescriptorId IS 'E1640, C214. PostSecondaryCertificationLicensure indicates a nationally or internationally recognized business or industry certification or license earned by a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.PostSecondaryCertLicensureResultDescriptorId IS 'E1733, C232. PostSecondaryCertLicensureResult indicates the result of a state, nationally, or internationally recognized industry-based certification exam taken by a student.';
COMMENT ON COLUMN tx.StudentAcademicRecordIndustryBasedCertificationSet.IBCExamFeeAmount IS 'E1654. IBCExamFeeAmount identifies the amount of money that was paid for a student''s industry certification exam by the local education agency.';

-- Extended Properties [tx].[StudentAcceleratedInstructionParticipationDescriptor] --
COMMENT ON TABLE tx.StudentAcceleratedInstructionParticipationDescriptor IS 'E3085. StudentAcceleratedInstructionParticipation indicates whether or not the student participated in the prescribed accelerated instruction for the subject in which the student did not achieve satisfactory performance on an assessment instrument.';
COMMENT ON COLUMN tx.StudentAcceleratedInstructionParticipationDescriptor.StudentAcceleratedInstructionParticipationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StudentApplication] --
COMMENT ON TABLE tx.StudentApplication IS 'DOCUMENTATION PENDING';
COMMENT ON COLUMN tx.StudentApplication.ApplicationIdentifier IS 'ApplicationIdentifier is a unique number or alphanumeric code assigned to an application.';
COMMENT ON COLUMN tx.StudentApplication.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentApplication.SchoolYear IS 'E1093. The identifier for the school year.';
COMMENT ON COLUMN tx.StudentApplication.ApplicationDate IS 'E3004. ApplicationDate is the month, day, and year the application was submitted.';
COMMENT ON COLUMN tx.StudentApplication.ApplicationTypeDescriptorId IS 'E3005, C327. ApplicationType indicates the type of application submitted.';
COMMENT ON COLUMN tx.StudentApplication.BirthCity IS 'The city the student was born in.';
COMMENT ON COLUMN tx.StudentApplication.BirthCountryDescriptorId IS 'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN tx.StudentApplication.BirthDate IS 'The month, day, and year on which an individual was born.';
COMMENT ON COLUMN tx.StudentApplication.BirthInternationalProvince IS 'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.';
COMMENT ON COLUMN tx.StudentApplication.BirthSexDescriptorId IS 'A person''s gender at birth.';
COMMENT ON COLUMN tx.StudentApplication.BirthStateAbbreviationDescriptorId IS 'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.';
COMMENT ON COLUMN tx.StudentApplication.DateEnteredUS IS 'For students born outside of the U.S., the date the student entered the U.S.';
COMMENT ON COLUMN tx.StudentApplication.EntryGradeLevelDescriptorId IS 'E1517, C050. The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.';
COMMENT ON COLUMN tx.StudentApplication.FirstName IS 'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.';
COMMENT ON COLUMN tx.StudentApplication.GenerationCodeDescriptorId IS 'E0706, C012. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';
COMMENT ON COLUMN tx.StudentApplication.GenerationCodeSuffix IS 'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).';
COMMENT ON COLUMN tx.StudentApplication.LastSurname IS 'The name borne in common by members of a family.';
COMMENT ON COLUMN tx.StudentApplication.MaidenName IS 'The individual''s maiden name.';
COMMENT ON COLUMN tx.StudentApplication.MiddleName IS 'A secondary name given to an individual at birth, baptism, or during another naming ceremony.';
COMMENT ON COLUMN tx.StudentApplication.MultipleBirthStatus IS 'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)';
COMMENT ON COLUMN tx.StudentApplication.PersonalTitlePrefix IS 'A prefix used to denote the title, degree, position, or seniority of the individual.';
COMMENT ON COLUMN tx.StudentApplication.SexDescriptorId IS 'E0004, C013. Sex is defined as a person''s gender.';
COMMENT ON COLUMN tx.StudentApplication.StudentId IS 'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.';
COMMENT ON COLUMN tx.StudentApplication.StudentUId IS 'E1523. StudentUId (StudentUniqueId) is a unique number assigned to a student by the Texas Education Agency.';

-- Extended Properties [tx].[StudentApplicationPersonalIdentificationDocument] --
COMMENT ON TABLE tx.StudentApplicationPersonalIdentificationDocument IS 'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.ApplicationIdentifier IS 'ApplicationIdentifier is a unique number or alphanumeric code assigned to an application.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.SchoolYear IS 'E1093. The identifier for the school year.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IdentificationDocumentUseDescriptorId IS 'The primary function of the document used for establishing identity.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.PersonalInformationVerificationDescriptorId IS 'The category of the document relative to its purpose.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.DocumentExpirationDate IS 'The day when the document  expires, if null then never expires.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.DocumentTitle IS 'The title of the document given by the issuer.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IssuerCountryDescriptorId IS 'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IssuerDocumentIdentificationCode IS 'The unique identifier on the issuer''s identification system.';
COMMENT ON COLUMN tx.StudentApplicationPersonalIdentificationDocument.IssuerName IS 'Name of the entity or institution that issued the document.';

-- Extended Properties [tx].[StudentAttributionDescriptor] --
COMMENT ON TABLE tx.StudentAttributionDescriptor IS 'Descriptor StudentAttribution is based on code table C161.';
COMMENT ON COLUMN tx.StudentAttributionDescriptor.StudentAttributionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[StudentCensusBlockGroupSet] --
COMMENT ON TABLE tx.StudentCensusBlockGroupSet IS 'StudentCensusBlockGroup indicates the census block in which the student resides.';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.BeginDate IS 'Begin date of the effecive date for the StudentCensusBlockGroup';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.EndDate IS 'End date of the effecive date for the StudentCensusBlockGroup';
COMMENT ON COLUMN tx.StudentCensusBlockGroupSet.StudentCensusBlockGroup IS 'E1648. StudentCensusBlockGroup indicates the census block in which the student resides.';

-- Extended Properties [tx].[StudentCrisisEventSet] --
COMMENT ON TABLE tx.StudentCrisisEventSet IS 'CommonType CrisisEvent indicates a state health or weather-related event that impacts a group of students, and may require additional funding, educational, or social services. The event may or may not cause the student to leave the district or campus of residence.  A crisis event is designated by the Commissioner of Education.';
COMMENT ON COLUMN tx.StudentCrisisEventSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentCrisisEventSet.BeginDate IS 'Begin date of the effecive date for the CrisisEvent';
COMMENT ON COLUMN tx.StudentCrisisEventSet.CrisisEventDescriptorId IS 'E1054, C178. Descriptor CrisisEvent indicates a state health or weather-related event that impacts a group of students, and may require additional funding, educational, or social services. The event may or may not cause the student to leave the district or campus of residence.  A crisis event is designated by the Commissioner of Education.';
COMMENT ON COLUMN tx.StudentCrisisEventSet.EndDate IS 'End date of the effecive date for the CrisisEvent';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb IS 'AcceleratedInstructionSet.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb.AcceleratedInstructionSubjectDescriptorId IS 'E3084, C352. AcceleratedInstructionSubject indicates the subject in which the student is eligible to receive accelerated instruction.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb.StudentAcceleratedInstructionParticipationDescriptorId IS 'E3085, C353. StudentAcceleratedInstructionParticipation indicates whether or not the student participated in the prescribed accelerated instruction for the subject in which the student did not achieve satisfactory performance on an assessment instrument.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb.AssignedHoursAcceleratedInstruction IS 'E3086. AssignedHoursAcceleratedInstruction indicates the number of hours of accelerated instruction assigned to the student for a particular subject.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb.CompletedHoursAcceleratedInstruction IS 'E3087. CompletedHoursAcceleratedInstruction indicates the number of hours of accelerated instruction the local education agency provided to the student in a particular subject.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationAcceleratedInstru_a3bffb.DifferenceReasonHoursAcceleratedInstructionDescriptorId IS 'E3088, C354. DifferenceReasonHoursAcceleratedInstruction indicates the reason the student did not complete the full number of assigned hours of accelerated instruction.';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationDyslexiaRiskSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationDyslexiaRiskSet IS 'DyslexiaRisk with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.BeginDate IS 'Begin date of the effecive date for the DyslexiaRisk';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.DyslexiaRiskDescriptorId IS 'E1644, C222. Descriptor DyslexiaRisk';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.DyslexiaScreeningExceptionReasonDescriptorId IS 'E1732, C231. DyslexiaScreeningExceptionReason indicates the reason a student in kindergarten or first grade was not screened for dyslexia or related disorders during the dyslexia screening window.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaRiskSet.EndDate IS 'End date of the effecive date for the DyslexiaRisk';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationDyslexiaServicesSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationDyslexiaServicesSet IS 'DyslexiaServicesSet with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.BeginDate IS 'Begin date of the effecive date for the DyslexiaServices';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.DyslexiaServicesDescriptorId IS 'E1650, C224. DyslexiaServices indicates the type of dyslexia or related service a student has received at any time during the school year.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationDyslexiaServicesSet.EndDate IS 'End date of the effecive date for the DyslexiaServices';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEarlyReadingIndicatorSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet IS 'EarlyReadingIndicator with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.BeginDate IS 'Begin date of the effecive date for the EarlyReadingIndicator';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.EarlyReadingIndicatorDescriptorId IS 'E1522, C195. EarlyReadingIndicator indicates whether a student is eligible for accelerated reading instruction as indicated by the administered reading instrument.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEarlyReadingIndicatorSet.EndDate IS 'End date of the effecive date for the EarlyReadingIndicator';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEconomicDisadvantageSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet IS 'EconomicDisadvantage with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.BeginDate IS 'Begin date of the effecive date for the EconomicDisadvantage';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.EconomicDisadvantageDescriptorId IS 'E0785, C054. EconomicDisadvantage indicates the student''s economic disadvantage status.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEconomicDisadvantageSet.EndDate IS 'End date of the effecive date for the EconomicDisadvantage';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationEmergentBilingualSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationEmergentBilingualSet IS 'EmergentBilingualSet with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.BeginDate IS 'Begin date of the effecive date for the EmergentBilingualSet';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.EmergentBilingualIndicatorDescriptorId IS 'E0790, C061. EmergentBilingualIndicator is an indication that the student has been identified as an emergent bilingual (EB) student by the Language Proficiency Assessment Committee (LPAC), or English proficient according to the criteria established in 19 TAC §89.1226.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationEmergentBilingualSet.EndDate IS 'End date of the effecive date for the EmergentBilingualSet';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationExtension] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationExtension IS '';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationExtension.StudentAcceleratedEducationPlan IS 'E3083. StudentAcceleratedEducationPlan indicates a student did not perform satisfactorily on an assessment instrument under TEC §39.023(a) or §39.023(c) for two or more consecutive years in the same subject area and the school district developed an accelerated education plan as outlined in §28.0211(f).';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationFosterCareTypeSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationFosterCareTypeSet IS 'FosterCareType  with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.BeginDate IS 'Begin date of the effecive date for the FosterCareType';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.EndDate IS 'End date of the effecive date for the FosterCareType';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationFosterCareTypeSet.FosterCareTypeDescriptorId IS 'E1528, C196. FosterCareType indicates whether a student is in the conservatorship of the Department of Family and Protective Services (DFPS) currently, or for a prekindergarten student that was previously in the conservatorship of DFPS, or for a prekindergarten student that is or ever has been in foster care in another state or territory, if the student resides in this state (Texas).';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationHomelessStatusSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationHomelessStatusSet IS 'HomelessStatus  with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.BeginDate IS 'Begin date of the effecive date for the HomelessStatus';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.EndDate IS 'End date of the effecive date for the HomelessStatus';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationHomelessStatusSet.HomelessStatusDescriptorId IS 'E1082, C189. HomelessStatus as defined by 42 U.S.C. Section Part B §11434(a), definitions the term “homeless children and youths” —
(A) means individuals who lack a fixed, regular, and adequate nighttime residence [within the meaning of section 11302(a)(1)]; and
(B) the term includes —
(i) children and youths who are sharing the housing of other persons due to loss of housing, economic hardship, or a similar reason; are living in motels, hotels, trailer parks, or camping grounds due to the lack of alternative adequate accommodations; are living in emergency or transitional shelters
(ii) children and youths who have a primary nighttime residence that is a public or private place not designed for or ordinarily used as a regular sleeping accommodation for human beings [within the meaning of section 11302(a)(2)(C)];
(iii) children and youths who are living in cars, parks, public spaces, abandoned buildings, substandard housing, bus or train stations, or similar settings; and
(iv) migratory children (as such term is defined in section 6399 of title 20) who qualify as homeless for the purposes of this subtitle because the children are living in circumstances described in clauses (i) through (iii).';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationMilitaryConnected_662c97] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97 IS 'MilitaryConnectedStudentIndicator with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.BeginDate IS 'Begin date of the effecive date for MilitaryConnectedStudent';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.EndDate IS 'End date of the effecive date for MilitaryConnectedStudent';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationMilitaryConnected_662c97.MilitaryConnectedStudentDescriptorId IS 'E1529, C197. MilitaryConnectedStudent indicates a student enrolled in a school district or open-enrollment charter school who is a dependent of an active duty or former member of the United States military, the Texas National Guard, or a reserve force of the United States military, or who is a dependent of a member of the United States military, the Texas National Guard, or a reserve force of the United States military who was killed in the line of duty.';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationPKFundingSourceSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationPKFundingSourceSet IS 'PKFundingSource with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.BeginDate IS 'Begin date of the effective date for the PKFundingSource';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.OrderOfPKFundingSource IS 'E3040. The OrderOfPKFundingSource is the order of the student''s PK Funding Source:1 - Primary 2 - Secondary';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.EndDate IS 'End date of the effective date for the PKFundingSource';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKFundingSourceSet.PKFundingSourceDescriptorId IS 'E3044, C186. PKFundingSource indicates the source of funding for a prekindergarten student.';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationPKProgramTypeSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationPKProgramTypeSet IS 'PKProgramType with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.BeginDate IS 'Begin date of the effecive date for the PKProgramType';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.PKProgramTypeDescriptorId IS 'E1078, C185. PKProgramType indicates the length of the Prekindergarten instructional day for a particular Prekindergarten student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationPKProgramTypeSet.EndDate IS 'End date of the effecive date for the PKProgramType';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationTruancySet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationTruancySet IS 'TruancySet represents truancy data associated to students.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.DateMet IS 'E3014. DateMet is the month, day and year when any of the following occurs:
1. A student who is required to attend school under TEC §25.085, and are not exempted under TEC §25.086, and fail to attend school without excuse for 10 or more days within a six-month period of a school year.
2. The local education agency initiated a truancy prevention measure under TEC §25.0915 (a-4) for the student.
3. Indicates whether an attendance officer or other school official has filed a complaint against a student''s parent or legal guardian under TEC §25.093.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationTruancySet.TruancyDescriptorId IS 'E3068, C346. Truancy captures the truancy data associated to a student.';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationUnaccompaniedYouthSet] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet IS 'UnaccompaniedYouthStatus with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.BeginDate IS 'Begin date of the effecive date for the UnaccompaniedYouth';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.EndDate IS 'End date of the effecive date for the UnaccompaniedYouth';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnaccompaniedYouthSet.UnaccompaniedYouthDescriptorId IS 'E1084, C192. As defined by NCLB, Title X, Part C, Section 725(6), the term “unaccompanied youth” means a youth not in the physical custody of a parent or guardian.';

-- Extended Properties [tx].[StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b] --
COMMENT ON TABLE tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b IS 'UnschooledAsyleeRefugee with effective dates.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.BeginDate IS 'Begin date of the effecive date for UnschooledAsyleeRefugee';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.EndDate IS 'End date of the effecive date for UnschooledAsyleeRefugee';
COMMENT ON COLUMN tx.StudentEducationOrganizationAssociationUnschooledAsyleeR_9fcf9b.UnschooledAsyleeRefugeeDescriptorId IS 'E1076, C183. As defined by NCLB, Title X, Part C, Section 725(6), the term “unaccompanied youth” means a youth not in the physical custody of a parent or guardian.';

-- Extended Properties [tx].[StudentExtension] --
COMMENT ON TABLE tx.StudentExtension IS '';
COMMENT ON COLUMN tx.StudentExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentExtension.AsOfStatusLastDayEnrollmentDescriptorId IS 'E3006, C323. AsOfStatusLastDayEnrollment indicates the student''s status in the district on the last day of school or last date of enrollment in the current school year.';
COMMENT ON COLUMN tx.StudentExtension.AsOfStatusLastFridayOctoberDescriptorId IS 'E3007, C324. AsOfStatusLastFridayOctober indicates the student''s status in the local education agency on the last Friday in October in the current school year.';
COMMENT ON COLUMN tx.StudentExtension.GenerationCodeDescriptorId IS 'E0706, C012. GenerationCode identifies the generation suffix, if any, which the person attaches to his name.';
COMMENT ON COLUMN tx.StudentExtension.LocalStudentId IS 'E0923. LocalStudentId is the student''s local identification number as assigned by the local education agency.';
COMMENT ON COLUMN tx.StudentExtension.StudentDoNotReportTSDS IS 'E3009. StudentDoNotReportTSDS indicates the student should not be reported for TSDS state or federal data collections.';
COMMENT ON COLUMN tx.StudentExtension.StudentId IS 'E0001. StudentId is the student''s Social Security number or a state-approved alternative identification number.';

-- Extended Properties [tx].[StudentLanguageInstructionProgramAssociationParentalPerm_710c81] --
COMMENT ON TABLE tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81 IS 'ParentalPermissionSet with effective dates.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ParentalPermissionSetBeginDate IS 'E3042. ParentalPermissionSetBeginDate indicates the month, day, and year when the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.)';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ParentalPermissionDescriptorId IS 'E0896, C093. ParentalPermission indicates whether the student''s parent or legal guardian has approved placement of the student in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC §89.1240.)';
COMMENT ON COLUMN tx.StudentLanguageInstructionProgramAssociationParentalPerm_710c81.ParentalPermissionSetEndDate IS 'E3043. ParentalPermissionSetEndDate indicates the month, day, and year when the student no longer participates in the required bilingual or English as a Second Language (ESL) program. (See 19 TAC§89.1240.)';

-- Extended Properties [tx].[StudentNonEnrolledStudentUILActivity] --
COMMENT ON TABLE tx.StudentNonEnrolledStudentUILActivity IS 'E1739. NonEnrolledStudentUILActivity indicates the University Interscholastic League (UIL) activity in which a non-enrolled student participated at a school district that allows participation of non-enrolled students under Section 33.0832.';
COMMENT ON COLUMN tx.StudentNonEnrolledStudentUILActivity.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentNonEnrolledStudentUILActivity.NonEnrolledStudentUILActivityDescriptorId IS 'E1739. NonEnrolledStudentUILActivity indicates the University Interscholastic League (UIL) activity in which a non-enrolled student participated at a school district that allows participation of non-enrolled students under Section 33.0832.';

-- Extended Properties [tx].[StudentProgramAttendanceEventExtension] --
COMMENT ON TABLE tx.StudentProgramAttendanceEventExtension IS '';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.AttendanceEventCategoryDescriptorId IS 'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.EventDate IS 'Date for this attendance event.';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentProgramAttendanceEventExtension.InstructionalSettingDescriptorId IS 'E0173, C035. InstructionalSetting identifies the setting used in providing instruction to students.';

-- Extended Properties [tx].[StudentSchoolAssociationExtension] --
COMMENT ON TABLE tx.StudentSchoolAssociationExtension IS '';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.ADAEligibilityDescriptorId IS 'E0787, C059. ADAEligibility indicates the eligibility status of the student as reflected in the attendance accounting records of the district.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.CampusIdOfAccountability IS 'E1027. CampusIdOfAccountability indicates the unique campus identification number to which a student’s attendance and/or leaver accountability data are attributed for campus accountability purposes.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.CampusIdOfResidence IS 'E0903. CampusIdOfResidence indicates the unique campus identification number corresponding to the campus attendance area in which the student currently resides.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.EnrollmentTrackingVerificationDescriptorId IS 'E3080, C351. The EnrollmentTrackingVerification indicates the status of the enrollment event.';
COMMENT ON COLUMN tx.StudentSchoolAssociationExtension.StudentAttributionDescriptorId IS 'E1000, C161. StudentAttribution is a characteristic of a student relating to their individual enrollment circumstances.  It indicates whether the student:
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
- is a child of a charter school employee (LEA or Campus); or
- student-initiated transfer due to remote learning.';

-- Extended Properties [tx].[StudentSectionAssociationExtension] --
COMMENT ON TABLE tx.StudentSectionAssociationExtension IS '';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.BeginDate IS 'Month, day, and year of the student''s entry or assignment to the section.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSectionAssociationExtension.CourseCompletionIndicator IS 'E1068. CourseCompletionIndicator indicates whether or not the student finished the full sequence of instruction for a course.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationAssessment] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationAssessment IS 'Assessment represents the assessments conducted to evaluate a student''s language acquisition.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.ToolOrAssessmentUsedDescriptorId IS 'E1668, C320. ToolOrAssessmentUsed identifies the tool or assessment used to assess the student’s language acquisition.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationAssessment.AssessmentResultsObtainedDescriptorId IS 'E1669, C321. AssessmentResultsObtained identifies the result of tools or assessments used to assess the student’s language acquisition.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationDisabilitySet] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationDisabilitySet IS 'DisabilitySet';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.DisabilityDescriptorId IS 'A disability category that describes a individual''s impairment.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.DisabilitySetBeginDate IS 'E3016. DisabilitySetBeginDate indicates the month, day, and year the order of the disability becomes true.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.DisabilitySetEndDate IS 'E3017. DisabilitySetEndDate indicates the month, day, and year the order of the disability becomes false.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.EligibilityDateDisabilities IS 'EligibilityDateDisabilities indicates the date upon which a student who is deaf or hard of hearing is eligible for services.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationDisabilitySet.OrderOfDisability IS 'E3039. The OrderOfDisability is the order by severity of student''s disabilities:1. Primary 2. Secondary 3 Tertiary';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationExtension] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationExtension IS '';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationExtension.PreferredHomeCommunicationMethodDescriptorId IS 'E1661, C313. PreferredHomeCommunicationMethod identifies the preferred unique communication method used by the child at home.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationHearingAmplification] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationHearingAmplification IS 'HearingAmplification represents the hearing amplification device(s), access and use for a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.HearingAmplificationTypeDescriptorId IS 'E1665, C317. HearingAmplificationType identifies the type of hearing amplification device used by the student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.HearingAmplificationAccessDescriptorId IS 'E1666, C318. HearingAmplificationAccess identifies whether the student has access to the hearing amplification device for the full-day or partial day for each HEARING-AMPLIFICATION-TYPE reported.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationHearingAmplification.HearingAmplificationDailyUseDescriptorId IS 'E1667, C319. HearingAmplificationDailyUse identifies the average amount of time the hearing amplification device is used in a day based on the HEARING-AMPLIFICATION-ACCESS reported.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationInstructionalSe_718180] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180 IS 'InstructionalSettingSet represents the InstructionalSetting with effective dates.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.InstructionalSettingBeginDate IS 'E3025. InstructionalSettingBeginDate is the first instructional day a student is assigned to the InstructionalSetting descriptor.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.InstructionalSettingDescriptorId IS 'E0173, C035. InstructionalSetting identifies the setting used in providing instruction to students.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationInstructionalSe_718180.InstructionalSettingEndDate IS 'E3026. InstructionalSettingEndDate is the first day after the last instructional day a student is no longer assigned to the InstructionalSetting descriptor.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationLanguageAcquisition] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationLanguageAcquisition IS 'LanguageAcquisition represents the language acquisition services a student has received.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.LangAcqServicesProvidedDescriptorId IS 'E1662, C314. LangAcqServicesProvided indicates the specific language acquisition services provided to the student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.FrequencyOfServicesDescriptorId IS 'E1663, C315. FrequencyOfServices identifies the frequency with which a student receives services.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationLanguageAcquisition.HoursSpentReceivingServicesDescriptorId IS 'E1664, C316. HoursSpentReceivingServices identifies the amount of time in which the student receives services.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationStudentResident_36c8d7] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7 IS 'E3064,E3065,E1633,E1634,E1635,E1636,E1637,E1638. Student residential facility being used';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.DateEnteredRF IS 'E1630. DateEnteredRF indicates the date the student enters the residential facility.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.ResidentialFacilityId IS 'E1627. ResidentialFacilityId indicates the unique residential facility identification number registered with the Texas Education Agency.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.StudentResFacAssocSetBeginDate IS 'E3064. StudentResFacAssocSetBeginDate indicates the first month, day, and year the student enters a residential facility.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.AttendanceZoneCampus IS 'E1633. AttendanceZoneCampus is the nine-digit identifying number (assigned by the TEA) of the campus the student is expected to attend based on the geographic location (address) of the residential facility in which the student resides. This may or may not be the same as the “SchoolId.”';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.CampusIdOfEnrollmentSchoolDayLength IS 'E1638. CampusIDOfEnrollmentSchoolDayLength indicates the number of instructional minutes in a school day for a non-disabled peer at the SchoolID of enrollment.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.EducatedAtResidentialFacility IS 'E1634. EducatedAtResidentialFacility indicates whether a student is educated at or in the general location of a residential facility.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.NumberOtherStudentsAssignedSameSurrogateParent IS 'E1636. NumberOtherStudentsAssignedSameSurrogateParent indicates how many other students have been assigned to the same surrogate parent.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.ResidentialFacilityStudentSchoolDayLength IS 'E1637. ResidentialFacilityStudentSchoolDayLength indicates the number of minutes the residential facility student receives instruction based on the Individualized Education Plan (IEP).';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.StudentResFacAssocSetEndDate IS 'E3065. StudentResFacAssocSetEndDate indicates the first month, day, and year the student is no longer in attendance a residential facility.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_36c8d7.SurrogateParentAssigned IS 'E1635. SurrogateParentAssigned indicates whether the student has been assigned a surrogate parent.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationStudentResident_727129] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationStudentResident_727129 IS 'StudentResidentialFacilityAssociation captures enrollment data for students enrolled at a residential facility during a particular school year.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.DateEnteredRF IS 'E1630. DateEnteredRF indicates the date the student enters the residential facility.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.ResidentialFacilityId IS 'E1627. ResidentialFacilityId indicates the unique residential facility identification number registered with the Texas Education Agency.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentResident_727129.DateExitedRF IS 'E1631. DateExitedRF indicates the date the student exits the residential facility.';

-- Extended Properties [tx].[StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394 IS 'StudentSPEDProgramAssociationSet representshe MedicallyFragile, MultiplyDisabled, LEAOfRDSPDService, ChildCountFunding, PPCDServiceLocation with effective dates.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramBeginDate IS 'E3047. ProgramBeginDate indicates the month, day, and year the student special education program association set becomes true of the student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ChildCountFundingDescriptorId IS 'E0832, C066. ChildCountFunding indicates under which federal program the student receiving special education and related services is counted.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.LEAOfRDSPDService IS 'E1527. LEAOfRDSPDService indicates the RDSPD Fiscal Agent district that provides the RDSPD service to a particular RDSPD student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.MedicallyFragile IS 'E0999. MedicallyFragile indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and4) lives with ongoing threat to his or her continued well-being.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.MultiplyDisabled IS 'E0882. MultiplyDisabled indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.PPCDServiceLocationDescriptorId IS 'E1077, C184. PPCDServiceLocation indicates whether or not the Preschool Program for Children with Disabilities (PPCD) student received their special education services in a regular early childhood program, which is defined as a program that is designed for typically developing children ages 3-5 and is not specifically or primarily designed for children with disabilities and includes (at the time of the placement decision) a majority of at least 50 percent of nondisabled children (i.e., children without an individualized education program (IEP)).';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramAssociationStudentSPEDProg_54e394.ProgramEndDate IS 'E3048. ProgramEndDate indicates the month, day, and year the student special education program association set becomes false of the student.';

-- Extended Properties [tx].[StudentSpecialEducationProgramEligibilityAssociation] --
COMMENT ON TABLE tx.StudentSpecialEducationProgramEligibilityAssociation IS 'This is the Child Find collection. Child Find combines State Performance Plan Indicator 11 (SPPI-11) and State Performance Plan Indicator 12 (SPPI-12) in the TSDS Core Collection. SPPI-11 refers to the timely evaluation of students, ages 3-21, for special education services under Part B of IDEA. SPPI-12 refers to children who are referred from Part C of IDEA prior to age 3, found eligible for Part B of IDEA, and have an individualized education plan (IEP) developed and implemented by their third birthday to receive early childhood special education (ECSE) services from a local education agency (LEA).';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.ConsentToEvaluationReceivedDate IS 'E1738. ConsentToEvaluationReceivedDate is the month, day, and year the Local Education Agency (LEA) received written consent for the full individual and initial evaluation (FIIE) from the student’s parent.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EligibilityDelayReasonDescriptorId IS 'E1731, C347. EligibilityDelayReason refers to the reason why the eligibility determination was completed beyond the required timeframe.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EligibilityDeterminationDate IS 'E1716. EligibilityDeterminationDate indicates the month, day, and year the LEA held the admission, review, and dismissal (ARD) committee meeting regarding the child’s initial eligibility determination for special education and related services.  An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EligibilityEvaluationDate IS 'E1715. EligibilityEvaluationDate indicates the month, day, and year when the written full individual and initial evaluation (FIIE) report was completed.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EvaluationDelayDays IS 'E1711. EvaluationDelayDays indicates the number of student absences, if any, beginning the first instructional day following the date on which the Local Education Agency (LEA) received written parental consent for the full individual and initial evaluation (FIIE) report.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.EvaluationDelayReasonDescriptorId IS 'E1718, C348. EvaluationDelayReason refers to the justification as to why the written full individual and initial evaluation (FIIE) report was completed beyond the State-established 45 instructional day timeframe for state performance plan indicator 11 (SPPI-11), or the justification as to why a child who was receiving early childhood intervention (ECI) services had their eligibility for early childhood special education (ECSE) determined beyond the child’s third birthday for SPPI-12.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.IDEAIndicator IS 'E1717. IDEAIndicator indicates whether or not the student was determined eligible and enrolled in special education and related services as a result of the full individual and initial evaluation (FIIE) report and the admission, review, and dismissal (ARD) committee meeting decision.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.OriginalECIServicesDate IS 'E1737. OriginalECIServicesDate is the month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention program. (See Texas Human Resources Code §73.001 and 73.021)';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.TransitionConferenceDate IS 'E1713. TransitionConferenceDate indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the LEA where the child resides to discuss the child’s potential eligibility for early childhood special education (ECSE) services.';
COMMENT ON COLUMN tx.StudentSpecialEducationProgramEligibilityAssociation.TransitionNotificationDate IS 'E1712. TransitionNotificationDate indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE).  The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent may opt out from the referral.';

-- Extended Properties [tx].[StudentTitleIPartAProgramAssociationSet] --
COMMENT ON TABLE tx.StudentTitleIPartAProgramAssociationSet IS 'StudentTitleIPartAProgramAssociationSet with effective dates.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.StudentTitleIPartAProgramAssociationSetBeginDate IS 'E3066. StudentTitleIPartAProgramAssociationBeginDate indicates the month, day, and year the student began participating in a Title I Part A program.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.StudentTitleIPartAProgramAssociationSetEndDate IS 'E3067. StudentTitleIPartAProgramAssociationEndDate indicates the month, day, and year the student no longer participated in a Title I Part A program.';
COMMENT ON COLUMN tx.StudentTitleIPartAProgramAssociationSet.TitleIPartAParticipantDescriptorId IS 'E0894, C122. An indication of the type of Title I program, if any, in which the student is participating and by which the student is served.';

-- Extended Properties [tx].[TeacherIncentiveAllotmentDesignationDescriptor] --
COMMENT ON TABLE tx.TeacherIncentiveAllotmentDesignationDescriptor IS 'Descriptor TeacherIncentiveAllotmentDesignation is based on code table C322';
COMMENT ON COLUMN tx.TeacherIncentiveAllotmentDesignationDescriptor.TeacherIncentiveAllotmentDesignationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[TexasFirstEarlyHSCompletionProgramDescriptor] --
COMMENT ON TABLE tx.TexasFirstEarlyHSCompletionProgramDescriptor IS 'Descriptor TexasFirstEarlyHSCompletionProgram is based on code table C233.';
COMMENT ON COLUMN tx.TexasFirstEarlyHSCompletionProgramDescriptor.TexasFirstEarlyHSCompletionProgramDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[TitleOfAssessmentDescriptor] --
COMMENT ON TABLE tx.TitleOfAssessmentDescriptor IS 'Descriptor TitleOfAssessment is populated from Code Table C312.';
COMMENT ON COLUMN tx.TitleOfAssessmentDescriptor.TitleOfAssessmentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[ToolOrAssessmentUsedDescriptor] --
COMMENT ON TABLE tx.ToolOrAssessmentUsedDescriptor IS 'Descriptor ToolOrAssessmentUsed identifies the tool or assessment used to assess the student''s language acquisition. (C320)';
COMMENT ON COLUMN tx.ToolOrAssessmentUsedDescriptor.ToolOrAssessmentUsedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[TruancyDescriptor] --
COMMENT ON TABLE tx.TruancyDescriptor IS 'Descriptor Truancy is populated from Code Table C346.';
COMMENT ON COLUMN tx.TruancyDescriptor.TruancyDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[UnaccompaniedYouthDescriptor] --
COMMENT ON TABLE tx.UnaccompaniedYouthDescriptor IS 'Descriptor UnaccompaniedYouth is populated from Code Table C192.';
COMMENT ON COLUMN tx.UnaccompaniedYouthDescriptor.UnaccompaniedYouthDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [tx].[UnschooledAsyleeRefugeeDescriptor] --
COMMENT ON TABLE tx.UnschooledAsyleeRefugeeDescriptor IS 'Descriptor UnschooledAsyleeRefugee is populated from Code Table C183.';
COMMENT ON COLUMN tx.UnschooledAsyleeRefugeeDescriptor.UnschooledAsyleeRefugeeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

