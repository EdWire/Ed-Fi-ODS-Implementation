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
// Aggregate: AlternativeStatusDescriptor

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.AlternativeStatusDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class AlternativeStatusDescriptorMapper
    {
        private static readonly FullName _fullName_edfixcrdc_AlternativeStatusDescriptor = new FullName("edfixcrdc", "AlternativeStatusDescriptor");
    
        public static bool SynchronizeTo(this IAlternativeStatusDescriptor source, IAlternativeStatusDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (AlternativeStatusDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_AlternativeStatusDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on AlternativeStatusDescriptor
                throw new KeyChangeNotSupportedException("AlternativeStatusDescriptor");
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

        public static void MapTo(this IAlternativeStatusDescriptor source, IAlternativeStatusDescriptor target, Action<IAlternativeStatusDescriptor, IAlternativeStatusDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (AlternativeStatusDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_AlternativeStatusDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.AlternativeStatusDescriptorId = source.AlternativeStatusDescriptorId;

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
// Aggregate: ClassGroup

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.ClassGroupAggregate
{
    [ExcludeFromCodeCoverage]
    public static class ClassGroupMapper
    {
        private static readonly FullName _fullName_edfixcrdc_ClassGroup = new FullName("edfixcrdc", "ClassGroup");
    
        public static bool SynchronizeTo(this IClassGroup source, IClassGroup target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ClassGroupMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ClassGroup);

            var keyStringComparer = GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer;

            // Detect primary key changes
            if (
                 (!keyStringComparer.Equals(target.ClassGroupName, source.ClassGroupName))
                || (target.CommunityProviderId != source.CommunityProviderId)
                || (target.CommunityProviderLocationId != source.CommunityProviderLocationId)
                || (target.SpecialNeedsProvidedIndicator != source.SpecialNeedsProvidedIndicator))
            {
                // Disallow PK column updates on ClassGroup
                throw new KeyChangeNotSupportedException("ClassGroup");
            }


            // Copy non-PK properties

            if ((mappingContract?.IsCapacitySupported != false)
                && target.Capacity != source.Capacity)
            {
                target.Capacity = source.Capacity;
                isModified = true;
            }

            if ((mappingContract?.IsDaysAvailablePerWeekSupported != false)
                && target.DaysAvailablePerWeek != source.DaysAvailablePerWeek)
            {
                target.DaysAvailablePerWeek = source.DaysAvailablePerWeek;
                isModified = true;
            }

            if ((mappingContract?.IsHoursAvailablePerDaySupported != false)
                && target.HoursAvailablePerDay != source.HoursAvailablePerDay)
            {
                target.HoursAvailablePerDay = source.HoursAvailablePerDay;
                isModified = true;
            }

            if ((mappingContract?.IsServiceDescriptorSupported != false)
                && target.ServiceDescriptor != source.ServiceDescriptor)
            {
                target.ServiceDescriptor = source.ServiceDescriptor;
                isModified = true;
            }


            // Sync lists
            if (mappingContract?.IsClassGroupCoursesSupported ?? true)
            {
                isModified |=
                    source.ClassGroupCourses.SynchronizeCollectionTo(
                        target.ClassGroupCourses,
                        onChildAdded: child =>
                            {
                                child.ClassGroup = target;
                            },
                        itemCreatable: mappingContract?.IsClassGroupCoursesItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsClassGroupCourseIncluded?.Invoke(item) ?? true);
            }

            if (mappingContract?.IsClassGroupMeetingTimesSupported ?? true)
            {
                isModified |=
                    source.ClassGroupMeetingTimes.SynchronizeCollectionTo(
                        target.ClassGroupMeetingTimes,
                        onChildAdded: child =>
                            {
                                child.ClassGroup = target;
                            },
                        itemCreatable: mappingContract?.IsClassGroupMeetingTimesItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsClassGroupMeetingTimeIncluded?.Invoke(item) ?? true);
            }


            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.CommunityProviderLocationResourceId == null)
                {
                    target.CommunityProviderLocationResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this IClassGroup source, IClassGroup target, Action<IClassGroup, IClassGroup> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ClassGroupMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ClassGroup);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.ClassGroupName = source.ClassGroupName;
            target.CommunityProviderId = source.CommunityProviderId;
            target.CommunityProviderLocationId = source.CommunityProviderLocationId;
            target.SpecialNeedsProvidedIndicator = source.SpecialNeedsProvidedIndicator;

            // Copy non-PK properties

            if (mappingContract?.IsCapacitySupported != false)
                target.Capacity = source.Capacity;

            if (mappingContract?.IsDaysAvailablePerWeekSupported != false)
                target.DaysAvailablePerWeek = source.DaysAvailablePerWeek;

            if (mappingContract?.IsHoursAvailablePerDaySupported != false)
                target.HoursAvailablePerDay = source.HoursAvailablePerDay;

            if (mappingContract?.IsServiceDescriptorSupported != false)
                target.ServiceDescriptor = source.ServiceDescriptor;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.CommunityProviderLocationResourceId = source.CommunityProviderLocationResourceId;
                target.CommunityProviderLocationDiscriminator = source.CommunityProviderLocationDiscriminator;
                }
            }



            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists

            if (mappingContract?.IsClassGroupCoursesSupported != false)
            {
                source.ClassGroupCourses.MapCollectionTo(target.ClassGroupCourses, mappingContract?.IsClassGroupCoursesItemCreatable ?? true, target, mappingContract?.IsClassGroupCourseIncluded);
            }

            if (mappingContract?.IsClassGroupMeetingTimesSupported != false)
            {
                source.ClassGroupMeetingTimes.MapCollectionTo(target.ClassGroupMeetingTimes, mappingContract?.IsClassGroupMeetingTimesItemCreatable ?? true, target, mappingContract?.IsClassGroupMeetingTimeIncluded);
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
    public static class ClassGroupCourseMapper
    {
        private static readonly FullName _fullName_edfixcrdc_ClassGroupCourse = new FullName("edfixcrdc", "ClassGroupCourse");
    
        public static bool SynchronizeTo(this IClassGroupCourse source, IClassGroupCourse target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ClassGroupCourseMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ClassGroupCourse);


            // Copy non-PK properties


            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.CourseResourceId == null)
                {
                    target.CourseResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this IClassGroupCourse source, IClassGroupCourse target, Action<IClassGroupCourse, IClassGroupCourse> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ClassGroupCourseMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ClassGroupCourse);
    
            // Copy contextual primary key values
            target.CourseCode = source.CourseCode;
            target.EducationOrganizationId = source.EducationOrganizationId;

            // Copy non-PK properties

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.CourseResourceId = source.CourseResourceId;
                target.CourseDiscriminator = source.CourseDiscriminator;
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

    [ExcludeFromCodeCoverage]
    public static class ClassGroupMeetingTimeMapper
    {
        private static readonly FullName _fullName_edfixcrdc_ClassGroupMeetingTime = new FullName("edfixcrdc", "ClassGroupMeetingTime");
    
        public static bool SynchronizeTo(this IClassGroupMeetingTime source, IClassGroupMeetingTime target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ClassGroupMeetingTimeMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ClassGroupMeetingTime);


            // Copy non-PK properties


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IClassGroupMeetingTime source, IClassGroupMeetingTime target, Action<IClassGroupMeetingTime, IClassGroupMeetingTime> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ClassGroupMeetingTimeMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ClassGroupMeetingTime);
    
            // Copy contextual primary key values
            target.MeetingDayDescriptor = source.MeetingDayDescriptor;
            target.StartTime = source.StartTime;
            target.StopTime = source.StopTime;

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
// Aggregate: CommunityProviderLocation

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.CommunityProviderLocationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class CommunityProviderLocationMapper
    {
        private static readonly FullName _fullName_edfixcrdc_CommunityProviderLocation = new FullName("edfixcrdc", "CommunityProviderLocation");
    
        public static bool SynchronizeTo(this ICommunityProviderLocation source, ICommunityProviderLocation target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (CommunityProviderLocationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_CommunityProviderLocation);

            // Detect primary key changes
            if (
                 (target.CommunityProviderId != source.CommunityProviderId)
                || (target.CommunityProviderLocationId != source.CommunityProviderLocationId))
            {
                // Disallow PK column updates on CommunityProviderLocation
                throw new KeyChangeNotSupportedException("CommunityProviderLocation");
            }


            // Copy non-PK properties

            if ((mappingContract?.IsAddressTypeDescriptorSupported != false)
                && target.AddressTypeDescriptor != source.AddressTypeDescriptor)
            {
                target.AddressTypeDescriptor = source.AddressTypeDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsAgeRangeDescriptionSupported != false)
                && target.AgeRangeDescription != source.AgeRangeDescription)
            {
                target.AgeRangeDescription = source.AgeRangeDescription;
                isModified = true;
            }

            if ((mappingContract?.IsApartmentRoomSuiteNumberSupported != false)
                && target.ApartmentRoomSuiteNumber != source.ApartmentRoomSuiteNumber)
            {
                target.ApartmentRoomSuiteNumber = source.ApartmentRoomSuiteNumber;
                isModified = true;
            }

            if ((mappingContract?.IsBuildingSiteNumberSupported != false)
                && target.BuildingSiteNumber != source.BuildingSiteNumber)
            {
                target.BuildingSiteNumber = source.BuildingSiteNumber;
                isModified = true;
            }

            if ((mappingContract?.IsCapacitySupported != false)
                && target.Capacity != source.Capacity)
            {
                target.Capacity = source.Capacity;
                isModified = true;
            }

            if ((mappingContract?.IsCitySupported != false)
                && target.City != source.City)
            {
                target.City = source.City;
                isModified = true;
            }

            if ((mappingContract?.IsCountyFIPSCodeSupported != false)
                && target.CountyFIPSCode != source.CountyFIPSCode)
            {
                target.CountyFIPSCode = source.CountyFIPSCode;
                isModified = true;
            }

            if ((mappingContract?.IsNameOfCountySupported != false)
                && target.NameOfCounty != source.NameOfCounty)
            {
                target.NameOfCounty = source.NameOfCounty;
                isModified = true;
            }

            if ((mappingContract?.IsOldestAgeAcceptedSupported != false)
                && target.OldestAgeAccepted != source.OldestAgeAccepted)
            {
                target.OldestAgeAccepted = source.OldestAgeAccepted;
                isModified = true;
            }

            if ((mappingContract?.IsPostalCodeSupported != false)
                && target.PostalCode != source.PostalCode)
            {
                target.PostalCode = source.PostalCode;
                isModified = true;
            }

            if ((mappingContract?.IsSpecialNeedsProvidedIndicatorSupported != false)
                && target.SpecialNeedsProvidedIndicator != source.SpecialNeedsProvidedIndicator)
            {
                target.SpecialNeedsProvidedIndicator = source.SpecialNeedsProvidedIndicator;
                isModified = true;
            }

            if ((mappingContract?.IsStateAbbreviationDescriptorSupported != false)
                && target.StateAbbreviationDescriptor != source.StateAbbreviationDescriptor)
            {
                target.StateAbbreviationDescriptor = source.StateAbbreviationDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsStreetNumberNameSupported != false)
                && target.StreetNumberName != source.StreetNumberName)
            {
                target.StreetNumberName = source.StreetNumberName;
                isModified = true;
            }

            if ((mappingContract?.IsTimeCloseSupported != false)
                && target.TimeClose != source.TimeClose)
            {
                target.TimeClose = source.TimeClose;
                isModified = true;
            }

            if ((mappingContract?.IsTimeOpenSupported != false)
                && target.TimeOpen != source.TimeOpen)
            {
                target.TimeOpen = source.TimeOpen;
                isModified = true;
            }

            if ((mappingContract?.IsYoungestAgeAcceptedSupported != false)
                && target.YoungestAgeAccepted != source.YoungestAgeAccepted)
            {
                target.YoungestAgeAccepted = source.YoungestAgeAccepted;
                isModified = true;
            }

            // ----------------------------------
            //   Synch One-to-one relationships
            // ----------------------------------
            // CommunityProviderLocationInstructionalCalendar (CommunityProviderLocationInstructionalCalendar)
            if (mappingContract?.IsCommunityProviderLocationInstructionalCalendarSupported != false)
            {
                if (source.CommunityProviderLocationInstructionalCalendar == null)
                {
                    if (target.CommunityProviderLocationInstructionalCalendar != null)
                    {
                        target.CommunityProviderLocationInstructionalCalendar = null;
                        isModified = true;
                    }
                }
                else
                {
                    if (target.CommunityProviderLocationInstructionalCalendar == null)
                    {
                        var itemType = target.GetType().GetProperty("CommunityProviderLocationInstructionalCalendar").PropertyType;
            
                        if (!(mappingContract?.IsCommunityProviderLocationInstructionalCalendarCreatable ?? true))
                        {
                            string profileName = GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;

                            throw new DataPolicyException(profileName, itemType.Name);
                        }

                        var newItem = Activator.CreateInstance(itemType);
                        target.CommunityProviderLocationInstructionalCalendar = (ICommunityProviderLocationInstructionalCalendar) newItem;
                    }

                    isModified |= source.CommunityProviderLocationInstructionalCalendar.Synchronize(target.CommunityProviderLocationInstructionalCalendar);
                }
            }

            // -------------------------------------------------------------

            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.CommunityProviderResourceId == null)
                {
                    target.CommunityProviderResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this ICommunityProviderLocation source, ICommunityProviderLocation target, Action<ICommunityProviderLocation, ICommunityProviderLocation> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (CommunityProviderLocationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_CommunityProviderLocation);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.CommunityProviderId = source.CommunityProviderId;
            target.CommunityProviderLocationId = source.CommunityProviderLocationId;

            // Copy non-PK properties

            if (mappingContract?.IsAddressTypeDescriptorSupported != false)
                target.AddressTypeDescriptor = source.AddressTypeDescriptor;

            if (mappingContract?.IsAgeRangeDescriptionSupported != false)
                target.AgeRangeDescription = source.AgeRangeDescription;

            if (mappingContract?.IsApartmentRoomSuiteNumberSupported != false)
                target.ApartmentRoomSuiteNumber = source.ApartmentRoomSuiteNumber;

            if (mappingContract?.IsBuildingSiteNumberSupported != false)
                target.BuildingSiteNumber = source.BuildingSiteNumber;

            if (mappingContract?.IsCapacitySupported != false)
                target.Capacity = source.Capacity;

            if (mappingContract?.IsCitySupported != false)
                target.City = source.City;

            if (mappingContract?.IsCountyFIPSCodeSupported != false)
                target.CountyFIPSCode = source.CountyFIPSCode;

            if (mappingContract?.IsNameOfCountySupported != false)
                target.NameOfCounty = source.NameOfCounty;

            if (mappingContract?.IsOldestAgeAcceptedSupported != false)
                target.OldestAgeAccepted = source.OldestAgeAccepted;

            if (mappingContract?.IsPostalCodeSupported != false)
                target.PostalCode = source.PostalCode;

            if (mappingContract?.IsSpecialNeedsProvidedIndicatorSupported != false)
                target.SpecialNeedsProvidedIndicator = source.SpecialNeedsProvidedIndicator;

            if (mappingContract?.IsStateAbbreviationDescriptorSupported != false)
                target.StateAbbreviationDescriptor = source.StateAbbreviationDescriptor;

            if (mappingContract?.IsStreetNumberNameSupported != false)
                target.StreetNumberName = source.StreetNumberName;

            if (mappingContract?.IsTimeCloseSupported != false)
                target.TimeClose = source.TimeClose;

            if (mappingContract?.IsTimeOpenSupported != false)
                target.TimeOpen = source.TimeOpen;

            if (mappingContract?.IsYoungestAgeAcceptedSupported != false)
                target.YoungestAgeAccepted = source.YoungestAgeAccepted;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.CommunityProviderResourceId = source.CommunityProviderResourceId;
                }
            }



            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------
            // CommunityProviderLocationInstructionalCalendar (CommunityProviderLocationInstructionalCalendar) (Source)
            if (mappingContract?.IsCommunityProviderLocationInstructionalCalendarSupported != false)
            {
                var itemProperty = target.GetType().GetProperty("CommunityProviderLocationInstructionalCalendar");

                if (itemProperty != null)
                {
                    if (source.CommunityProviderLocationInstructionalCalendar == null)
                    {
                        target.CommunityProviderLocationInstructionalCalendar = null;
                    }
                    else
                    {
                        var itemType = itemProperty.PropertyType;

                        if (!(mappingContract?.IsCommunityProviderLocationInstructionalCalendarCreatable ?? true))
                        {
                            // If no potential data policy violation has been detected yet
                            if (GeneratedArtifactStaticDependencies.DataPolicyExceptionContextProvider.Get() == null)
                            {
                                // Make note of this potential data policy violation using context
                                string profileName = GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                                GeneratedArtifactStaticDependencies.DataPolicyExceptionContextProvider.Set(new DataPolicyException(profileName, itemType.Name));
                            }
                        }

                        object targetCommunityProviderLocationInstructionalCalendar = Activator.CreateInstance(itemType);
                        (targetCommunityProviderLocationInstructionalCalendar as IChildEntity)?.SetParent(target);
                        source.CommunityProviderLocationInstructionalCalendar.Map(targetCommunityProviderLocationInstructionalCalendar);

                        // Update the target reference appropriately
                        target.CommunityProviderLocationInstructionalCalendar = (ICommunityProviderLocationInstructionalCalendar) targetCommunityProviderLocationInstructionalCalendar;
                    }
                }
            }
            // -------------------------------------------------------------

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
    public static class CommunityProviderLocationInstructionalCalendarMapper
    {
        private static readonly FullName _fullName_edfixcrdc_CommunityProviderLocationInstructionalCalendar = new FullName("edfixcrdc", "CommunityProviderLocationInstructionalCalendar");
    
        public static bool SynchronizeTo(this ICommunityProviderLocationInstructionalCalendar source, ICommunityProviderLocationInstructionalCalendar target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (CommunityProviderLocationInstructionalCalendarMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_CommunityProviderLocationInstructionalCalendar);


            // Copy non-PK properties

            if ((mappingContract?.IsBeginDateSupported != false)
                && target.BeginDate != source.BeginDate)
            {
                target.BeginDate = source.BeginDate;
                isModified = true;
            }

            if ((mappingContract?.IsEndDateSupported != false)
                && target.EndDate != source.EndDate)
            {
                target.EndDate = source.EndDate;
                isModified = true;
            }

            if ((mappingContract?.IsSchoolYearSupported != false)
                && target.SchoolYear != source.SchoolYear)
            {
                target.SchoolYear = source.SchoolYear;
                isModified = true;
            }

            if ((mappingContract?.IsTotalInstructionalDaysPerYearSupported != false)
                && target.TotalInstructionalDaysPerYear != source.TotalInstructionalDaysPerYear)
            {
                target.TotalInstructionalDaysPerYear = source.TotalInstructionalDaysPerYear;
                isModified = true;
            }


            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.SchoolYearTypeResourceId == null)
                {
                    target.SchoolYearTypeResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this ICommunityProviderLocationInstructionalCalendar source, ICommunityProviderLocationInstructionalCalendar target, Action<ICommunityProviderLocationInstructionalCalendar, ICommunityProviderLocationInstructionalCalendar> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (CommunityProviderLocationInstructionalCalendarMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_CommunityProviderLocationInstructionalCalendar);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsBeginDateSupported != false)
                target.BeginDate = source.BeginDate;

            if (mappingContract?.IsEndDateSupported != false)
                target.EndDate = source.EndDate;

            if (mappingContract?.IsSchoolYearSupported != false)
                target.SchoolYear = source.SchoolYear;

            if (mappingContract?.IsTotalInstructionalDaysPerYearSupported != false)
                target.TotalInstructionalDaysPerYear = source.TotalInstructionalDaysPerYear;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.SchoolYearTypeResourceId = source.SchoolYearTypeResourceId;
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
// Aggregate: MeetingDayDescriptor

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.MeetingDayDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class MeetingDayDescriptorMapper
    {
        private static readonly FullName _fullName_edfixcrdc_MeetingDayDescriptor = new FullName("edfixcrdc", "MeetingDayDescriptor");
    
        public static bool SynchronizeTo(this IMeetingDayDescriptor source, IMeetingDayDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (MeetingDayDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_MeetingDayDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on MeetingDayDescriptor
                throw new KeyChangeNotSupportedException("MeetingDayDescriptor");
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

        public static void MapTo(this IMeetingDayDescriptor source, IMeetingDayDescriptor target, Action<IMeetingDayDescriptor, IMeetingDayDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (MeetingDayDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_MeetingDayDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.MeetingDayDescriptorId = source.MeetingDayDescriptorId;

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

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.ProgramAggregate
{
    [ExcludeFromCodeCoverage]
    public static class ProgramExtensionMapper
    {
        private static readonly FullName _fullName_edfixcrdc_ProgramExtension = new FullName("edfixcrdc", "ProgramExtension");
    
        public static bool SynchronizeTo(this IProgramExtension source, IProgramExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ProgramExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ProgramExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsProgramCostDescriptorSupported != false)
                && target.ProgramCostDescriptor != source.ProgramCostDescriptor)
            {
                target.ProgramCostDescriptor = source.ProgramCostDescriptor;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this IProgramExtension source, IProgramExtension target, Action<IProgramExtension, IProgramExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ProgramExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ProgramExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsProgramCostDescriptorSupported != false)
                target.ProgramCostDescriptor = source.ProgramCostDescriptor;

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
// Aggregate: ProgramCostDescriptor

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.ProgramCostDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class ProgramCostDescriptorMapper
    {
        private static readonly FullName _fullName_edfixcrdc_ProgramCostDescriptor = new FullName("edfixcrdc", "ProgramCostDescriptor");
    
        public static bool SynchronizeTo(this IProgramCostDescriptor source, IProgramCostDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (ProgramCostDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ProgramCostDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on ProgramCostDescriptor
                throw new KeyChangeNotSupportedException("ProgramCostDescriptor");
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

        public static void MapTo(this IProgramCostDescriptor source, IProgramCostDescriptor target, Action<IProgramCostDescriptor, IProgramCostDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (ProgramCostDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ProgramCostDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.ProgramCostDescriptorId = source.ProgramCostDescriptorId;

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
// Aggregate: School

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.SchoolAggregate
{
    [ExcludeFromCodeCoverage]
    public static class SchoolExtensionMapper
    {
        private static readonly FullName _fullName_edfixcrdc_SchoolExtension = new FullName("edfixcrdc", "SchoolExtension");
    
        public static bool SynchronizeTo(this ISchoolExtension source, ISchoolExtension target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (SchoolExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_SchoolExtension);


            // Copy non-PK properties

            if ((mappingContract?.IsAlternativeStatusDescriptorSupported != false)
                && target.AlternativeStatusDescriptor != source.AlternativeStatusDescriptor)
            {
                target.AlternativeStatusDescriptor = source.AlternativeStatusDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsUngradedDetailDescriptorSupported != false)
                && target.UngradedDetailDescriptor != source.UngradedDetailDescriptor)
            {
                target.UngradedDetailDescriptor = source.UngradedDetailDescriptor;
                isModified = true;
            }

            // ----------------------------------
            //   Synch One-to-one relationships
            // ----------------------------------
            // SchoolTechnology (SchoolTechnology)
            if (mappingContract?.IsSchoolTechnologySupported != false)
            {
                if (source.SchoolTechnology == null)
                {
                    if (target.SchoolTechnology != null)
                    {
                        target.SchoolTechnology = null;
                        isModified = true;
                    }
                }
                else
                {
                    if (target.SchoolTechnology == null)
                    {
                        var itemType = target.GetType().GetProperty("SchoolTechnology").PropertyType;
            
                        if (!(mappingContract?.IsSchoolTechnologyCreatable ?? true))
                        {
                            string profileName = GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;

                            throw new DataPolicyException(profileName, itemType.Name);
                        }

                        var newItem = Activator.CreateInstance(itemType);
                        target.SchoolTechnology = (ISchoolTechnology) newItem;
                    }

                    isModified |= source.SchoolTechnology.Synchronize(target.SchoolTechnology);
                }
            }

            // -------------------------------------------------------------

            // Sync lists


            return isModified;
        }

        public static void MapTo(this ISchoolExtension source, ISchoolExtension target, Action<ISchoolExtension, ISchoolExtension> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (SchoolExtensionMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_SchoolExtension);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsAlternativeStatusDescriptorSupported != false)
                target.AlternativeStatusDescriptor = source.AlternativeStatusDescriptor;

            if (mappingContract?.IsUngradedDetailDescriptorSupported != false)
                target.UngradedDetailDescriptor = source.UngradedDetailDescriptor;

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------
            // SchoolTechnology (SchoolTechnology) (Source)
            if (mappingContract?.IsSchoolTechnologySupported != false)
            {
                var itemProperty = target.GetType().GetProperty("SchoolTechnology");

                if (itemProperty != null)
                {
                    if (source.SchoolTechnology == null)
                    {
                        target.SchoolTechnology = null;
                    }
                    else
                    {
                        var itemType = itemProperty.PropertyType;

                        if (!(mappingContract?.IsSchoolTechnologyCreatable ?? true))
                        {
                            // If no potential data policy violation has been detected yet
                            if (GeneratedArtifactStaticDependencies.DataPolicyExceptionContextProvider.Get() == null)
                            {
                                // Make note of this potential data policy violation using context
                                string profileName = GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                                GeneratedArtifactStaticDependencies.DataPolicyExceptionContextProvider.Set(new DataPolicyException(profileName, itemType.Name));
                            }
                        }

                        object targetSchoolTechnology = Activator.CreateInstance(itemType);
                        (targetSchoolTechnology as IChildEntity)?.SetParent(target.School);
                        source.SchoolTechnology.Map(targetSchoolTechnology);

                        // Update the target reference appropriately
                        target.SchoolTechnology = (ISchoolTechnology) targetSchoolTechnology;
                    }
                }
            }
            // -------------------------------------------------------------

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
    public static class SchoolTechnologyMapper
    {
        private static readonly FullName _fullName_edfixcrdc_SchoolTechnology = new FullName("edfixcrdc", "SchoolTechnology");
    
        public static bool SynchronizeTo(this ISchoolTechnology source, ISchoolTechnology target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (SchoolTechnologyMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_SchoolTechnology);


            // Copy non-PK properties

            if ((mappingContract?.IsAllClassroomsHaveWiFiSupported != false)
                && target.AllClassroomsHaveWiFi != source.AllClassroomsHaveWiFi)
            {
                target.AllClassroomsHaveWiFi = source.AllClassroomsHaveWiFi;
                isModified = true;
            }

            if ((mappingContract?.IsFiberOpticConnectionSupported != false)
                && target.FiberOpticConnection != source.FiberOpticConnection)
            {
                target.FiberOpticConnection = source.FiberOpticConnection;
                isModified = true;
            }

            if ((mappingContract?.IsStudentsBringOwnDeviceSupported != false)
                && target.StudentsBringOwnDevice != source.StudentsBringOwnDevice)
            {
                target.StudentsBringOwnDevice = source.StudentsBringOwnDevice;
                isModified = true;
            }

            if ((mappingContract?.IsStudentsTakeHomeDeviceSupported != false)
                && target.StudentsTakeHomeDevice != source.StudentsTakeHomeDevice)
            {
                target.StudentsTakeHomeDevice = source.StudentsTakeHomeDevice;
                isModified = true;
            }

            if ((mappingContract?.IsWiFiDeviceCountSupported != false)
                && target.WiFiDeviceCount != source.WiFiDeviceCount)
            {
                target.WiFiDeviceCount = source.WiFiDeviceCount;
                isModified = true;
            }


            // Sync lists


            return isModified;
        }

        public static void MapTo(this ISchoolTechnology source, ISchoolTechnology target, Action<ISchoolTechnology, ISchoolTechnology> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (SchoolTechnologyMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_SchoolTechnology);
    
            // Copy contextual primary key values

            // Copy non-PK properties

            if (mappingContract?.IsAllClassroomsHaveWiFiSupported != false)
                target.AllClassroomsHaveWiFi = source.AllClassroomsHaveWiFi;

            if (mappingContract?.IsFiberOpticConnectionSupported != false)
                target.FiberOpticConnection = source.FiberOpticConnection;

            if (mappingContract?.IsStudentsBringOwnDeviceSupported != false)
                target.StudentsBringOwnDevice = source.StudentsBringOwnDevice;

            if (mappingContract?.IsStudentsTakeHomeDeviceSupported != false)
                target.StudentsTakeHomeDevice = source.StudentsTakeHomeDevice;

            if (mappingContract?.IsWiFiDeviceCountSupported != false)
                target.WiFiDeviceCount = source.WiFiDeviceCount;

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
// Aggregate: StudentClassGroupAssociation

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.StudentClassGroupAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentClassGroupAssociationMapper
    {
        private static readonly FullName _fullName_edfixcrdc_StudentClassGroupAssociation = new FullName("edfixcrdc", "StudentClassGroupAssociation");
    
        public static bool SynchronizeTo(this IStudentClassGroupAssociation source, IStudentClassGroupAssociation target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentClassGroupAssociationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_StudentClassGroupAssociation);

            var keyStringComparer = GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer;

            // Detect primary key changes
            if (
                 (target.BeginDate != source.BeginDate)
                || (!keyStringComparer.Equals(target.ClassGroupName, source.ClassGroupName))
                || (target.CommunityProviderId != source.CommunityProviderId)
                || (target.CommunityProviderLocationId != source.CommunityProviderLocationId)
                || (target.SpecialNeedsProvidedIndicator != source.SpecialNeedsProvidedIndicator)
                || (target.StudentUniqueId != source.StudentUniqueId))
            {
                // Disallow PK column updates on StudentClassGroupAssociation
                throw new KeyChangeNotSupportedException("StudentClassGroupAssociation");
            }


            // Copy non-PK properties

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


            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.ClassGroupResourceId == null)
                {
                    target.ClassGroupResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.StudentResourceId == null)
                {
                    target.StudentResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this IStudentClassGroupAssociation source, IStudentClassGroupAssociation target, Action<IStudentClassGroupAssociation, IStudentClassGroupAssociation> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentClassGroupAssociationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_StudentClassGroupAssociation);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.BeginDate = source.BeginDate;
            target.ClassGroupName = source.ClassGroupName;
            target.CommunityProviderId = source.CommunityProviderId;
            target.CommunityProviderLocationId = source.CommunityProviderLocationId;
            target.SpecialNeedsProvidedIndicator = source.SpecialNeedsProvidedIndicator;
            target.StudentUniqueId = source.StudentUniqueId;

            // Copy non-PK properties

            if (mappingContract?.IsEndDateSupported != false)
                target.EndDate = source.EndDate;

            if (mappingContract?.IsReasonExitedDescriptorSupported != false)
                target.ReasonExitedDescriptor = source.ReasonExitedDescriptor;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.ClassGroupResourceId = source.ClassGroupResourceId;
                target.ClassGroupDiscriminator = source.ClassGroupDiscriminator;
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
// Aggregate: StudentCommunityProviderLocationAssociation

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.StudentCommunityProviderLocationAssociationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentCommunityProviderLocationAssociationMapper
    {
        private static readonly FullName _fullName_edfixcrdc_StudentCommunityProviderLocationAssociation = new FullName("edfixcrdc", "StudentCommunityProviderLocationAssociation");
    
        public static bool SynchronizeTo(this IStudentCommunityProviderLocationAssociation source, IStudentCommunityProviderLocationAssociation target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentCommunityProviderLocationAssociationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_StudentCommunityProviderLocationAssociation);

            // Detect primary key changes
            if (
                 (target.BeginDate != source.BeginDate)
                || (target.CommunityProviderId != source.CommunityProviderId)
                || (target.CommunityProviderLocationId != source.CommunityProviderLocationId)
                || (target.StudentUniqueId != source.StudentUniqueId))
            {
                // Disallow PK column updates on StudentCommunityProviderLocationAssociation
                throw new KeyChangeNotSupportedException("StudentCommunityProviderLocationAssociation");
            }


            // Copy non-PK properties

            if ((mappingContract?.IsEndDateSupported != false)
                && target.EndDate != source.EndDate)
            {
                target.EndDate = source.EndDate;
                isModified = true;
            }

            if ((mappingContract?.IsEnrollmentStatusSupported != false)
                && target.EnrollmentStatus != source.EnrollmentStatus)
            {
                target.EnrollmentStatus = source.EnrollmentStatus;
                isModified = true;
            }

            if ((mappingContract?.IsReasonExitedDescriptorSupported != false)
                && target.ReasonExitedDescriptor != source.ReasonExitedDescriptor)
            {
                target.ReasonExitedDescriptor = source.ReasonExitedDescriptor;
                isModified = true;
            }


            // Sync lists

            // Check for enabled features, and then deal with resolving aggregate reference data where it is missing
            if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.CommunityProviderLocationResourceId == null)
                {
                    target.CommunityProviderLocationResourceId = null;
                }
                // Detect an uninitialized Id and invoke the setter so that it is added to the reference data resolution context
                if (target.StudentResourceId == null)
                {
                    target.StudentResourceId = null;
                }
            }


            return isModified;
        }

        public static void MapTo(this IStudentCommunityProviderLocationAssociation source, IStudentCommunityProviderLocationAssociation target, Action<IStudentCommunityProviderLocationAssociation, IStudentCommunityProviderLocationAssociation> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentCommunityProviderLocationAssociationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_StudentCommunityProviderLocationAssociation);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.BeginDate = source.BeginDate;
            target.CommunityProviderId = source.CommunityProviderId;
            target.CommunityProviderLocationId = source.CommunityProviderLocationId;
            target.StudentUniqueId = source.StudentUniqueId;

            // Copy non-PK properties

            if (mappingContract?.IsEndDateSupported != false)
                target.EndDate = source.EndDate;

            if (mappingContract?.IsEnrollmentStatusSupported != false)
                target.EnrollmentStatus = source.EnrollmentStatus;

            if (mappingContract?.IsReasonExitedDescriptorSupported != false)
                target.ReasonExitedDescriptor = source.ReasonExitedDescriptor;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
            {
                if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                    || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
                {
                target.CommunityProviderLocationResourceId = source.CommunityProviderLocationResourceId;
                target.CommunityProviderLocationDiscriminator = source.CommunityProviderLocationDiscriminator;
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
// Aggregate: UngradedDetailDescriptor

namespace EdFi.Ods.Entities.Common.Edfixcrdc //.UngradedDetailDescriptorAggregate
{
    [ExcludeFromCodeCoverage]
    public static class UngradedDetailDescriptorMapper
    {
        private static readonly FullName _fullName_edfixcrdc_UngradedDetailDescriptor = new FullName("edfixcrdc", "UngradedDetailDescriptor");
    
        public static bool SynchronizeTo(this IUngradedDetailDescriptor source, IUngradedDetailDescriptor target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (UngradedDetailDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_UngradedDetailDescriptor);

            // Detect primary key changes
            if (
                !string.Equals(target.Namespace, source.Namespace, StringComparison.OrdinalIgnoreCase) 
                || !string.Equals(target.CodeValue, source.CodeValue, StringComparison.OrdinalIgnoreCase))
            {
                // Disallow PK column updates on UngradedDetailDescriptor
                throw new KeyChangeNotSupportedException("UngradedDetailDescriptor");
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

        public static void MapTo(this IUngradedDetailDescriptor source, IUngradedDetailDescriptor target, Action<IUngradedDetailDescriptor, IUngradedDetailDescriptor> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (UngradedDetailDescriptorMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_UngradedDetailDescriptor);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.UngradedDetailDescriptorId = source.UngradedDetailDescriptorId;

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
