using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Infrastructure.Pipelines.CreateOrUpdate;
using EdFi.Ods.Api.Infrastructure.Pipelines.Factories;

namespace EdFi.Ods.Api.Pipelines.Edfixcrdc
{
    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.RestraintCategoryDescriptor.Edfixcrdc.RestraintCategoryDescriptor, Entities.NHibernate.RestraintCategoryDescriptorAggregate.Edfixcrdc.RestraintCategoryDescriptor>
    {
        public RestraintCategoryDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

}
