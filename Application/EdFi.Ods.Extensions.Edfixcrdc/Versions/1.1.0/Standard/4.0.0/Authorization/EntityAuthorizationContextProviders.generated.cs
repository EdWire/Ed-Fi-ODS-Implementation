
using System;
using System.Linq;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Common.Security.Claims;
using EdFi.Ods.Entities.Common.Edfixcrdc;
using EdFi.Ods.Api.Security.AuthorizationStrategies.Relationships;

#region Aggregate Entity Includes
using EdFi.Ods.Entities.NHibernate.ClassGroupAggregate.Edfixcrdc;
using EdFi.Ods.Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc;
using EdFi.Ods.Entities.NHibernate.StudentClassGroupAssociationAggregate.Edfixcrdc;
using EdFi.Ods.Entities.NHibernate.StudentCommunityProviderLocationAssociationAggregate.Edfixcrdc;
#endregion

namespace EdFi.Ods.Api.Security.Authorization.ContextDataProviders.Edfixcrdc
{

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the edfixcrdc.ClassGroup table of the ClassGroup aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class ClassGroupRelationshipsAuthorizationContextDataProvider<TContextData> : IRelationshipsAuthorizationContextDataProvider<IClassGroup, TContextData>
        where TContextData : RelationshipsAuthorizationContextData, new()
    {
        /// <summary>
        /// Creates and returns an <see cref="TContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(IClassGroup resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'classGroup' resource for obtaining authorization context data cannot be null.");

            var entity = resource as ClassGroup;

            dynamic contextData = new TContextData();
            contextData.CommunityProviderId = entity.CommunityProviderId == default(int) ? null as int? : entity.CommunityProviderId; // Primary key property, Only Education Organization Id present
            return (TContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    "CommunityProviderId",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(object resource)
        {
            return GetContextData((ClassGroup) resource);
        }
    }

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the edfixcrdc.CommunityProviderLocation table of the CommunityProviderLocation aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationRelationshipsAuthorizationContextDataProvider<TContextData> : IRelationshipsAuthorizationContextDataProvider<ICommunityProviderLocation, TContextData>
        where TContextData : RelationshipsAuthorizationContextData, new()
    {
        /// <summary>
        /// Creates and returns an <see cref="TContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(ICommunityProviderLocation resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'communityProviderLocation' resource for obtaining authorization context data cannot be null.");

            var entity = resource as CommunityProviderLocation;

            dynamic contextData = new TContextData();
            contextData.CommunityProviderId = entity.CommunityProviderId == default(int) ? null as int? : entity.CommunityProviderId; // Primary key property, Only Education Organization Id present
            return (TContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    "CommunityProviderId",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(object resource)
        {
            return GetContextData((CommunityProviderLocation) resource);
        }
    }

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the edfixcrdc.StudentClassGroupAssociation table of the StudentClassGroupAssociation aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationRelationshipsAuthorizationContextDataProvider<TContextData> : IRelationshipsAuthorizationContextDataProvider<IStudentClassGroupAssociation, TContextData>
        where TContextData : RelationshipsAuthorizationContextData, new()
    {
        /// <summary>
        /// Creates and returns an <see cref="TContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(IStudentClassGroupAssociation resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'studentClassGroupAssociation' resource for obtaining authorization context data cannot be null.");

            var entity = resource as StudentClassGroupAssociation;

            dynamic contextData = new TContextData();
            contextData.CommunityProviderId = entity.CommunityProviderId == default(int) ? null as int? : entity.CommunityProviderId; // Primary key property, Only Education Organization Id present
            contextData.StudentUSI = entity.StudentUSI == default(int) ? null as int? : entity.StudentUSI; // Primary key property, USI
            return (TContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    "CommunityProviderId",
                    "StudentUSI",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(object resource)
        {
            return GetContextData((StudentClassGroupAssociation) resource);
        }
    }

    /// <summary>
    /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance for making authorization decisions for access to the edfixcrdc.StudentCommunityProviderLocationAssociation table of the StudentCommunityProviderLocationAssociation aggregate in the Ods Database.
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationRelationshipsAuthorizationContextDataProvider<TContextData> : IRelationshipsAuthorizationContextDataProvider<IStudentCommunityProviderLocationAssociation, TContextData>
        where TContextData : RelationshipsAuthorizationContextData, new()
    {
        /// <summary>
        /// Creates and returns an <see cref="TContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(IStudentCommunityProviderLocationAssociation resource)
        {
            if (resource == null)
                throw new ArgumentNullException("resource", "The 'studentCommunityProviderLocationAssociation' resource for obtaining authorization context data cannot be null.");

            var entity = resource as StudentCommunityProviderLocationAssociation;

            dynamic contextData = new TContextData();
            contextData.CommunityProviderId = entity.CommunityProviderId == default(int) ? null as int? : entity.CommunityProviderId; // Primary key property, Only Education Organization Id present
            contextData.StudentUSI = entity.StudentUSI == default(int) ? null as int? : entity.StudentUSI; // Primary key property, USI
            return (TContextData) contextData;
        }

        /// <summary>
        ///  Creates and returns a signature key based on the resource, which can then be used to get and instance of IEdFiSignatureAuthorizationProvider
        /// </summary>
        public string[] GetAuthorizationContextPropertyNames()
        {
           var properties = new string[]
                {
                    "CommunityProviderId",
                    "StudentUSI",
                };

           return properties;
        }

        /// <summary>
        /// Creates and returns an <see cref="RelationshipsAuthorizationContextData"/> instance based on the supplied resource.
        /// </summary>
        public TContextData GetContextData(object resource)
        {
            return GetContextData((StudentCommunityProviderLocationAssociation) resource);
        }
    }

}
