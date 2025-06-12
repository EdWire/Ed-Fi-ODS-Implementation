
using System;
using System.Linq;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Common.Security.Claims;
using EdFi.Ods.Entities.Common.NE;
using EdFi.Ods.Api.Security.AuthorizationStrategies.Relationships;

#region Aggregate Entity Includes
using EdFi.Ods.Entities.NHibernate.PostGraduateActivityAggregate.NE;
using EdFi.Ods.Entities.NHibernate.StudentEarlyLearningProgramAssociationAggregate.NE;
#endregion

namespace EdFi.Ods.Api.Security.Authorization.ContextDataProviders.NE
{

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the ne.PostGraduateActivity table of the PostGraduateActivity aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityRelationshipsAuthorizationContextDataProvider : IRelationshipsAuthorizationContextDataProvider<IPostGraduateActivity>
    {
        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public RelationshipsAuthorizationContextData GetContextData(IPostGraduateActivity resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'postGraduateActivity' resource for obtaining authorization context data cannot be null.");

            var entity = resource as PostGraduateActivity;

            dynamic contextData = new RelationshipsAuthorizationContextData();
            contextData.LocalEducationAgencyId = entity.LocalEducationAgencyId == default(long) ? null as long? : entity.LocalEducationAgencyId; // Primary key property, Only Education Organization Id present
            contextData.StudentUSI = entity.StudentUSI == default(int) ? null as int? : entity.StudentUSI; // Primary key property, USI
            return (RelationshipsAuthorizationContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    "LocalEducationAgencyId",
                    "StudentUSI",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public RelationshipsAuthorizationContextData GetContextData(object resource)
        {
            return GetContextData((PostGraduateActivity) resource);
        }
    }

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the ne.StudentEarlyLearningProgramAssociation table of the StudentEarlyLearningProgramAssociation aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociationRelationshipsAuthorizationContextDataProvider : IRelationshipsAuthorizationContextDataProvider<IStudentEarlyLearningProgramAssociation>
    {
        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public RelationshipsAuthorizationContextData GetContextData(IStudentEarlyLearningProgramAssociation resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'studentEarlyLearningProgramAssociation' resource for obtaining authorization context data cannot be null.");

            var entity = resource as StudentEarlyLearningProgramAssociation;

            dynamic contextData = new RelationshipsAuthorizationContextData();
            contextData.EducationOrganizationId = entity.EducationOrganizationId == default(long) ? null as long? : entity.EducationOrganizationId; // Primary key property, Only Education Organization Id present
            // ProgramEducationOrganizationId = entity.ProgramEducationOrganizationId, // Primary key property, Role name applied
            contextData.StudentUSI = entity.StudentUSI == default(int) ? null as int? : entity.StudentUSI; // Primary key property, USI
            return (RelationshipsAuthorizationContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    "EducationOrganizationId",
                    // "ProgramEducationOrganizationId",
                    "StudentUSI",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public RelationshipsAuthorizationContextData GetContextData(object resource)
        {
            return GetContextData((StudentEarlyLearningProgramAssociation) resource);
        }
    }

}
