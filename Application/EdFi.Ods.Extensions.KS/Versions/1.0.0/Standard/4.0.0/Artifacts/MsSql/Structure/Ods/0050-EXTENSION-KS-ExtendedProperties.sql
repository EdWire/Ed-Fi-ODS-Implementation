-- Extended Properties [ks].[AssessmentRequestDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of request for the student assessment.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'AssessmentRequestDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'AssessmentRequestDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentRequestDescriptorId'
GO

-- Extended Properties [ks].[CollegeCareerTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of career path a student is planning to take when in college.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CollegeCareerTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CollegeCareerTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CollegeCareerTypeDescriptorId'
GO

-- Extended Properties [ks].[CourseDeliveryTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method or format through which the educational course is delivered to students.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseDeliveryTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseDeliveryTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CourseDeliveryTypeDescriptorId'
GO

-- Extended Properties [ks].[CourseOfferingExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Associated college career type for this course.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'CollegeCareerTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Credits required to complete the course.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'CourseCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Delivery type of this course.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'CourseDeliveryTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Associated program type for this course.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'CourseProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sequence related to course pathways.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'CourseSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total sequence related to this course.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseOfferingExtension', @level2type=N'COLUMN', @level2name=N'CourseTotalSequence'
GO

-- Extended Properties [ks].[CourseProgramTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program a course is in.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CourseProgramTypeDescriptorId'
GO

-- Extended Properties [ks].[CourseStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is documentation for CourseStatus descriptor.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CourseStatusDescriptor', @level2type=N'COLUMN', @level2name=N'CourseStatusDescriptorId'
GO

-- Extended Properties [ks].[CTECertificationEarnedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The certification code associated with the CTE certification earned by the student during the current school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CTECertificationEarnedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'CTECertificationEarnedDescriptor', @level2type=N'COLUMN', @level2name=N'CTECertificationEarnedDescriptorId'
GO

-- Extended Properties [ks].[FundingSourceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'enumeration for type of ESOL/Bilingual Program in which the student participates.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'FundingSourceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'FundingSourceDescriptor', @level2type=N'COLUMN', @level2name=N'FundingSourceDescriptorId'
GO

-- Extended Properties [ks].[GradeExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the student''s entry or assignment to the section.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of grade reported (e.g., exam, final, grading period).', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of college credits earned for the dual credit courses and concurrent enrollments.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'CollegeCreditEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first day of migrant student instruction or services for the current term (F18).', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'FirstInstructionalDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of college credits earned for the dual credit courses and concurrent enrollments.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'InstructionalMinutesCompleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last day of migrant student instruction for the current term (F18).', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'LastInstructionalDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This field indicates a Work-based Learning course when the KCC ID (F19) is present.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'WorkBasedLearningDescriptorId'
GO

-- Extended Properties [ks].[ImmigrantStudentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the student''s immigrant status.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'ImmigrantStudentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'ImmigrantStudentDescriptor', @level2type=N'COLUMN', @level2name=N'ImmigrantStudentDescriptorId'
GO

-- Extended Properties [ks].[LanguageInstructionProgramTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language instruction program type the student participates in.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'LanguageInstructionProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'LanguageInstructionProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'LanguageInstructionProgramTypeDescriptorId'
GO

-- Extended Properties [ks].[MilitaryConnectedStudentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the student''s military connection.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'MilitaryConnectedStudentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'MilitaryConnectedStudentDescriptor', @level2type=N'COLUMN', @level2name=N'MilitaryConnectedStudentDescriptorId'
GO

-- Extended Properties [ks].[NeglectedDelinquentStudentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes whether the student is a neglected or delinquent student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'NeglectedDelinquentStudentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'NeglectedDelinquentStudentDescriptor', @level2type=N'COLUMN', @level2name=N'NeglectedDelinquentStudentDescriptorId'
GO

-- Extended Properties [ks].[PostGraduationPlansDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended post-secondary direction of graduates.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'PostGraduationPlansDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'PostGraduationPlansDescriptor', @level2type=N'COLUMN', @level2name=N'PostGraduationPlansDescriptorId'
GO

-- Extended Properties [ks].[QualifiedFor504Descriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of 504 qualification of the student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'QualifiedFor504Descriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'QualifiedFor504Descriptor', @level2type=N'COLUMN', @level2name=N'QualifiedFor504DescriptorId'
GO

-- Extended Properties [ks].[SchoolExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SchoolExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The closing date related to School.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'DateClosed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when the school opened in the directory application.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'DateOpened'
GO

-- Extended Properties [ks].[SectionEducator] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the section''s educator.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The educator''s email.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'EducatorElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The educator''s first name.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'EducatorFirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The educator''s last name.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'EducatorLastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The educator''s middle name.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SectionEducator', @level2type=N'COLUMN', @level2name=N'EducatorMiddleName'
GO

-- Extended Properties [ks].[SnackPack] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SnackPack', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s unique Id', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'StateStudentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accountability School', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'AccountabilitySchool'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cumulative Days Attended', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'CumulativeDaysAttended'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ESOL Bilingual Program Entry Date', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'ESOLBilingualProgramEntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ESOL Bilingual Program Participation Code', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'ESOLBilingualProgramParticipationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s First Language', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'FirstLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s Gifted Status Indicator', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'GiftedStudentIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade Level', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'GradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s Homeless Status', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'Homeless'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s Immigrant Status', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'Immigrant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kansas At Risk Program Participation', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'KansasAtRiskProgramParticipation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lunch Program Eligibility At Risk Funding', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'LunchProgramEligibilityAtRiskFunding'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Most recent school', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'MostRecentSchool'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s NeglectedDelinquent-Student Status', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'NeglectedDelinquentStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s Primary Disability Indicator', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'PrimaryDisabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Qualified for 504', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'Qualifiedfor504'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Residence District', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'ResidenceDistrict'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'School Entry Date', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'SchoolEntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'School Exit/Withdrawal Date', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'SchoolExitWithdrawalDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Title I Participation', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'SnackPack', @level2type=N'COLUMN', @level2name=N'TitleIParticipation'
GO

-- Extended Properties [ks].[StudentAssessmentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentAssessmentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an assessment.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentAssessmentExtension', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the assessment.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentAssessmentExtension', @level2type=N'COLUMN', @level2name=N'Namespace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an assessment administered to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentAssessmentExtension', @level2type=N'COLUMN', @level2name=N'StudentAssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentAssessmentExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of assessment requested  for the student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentAssessmentExtension', @level2type=N'COLUMN', @level2name=N'AssessmentRequestDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentAssessmentExtension', @level2type=N'COLUMN', @level2name=N'ProctorStaffUSI'
GO

-- Extended Properties [ks].[StudentEducationOrganizationAssociationCTE] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Career Technical Education associated with the student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationCTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationCTE', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationCTE', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the term of a session during the school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationCTE', @level2type=N'COLUMN', @level2name=N'CertificationTermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the CTE certificate has been awarded.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationCTE', @level2type=N'COLUMN', @level2name=N'CTECertificationDateEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of certification given to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationCTE', @level2type=N'COLUMN', @level2name=N'CTECertificationEarnedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year that the student graduated from CTE.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationCTE', @level2type=N'COLUMN', @level2name=N'GraduationYear'
GO

-- Extended Properties [ks].[StudentEducationOrganizationAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The district of residence of the student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'DistrictOfResidence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes the student''s immigrant status.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'ImmigrantStudentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes the student''s military connection.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'MilitaryConnectedStudentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes whether the student is a neglected or delinquent student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'NeglectedDelinquentStudentDescriptorId'
GO

-- Extended Properties [ks].[StudentEducationOrganizationAssociationTransportation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains elements relating to student''s transportation.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTransportation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTransportation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTransportation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of miles a student is transported one way at the school or district''s
expense, as measured from the front door of the student''s residence to the
front door of the school where the student attends the majority of his/her
classes. The amount should be to nearest tenth without rounding. For
example, 2.48 would be 2.4 and not 2.5. Mileage over 3.0 miles is counted as
3.0 for “miles transported” purposes. Because of this, you may enter 3.0 or the
exact miles when a student is transported 3.0 miles or further. Use zero for
students not transported. Do not include transportation of special education
students claimed on the Special Education Transportation Expense Form 308.
Do not include transpportation of students to and from a technical school or
community college.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTransportation', @level2type=N'COLUMN', @level2name=N'MilesTransported'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student is attending the district under an agreement by
the district under KSA 72-3124.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTransportation', @level2type=N'COLUMN', @level2name=N'NonResidentTransportation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The student''s round-trip transportation to school, to the nearest tenth. When
the student is transported to and from school, the portion is 1.0. When a
student is transported one way; the portion is .5. Does not include
transportation of special education students claimed on the Special
Education Transportation Expense Form 308.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationTransportation', @level2type=N'COLUMN', @level2name=N'TransportationFTE'
GO

-- Extended Properties [ks].[StudentKPATProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Kansas Parents As Teachers Program(s) that a student participates in or receive services from.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPATProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPATProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPATProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPATProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPATProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPATProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPATProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [ks].[StudentKPPProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Kansas Preschool Pilot Program(s) that a student participates in or receive services from.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPPProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPPProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPPProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPPProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPPProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPPProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentKPPProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [ks].[StudentLanguageInstructionProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when student is no longer in the language instruction program.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source of funding for ESOL/bilingual program in which the student participates in.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'FundingSourceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language instruction program type the student participates in.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'LanguageInstructionProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First Entry Date into a School in the United States', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'USInitialSchoolEntryDate'
GO

-- Extended Properties [ks].[StudentSchoolAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of days the student has been present in this school/program when school was in session during the current school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'AttendanceDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total amount of completed credits earned towards graduation.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'CreditsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total amount of completed credits required for graduation.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'CreditsRequiredToGraduate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of minutes a high school student received instruction in an Approved for funding career and technical education course on September 20', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'CTEContactMinutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, year on which the student first receives instructional services during the current school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'FirstInstructionalDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not the student has an individual plan of study.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'IndividualPlanOfStudy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, year on which the student enrolls and begins to receive instructional services in a school district.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyEntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of days the student has been enrolled and receiving instruction', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'MembershipDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of minutes per day that the student was enrolled in this district on September 20.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'MinutesEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended post-secondary direction of graduates.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'PostGraduationPlansDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of 504 qualification of the student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'QualifiedFor504DescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, year on which the student enrolls and begins to receive instructional services in Kansas.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'StateEntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The student''s unweighted cumulative GPA upon graduating from high school with a regular high school diploma.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'UnweightedGradePointAverage'
GO

-- Extended Properties [ks].[StudentSectionAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the student''s entry or assignment to the section.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indication of the student''s status in the course.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'CourseStatusDescriptorId'
GO

-- Extended Properties [ks].[WorkBasedLearningDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This field indicates a Work-based Learning course when the KCC ID (F19) is present.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'WorkBasedLearningDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'ks', @level1type=N'TABLE', @level1name=N'WorkBasedLearningDescriptor', @level2type=N'COLUMN', @level2name=N'WorkBasedLearningDescriptorId'
GO

