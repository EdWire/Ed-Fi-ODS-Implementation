using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Infrastructure.Pipelines.CreateOrUpdate;
using EdFi.Ods.Api.Infrastructure.Pipelines.Factories;

namespace EdFi.Ods.Api.Pipelines.EdFiXAssessmentRoster
{
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministration, Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministration>
    {
        public AssessmentAdministrationCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationCreateOrUpdatePipeline : CreateOrUpdatePipeline<Common.Models.Resources.StudentAssessmentRegistration.EdFiXAssessmentRoster.StudentAssessmentRegistration, Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster.StudentAssessmentRegistration>
    {
        public StudentAssessmentRegistrationCreateOrUpdatePipeline(IPipelineFactory factory) : base(factory) { }
    }

}
