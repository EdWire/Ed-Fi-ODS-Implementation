-- Extended Properties [idoe].[AccreditationDescriptor] --
COMMENT ON TABLE idoe.AccreditationDescriptor IS 'School accreditation (e.g. Accreditted, Not State Accreditted, Recognized Program).';
COMMENT ON COLUMN idoe.AccreditationDescriptor.AccreditationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[ADMCodeDescriptor] --
COMMENT ON TABLE idoe.ADMCodeDescriptor IS 'Student is enrolled and attending this reported school as a Resident Enrollment,Transfers Out, Cash Transfers, State Obligations, Placements In, or Dual Enrollment.';
COMMENT ON COLUMN idoe.ADMCodeDescriptor.ADMCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[AlternativeEducationEligibilityReasonDescriptor] --
COMMENT ON TABLE idoe.AlternativeEducationEligibilityReasonDescriptor IS 'The primary reason for eligibiliy in the alternative education program.';
COMMENT ON COLUMN idoe.AlternativeEducationEligibilityReasonDescriptor.AlternativeEducationEligibilityReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[ArrestReasonDescriptor] --
COMMENT ON TABLE idoe.ArrestReasonDescriptor IS 'The arrest reason codes for a discipline action.';
COMMENT ON COLUMN idoe.ArrestReasonDescriptor.ArrestReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[AssessmentAccommodation] --
COMMENT ON TABLE idoe.AssessmentAccommodation IS 'This entity represents the variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.AssessmentAccommodation.AccommodationDescriptorId IS 'This descriptor defines variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.AssessmentAccommodation.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN idoe.AssessmentAccommodation.Namespace IS 'Namespace for the assessment.';

-- Extended Properties [idoe].[CalendarDateExtension] --
COMMENT ON TABLE idoe.CalendarDateExtension IS '';
COMMENT ON COLUMN idoe.CalendarDateExtension.CalendarCode IS 'The identifier for the calendar.';
COMMENT ON COLUMN idoe.CalendarDateExtension.Date IS 'The month, day, and year of the calendar event.';
COMMENT ON COLUMN idoe.CalendarDateExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN idoe.CalendarDateExtension.SchoolYear IS 'The identifier for the school year associated with the calendar.';
COMMENT ON COLUMN idoe.CalendarDateExtension.EventDuration IS 'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.';
COMMENT ON COLUMN idoe.CalendarDateExtension.EventMinutes IS 'The amount of time for the event in minutes as recognized by the school.';

-- Extended Properties [idoe].[CalendarExtension] --
COMMENT ON TABLE idoe.CalendarExtension IS '';
COMMENT ON COLUMN idoe.CalendarExtension.CalendarCode IS 'The identifier for the calendar.';
COMMENT ON COLUMN idoe.CalendarExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN idoe.CalendarExtension.SchoolYear IS 'The identifier for the school year associated with the calendar.';
COMMENT ON COLUMN idoe.CalendarExtension.InstructionalTimeInMinutesIndicator IS 'Indicator of whether or not a school is calculating instructional time in minutes instead of days.';

-- Extended Properties [idoe].[CircumstancesRelevantToTimelineDescriptor] --
COMMENT ON TABLE idoe.CircumstancesRelevantToTimelineDescriptor IS 'The circumstance relevant to the evaluation timeline.';
COMMENT ON COLUMN idoe.CircumstancesRelevantToTimelineDescriptor.CircumstancesRelevantToTimelineDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[CriminalGangRelatedEventDescriptor] --
COMMENT ON TABLE idoe.CriminalGangRelatedEventDescriptor IS 'The criminal gang related participation of a student in a discipline incident.';
COMMENT ON COLUMN idoe.CriminalGangRelatedEventDescriptor.CriminalGangRelatedEventDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[DisciplineActionExtension] --
COMMENT ON TABLE idoe.DisciplineActionExtension IS '';
COMMENT ON COLUMN idoe.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.DisciplineDate IS 'The date of the discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.ArrestReasonDescriptorId IS 'The arrest reason codes for a discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.DisciplineActionServiceDescriptorId IS 'The services provided for the student during a discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.InterimAlternativeEducationSetting IS 'Indicator to denote if the special education student was referred to an interim alternative education setting.';
COMMENT ON COLUMN idoe.DisciplineActionExtension.StudentArrestDescriptorId IS 'The arrest type for a discipline action.';

