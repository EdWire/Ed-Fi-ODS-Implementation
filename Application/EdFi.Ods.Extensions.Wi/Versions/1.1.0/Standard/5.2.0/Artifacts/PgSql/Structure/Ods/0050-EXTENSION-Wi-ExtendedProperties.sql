-- Extended Properties [wi].[CertificatedProgramStatusDescriptor] --
COMMENT ON TABLE wi.CertificatedProgramStatusDescriptor IS 'Status in a certificated program';
COMMENT ON COLUMN wi.CertificatedProgramStatusDescriptor.CertificatedProgramStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [wi].[CountDateNameDescriptor] --
COMMENT ON TABLE wi.CountDateNameDescriptor IS 'This descriptor describes the name of a count date for which services are recorded';
COMMENT ON COLUMN wi.CountDateNameDescriptor.CountDateNameDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [wi].[CountDateReceivingServiceDescriptor] --
COMMENT ON TABLE wi.CountDateReceivingServiceDescriptor IS 'This descriptor describes the state of services on a count date';
COMMENT ON COLUMN wi.CountDateReceivingServiceDescriptor.CountDateReceivingServiceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [wi].[CourseOfferingCareerPathway] --
COMMENT ON TABLE wi.CourseOfferingCareerPathway IS 'The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator.';
COMMENT ON COLUMN wi.CourseOfferingCareerPathway.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN wi.CourseOfferingCareerPathway.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.CourseOfferingCareerPathway.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN wi.CourseOfferingCareerPathway.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN wi.CourseOfferingCareerPathway.CareerPathwayDescriptorId IS 'The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator.';

-- Extended Properties [wi].[CteProgramAreaDescriptor] --
COMMENT ON TABLE wi.CteProgramAreaDescriptor IS 'Wisconsin CTE program areas.';
COMMENT ON COLUMN wi.CteProgramAreaDescriptor.CteProgramAreaDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [wi].[DisciplineActionExtension] --
COMMENT ON TABLE wi.DisciplineActionExtension IS '';
COMMENT ON COLUMN wi.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the discipline action.';
COMMENT ON COLUMN wi.DisciplineActionExtension.DisciplineDate IS 'The date of the discipline action.';
COMMENT ON COLUMN wi.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.DisciplineActionExtension.EarlyReinstatementCondition IS 'Following an expulsion, the student had early reinstatement condition to return to school prior to the end of the expulsion.';
COMMENT ON COLUMN wi.DisciplineActionExtension.ModifiedTermDescriptorId IS 'Identifies if the duration of the expulsion has been modified from the federally required one year of expulsion for a fire arms incident.';

-- Extended Properties [wi].[GradeExtension] --
COMMENT ON TABLE wi.GradeExtension IS '';
COMMENT ON COLUMN wi.GradeExtension.BeginDate IS 'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.GradeExtension.GradeTypeDescriptorId IS 'The type of grade reported (e.g., exam, final, grading period).';
COMMENT ON COLUMN wi.GradeExtension.GradingPeriodDescriptorId IS 'The state''s name of the period for which grades are reported.';
COMMENT ON COLUMN wi.GradeExtension.GradingPeriodName IS 'The school''s descriptive name of the grading period.';
COMMENT ON COLUMN wi.GradeExtension.GradingPeriodSchoolYear IS 'The identifier for the grading period school year.';
COMMENT ON COLUMN wi.GradeExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN wi.GradeExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.GradeExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN wi.GradeExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN wi.GradeExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN wi.GradeExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.GradeExtension.CertificatedProgramStatusDescriptorId IS 'Indicator of Certificated Program Status';

-- Extended Properties [wi].[GraduationPlanExtension] --
COMMENT ON TABLE wi.GraduationPlanExtension IS '';
COMMENT ON COLUMN wi.GraduationPlanExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.GraduationPlanExtension.GraduationPlanTypeDescriptorId IS 'The type of academic plan the student is following for graduation.';
COMMENT ON COLUMN wi.GraduationPlanExtension.GraduationSchoolYear IS 'The school year the student is expected to graduate.';
COMMENT ON COLUMN wi.GraduationPlanExtension.CivicsExam IS 'A civics exam is required- Yes -1 or No - 0';
COMMENT ON COLUMN wi.GraduationPlanExtension.CommunityService IS 'Total hours of community service required for graduation';
COMMENT ON COLUMN wi.GraduationPlanExtension.MiscellaneousRequiredCredits IS 'Clarification of requirements for Miscellaneous Required Credits';
COMMENT ON COLUMN wi.GraduationPlanExtension.NonHsHealthEducationCredits IS 'Credits of Health Education Fulfilled in Grade 7 and/or Grade 8';

-- Extended Properties [wi].[IacCodeDescriptor] --
COMMENT ON TABLE wi.IacCodeDescriptor IS 'IAC - subset of federal CIP codes used in Wisconsin CTE programs.';
COMMENT ON COLUMN wi.IacCodeDescriptor.IacCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [wi].[ModifiedTermDescriptor] --
COMMENT ON TABLE wi.ModifiedTermDescriptor IS 'Identifies if the duration of the expulsion has been modified from the federally required one year of expulsion for a fire arms incident.';
COMMENT ON COLUMN wi.ModifiedTermDescriptor.ModifiedTermDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [wi].[RccPlacementTypeDescriptor] --
COMMENT ON TABLE wi.RccPlacementTypeDescriptor IS 'Indicates the placement type for a student’s RCC placement.';
COMMENT ON COLUMN wi.RccPlacementTypeDescriptor.RccPlacementTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [wi].[StaffEducationOrganizationEmploymentAssociationExtension] --
COMMENT ON TABLE wi.StaffEducationOrganizationEmploymentAssociationExtension IS '';
COMMENT ON COLUMN wi.StaffEducationOrganizationEmploymentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN wi.StaffEducationOrganizationEmploymentAssociationExtension.HireDate IS 'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.StaffEducationOrganizationEmploymentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN wi.StaffEducationOrganizationEmploymentAssociationExtension.LocalPersonIdentificationCode IS 'A unique number or alphanumeric code assigned to a staff member by a school or school system.';

