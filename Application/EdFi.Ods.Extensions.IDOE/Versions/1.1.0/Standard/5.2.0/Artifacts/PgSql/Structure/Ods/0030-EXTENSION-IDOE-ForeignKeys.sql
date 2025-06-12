ALTER TABLE idoe.AccreditationDescriptor ADD CONSTRAINT FK_2451ba_Descriptor FOREIGN KEY (AccreditationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.ADMCodeDescriptor ADD CONSTRAINT FK_ee5602_Descriptor FOREIGN KEY (ADMCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.AlternativeEducationEligibilityReasonDescriptor ADD CONSTRAINT FK_683552_Descriptor FOREIGN KEY (AlternativeEducationEligibilityReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.ArrestReasonDescriptor ADD CONSTRAINT FK_129c5d_Descriptor FOREIGN KEY (ArrestReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.AssessmentAccommodation ADD CONSTRAINT FK_5a7690_AccommodationDescriptor FOREIGN KEY (AccommodationDescriptorId)
REFERENCES edfi.AccommodationDescriptor (AccommodationDescriptorId)
;

CREATE INDEX FK_5a7690_AccommodationDescriptor
ON idoe.AssessmentAccommodation (AccommodationDescriptorId ASC);

ALTER TABLE idoe.AssessmentAccommodation ADD CONSTRAINT FK_5a7690_Assessment FOREIGN KEY (AssessmentIdentifier, Namespace)
REFERENCES edfi.Assessment (AssessmentIdentifier, Namespace)
;

CREATE INDEX FK_5a7690_Assessment
ON idoe.AssessmentAccommodation (AssessmentIdentifier ASC, Namespace ASC);

ALTER TABLE idoe.CalendarDateExtension ADD CONSTRAINT FK_1a442d_CalendarDate FOREIGN KEY (CalendarCode, Date, SchoolId, SchoolYear)
REFERENCES edfi.CalendarDate (CalendarCode, Date, SchoolId, SchoolYear)
ON DELETE CASCADE
;

ALTER TABLE idoe.CalendarExtension ADD CONSTRAINT FK_6ff5f6_Calendar FOREIGN KEY (CalendarCode, SchoolId, SchoolYear)
REFERENCES edfi.Calendar (CalendarCode, SchoolId, SchoolYear)
ON DELETE CASCADE
;

ALTER TABLE idoe.CircumstancesRelevantToTimelineDescriptor ADD CONSTRAINT FK_5185f5_Descriptor FOREIGN KEY (CircumstancesRelevantToTimelineDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.CriminalGangRelatedEventDescriptor ADD CONSTRAINT FK_b348a6_Descriptor FOREIGN KEY (CriminalGangRelatedEventDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_ArrestReasonDescriptor FOREIGN KEY (ArrestReasonDescriptorId)
REFERENCES idoe.ArrestReasonDescriptor (ArrestReasonDescriptorId)
;

CREATE INDEX FK_699fda_ArrestReasonDescriptor
ON idoe.DisciplineActionExtension (ArrestReasonDescriptorId ASC);

ALTER TABLE idoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineAction FOREIGN KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
REFERENCES edfi.DisciplineAction (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineActionServiceDescriptor FOREIGN KEY (DisciplineActionServiceDescriptorId)
REFERENCES idoe.DisciplineActionServiceDescriptor (DisciplineActionServiceDescriptorId)
;

CREATE INDEX FK_699fda_DisciplineActionServiceDescriptor
ON idoe.DisciplineActionExtension (DisciplineActionServiceDescriptorId ASC);

ALTER TABLE idoe.DisciplineActionExtension ADD CONSTRAINT FK_699fda_StudentArrestDescriptor FOREIGN KEY (StudentArrestDescriptorId)
REFERENCES idoe.StudentArrestDescriptor (StudentArrestDescriptorId)
;

CREATE INDEX FK_699fda_StudentArrestDescriptor
ON idoe.DisciplineActionExtension (StudentArrestDescriptorId ASC);

ALTER TABLE idoe.DisciplineActionServiceDescriptor ADD CONSTRAINT FK_f3d236_Descriptor FOREIGN KEY (DisciplineActionServiceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.EducationOrganizationOtherPersonnel ADD CONSTRAINT FK_de2ebe_LocalEducationAgency FOREIGN KEY (LocalEducationAgencyId)
REFERENCES edfi.LocalEducationAgency (LocalEducationAgencyId)
;

ALTER TABLE idoe.EducationOrganizationOtherPersonnel ADD CONSTRAINT FK_de2ebe_OtherPersonnelCategoryDescriptor FOREIGN KEY (OtherPersonnelCategoryDescriptorId)
REFERENCES idoe.OtherPersonnelCategoryDescriptor (OtherPersonnelCategoryDescriptorId)
;

CREATE INDEX FK_de2ebe_OtherPersonnelCategoryDescriptor
ON idoe.EducationOrganizationOtherPersonnel (OtherPersonnelCategoryDescriptorId ASC);

ALTER TABLE idoe.EducationOrganizationOtherPersonnel ADD CONSTRAINT FK_de2ebe_OtherPersonnelTitleDescriptor FOREIGN KEY (OtherPersonnelTitleDescriptorId)
REFERENCES idoe.OtherPersonnelTitleDescriptor (OtherPersonnelTitleDescriptorId)
;

CREATE INDEX FK_de2ebe_OtherPersonnelTitleDescriptor
ON idoe.EducationOrganizationOtherPersonnel (OtherPersonnelTitleDescriptorId ASC);

ALTER TABLE idoe.ELLInstrumentUsedDescriptor ADD CONSTRAINT FK_a08946_Descriptor FOREIGN KEY (ELLInstrumentUsedDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.LocalAccountExtension ADD CONSTRAINT FK_fe1da7_FunctionDimension FOREIGN KEY (FunctionCode, FiscalYear)
REFERENCES edfi.FunctionDimension (Code, FiscalYear)
;

CREATE INDEX FK_fe1da7_FunctionDimension
ON idoe.LocalAccountExtension (FunctionCode ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalAccountExtension ADD CONSTRAINT FK_fe1da7_FundDimension FOREIGN KEY (FundCode, FiscalYear)
REFERENCES edfi.FundDimension (Code, FiscalYear)
;

CREATE INDEX FK_fe1da7_FundDimension
ON idoe.LocalAccountExtension (FundCode ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalAccountExtension ADD CONSTRAINT FK_fe1da7_LocalAccount FOREIGN KEY (AccountIdentifier, EducationOrganizationId, FiscalYear)
REFERENCES edfi.LocalAccount (AccountIdentifier, EducationOrganizationId, FiscalYear)
ON DELETE CASCADE
;

ALTER TABLE idoe.LocalAccountExtension ADD CONSTRAINT FK_fe1da7_ObjectDimension FOREIGN KEY (ObjectCode, FiscalYear)
REFERENCES edfi.ObjectDimension (Code, FiscalYear)
;

CREATE INDEX FK_fe1da7_ObjectDimension
ON idoe.LocalAccountExtension (ObjectCode ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalAccountExtension ADD CONSTRAINT FK_fe1da7_OperationalUnitDimension FOREIGN KEY (OperationalUnitCode, FiscalYear)
REFERENCES edfi.OperationalUnitDimension (Code, FiscalYear)
;

CREATE INDEX FK_fe1da7_OperationalUnitDimension
ON idoe.LocalAccountExtension (OperationalUnitCode ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalAccountExtension ADD CONSTRAINT FK_fe1da7_SectionDimension FOREIGN KEY (SectionCode, FiscalYear)
REFERENCES idoe.SectionDimension (Code, FiscalYear)
;

CREATE INDEX FK_fe1da7_SectionDimension
ON idoe.LocalAccountExtension (SectionCode ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalAccountExtension ADD CONSTRAINT FK_fe1da7_SubCategoryDimension FOREIGN KEY (SubCategoryCode, FiscalYear)
REFERENCES idoe.SubCategoryDimension (Code, FiscalYear)
;

CREATE INDEX FK_fe1da7_SubCategoryDimension
ON idoe.LocalAccountExtension (SubCategoryCode ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalCapitalizedEquipment ADD CONSTRAINT FK_9e1092_FinancialCollectionDescriptor FOREIGN KEY (FinancialCollectionDescriptorId)
REFERENCES edfi.FinancialCollectionDescriptor (FinancialCollectionDescriptorId)
;

CREATE INDEX FK_9e1092_FinancialCollectionDescriptor
ON idoe.LocalCapitalizedEquipment (FinancialCollectionDescriptorId ASC);

ALTER TABLE idoe.LocalCapitalizedEquipment ADD CONSTRAINT FK_9e1092_LocalAccount FOREIGN KEY (AccountIdentifier, EducationOrganizationId, FiscalYear)
REFERENCES edfi.LocalAccount (AccountIdentifier, EducationOrganizationId, FiscalYear)
;

CREATE INDEX FK_9e1092_LocalAccount
ON idoe.LocalCapitalizedEquipment (AccountIdentifier ASC, EducationOrganizationId ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalSubaward ADD CONSTRAINT FK_d0840e_FinancialCollectionDescriptor FOREIGN KEY (FinancialCollectionDescriptorId)
REFERENCES edfi.FinancialCollectionDescriptor (FinancialCollectionDescriptorId)
;

CREATE INDEX FK_d0840e_FinancialCollectionDescriptor
ON idoe.LocalSubaward (FinancialCollectionDescriptorId ASC);

ALTER TABLE idoe.LocalSubaward ADD CONSTRAINT FK_d0840e_LocalAccount FOREIGN KEY (AccountIdentifier, EducationOrganizationId, FiscalYear)
REFERENCES edfi.LocalAccount (AccountIdentifier, EducationOrganizationId, FiscalYear)
;

CREATE INDEX FK_d0840e_LocalAccount
ON idoe.LocalSubaward (AccountIdentifier ASC, EducationOrganizationId ASC, FiscalYear ASC);

ALTER TABLE idoe.LocalUnusedLeavePayment ADD CONSTRAINT FK_6b84b4_FinancialCollectionDescriptor FOREIGN KEY (FinancialCollectionDescriptorId)
REFERENCES edfi.FinancialCollectionDescriptor (FinancialCollectionDescriptorId)
;

CREATE INDEX FK_6b84b4_FinancialCollectionDescriptor
ON idoe.LocalUnusedLeavePayment (FinancialCollectionDescriptorId ASC);

ALTER TABLE idoe.LocalUnusedLeavePayment ADD CONSTRAINT FK_6b84b4_LocalAccount FOREIGN KEY (AccountIdentifier, EducationOrganizationId, FiscalYear)
REFERENCES edfi.LocalAccount (AccountIdentifier, EducationOrganizationId, FiscalYear)
;

CREATE INDEX FK_6b84b4_LocalAccount
ON idoe.LocalUnusedLeavePayment (AccountIdentifier ASC, EducationOrganizationId ASC, FiscalYear ASC);

ALTER TABLE idoe.OtherPersonnelCategoryDescriptor ADD CONSTRAINT FK_4fcdf9_Descriptor FOREIGN KEY (OtherPersonnelCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.OtherPersonnelTitleDescriptor ADD CONSTRAINT FK_83a21c_Descriptor FOREIGN KEY (OtherPersonnelTitleDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.ProgramMeetingTimeDescriptor ADD CONSTRAINT FK_d575a9_Descriptor FOREIGN KEY (ProgramMeetingTimeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.SchoolExtension ADD CONSTRAINT FK_2199be_AccreditationDescriptor FOREIGN KEY (AccreditationDescriptorId)
REFERENCES idoe.AccreditationDescriptor (AccreditationDescriptorId)
;

CREATE INDEX FK_2199be_AccreditationDescriptor
ON idoe.SchoolExtension (AccreditationDescriptorId ASC);

ALTER TABLE idoe.SchoolExtension ADD CONSTRAINT FK_2199be_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

ALTER TABLE idoe.StaffEducationOrganizationEmploymentAssociationContract ADD CONSTRAINT FK_6fda44_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentAccommodation ADD CONSTRAINT FK_b3c25a_AssessmentAccommodation FOREIGN KEY (AccommodationDescriptorId, AssessmentIdentifier, Namespace)
REFERENCES idoe.AssessmentAccommodation (AccommodationDescriptorId, AssessmentIdentifier, Namespace)
;

CREATE INDEX FK_b3c25a_AssessmentAccommodation
ON idoe.StudentAccommodation (AccommodationDescriptorId ASC, AssessmentIdentifier ASC, Namespace ASC);

ALTER TABLE idoe.StudentAccommodation ADD CONSTRAINT FK_b3c25a_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE idoe.StudentAccommodation ADD CONSTRAINT FK_b3c25a_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE idoe.StudentAlternativeEducationProgramAssociation ADD CONSTRAINT FK_62b8bf_AlternativeEducationEligibilityReasonDescriptor FOREIGN KEY (AlternativeEducationEligibilityReasonDescriptorId)
REFERENCES idoe.AlternativeEducationEligibilityReasonDescriptor (AlternativeEducationEligibilityReasonDescriptorId)
;

CREATE INDEX FK_62b8bf_AlternativeEducationEligibilityReasonDescriptor
ON idoe.StudentAlternativeEducationProgramAssociation (AlternativeEducationEligibilityReasonDescriptorId ASC);

ALTER TABLE idoe.StudentAlternativeEducationProgramAssociation ADD CONSTRAINT FK_62b8bf_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime ADD CONSTRAINT FK_b1f2b7_ProgramMeetingTimeDescriptor FOREIGN KEY (ProgramMeetingTimeDescriptorId)
REFERENCES idoe.ProgramMeetingTimeDescriptor (ProgramMeetingTimeDescriptorId)
;

CREATE INDEX FK_b1f2b7_ProgramMeetingTimeDescriptor
ON idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime (ProgramMeetingTimeDescriptorId ASC);

ALTER TABLE idoe.StudentAlternativeEducationProgramAssociationProgramMeetingTime ADD CONSTRAINT FK_b1f2b7_StudentAlternativeEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES idoe.StudentAlternativeEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentArrestDescriptor ADD CONSTRAINT FK_b6caae_Descriptor FOREIGN KEY (StudentArrestDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentContactAssociationExtension ADD CONSTRAINT FK_c098c4_StudentContactAssociation FOREIGN KEY (ContactUSI, StudentUSI)
REFERENCES edfi.StudentContactAssociation (ContactUSI, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension ADD CONSTRAINT FK_720b00_CriminalGangRelatedEventDescriptor FOREIGN KEY (CriminalGangRelatedEventDescriptorId)
REFERENCES idoe.CriminalGangRelatedEventDescriptor (CriminalGangRelatedEventDescriptorId)
;

CREATE INDEX FK_720b00_CriminalGangRelatedEventDescriptor
ON idoe.StudentDisciplineIncidentBehaviorAssociationExtension (CriminalGangRelatedEventDescriptorId ASC);

ALTER TABLE idoe.StudentDisciplineIncidentBehaviorAssociationExtension ADD CONSTRAINT FK_720b00_StudentDisciplineIncidentBehaviorAssociation FOREIGN KEY (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
REFERENCES edfi.StudentDisciplineIncidentBehaviorAssociation (BehaviorDescriptorId, IncidentIdentifier, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_ELLInstrumentUsedDescriptor FOREIGN KEY (ELLInstrumentUsedDescriptorId)
REFERENCES idoe.ELLInstrumentUsedDescriptor (ELLInstrumentUsedDescriptorId)
;

CREATE INDEX FK_2c2930_ELLInstrumentUsedDescriptor
ON idoe.StudentEducationOrganizationAssociationExtension (ELLInstrumentUsedDescriptorId ASC);

ALTER TABLE idoe.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc ADD CONSTRAINT FK_6c4efc_EducationOrganization FOREIGN KEY (SchoolCorpEducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

CREATE INDEX FK_6c4efc_EducationOrganization
ON idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc (SchoolCorpEducationOrganizationId ASC);

ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc ADD CONSTRAINT FK_6c4efc_ResponsibilityDescriptor FOREIGN KEY (SchoolCorpResponsibilityDescriptorId)
REFERENCES edfi.ResponsibilityDescriptor (ResponsibilityDescriptorId)
;

CREATE INDEX FK_6c4efc_ResponsibilityDescriptor
ON idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc (SchoolCorpResponsibilityDescriptorId ASC);

ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationAdd_6c4efc ADD CONSTRAINT FK_6c4efc_StudentEducationOrganizationResponsibilityAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationResponsibilityAssociation (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension ADD CONSTRAINT FK_5a80ec_ADMCodeDescriptor FOREIGN KEY (ADMCodeDescriptorId)
REFERENCES idoe.ADMCodeDescriptor (ADMCodeDescriptorId)
;

CREATE INDEX FK_5a80ec_ADMCodeDescriptor
ON idoe.StudentEducationOrganizationResponsibilityAssociationExtension (ADMCodeDescriptorId ASC);

ALTER TABLE idoe.StudentEducationOrganizationResponsibilityAssociationExtension ADD CONSTRAINT FK_5a80ec_StudentEducationOrganizationResponsibilityAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationResponsibilityAssociation (BeginDate, EducationOrganizationId, ResponsibilityDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentSchoolGraduationPlan ADD CONSTRAINT FK_81cc19_GraduationPlan FOREIGN KEY (EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear)
REFERENCES edfi.GraduationPlan (EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear)
;

CREATE INDEX FK_81cc19_GraduationPlan
ON idoe.StudentSchoolGraduationPlan (EducationOrganizationId ASC, GraduationPlanTypeDescriptorId ASC, GraduationSchoolYear ASC);

ALTER TABLE idoe.StudentSchoolGraduationPlan ADD CONSTRAINT FK_81cc19_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
;

ALTER TABLE idoe.StudentSchoolGraduationPlan ADD CONSTRAINT FK_81cc19_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan ADD CONSTRAINT FK_d22c45_GraduationPlan FOREIGN KEY (AlternativeEducationOrganizationId, AlternativeGraduationPlanTypeDescriptorId, AlternativeGraduationSchoolYear)
REFERENCES edfi.GraduationPlan (EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear)
;

CREATE INDEX FK_d22c45_GraduationPlan
ON idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan (AlternativeEducationOrganizationId ASC, AlternativeGraduationPlanTypeDescriptorId ASC, AlternativeGraduationSchoolYear ASC);

ALTER TABLE idoe.StudentSchoolGraduationPlanAlternativeGraduationPlan ADD CONSTRAINT FK_d22c45_StudentSchoolGraduationPlan FOREIGN KEY (BeginDate, EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear, SchoolId, StudentUSI)
REFERENCES idoe.StudentSchoolGraduationPlan (BeginDate, EducationOrganizationId, GraduationPlanTypeDescriptorId, GraduationSchoolYear, SchoolId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_CircumstancesRelevantToTimelineDescriptor FOREIGN KEY (CircumstancesRelevantToTimelineDescriptorId)
REFERENCES idoe.CircumstancesRelevantToTimelineDescriptor (CircumstancesRelevantToTimelineDescriptorId)
;

CREATE INDEX FK_3da84f_CircumstancesRelevantToTimelineDescriptor
ON idoe.StudentSpecialEducationProgramAssociationExtension (CircumstancesRelevantToTimelineDescriptorId ASC);

ALTER TABLE idoe.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_StudentSpecialEducationProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSpecialEducationProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE idoe.StudentSpecialEducationProgramAssociationExtension ADD CONSTRAINT FK_3da84f_TimelineComplianceDescriptor FOREIGN KEY (TimelineComplianceDescriptorId)
REFERENCES idoe.TimelineComplianceDescriptor (TimelineComplianceDescriptorId)
;

CREATE INDEX FK_3da84f_TimelineComplianceDescriptor
ON idoe.StudentSpecialEducationProgramAssociationExtension (TimelineComplianceDescriptorId ASC);

ALTER TABLE idoe.TimelineComplianceDescriptor ADD CONSTRAINT FK_8b790e_Descriptor FOREIGN KEY (TimelineComplianceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

