using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Infrastructure.Pipelines.CreateOrUpdate;
using EdFi.Ods.Api.Infrastructure.Pipelines.Factories;

namespace EdFi.Ods.Api.Pipelines.EdFiXLearningModality
{
    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.ModalityTimeTypeDescriptor.EdFiXLearningModality.ModalityTimeTypeDescriptor, Entities.NHibernate.ModalityTimeTypeDescriptorAggregate.EdFiXLearningModality.ModalityTimeTypeDescriptor>
    {
        public ModalityTimeTypeDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptorCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.ModalityTypeDescriptor.EdFiXLearningModality.ModalityTypeDescriptor, Entities.NHibernate.ModalityTypeDescriptorAggregate.EdFiXLearningModality.ModalityTypeDescriptor>
    {
        public ModalityTypeDescriptorCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

}
