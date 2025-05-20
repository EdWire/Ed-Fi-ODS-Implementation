-- Extended Properties [wi].[CertificatedProgramStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status in a certificated program', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CertificatedProgramStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CertificatedProgramStatusDescriptor', @level2type=N'COLUMN', @level2name=N'CertificatedProgramStatusDescriptorId'
GO

-- Extended Properties [wi].[CountDateNameDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the name of a count date for which services are recorded', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CountDateNameDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CountDateNameDescriptor', @level2type=N'COLUMN', @level2name=N'CountDateNameDescriptorId'
GO

-- Extended Properties [wi].[CountDateReceivingServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the state of services on a count date', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CountDateReceivingServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CountDateReceivingServiceDescriptor', @level2type=N'COLUMN', @level2name=N'CountDateReceivingServiceDescriptorId'
GO

-- Extended Properties [wi].[CourseOfferingCareerPathway] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CourseOfferingCareerPathway'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CourseOfferingCareerPathway', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CourseOfferingCareerPathway', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CourseOfferingCareerPathway', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CourseOfferingCareerPathway', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CourseOfferingCareerPathway', @level2type=N'COLUMN', @level2name=N'CareerPathwayDescriptorId'
GO

-- Extended Properties [wi].[CteProgramAreaDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Wisconsin CTE program areas.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CteProgramAreaDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'CteProgramAreaDescriptor', @level2type=N'COLUMN', @level2name=N'CteProgramAreaDescriptorId'
GO

-- Extended Properties [wi].[DisciplineActionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the discipline action.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the discipline action.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Following an expulsion, the student had early reinstatement condition to return to school prior to the end of the expulsion.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'EarlyReinstatementCondition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if the duration of the expulsion has been modified from the federally required one year of expulsion for a fire arms incident.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'ModifiedTermDescriptorId'
GO

-- Extended Properties [wi].[GradeExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of grade reported (e.g., exam, final, grading period).', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state''s name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school''s descriptive name of the grading period.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradingPeriodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of Certificated Program Status', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GradeExtension', @level2type=N'COLUMN', @level2name=N'CertificatedProgramStatusDescriptorId'
GO

-- Extended Properties [wi].[GraduationPlanExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A civics exam is required- Yes -1 or No - 0', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension', @level2type=N'COLUMN', @level2name=N'CivicsExam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total hours of community service required for graduation', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension', @level2type=N'COLUMN', @level2name=N'CommunityService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clarification of requirements for Miscellaneous Required Credits', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension', @level2type=N'COLUMN', @level2name=N'MiscellaneousRequiredCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Credits of Health Education Fulfilled in Grade 7 and/or Grade 8', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'GraduationPlanExtension', @level2type=N'COLUMN', @level2name=N'NonHsHealthEducationCredits'
GO

-- Extended Properties [wi].[IacCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IAC - subset of federal CIP codes used in Wisconsin CTE programs.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'IacCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'IacCodeDescriptor', @level2type=N'COLUMN', @level2name=N'IacCodeDescriptorId'
GO

-- Extended Properties [wi].[ModifiedTermDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if the duration of the expulsion has been modified from the federally required one year of expulsion for a fire arms incident.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'ModifiedTermDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'ModifiedTermDescriptor', @level2type=N'COLUMN', @level2name=N'ModifiedTermDescriptorId'
GO

-- Extended Properties [wi].[RccPlacementTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the placement type for a student’s RCC placement.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'RccPlacementTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'RccPlacementTypeDescriptor', @level2type=N'COLUMN', @level2name=N'RccPlacementTypeDescriptorId'
GO

-- Extended Properties [wi].[StaffEducationOrganizationEmploymentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a staff member by a school or school system.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalPersonIdentificationCode'
GO

-- Extended Properties [wi].[StudentCTEProgramAssociationCTEConcentrationCteProgramArea] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WI Program areas of concentration.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WI Program areas of concentration.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEConcentrationCteProgramArea', @level2type=N'COLUMN', @level2name=N'CteProgramAreaDescriptorId'
GO

-- Extended Properties [wi].[StudentCTEProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of Certificated Program Status', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'CertificatedProgramStatusDescriptorId'
GO

-- Extended Properties [wi].[StudentDisciplineIncidentBehaviorAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes behavior by category.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'BehaviorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Incident resulted in serious bodily injury. Serious Bodily Injury involves a substantial risk of death; extreme physical pain; protracted and obvious disfigurement; or protracted loss or impairment of the function of a bodily member, organ, or faculty (18 USC Section 1365 (3)(h)).', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'SeriousBodilyInjury'
GO

-- Extended Properties [wi].[StudentSchoolAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'ActualDaysAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Instructional minutes for up to two classes for part-time students', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'PartTimeInstructionalMinutes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationExtension', @level2type=N'COLUMN', @level2name=N'PossibleDaysAttendance'
GO

-- Extended Properties [wi].[StudentSchoolAssociationReceivingService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of a student during a specific count date', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationReceivingService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationReceivingService', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationReceivingService', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationReceivingService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The count date name for the student status (e.g 3rd Fri Sept)', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationReceivingService', @level2type=N'COLUMN', @level2name=N'CountDateNameDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the student during the specific count date (e.g. Present)', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationReceivingService', @level2type=N'COLUMN', @level2name=N'CountDateReceivingServiceDescriptorId'
GO

-- Extended Properties [wi].[StudentSchoolAssociationResidencyPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Residency Status of a student for a given portion of a StudentSchoolAssociation when other than a full-time resident for the entire StudentSchoolAssociation.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the student entered the residency status.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod', @level2type=N'COLUMN', @level2name=N'ResidencyStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the student exited the residency status.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationResidencyPeriod', @level2type=N'COLUMN', @level2name=N'ResidentLocalEducationAgencyId'
GO

-- Extended Properties [wi].[StudentSpecialEducationProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'FapeResponsibleSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city in which the out-of-state RCC is located.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'RccCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'RccCommunityProviderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name for the RCC facility for out-of-state placements.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'RccNameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'	Indicates the placement type for the student''s RCC placement. Possible values include ''County Placed,'' ''Parent Placed,'' and ''IEP Team Placed''.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'RccPlacementTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an RCC is located.', @level0type=N'SCHEMA', @level0name=N'wi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'RccStateAbbreviationDescriptorId'
GO

