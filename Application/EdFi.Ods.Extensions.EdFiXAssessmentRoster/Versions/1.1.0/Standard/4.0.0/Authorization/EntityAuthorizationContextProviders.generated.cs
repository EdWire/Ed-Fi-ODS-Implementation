
using System;
using System.Linq;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Common.Security.Claims;
using EdFi.Ods.Entities.Common.EdFiXAssessmentRoster;
using EdFi.Ods.Api.Security.AuthorizationStrategies.Relationships;

#region Aggregate Entity Includes
using EdFi.Ods.Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster;
using EdFi.Ods.Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster;
#endregion

namespace EdFi.Ods.Api.Security.Authorization.ContextDataProviders.EdFiXAssessmentRoster
{

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the edfixassessmentroster.AssessmentAdministration table of the AssessmentAdministration aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationRelationshipsAuthorizationContextDataProvider<TContextData> : IRelationshipsAuthorizationContextDataProvider<IAssessmentAdministration, TContextData>
        where TContextData : RelationshipsAuthorizationContextData, new()
    {
        /// <summary>
        /// Creates and returns an <see cref="TContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(IAssessmentAdministration resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'assessmentAdministration' resource for obtaining authorization context data cannot be null.");

            var entity = resource as AssessmentAdministration;

            dynamic contextData = new TContextData();
            // AssigningEducationOrganizationId = entity.AssigningEducationOrganizationId, // Primary key property, Role name applied
            return (TContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    // "AssigningEducationOrganizationId",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(object resource)
        {
            return GetContextData((AssessmentAdministration) resource);
        }
    }

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the edfixassessmentroster.StudentAssessmentRegistration table of the StudentAssessmentRegistration aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationRelationshipsAuthorizationContextDataProvider<TContextData> : IRelationshipsAuthorizationContextDataProvider<IStudentAssessmentRegistration, TContextData>
        where TContextData : RelationshipsAuthorizationContextData, new()
    {
        /// <summary>
        /// Creates and returns an <see cref="TContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(IStudentAssessmentRegistration resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'studentAssessmentRegistration' resource for obtaining authorization context data cannot be null.");

            var entity = resource as StudentAssessmentRegistration;

            dynamic contextData = new TContextData();
            // AssigningEducationOrganizationId = entity.AssigningEducationOrganizationId, // Primary key property, Role name applied
            contextData.EducationOrganizationId = entity.EducationOrganizationId == default(int) ? null as int? : entity.EducationOrganizationId; // Primary key property, Only Education Organization Id present
            // ReportingEducationOrganizationId = entity.ReportingEducationOrganizationId, // Role name applied and not part of primary key
            // SchoolId = entity.SchoolId, // Not part of primary key
            contextData.StudentUSI = entity.StudentUSI == default(int) ? null as int? : entity.StudentUSI; // Primary key property, USI
            // TestingEducationOrganizationId = entity.TestingEducationOrganizationId, // Role name applied and not part of primary key
            return (TContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    // "AssigningEducationOrganizationId",
                    "EducationOrganizationId",
                    // "ReportingEducationOrganizationId",
                    // "SchoolId",
                    "StudentUSI",
                    // "TestingEducationOrganizationId",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(object resource)
        {
            return GetContextData((StudentAssessmentRegistration) resource);
        }
    }

}
