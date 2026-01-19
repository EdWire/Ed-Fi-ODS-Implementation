-- Extended Properties [ks].[AssessmentRequestDescriptor] --
COMMENT ON TABLE ks.AssessmentRequestDescriptor IS 'The type of request for the student assessment.';
COMMENT ON COLUMN ks.AssessmentRequestDescriptor.AssessmentRequestDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[CollegeCareerTypeDescriptor] --
COMMENT ON TABLE ks.CollegeCareerTypeDescriptor IS 'The type of career path a student is planning to take when in college.';
COMMENT ON COLUMN ks.CollegeCareerTypeDescriptor.CollegeCareerTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[CourseDeliveryTypeDescriptor] --
COMMENT ON TABLE ks.CourseDeliveryTypeDescriptor IS 'The method or format through which the educational course is delivered to students.';
COMMENT ON COLUMN ks.CourseDeliveryTypeDescriptor.CourseDeliveryTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[CourseOfferingExtension] --
COMMENT ON TABLE ks.CourseOfferingExtension IS '';
COMMENT ON COLUMN ks.CourseOfferingExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN ks.CourseOfferingExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN ks.CourseOfferingExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN ks.CourseOfferingExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN ks.CourseOfferingExtension.CollegeCareerTypeDescriptorId IS 'Associated college career type for this course.';
COMMENT ON COLUMN ks.CourseOfferingExtension.CourseCredits IS 'Credits required to complete the course.';
COMMENT ON COLUMN ks.CourseOfferingExtension.CourseDeliveryTypeDescriptorId IS 'Delivery type of this course.';
COMMENT ON COLUMN ks.CourseOfferingExtension.CourseProgramTypeDescriptorId IS 'Associated program type for this course.';
COMMENT ON COLUMN ks.CourseOfferingExtension.CourseSequence IS 'Sequence related to course pathways.';
COMMENT ON COLUMN ks.CourseOfferingExtension.CourseTotalSequence IS 'Total sequence related to this course.';

-- Extended Properties [ks].[CourseProgramTypeDescriptor] --
COMMENT ON TABLE ks.CourseProgramTypeDescriptor IS 'The type of program a course is in.';
COMMENT ON COLUMN ks.CourseProgramTypeDescriptor.CourseProgramTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[CourseStatusDescriptor] --
COMMENT ON TABLE ks.CourseStatusDescriptor IS 'This is documentation for CourseStatus descriptor.';
COMMENT ON COLUMN ks.CourseStatusDescriptor.CourseStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[CTECertificationEarnedDescriptor] --
COMMENT ON TABLE ks.CTECertificationEarnedDescriptor IS 'The certification code associated with the CTE certification earned by the student during the current school year.';
COMMENT ON COLUMN ks.CTECertificationEarnedDescriptor.CTECertificationEarnedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[FundingSourceDescriptor] --
COMMENT ON TABLE ks.FundingSourceDescriptor IS 'enumeration for type of ESOL/Bilingual Program in which the student participates.';
COMMENT ON COLUMN ks.FundingSourceDescriptor.FundingSourceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[GradeExtension] --
COMMENT ON TABLE ks.GradeExtension IS '';
COMMENT ON COLUMN ks.GradeExtension.BeginDate IS 'Month, day, and year of the student''s entry or assignment to the section.';
COMMENT ON COLUMN ks.GradeExtension.GradeTypeDescriptorId IS 'The type of grade reported (e.g., exam, final, grading period).';
COMMENT ON COLUMN ks.GradeExtension.GradingPeriodDescriptorId IS 'The name of the period for which grades are reported.';
COMMENT ON COLUMN ks.GradeExtension.GradingPeriodSequence IS 'The sequential order of this period relative to other periods.';
COMMENT ON COLUMN ks.GradeExtension.GradingPeriodSchoolYear IS 'The identifier for the grading period school year.';
COMMENT ON COLUMN ks.GradeExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN ks.GradeExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN ks.GradeExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN ks.GradeExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN ks.GradeExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN ks.GradeExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.GradeExtension.CollegeCreditEarned IS 'The number of college credits earned for the dual credit courses and concurrent enrollments.';
COMMENT ON COLUMN ks.GradeExtension.FirstInstructionalDate IS 'The first day of migrant student instruction or services for the current term (F18).';
COMMENT ON COLUMN ks.GradeExtension.InstructionalMinutesCompleted IS 'The number of college credits earned for the dual credit courses and concurrent enrollments.';
COMMENT ON COLUMN ks.GradeExtension.LastInstructionalDate IS 'The last day of migrant student instruction for the current term (F18).';
COMMENT ON COLUMN ks.GradeExtension.WorkBasedLearningDescriptorId IS 'This field indicates a Work-based Learning course when the KCC ID (F19) is present.';

