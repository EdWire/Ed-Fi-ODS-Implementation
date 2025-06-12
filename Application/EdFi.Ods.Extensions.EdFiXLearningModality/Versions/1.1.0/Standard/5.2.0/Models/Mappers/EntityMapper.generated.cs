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
// Aggregate: ModalityTimeTypeDescriptor

namespace EdFi.Ods.Entities.Common.EdFiXLearningModality //.ModalityTimeTypeDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class ModalityTimeTypeDescriptorMapper
    {
        private static readonly FullName _fullName_edfixlearningmodality_ModalityTimeTypeDescriptor = new FullName("edfixlearningmodality", "ModalityTimeTypeDescriptor");
    
        public static bool SynchronizeTo(this IModalityTimeTypeDescriptor source, IModalityTimeTypeDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ModalityTimeTypeDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ModalityTimeTypeDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on ModalityTimeTypeDescriptor
                throw new KeyChangeNotSupportedException("ModalityTimeTypeDescriptor");
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

        public static void MapTo(this IModalityTimeTypeDescriptor source, IModalityTimeTypeDescriptor target, Action<IModalityTimeTypeDescriptor, IModalityTimeTypeDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ModalityTimeTypeDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ModalityTimeTypeDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.ModalityTimeTypeDescriptorId = source.ModalityTimeTypeDescriptorId;

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
// Aggregate: ModalityTypeDescriptor

namespace EdFi.Ods.Entities.Common.EdFiXLearningModality //.ModalityTypeDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class ModalityTypeDescriptorMapper
    {
        private static readonly FullName _fullName_edfixlearningmodality_ModalityTypeDescriptor = new FullName("edfixlearningmodality", "ModalityTypeDescriptor");
    
        public static bool SynchronizeTo(this IModalityTypeDescriptor source, IModalityTypeDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ModalityTypeDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ModalityTypeDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on ModalityTypeDescriptor
                throw new KeyChangeNotSupportedException("ModalityTypeDescriptor");
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

        public static void MapTo(this IModalityTypeDescriptor source, IModalityTypeDescriptor target, Action<IModalityTypeDescriptor, IModalityTypeDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ModalityTypeDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ModalityTypeDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.ModalityTypeDescriptorId = source.ModalityTypeDescriptorId;

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
// Aggregate: Program

namespace EdFi.Ods.Entities.Common.EdFiXLearningModality //.ProgramAggregate
{
    [ExcludeFromCodeCoverage]
    public static class ProgramExtensionMapper
    {
        private static readonly FullName _fullName_edfixlearningmodality_ProgramExtension = new FullName("edfixlearningmodality", "ProgramExtension");
    
        public static bool SynchronizeTo(this IProgramExtension source, IProgramExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ProgramExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ProgramExtension);


            // Copy non-PK properties


            // Sync lists
            if (mappingContract?.IsProgramLearningModalitiesSupported ?? true)
            {
                isModified |=
                    source.ProgramLearningModalities.SynchronizeCollectionTo(
                        target.ProgramLearningModalities,
                        onChildAdded: child =>
                            {
                                child.ProgramExtension = target;

                                // Extension class "children" need to reference the Ed-Fi Standard entity as the parent
                                (child as IChildEntity)?.SetParent(target.Program);
                            },
                        itemCreatable: mappingContract?.IsProgramLearningModalitiesItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsProgramLearningModalityIncluded?.Invoke(item) ?? true);
            }



            return isModified;
        }

        public static void MapTo(this IProgramExtension source, IProgramExtension target, Action<IProgramExtension, IProgramExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ProgramExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ProgramExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists

            if (mappingContract?.IsProgramLearningModalitiesSupported != false)
            {
                source.ProgramLearningModalities.MapCollectionTo(target.ProgramLearningModalities, mappingContract?.IsProgramLearningModalitiesItemCreatable ?? true, target.Program, mappingContract?.IsProgramLearningModalityIncluded);
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
    public static class ProgramLearningModalityMapper
    {
        private static readonly FullName _fullName_edfixlearningmodality_ProgramLearningModality = new FullName("edfixlearningmodality", "ProgramLearningModality");
    
        public static bool SynchronizeTo(this IProgramLearningModality source, IProgramLearningModality target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ProgramLearningModalityMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ProgramLearningModality);


            // Copy non-PK properties

            if ((mappingContract?.IsModalityTimeSupported != false)
                && target.ModalityTime != source.ModalityTime)
            {
                target.ModalityTime = source.ModalityTime;
                isModified = true;
            }

            if ((mappingContract?.IsModalityTimeTypeDescriptorSupported != false)
                && target.ModalityTimeTypeDescriptor != source.ModalityTimeTypeDescriptor)
            {
                target.ModalityTimeTypeDescriptor = source.ModalityTimeTypeDescriptor;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IProgramLearningModality source, IProgramLearningModality target, Action<IProgramLearningModality, IProgramLearningModality> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ProgramLearningModalityMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ProgramLearningModality);
    
            // Copy contextual primary key values
            target.ModalityTypeDescriptor = source.ModalityTypeDescriptor;

            // Copy non-PK properties

            if (mappingContract?.IsModalityTimeSupported != false)
                target.ModalityTime = source.ModalityTime;

            if (mappingContract?.IsModalityTimeTypeDescriptorSupported != false)
                target.ModalityTimeTypeDescriptor = source.ModalityTimeTypeDescriptor;

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
