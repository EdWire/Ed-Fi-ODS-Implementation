ALTER TABLE ks.AssessmentRequestDescriptor ADD CONSTRAINT FK_fcff94_Descriptor FOREIGN KEY (AssessmentRequestDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.CollegeCareerTypeDescriptor ADD CONSTRAINT FK_2ca7bb_Descriptor FOREIGN KEY (CollegeCareerTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.CourseDeliveryTypeDescriptor ADD CONSTRAINT FK_512bbf_Descriptor FOREIGN KEY (CourseDeliveryTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.CourseOfferingExtension ADD CONSTRAINT FK_f6d093_CollegeCareerTypeDescriptor FOREIGN KEY (CollegeCareerTypeDescriptorId)
REFERENCES ks.CollegeCareerTypeDescriptor (CollegeCareerTypeDescriptorId)
;

CREATE INDEX FK_f6d093_CollegeCareerTypeDescriptor
ON ks.CourseOfferingExtension (CollegeCareerTypeDescriptorId ASC);

ALTER TABLE ks.CourseOfferingExtension ADD CONSTRAINT FK_f6d093_CourseDeliveryTypeDescriptor FOREIGN KEY (CourseDeliveryTypeDescriptorId)
REFERENCES ks.CourseDeliveryTypeDescriptor (CourseDeliveryTypeDescriptorId)
;

CREATE INDEX FK_f6d093_CourseDeliveryTypeDescriptor
ON ks.CourseOfferingExtension (CourseDeliveryTypeDescriptorId ASC);

ALTER TABLE ks.CourseOfferingExtension ADD CONSTRAINT FK_f6d093_CourseOffering FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SessionName)
REFERENCES edfi.CourseOffering (LocalCourseCode, SchoolId, SchoolYear, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE ks.CourseOfferingExtension ADD CONSTRAINT FK_f6d093_CourseProgramTypeDescriptor FOREIGN KEY (CourseProgramTypeDescriptorId)
REFERENCES ks.CourseProgramTypeDescriptor (CourseProgramTypeDescriptorId)
;

CREATE INDEX FK_f6d093_CourseProgramTypeDescriptor
ON ks.CourseOfferingExtension (CourseProgramTypeDescriptorId ASC);

ALTER TABLE ks.CourseProgramTypeDescriptor ADD CONSTRAINT FK_42f22f_Descriptor FOREIGN KEY (CourseProgramTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.CourseStatusDescriptor ADD CONSTRAINT FK_505e9e_Descriptor FOREIGN KEY (CourseStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.CTECertificationEarnedDescriptor ADD CONSTRAINT FK_0e398d_Descriptor FOREIGN KEY (CTECertificationEarnedDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.FundingSourceDescriptor ADD CONSTRAINT FK_3ecd1a_Descriptor FOREIGN KEY (FundingSourceDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.GradeExtension ADD CONSTRAINT FK_537a84_Grade FOREIGN KEY (BeginDate, GradeTypeDescriptorId, GradingPeriodDescriptorId, GradingPeriodSequence, GradingPeriodSchoolYear, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
REFERENCES edfi.Grade (BeginDate, GradeTypeDescriptorId, GradingPeriodDescriptorId, GradingPeriodSequence, GradingPeriodSchoolYear, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE ks.GradeExtension ADD CONSTRAINT FK_537a84_WorkBasedLearningDescriptor FOREIGN KEY (WorkBasedLearningDescriptorId)
REFERENCES ks.WorkBasedLearningDescriptor (WorkBasedLearningDescriptorId)
;

CREATE INDEX FK_537a84_WorkBasedLearningDescriptor
ON ks.GradeExtension (WorkBasedLearningDescriptorId ASC);

ALTER TABLE ks.ImmigrantStudentDescriptor ADD CONSTRAINT FK_56c1a4_Descriptor FOREIGN KEY (ImmigrantStudentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.LanguageInstructionProgramTypeDescriptor ADD CONSTRAINT FK_d98ff3_Descriptor FOREIGN KEY (LanguageInstructionProgramTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.MilitaryConnectedStudentDescriptor ADD CONSTRAINT FK_ed0d8f_Descriptor FOREIGN KEY (MilitaryConnectedStudentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.NeglectedDelinquentStudentDescriptor ADD CONSTRAINT FK_79ffe2_Descriptor FOREIGN KEY (NeglectedDelinquentStudentDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.PostGraduationPlansDescriptor ADD CONSTRAINT FK_5ce88e_Descriptor FOREIGN KEY (PostGraduationPlansDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.QualifiedFor504Descriptor ADD CONSTRAINT FK_4481d5_Descriptor FOREIGN KEY (QualifiedFor504DescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE ks.SchoolExtension ADD CONSTRAINT FK_2199be_School FOREIGN KEY (SchoolId)
REFERENCES edfi.School (SchoolId)
ON DELETE CASCADE
;

ALTER TABLE ks.SectionEducator ADD CONSTRAINT FK_a22b23_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON UPDATE CASCADE
;

CREATE INDEX FK_a22b23_Section
ON ks.SectionEducator (LocalCourseCode ASC, SchoolId ASC, SchoolYear ASC, SectionIdentifier ASC, SessionName ASC);

ALTER TABLE ks.StudentAssessmentExtension ADD CONSTRAINT FK_62da1c_AssessmentRequestDescriptor FOREIGN KEY (AssessmentRequestDescriptorId)
REFERENCES ks.AssessmentRequestDescriptor (AssessmentRequestDescriptorId)
;

CREATE INDEX FK_62da1c_AssessmentRequestDescriptor
ON ks.StudentAssessmentExtension (AssessmentRequestDescriptorId ASC);

ALTER TABLE ks.StudentAssessmentExtension ADD CONSTRAINT FK_62da1c_Staff FOREIGN KEY (ProctorStaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

CREATE INDEX FK_62da1c_Staff
ON ks.StudentAssessmentExtension (ProctorStaffUSI ASC);

ALTER TABLE ks.StudentAssessmentExtension ADD CONSTRAINT FK_62da1c_StudentAssessment FOREIGN KEY (AssessmentIdentifier, Namespace, StudentAssessmentIdentifier, StudentUSI)
REFERENCES edfi.StudentAssessment (AssessmentIdentifier, Namespace, StudentAssessmentIdentifier, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE ks.StudentEducationOrganizationAssociationCTE ADD CONSTRAINT FK_8d8e47_CTECertificationEarnedDescriptor FOREIGN KEY (CTECertificationEarnedDescriptorId)
REFERENCES ks.CTECertificationEarnedDescriptor (CTECertificationEarnedDescriptorId)
;

CREATE INDEX FK_8d8e47_CTECertificationEarnedDescriptor
ON ks.StudentEducationOrganizationAssociationCTE (CTECertificationEarnedDescriptorId ASC);

ALTER TABLE ks.StudentEducationOrganizationAssociationCTE ADD CONSTRAINT FK_8d8e47_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE ks.StudentEducationOrganizationAssociationCTE ADD CONSTRAINT FK_8d8e47_TermDescriptor FOREIGN KEY (CertificationTermDescriptorId)
REFERENCES edfi.TermDescriptor (TermDescriptorId)
;

CREATE INDEX FK_8d8e47_TermDescriptor
ON ks.StudentEducationOrganizationAssociationCTE (CertificationTermDescriptorId ASC);

ALTER TABLE ks.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_ImmigrantStudentDescriptor FOREIGN KEY (ImmigrantStudentDescriptorId)
REFERENCES ks.ImmigrantStudentDescriptor (ImmigrantStudentDescriptorId)
;

CREATE INDEX FK_2c2930_ImmigrantStudentDescriptor
ON ks.StudentEducationOrganizationAssociationExtension (ImmigrantStudentDescriptorId ASC);

ALTER TABLE ks.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_MilitaryConnectedStudentDescriptor FOREIGN KEY (MilitaryConnectedStudentDescriptorId)
REFERENCES ks.MilitaryConnectedStudentDescriptor (MilitaryConnectedStudentDescriptorId)
;

CREATE INDEX FK_2c2930_MilitaryConnectedStudentDescriptor
ON ks.StudentEducationOrganizationAssociationExtension (MilitaryConnectedStudentDescriptorId ASC);

ALTER TABLE ks.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_NeglectedDelinquentStudentDescriptor FOREIGN KEY (NeglectedDelinquentStudentDescriptorId)
REFERENCES ks.NeglectedDelinquentStudentDescriptor (NeglectedDelinquentStudentDescriptorId)
;

CREATE INDEX FK_2c2930_NeglectedDelinquentStudentDescriptor
ON ks.StudentEducationOrganizationAssociationExtension (NeglectedDelinquentStudentDescriptorId ASC);

ALTER TABLE ks.StudentEducationOrganizationAssociationExtension ADD CONSTRAINT FK_2c2930_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE ks.StudentEducationOrganizationAssociationTransportation ADD CONSTRAINT FK_72207a_StudentEducationOrganizationAssociation FOREIGN KEY (EducationOrganizationId, StudentUSI)
REFERENCES edfi.StudentEducationOrganizationAssociation (EducationOrganizationId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE ks.StudentKPATProgramAssociation ADD CONSTRAINT FK_3fc972_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE ks.StudentKPPProgramAssociation ADD CONSTRAINT FK_c8865f_GeneralStudentProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.GeneralStudentProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE ks.StudentLanguageInstructionProgramAssociationExtension ADD CONSTRAINT FK_438c5c_FundingSourceDescriptor FOREIGN KEY (FundingSourceDescriptorId)
REFERENCES ks.FundingSourceDescriptor (FundingSourceDescriptorId)
;

CREATE INDEX FK_438c5c_FundingSourceDescriptor
ON ks.StudentLanguageInstructionProgramAssociationExtension (FundingSourceDescriptorId ASC);

ALTER TABLE ks.StudentLanguageInstructionProgramAssociationExtension ADD CONSTRAINT FK_438c5c_LanguageInstructionProgramTypeDescriptor FOREIGN KEY (LanguageInstructionProgramTypeDescriptorId)
REFERENCES ks.LanguageInstructionProgramTypeDescriptor (LanguageInstructionProgramTypeDescriptorId)
;

CREATE INDEX FK_438c5c_LanguageInstructionProgramTypeDescriptor
ON ks.StudentLanguageInstructionProgramAssociationExtension (LanguageInstructionProgramTypeDescriptorId ASC);

ALTER TABLE ks.StudentLanguageInstructionProgramAssociationExtension ADD CONSTRAINT FK_438c5c_StudentLanguageInstructionProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentLanguageInstructionProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE ks.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_PostGraduationPlansDescriptor FOREIGN KEY (PostGraduationPlansDescriptorId)
REFERENCES ks.PostGraduationPlansDescriptor (PostGraduationPlansDescriptorId)
;

CREATE INDEX FK_880cb1_PostGraduationPlansDescriptor
ON ks.StudentSchoolAssociationExtension (PostGraduationPlansDescriptorId ASC);

ALTER TABLE ks.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_QualifiedFor504Descriptor FOREIGN KEY (QualifiedFor504DescriptorId)
REFERENCES ks.QualifiedFor504Descriptor (QualifiedFor504DescriptorId)
;

CREATE INDEX FK_880cb1_QualifiedFor504Descriptor
ON ks.StudentSchoolAssociationExtension (QualifiedFor504DescriptorId ASC);

ALTER TABLE ks.StudentSchoolAssociationExtension ADD CONSTRAINT FK_880cb1_StudentSchoolAssociation FOREIGN KEY (EntryDate, SchoolId, StudentUSI)
REFERENCES edfi.StudentSchoolAssociation (EntryDate, SchoolId, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE ks.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_CourseStatusDescriptor FOREIGN KEY (CourseStatusDescriptorId)
REFERENCES ks.CourseStatusDescriptor (CourseStatusDescriptorId)
;

CREATE INDEX FK_a77484_CourseStatusDescriptor
ON ks.StudentSectionAssociationExtension (CourseStatusDescriptorId ASC);

ALTER TABLE ks.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_StudentSectionAssociation FOREIGN KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
REFERENCES edfi.StudentSectionAssociation (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE ks.WorkBasedLearningDescriptor ADD CONSTRAINT FK_3a0578_Descriptor FOREIGN KEY (WorkBasedLearningDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