-- Extended Properties [ks].[ImmigrantStudentDescriptor] --
COMMENT ON TABLE ks.ImmigrantStudentDescriptor IS 'This descriptor describes the student''s immigrant status.';
COMMENT ON COLUMN ks.ImmigrantStudentDescriptor.ImmigrantStudentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[LanguageInstructionProgramTypeDescriptor] --
COMMENT ON TABLE ks.LanguageInstructionProgramTypeDescriptor IS 'The language instruction program type the student participates in.';
COMMENT ON COLUMN ks.LanguageInstructionProgramTypeDescriptor.LanguageInstructionProgramTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[MilitaryConnectedStudentDescriptor] --
COMMENT ON TABLE ks.MilitaryConnectedStudentDescriptor IS 'This descriptor describes the student''s military connection.';
COMMENT ON COLUMN ks.MilitaryConnectedStudentDescriptor.MilitaryConnectedStudentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[NeglectedDelinquentStudentDescriptor] --
COMMENT ON TABLE ks.NeglectedDelinquentStudentDescriptor IS 'Describes whether the student is a neglected or delinquent student.';
COMMENT ON COLUMN ks.NeglectedDelinquentStudentDescriptor.NeglectedDelinquentStudentDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[PostGraduationPlansDescriptor] --
COMMENT ON TABLE ks.PostGraduationPlansDescriptor IS 'The intended post-secondary direction of graduates.';
COMMENT ON COLUMN ks.PostGraduationPlansDescriptor.PostGraduationPlansDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[QualifiedFor504Descriptor] --
COMMENT ON TABLE ks.QualifiedFor504Descriptor IS 'Indicates the type of 504 qualification of the student.';
COMMENT ON COLUMN ks.QualifiedFor504Descriptor.QualifiedFor504DescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [ks].[SchoolExtension] --
COMMENT ON TABLE ks.SchoolExtension IS '';
COMMENT ON COLUMN ks.SchoolExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN ks.SchoolExtension.DateClosed IS 'The closing date related to School.';
COMMENT ON COLUMN ks.SchoolExtension.DateOpened IS 'The date when the school opened in the directory application.';

-- Extended Properties [ks].[SectionEducator] --
COMMENT ON TABLE ks.SectionEducator IS 'This entity represents the section''s educator.';
COMMENT ON COLUMN ks.SectionEducator.EducatorElectronicMailAddress IS 'The educator''s email.';
COMMENT ON COLUMN ks.SectionEducator.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN ks.SectionEducator.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN ks.SectionEducator.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN ks.SectionEducator.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN ks.SectionEducator.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN ks.SectionEducator.EducatorFirstName IS 'The educator''s first name.';
COMMENT ON COLUMN ks.SectionEducator.EducatorLastSurname IS 'The educator''s last name.';
COMMENT ON COLUMN ks.SectionEducator.EducatorMiddleName IS 'The educator''s middle name.';

