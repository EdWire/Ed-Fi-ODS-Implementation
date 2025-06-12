ALTER TABLE [idoe].[AccreditationDescriptor] WITH CHECK ADD CONSTRAINT [FK_AccreditationDescriptor_Descriptor] FOREIGN KEY ([AccreditationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[ADMCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ADMCodeDescriptor_Descriptor] FOREIGN KEY ([ADMCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[AlternativeEducationEligibilityReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_AlternativeEducationEligibilityReasonDescriptor_Descriptor] FOREIGN KEY ([AlternativeEducationEligibilityReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[ArrestReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_ArrestReasonDescriptor_Descriptor] FOREIGN KEY ([ArrestReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[AssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_AssessmentAccommodation_AccommodationDescriptor] FOREIGN KEY ([AccommodationDescriptorId])
REFERENCES [edfi].[AccommodationDescriptor] ([AccommodationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAccommodation_AccommodationDescriptor]
ON [idoe].[AssessmentAccommodation] ([AccommodationDescriptorId] ASC)
GO

ALTER TABLE [idoe].[AssessmentAccommodation] WITH CHECK ADD CONSTRAINT [FK_AssessmentAccommodation_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace])
REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentAccommodation_Assessment]
ON [idoe].[AssessmentAccommodation] ([AssessmentIdentifier] ASC, [Namespace] ASC)
GO

ALTER TABLE [idoe].[CalendarDateExtension] WITH CHECK ADD CONSTRAINT [FK_CalendarDateExtension_CalendarDate] FOREIGN KEY ([CalendarCode], [Date], [SchoolId], [SchoolYear])
REFERENCES [edfi].[CalendarDate] ([CalendarCode], [Date], [SchoolId], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[CalendarExtension] WITH CHECK ADD CONSTRAINT [FK_CalendarExtension_Calendar] FOREIGN KEY ([CalendarCode], [SchoolId], [SchoolYear])
REFERENCES [edfi].[Calendar] ([CalendarCode], [SchoolId], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[CircumstancesRelevantToTimelineDescriptor] WITH CHECK ADD CONSTRAINT [FK_CircumstancesRelevantToTimelineDescriptor_Descriptor] FOREIGN KEY ([CircumstancesRelevantToTimelineDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[CriminalGangRelatedEventDescriptor] WITH CHECK ADD CONSTRAINT [FK_CriminalGangRelatedEventDescriptor_Descriptor] FOREIGN KEY ([CriminalGangRelatedEventDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_ArrestReasonDescriptor] FOREIGN KEY ([ArrestReasonDescriptorId])
REFERENCES [idoe].[ArrestReasonDescriptor] ([ArrestReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_ArrestReasonDescriptor]
ON [idoe].[DisciplineActionExtension] ([ArrestReasonDescriptorId] ASC)
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineActionServiceDescriptor] FOREIGN KEY ([DisciplineActionServiceDescriptorId])
REFERENCES [idoe].[DisciplineActionServiceDescriptor] ([DisciplineActionServiceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_DisciplineActionServiceDescriptor]
ON [idoe].[DisciplineActionExtension] ([DisciplineActionServiceDescriptorId] ASC)
GO

ALTER TABLE [idoe].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_StudentArrestDescriptor] FOREIGN KEY ([StudentArrestDescriptorId])
REFERENCES [idoe].[StudentArrestDescriptor] ([StudentArrestDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_DisciplineActionExtension_StudentArrestDescriptor]
ON [idoe].[DisciplineActionExtension] ([StudentArrestDescriptorId] ASC)
GO

ALTER TABLE [idoe].[DisciplineActionServiceDescriptor] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionServiceDescriptor_Descriptor] FOREIGN KEY ([DisciplineActionServiceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationOtherPersonnel_LocalEducationAgency] FOREIGN KEY ([LocalEducationAgencyId])
REFERENCES [edfi].[LocalEducationAgency] ([LocalEducationAgencyId])
GO

ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationOtherPersonnel_OtherPersonnelCategoryDescriptor] FOREIGN KEY ([OtherPersonnelCategoryDescriptorId])
REFERENCES [idoe].[OtherPersonnelCategoryDescriptor] ([OtherPersonnelCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationOtherPersonnel_OtherPersonnelCategoryDescriptor]
ON [idoe].[EducationOrganizationOtherPersonnel] ([OtherPersonnelCategoryDescriptorId] ASC)
GO

ALTER TABLE [idoe].[EducationOrganizationOtherPersonnel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationOtherPersonnel_OtherPersonnelTitleDescriptor] FOREIGN KEY ([OtherPersonnelTitleDescriptorId])
REFERENCES [idoe].[OtherPersonnelTitleDescriptor] ([OtherPersonnelTitleDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationOtherPersonnel_OtherPersonnelTitleDescriptor]
ON [idoe].[EducationOrganizationOtherPersonnel] ([OtherPersonnelTitleDescriptorId] ASC)
GO

ALTER TABLE [idoe].[ELLInstrumentUsedDescriptor] WITH CHECK ADD CONSTRAINT [FK_ELLInstrumentUsedDescriptor_Descriptor] FOREIGN KEY ([ELLInstrumentUsedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[LocalAccountExtension] WITH CHECK ADD CONSTRAINT [FK_LocalAccountExtension_FunctionDimension] FOREIGN KEY ([FunctionCode], [FiscalYear])
REFERENCES [edfi].[FunctionDimension] ([Code], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalAccountExtension_FunctionDimension]
ON [idoe].[LocalAccountExtension] ([FunctionCode] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalAccountExtension] WITH CHECK ADD CONSTRAINT [FK_LocalAccountExtension_FundDimension] FOREIGN KEY ([FundCode], [FiscalYear])
REFERENCES [edfi].[FundDimension] ([Code], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalAccountExtension_FundDimension]
ON [idoe].[LocalAccountExtension] ([FundCode] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalAccountExtension] WITH CHECK ADD CONSTRAINT [FK_LocalAccountExtension_LocalAccount] FOREIGN KEY ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
REFERENCES [edfi].[LocalAccount] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[LocalAccountExtension] WITH CHECK ADD CONSTRAINT [FK_LocalAccountExtension_ObjectDimension] FOREIGN KEY ([ObjectCode], [FiscalYear])
REFERENCES [edfi].[ObjectDimension] ([Code], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalAccountExtension_ObjectDimension]
ON [idoe].[LocalAccountExtension] ([ObjectCode] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalAccountExtension] WITH CHECK ADD CONSTRAINT [FK_LocalAccountExtension_OperationalUnitDimension] FOREIGN KEY ([OperationalUnitCode], [FiscalYear])
REFERENCES [edfi].[OperationalUnitDimension] ([Code], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalAccountExtension_OperationalUnitDimension]
ON [idoe].[LocalAccountExtension] ([OperationalUnitCode] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalAccountExtension] WITH CHECK ADD CONSTRAINT [FK_LocalAccountExtension_SectionDimension] FOREIGN KEY ([SectionCode], [FiscalYear])
REFERENCES [idoe].[SectionDimension] ([Code], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalAccountExtension_SectionDimension]
ON [idoe].[LocalAccountExtension] ([SectionCode] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalAccountExtension] WITH CHECK ADD CONSTRAINT [FK_LocalAccountExtension_SubCategoryDimension] FOREIGN KEY ([SubCategoryCode], [FiscalYear])
REFERENCES [idoe].[SubCategoryDimension] ([Code], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalAccountExtension_SubCategoryDimension]
ON [idoe].[LocalAccountExtension] ([SubCategoryCode] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalCapitalizedEquipment] WITH CHECK ADD CONSTRAINT [FK_LocalCapitalizedEquipment_FinancialCollectionDescriptor] FOREIGN KEY ([FinancialCollectionDescriptorId])
REFERENCES [edfi].[FinancialCollectionDescriptor] ([FinancialCollectionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalCapitalizedEquipment_FinancialCollectionDescriptor]
ON [idoe].[LocalCapitalizedEquipment] ([FinancialCollectionDescriptorId] ASC)
GO

ALTER TABLE [idoe].[LocalCapitalizedEquipment] WITH CHECK ADD CONSTRAINT [FK_LocalCapitalizedEquipment_LocalAccount] FOREIGN KEY ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
REFERENCES [edfi].[LocalAccount] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalCapitalizedEquipment_LocalAccount]
ON [idoe].[LocalCapitalizedEquipment] ([AccountIdentifier] ASC, [EducationOrganizationId] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalSubaward] WITH CHECK ADD CONSTRAINT [FK_LocalSubaward_FinancialCollectionDescriptor] FOREIGN KEY ([FinancialCollectionDescriptorId])
REFERENCES [edfi].[FinancialCollectionDescriptor] ([FinancialCollectionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalSubaward_FinancialCollectionDescriptor]
ON [idoe].[LocalSubaward] ([FinancialCollectionDescriptorId] ASC)
GO

ALTER TABLE [idoe].[LocalSubaward] WITH CHECK ADD CONSTRAINT [FK_LocalSubaward_LocalAccount] FOREIGN KEY ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
REFERENCES [edfi].[LocalAccount] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalSubaward_LocalAccount]
ON [idoe].[LocalSubaward] ([AccountIdentifier] ASC, [EducationOrganizationId] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[LocalUnusedLeavePayment] WITH CHECK ADD CONSTRAINT [FK_LocalUnusedLeavePayment_FinancialCollectionDescriptor] FOREIGN KEY ([FinancialCollectionDescriptorId])
REFERENCES [edfi].[FinancialCollectionDescriptor] ([FinancialCollectionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_LocalUnusedLeavePayment_FinancialCollectionDescriptor]
ON [idoe].[LocalUnusedLeavePayment] ([FinancialCollectionDescriptorId] ASC)
GO

ALTER TABLE [idoe].[LocalUnusedLeavePayment] WITH CHECK ADD CONSTRAINT [FK_LocalUnusedLeavePayment_LocalAccount] FOREIGN KEY ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
REFERENCES [edfi].[LocalAccount] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
GO

CREATE NONCLUSTERED INDEX [FK_LocalUnusedLeavePayment_LocalAccount]
ON [idoe].[LocalUnusedLeavePayment] ([AccountIdentifier] ASC, [EducationOrganizationId] ASC, [FiscalYear] ASC)
GO

ALTER TABLE [idoe].[OtherPersonnelCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_OtherPersonnelCategoryDescriptor_Descriptor] FOREIGN KEY ([OtherPersonnelCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[OtherPersonnelTitleDescriptor] WITH CHECK ADD CONSTRAINT [FK_OtherPersonnelTitleDescriptor_Descriptor] FOREIGN KEY ([OtherPersonnelTitleDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[ProgramMeetingTimeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramMeetingTimeDescriptor_Descriptor] FOREIGN KEY ([ProgramMeetingTimeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_AccreditationDescriptor] FOREIGN KEY ([AccreditationDescriptorId])
REFERENCES [idoe].[AccreditationDescriptor] ([AccreditationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolExtension_AccreditationDescriptor]
ON [idoe].[SchoolExtension] ([AccreditationDescriptorId] ASC)
GO

ALTER TABLE [idoe].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationContract] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationContract_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentAccommodation_AssessmentAccommodation] FOREIGN KEY ([AccommodationDescriptorId], [AssessmentIdentifier], [Namespace])
REFERENCES [idoe].[AssessmentAccommodation] ([AccommodationDescriptorId], [AssessmentIdentifier], [Namespace])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAccommodation_AssessmentAccommodation]
ON [idoe].[StudentAccommodation] ([AccommodationDescriptorId] ASC, [AssessmentIdentifier] ASC, [Namespace] ASC)
GO

ALTER TABLE [idoe].[StudentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentAccommodation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [idoe].[StudentAccommodation] WITH CHECK ADD CONSTRAINT [FK_StudentAccommodation_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociation_AlternativeEducationEligibilityReasonDescriptor] FOREIGN KEY ([AlternativeEducationEligibilityReasonDescriptorId])
REFERENCES [idoe].[AlternativeEducationEligibilityReasonDescriptor] ([AlternativeEducationEligibilityReasonDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAlternativeEducationProgramAssociation_AlternativeEducationEligibilityReasonDescriptor]
ON [idoe].[StudentAlternativeEducationProgramAssociation] ([AlternativeEducationEligibilityReasonDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociationProgramMeetingTime_ProgramMeetingTimeDescriptor] FOREIGN KEY ([ProgramMeetingTimeDescriptorId])
REFERENCES [idoe].[ProgramMeetingTimeDescriptor] ([ProgramMeetingTimeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAlternativeEducationProgramAssociationProgramMeetingTime_ProgramMeetingTimeDescriptor]
ON [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] ([ProgramMeetingTimeDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentAlternativeEducationProgramAssociationProgramMeetingTime] WITH CHECK ADD CONSTRAINT [FK_StudentAlternativeEducationProgramAssociationProgramMeetingTime_StudentAlternativeEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [idoe].[StudentAlternativeEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentArrestDescriptor] WITH CHECK ADD CONSTRAINT [FK_StudentArrestDescriptor_Descriptor] FOREIGN KEY ([StudentArrestDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentContactAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentContactAssociationExtension_StudentContactAssociation] FOREIGN KEY ([ContactUSI], [StudentUSI])
REFERENCES [edfi].[StudentContactAssociation] ([ContactUSI], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationExtension_CriminalGangRelatedEventDescriptor] FOREIGN KEY ([CriminalGangRelatedEventDescriptorId])
REFERENCES [idoe].[CriminalGangRelatedEventDescriptor] ([CriminalGangRelatedEventDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentDisciplineIncidentBehaviorAssociationExtension_CriminalGangRelatedEventDescriptor]
ON [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] ([CriminalGangRelatedEventDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentDisciplineIncidentBehaviorAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentDisciplineIncidentBehaviorAssociationExtension_StudentDisciplineIncidentBehaviorAssociation] FOREIGN KEY ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentDisciplineIncidentBehaviorAssociation] ([BehaviorDescriptorId], [IncidentIdentifier], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_ELLInstrumentUsedDescriptor] FOREIGN KEY ([ELLInstrumentUsedDescriptorId])
REFERENCES [idoe].[ELLInstrumentUsedDescriptor] ([ELLInstrumentUsedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_ELLInstrumentUsedDescriptor]
ON [idoe].[StudentEducationOrganizationAssociationExtension] ([ELLInstrumentUsedDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_EducationOrganization] FOREIGN KEY ([SchoolCorpEducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_EducationOrganization]
ON [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] ([SchoolCorpEducationOrganizationId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_ResponsibilityDescriptor] FOREIGN KEY ([SchoolCorpResponsibilityDescriptorId])
REFERENCES [edfi].[ResponsibilityDescriptor] ([ResponsibilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_ResponsibilityDescriptor]
ON [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] ([SchoolCorpResponsibilityDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationAdditionalEdOrgResponsibility_StudentEducationOrganizationResponsibility] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationExtension_ADMCodeDescriptor] FOREIGN KEY ([ADMCodeDescriptorId])
REFERENCES [idoe].[ADMCodeDescriptor] ([ADMCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationResponsibilityAssociationExtension_ADMCodeDescriptor]
ON [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] ([ADMCodeDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentEducationOrganizationResponsibilityAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationResponsibilityAssociationExtension_StudentEducationOrganizationResponsibilityAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationResponsibilityAssociation] ([BeginDate], [EducationOrganizationId], [ResponsibilityDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentSchoolGraduationPlan] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolGraduationPlan_GraduationPlan] FOREIGN KEY ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
REFERENCES [edfi].[GraduationPlan] ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolGraduationPlan_GraduationPlan]
ON [idoe].[StudentSchoolGraduationPlan] ([EducationOrganizationId] ASC, [GraduationPlanTypeDescriptorId] ASC, [GraduationSchoolYear] ASC)
GO

ALTER TABLE [idoe].[StudentSchoolGraduationPlan] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolGraduationPlan_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

ALTER TABLE [idoe].[StudentSchoolGraduationPlan] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolGraduationPlan_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolGraduationPlanAlternativeGraduationPlan_GraduationPlan] FOREIGN KEY ([AlternativeEducationOrganizationId], [AlternativeGraduationPlanTypeDescriptorId], [AlternativeGraduationSchoolYear])
REFERENCES [edfi].[GraduationPlan] ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolGraduationPlanAlternativeGraduationPlan_GraduationPlan]
ON [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] ([AlternativeEducationOrganizationId] ASC, [AlternativeGraduationPlanTypeDescriptorId] ASC, [AlternativeGraduationSchoolYear] ASC)
GO

ALTER TABLE [idoe].[StudentSchoolGraduationPlanAlternativeGraduationPlan] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolGraduationPlanAlternativeGraduationPlan_StudentSchoolGraduationPlan] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [SchoolId], [StudentUSI])
REFERENCES [idoe].[StudentSchoolGraduationPlan] ([BeginDate], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [SchoolId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_CircumstancesRelevantToTimelineDescriptor] FOREIGN KEY ([CircumstancesRelevantToTimelineDescriptorId])
REFERENCES [idoe].[CircumstancesRelevantToTimelineDescriptor] ([CircumstancesRelevantToTimelineDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_CircumstancesRelevantToTimelineDescriptor]
ON [idoe].[StudentSpecialEducationProgramAssociationExtension] ([CircumstancesRelevantToTimelineDescriptorId] ASC)
GO

ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [idoe].[StudentSpecialEducationProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationExtension_TimelineComplianceDescriptor] FOREIGN KEY ([TimelineComplianceDescriptorId])
REFERENCES [idoe].[TimelineComplianceDescriptor] ([TimelineComplianceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationExtension_TimelineComplianceDescriptor]
ON [idoe].[StudentSpecialEducationProgramAssociationExtension] ([TimelineComplianceDescriptorId] ASC)
GO

ALTER TABLE [idoe].[TimelineComplianceDescriptor] WITH CHECK ADD CONSTRAINT [FK_TimelineComplianceDescriptor_Descriptor] FOREIGN KEY ([TimelineComplianceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

