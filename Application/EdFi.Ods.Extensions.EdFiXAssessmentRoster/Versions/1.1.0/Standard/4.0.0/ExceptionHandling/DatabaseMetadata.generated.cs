using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.ExceptionHandling;
using EdFi.Ods.Api.Providers;

namespace EdFi.Ods.Api.Common.ExceptionHandling.EdFiXAssessmentRoster
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
            { "AssessmentAdministration_PK", new IndexDetails { IndexName = "AssessmentAdministration_PK", TableName = "AssessmentAdministration", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "Namespace" } } },
            { "FK_AssessmentAdministration_Assessment", new IndexDetails { IndexName = "FK_AssessmentAdministration_Assessment", TableName = "AssessmentAdministration", ColumnNames = new List<string> { "AssessmentIdentifier", "Namespace" } } },
            { "FK_AssessmentAdministration_EducationOrganization", new IndexDetails { IndexName = "FK_AssessmentAdministration_EducationOrganization", TableName = "AssessmentAdministration", ColumnNames = new List<string> { "AssigningEducationOrganizationId" } } },
            { "UX_AssessmentAdministration_Id", new IndexDetails { IndexName = "UX_AssessmentAdministration_Id", TableName = "AssessmentAdministration", ColumnNames = new List<string> { "Id" } } },
            { "AssessmentAdministrationContact_PK", new IndexDetails { IndexName = "AssessmentAdministrationContact_PK", TableName = "AssessmentAdministrationContact", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "Namespace", "EducationOrganizationId", "ElectronicMailAddress" } } },
            { "FK_AssessmentAdministrationContact_AssessmentAdministration", new IndexDetails { IndexName = "FK_AssessmentAdministrationContact_AssessmentAdministration", TableName = "AssessmentAdministrationContact", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "Namespace" } } },
            { "FK_AssessmentAdministrationContact_EducationOrganization", new IndexDetails { IndexName = "FK_AssessmentAdministrationContact_EducationOrganization", TableName = "AssessmentAdministrationContact", ColumnNames = new List<string> { "EducationOrganizationId" } } },
            { "AssessmentAdministrationPeriod_PK", new IndexDetails { IndexName = "AssessmentAdministrationPeriod_PK", TableName = "AssessmentAdministrationPeriod", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "Namespace", "BeginDate" } } },
            { "FK_AssessmentAdministrationPeriod_AssessmentAdministration", new IndexDetails { IndexName = "FK_AssessmentAdministrationPeriod_AssessmentAdministration", TableName = "AssessmentAdministrationPeriod", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "Namespace" } } },
            { "FK_StudentAssessmentRegistration_AssessmentAdministration", new IndexDetails { IndexName = "FK_StudentAssessmentRegistration_AssessmentAdministration", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "Namespace" } } },
            { "FK_StudentAssessmentRegistration_EducationOrganization", new IndexDetails { IndexName = "FK_StudentAssessmentRegistration_EducationOrganization", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "ReportingEducationOrganizationId" } } },
            { "FK_StudentAssessmentRegistration_EducationOrganization1", new IndexDetails { IndexName = "FK_StudentAssessmentRegistration_EducationOrganization1", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "TestingEducationOrganizationId" } } },
            { "FK_StudentAssessmentRegistration_PlatformTypeDescriptor", new IndexDetails { IndexName = "FK_StudentAssessmentRegistration_PlatformTypeDescriptor", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "PlatformTypeDescriptorId" } } },
            { "FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation", new IndexDetails { IndexName = "FK_StudentAssessmentRegistration_StudentEducationOrganizationAssociation", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "EducationOrganizationId", "StudentUSI" } } },
            { "FK_StudentAssessmentRegistration_StudentSchoolAssociation", new IndexDetails { IndexName = "FK_StudentAssessmentRegistration_StudentSchoolAssociation", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "EntryDate", "SchoolId", "StudentUSI" } } },
            { "StudentAssessmentRegistration_PK", new IndexDetails { IndexName = "StudentAssessmentRegistration_PK", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "EducationOrganizationId", "Namespace", "StudentUSI" } } },
            { "UX_StudentAssessmentRegistration_Id", new IndexDetails { IndexName = "UX_StudentAssessmentRegistration_Id", TableName = "StudentAssessmentRegistration", ColumnNames = new List<string> { "Id" } } },
            { "FK_StudentAssessmentRegistrationAssessmentCustomization_StudentAssessmentRegistration", new IndexDetails { IndexName = "FK_StudentAssessmentRegistrationAssessmentCustomization_StudentAssessmentRegistration", TableName = "StudentAssessmentRegistrationAssessmentCustomization", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "EducationOrganizationId", "Namespace", "StudentUSI" } } },
            { "StudentAssessmentRegistrationAssessmentCustomization_PK", new IndexDetails { IndexName = "StudentAssessmentRegistrationAssessmentCustomization_PK", TableName = "StudentAssessmentRegistrationAssessmentCustomization", ColumnNames = new List<string> { "AdministrationIdentifier", "AssessmentIdentifier", "AssigningEducationOrganizationId", "EducationOrganizationId", "Namespace", "StudentUSI", "IdentificationCode" } } },
        };
    }
}
