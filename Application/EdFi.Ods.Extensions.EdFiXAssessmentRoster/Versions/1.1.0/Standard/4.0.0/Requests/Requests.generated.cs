using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Attributes;

namespace EdFi.Ods.Api.Common.Models.Requests.EdFiXAssessmentRoster.AssessmentAdministrations
{

    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationGetByExample
    {
        public string AdministrationIdentifier { get; set; }
        public string AssessmentIdentifier { get; set; }
        public int AssigningEducationOrganizationId { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationGetByIds : IHasIdentifiers<Guid>
    {
        public AssessmentAdministrationGetByIds() { }

        public AssessmentAdministrationGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationPost : Resources.AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministration
    {
    }

    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationPut : Resources.AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministration
    {
    }

    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationDelete : IHasIdentifier
    {
        public AssessmentAdministrationDelete() { }

        public AssessmentAdministrationDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.EdFiXAssessmentRoster.StudentAssessmentRegistrations
{

    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationGetByExample
    {
        public string AdministrationIdentifier { get; set; }
        public string AssessmentIdentifier { get; set; }
        public int AssigningEducationOrganizationId { get; set; }
        public int EducationOrganizationId { get; set; }
        public DateTime EntryDate { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public string PlatformTypeDescriptor { get; set; }
        public int ReportingEducationOrganizationId { get; set; }
        public int SchoolId { get; set; }
        public string StudentUniqueId { get; set; }
        public int TestingEducationOrganizationId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationGetByIds : IHasIdentifiers<Guid>
    {
        public StudentAssessmentRegistrationGetByIds() { }

        public StudentAssessmentRegistrationGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationPost : Resources.StudentAssessmentRegistration.EdFiXAssessmentRoster.StudentAssessmentRegistration
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationPut : Resources.StudentAssessmentRegistration.EdFiXAssessmentRoster.StudentAssessmentRegistration
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationDelete : IHasIdentifier
    {
        public StudentAssessmentRegistrationDelete() { }

        public StudentAssessmentRegistrationDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