-- Extended Properties [ks].[SnackPack] --
COMMENT ON TABLE ks.SnackPack IS 'SnackPack';
COMMENT ON COLUMN ks.SnackPack.StateStudentId IS 'Student''s unique Id';
COMMENT ON COLUMN ks.SnackPack.AccountabilitySchool IS 'Accountability School';
COMMENT ON COLUMN ks.SnackPack.CumulativeDaysAttended IS 'Cumulative Days Attended';
COMMENT ON COLUMN ks.SnackPack.ESOLBilingualProgramEntryDate IS 'ESOL Bilingual Program Entry Date';
COMMENT ON COLUMN ks.SnackPack.ESOLBilingualProgramParticipationCode IS 'ESOL Bilingual Program Participation Code';
COMMENT ON COLUMN ks.SnackPack.FirstLanguage IS 'Student''s First Language';
COMMENT ON COLUMN ks.SnackPack.GiftedStudentIndicator IS 'Student''s Gifted Status Indicator';
COMMENT ON COLUMN ks.SnackPack.GradeLevel IS 'Grade Level';
COMMENT ON COLUMN ks.SnackPack.Homeless IS 'Student''s Homeless Status';
COMMENT ON COLUMN ks.SnackPack.Immigrant IS 'Student''s Immigrant Status';
COMMENT ON COLUMN ks.SnackPack.KansasAtRiskProgramParticipation IS 'Kansas At Risk Program Participation';
COMMENT ON COLUMN ks.SnackPack.LunchProgramEligibilityAtRiskFunding IS 'Lunch Program Eligibility At Risk Funding';
COMMENT ON COLUMN ks.SnackPack.MostRecentSchool IS 'Most recent school';
COMMENT ON COLUMN ks.SnackPack.NeglectedDelinquentStudent IS 'Student''s NeglectedDelinquent-Student Status';
COMMENT ON COLUMN ks.SnackPack.PrimaryDisabilityIndicator IS 'Student''s Primary Disability Indicator';
COMMENT ON COLUMN ks.SnackPack.Qualifiedfor504 IS 'Qualified for 504';
COMMENT ON COLUMN ks.SnackPack.ResidenceDistrict IS 'Residence District';
COMMENT ON COLUMN ks.SnackPack.SchoolEntryDate IS 'School Entry Date';
COMMENT ON COLUMN ks.SnackPack.SchoolExitWithdrawalDate IS 'School Exit/Withdrawal Date';
COMMENT ON COLUMN ks.SnackPack.TitleIParticipation IS 'Title I Participation';

-- Extended Properties [ks].[StudentAssessmentExtension] --
COMMENT ON TABLE ks.StudentAssessmentExtension IS '';
COMMENT ON COLUMN ks.StudentAssessmentExtension.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN ks.StudentAssessmentExtension.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN ks.StudentAssessmentExtension.StudentAssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment administered to a student.';
COMMENT ON COLUMN ks.StudentAssessmentExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.StudentAssessmentExtension.AssessmentRequestDescriptorId IS 'The type of assessment requested  for the student.';
COMMENT ON COLUMN ks.StudentAssessmentExtension.ProctorStaffUSI IS 'A unique alphanumeric code assigned to a staff.';

-- Extended Properties [ks].[StudentEducationOrganizationAssociationCTE] --
COMMENT ON TABLE ks.StudentEducationOrganizationAssociationCTE IS 'The Career Technical Education associated with the student.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationCTE.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationCTE.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationCTE.CertificationTermDescriptorId IS 'This descriptor defines the term of a session during the school year.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationCTE.CTECertificationDateEarned IS 'The date that the CTE certificate has been awarded.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationCTE.CTECertificationEarnedDescriptorId IS 'The type of certification given to a student.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationCTE.GraduationYear IS 'The year that the student graduated from CTE.';

-- Extended Properties [ks].[StudentEducationOrganizationAssociationExtension] --
COMMENT ON TABLE ks.StudentEducationOrganizationAssociationExtension IS '';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationExtension.DistrictOfResidence IS 'The district of residence of the student.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationExtension.ImmigrantStudentDescriptorId IS 'Describes the student''s immigrant status.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationExtension.MilitaryConnectedStudentDescriptorId IS 'Describes the student''s military connection.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationExtension.NeglectedDelinquentStudentDescriptorId IS 'Describes whether the student is a neglected or delinquent student.';

-- Extended Properties [ks].[StudentEducationOrganizationAssociationTransportation] --
COMMENT ON TABLE ks.StudentEducationOrganizationAssociationTransportation IS 'Contains elements relating to student''s transportation.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationTransportation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationTransportation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationTransportation.MilesTransported IS 'The number of miles a student is transported one way at the school or district''s
expense, as measured from the front door of the student''s residence to the
front door of the school where the student attends the majority of his/her
classes. The amount should be to nearest tenth without rounding. For
example, 2.48 would be 2.4 and not 2.5. Mileage over 3.0 miles is counted as
3.0 for “miles transported” purposes. Because of this, you may enter 3.0 or the
exact miles when a student is transported 3.0 miles or further. Use zero for
students not transported. Do not include transportation of special education
students claimed on the Special Education Transportation Expense Form 308.
Do not include transpportation of students to and from a technical school or
community college.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationTransportation.NonResidentTransportation IS 'An indication that the student is attending the district under an agreement by
the district under KSA 72-3124.';
COMMENT ON COLUMN ks.StudentEducationOrganizationAssociationTransportation.TransportationFTE IS 'The student''s round-trip transportation to school, to the nearest tenth. When
the student is transported to and from school, the portion is 1.0. When a
student is transported one way; the portion is .5. Does not include
transportation of special education students claimed on the Special
Education Transportation Expense Form 308.';