-- Extended Properties [wi].[StudentCTEProgramAssociationCTEConcentrationCteProgramArea] --
COMMENT ON TABLE wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea IS 'WI Program areas of concentration.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationCTEConcentrationCteProgramArea.CteProgramAreaDescriptorId IS 'WI Program areas of concentration.';

-- Extended Properties [wi].[StudentCTEProgramAssociationExtension] --
COMMENT ON TABLE wi.StudentCTEProgramAssociationExtension IS '';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.StudentCTEProgramAssociationExtension.CertificatedProgramStatusDescriptorId IS 'Indicator of Certificated Program Status';

-- Extended Properties [wi].[StudentDisciplineIncidentBehaviorAssociationExtension] --
COMMENT ON TABLE wi.StudentDisciplineIncidentBehaviorAssociationExtension IS '';
COMMENT ON COLUMN wi.StudentDisciplineIncidentBehaviorAssociationExtension.BehaviorDescriptorId IS 'Describes behavior by category.';
COMMENT ON COLUMN wi.StudentDisciplineIncidentBehaviorAssociationExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN wi.StudentDisciplineIncidentBehaviorAssociationExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.StudentDisciplineIncidentBehaviorAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.StudentDisciplineIncidentBehaviorAssociationExtension.SeriousBodilyInjury IS 'Incident resulted in serious bodily injury. Serious Bodily Injury involves a substantial risk of death; extreme physical pain; protracted and obvious disfigurement; or protracted loss or impairment of the function of a bodily member, organ, or faculty (18 USC Section 1365 (3)(h)).';

-- Extended Properties [wi].[StudentSchoolAssociationExtension] --
COMMENT ON TABLE wi.StudentSchoolAssociationExtension IS '';
COMMENT ON COLUMN wi.StudentSchoolAssociationExtension.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.StudentSchoolAssociationExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.StudentSchoolAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.StudentSchoolAssociationExtension.ActualDaysAttendance IS '';
COMMENT ON COLUMN wi.StudentSchoolAssociationExtension.PartTimeInstructionalMinutes IS 'Instructional minutes for up to two classes for part-time students';
COMMENT ON COLUMN wi.StudentSchoolAssociationExtension.PossibleDaysAttendance IS '';

-- Extended Properties [wi].[StudentSchoolAssociationReceivingService] --
COMMENT ON TABLE wi.StudentSchoolAssociationReceivingService IS 'The status of a student during a specific count date';
COMMENT ON COLUMN wi.StudentSchoolAssociationReceivingService.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.StudentSchoolAssociationReceivingService.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.StudentSchoolAssociationReceivingService.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.StudentSchoolAssociationReceivingService.CountDateNameDescriptorId IS 'The count date name for the student status (e.g 3rd Fri Sept)';
COMMENT ON COLUMN wi.StudentSchoolAssociationReceivingService.CountDateReceivingServiceDescriptorId IS 'The status of the student during the specific count date (e.g. Present)';

-- Extended Properties [wi].[StudentSchoolAssociationResidencyPeriod] --
COMMENT ON TABLE wi.StudentSchoolAssociationResidencyPeriod IS 'The Residency Status of a student for a given portion of a StudentSchoolAssociation when other than a full-time resident for the entire StudentSchoolAssociation.';
COMMENT ON COLUMN wi.StudentSchoolAssociationResidencyPeriod.EntryDate IS 'The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student''s enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.StudentSchoolAssociationResidencyPeriod.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.StudentSchoolAssociationResidencyPeriod.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.StudentSchoolAssociationResidencyPeriod.BeginDate IS 'The month, day, and year on which the student entered the residency status.';
COMMENT ON COLUMN wi.StudentSchoolAssociationResidencyPeriod.ResidencyStatusDescriptorId IS 'An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.';
COMMENT ON COLUMN wi.StudentSchoolAssociationResidencyPeriod.EndDate IS 'The month, day, and year on which the student exited the residency status.';
COMMENT ON COLUMN wi.StudentSchoolAssociationResidencyPeriod.ResidentLocalEducationAgencyId IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';

-- Extended Properties [wi].[StudentSpecialEducationProgramAssociationExtension] --
COMMENT ON TABLE wi.StudentSpecialEducationProgramAssociationExtension IS '';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.FapeResponsibleSchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.RccCity IS 'The city in which the out-of-state RCC is located.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.RccCommunityProviderId IS 'The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.RccNameOfInstitution IS 'A name for the RCC facility for out-of-state placements.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.RccPlacementTypeDescriptorId IS '	Indicates the placement type for the student''s RCC placement. Possible values include ''County Placed,'' ''Parent Placed,'' and ''IEP Team Placed''.';
COMMENT ON COLUMN wi.StudentSpecialEducationProgramAssociationExtension.RccStateAbbreviationDescriptorId IS 'The abbreviation for the state (within the United States) or outlying area in which an RCC is located.';

