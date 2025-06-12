-- Extended Properties [idoe].[AccreditationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'School accreditation (e.g. Accreditted, Not State Accreditted, Recognized Program).', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AccreditationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AccreditationDescriptor', @level2type=N'COLUMN', @level2name=N'AccreditationDescriptorId'
GO

-- Extended Properties [idoe].[ADMCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student is enrolled and attending this reported school as a Resident Enrollment,Transfers Out, Cash Transfers, State Obligations, Placements In, or Dual Enrollment.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ADMCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ADMCodeDescriptor', @level2type=N'COLUMN', @level2name=N'ADMCodeDescriptorId'
GO

-- Extended Properties [idoe].[AlternativeEducationEligibilityReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason for eligibiliy in the alternative education program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AlternativeEducationEligibilityReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AlternativeEducationEligibilityReasonDescriptor', @level2type=N'COLUMN', @level2name=N'AlternativeEducationEligibilityReasonDescriptorId'
GO

-- Extended Properties [idoe].[ArrestReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The arrest reason codes for a discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ArrestReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ArrestReasonDescriptor', @level2type=N'COLUMN', @level2name=N'ArrestReasonDescriptorId'
GO

-- Extended Properties [idoe].[AssessmentAccommodation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the variations used in how an assessment is presented or taken.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AssessmentAccommodation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines variations used in how an assessment is presented or taken.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AccommodationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an assessment.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the assessment.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'AssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

-- Extended Properties [idoe].[CalendarDateExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarDateExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the calendar event.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the calendar.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'EventDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of time for the event in minutes as recognized by the school.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarDateExtension', @level2type=N'COLUMN', @level2name=N'EventMinutes'
GO

-- Extended Properties [idoe].[CalendarExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarExtension', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the calendar.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether or not a school is calculating instructional time in minutes instead of days.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CalendarExtension', @level2type=N'COLUMN', @level2name=N'InstructionalTimeInMinutesIndicator'
GO

-- Extended Properties [idoe].[CircumstancesRelevantToTimelineDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The circumstance relevant to the evaluation timeline.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CircumstancesRelevantToTimelineDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CircumstancesRelevantToTimelineDescriptor', @level2type=N'COLUMN', @level2name=N'CircumstancesRelevantToTimelineDescriptorId'
GO

-- Extended Properties [idoe].[CriminalGangRelatedEventDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criminal gang related participation of a student in a discipline incident.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CriminalGangRelatedEventDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'CriminalGangRelatedEventDescriptor', @level2type=N'COLUMN', @level2name=N'CriminalGangRelatedEventDescriptorId'
GO

-- Extended Properties [idoe].[DisciplineActionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The arrest reason codes for a discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'ArrestReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The services provided for the student during a discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator to denote if the special education student was referred to an interim alternative education setting.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'InterimAlternativeEducationSetting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The arrest type for a discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'StudentArrestDescriptorId'
GO

-- Extended Properties [idoe].[DisciplineActionServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The services provided for the student during a discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'DisciplineActionServiceDescriptor', @level2type=N'COLUMN', @level2name=N'DisciplineActionServiceDescriptorId'
GO

-- Extended Properties [idoe].[EducationOrganizationOtherPersonnel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Noncertified and other personnel employed by the School Corporation, organized by category (e.g., Office, Clerical, Cafeteria, Maintenance).', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'EducationOrganizationOtherPersonnel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'EducationOrganizationOtherPersonnel', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category for noncertified and other personnel.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'EducationOrganizationOtherPersonnel', @level2type=N'COLUMN', @level2name=N'OtherPersonnelCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Position title for noncertified and other personnel.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'EducationOrganizationOtherPersonnel', @level2type=N'COLUMN', @level2name=N'OtherPersonnelTitleDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'EducationOrganizationOtherPersonnel', @level2type=N'COLUMN', @level2name=N'FullTimeEquivalency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total number of noncertified and other personnel employed by the school corporation by position title.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'EducationOrganizationOtherPersonnel', @level2type=N'COLUMN', @level2name=N'OtherPersonnelCount'
GO

-- Extended Properties [idoe].[ELLInstrumentUsedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The instrument used to measure the English proficiency level.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ELLInstrumentUsedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ELLInstrumentUsedDescriptor', @level2type=N'COLUMN', @level2name=N'ELLInstrumentUsedDescriptorId'
GO

-- Extended Properties [idoe].[LocalAccountExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code value for the valid combination of account dimensions by LEA under which financials are reported. ', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fiscal year for the account.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account function dimension.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'FunctionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account fund dimension.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'FundCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account object dimension.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'ObjectCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account operational unit dimension.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'OperationalUnitCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account section dimension.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'SectionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account subcategory.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalAccountExtension', @level2type=N'COLUMN', @level2name=N'SubCategoryCode'
GO

-- Extended Properties [idoe].[LocalCapitalizedEquipment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of local education agency or charter management organization expense or revenue amounts.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code value for the valid combination of account dimensions by LEA under which financials are reported. ', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the reported amount for the account.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'AsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fiscal year for the account.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code that identifies the Record.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'RecordIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when the equipment was purchased.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'AcquisitionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The lesser amount of the captilized threshold or $5,000, according to the school corporation''s captilization threshold policy.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'CapitalizedThreshold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the equipment/vehicle that was purchased.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'EquipmentDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An equipment that qualify for capitalization, encompassing both nontechnology-related and technology-related equipment. Nontechnology-related equipment  can include items like furniture and other assets with a capital nature. Technology-related equipment can inlcude technology hardware and technology infrastructure.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'EquipmentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The accounting period or grouping for which the amount is collected.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'FinancialCollectionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount paid for the equipment associated with the associated expenditure information.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'PaymentAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unit cost of the equipment.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalCapitalizedEquipment', @level2type=N'COLUMN', @level2name=N'PerUnitCost'
GO

-- Extended Properties [idoe].[LocalSubaward] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Subawards: An award provided by a pass-through entity to a subrecipient for the subrecipient to carry out part of a Federal award received by the pass-through entity.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code value for the valid combination of account dimensions by LEA under which financials are reported. ', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the reported amount for the account.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'AsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fiscal year for the account.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code that identifies the Record.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'RecordIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This number reflects if the recording fiscal year wa the first, second, etc. Year of the contract.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'ContractNumberOfYears'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the department associated with the subcontact/subaward.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'DepartmentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount paid after the first $50,000.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'Excess50k'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An award provided by a pass-through entity to a subrecipient for the subrecipient to carry out part of a Federal award received by the pass-through entity.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'ExpenditureAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The accounting period or grouping for which the amount is collected.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'FinancialCollectionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first $50,000. It is only applicable to one year regardless of the period of performance.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'First50k'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total award provided by a pass-through entity to a subrecipient for the subrecipient to carry out part of a Federal award received by the pass-through entity.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'SubawardAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the vendor or organization who is engaged in the contract with the LEA.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalSubaward', @level2type=N'COLUMN', @level2name=N'VendorOrganizationName'
GO

-- Extended Properties [idoe].[LocalUnusedLeavePayment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UnusedLeavePayments: Any payment made directly to the employee when the employee retires or terminates employment. An example of this would be unused vacation time paid to the employee after the employee has left the school corporation.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code value for the valid combination of account dimensions by LEA under which financials are reported. ', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the reported amount for the account.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'AsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fiscal year for the account.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code that identifies the Record.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'RecordIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payment made to an employee that falls under direct costs that can be identified specifically with a particular final cost objective, such as a Federal award, or other internally or externally funded activity, or that can be directly assigned to such activities relatively easily with a high degree of accuracy.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'DirectUnusedLeavePaymentAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of employee.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'EmployeeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The accounting period or grouping for which the amount is collected.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'FinancialCollectionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payment made to an employee that falls under indirect, incurred for a common or joint purpose benefitting more than one cost objective, and not readily assignable to the cost objectives specifically benefitted, without effort disproportionate to the results achieved.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'IndirectUnusedLeavePaymentAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Job title of the employee.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the payment was made to the employee.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'LocalUnusedLeavePayment', @level2type=N'COLUMN', @level2name=N'PaymentDate'
GO

-- Extended Properties [idoe].[OtherPersonnelCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category for noncertified and other personnel.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'OtherPersonnelCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'OtherPersonnelCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'OtherPersonnelCategoryDescriptorId'
GO

-- Extended Properties [idoe].[OtherPersonnelTitleDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Position title for noncertified and other personnel.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'OtherPersonnelTitleDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'OtherPersonnelTitleDescriptor', @level2type=N'COLUMN', @level2name=N'OtherPersonnelTitleDescriptorId'
GO

-- Extended Properties [idoe].[ProgramMeetingTimeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time of day the student attends the program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ProgramMeetingTimeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'ProgramMeetingTimeDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramMeetingTimeDescriptorId'
GO

-- Extended Properties [idoe].[SchoolExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SchoolExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'School accreditation (e.g. Accreditted, Not State Accreditted, Recognized Program).', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'AccreditationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether or not the school is a Choice School.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'ChoiceIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Freeway accreditation begin date.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'FreewayBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Freeway accreditation end date.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SchoolExtension', @level2type=N'COLUMN', @level2name=N'FreewayEndDate'
GO

-- Extended Properties [idoe].[SectionDimension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This IDOE custom dimension entity represents the valid set of section codes defined by IDOE for a fiscal year reporting period.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SectionDimension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account section dimension.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SectionDimension', @level2type=N'COLUMN', @level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fiscal year for which the account section dimension is valid.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SectionDimension', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the account section dimension.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SectionDimension', @level2type=N'COLUMN', @level2name=N'CodeName'
GO

-- Extended Properties [idoe].[StaffEducationOrganizationEmploymentAssociationContract] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contract information for the staff member with the education organization (e.g. Contract Days, Contract Salary).', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Accurate number of days employed in this school corporation during the period of July 1 to June 30.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'ContractDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full-year, base salary during July 1 to June 30 in whole dollar amounts. Report full year base salary and not the prorated amount the teacher will receive if not employed the full year.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'ContractSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total percent of the employee''s salary that is paid by Title I. Base salary only. Allowable format is whole numbers only.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'PercentTitleISalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total supplemental salary for additional work, such as extended contracts, extracurricular, etc.? Earnings are to be July 1 to June 30. Allowable format is full dollars. Supplemental service teacher contracts (Summer School, Adult Education, and GED) are to be included.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationContract', @level2type=N'COLUMN', @level2name=N'SupplementalSalary'
GO

-- Extended Properties [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a similar professional position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'YearsOfPriorProfessionalExperience'
GO

-- Extended Properties [idoe].[StudentAccommodation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the variations used in how an assessment is presented or taken.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAccommodation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines variations used in how an assessment is presented or taken.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAccommodation', @level2type=N'COLUMN', @level2name=N'AccommodationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an assessment.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAccommodation', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAccommodation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the assessment.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAccommodation', @level2type=N'COLUMN', @level2name=N'Namespace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAccommodation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [idoe].[StudentAlternativeEducationProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional information on a student enrolled in an Alternative Education Program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason for eligibiliy in the alternative education program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'AlternativeEducationEligibilityReasonDescriptorId'
GO

-- Extended Properties [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time of day the student attends the alternative education program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time of day the student attends the alternative education program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentAlternativeEducationProgramAssociationProgramMeetingTime', @level2type=N'COLUMN', @level2name=N'ProgramMeetingTimeDescriptorId'
GO

-- Extended Properties [idoe].[StudentArrestDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The arrest type for a discipline action.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentArrestDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentArrestDescriptor', @level2type=N'COLUMN', @level2name=N'StudentArrestDescriptorId'
GO

-- Extended Properties [idoe].[StudentContactAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a contact.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension', @level2type=N'COLUMN', @level2name=N'ContactUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between parent and student for legal representation.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentContactAssociationExtension', @level2type=N'COLUMN', @level2name=N'LegalDesignee'
GO

-- Extended Properties [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes behavior by category.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'BehaviorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criminal gang related participation of a student in a discipline incident.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentBehaviorAssociationExtension', @level2type=N'COLUMN', @level2name=N'CriminalGangRelatedEventDescriptorId'
GO

-- Extended Properties [idoe].[StudentEducationOrganizationAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The instrument used to measure the English proficiency level.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'ELLInstrumentUsedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'US initial school entry date', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationExtension', @level2type=N'COLUMN', @level2name=N'USInitialSchoolEntry'
GO

-- Extended Properties [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional education organization responsibility designation for the student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start date of an education organization''s responsibility for a student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility', @level2type=N'COLUMN', @level2name=N'ResponsibilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility', @level2type=N'COLUMN', @level2name=N'SchoolCorpEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the education organization''s responsibility for a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility', @level2type=N'COLUMN', @level2name=N'SchoolCorpResponsibilityDescriptorId'
GO

-- Extended Properties [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start date of an education organization''s responsibility for a student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension', @level2type=N'COLUMN', @level2name=N'ResponsibilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student is enrolled and attending this reported school as a Resident Enrollment,Transfers Out, Cash Transfers, State Obligations, Placements In, or Dual Enrollment.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension', @level2type=N'COLUMN', @level2name=N'ADMCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of instructional days for the student at the education organization for a given school year. Allowable values are 1 - 180.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension', @level2type=N'COLUMN', @level2name=N'InstructionalDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of instructional days for the student at the education organization during the course of one full day. Allowable values are 1 - 400.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociationExtension', @level2type=N'COLUMN', @level2name=N'InstructionalMinutes'
GO

-- Extended Properties [idoe].[StudentSchoolGraduationPlan] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The graduation plan associated with the student at a school.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the graduation plan started.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the graduation plan was ended.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlan', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The secondary graduation plan or plans associated with the student enrolled in the school.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the graduation plan started.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'AlternativeEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'AlternativeGraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSchoolGraduationPlanAlternativeGraduationPlan', @level2type=N'COLUMN', @level2name=N'AlternativeGraduationSchoolYear'
GO

-- Extended Properties [idoe].[StudentSpecialEducationProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The circumstance relevant to the evaluation timeline.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'CircumstancesRelevantToTimelineDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'On what date did special education services begin for the student transitioning from first steps? Allowable formats are MMDDYYYY and MM/DD/YYYY. Report only if student is transitioning from First Steps.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'FirstStepsTransitionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date used to consider the evaluation timeline? Allowable formats are MMDDYYYY and MM/DD/YYYY. Date must be instructional day in your school calendar. If referral occurred in summer, parent constent / referal date should be first day of current school year.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ParentalConsentDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason the special education deadline was missed or services did not begin.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'TimelineComplianceDescriptorId'
GO

-- Extended Properties [idoe].[SubCategoryDimension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the valid set of subcategory codes defined by IDOE for a fiscal year reporting period.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SubCategoryDimension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code representation of the account subcategory.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SubCategoryDimension', @level2type=N'COLUMN', @level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fiscal year for which the account subcategory is valid.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SubCategoryDimension', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the account subcategory.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'SubCategoryDimension', @level2type=N'COLUMN', @level2name=N'CodeName'
GO

-- Extended Properties [idoe].[TimelineComplianceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason the special education deadline was missed or services did not begin.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'TimelineComplianceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'idoe', @level1type=N'TABLE', @level1name=N'TimelineComplianceDescriptor', @level2type=N'COLUMN', @level2name=N'TimelineComplianceDescriptorId'
GO