-- Extended Properties [idoe].[DisciplineActionServiceDescriptor] --
COMMENT ON TABLE idoe.DisciplineActionServiceDescriptor IS 'The services provided for the student during a discipline action.';
COMMENT ON COLUMN idoe.DisciplineActionServiceDescriptor.DisciplineActionServiceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[EducationOrganizationOtherPersonnel] --
COMMENT ON TABLE idoe.EducationOrganizationOtherPersonnel IS 'Noncertified and other personnel employed by the School Corporation, organized by category (e.g., Office, Clerical, Cafeteria, Maintenance).';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.LocalEducationAgencyId IS 'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.OtherPersonnelCategoryDescriptorId IS 'Category for noncertified and other personnel.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.OtherPersonnelTitleDescriptorId IS 'Position title for noncertified and other personnel.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.FullTimeEquivalency IS 'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.';
COMMENT ON COLUMN idoe.EducationOrganizationOtherPersonnel.OtherPersonnelCount IS 'Total number of noncertified and other personnel employed by the school corporation by position title.';

-- Extended Properties [idoe].[ELLInstrumentUsedDescriptor] --
COMMENT ON TABLE idoe.ELLInstrumentUsedDescriptor IS 'The instrument used to measure the English proficiency level.';
COMMENT ON COLUMN idoe.ELLInstrumentUsedDescriptor.ELLInstrumentUsedDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[LocalAccountExtension] --
COMMENT ON TABLE idoe.LocalAccountExtension IS '';
COMMENT ON COLUMN idoe.LocalAccountExtension.AccountIdentifier IS 'Code value for the valid combination of account dimensions by LEA under which financials are reported. ';
COMMENT ON COLUMN idoe.LocalAccountExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.LocalAccountExtension.FiscalYear IS 'The fiscal year for the account.';
COMMENT ON COLUMN idoe.LocalAccountExtension.FunctionCode IS 'The code representation of the account function dimension.';
COMMENT ON COLUMN idoe.LocalAccountExtension.FundCode IS 'The code representation of the account fund dimension.';
COMMENT ON COLUMN idoe.LocalAccountExtension.ObjectCode IS 'The code representation of the account object dimension.';
COMMENT ON COLUMN idoe.LocalAccountExtension.OperationalUnitCode IS 'The code representation of the account operational unit dimension.';
COMMENT ON COLUMN idoe.LocalAccountExtension.SectionCode IS 'The code representation of the account section dimension.';
COMMENT ON COLUMN idoe.LocalAccountExtension.SubCategoryCode IS 'The code representation of the account subcategory.';

-- Extended Properties [idoe].[LocalCapitalizedEquipment] --
COMMENT ON TABLE idoe.LocalCapitalizedEquipment IS 'The set of local education agency or charter management organization expense or revenue amounts.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.AccountIdentifier IS 'Code value for the valid combination of account dimensions by LEA under which financials are reported. ';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.AsOfDate IS 'The date of the reported amount for the account.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.FiscalYear IS 'The fiscal year for the account.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.RecordIdentifier IS 'A unique number or alphanumeric code that identifies the Record.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.AcquisitionDate IS 'The date when the equipment was purchased.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.CapitalizedThreshold IS 'The lesser amount of the captilized threshold or $5,000, according to the school corporation''s captilization threshold policy.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.EquipmentDescription IS 'The description of the equipment/vehicle that was purchased.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.EquipmentType IS 'An equipment that qualify for capitalization, encompassing both nontechnology-related and technology-related equipment. Nontechnology-related equipment  can include items like furniture and other assets with a capital nature. Technology-related equipment can inlcude technology hardware and technology infrastructure.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.FinancialCollectionDescriptorId IS 'The accounting period or grouping for which the amount is collected.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.PaymentAmount IS 'The amount paid for the equipment associated with the associated expenditure information.';
COMMENT ON COLUMN idoe.LocalCapitalizedEquipment.PerUnitCost IS 'The unit cost of the equipment.';

