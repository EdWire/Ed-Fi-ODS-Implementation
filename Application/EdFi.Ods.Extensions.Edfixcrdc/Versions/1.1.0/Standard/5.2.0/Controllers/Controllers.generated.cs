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
using EdFi.Ods.Entities.Common.Edfixcrdc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.RestraintCategoryDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/restraintCategoryDescriptors")]
    public partial class RestraintCategoryDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.RestraintCategoryDescriptor.Edfixcrdc.RestraintCategoryDescriptor,
        Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor,
        Entities.NHibernate.RestraintCategoryDescriptorAggregate.Edfixcrdc.RestraintCategoryDescriptor,
        Api.Common.Models.Requests.Edfixcrdc.RestraintCategoryDescriptors.RestraintCategoryDescriptorPut,
        Api.Common.Models.Requests.Edfixcrdc.RestraintCategoryDescriptors.RestraintCategoryDescriptorPost,
        Api.Common.Models.Requests.Edfixcrdc.RestraintCategoryDescriptors.RestraintCategoryDescriptorDelete,
        Api.Common.Models.Requests.Edfixcrdc.RestraintCategoryDescriptors.RestraintCategoryDescriptorGetByExample>
    {
        public RestraintCategoryDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.RestraintCategoryDescriptors.RestraintCategoryDescriptorGetByExample request, Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.RestraintCategoryDescriptorId = request.RestraintCategoryDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}
