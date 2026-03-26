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
// Aggregate: CalendarDate

namespace EdFi.Ods.Entities.Common.NE //.CalendarDateAggregate
{
    [ExcludeFromCodeCoverage]
    public static class CalendarDateExtensionMapper
    {
        private static readonly FullName _fullName_ne_CalendarDateExtension = new FullName("ne", "CalendarDateExtension");
    
        public static bool SynchronizeTo(this ICalendarDateExtension source, ICalendarDateExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (CalendarDateExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_CalendarDateExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsInstructionalDurationSupported != false)
                && target.InstructionalDuration != source.InstructionalDuration)
            {
                target.InstructionalDuration = source.InstructionalDuration;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this ICalendarDateExtension source, ICalendarDateExtension target, Action<ICalendarDateExtension, ICalendarDateExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (CalendarDateExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_CalendarDateExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsInstructionalDurationSupported != false)
                target.InstructionalDuration = source.InstructionalDuration;

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
// Aggregate: DisciplineAction

namespace EdFi.Ods.Entities.Common.NE //.DisciplineActionAggregate
{
    [ExcludeFromCodeCoverage]
    public static class DisciplineActionExtensionMapper
    {
        private static readonly FullName _fullName_ne_DisciplineActionExtension = new FullName("ne", "DisciplineActionExtension");
    
        public static bool SynchronizeTo(this IDisciplineActionExtension source, IDisciplineActionExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (DisciplineActionExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_DisciplineActionExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsGFSAExpulsionModifiedToLessThanOneYearSupported != false)
                && target.GFSAExpulsionModifiedToLessThanOneYear != source.GFSAExpulsionModifiedToLessThanOneYear)
            {
                target.GFSAExpulsionModifiedToLessThanOneYear = source.GFSAExpulsionModifiedToLessThanOneYear;
                isModified = true;
            }

            if ((mappingContract?.IsUnilateralRemovalDescriptorSupported != false)
                && target.UnilateralRemovalDescriptor != source.UnilateralRemovalDescriptor)
            {
                target.UnilateralRemovalDescriptor = source.UnilateralRemovalDescriptor;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IDisciplineActionExtension source, IDisciplineActionExtension target, Action<IDisciplineActionExtension, IDisciplineActionExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (DisciplineActionExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_DisciplineActionExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsGFSAExpulsionModifiedToLessThanOneYearSupported != false)
                target.GFSAExpulsionModifiedToLessThanOneYear = source.GFSAExpulsionModifiedToLessThanOneYear;

            if (mappingContract?.IsUnilateralRemovalDescriptorSupported != false)
                target.UnilateralRemovalDescriptor = source.UnilateralRemovalDescriptor;

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
// Aggregate: DisciplineIncident

namespace EdFi.Ods.Entities.Common.NE //.DisciplineIncidentAggregate
{
    [ExcludeFromCodeCoverage]
    public static class DisciplineIncidentExtensionMapper
    {
        private static readonly FullName _fullName_ne_DisciplineIncidentExtension = new FullName("ne", "DisciplineIncidentExtension");
    
        public static bool SynchronizeTo(this IDisciplineIncidentExtension source, IDisciplineIncidentExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (DisciplineIncidentExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_DisciplineIncidentExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsHomicideIndicatorSupported != false)
                && target.HomicideIndicator != source.HomicideIndicator)
            {
                target.HomicideIndicator = source.HomicideIndicator;
                isModified = true;
            }

            if ((mappingContract?.IsShootingIndicatorSupported != false)
                && target.ShootingIndicator != source.ShootingIndicator)
            {
                target.ShootingIndicator = source.ShootingIndicator;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IDisciplineIncidentExtension source, IDisciplineIncidentExtension target, Action<IDisciplineIncidentExtension, IDisciplineIncidentExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (DisciplineIncidentExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_DisciplineIncidentExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsHomicideIndicatorSupported != false)
                target.HomicideIndicator = source.HomicideIndicator;

            if (mappingContract?.IsShootingIndicatorSupported != false)
                target.ShootingIndicator = source.ShootingIndicator;

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
// Aggregate: EarlyLearningSettingDescriptor

namespace EdFi.Ods.Entities.Common.NE //.EarlyLearningSettingDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class EarlyLearningSettingDescriptorMapper
    {
        private static readonly FullName _fullName_ne_EarlyLearningSettingDescriptor = new FullName("ne", "EarlyLearningSettingDescriptor");
    
        public static bool SynchronizeTo(this IEarlyLearningSettingDescriptor source, IEarlyLearningSettingDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (EarlyLearningSettingDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_EarlyLearningSettingDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on EarlyLearningSettingDescriptor
                throw new KeyChangeNotSupportedException("EarlyLearningSettingDescriptor");
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

        public static void MapTo(this IEarlyLearningSettingDescriptor source, IEarlyLearningSettingDescriptor target, Action<IEarlyLearningSettingDescriptor, IEarlyLearningSettingDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (EarlyLearningSettingDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_EarlyLearningSettingDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.EarlyLearningSettingDescriptorId = source.EarlyLearningSettingDescriptorId;

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
// Aggregate: ImmigrantIndicatorDescriptor

namespace EdFi.Ods.Entities.Common.NE //.ImmigrantIndicatorDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class ImmigrantIndicatorDescriptorMapper
    {
        private static readonly FullName _fullName_ne_ImmigrantIndicatorDescriptor = new FullName("ne", "ImmigrantIndicatorDescriptor");
    
        public static bool SynchronizeTo(this IImmigrantIndicatorDescriptor source, IImmigrantIndicatorDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ImmigrantIndicatorDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_ImmigrantIndicatorDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on ImmigrantIndicatorDescriptor
                throw new KeyChangeNotSupportedException("ImmigrantIndicatorDescriptor");
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

        public static void MapTo(this IImmigrantIndicatorDescriptor source, IImmigrantIndicatorDescriptor target, Action<IImmigrantIndicatorDescriptor, IImmigrantIndicatorDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ImmigrantIndicatorDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_ImmigrantIndicatorDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.ImmigrantIndicatorDescriptorId = source.ImmigrantIndicatorDescriptorId;

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
// Aggregate: PartCTransitionDelayReasonDescriptor

namespace EdFi.Ods.Entities.Common.NE //.PartCTransitionDelayReasonDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class PartCTransitionDelayReasonDescriptorMapper
    {
        private static readonly FullName _fullName_ne_PartCTransitionDelayReasonDescriptor = new FullName("ne", "PartCTransitionDelayReasonDescriptor");
    
        public static bool SynchronizeTo(this IPartCTransitionDelayReasonDescriptor source, IPartCTransitionDelayReasonDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (PartCTransitionDelayReasonDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PartCTransitionDelayReasonDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on PartCTransitionDelayReasonDescriptor
                throw new KeyChangeNotSupportedException("PartCTransitionDelayReasonDescriptor");
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

        public static void MapTo(this IPartCTransitionDelayReasonDescriptor source, IPartCTransitionDelayReasonDescriptor target, Action<IPartCTransitionDelayReasonDescriptor, IPartCTransitionDelayReasonDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (PartCTransitionDelayReasonDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PartCTransitionDelayReasonDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.PartCTransitionDelayReasonDescriptorId = source.PartCTransitionDelayReasonDescriptorId;

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
// Aggregate: PlacementTypeDescriptor

namespace EdFi.Ods.Entities.Common.NE //.PlacementTypeDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class PlacementTypeDescriptorMapper
    {
        private static readonly FullName _fullName_ne_PlacementTypeDescriptor = new FullName("ne", "PlacementTypeDescriptor");
    
        public static bool SynchronizeTo(this IPlacementTypeDescriptor source, IPlacementTypeDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (PlacementTypeDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PlacementTypeDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on PlacementTypeDescriptor
                throw new KeyChangeNotSupportedException("PlacementTypeDescriptor");
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

        public static void MapTo(this IPlacementTypeDescriptor source, IPlacementTypeDescriptor target, Action<IPlacementTypeDescriptor, IPlacementTypeDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (PlacementTypeDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PlacementTypeDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.PlacementTypeDescriptorId = source.PlacementTypeDescriptorId;

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
// Aggregate: PositionTitleDescriptor

namespace EdFi.Ods.Entities.Common.NE //.PositionTitleDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class PositionTitleDescriptorMapper
    {
        private static readonly FullName _fullName_ne_PositionTitleDescriptor = new FullName("ne", "PositionTitleDescriptor");
    
        public static bool SynchronizeTo(this IPositionTitleDescriptor source, IPositionTitleDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (PositionTitleDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PositionTitleDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on PositionTitleDescriptor
                throw new KeyChangeNotSupportedException("PositionTitleDescriptor");
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

        public static void MapTo(this IPositionTitleDescriptor source, IPositionTitleDescriptor target, Action<IPositionTitleDescriptor, IPositionTitleDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (PositionTitleDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PositionTitleDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.PositionTitleDescriptorId = source.PositionTitleDescriptorId;

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
// Aggregate: PostGraduateActivity

namespace EdFi.Ods.Entities.Common.NE //.PostGraduateActivityAggregate
{
    [ExcludeFromCodeCoverage]
    public static class PostGraduateActivityMapper
    {
        private static readonly FullName _fullName_ne_PostGraduateActivity = new FullName("ne", "PostGraduateActivity");
    
        public static bool SynchronizeTo(this IPostGraduateActivity source, IPostGraduateActivity target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (PostGraduateActivityMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PostGraduateActivity);

            // Detect primary key changes
            if (
                 (target.LocalEducationAgencyId != source.LocalEducationAgencyId)
                || (target.SchoolYear != source.SchoolYear)
                || (target.StudentUniqueId != source.StudentUniqueId))
            {
                // Disallow PK column updates on PostGraduateActivity
                throw new KeyChangeNotSupportedException("PostGraduateActivity");
            }


            // Copy non-PK properties

            if ((mappingContract?.IsPostGraduateActivityDescriptorSupported != false)
                && target.PostGraduateActivityDescriptor != source.PostGraduateActivityDescriptor)
            {
                target.PostGraduateActivityDescriptor = source.PostGraduateActivityDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsPostGraduateActivityDeterminationDescriptorSupported != false)
                && target.PostGraduateActivityDeterminationDescriptor != source.PostGraduateActivityDeterminationDescriptor)
            {
                target.PostGraduateActivityDeterminationDescriptor = source.PostGraduateActivityDeterminationDescriptor;
                isModified = true;
            }


            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.LocalEducationAgencyResourceId == null)
                {
                    target.LocalEducationAgencyResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.SchoolYearTypeResourceId == null)
                {
                    target.SchoolYearTypeResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.StudentResourceId == null)
                {
                    target.StudentResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this IPostGraduateActivity source, IPostGraduateActivity target, Action<IPostGraduateActivity, IPostGraduateActivity> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (PostGraduateActivityMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PostGraduateActivity);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.LocalEducationAgencyId = source.LocalEducationAgencyId;
            target.SchoolYear = source.SchoolYear;
            target.StudentUniqueId = source.StudentUniqueId;

            // Copy non-PK properties

            if (mappingContract?.IsPostGraduateActivityDescriptorSupported != false)
                target.PostGraduateActivityDescriptor = source.PostGraduateActivityDescriptor;

            if (mappingContract?.IsPostGraduateActivityDeterminationDescriptorSupported != false)
                target.PostGraduateActivityDeterminationDescriptor = source.PostGraduateActivityDeterminationDescriptor;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.LocalEducationAgencyResourceId = source.LocalEducationAgencyResourceId;
                target.SchoolYearTypeResourceId = source.SchoolYearTypeResourceId;
                target.StudentResourceId = source.StudentResourceId;
                target.StudentDiscriminator = source.StudentDiscriminator;
                }
            }



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
// Aggregate: PostGraduateActivityDescriptor

namespace EdFi.Ods.Entities.Common.NE //.PostGraduateActivityDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class PostGraduateActivityDescriptorMapper
    {
        private static readonly FullName _fullName_ne_PostGraduateActivityDescriptor = new FullName("ne", "PostGraduateActivityDescriptor");
    
        public static bool SynchronizeTo(this IPostGraduateActivityDescriptor source, IPostGraduateActivityDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (PostGraduateActivityDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PostGraduateActivityDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on PostGraduateActivityDescriptor
                throw new KeyChangeNotSupportedException("PostGraduateActivityDescriptor");
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

        public static void MapTo(this IPostGraduateActivityDescriptor source, IPostGraduateActivityDescriptor target, Action<IPostGraduateActivityDescriptor, IPostGraduateActivityDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (PostGraduateActivityDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PostGraduateActivityDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.PostGraduateActivityDescriptorId = source.PostGraduateActivityDescriptorId;

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
// Aggregate: PostGraduateActivityDeterminationDescriptor

namespace EdFi.Ods.Entities.Common.NE //.PostGraduateActivityDeterminationDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class PostGraduateActivityDeterminationDescriptorMapper
    {
        private static readonly FullName _fullName_ne_PostGraduateActivityDeterminationDescriptor = new FullName("ne", "PostGraduateActivityDeterminationDescriptor");
    
        public static bool SynchronizeTo(this IPostGraduateActivityDeterminationDescriptor source, IPostGraduateActivityDeterminationDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (PostGraduateActivityDeterminationDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PostGraduateActivityDeterminationDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on PostGraduateActivityDeterminationDescriptor
                throw new KeyChangeNotSupportedException("PostGraduateActivityDeterminationDescriptor");
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

        public static void MapTo(this IPostGraduateActivityDeterminationDescriptor source, IPostGraduateActivityDeterminationDescriptor target, Action<IPostGraduateActivityDeterminationDescriptor, IPostGraduateActivityDeterminationDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (PostGraduateActivityDeterminationDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_PostGraduateActivityDeterminationDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.PostGraduateActivityDeterminationDescriptorId = source.PostGraduateActivityDeterminationDescriptorId;

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
// Aggregate: Section

namespace EdFi.Ods.Entities.Common.NE //.SectionAggregate
{
    [ExcludeFromCodeCoverage]
    public static class SectionDeliveryMapper
    {
        private static readonly FullName _fullName_ne_SectionDelivery = new FullName("ne", "SectionDelivery");
    
        public static bool SynchronizeTo(this ISectionDelivery source, ISectionDelivery target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (SectionDeliveryMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SectionDelivery);


            // Copy non-PK properties


            // Sync lists


            return isModified;
        }

        public static void MapTo(this ISectionDelivery source, ISectionDelivery target, Action<ISectionDelivery, ISectionDelivery> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (SectionDeliveryMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SectionDelivery);
    
            // Copy contextual primary key values
            target.SectionDeliveryDescriptor = source.SectionDeliveryDescriptor;

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

    [ExcludeFromCodeCoverage]
    public static class SectionExtensionMapper
    {
        private static readonly FullName _fullName_ne_SectionExtension = new FullName("ne", "SectionExtension");
    
        public static bool SynchronizeTo(this ISectionExtension source, ISectionExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (SectionExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SectionExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsCourseStaffIdOverrideSupported != false)
                && target.CourseStaffIdOverride != source.CourseStaffIdOverride)
            {
                target.CourseStaffIdOverride = source.CourseStaffIdOverride;
                isModified = true;
            }


            // Sync lists
            if (mappingContract?.IsSectionDeliveriesSupported ?? true)
            {
                isModified |=
                    source.SectionDeliveries.SynchronizeCollectionTo(
                        target.SectionDeliveries,
                        onChildAdded: child =>
                            {
                                child.SectionExtension = target;

                                // Extension class "children" need to reference the Ed-Fi Standard entity as the parent
                                (child as IChildEntity)?.SetParent(target.Section);
                            },
                        itemCreatable: mappingContract?.IsSectionDeliveriesItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsSectionDeliveryIncluded?.Invoke(item) ?? true);
            }



            return isModified;
        }

        public static void MapTo(this ISectionExtension source, ISectionExtension target, Action<ISectionExtension, ISectionExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (SectionExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SectionExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsCourseStaffIdOverrideSupported != false)
                target.CourseStaffIdOverride = source.CourseStaffIdOverride;

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists

            if (mappingContract?.IsSectionDeliveriesSupported != false)
            {
                source.SectionDeliveries.MapCollectionTo(target.SectionDeliveries, mappingContract?.IsSectionDeliveriesItemCreatable ?? true, target.Section, mappingContract?.IsSectionDeliveryIncluded);
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

}
// Aggregate: SectionDeliveryDescriptor

namespace EdFi.Ods.Entities.Common.NE //.SectionDeliveryDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class SectionDeliveryDescriptorMapper
    {
        private static readonly FullName _fullName_ne_SectionDeliveryDescriptor = new FullName("ne", "SectionDeliveryDescriptor");
    
        public static bool SynchronizeTo(this ISectionDeliveryDescriptor source, ISectionDeliveryDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (SectionDeliveryDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SectionDeliveryDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on SectionDeliveryDescriptor
                throw new KeyChangeNotSupportedException("SectionDeliveryDescriptor");
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

        public static void MapTo(this ISectionDeliveryDescriptor source, ISectionDeliveryDescriptor target, Action<ISectionDeliveryDescriptor, ISectionDeliveryDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (SectionDeliveryDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SectionDeliveryDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.SectionDeliveryDescriptorId = source.SectionDeliveryDescriptorId;

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
// Aggregate: SpecialEducationProgramDescriptor

namespace EdFi.Ods.Entities.Common.NE //.SpecialEducationProgramDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class SpecialEducationProgramDescriptorMapper
    {
        private static readonly FullName _fullName_ne_SpecialEducationProgramDescriptor = new FullName("ne", "SpecialEducationProgramDescriptor");
    
        public static bool SynchronizeTo(this ISpecialEducationProgramDescriptor source, ISpecialEducationProgramDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (SpecialEducationProgramDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SpecialEducationProgramDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on SpecialEducationProgramDescriptor
                throw new KeyChangeNotSupportedException("SpecialEducationProgramDescriptor");
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

        public static void MapTo(this ISpecialEducationProgramDescriptor source, ISpecialEducationProgramDescriptor target, Action<ISpecialEducationProgramDescriptor, ISpecialEducationProgramDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (SpecialEducationProgramDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_SpecialEducationProgramDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.SpecialEducationProgramDescriptorId = source.SpecialEducationProgramDescriptorId;

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
// Aggregate: StudentDisciplineIncidentBehaviorAssociation

namespace EdFi.Ods.Entities.Common.NE //.StudentDisciplineIncidentBehaviorAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentDisciplineIncidentBehaviorAssociationExtensionMapper
    {
        private static readonly FullName _fullName_ne_StudentDisciplineIncidentBehaviorAssociationExtension = new FullName("ne", "StudentDisciplineIncidentBehaviorAssociationExtension");
    
        public static bool SynchronizeTo(this IStudentDisciplineIncidentBehaviorAssociationExtension source, IStudentDisciplineIncidentBehaviorAssociationExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentDisciplineIncidentBehaviorAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentDisciplineIncidentBehaviorAssociationExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsGunFreeSchoolViolationSupported != false)
                && target.GunFreeSchoolViolation != source.GunFreeSchoolViolation)
            {
                target.GunFreeSchoolViolation = source.GunFreeSchoolViolation;
                isModified = true;
            }

            if ((mappingContract?.IsReferralToLawEnforcementSupported != false)
                && target.ReferralToLawEnforcement != source.ReferralToLawEnforcement)
            {
                target.ReferralToLawEnforcement = source.ReferralToLawEnforcement;
                isModified = true;
            }

            if ((mappingContract?.IsSchoolRelatedArrestIndicatorSupported != false)
                && target.SchoolRelatedArrestIndicator != source.SchoolRelatedArrestIndicator)
            {
                target.SchoolRelatedArrestIndicator = source.SchoolRelatedArrestIndicator;
                isModified = true;
            }

            if ((mappingContract?.IsSeriousBodilyInjurySupported != false)
                && target.SeriousBodilyInjury != source.SeriousBodilyInjury)
            {
                target.SeriousBodilyInjury = source.SeriousBodilyInjury;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IStudentDisciplineIncidentBehaviorAssociationExtension source, IStudentDisciplineIncidentBehaviorAssociationExtension target, Action<IStudentDisciplineIncidentBehaviorAssociationExtension, IStudentDisciplineIncidentBehaviorAssociationExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentDisciplineIncidentBehaviorAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentDisciplineIncidentBehaviorAssociationExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsGunFreeSchoolViolationSupported != false)
                target.GunFreeSchoolViolation = source.GunFreeSchoolViolation;

            if (mappingContract?.IsReferralToLawEnforcementSupported != false)
                target.ReferralToLawEnforcement = source.ReferralToLawEnforcement;

            if (mappingContract?.IsSchoolRelatedArrestIndicatorSupported != false)
                target.SchoolRelatedArrestIndicator = source.SchoolRelatedArrestIndicator;

            if (mappingContract?.IsSeriousBodilyInjurySupported != false)
                target.SeriousBodilyInjury = source.SeriousBodilyInjury;

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
// Aggregate: StudentEarlyLearningProgramAssociation

namespace EdFi.Ods.Entities.Common.NE //.StudentEarlyLearningProgramAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentEarlyLearningProgramAssociationMapper
    {
        private static readonly FullName _fullName_ne_StudentEarlyLearningProgramAssociation = new FullName("ne", "StudentEarlyLearningProgramAssociation");
    
        public static bool SynchronizeTo(this IStudentEarlyLearningProgramAssociation source, IStudentEarlyLearningProgramAssociation target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentEarlyLearningProgramAssociationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentEarlyLearningProgramAssociation);

            var keyStringComparer = GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer;

            // Detect primary key changes
            if (
                 (target.BeginDate != source.BeginDate)
                || (target.EducationOrganizationId != source.EducationOrganizationId)
                || (target.ProgramEducationOrganizationId != source.ProgramEducationOrganizationId)
                || (!keyStringComparer.Equals(target.ProgramName, source.ProgramName))
                || !string.Equals(target.ProgramTypeDescriptor, source.ProgramTypeDescriptor, StringComparison.OrdinalIgnoreCase)
                || (target.StudentUniqueId != source.StudentUniqueId))
            {
                // Disallow PK column updates on StudentEarlyLearningProgramAssociation
                throw new KeyChangeNotSupportedException("StudentEarlyLearningProgramAssociation");
            }


            // Copy inherited non-PK properties


            if ((mappingContract?.IsEndDateSupported != false)
                && target.EndDate != source.EndDate)
            {
                target.EndDate = source.EndDate;
                isModified = true;
            }

            if ((mappingContract?.IsReasonExitedDescriptorSupported != false)
                && target.ReasonExitedDescriptor != source.ReasonExitedDescriptor)
            {
                target.ReasonExitedDescriptor = source.ReasonExitedDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsServedOutsideOfRegularSessionSupported != false)
                && target.ServedOutsideOfRegularSession != source.ServedOutsideOfRegularSession)
            {
                target.ServedOutsideOfRegularSession = source.ServedOutsideOfRegularSession;
                isModified = true;
            }

            // Copy non-PK properties

            if ((mappingContract?.IsEarlyLearningSettingDescriptorSupported != false)
                && target.EarlyLearningSettingDescriptor != source.EarlyLearningSettingDescriptor)
            {
                target.EarlyLearningSettingDescriptor = source.EarlyLearningSettingDescriptor;
                isModified = true;
            }


            // Synch inherited lists
            if (mappingContract?.IsGeneralStudentProgramAssociationProgramParticipationStatusesSupported ?? true)
            {
                isModified |= 
                    source.GeneralStudentProgramAssociationProgramParticipationStatuses.SynchronizeCollectionTo(
                        target.GeneralStudentProgramAssociationProgramParticipationStatuses, 
                        onChildAdded: child => child.GeneralStudentProgramAssociation = target,
                        itemCreatable: mappingContract?.IsGeneralStudentProgramAssociationProgramParticipationStatusesItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsGeneralStudentProgramAssociationProgramParticipationStatusIncluded?.Invoke(item) ?? true);
            }


            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.EducationOrganizationResourceId == null)
                {
                    target.EducationOrganizationResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.ProgramResourceId == null)
                {
                    target.ProgramResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.StudentResourceId == null)
                {
                    target.StudentResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapDerivedTo(this IStudentEarlyLearningProgramAssociation source, IStudentEarlyLearningProgramAssociation target, Action<IStudentEarlyLearningProgramAssociation, IStudentEarlyLearningProgramAssociation> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentEarlyLearningProgramAssociationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentEarlyLearningProgramAssociation);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.BeginDate = source.BeginDate;
            target.EducationOrganizationId = source.EducationOrganizationId;
            target.ProgramEducationOrganizationId = source.ProgramEducationOrganizationId;
            target.ProgramName = source.ProgramName;
            target.ProgramTypeDescriptor = source.ProgramTypeDescriptor;
            target.StudentUniqueId = source.StudentUniqueId;

            // Copy inherited non-PK properties

            if (mappingContract?.IsEndDateSupported != false)
                target.EndDate = source.EndDate;

            if (mappingContract?.IsReasonExitedDescriptorSupported != false)
                target.ReasonExitedDescriptor = source.ReasonExitedDescriptor;

            if (mappingContract?.IsServedOutsideOfRegularSessionSupported != false)
                target.ServedOutsideOfRegularSession = source.ServedOutsideOfRegularSession;

            // Copy non-PK properties

            if (mappingContract?.IsEarlyLearningSettingDescriptorSupported != false)
                target.EarlyLearningSettingDescriptor = source.EarlyLearningSettingDescriptor;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.EducationOrganizationResourceId = source.EducationOrganizationResourceId;
                target.EducationOrganizationDiscriminator = source.EducationOrganizationDiscriminator;
                target.ProgramResourceId = source.ProgramResourceId;
                target.ProgramDiscriminator = source.ProgramDiscriminator;
                target.StudentResourceId = source.StudentResourceId;
                target.StudentDiscriminator = source.StudentDiscriminator;
                }
            }



            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map inherited lists

            if (mappingContract?.IsGeneralStudentProgramAssociationProgramParticipationStatusesSupported != false)
            {
                source.GeneralStudentProgramAssociationProgramParticipationStatuses.MapCollectionTo(target.GeneralStudentProgramAssociationProgramParticipationStatuses, mappingContract?.IsGeneralStudentProgramAssociationProgramParticipationStatusesItemCreatable ?? true, target, mappingContract?.IsGeneralStudentProgramAssociationProgramParticipationStatusIncluded);
            }

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
// Aggregate: StudentEducationOrganizationAssociation

namespace EdFi.Ods.Entities.Common.NE //.StudentEducationOrganizationAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentEducationOrganizationAssociationExtensionMapper
    {
        private static readonly FullName _fullName_ne_StudentEducationOrganizationAssociationExtension = new FullName("ne", "StudentEducationOrganizationAssociationExtension");
    
        public static bool SynchronizeTo(this IStudentEducationOrganizationAssociationExtension source, IStudentEducationOrganizationAssociationExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentEducationOrganizationAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentEducationOrganizationAssociationExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsImmigrantIndicatorDescriptorSupported != false)
                && target.ImmigrantIndicatorDescriptor != source.ImmigrantIndicatorDescriptor)
            {
                target.ImmigrantIndicatorDescriptor = source.ImmigrantIndicatorDescriptor;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IStudentEducationOrganizationAssociationExtension source, IStudentEducationOrganizationAssociationExtension target, Action<IStudentEducationOrganizationAssociationExtension, IStudentEducationOrganizationAssociationExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentEducationOrganizationAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentEducationOrganizationAssociationExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsImmigrantIndicatorDescriptorSupported != false)
                target.ImmigrantIndicatorDescriptor = source.ImmigrantIndicatorDescriptor;

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
// Aggregate: StudentLanguageInstructionProgramAssociation

namespace EdFi.Ods.Entities.Common.NE //.StudentLanguageInstructionProgramAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentLanguageInstructionProgramAssociationExtensionMapper
    {
        private static readonly FullName _fullName_ne_StudentLanguageInstructionProgramAssociationExtension = new FullName("ne", "StudentLanguageInstructionProgramAssociationExtension");
    
        public static bool SynchronizeTo(this IStudentLanguageInstructionProgramAssociationExtension source, IStudentLanguageInstructionProgramAssociationExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentLanguageInstructionProgramAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentLanguageInstructionProgramAssociationExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsDismissedViaIEPReviewSupported != false)
                && target.DismissedViaIEPReview != source.DismissedViaIEPReview)
            {
                target.DismissedViaIEPReview = source.DismissedViaIEPReview;
                isModified = true;
            }

            if ((mappingContract?.IsRedesignatedEnglishFluentSupported != false)
                && target.RedesignatedEnglishFluent != source.RedesignatedEnglishFluent)
            {
                target.RedesignatedEnglishFluent = source.RedesignatedEnglishFluent;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IStudentLanguageInstructionProgramAssociationExtension source, IStudentLanguageInstructionProgramAssociationExtension target, Action<IStudentLanguageInstructionProgramAssociationExtension, IStudentLanguageInstructionProgramAssociationExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentLanguageInstructionProgramAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentLanguageInstructionProgramAssociationExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsDismissedViaIEPReviewSupported != false)
                target.DismissedViaIEPReview = source.DismissedViaIEPReview;

            if (mappingContract?.IsRedesignatedEnglishFluentSupported != false)
                target.RedesignatedEnglishFluent = source.RedesignatedEnglishFluent;

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
// Aggregate: StudentSchoolAssociation

namespace EdFi.Ods.Entities.Common.NE //.StudentSchoolAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentSchoolAssociationExtensionMapper
    {
        private static readonly FullName _fullName_ne_StudentSchoolAssociationExtension = new FullName("ne", "StudentSchoolAssociationExtension");
    
        public static bool SynchronizeTo(this IStudentSchoolAssociationExtension source, IStudentSchoolAssociationExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentSchoolAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentSchoolAssociationExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsExpectedHighSchoolOfGraduationSchoolIdSupported != false)
                && target.ExpectedHighSchoolOfGraduationSchoolId != source.ExpectedHighSchoolOfGraduationSchoolId)
            {
                target.ExpectedHighSchoolOfGraduationSchoolId = source.ExpectedHighSchoolOfGraduationSchoolId;
                isModified = true;
            }

            if ((mappingContract?.IsReportingSchoolIdSupported != false)
                && target.ReportingSchoolId != source.ReportingSchoolId)
            {
                target.ReportingSchoolId = source.ReportingSchoolId;
                isModified = true;
            }

            if ((mappingContract?.IsResidentLocalEducationAgencyIdSupported != false)
                && target.ResidentLocalEducationAgencyId != source.ResidentLocalEducationAgencyId)
            {
                target.ResidentLocalEducationAgencyId = source.ResidentLocalEducationAgencyId;
                isModified = true;
            }

            if ((mappingContract?.IsResidentSchoolIdSupported != false)
                && target.ResidentSchoolId != source.ResidentSchoolId)
            {
                target.ResidentSchoolId = source.ResidentSchoolId;
                isModified = true;
            }

            if ((mappingContract?.IsStudentDaysEnrolledSupported != false)
                && target.StudentDaysEnrolled != source.StudentDaysEnrolled)
            {
                target.StudentDaysEnrolled = source.StudentDaysEnrolled;
                isModified = true;
            }


            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.ExpectedHighSchoolOfGraduationSchoolResourceId == null)
                {
                    target.ExpectedHighSchoolOfGraduationSchoolResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.ReportingSchoolResourceId == null)
                {
                    target.ReportingSchoolResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.ResidentLocalEducationAgencyResourceId == null)
                {
                    target.ResidentLocalEducationAgencyResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.ResidentSchoolResourceId == null)
                {
                    target.ResidentSchoolResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this IStudentSchoolAssociationExtension source, IStudentSchoolAssociationExtension target, Action<IStudentSchoolAssociationExtension, IStudentSchoolAssociationExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentSchoolAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentSchoolAssociationExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsExpectedHighSchoolOfGraduationSchoolIdSupported != false)
                target.ExpectedHighSchoolOfGraduationSchoolId = source.ExpectedHighSchoolOfGraduationSchoolId;

            if (mappingContract?.IsReportingSchoolIdSupported != false)
                target.ReportingSchoolId = source.ReportingSchoolId;

            if (mappingContract?.IsResidentLocalEducationAgencyIdSupported != false)
                target.ResidentLocalEducationAgencyId = source.ResidentLocalEducationAgencyId;

            if (mappingContract?.IsResidentSchoolIdSupported != false)
                target.ResidentSchoolId = source.ResidentSchoolId;

            if (mappingContract?.IsStudentDaysEnrolledSupported != false)
                target.StudentDaysEnrolled = source.StudentDaysEnrolled;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.ExpectedHighSchoolOfGraduationSchoolResourceId = source.ExpectedHighSchoolOfGraduationSchoolResourceId;
                target.ReportingSchoolResourceId = source.ReportingSchoolResourceId;
                target.ResidentLocalEducationAgencyResourceId = source.ResidentLocalEducationAgencyResourceId;
                target.ResidentSchoolResourceId = source.ResidentSchoolResourceId;
                }
            }



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
// Aggregate: StudentSpecialEducationProgramAssociation

namespace EdFi.Ods.Entities.Common.NE //.StudentSpecialEducationProgramAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentSpecialEducationProgramAssociationExtensionMapper
    {
        private static readonly FullName _fullName_ne_StudentSpecialEducationProgramAssociationExtension = new FullName("ne", "StudentSpecialEducationProgramAssociationExtension");
    
        public static bool SynchronizeTo(this IStudentSpecialEducationProgramAssociationExtension source, IStudentSpecialEducationProgramAssociationExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentSpecialEducationProgramAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentSpecialEducationProgramAssociationExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsInitialSpecialEducationEntryDateSupported != false)
                && target.InitialSpecialEducationEntryDate != source.InitialSpecialEducationEntryDate)
            {
                target.InitialSpecialEducationEntryDate = source.InitialSpecialEducationEntryDate;
                isModified = true;
            }

            if ((mappingContract?.IsPartCTransitionDelayReasonDescriptorSupported != false)
                && target.PartCTransitionDelayReasonDescriptor != source.PartCTransitionDelayReasonDescriptor)
            {
                target.PartCTransitionDelayReasonDescriptor = source.PartCTransitionDelayReasonDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsPlacementTypeDescriptorSupported != false)
                && target.PlacementTypeDescriptor != source.PlacementTypeDescriptor)
            {
                target.PlacementTypeDescriptor = source.PlacementTypeDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsSpecialEducationProgramDescriptorSupported != false)
                && target.SpecialEducationProgramDescriptor != source.SpecialEducationProgramDescriptor)
            {
                target.SpecialEducationProgramDescriptor = source.SpecialEducationProgramDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsToTakeAlternateAssessmentSupported != false)
                && target.ToTakeAlternateAssessment != source.ToTakeAlternateAssessment)
            {
                target.ToTakeAlternateAssessment = source.ToTakeAlternateAssessment;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IStudentSpecialEducationProgramAssociationExtension source, IStudentSpecialEducationProgramAssociationExtension target, Action<IStudentSpecialEducationProgramAssociationExtension, IStudentSpecialEducationProgramAssociationExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentSpecialEducationProgramAssociationExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentSpecialEducationProgramAssociationExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsInitialSpecialEducationEntryDateSupported != false)
                target.InitialSpecialEducationEntryDate = source.InitialSpecialEducationEntryDate;

            if (mappingContract?.IsPartCTransitionDelayReasonDescriptorSupported != false)
                target.PartCTransitionDelayReasonDescriptor = source.PartCTransitionDelayReasonDescriptor;

            if (mappingContract?.IsPlacementTypeDescriptorSupported != false)
                target.PlacementTypeDescriptor = source.PlacementTypeDescriptor;

            if (mappingContract?.IsSpecialEducationProgramDescriptorSupported != false)
                target.SpecialEducationProgramDescriptor = source.SpecialEducationProgramDescriptor;

            if (mappingContract?.IsToTakeAlternateAssessmentSupported != false)
                target.ToTakeAlternateAssessment = source.ToTakeAlternateAssessment;

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
// Aggregate: UnilateralRemovalDescriptor

namespace EdFi.Ods.Entities.Common.NE //.UnilateralRemovalDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class UnilateralRemovalDescriptorMapper
    {
        private static readonly FullName _fullName_ne_UnilateralRemovalDescriptor = new FullName("ne", "UnilateralRemovalDescriptor");
    
        public static bool SynchronizeTo(this IUnilateralRemovalDescriptor source, IUnilateralRemovalDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (UnilateralRemovalDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_UnilateralRemovalDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on UnilateralRemovalDescriptor
                throw new KeyChangeNotSupportedException("UnilateralRemovalDescriptor");
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

        public static void MapTo(this IUnilateralRemovalDescriptor source, IUnilateralRemovalDescriptor target, Action<IUnilateralRemovalDescriptor, IUnilateralRemovalDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (UnilateralRemovalDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_ne_UnilateralRemovalDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.UnilateralRemovalDescriptorId = source.UnilateralRemovalDescriptorId;

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