-- Extended Properties [idoe].[LocalSubaward] --
COMMENT ON TABLE idoe.LocalSubaward IS 'Subawards: An award provided by a pass-through entity to a subrecipient for the subrecipient to carry out part of a Federal award received by the pass-through entity.';
COMMENT ON COLUMN idoe.LocalSubaward.AccountIdentifier IS 'Code value for the valid combination of account dimensions by LEA under which financials are reported. ';
COMMENT ON COLUMN idoe.LocalSubaward.AsOfDate IS 'The date of the reported amount for the account.';
COMMENT ON COLUMN idoe.LocalSubaward.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.LocalSubaward.FiscalYear IS 'The fiscal year for the account.';
COMMENT ON COLUMN idoe.LocalSubaward.RecordIdentifier IS 'A unique number or alphanumeric code that identifies the Record.';
COMMENT ON COLUMN idoe.LocalSubaward.ContractNumberOfYears IS 'This number reflects if the recording fiscal year wa the first, second, etc. Year of the contract.';
COMMENT ON COLUMN idoe.LocalSubaward.DepartmentName IS 'The name of the department associated with the subcontact/subaward.';
COMMENT ON COLUMN idoe.LocalSubaward.Excess50k IS 'The amount paid after the first $50,000.';
COMMENT ON COLUMN idoe.LocalSubaward.ExpenditureAmount IS 'An award provided by a pass-through entity to a subrecipient for the subrecipient to carry out part of a Federal award received by the pass-through entity.';
COMMENT ON COLUMN idoe.LocalSubaward.FinancialCollectionDescriptorId IS 'The accounting period or grouping for which the amount is collected.';
COMMENT ON COLUMN idoe.LocalSubaward.First50k IS 'The first $50,000. It is only applicable to one year regardless of the period of performance.';
COMMENT ON COLUMN idoe.LocalSubaward.SubawardAmount IS 'Total award provided by a pass-through entity to a subrecipient for the subrecipient to carry out part of a Federal award received by the pass-through entity.';
COMMENT ON COLUMN idoe.LocalSubaward.VendorOrganizationName IS 'The name of the vendor or organization who is engaged in the contract with the LEA.';

-- Extended Properties [idoe].[LocalUnusedLeavePayment] --
COMMENT ON TABLE idoe.LocalUnusedLeavePayment IS 'UnusedLeavePayments: Any payment made directly to the employee when the employee retires or terminates employment. An example of this would be unused vacation time paid to the employee after the employee has left the school corporation.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.AccountIdentifier IS 'Code value for the valid combination of account dimensions by LEA under which financials are reported. ';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.AsOfDate IS 'The date of the reported amount for the account.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.FiscalYear IS 'The fiscal year for the account.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.RecordIdentifier IS 'A unique number or alphanumeric code that identifies the Record.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.DirectUnusedLeavePaymentAmount IS 'Payment made to an employee that falls under direct costs that can be identified specifically with a particular final cost objective, such as a Federal award, or other internally or externally funded activity, or that can be directly assigned to such activities relatively easily with a high degree of accuracy.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.EmployeeName IS 'The name of employee.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.FinancialCollectionDescriptorId IS 'The accounting period or grouping for which the amount is collected.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.IndirectUnusedLeavePaymentAmount IS 'Payment made to an employee that falls under indirect, incurred for a common or joint purpose benefitting more than one cost objective, and not readily assignable to the cost objectives specifically benefitted, without effort disproportionate to the results achieved.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.JobTitle IS 'The Job title of the employee.';
COMMENT ON COLUMN idoe.LocalUnusedLeavePayment.PaymentDate IS 'The date the payment was made to the employee.';

-- Extended Properties [idoe].[OtherPersonnelCategoryDescriptor] --
COMMENT ON TABLE idoe.OtherPersonnelCategoryDescriptor IS 'Category for noncertified and other personnel.';
COMMENT ON COLUMN idoe.OtherPersonnelCategoryDescriptor.OtherPersonnelCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[OtherPersonnelTitleDescriptor] --
COMMENT ON TABLE idoe.OtherPersonnelTitleDescriptor IS 'Position title for noncertified and other personnel.';
COMMENT ON COLUMN idoe.OtherPersonnelTitleDescriptor.OtherPersonnelTitleDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[ProgramMeetingTimeDescriptor] --
COMMENT ON TABLE idoe.ProgramMeetingTimeDescriptor IS 'The time of day the student attends the program.';
COMMENT ON COLUMN idoe.ProgramMeetingTimeDescriptor.ProgramMeetingTimeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[SchoolExtension] --
COMMENT ON TABLE idoe.SchoolExtension IS '';
COMMENT ON COLUMN idoe.SchoolExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN idoe.SchoolExtension.AccreditationDescriptorId IS 'School accreditation (e.g. Accreditted, Not State Accreditted, Recognized Program).';
COMMENT ON COLUMN idoe.SchoolExtension.ChoiceIndicator IS 'Indicator of whether or not the school is a Choice School.';
COMMENT ON COLUMN idoe.SchoolExtension.FreewayBeginDate IS 'Freeway accreditation begin date.';
COMMENT ON COLUMN idoe.SchoolExtension.FreewayEndDate IS 'Freeway accreditation end date.';

