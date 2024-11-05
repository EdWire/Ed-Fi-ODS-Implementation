using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Infrastructure.Pipelines.CreateOrUpdate;
using EdFi.Ods.Api.Infrastructure.Pipelines.Factories;

namespace EdFi.Ods.Api.Pipelines.Edfixcrdc
{
    [ExcludeFromCodeCoverage]
    public class AlternativeStatusDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.AlternativeStatusDescriptor.Edfixcrdc.AlternativeStatusDescriptor, Entities.NHibernate.AlternativeStatusDescriptorAggregate.Edfixcrdc.AlternativeStatusDescriptor>
    {
        public AlternativeStatusDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class ClassGroupCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.ClassGroup.Edfixcrdc.ClassGroup, Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroup>
    {
        public ClassGroupCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.CommunityProviderLocation.Edfixcrdc.CommunityProviderLocation, Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocation>
    {
        public CommunityProviderLocationCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class MeetingDayDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.MeetingDayDescriptor.Edfixcrdc.MeetingDayDescriptor, Entities.NHibernate.MeetingDayDescriptorAggregate.Edfixcrdc.MeetingDayDescriptor>
    {
        public MeetingDayDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class ProgramCostDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.ProgramCostDescriptor.Edfixcrdc.ProgramCostDescriptor, Entities.NHibernate.ProgramCostDescriptorAggregate.Edfixcrdc.ProgramCostDescriptor>
    {
        public ProgramCostDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.RestraintCategoryDescriptor.Edfixcrdc.RestraintCategoryDescriptor, Entities.NHibernate.RestraintCategoryDescriptorAggregate.Edfixcrdc.RestraintCategoryDescriptor>
    {
        public RestraintCategoryDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.StudentClassGroupAssociation.Edfixcrdc.StudentClassGroupAssociation, Entities.NHibernate.StudentClassGroupAssociationAggregate.Edfixcrdc.StudentClassGroupAssociation>
    {
        public StudentClassGroupAssociationCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.StudentCommunityProviderLocationAssociation.Edfixcrdc.StudentCommunityProviderLocationAssociation, Entities.NHibernate.StudentCommunityProviderLocationAssociationAggregate.Edfixcrdc.StudentCommunityProviderLocationAssociation>
    {
        public StudentCommunityProviderLocationAssociationCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class UngradedDetailDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.UngradedDetailDescriptor.Edfixcrdc.UngradedDetailDescriptor, Entities.NHibernate.UngradedDetailDescriptorAggregate.Edfixcrdc.UngradedDetailDescriptor>
    {
        public UngradedDetailDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

}
