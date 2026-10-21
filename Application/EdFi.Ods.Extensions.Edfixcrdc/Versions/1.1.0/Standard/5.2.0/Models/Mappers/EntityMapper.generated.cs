using System;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Extensions;
using EdFi.Ods.Api.Providers;
using EdFi.Ods.Common.Dependencies;
using EdFi.Ods.Common.Providers;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Constants;
using EdFi.Ods.Common.Conventions;
using EdFi.Ods.Common.Exceptions;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Models;
using EdFi.Ods.Common.Models.Domain;
using EdFi.Ods.Entities.Common.EdFi;
// Aggregate: RestraintCategoryDescriptor

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.RestraintCategoryDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class RestraintCategoryDescriptorMapper
    {
        private static readonly FullName _fullName_edfixcrdc_RestraintCategoryDescriptor = new FullName("edfixcrdc", "RestraintCategoryDescriptor");
    
        public static bool SynchronizeTo(this IRestraintCategoryDescriptor source, IRestraintCategoryDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (RestraintCategoryDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_RestraintCategoryDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on RestraintCategoryDescriptor
                throw new KeyChangeNotSupportedException("RestraintCategoryDescriptor");
            }


            // Copy inherited non-PK properties


            if ((mappingContract?.IsCodeValueSupported != false)
                && target.CodeValue != source.CodeValue)
            {
                target.CodeValue = source.CodeValue;
                isModified = true;
            }

            if ((mappingContract?.IsDescriptionSupported != false)
                && target.Description != source.Description)
            {
                target.Description = source.Description;
                isModified = true;
            }

            if ((mappingContract?.IsEffectiveBeginDateSupported != false)
                && target.EffectiveBeginDate != source.EffectiveBeginDate)
            {
                target.EffectiveBeginDate = source.EffectiveBeginDate;
                isModified = true;
            }

            if ((mappingContract?.IsEffectiveEndDateSupported != false)
                && target.EffectiveEndDate != source.EffectiveEndDate)
            {
                target.EffectiveEndDate = source.EffectiveEndDate;
                isModified = true;
            }

            if ((mappingContract?.IsNamespaceSupported != false)
                && target.Namespace != source.Namespace)
            {
                target.Namespace = source.Namespace;
                isModified = true;
            }

            if ((mappingContract?.IsShortDescriptionSupported != false)
                && target.ShortDescription != source.ShortDescription)
            {
                target.ShortDescription = source.ShortDescription;
                isModified = true;
            }

            // Copy non-PK properties


            // Synch inherited lists

            // Sync lists


            return isModified;
        }

        public static void MapTo(this IRestraintCategoryDescriptor source, IRestraintCategoryDescriptor target, Action<IRestraintCategoryDescriptor, IRestraintCategoryDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (RestraintCategoryDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_RestraintCategoryDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.RestraintCategoryDescriptorId = source.RestraintCategoryDescriptorId;

            // Copy inherited non-PK properties

            if (mappingContract?.IsCodeValueSupported != false)
                target.CodeValue = source.CodeValue;

            if (mappingContract?.IsDescriptionSupported != false)
                target.Description = source.Description;

            if (mappingContract?.IsEffectiveBeginDateSupported != false)
                target.EffectiveBeginDate = source.EffectiveBeginDate;

            if (mappingContract?.IsEffectiveEndDateSupported != false)
                target.EffectiveEndDate = source.EffectiveEndDate;

            if (mappingContract?.IsNamespaceSupported != false)
                target.Namespace = source.Namespace;

            if (mappingContract?.IsShortDescriptionSupported != false)
                target.ShortDescription = source.ShortDescription;

            // Copy non-PK properties

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map inherited lists

            // Map lists


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

}
// Aggregate: RestraintEvent

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.RestraintEventAggregate
{
    [ExcludeFromCodeCoverage]
    public static class RestraintEventExtensionMapper
    {
        private static readonly FullName _fullName_edfixcrdc_RestraintEventExtension = new FullName("edfixcrdc", "RestraintEventExtension");
    
        public static bool SynchronizeTo(this IRestraintEventExtension source, IRestraintEventExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (RestraintEventExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_RestraintEventExtension);


            // Copy non-PK properties


            // Sync lists
            if (mappingContract?.IsRestraintEventRestraintCategoriesSupported ?? true)
            {
                isModified |=
                    source.RestraintEventRestraintCategories.SynchronizeCollectionTo(
                        target.RestraintEventRestraintCategories,
                        onChildAdded: child =>
                            {
                                child.RestraintEventExtension = target;

                                // Extension class "children" need to reference the Ed-Fi Standard entity as the parent
                                (child as IChildEntity)?.SetParent(target.RestraintEvent);
                            },
                        itemCreatable: mappingContract?.IsRestraintEventRestraintCategoriesItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsRestraintEventRestraintCategoryIncluded?.Invoke(item) ?? true);
            }



            return isModified;
        }

        public static void MapTo(this IRestraintEventExtension source, IRestraintEventExtension target, Action<IRestraintEventExtension, IRestraintEventExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (RestraintEventExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_RestraintEventExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists

            if (mappingContract?.IsRestraintEventRestraintCategoriesSupported != false)
            {
                source.RestraintEventRestraintCategories.MapCollectionTo(target.RestraintEventRestraintCategories, mappingContract?.IsRestraintEventRestraintCategoriesItemCreatable ?? true, target.RestraintEvent, mappingContract?.IsRestraintEventRestraintCategoryIncluded);
            }


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

    [ExcludeFromCodeCoverage]
    public static class RestraintEventRestraintCategoryMapper
    {
        private static readonly FullName _fullName_edfixcrdc_RestraintEventRestraintCategory = new FullName("edfixcrdc", "RestraintEventRestraintCategory");
    
        public static bool SynchronizeTo(this IRestraintEventRestraintCategory source, IRestraintEventRestraintCategory target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (RestraintEventRestraintCategoryMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_RestraintEventRestraintCategory);


            // Copy non-PK properties


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IRestraintEventRestraintCategory source, IRestraintEventRestraintCategory target, Action<IRestraintEventRestraintCategory, IRestraintEventRestraintCategory> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (RestraintEventRestraintCategoryMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_RestraintEventRestraintCategory);
    
            // Copy contextual primary key values
            target.RestraintCategoryDescriptor = source.RestraintCategoryDescriptor;

            // Copy non-PK properties

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

}
