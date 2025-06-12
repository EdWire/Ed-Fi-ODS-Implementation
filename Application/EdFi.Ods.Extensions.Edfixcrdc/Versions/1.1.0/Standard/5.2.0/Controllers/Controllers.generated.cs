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

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.AlternativeStatusDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/alternativeStatusDescriptors")]
    public partial class AlternativeStatusDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.AlternativeStatusDescriptor.Edfixcrdc.AlternativeStatusDescriptor,
        Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor,
        Entities.NHibernate.AlternativeStatusDescriptorAggregate.Edfixcrdc.AlternativeStatusDescriptor,
        Api.Common.Models.Requests.Edfixcrdc.AlternativeStatusDescriptors.AlternativeStatusDescriptorPut,
        Api.Common.Models.Requests.Edfixcrdc.AlternativeStatusDescriptors.AlternativeStatusDescriptorPost,
        Api.Common.Models.Requests.Edfixcrdc.AlternativeStatusDescriptors.AlternativeStatusDescriptorDelete,
        Api.Common.Models.Requests.Edfixcrdc.AlternativeStatusDescriptors.AlternativeStatusDescriptorGetByExample>
    {
        public AlternativeStatusDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.AlternativeStatusDescriptors.AlternativeStatusDescriptorGetByExample request, Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.AlternativeStatusDescriptorId = request.AlternativeStatusDescriptorId;
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.ClassGroups
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/classGroups")]
    public partial class ClassGroupsController : DataManagementControllerBase<
        Api.Common.Models.Resources.ClassGroup.Edfixcrdc.ClassGroup,
        Entities.Common.Edfixcrdc.IClassGroup,
        Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroup,
        Api.Common.Models.Requests.Edfixcrdc.ClassGroups.ClassGroupPut,
        Api.Common.Models.Requests.Edfixcrdc.ClassGroups.ClassGroupPost,
        Api.Common.Models.Requests.Edfixcrdc.ClassGroups.ClassGroupDelete,
        Api.Common.Models.Requests.Edfixcrdc.ClassGroups.ClassGroupGetByExample>
    {
        public ClassGroupsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.ClassGroups.ClassGroupGetByExample request, Entities.Common.Edfixcrdc.IClassGroup specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.Capacity = request.Capacity;
            specification.ClassGroupName = request.ClassGroupName;
            specification.CommunityProviderId = request.CommunityProviderId;
            specification.CommunityProviderLocationId = request.CommunityProviderLocationId;
            specification.DaysAvailablePerWeek = request.DaysAvailablePerWeek;
            specification.HoursAvailablePerDay = request.HoursAvailablePerDay;
            specification.Id = request.Id;
            specification.ServiceDescriptor = request.ServiceDescriptor;
            specification.SpecialNeedsProvidedIndicator = request.SpecialNeedsProvidedIndicator;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.CommunityProviderLocations
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/communityProviderLocations")]
    public partial class CommunityProviderLocationsController : DataManagementControllerBase<
        Api.Common.Models.Resources.CommunityProviderLocation.Edfixcrdc.CommunityProviderLocation,
        Entities.Common.Edfixcrdc.ICommunityProviderLocation,
        Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocation,
        Api.Common.Models.Requests.Edfixcrdc.CommunityProviderLocations.CommunityProviderLocationPut,
        Api.Common.Models.Requests.Edfixcrdc.CommunityProviderLocations.CommunityProviderLocationPost,
        Api.Common.Models.Requests.Edfixcrdc.CommunityProviderLocations.CommunityProviderLocationDelete,
        Api.Common.Models.Requests.Edfixcrdc.CommunityProviderLocations.CommunityProviderLocationGetByExample>
    {
        public CommunityProviderLocationsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.CommunityProviderLocations.CommunityProviderLocationGetByExample request, Entities.Common.Edfixcrdc.ICommunityProviderLocation specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.AddressTypeDescriptor = request.AddressTypeDescriptor;
            specification.AgeRangeDescription = request.AgeRangeDescription;
            specification.ApartmentRoomSuiteNumber = request.ApartmentRoomSuiteNumber;
            specification.BuildingSiteNumber = request.BuildingSiteNumber;
            specification.Capacity = request.Capacity;
            specification.City = request.City;
            specification.CommunityProviderId = request.CommunityProviderId;
            specification.CommunityProviderLocationId = request.CommunityProviderLocationId;
            specification.CountyFIPSCode = request.CountyFIPSCode;
            specification.Id = request.Id;
            specification.NameOfCounty = request.NameOfCounty;
            specification.OldestAgeAccepted = request.OldestAgeAccepted;
            specification.PostalCode = request.PostalCode;
            specification.SpecialNeedsProvidedIndicator = request.SpecialNeedsProvidedIndicator;
            specification.StateAbbreviationDescriptor = request.StateAbbreviationDescriptor;
            specification.StreetNumberName = request.StreetNumberName;
            specification.TimeClose = request.TimeClose;
            specification.TimeOpen = request.TimeOpen;
            specification.YoungestAgeAccepted = request.YoungestAgeAccepted;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.MeetingDayDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/meetingDayDescriptors")]
    public partial class MeetingDayDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.MeetingDayDescriptor.Edfixcrdc.MeetingDayDescriptor,
        Entities.Common.Edfixcrdc.IMeetingDayDescriptor,
        Entities.NHibernate.MeetingDayDescriptorAggregate.Edfixcrdc.MeetingDayDescriptor,
        Api.Common.Models.Requests.Edfixcrdc.MeetingDayDescriptors.MeetingDayDescriptorPut,
        Api.Common.Models.Requests.Edfixcrdc.MeetingDayDescriptors.MeetingDayDescriptorPost,
        Api.Common.Models.Requests.Edfixcrdc.MeetingDayDescriptors.MeetingDayDescriptorDelete,
        Api.Common.Models.Requests.Edfixcrdc.MeetingDayDescriptors.MeetingDayDescriptorGetByExample>
    {
        public MeetingDayDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.MeetingDayDescriptors.MeetingDayDescriptorGetByExample request, Entities.Common.Edfixcrdc.IMeetingDayDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.MeetingDayDescriptorId = request.MeetingDayDescriptorId;
            specification.Namespace = request.Namespace;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.ProgramCostDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/programCostDescriptors")]
    public partial class ProgramCostDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.ProgramCostDescriptor.Edfixcrdc.ProgramCostDescriptor,
        Entities.Common.Edfixcrdc.IProgramCostDescriptor,
        Entities.NHibernate.ProgramCostDescriptorAggregate.Edfixcrdc.ProgramCostDescriptor,
        Api.Common.Models.Requests.Edfixcrdc.ProgramCostDescriptors.ProgramCostDescriptorPut,
        Api.Common.Models.Requests.Edfixcrdc.ProgramCostDescriptors.ProgramCostDescriptorPost,
        Api.Common.Models.Requests.Edfixcrdc.ProgramCostDescriptors.ProgramCostDescriptorDelete,
        Api.Common.Models.Requests.Edfixcrdc.ProgramCostDescriptors.ProgramCostDescriptorGetByExample>
    {
        public ProgramCostDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.ProgramCostDescriptors.ProgramCostDescriptorGetByExample request, Entities.Common.Edfixcrdc.IProgramCostDescriptor specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.CodeValue = request.CodeValue;
            specification.Description = request.Description;
            specification.EffectiveBeginDate = request.EffectiveBeginDate;
            specification.EffectiveEndDate = request.EffectiveEndDate;
            specification.Id = request.Id;
            specification.Namespace = request.Namespace;
            specification.ProgramCostDescriptorId = request.ProgramCostDescriptorId;
            specification.ShortDescription = request.ShortDescription;
        }
    }
}

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

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.StudentClassGroupAssociations
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/studentClassGroupAssociations")]
    public partial class StudentClassGroupAssociationsController : DataManagementControllerBase<
        Api.Common.Models.Resources.StudentClassGroupAssociation.Edfixcrdc.StudentClassGroupAssociation,
        Entities.Common.Edfixcrdc.IStudentClassGroupAssociation,
        Entities.NHibernate.StudentClassGroupAssociationAggregate.Edfixcrdc.StudentClassGroupAssociation,
        Api.Common.Models.Requests.Edfixcrdc.StudentClassGroupAssociations.StudentClassGroupAssociationPut,
        Api.Common.Models.Requests.Edfixcrdc.StudentClassGroupAssociations.StudentClassGroupAssociationPost,
        Api.Common.Models.Requests.Edfixcrdc.StudentClassGroupAssociations.StudentClassGroupAssociationDelete,
        Api.Common.Models.Requests.Edfixcrdc.StudentClassGroupAssociations.StudentClassGroupAssociationGetByExample>
    {
        public StudentClassGroupAssociationsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.StudentClassGroupAssociations.StudentClassGroupAssociationGetByExample request, Entities.Common.Edfixcrdc.IStudentClassGroupAssociation specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.BeginDate = request.BeginDate;
            specification.ClassGroupName = request.ClassGroupName;
            specification.CommunityProviderId = request.CommunityProviderId;
            specification.CommunityProviderLocationId = request.CommunityProviderLocationId;
            specification.EndDate = request.EndDate;
            specification.Id = request.Id;
            specification.ReasonExitedDescriptor = request.ReasonExitedDescriptor;
            specification.SpecialNeedsProvidedIndicator = request.SpecialNeedsProvidedIndicator;
            specification.StudentUniqueId = request.StudentUniqueId;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.StudentCommunityProviderLocationAssociations
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/studentCommunityProviderLocationAssociations")]
    public partial class StudentCommunityProviderLocationAssociationsController : DataManagementControllerBase<
        Api.Common.Models.Resources.StudentCommunityProviderLocationAssociation.Edfixcrdc.StudentCommunityProviderLocationAssociation,
        Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation,
        Entities.NHibernate.StudentCommunityProviderLocationAssociationAggregate.Edfixcrdc.StudentCommunityProviderLocationAssociation,
        Api.Common.Models.Requests.Edfixcrdc.StudentCommunityProviderLocationAssociations.StudentCommunityProviderLocationAssociationPut,
        Api.Common.Models.Requests.Edfixcrdc.StudentCommunityProviderLocationAssociations.StudentCommunityProviderLocationAssociationPost,
        Api.Common.Models.Requests.Edfixcrdc.StudentCommunityProviderLocationAssociations.StudentCommunityProviderLocationAssociationDelete,
        Api.Common.Models.Requests.Edfixcrdc.StudentCommunityProviderLocationAssociations.StudentCommunityProviderLocationAssociationGetByExample>
    {
        public StudentCommunityProviderLocationAssociationsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.StudentCommunityProviderLocationAssociations.StudentCommunityProviderLocationAssociationGetByExample request, Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation specification)
        {
            // Copy all existing values
            specification.SuspendReferenceAssignmentCheck();
            specification.BeginDate = request.BeginDate;
            specification.CommunityProviderId = request.CommunityProviderId;
            specification.CommunityProviderLocationId = request.CommunityProviderLocationId;
            specification.EndDate = request.EndDate;
            specification.EnrollmentStatus = request.EnrollmentStatus;
            specification.Id = request.Id;
            specification.ReasonExitedDescriptor = request.ReasonExitedDescriptor;
            specification.StudentUniqueId = request.StudentUniqueId;
        }
    }
}

namespace EdFi.Ods.Api.Services.Controllers.Edfixcrdc.UngradedDetailDescriptors
{
    [ApiExplorerSettings(IgnoreApi = true)]
    [ExcludeFromCodeCoverage]
    [ApiController]
    [Authorize]
    [ApplyOdsRouteRootTemplate, Route($"{RouteConstants.DataManagementRoutePrefix}/edfixcrdc/ungradedDetailDescriptors")]
    public partial class UngradedDetailDescriptorsController : DataManagementControllerBase<
        Api.Common.Models.Resources.UngradedDetailDescriptor.Edfixcrdc.UngradedDetailDescriptor,
        Entities.Common.Edfixcrdc.IUngradedDetailDescriptor,
        Entities.NHibernate.UngradedDetailDescriptorAggregate.Edfixcrdc.UngradedDetailDescriptor,
        Api.Common.Models.Requests.Edfixcrdc.UngradedDetailDescriptors.UngradedDetailDescriptorPut,
        Api.Common.Models.Requests.Edfixcrdc.UngradedDetailDescriptors.UngradedDetailDescriptorPost,
        Api.Common.Models.Requests.Edfixcrdc.UngradedDetailDescriptors.UngradedDetailDescriptorDelete,
        Api.Common.Models.Requests.Edfixcrdc.UngradedDetailDescriptors.UngradedDetailDescriptorGetByExample>
    {
        public UngradedDetailDescriptorsController(IPipelineFactory pipelineFactory, IEdFiProblemDetailsProvider problemDetailsProvider, IDefaultPageSizeLimitProvider defaultPageSizeLimitProvider, ApiSettings apiSettings, IContextProvider<ProfileContentTypeContext> profileContentTypeContextProvider, IContextProvider<DataManagementResourceContext> dataManagementResourceContextProvider, ILogContextAccessor logContextAccessor)
            : base(pipelineFactory, problemDetailsProvider, defaultPageSizeLimitProvider, apiSettings, profileContentTypeContextProvider, dataManagementResourceContextProvider, logContextAccessor)
        {
        }

        protected override void MapAll(Api.Common.Models.Requests.Edfixcrdc.UngradedDetailDescriptors.UngradedDetailDescriptorGetByExample request, Entities.Common.Edfixcrdc.IUngradedDetailDescriptor specification)
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
            specification.UngradedDetailDescriptorId = request.UngradedDetailDescriptorId;
        }
    }
}