-- Extended Properties [ks].[StudentKPATProgramAssociation] --
COMMENT ON TABLE ks.StudentKPATProgramAssociation IS 'This association represents the Kansas Parents As Teachers Program(s) that a student participates in or receive services from.';
COMMENT ON COLUMN ks.StudentKPATProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN ks.StudentKPATProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentKPATProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentKPATProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN ks.StudentKPATProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN ks.StudentKPATProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [ks].[StudentKPPProgramAssociation] --
COMMENT ON TABLE ks.StudentKPPProgramAssociation IS 'This association represents the Kansas Preschool Pilot Program(s) that a student participates in or receive services from.';
COMMENT ON COLUMN ks.StudentKPPProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN ks.StudentKPPProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentKPPProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentKPPProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN ks.StudentKPPProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN ks.StudentKPPProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [ks].[StudentLanguageInstructionProgramAssociationExtension] --
COMMENT ON TABLE ks.StudentLanguageInstructionProgramAssociationExtension IS '';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.EndDate IS 'The date when student is no longer in the language instruction program.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.FundingSourceDescriptorId IS 'The source of funding for ESOL/bilingual program in which the student participates in.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.LanguageInstructionProgramTypeDescriptorId IS 'The language instruction program type the student participates in.';
COMMENT ON COLUMN ks.StudentLanguageInstructionProgramAssociationExtension.USInitialSchoolEntryDate IS 'First Entry Date into a School in the United States';

-- Extended Properties [ks].[StudentSchoolAssociationExtension] --
COMMENT ON TABLE ks.StudentSchoolAssociationExtension IS '';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.AttendanceDays IS 'The number of days the student has been present in this school/program when school was in session during the current school year.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.CreditsEarned IS 'The total amount of completed credits earned towards graduation.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.CreditsRequiredToGraduate IS 'The total amount of completed credits required for graduation.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.CTEContactMinutes IS 'The number of minutes a high school student received instruction in an Approved for funding career and technical education course on September 20';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.FirstInstructionalDate IS 'The month, day, year on which the student first receives instructional services during the current school year.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.IndividualPlanOfStudy IS 'An indication of whether or not the student has an individual plan of study.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.LocalEducationAgencyEntryDate IS 'The month, day, year on which the student enrolls and begins to receive instructional services in a school district.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.MembershipDays IS 'The number of days the student has been enrolled and receiving instruction';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.MinutesEnrolled IS 'The number of minutes per day that the student was enrolled in this district on September 20.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.PostGraduationPlansDescriptorId IS 'The intended post-secondary direction of graduates.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.QualifiedFor504DescriptorId IS 'Indicates the type of 504 qualification of the student.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.StateEntryDate IS 'The month, day, year on which the student enrolls and begins to receive instructional services in Kansas.';
COMMENT ON COLUMN ks.StudentSchoolAssociationExtension.UnweightedGradePointAverage IS 'The student''s unweighted cumulative GPA upon graduating from high school with a regular high school diploma.';

-- Extended Properties [ks].[StudentSectionAssociationExtension] --
COMMENT ON TABLE ks.StudentSectionAssociationExtension IS '';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.BeginDate IS 'Month, day, and year of the student''s entry or assignment to the section.';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school.';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN ks.StudentSectionAssociationExtension.CourseStatusDescriptorId IS 'Indication of the student''s status in the course.';

-- Extended Properties [ks].[WorkBasedLearningDescriptor] --
COMMENT ON TABLE ks.WorkBasedLearningDescriptor IS 'This field indicates a Work-based Learning course when the KCC ID (F19) is present.';
COMMENT ON COLUMN ks.WorkBasedLearningDescriptor.WorkBasedLearningDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