-- Extended Properties [idoe].[SectionDimension] --
COMMENT ON TABLE idoe.SectionDimension IS 'This IDOE custom dimension entity represents the valid set of section codes defined by IDOE for a fiscal year reporting period.';
COMMENT ON COLUMN idoe.SectionDimension.Code IS 'The code representation of the account section dimension.';
COMMENT ON COLUMN idoe.SectionDimension.FiscalYear IS 'The fiscal year for which the account section dimension is valid.';
COMMENT ON COLUMN idoe.SectionDimension.CodeName IS 'A description of the account section dimension.';

-- Extended Properties [idoe].[StaffEducationOrganizationEmploymentAssociationContract] --
COMMENT ON TABLE idoe.StaffEducationOrganizationEmploymentAssociationContract IS 'Contract information for the staff member with the education organization (e.g. Contract Days, Contract Salary).';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.HireDate IS 'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.ContractDays IS 'Accurate number of days employed in this school corporation during the period of July 1 to June 30.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.ContractSalary IS 'Full-year, base salary during July 1 to June 30 in whole dollar amounts. Report full year base salary and not the prorated amount the teacher will receive if not employed the full year.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.PercentTitleISalary IS 'The total percent of the employee''s salary that is paid by Title I. Base salary only. Allowable format is whole numbers only.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationContract.SupplementalSalary IS 'The total supplemental salary for additional work, such as extended contracts, extracurricular, etc.? Earnings are to be July 1 to June 30. Allowable format is full dollars. Supplemental service teacher contracts (Summer School, Adult Education, and GED) are to be included.';

