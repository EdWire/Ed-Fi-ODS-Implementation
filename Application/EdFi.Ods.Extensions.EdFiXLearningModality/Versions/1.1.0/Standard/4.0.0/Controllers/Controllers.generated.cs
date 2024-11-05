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
using EdFi.Ods.Entities.Common.EdFiXLearningModality;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EdFi.Ods.Api.Services.Controllers.EdFiXLearningModality.ModalityTimeTypeDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/ed-fi-xlearning-modality/modalityTimeTypeDescriptors")]
    public partial class ModalityTimeTypeDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.ModalityTimeTypeDescriptor.EdFiXLearningModality.ModalityTimeTypeDescriptor,
        Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor,
        Entities.NHibernate.ModalityTimeTypeDescriptorAggregate.EdFiXLearningModality.ModalityTimeTypeDescriptor,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTimeTypeDescriptors.ModalityTimeTypeDescriptorPut,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTimeTypeDescriptors.ModalityTimeTypeDescriptorPost,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTimeTypeDescriptors.ModalityTimeTypeDescriptorDelete,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTimeTypeDescriptors.ModalityTimeTypeDescriptorGetByExample>
    {
        public ModalityTimeTypeDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.EdFiXLearningModality.ModalityTimeTypeDescriptors.ModalityTimeTypeDescriptorGetByExample request, Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Id = request.Id;
            specification.ModalityTimeTypeDescriptorId = request.ModalityTimeTypeDescriptorId;
            specification.Namespace = request.Namespace;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.EdFiXLearningModality.ModalityTypeDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/ed-fi-xlearning-modality/modalityTypeDescriptors")]
    public partial class ModalityTypeDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.ModalityTypeDescriptor.EdFiXLearningModality.ModalityTypeDescriptor,
        Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor,
        Entities.NHibernate.ModalityTypeDescriptorAggregate.EdFiXLearningModality.ModalityTypeDescriptor,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTypeDescriptors.ModalityTypeDescriptorPut,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTypeDescriptors.ModalityTypeDescriptorPost,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTypeDescriptors.ModalityTypeDescriptorDelete,
        Api.Common.Models.Requests.EdFiXLearningModality.ModalityTypeDescriptors.ModalityTypeDescriptorGetByExample>
    {
        public ModalityTypeDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.EdFiXLearningModality.ModalityTypeDescriptors.ModalityTypeDescriptorGetByExample request, Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Id = request.Id;
            specification.ModalityTypeDescriptorId = request.ModalityTypeDescriptorId;
            specification.Namespace = request.Namespace;
        }
    }
}
