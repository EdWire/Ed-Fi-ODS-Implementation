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
using EdFi.Ods.Entities.Common.NE;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EdFi.Ods.Api.Services.Controllers.NE.EarlyLearningSettingDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/earlyLearningSettingDescriptors")]
    public partial class EarlyLearningSettingDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.EarlyLearningSettingDescriptor.NE.EarlyLearningSettingDescriptor,
        Entities.Common.NE.IEarlyLearningSettingDescriptor,
        Entities.NHibernate.EarlyLearningSettingDescriptorAggregate.NE.EarlyLearningSettingDescriptor,
        Api.Common.Models.Requests.NE.EarlyLearningSettingDescriptors.EarlyLearningSettingDescriptorPut,
        Api.Common.Models.Requests.NE.EarlyLearningSettingDescriptors.EarlyLearningSettingDescriptorPost,
        Api.Common.Models.Requests.NE.EarlyLearningSettingDescriptors.EarlyLearningSettingDescriptorDelete,
        Api.Common.Models.Requests.NE.EarlyLearningSettingDescriptors.EarlyLearningSettingDescriptorGetByExample>
    {
        public EarlyLearningSettingDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.EarlyLearningSettingDescriptors.EarlyLearningSettingDescriptorGetByExample request, Entities.Common.NE.IEarlyLearningSettingDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EarlyLearningSettingDescriptorId = request.EarlyLearningSettingDescriptorId;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.EmergencyExclusions
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/emergencyExclusions")]
    public partial class EmergencyExclusionsController : DataManagementControllerBase<
        Api.Common.Models.Resources.EmergencyExclusion.NE.EmergencyExclusion,
        Entities.Common.NE.IEmergencyExclusion,
        Entities.NHibernate.EmergencyExclusionAggregate.NE.EmergencyExclusion,
        Api.Common.Models.Requests.NE.EmergencyExclusions.EmergencyExclusionPut,
        Api.Common.Models.Requests.NE.EmergencyExclusions.EmergencyExclusionPost,
        Api.Common.Models.Requests.NE.EmergencyExclusions.EmergencyExclusionDelete,
        Api.Common.Models.Requests.NE.EmergencyExclusions.EmergencyExclusionGetByExample>
    {
        public EmergencyExclusionsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.EmergencyExclusions.EmergencyExclusionGetByExample request, Entities.Common.NE.IEmergencyExclusion specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.EducationOrganizationId = request.EducationOrganizationId;
            specification.EmergencyExclusionReasonDescriptor = request.EmergencyExclusionReasonDescriptor;
            specification.ExclusionDate = request.ExclusionDate;
            specification.ExclusionDuration = request.ExclusionDuration;
            specification.Id = request.Id;
            specification.StudentUniqueId = request.StudentUniqueId;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.EmergencyExclusionReasonDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/emergencyExclusionReasonDescriptors")]
    public partial class EmergencyExclusionReasonDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.EmergencyExclusionReasonDescriptor.NE.EmergencyExclusionReasonDescriptor,
        Entities.Common.NE.IEmergencyExclusionReasonDescriptor,
        Entities.NHibernate.EmergencyExclusionReasonDescriptorAggregate.NE.EmergencyExclusionReasonDescriptor,
        Api.Common.Models.Requests.NE.EmergencyExclusionReasonDescriptors.EmergencyExclusionReasonDescriptorPut,
        Api.Common.Models.Requests.NE.EmergencyExclusionReasonDescriptors.EmergencyExclusionReasonDescriptorPost,
        Api.Common.Models.Requests.NE.EmergencyExclusionReasonDescriptors.EmergencyExclusionReasonDescriptorDelete,
        Api.Common.Models.Requests.NE.EmergencyExclusionReasonDescriptors.EmergencyExclusionReasonDescriptorGetByExample>
    {
        public EmergencyExclusionReasonDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.EmergencyExclusionReasonDescriptors.EmergencyExclusionReasonDescriptorGetByExample request, Entities.Common.NE.IEmergencyExclusionReasonDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.EmergencyExclusionReasonDescriptorId = request.EmergencyExclusionReasonDescriptorId;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.EventComplianceDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/eventComplianceDescriptors")]
    public partial class EventComplianceDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.EventComplianceDescriptor.NE.EventComplianceDescriptor,
        Entities.Common.NE.IEventComplianceDescriptor,
        Entities.NHibernate.EventComplianceDescriptorAggregate.NE.EventComplianceDescriptor,
        Api.Common.Models.Requests.NE.EventComplianceDescriptors.EventComplianceDescriptorPut,
        Api.Common.Models.Requests.NE.EventComplianceDescriptors.EventComplianceDescriptorPost,
        Api.Common.Models.Requests.NE.EventComplianceDescriptors.EventComplianceDescriptorDelete,
        Api.Common.Models.Requests.NE.EventComplianceDescriptors.EventComplianceDescriptorGetByExample>
    {
        public EventComplianceDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.EventComplianceDescriptors.EventComplianceDescriptorGetByExample request, Entities.Common.NE.IEventComplianceDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.EventComplianceDescriptorId = request.EventComplianceDescriptorId;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.EventReasonDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/eventReasonDescriptors")]
    public partial class EventReasonDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.EventReasonDescriptor.NE.EventReasonDescriptor,
        Entities.Common.NE.IEventReasonDescriptor,
        Entities.NHibernate.EventReasonDescriptorAggregate.NE.EventReasonDescriptor,
        Api.Common.Models.Requests.NE.EventReasonDescriptors.EventReasonDescriptorPut,
        Api.Common.Models.Requests.NE.EventReasonDescriptors.EventReasonDescriptorPost,
        Api.Common.Models.Requests.NE.EventReasonDescriptors.EventReasonDescriptorDelete,
        Api.Common.Models.Requests.NE.EventReasonDescriptors.EventReasonDescriptorGetByExample>
    {
        public EventReasonDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.EventReasonDescriptors.EventReasonDescriptorGetByExample request, Entities.Common.NE.IEventReasonDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.EventReasonDescriptorId = request.EventReasonDescriptorId;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.IdeaEvents
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/ideaEvents")]
    public partial class IdeaEventsController : DataManagementControllerBase<
        Api.Common.Models.Resources.IdeaEvent.NE.IdeaEvent,
        Entities.Common.NE.IIdeaEvent,
        Entities.NHibernate.IdeaEventAggregate.NE.IdeaEvent,
        Api.Common.Models.Requests.NE.IdeaEvents.IdeaEventPut,
        Api.Common.Models.Requests.NE.IdeaEvents.IdeaEventPost,
        Api.Common.Models.Requests.NE.IdeaEvents.IdeaEventDelete,
        Api.Common.Models.Requests.NE.IdeaEvents.IdeaEventGetByExample>
    {
        public IdeaEventsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.IdeaEvents.IdeaEventGetByExample request, Entities.Common.NE.IIdeaEvent specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.BeginDate = request.BeginDate;
            specification.EducationOrganizationId = request.EducationOrganizationId;
            specification.EndDate = request.EndDate;
            specification.EventComplianceDescriptor = request.EventComplianceDescriptor;
            specification.EventNarrative = request.EventNarrative;
            specification.EventReasonDescriptor = request.EventReasonDescriptor;
            specification.Id = request.Id;
            specification.IDEAEventDescriptor = request.IDEAEventDescriptor;
            specification.IDEAEventID = request.IDEAEventID;
            specification.StudentUniqueId = request.StudentUniqueId;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.IDEAEventDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/ideaEventDescriptors")]
    public partial class IDEAEventDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.IDEAEventDescriptor.NE.IDEAEventDescriptor,
        Entities.Common.NE.IIDEAEventDescriptor,
        Entities.NHibernate.IDEAEventDescriptorAggregate.NE.IDEAEventDescriptor,
        Api.Common.Models.Requests.NE.IDEAEventDescriptors.IDEAEventDescriptorPut,
        Api.Common.Models.Requests.NE.IDEAEventDescriptors.IDEAEventDescriptorPost,
        Api.Common.Models.Requests.NE.IDEAEventDescriptors.IDEAEventDescriptorDelete,
        Api.Common.Models.Requests.NE.IDEAEventDescriptors.IDEAEventDescriptorGetByExample>
    {
        public IDEAEventDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.IDEAEventDescriptors.IDEAEventDescriptorGetByExample request, Entities.Common.NE.IIDEAEventDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.IDEAEventDescriptorId = request.IDEAEventDescriptorId;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.ImmigrantIndicatorDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/immigrantIndicatorDescriptors")]
    public partial class ImmigrantIndicatorDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.ImmigrantIndicatorDescriptor.NE.ImmigrantIndicatorDescriptor,
        Entities.Common.NE.IImmigrantIndicatorDescriptor,
        Entities.NHibernate.ImmigrantIndicatorDescriptorAggregate.NE.ImmigrantIndicatorDescriptor,
        Api.Common.Models.Requests.NE.ImmigrantIndicatorDescriptors.ImmigrantIndicatorDescriptorPut,
        Api.Common.Models.Requests.NE.ImmigrantIndicatorDescriptors.ImmigrantIndicatorDescriptorPost,
        Api.Common.Models.Requests.NE.ImmigrantIndicatorDescriptors.ImmigrantIndicatorDescriptorDelete,
        Api.Common.Models.Requests.NE.ImmigrantIndicatorDescriptors.ImmigrantIndicatorDescriptorGetByExample>
    {
        public ImmigrantIndicatorDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.ImmigrantIndicatorDescriptors.ImmigrantIndicatorDescriptorGetByExample request, Entities.Common.NE.IImmigrantIndicatorDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.ImmigrantIndicatorDescriptorId = request.ImmigrantIndicatorDescriptorId;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.PartCTransitionDelayReasonDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/partCTransitionDelayReasonDescriptors")]
    public partial class PartCTransitionDelayReasonDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.PartCTransitionDelayReasonDescriptor.NE.PartCTransitionDelayReasonDescriptor,
        Entities.Common.NE.IPartCTransitionDelayReasonDescriptor,
        Entities.NHibernate.PartCTransitionDelayReasonDescriptorAggregate.NE.PartCTransitionDelayReasonDescriptor,
        Api.Common.Models.Requests.NE.PartCTransitionDelayReasonDescriptors.PartCTransitionDelayReasonDescriptorPut,
        Api.Common.Models.Requests.NE.PartCTransitionDelayReasonDescriptors.PartCTransitionDelayReasonDescriptorPost,
        Api.Common.Models.Requests.NE.PartCTransitionDelayReasonDescriptors.PartCTransitionDelayReasonDescriptorDelete,
        Api.Common.Models.Requests.NE.PartCTransitionDelayReasonDescriptors.PartCTransitionDelayReasonDescriptorGetByExample>
    {
        public PartCTransitionDelayReasonDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.PartCTransitionDelayReasonDescriptors.PartCTransitionDelayReasonDescriptorGetByExample request, Entities.Common.NE.IPartCTransitionDelayReasonDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.PartCTransitionDelayReasonDescriptorId = request.PartCTransitionDelayReasonDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.PlacementTypeDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/placementTypeDescriptors")]
    public partial class PlacementTypeDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.PlacementTypeDescriptor.NE.PlacementTypeDescriptor,
        Entities.Common.NE.IPlacementTypeDescriptor,
        Entities.NHibernate.PlacementTypeDescriptorAggregate.NE.PlacementTypeDescriptor,
        Api.Common.Models.Requests.NE.PlacementTypeDescriptors.PlacementTypeDescriptorPut,
        Api.Common.Models.Requests.NE.PlacementTypeDescriptors.PlacementTypeDescriptorPost,
        Api.Common.Models.Requests.NE.PlacementTypeDescriptors.PlacementTypeDescriptorDelete,
        Api.Common.Models.Requests.NE.PlacementTypeDescriptors.PlacementTypeDescriptorGetByExample>
    {
        public PlacementTypeDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.PlacementTypeDescriptors.PlacementTypeDescriptorGetByExample request, Entities.Common.NE.IPlacementTypeDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.PlacementTypeDescriptorId = request.PlacementTypeDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.PositionTitleDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/positionTitleDescriptors")]
    public partial class PositionTitleDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.PositionTitleDescriptor.NE.PositionTitleDescriptor,
        Entities.Common.NE.IPositionTitleDescriptor,
        Entities.NHibernate.PositionTitleDescriptorAggregate.NE.PositionTitleDescriptor,
        Api.Common.Models.Requests.NE.PositionTitleDescriptors.PositionTitleDescriptorPut,
        Api.Common.Models.Requests.NE.PositionTitleDescriptors.PositionTitleDescriptorPost,
        Api.Common.Models.Requests.NE.PositionTitleDescriptors.PositionTitleDescriptorDelete,
        Api.Common.Models.Requests.NE.PositionTitleDescriptors.PositionTitleDescriptorGetByExample>
    {
        public PositionTitleDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.PositionTitleDescriptors.PositionTitleDescriptorGetByExample request, Entities.Common.NE.IPositionTitleDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.PositionTitleDescriptorId = request.PositionTitleDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.PostGraduateActivities
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/postGraduateActivities")]
    public partial class PostGraduateActivitiesController : DataManagementControllerBase<
        Api.Common.Models.Resources.PostGraduateActivity.NE.PostGraduateActivity,
        Entities.Common.NE.IPostGraduateActivity,
        Entities.NHibernate.PostGraduateActivityAggregate.NE.PostGraduateActivity,
        Api.Common.Models.Requests.NE.PostGraduateActivities.PostGraduateActivityPut,
        Api.Common.Models.Requests.NE.PostGraduateActivities.PostGraduateActivityPost,
        Api.Common.Models.Requests.NE.PostGraduateActivities.PostGraduateActivityDelete,
        Api.Common.Models.Requests.NE.PostGraduateActivities.PostGraduateActivityGetByExample>
    {
        public PostGraduateActivitiesController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.PostGraduateActivities.PostGraduateActivityGetByExample request, Entities.Common.NE.IPostGraduateActivity specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.Id = request.Id;
            specification.LocalEducationAgencyId = request.LocalEducationAgencyId;
            specification.PostGraduateActivityDescriptor = request.PostGraduateActivityDescriptor;
            specification.PostGraduateActivityDeterminationDescriptor = request.PostGraduateActivityDeterminationDescriptor;
            specification.SchoolYear = request.SchoolYear;
            specification.StudentUniqueId = request.StudentUniqueId;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.PostGraduateActivityDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/postGraduateActivityDescriptors")]
    public partial class PostGraduateActivityDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.PostGraduateActivityDescriptor.NE.PostGraduateActivityDescriptor,
        Entities.Common.NE.IPostGraduateActivityDescriptor,
        Entities.NHibernate.PostGraduateActivityDescriptorAggregate.NE.PostGraduateActivityDescriptor,
        Api.Common.Models.Requests.NE.PostGraduateActivityDescriptors.PostGraduateActivityDescriptorPut,
        Api.Common.Models.Requests.NE.PostGraduateActivityDescriptors.PostGraduateActivityDescriptorPost,
        Api.Common.Models.Requests.NE.PostGraduateActivityDescriptors.PostGraduateActivityDescriptorDelete,
        Api.Common.Models.Requests.NE.PostGraduateActivityDescriptors.PostGraduateActivityDescriptorGetByExample>
    {
        public PostGraduateActivityDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.PostGraduateActivityDescriptors.PostGraduateActivityDescriptorGetByExample request, Entities.Common.NE.IPostGraduateActivityDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.PostGraduateActivityDescriptorId = request.PostGraduateActivityDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.PostGraduateActivityDeterminationDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/postGraduateActivityDeterminationDescriptors")]
    public partial class PostGraduateActivityDeterminationDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.PostGraduateActivityDeterminationDescriptor.NE.PostGraduateActivityDeterminationDescriptor,
        Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor,
        Entities.NHibernate.PostGraduateActivityDeterminationDescriptorAggregate.NE.PostGraduateActivityDeterminationDescriptor,
        Api.Common.Models.Requests.NE.PostGraduateActivityDeterminationDescriptors.PostGraduateActivityDeterminationDescriptorPut,
        Api.Common.Models.Requests.NE.PostGraduateActivityDeterminationDescriptors.PostGraduateActivityDeterminationDescriptorPost,
        Api.Common.Models.Requests.NE.PostGraduateActivityDeterminationDescriptors.PostGraduateActivityDeterminationDescriptorDelete,
        Api.Common.Models.Requests.NE.PostGraduateActivityDeterminationDescriptors.PostGraduateActivityDeterminationDescriptorGetByExample>
    {
        public PostGraduateActivityDeterminationDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.PostGraduateActivityDeterminationDescriptors.PostGraduateActivityDeterminationDescriptorGetByExample request, Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.PostGraduateActivityDeterminationDescriptorId = request.PostGraduateActivityDeterminationDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.SectionDeliveryDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/sectionDeliveryDescriptors")]
    public partial class SectionDeliveryDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.SectionDeliveryDescriptor.NE.SectionDeliveryDescriptor,
        Entities.Common.NE.ISectionDeliveryDescriptor,
        Entities.NHibernate.SectionDeliveryDescriptorAggregate.NE.SectionDeliveryDescriptor,
        Api.Common.Models.Requests.NE.SectionDeliveryDescriptors.SectionDeliveryDescriptorPut,
        Api.Common.Models.Requests.NE.SectionDeliveryDescriptors.SectionDeliveryDescriptorPost,
        Api.Common.Models.Requests.NE.SectionDeliveryDescriptors.SectionDeliveryDescriptorDelete,
        Api.Common.Models.Requests.NE.SectionDeliveryDescriptors.SectionDeliveryDescriptorGetByExample>
    {
        public SectionDeliveryDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.SectionDeliveryDescriptors.SectionDeliveryDescriptorGetByExample request, Entities.Common.NE.ISectionDeliveryDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.SectionDeliveryDescriptorId = request.SectionDeliveryDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.SpecialEducationProgramDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/specialEducationProgramDescriptors")]
    public partial class SpecialEducationProgramDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.SpecialEducationProgramDescriptor.NE.SpecialEducationProgramDescriptor,
        Entities.Common.NE.ISpecialEducationProgramDescriptor,
        Entities.NHibernate.SpecialEducationProgramDescriptorAggregate.NE.SpecialEducationProgramDescriptor,
        Api.Common.Models.Requests.NE.SpecialEducationProgramDescriptors.SpecialEducationProgramDescriptorPut,
        Api.Common.Models.Requests.NE.SpecialEducationProgramDescriptors.SpecialEducationProgramDescriptorPost,
        Api.Common.Models.Requests.NE.SpecialEducationProgramDescriptors.SpecialEducationProgramDescriptorDelete,
        Api.Common.Models.Requests.NE.SpecialEducationProgramDescriptors.SpecialEducationProgramDescriptorGetByExample>
    {
        public SpecialEducationProgramDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.SpecialEducationProgramDescriptors.SpecialEducationProgramDescriptorGetByExample request, Entities.Common.NE.ISpecialEducationProgramDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
            specification.SpecialEducationProgramDescriptorId = request.SpecialEducationProgramDescriptorId;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.StudentEarlyLearningProgramAssociations
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/studentEarlyLearningProgramAssociations")]
    public partial class StudentEarlyLearningProgramAssociationsController : DataManagementControllerBase<
        Api.Common.Models.Resources.StudentEarlyLearningProgramAssociation.NE.StudentEarlyLearningProgramAssociation,
        Entities.Common.NE.IStudentEarlyLearningProgramAssociation,
        Entities.NHibernate.StudentEarlyLearningProgramAssociationAggregate.NE.StudentEarlyLearningProgramAssociation,
        Api.Common.Models.Requests.NE.StudentEarlyLearningProgramAssociations.StudentEarlyLearningProgramAssociationPut,
        Api.Common.Models.Requests.NE.StudentEarlyLearningProgramAssociations.StudentEarlyLearningProgramAssociationPost,
        Api.Common.Models.Requests.NE.StudentEarlyLearningProgramAssociations.StudentEarlyLearningProgramAssociationDelete,
        Api.Common.Models.Requests.NE.StudentEarlyLearningProgramAssociations.StudentEarlyLearningProgramAssociationGetByExample>
    {
        public StudentEarlyLearningProgramAssociationsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.StudentEarlyLearningProgramAssociations.StudentEarlyLearningProgramAssociationGetByExample request, Entities.Common.NE.IStudentEarlyLearningProgramAssociation specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.BeginDate = request.BeginDate;
            specification.EarlyLearningSettingDescriptor = request.EarlyLearningSettingDescriptor;
            specification.EducationOrganizationId = request.EducationOrganizationId;
            specification.EndDate = request.EndDate;
            specification.Id = request.Id;
            specification.ProgramEducationOrganizationId = request.ProgramEducationOrganizationId;
            specification.ProgramName = request.ProgramName;
            specification.ProgramTypeDescriptor = request.ProgramTypeDescriptor;
            specification.ReasonExitedDescriptor = request.ReasonExitedDescriptor;
            specification.ServedOutsideOfRegularSession = request.ServedOutsideOfRegularSession;
            specification.StudentUniqueId = request.StudentUniqueId;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.NE.UnilateralRemovalDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/NE/unilateralRemovalDescriptors")]
    public partial class UnilateralRemovalDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.UnilateralRemovalDescriptor.NE.UnilateralRemovalDescriptor,
        Entities.Common.NE.IUnilateralRemovalDescriptor,
        Entities.NHibernate.UnilateralRemovalDescriptorAggregate.NE.UnilateralRemovalDescriptor,
        Api.Common.Models.Requests.NE.UnilateralRemovalDescriptors.UnilateralRemovalDescriptorPut,
        Api.Common.Models.Requests.NE.UnilateralRemovalDescriptors.UnilateralRemovalDescriptorPost,
        Api.Common.Models.Requests.NE.UnilateralRemovalDescriptors.UnilateralRemovalDescriptorDelete,
        Api.Common.Models.Requests.NE.UnilateralRemovalDescriptors.UnilateralRemovalDescriptorGetByExample>
    {
        public UnilateralRemovalDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.NE.UnilateralRemovalDescriptors.UnilateralRemovalDescriptorGetByExample request, Entities.Common.NE.IUnilateralRemovalDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
            specification.UnilateralRemovalDescriptorId = request.UnilateralRemovalDescriptorId;
        }
    }
}
