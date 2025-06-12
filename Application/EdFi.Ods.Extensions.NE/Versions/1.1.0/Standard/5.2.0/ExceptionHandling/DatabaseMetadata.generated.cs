using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.ExceptionHandling;
using EdFi.Ods.Api.Providers;

namespace EdFi.Ods.Api.Common.ExceptionHandling.NE
{
    [ExcludeFromCodeCoverage]
    public class DatabaseMetadataProvider : IDatabaseMetadataProvider
    {
        public IndexDetails GetIndexDetails(string indexName)
        {
            IndexDetails indexDetails = null;

            IndexDetailsByName.TryGetValue(indexName, out indexDetails);

            return indexDetails;
        }

        private static readonly Dictionary<string, IndexDetails> IndexDetailsByName = new Dictionary<string, IndexDetails>(StringComparer.InvariantCultureIgnoreCase) {
            { "CalendarDateExtension_PK", new IndexDetails { IndexName = "CalendarDateExtension_PK", TableName = "CalendarDateExtension", ColumnNames = new List<string> { "CalendarCode", "Date", "SchoolId", "SchoolYear" } } },
            { "DisciplineActionExtension_PK", new IndexDetails { IndexName = "DisciplineActionExtension_PK", TableName = "DisciplineActionExtension", ColumnNames = new List<string> { "DisciplineActionIdentifier", "DisciplineDate", "StudentUSI" } } },
            { "FK_DisciplineActionExtension_UnilateralRemovalDescriptor", new IndexDetails { IndexName = "FK_DisciplineActionExtension_UnilateralRemovalDescriptor", TableName = "DisciplineActionExtension", ColumnNames = new List<string> { "UnilateralRemovalDescriptorId" } } },
            { "DisciplineIncidentExtension_PK", new IndexDetails { IndexName = "DisciplineIncidentExtension_PK", TableName = "DisciplineIncidentExtension", ColumnNames = new List<string> { "IncidentIdentifier", "SchoolId" } } },
            { "EarlyLearningSettingDescriptor_PK", new IndexDetails { IndexName = "EarlyLearningSettingDescriptor_PK", TableName = "EarlyLearningSettingDescriptor", ColumnNames = new List<string> { "EarlyLearningSettingDescriptorId" } } },
            { "ImmigrantIndicatorDescriptor_PK", new IndexDetails { IndexName = "ImmigrantIndicatorDescriptor_PK", TableName = "ImmigrantIndicatorDescriptor", ColumnNames = new List<string> { "ImmigrantIndicatorDescriptorId" } } },
            { "PartCTransitionDelayReasonDescriptor_PK", new IndexDetails { IndexName = "PartCTransitionDelayReasonDescriptor_PK", TableName = "PartCTransitionDelayReasonDescriptor", ColumnNames = new List<string> { "PartCTransitionDelayReasonDescriptorId" } } },
            { "PlacementTypeDescriptor_PK", new IndexDetails { IndexName = "PlacementTypeDescriptor_PK", TableName = "PlacementTypeDescriptor", ColumnNames = new List<string> { "PlacementTypeDescriptorId" } } },
            { "PositionTitleDescriptor_PK", new IndexDetails { IndexName = "PositionTitleDescriptor_PK", TableName = "PositionTitleDescriptor", ColumnNames = new List<string> { "PositionTitleDescriptorId" } } },
            { "FK_PostGraduateActivity_LocalEducationAgency", new IndexDetails { IndexName = "FK_PostGraduateActivity_LocalEducationAgency", TableName = "PostGraduateActivity", ColumnNames = new List<string> { "LocalEducationAgencyId" } } },
            { "FK_PostGraduateActivity_PostGraduateActivityDescriptor", new IndexDetails { IndexName = "FK_PostGraduateActivity_PostGraduateActivityDescriptor", TableName = "PostGraduateActivity", ColumnNames = new List<string> { "PostGraduateActivityDescriptorId" } } },
            { "FK_PostGraduateActivity_PostGraduateActivityDeterminationDescriptor", new IndexDetails { IndexName = "FK_PostGraduateActivity_PostGraduateActivityDeterminationDescriptor", TableName = "PostGraduateActivity", ColumnNames = new List<string> { "PostGraduateActivityDeterminationDescriptorId" } } },
            { "FK_PostGraduateActivity_SchoolYearType", new IndexDetails { IndexName = "FK_PostGraduateActivity_SchoolYearType", TableName = "PostGraduateActivity", ColumnNames = new List<string> { "SchoolYear" } } },
            { "FK_PostGraduateActivity_Student", new IndexDetails { IndexName = "FK_PostGraduateActivity_Student", TableName = "PostGraduateActivity", ColumnNames = new List<string> { "StudentUSI" } } },
            { "PostGraduateActivity_PK", new IndexDetails { IndexName = "PostGraduateActivity_PK", TableName = "PostGraduateActivity", ColumnNames = new List<string> { "LocalEducationAgencyId", "SchoolYear", "StudentUSI" } } },
            { "UX_PostGraduateActivity_Id", new IndexDetails { IndexName = "UX_PostGraduateActivity_Id", TableName = "PostGraduateActivity", ColumnNames = new List<string> { "Id" } } },
            { "PostGraduateActivityDescriptor_PK", new IndexDetails { IndexName = "PostGraduateActivityDescriptor_PK", TableName = "PostGraduateActivityDescriptor", ColumnNames = new List<string> { "PostGraduateActivityDescriptorId" } } },
            { "PostGraduateActivityDeterminationDescriptor_PK", new IndexDetails { IndexName = "PostGraduateActivityDeterminationDescriptor_PK", TableName = "PostGraduateActivityDeterminationDescriptor", ColumnNames = new List<string> { "PostGraduateActivityDeterminationDescriptorId" } } },
            { "FK_SectionDelivery_Section", new IndexDetails { IndexName = "FK_SectionDelivery_Section", TableName = "SectionDelivery", ColumnNames = new List<string> { "LocalCourseCode", "SchoolId", "SchoolYear", "SectionIdentifier", "SessionName" } } },
            { "FK_SectionDelivery_SectionDeliveryDescriptor", new IndexDetails { IndexName = "FK_SectionDelivery_SectionDeliveryDescriptor", TableName = "SectionDelivery", ColumnNames = new List<string> { "SectionDeliveryDescriptorId" } } },
            { "SectionDelivery_PK", new IndexDetails { IndexName = "SectionDelivery_PK", TableName = "SectionDelivery", ColumnNames = new List<string> { "LocalCourseCode", "SchoolId", "SchoolYear", "SectionIdentifier", "SessionName", "SectionDeliveryDescriptorId" } } },
            { "SectionDeliveryDescriptor_PK", new IndexDetails { IndexName = "SectionDeliveryDescriptor_PK", TableName = "SectionDeliveryDescriptor", ColumnNames = new List<string> { "SectionDeliveryDescriptorId" } } },
            { "SectionExtension_PK", new IndexDetails { IndexName = "SectionExtension_PK", TableName = "SectionExtension", ColumnNames = new List<string> { "LocalCourseCode", "SchoolId", "SchoolYear", "SectionIdentifier", "SessionName" } } },
            { "SpecialEducationProgramDescriptor_PK", new IndexDetails { IndexName = "SpecialEducationProgramDescriptor_PK", TableName = "SpecialEducationProgramDescriptor", ColumnNames = new List<string> { "SpecialEducationProgramDescriptorId" } } },
            { "StudentDisciplineIncidentBehaviorAssociationExtension_PK", new IndexDetails { IndexName = "StudentDisciplineIncidentBehaviorAssociationExtension_PK", TableName = "StudentDisciplineIncidentBehaviorAssociationExtension", ColumnNames = new List<string> { "BehaviorDescriptorId", "IncidentIdentifier", "SchoolId", "StudentUSI" } } },
            { "FK_StudentEarlyLearningProgramAssociation_EarlyLearningSettingDescriptor", new IndexDetails { IndexName = "FK_StudentEarlyLearningProgramAssociation_EarlyLearningSettingDescriptor", TableName = "StudentEarlyLearningProgramAssociation", ColumnNames = new List<string> { "EarlyLearningSettingDescriptorId" } } },
            { "StudentEarlyLearningProgramAssociation_PK", new IndexDetails { IndexName = "StudentEarlyLearningProgramAssociation_PK", TableName = "StudentEarlyLearningProgramAssociation", ColumnNames = new List<string> { "BeginDate", "EducationOrganizationId", "ProgramEducationOrganizationId", "ProgramName", "ProgramTypeDescriptorId", "StudentUSI" } } },
            { "FK_StudentEducationOrganizationAssociationExtension_ImmigrantIndicatorDescriptor", new IndexDetails { IndexName = "FK_StudentEducationOrganizationAssociationExtension_ImmigrantIndicatorDescriptor", TableName = "StudentEducationOrganizationAssociationExtension", ColumnNames = new List<string> { "ImmigrantIndicatorDescriptorId" } } },
            { "StudentEducationOrganizationAssociationExtension_PK", new IndexDetails { IndexName = "StudentEducationOrganizationAssociationExtension_PK", TableName = "StudentEducationOrganizationAssociationExtension", ColumnNames = new List<string> { "EducationOrganizationId", "StudentUSI" } } },
            { "StudentLanguageInstructionProgramAssociationExtension_PK", new IndexDetails { IndexName = "StudentLanguageInstructionProgramAssociationExtension_PK", TableName = "StudentLanguageInstructionProgramAssociationExtension", ColumnNames = new List<string> { "BeginDate", "EducationOrganizationId", "ProgramEducationOrganizationId", "ProgramName", "ProgramTypeDescriptorId", "StudentUSI" } } },
            { "FK_StudentSchoolAssociationExtension_LocalEducationAgency", new IndexDetails { IndexName = "FK_StudentSchoolAssociationExtension_LocalEducationAgency", TableName = "StudentSchoolAssociationExtension", ColumnNames = new List<string> { "ResidentLocalEducationAgencyId" } } },
            { "FK_StudentSchoolAssociationExtension_School", new IndexDetails { IndexName = "FK_StudentSchoolAssociationExtension_School", TableName = "StudentSchoolAssociationExtension", ColumnNames = new List<string> { "ExpectedHighSchoolOfGraduationSchoolId" } } },
            { "FK_StudentSchoolAssociationExtension_School1", new IndexDetails { IndexName = "FK_StudentSchoolAssociationExtension_School1", TableName = "StudentSchoolAssociationExtension", ColumnNames = new List<string> { "ReportingSchoolId" } } },
            { "FK_StudentSchoolAssociationExtension_School2", new IndexDetails { IndexName = "FK_StudentSchoolAssociationExtension_School2", TableName = "StudentSchoolAssociationExtension", ColumnNames = new List<string> { "ResidentSchoolId" } } },
            { "StudentSchoolAssociationExtension_PK", new IndexDetails { IndexName = "StudentSchoolAssociationExtension_PK", TableName = "StudentSchoolAssociationExtension", ColumnNames = new List<string> { "EntryDate", "SchoolId", "StudentUSI" } } },
            { "FK_StudentSpecialEducationProgramAssociationExtension_PartCTransitionDelayReasonDescriptor", new IndexDetails { IndexName = "FK_StudentSpecialEducationProgramAssociationExtension_PartCTransitionDelayReasonDescriptor", TableName = "StudentSpecialEducationProgramAssociationExtension", ColumnNames = new List<string> { "PartCTransitionDelayReasonDescriptorId" } } },
            { "FK_StudentSpecialEducationProgramAssociationExtension_PlacementTypeDescriptor", new IndexDetails { IndexName = "FK_StudentSpecialEducationProgramAssociationExtension_PlacementTypeDescriptor", TableName = "StudentSpecialEducationProgramAssociationExtension", ColumnNames = new List<string> { "PlacementTypeDescriptorId" } } },
            { "FK_StudentSpecialEducationProgramAssociationExtension_SpecialEducationProgramDescriptor", new IndexDetails { IndexName = "FK_StudentSpecialEducationProgramAssociationExtension_SpecialEducationProgramDescriptor", TableName = "StudentSpecialEducationProgramAssociationExtension", ColumnNames = new List<string> { "SpecialEducationProgramDescriptorId" } } },
            { "StudentSpecialEducationProgramAssociationExtension_PK", new IndexDetails { IndexName = "StudentSpecialEducationProgramAssociationExtension_PK", TableName = "StudentSpecialEducationProgramAssociationExtension", ColumnNames = new List<string> { "BeginDate", "EducationOrganizationId", "ProgramEducationOrganizationId", "ProgramName", "ProgramTypeDescriptorId", "StudentUSI" } } },
            { "UnilateralRemovalDescriptor_PK", new IndexDetails { IndexName = "UnilateralRemovalDescriptor_PK", TableName = "UnilateralRemovalDescriptor", ColumnNames = new List<string> { "UnilateralRemovalDescriptorId" } } },
        };
    }
}
