ALTER TABLE [ks].[AssessmentRequestDescriptor] WITH CHECK ADD CONSTRAINT [FK_AssessmentRequestDescriptor_Descriptor] FOREIGN KEY ([AssessmentRequestDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[CollegeCareerTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CollegeCareerTypeDescriptor_Descriptor] FOREIGN KEY ([CollegeCareerTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[CourseDeliveryTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CourseDeliveryTypeDescriptor_Descriptor] FOREIGN KEY ([CourseDeliveryTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[CourseOfferingExtension] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingExtension_CollegeCareerTypeDescriptor] FOREIGN KEY ([CollegeCareerTypeDescriptorId])
REFERENCES [ks].[CollegeCareerTypeDescriptor] ([CollegeCareerTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseOfferingExtension_CollegeCareerTypeDescriptor]
ON [ks].[CourseOfferingExtension] ([CollegeCareerTypeDescriptorId] ASC)
GO

ALTER TABLE [ks].[CourseOfferingExtension] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingExtension_CourseDeliveryTypeDescriptor] FOREIGN KEY ([CourseDeliveryTypeDescriptorId])
REFERENCES [ks].[CourseDeliveryTypeDescriptor] ([CourseDeliveryTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseOfferingExtension_CourseDeliveryTypeDescriptor]
ON [ks].[CourseOfferingExtension] ([CourseDeliveryTypeDescriptorId] ASC)
GO

ALTER TABLE [ks].[CourseOfferingExtension] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingExtension_CourseOffering] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
REFERENCES [edfi].[CourseOffering] ([LocalCourseCode], [SchoolId], [SchoolYear], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [ks].[CourseOfferingExtension] WITH CHECK ADD CONSTRAINT [FK_CourseOfferingExtension_CourseProgramTypeDescriptor] FOREIGN KEY ([CourseProgramTypeDescriptorId])
REFERENCES [ks].[CourseProgramTypeDescriptor] ([CourseProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseOfferingExtension_CourseProgramTypeDescriptor]
ON [ks].[CourseOfferingExtension] ([CourseProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [ks].[CourseProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CourseProgramTypeDescriptor_Descriptor] FOREIGN KEY ([CourseProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[CourseStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_CourseStatusDescriptor_Descriptor] FOREIGN KEY ([CourseStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[CTECertificationEarnedDescriptor] WITH CHECK ADD CONSTRAINT [FK_CTECertificationEarnedDescriptor_Descriptor] FOREIGN KEY ([CTECertificationEarnedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[FundingSourceDescriptor] WITH CHECK ADD CONSTRAINT [FK_FundingSourceDescriptor_Descriptor] FOREIGN KEY ([FundingSourceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[GradeExtension] WITH CHECK ADD CONSTRAINT [FK_GradeExtension_Grade] FOREIGN KEY ([BeginDate], [GradeTypeDescriptorId], [GradingPeriodDescriptorId], [GradingPeriodSequence], [GradingPeriodSchoolYear], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
REFERENCES [edfi].[Grade] ([BeginDate], [GradeTypeDescriptorId], [GradingPeriodDescriptorId], [GradingPeriodSequence], [GradingPeriodSchoolYear], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [ks].[GradeExtension] WITH CHECK ADD CONSTRAINT [FK_GradeExtension_WorkBasedLearningDescriptor] FOREIGN KEY ([WorkBasedLearningDescriptorId])
REFERENCES [ks].[WorkBasedLearningDescriptor] ([WorkBasedLearningDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_GradeExtension_WorkBasedLearningDescriptor]
ON [ks].[GradeExtension] ([WorkBasedLearningDescriptorId] ASC)
GO

ALTER TABLE [ks].[ImmigrantStudentDescriptor] WITH CHECK ADD CONSTRAINT [FK_ImmigrantStudentDescriptor_Descriptor] FOREIGN KEY ([ImmigrantStudentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[LanguageInstructionProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_LanguageInstructionProgramTypeDescriptor_Descriptor] FOREIGN KEY ([LanguageInstructionProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[MilitaryConnectedStudentDescriptor] WITH CHECK ADD CONSTRAINT [FK_MilitaryConnectedStudentDescriptor_Descriptor] FOREIGN KEY ([MilitaryConnectedStudentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[NeglectedDelinquentStudentDescriptor] WITH CHECK ADD CONSTRAINT [FK_NeglectedDelinquentStudentDescriptor_Descriptor] FOREIGN KEY ([NeglectedDelinquentStudentDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[PostGraduationPlansDescriptor] WITH CHECK ADD CONSTRAINT [FK_PostGraduationPlansDescriptor_Descriptor] FOREIGN KEY ([PostGraduationPlansDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[QualifiedFor504Descriptor] WITH CHECK ADD CONSTRAINT [FK_QualifiedFor504Descriptor_Descriptor] FOREIGN KEY ([QualifiedFor504DescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[SectionEducator] WITH CHECK ADD CONSTRAINT [FK_SectionEducator_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionEducator_Section]
ON [ks].[SectionEducator] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [ks].[StudentAssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentExtension_AssessmentRequestDescriptor] FOREIGN KEY ([AssessmentRequestDescriptorId])
REFERENCES [ks].[AssessmentRequestDescriptor] ([AssessmentRequestDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAssessmentExtension_AssessmentRequestDescriptor]
ON [ks].[StudentAssessmentExtension] ([AssessmentRequestDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentAssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentExtension_Staff] FOREIGN KEY ([ProctorStaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentAssessmentExtension_Staff]
ON [ks].[StudentAssessmentExtension] ([ProctorStaffUSI] ASC)
GO

ALTER TABLE [ks].[StudentAssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_StudentAssessmentExtension_StudentAssessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
REFERENCES [edfi].[StudentAssessment] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationCTE] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCTE_CTECertificationEarnedDescriptor] FOREIGN KEY ([CTECertificationEarnedDescriptorId])
REFERENCES [ks].[CTECertificationEarnedDescriptor] ([CTECertificationEarnedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCTE_CTECertificationEarnedDescriptor]
ON [ks].[StudentEducationOrganizationAssociationCTE] ([CTECertificationEarnedDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationCTE] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCTE_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationCTE] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationCTE_TermDescriptor] FOREIGN KEY ([CertificationTermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationCTE_TermDescriptor]
ON [ks].[StudentEducationOrganizationAssociationCTE] ([CertificationTermDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_ImmigrantStudentDescriptor] FOREIGN KEY ([ImmigrantStudentDescriptorId])
REFERENCES [ks].[ImmigrantStudentDescriptor] ([ImmigrantStudentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_ImmigrantStudentDescriptor]
ON [ks].[StudentEducationOrganizationAssociationExtension] ([ImmigrantStudentDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_MilitaryConnectedStudentDescriptor] FOREIGN KEY ([MilitaryConnectedStudentDescriptorId])
REFERENCES [ks].[MilitaryConnectedStudentDescriptor] ([MilitaryConnectedStudentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_MilitaryConnectedStudentDescriptor]
ON [ks].[StudentEducationOrganizationAssociationExtension] ([MilitaryConnectedStudentDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_NeglectedDelinquentStudentDescriptor] FOREIGN KEY ([NeglectedDelinquentStudentDescriptorId])
REFERENCES [ks].[NeglectedDelinquentStudentDescriptor] ([NeglectedDelinquentStudentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationExtension_NeglectedDelinquentStudentDescriptor]
ON [ks].[StudentEducationOrganizationAssociationExtension] ([NeglectedDelinquentStudentDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationExtension_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[StudentEducationOrganizationAssociationTransportation] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationTransportation_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI])
REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[StudentKPATProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentKPATProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[StudentKPPProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StudentKPPProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[StudentLanguageInstructionProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationExtension_FundingSourceDescriptor] FOREIGN KEY ([FundingSourceDescriptorId])
REFERENCES [ks].[FundingSourceDescriptor] ([FundingSourceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentLanguageInstructionProgramAssociationExtension_FundingSourceDescriptor]
ON [ks].[StudentLanguageInstructionProgramAssociationExtension] ([FundingSourceDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentLanguageInstructionProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationExtension_LanguageInstructionProgramTypeDescriptor] FOREIGN KEY ([LanguageInstructionProgramTypeDescriptorId])
REFERENCES [ks].[LanguageInstructionProgramTypeDescriptor] ([LanguageInstructionProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentLanguageInstructionProgramAssociationExtension_LanguageInstructionProgramTypeDescriptor]
ON [ks].[StudentLanguageInstructionProgramAssociationExtension] ([LanguageInstructionProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentLanguageInstructionProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationExtension_StudentLanguageInstructionProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentLanguageInstructionProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [ks].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_PostGraduationPlansDescriptor] FOREIGN KEY ([PostGraduationPlansDescriptorId])
REFERENCES [ks].[PostGraduationPlansDescriptor] ([PostGraduationPlansDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationExtension_PostGraduationPlansDescriptor]
ON [ks].[StudentSchoolAssociationExtension] ([PostGraduationPlansDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_QualifiedFor504Descriptor] FOREIGN KEY ([QualifiedFor504DescriptorId])
REFERENCES [ks].[QualifiedFor504Descriptor] ([QualifiedFor504DescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolAssociationExtension_QualifiedFor504Descriptor]
ON [ks].[StudentSchoolAssociationExtension] ([QualifiedFor504DescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentSchoolAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolAssociationExtension_StudentSchoolAssociation] FOREIGN KEY ([EntryDate], [SchoolId], [StudentUSI])
REFERENCES [edfi].[StudentSchoolAssociation] ([EntryDate], [SchoolId], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [ks].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_CourseStatusDescriptor] FOREIGN KEY ([CourseStatusDescriptorId])
REFERENCES [ks].[CourseStatusDescriptor] ([CourseStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_CourseStatusDescriptor]
ON [ks].[StudentSectionAssociationExtension] ([CourseStatusDescriptorId] ASC)
GO

ALTER TABLE [ks].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [ks].[WorkBasedLearningDescriptor] WITH CHECK ADD CONSTRAINT [FK_WorkBasedLearningDescriptor_Descriptor] FOREIGN KEY ([WorkBasedLearningDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

