using System;
using System.Diagnostics.CodeAnalysis;
using System.Threading.Tasks;
using EdFi.Common.Extensions;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Api.Constants;
using EdFi.Ods.Api.Controllers;
using EdFi.Ods.Api.ExceptionHandling;
using EdFi.Ods.Api.Infrastructure.Pipelines.Factories;
using EdFi.Ods.Common.Infrastructure;
using EdFi.Ods.Common.Logging;
using EdFi.Ods.Common.Models.Requests;
using EdFi.Ods.Common.Models.Queries;
using EdFi.Ods.Common.ProblemDetails;
using EdFi.Ods.Common.Profiles;
using EdFi.Ods.Common.Configuration;
using EdFi.Ods.Common.Context;
using EdFi.Ods.Common.Security.Claims;
using EdFi.Ods.Entities.Common.EdFiXAssessmentRoster;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EdFi.Ods.Api.Services.Controllers.EdFiXAssessmentRoster.AssessmentAdministrations
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/ed-fi-xassessment-roster/assessmentAdministrations")]
    public partial class AssessmentAdministrationsController : DataManagementControllerBase<
        Api.Common.Models.Resources.AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministration,
        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration,
        Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministration,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.AssessmentAdministrations.AssessmentAdministrationPut,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.AssessmentAdministrations.AssessmentAdministrationPost,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.AssessmentAdministrations.AssessmentAdministrationDelete,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.AssessmentAdministrations.AssessmentAdministrationGetByExample>
    {
        public AssessmentAdministrationsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.EdFiXAssessmentRoster.AssessmentAdministrations.AssessmentAdministrationGetByExample request, Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.AdministrationIdentifier = request.AdministrationIdentifier;
            specification.AssessmentIdentifier = request.AssessmentIdentifier;
            specification.AssigningEducationOrganizationId = request.AssigningEducationOrganizationId;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.EdFiXAssessmentRoster.StudentAssessmentRegistrations
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/ed-fi-xassessment-roster/studentAssessmentRegistrations")]
    public partial class StudentAssessmentRegistrationsController : DataManagementControllerBase<
        Api.Common.Models.Resources.StudentAssessmentRegistration.EdFiXAssessmentRoster.StudentAssessmentRegistration,
        Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration,
        Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster.StudentAssessmentRegistration,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.StudentAssessmentRegistrations.StudentAssessmentRegistrationPut,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.StudentAssessmentRegistrations.StudentAssessmentRegistrationPost,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.StudentAssessmentRegistrations.StudentAssessmentRegistrationDelete,
        Api.Common.Models.Requests.EdFiXAssessmentRoster.StudentAssessmentRegistrations.StudentAssessmentRegistrationGetByExample>
    {
        public StudentAssessmentRegistrationsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.EdFiXAssessmentRoster.StudentAssessmentRegistrations.StudentAssessmentRegistrationGetByExample request, Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.AdministrationIdentifier = request.AdministrationIdentifier;
            specification.AssessmentIdentifier = request.AssessmentIdentifier;
            specification.AssigningEducationOrganizationId = request.AssigningEducationOrganizationId;
            specification.EducationOrganizationId = request.EducationOrganizationId;
            specification.EntryDate = request.EntryDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.PlatformTypeDescriptor = request.PlatformTypeDescriptor;
            specification.ReportingEducationOrganizationId = request.ReportingEducationOrganizationId;
            specification.SchoolId = request.SchoolId;
            specification.StudentUniqueId = request.StudentUniqueId;
            specification.TestingEducationOrganizationId = request.TestingEducationOrganizationId;
        }
    }
}