-- Extended Properties [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
COMMENT ON TABLE idoe.StaffEducationOrganizationEmploymentAssociationExtension IS '';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.HireDate IS 'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN idoe.StaffEducationOrganizationEmploymentAssociationExtension.YearsOfPriorProfessionalExperience IS 'The total number of years that an individual has previously held a similar professional position in one or more education institutions.';

-- Extended Properties [idoe].[StudentAccommodation] --
COMMENT ON TABLE idoe.StudentAccommodation IS 'This entity represents the variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.StudentAccommodation.AccommodationDescriptorId IS 'This descriptor defines variations used in how an assessment is presented or taken.';
COMMENT ON COLUMN idoe.StudentAccommodation.AssessmentIdentifier IS 'A unique number or alphanumeric code assigned to an assessment.';
COMMENT ON COLUMN idoe.StudentAccommodation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAccommodation.Namespace IS 'Namespace for the assessment.';
COMMENT ON COLUMN idoe.StudentAccommodation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [idoe].[StudentAlternativeEducationProgramAssociation] --
COMMENT ON TABLE idoe.StudentAlternativeEducationProgramAssociation IS 'Additional information on a student enrolled in an Alternative Education Program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociation.AlternativeEducationEligibilityReasonDescriptorId IS 'The primary reason for eligibiliy in the alternative education program.';

-- Extended Properties [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] --
COMMENT ON TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime IS 'The time of day the student attends the alternative education program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime.ProgramMeetingTimeDescriptorId IS 'The time of day the student attends the alternative education program.';

-- Extended Properties [idoe].[StudentArrestDescriptor] --
COMMENT ON TABLE idoe.StudentArrestDescriptor IS 'The arrest type for a discipline action.';
COMMENT ON COLUMN idoe.StudentArrestDescriptor.StudentArrestDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [idoe].[StudentContactAssociationExtension] --
COMMENT ON TABLE idoe.StudentContactAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentContactAssociationExtension.ContactUSI IS 'A unique alphanumeric code assigned to a contact.';
COMMENT ON COLUMN idoe.StudentContactAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentContactAssociationExtension.LegalDesignee IS 'Relationship between parent and student for legal representation.';

-- Extended Properties [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] --
COMMENT ON TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.BehaviorDescriptorId IS 'Describes behavior by category.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentDisciplineIncidentBehaviorAssociationExtension.CriminalGangRelatedEventDescriptorId IS 'The criminal gang related participation of a student in a discipline incident.';

-- Extended Properties [idoe].[StudentEducationOrganizationAssociationExtension] --
COMMENT ON TABLE idoe.StudentEducationOrganizationAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.ELLInstrumentUsedDescriptorId IS 'The instrument used to measure the English proficiency level.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationAssociationExtension.USInitialSchoolEntry IS 'US initial school entry date';

-- Extended Properties [idoe].[StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc] --
COMMENT ON TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc IS 'Additional education organization responsibility designation for the student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.BeginDate IS 'Month, day, and year of the start date of an education organization''s responsibility for a student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.ResponsibilityDescriptorId IS 'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.SchoolCorpEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc.SchoolCorpResponsibilityDescriptorId IS 'An indication of the education organization''s responsibility for a student.';

-- Extended Properties [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] --
COMMENT ON TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.BeginDate IS 'Month, day, and year of the start date of an education organization''s responsibility for a student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.ResponsibilityDescriptorId IS 'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.ADMCodeDescriptorId IS 'Student is enrolled and attending this reported school as a Resident Enrollment,Transfers Out, Cash Transfers, State Obligations, Placements In, or Dual Enrollment.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.InstructionalDays IS 'The number of instructional days for the student at the education organization for a given school year. Allowable values are 1 - 180.';
COMMENT ON COLUMN idoe.StudentEducationOrganizationResponsibilityAssociationExtension.InstructionalMinutes IS 'The number of instructional days for the student at the education organization during the course of one full day. Allowable values are 1 - 400.';

-- Extended Properties [idoe].[StudentSchoolGraduationPlan] --
COMMENT ON TABLE idoe.StudentSchoolGraduationPlan IS 'The graduation plan associated with the student at a school.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlan.BeginDate IS 'The date the graduation plan started.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlan.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlan.GraduationPlanTypeDescriptorId IS 'The type of academic plan the student is following for graduation.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlan.GraduationSchoolYear IS 'The school year the student is expected to graduate.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlan.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlan.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlan.EndDate IS 'The date the graduation plan was ended.';

-- Extended Properties [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] --
COMMENT ON TABLE idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan IS 'The secondary graduation plan or plans associated with the student enrolled in the school.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.BeginDate IS 'The date the graduation plan started.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.GraduationPlanTypeDescriptorId IS 'The type of academic plan the student is following for graduation.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.GraduationSchoolYear IS 'The school year the student is expected to graduate.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.AlternativeEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.AlternativeGraduationPlanTypeDescriptorId IS 'The type of academic plan the student is following for graduation.';
COMMENT ON COLUMN idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan.AlternativeGraduationSchoolYear IS 'The school year the student is expected to graduate.';

-- Extended Properties [idoe].[StudentSpecialEducationProgramAssociationExtension] --
COMMENT ON TABLE idoe.StudentSpecialEducationProgramAssociationExtension IS '';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.CircumstancesRelevantToTimelineDescriptorId IS 'The circumstance relevant to the evaluation timeline.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.FirstStepsTransitionDate IS 'On what date did special education services begin for the student transitioning from first steps? Allowable formats are MMDDYYYY and MM/DD/YYYY. Report only if student is transitioning from First Steps.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.ParentalConsentDate IS 'The date used to consider the evaluation timeline? Allowable formats are MMDDYYYY and MM/DD/YYYY. Date must be instructional day in your school calendar. If referral occurred in summer, parent constent / referal date should be first day of current school year.';
COMMENT ON COLUMN idoe.StudentSpecialEducationProgramAssociationExtension.TimelineComplianceDescriptorId IS 'Reason the special education deadline was missed or services did not begin.';

-- Extended Properties [idoe].[SubCategoryDimension] --
COMMENT ON TABLE idoe.SubCategoryDimension IS 'This entity represents the valid set of subcategory codes defined by IDOE for a fiscal year reporting period.';
COMMENT ON COLUMN idoe.SubCategoryDimension.Code IS 'The code representation of the account subcategory.';
COMMENT ON COLUMN idoe.SubCategoryDimension.FiscalYear IS 'The fiscal year for which the account subcategory is valid.';
COMMENT ON COLUMN idoe.SubCategoryDimension.CodeName IS 'A description of the account subcategory.';

-- Extended Properties [idoe].[TimelineComplianceDescriptor] --
COMMENT ON TABLE idoe.TimelineComplianceDescriptor IS 'Reason the special education deadline was missed or services did not begin.';
COMMENT ON COLUMN idoe.TimelineComplianceDescriptor.TimelineComplianceDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

