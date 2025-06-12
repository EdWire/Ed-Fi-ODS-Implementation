using System;
using System.Linq;
using System.Collections.Generic;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Models;
using EdFi.Ods.Entities.Common.EdFi;

#pragma warning disable 108,114

namespace EdFi.Ods.Entities.Common.Edfixcrdc
{

    /// <summary>
    /// Defines available properties and methods for the abstraction of the AlternativeStatusDescriptor model.
    /// </summary>
    public interface IAlternativeStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int AlternativeStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class AlternativeStatusDescriptorMappingContract : IMappingContract
    {
        public AlternativeStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AlternativeStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ClassGroup model.
    /// </summary>
    public interface IClassGroup : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string ClassGroupName { get; set; }
        
        long CommunityProviderId { get; set; }
        
        int CommunityProviderLocationId { get; set; }
        
        bool SpecialNeedsProvidedIndicator { get; set; }

        // Non-PK properties
        int? Capacity { get; set; }
        int? DaysAvailablePerWeek { get; set; }
        decimal? HoursAvailablePerDay { get; set; }
        string ServiceDescriptor { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IClassGroupCourse> ClassGroupCourses { get; set; }
        ICollection<IClassGroupMeetingTime> ClassGroupMeetingTimes { get; set; }

        // Resource reference data
        Guid? CommunityProviderLocationResourceId { get; set; }
        string CommunityProviderLocationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ClassGroupMappingContract : IMappingContract
    {
        public ClassGroupMappingContract(
            bool isCapacitySupported,
            bool isClassGroupCoursesSupported,
            bool isClassGroupMeetingTimesSupported,
            bool isCommunityProviderLocationReferenceSupported,
            bool isDaysAvailablePerWeekSupported,
            bool isHoursAvailablePerDaySupported,
            bool isServiceDescriptorSupported,
            bool isClassGroupCoursesItemCreatable,
            Func<IClassGroupCourse, bool> isClassGroupCourseIncluded,
            bool isClassGroupMeetingTimesItemCreatable,
            Func<IClassGroupMeetingTime, bool> isClassGroupMeetingTimeIncluded
            )
        {
            IsCapacitySupported = isCapacitySupported;
            IsClassGroupCoursesSupported = isClassGroupCoursesSupported;
            IsClassGroupMeetingTimesSupported = isClassGroupMeetingTimesSupported;
            IsCommunityProviderLocationReferenceSupported = isCommunityProviderLocationReferenceSupported;
            IsDaysAvailablePerWeekSupported = isDaysAvailablePerWeekSupported;
            IsHoursAvailablePerDaySupported = isHoursAvailablePerDaySupported;
            IsServiceDescriptorSupported = isServiceDescriptorSupported;
            IsClassGroupCoursesItemCreatable = isClassGroupCoursesItemCreatable;
            IsClassGroupCourseIncluded = isClassGroupCourseIncluded;
            IsClassGroupMeetingTimesItemCreatable = isClassGroupMeetingTimesItemCreatable;
            IsClassGroupMeetingTimeIncluded = isClassGroupMeetingTimeIncluded;
        }

        public bool IsCapacitySupported { get; }
        public bool IsClassGroupCoursesSupported { get; }
        public bool IsClassGroupMeetingTimesSupported { get; }
        public bool IsCommunityProviderLocationReferenceSupported { get; }
        public bool IsDaysAvailablePerWeekSupported { get; }
        public bool IsHoursAvailablePerDaySupported { get; }
        public bool IsServiceDescriptorSupported { get; }
        public bool IsClassGroupCoursesItemCreatable { get; }
        public Func<IClassGroupCourse, bool> IsClassGroupCourseIncluded { get; }
        public bool IsClassGroupMeetingTimesItemCreatable { get; }
        public Func<IClassGroupMeetingTime, bool> IsClassGroupMeetingTimeIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "Capacity":
                    return IsCapacitySupported;
                case "ClassGroupCourses":
                    return IsClassGroupCoursesSupported;
                case "ClassGroupMeetingTimes":
                    return IsClassGroupMeetingTimesSupported;
                case "CommunityProviderLocationReference":
                    return IsCommunityProviderLocationReferenceSupported;
                case "DaysAvailablePerWeek":
                    return IsDaysAvailablePerWeekSupported;
                case "HoursAvailablePerDay":
                    return IsHoursAvailablePerDaySupported;
                case "ServiceDescriptor":
                    return IsServiceDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ClassGroupName":
                    return true;
                case "CommunityProviderId":
                    return true;
                case "CommunityProviderLocationId":
                    return true;
                case "SpecialNeedsProvidedIndicator":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "ClassGroupCourses":
                    return IsClassGroupCoursesItemCreatable;
                case "ClassGroupMeetingTimes":
                    return IsClassGroupMeetingTimesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ClassGroupCourse model.
    /// </summary>
    public interface IClassGroupCourse : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IClassGroup ClassGroup { get; set; }
        
        string CourseCode { get; set; }
        
        long EducationOrganizationId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? CourseResourceId { get; set; }
        string CourseDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ClassGroupCourseMappingContract : IMappingContract
    {
        public ClassGroupCourseMappingContract(
            bool isCourseReferenceSupported
            )
        {
            IsCourseReferenceSupported = isCourseReferenceSupported;
        }

        public bool IsCourseReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CourseReference":
                    return IsCourseReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CourseCode":
                    return true;
                case "EducationOrganizationId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ClassGroupMeetingTime model.
    /// </summary>
    public interface IClassGroupMeetingTime : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IClassGroup ClassGroup { get; set; }
        
        string MeetingDayDescriptor { get; set; }
        
        TimeSpan StartTime { get; set; }
        
        TimeSpan StopTime { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ClassGroupMeetingTimeMappingContract : IMappingContract
    {
        public ClassGroupMeetingTimeMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "MeetingDayDescriptor":
                    return true;
                case "StartTime":
                    return true;
                case "StopTime":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CommunityProviderLocation model.
    /// </summary>
    public interface ICommunityProviderLocation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long CommunityProviderId { get; set; }
        
        int CommunityProviderLocationId { get; set; }

        // Non-PK properties
        string AddressTypeDescriptor { get; set; }
        string AgeRangeDescription { get; set; }
        string ApartmentRoomSuiteNumber { get; set; }
        string BuildingSiteNumber { get; set; }
        int? Capacity { get; set; }
        string City { get; set; }
        string CountyFIPSCode { get; set; }
        string NameOfCounty { get; set; }
        int? OldestAgeAccepted { get; set; }
        string PostalCode { get; set; }
        bool? SpecialNeedsProvidedIndicator { get; set; }
        string StateAbbreviationDescriptor { get; set; }
        string StreetNumberName { get; set; }
        TimeSpan? TimeClose { get; set; }
        TimeSpan? TimeOpen { get; set; }
        int? YoungestAgeAccepted { get; set; }

        // One-to-one relationships

        ICommunityProviderLocationInstructionalCalendar CommunityProviderLocationInstructionalCalendar { get; set; }

        // Lists

        // Resource reference data
        Guid? CommunityProviderResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CommunityProviderLocationMappingContract : IMappingContract
    {
        public CommunityProviderLocationMappingContract(
            bool isAddressTypeDescriptorSupported,
            bool isAgeRangeDescriptionSupported,
            bool isApartmentRoomSuiteNumberSupported,
            bool isBuildingSiteNumberSupported,
            bool isCapacitySupported,
            bool isCitySupported,
            bool isCommunityProviderLocationInstructionalCalendarSupported,
            bool isCommunityProviderReferenceSupported,
            bool isCountyFIPSCodeSupported,
            bool isNameOfCountySupported,
            bool isOldestAgeAcceptedSupported,
            bool isPostalCodeSupported,
            bool isSpecialNeedsProvidedIndicatorSupported,
            bool isStateAbbreviationDescriptorSupported,
            bool isStreetNumberNameSupported,
            bool isTimeCloseSupported,
            bool isTimeOpenSupported,
            bool isYoungestAgeAcceptedSupported,
            bool isCommunityProviderLocationInstructionalCalendarCreatable
            )
        {
            IsAddressTypeDescriptorSupported = isAddressTypeDescriptorSupported;
            IsAgeRangeDescriptionSupported = isAgeRangeDescriptionSupported;
            IsApartmentRoomSuiteNumberSupported = isApartmentRoomSuiteNumberSupported;
            IsBuildingSiteNumberSupported = isBuildingSiteNumberSupported;
            IsCapacitySupported = isCapacitySupported;
            IsCitySupported = isCitySupported;
            IsCommunityProviderLocationInstructionalCalendarSupported = isCommunityProviderLocationInstructionalCalendarSupported;
            IsCommunityProviderReferenceSupported = isCommunityProviderReferenceSupported;
            IsCountyFIPSCodeSupported = isCountyFIPSCodeSupported;
            IsNameOfCountySupported = isNameOfCountySupported;
            IsOldestAgeAcceptedSupported = isOldestAgeAcceptedSupported;
            IsPostalCodeSupported = isPostalCodeSupported;
            IsSpecialNeedsProvidedIndicatorSupported = isSpecialNeedsProvidedIndicatorSupported;
            IsStateAbbreviationDescriptorSupported = isStateAbbreviationDescriptorSupported;
            IsStreetNumberNameSupported = isStreetNumberNameSupported;
            IsTimeCloseSupported = isTimeCloseSupported;
            IsTimeOpenSupported = isTimeOpenSupported;
            IsYoungestAgeAcceptedSupported = isYoungestAgeAcceptedSupported;
            IsCommunityProviderLocationInstructionalCalendarCreatable = isCommunityProviderLocationInstructionalCalendarCreatable;
        }

        public bool IsAddressTypeDescriptorSupported { get; }
        public bool IsAgeRangeDescriptionSupported { get; }
        public bool IsApartmentRoomSuiteNumberSupported { get; }
        public bool IsBuildingSiteNumberSupported { get; }
        public bool IsCapacitySupported { get; }
        public bool IsCitySupported { get; }
        public bool IsCommunityProviderLocationInstructionalCalendarSupported { get; }
        public bool IsCommunityProviderReferenceSupported { get; }
        public bool IsCountyFIPSCodeSupported { get; }
        public bool IsNameOfCountySupported { get; }
        public bool IsOldestAgeAcceptedSupported { get; }
        public bool IsPostalCodeSupported { get; }
        public bool IsSpecialNeedsProvidedIndicatorSupported { get; }
        public bool IsStateAbbreviationDescriptorSupported { get; }
        public bool IsStreetNumberNameSupported { get; }
        public bool IsTimeCloseSupported { get; }
        public bool IsTimeOpenSupported { get; }
        public bool IsYoungestAgeAcceptedSupported { get; }
        public bool IsCommunityProviderLocationInstructionalCalendarCreatable { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AddressTypeDescriptor":
                    return IsAddressTypeDescriptorSupported;
                case "AgeRangeDescription":
                    return IsAgeRangeDescriptionSupported;
                case "ApartmentRoomSuiteNumber":
                    return IsApartmentRoomSuiteNumberSupported;
                case "BuildingSiteNumber":
                    return IsBuildingSiteNumberSupported;
                case "Capacity":
                    return IsCapacitySupported;
                case "City":
                    return IsCitySupported;
                case "CommunityProviderLocationInstructionalCalendar":
                    return IsCommunityProviderLocationInstructionalCalendarSupported;
                case "CommunityProviderReference":
                    return IsCommunityProviderReferenceSupported;
                case "CountyFIPSCode":
                    return IsCountyFIPSCodeSupported;
                case "NameOfCounty":
                    return IsNameOfCountySupported;
                case "OldestAgeAccepted":
                    return IsOldestAgeAcceptedSupported;
                case "PostalCode":
                    return IsPostalCodeSupported;
                case "SpecialNeedsProvidedIndicator":
                    return IsSpecialNeedsProvidedIndicatorSupported;
                case "StateAbbreviationDescriptor":
                    return IsStateAbbreviationDescriptorSupported;
                case "StreetNumberName":
                    return IsStreetNumberNameSupported;
                case "TimeClose":
                    return IsTimeCloseSupported;
                case "TimeOpen":
                    return IsTimeOpenSupported;
                case "YoungestAgeAccepted":
                    return IsYoungestAgeAcceptedSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CommunityProviderId":
                    return true;
                case "CommunityProviderLocationId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CommunityProviderLocationInstructionalCalendar":
                    return IsCommunityProviderLocationInstructionalCalendarCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CommunityProviderLocationInstructionalCalendar model.
    /// </summary>
    public interface ICommunityProviderLocationInstructionalCalendar : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICommunityProviderLocation CommunityProviderLocation { get; set; }

        // Non-PK properties
        DateTime BeginDate { get; set; }
        DateTime EndDate { get; set; }
        short SchoolYear { get; set; }
        int TotalInstructionalDaysPerYear { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? SchoolYearTypeResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CommunityProviderLocationInstructionalCalendarMappingContract : IMappingContract
    {
        public CommunityProviderLocationInstructionalCalendarMappingContract(
            bool isBeginDateSupported,
            bool isEndDateSupported,
            bool isSchoolYearSupported,
            bool isSchoolYearTypeReferenceSupported,
            bool isTotalInstructionalDaysPerYearSupported
            )
        {
            IsBeginDateSupported = isBeginDateSupported;
            IsEndDateSupported = isEndDateSupported;
            IsSchoolYearSupported = isSchoolYearSupported;
            IsSchoolYearTypeReferenceSupported = isSchoolYearTypeReferenceSupported;
            IsTotalInstructionalDaysPerYearSupported = isTotalInstructionalDaysPerYearSupported;
        }

        public bool IsBeginDateSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsSchoolYearSupported { get; }
        public bool IsSchoolYearTypeReferenceSupported { get; }
        public bool IsTotalInstructionalDaysPerYearSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BeginDate":
                    return IsBeginDateSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "SchoolYear":
                    return IsSchoolYearSupported;
                case "SchoolYearTypeReference":
                    return IsSchoolYearTypeReferenceSupported;
                case "TotalInstructionalDaysPerYear":
                    return IsTotalInstructionalDaysPerYearSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the MeetingDayDescriptor model.
    /// </summary>
    public interface IMeetingDayDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int MeetingDayDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class MeetingDayDescriptorMappingContract : IMappingContract
    {
        public MeetingDayDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "MeetingDayDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ProgramCostDescriptor model.
    /// </summary>
    public interface IProgramCostDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ProgramCostDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProgramCostDescriptorMappingContract : IMappingContract
    {
        public ProgramCostDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ProgramCostDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ProgramExtension model.
    /// </summary>
    public interface IProgramExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IProgram Program { get; set; }

        // Non-PK properties
        string ProgramCostDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProgramExtensionMappingContract : IMappingContract
    {
        public ProgramExtensionMappingContract(
            bool isProgramCostDescriptorSupported
            )
        {
            IsProgramCostDescriptorSupported = isProgramCostDescriptorSupported;
        }

        public bool IsProgramCostDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ProgramCostDescriptor":
                    return IsProgramCostDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RestraintCategoryDescriptor model.
    /// </summary>
    public interface IRestraintCategoryDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int RestraintCategoryDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RestraintCategoryDescriptorMappingContract : IMappingContract
    {
        public RestraintCategoryDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RestraintCategoryDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RestraintEventExtension model.
    /// </summary>
    public interface IRestraintEventExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IRestraintEvent RestraintEvent { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists
        ICollection<IRestraintEventRestraintCategory> RestraintEventRestraintCategories { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RestraintEventExtensionMappingContract : IMappingContract
    {
        public RestraintEventExtensionMappingContract(
            bool isRestraintEventRestraintCategoriesSupported,
            bool isRestraintEventRestraintCategoriesItemCreatable,
            Func<IRestraintEventRestraintCategory, bool> isRestraintEventRestraintCategoryIncluded
            )
        {
            IsRestraintEventRestraintCategoriesSupported = isRestraintEventRestraintCategoriesSupported;
            IsRestraintEventRestraintCategoriesItemCreatable = isRestraintEventRestraintCategoriesItemCreatable;
            IsRestraintEventRestraintCategoryIncluded = isRestraintEventRestraintCategoryIncluded;
        }

        public bool IsRestraintEventRestraintCategoriesSupported { get; }
        public bool IsRestraintEventRestraintCategoriesItemCreatable { get; }
        public Func<IRestraintEventRestraintCategory, bool> IsRestraintEventRestraintCategoryIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "RestraintEventRestraintCategories":
                    return IsRestraintEventRestraintCategoriesSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "RestraintEventRestraintCategories":
                    return IsRestraintEventRestraintCategoriesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RestraintEventRestraintCategory model.
    /// </summary>
    public interface IRestraintEventRestraintCategory : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRestraintEventExtension RestraintEventExtension { get; set; }
        
        string RestraintCategoryDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RestraintEventRestraintCategoryMappingContract : IMappingContract
    {
        public RestraintEventRestraintCategoryMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RestraintCategoryDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SchoolExtension model.
    /// </summary>
    public interface ISchoolExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ISchool School { get; set; }

        // Non-PK properties
        string AlternativeStatusDescriptor { get; set; }
        string UngradedDetailDescriptor { get; set; }

        // One-to-one relationships

        ISchoolTechnology SchoolTechnology { get; set; }

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SchoolExtensionMappingContract : IMappingContract
    {
        public SchoolExtensionMappingContract(
            bool isAlternativeStatusDescriptorSupported,
            bool isSchoolTechnologySupported,
            bool isUngradedDetailDescriptorSupported,
            bool isSchoolTechnologyCreatable
            )
        {
            IsAlternativeStatusDescriptorSupported = isAlternativeStatusDescriptorSupported;
            IsSchoolTechnologySupported = isSchoolTechnologySupported;
            IsUngradedDetailDescriptorSupported = isUngradedDetailDescriptorSupported;
            IsSchoolTechnologyCreatable = isSchoolTechnologyCreatable;
        }

        public bool IsAlternativeStatusDescriptorSupported { get; }
        public bool IsSchoolTechnologySupported { get; }
        public bool IsUngradedDetailDescriptorSupported { get; }
        public bool IsSchoolTechnologyCreatable { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AlternativeStatusDescriptor":
                    return IsAlternativeStatusDescriptorSupported;
                case "SchoolTechnology":
                    return IsSchoolTechnologySupported;
                case "UngradedDetailDescriptor":
                    return IsUngradedDetailDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "SchoolTechnology":
                    return IsSchoolTechnologyCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SchoolTechnology model.
    /// </summary>
    public interface ISchoolTechnology : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ISchoolExtension SchoolExtension { get; set; }

        // Non-PK properties
        bool AllClassroomsHaveWiFi { get; set; }
        bool FiberOpticConnection { get; set; }
        bool StudentsBringOwnDevice { get; set; }
        bool StudentsTakeHomeDevice { get; set; }
        int WiFiDeviceCount { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SchoolTechnologyMappingContract : IMappingContract
    {
        public SchoolTechnologyMappingContract(
            bool isAllClassroomsHaveWiFiSupported,
            bool isFiberOpticConnectionSupported,
            bool isStudentsBringOwnDeviceSupported,
            bool isStudentsTakeHomeDeviceSupported,
            bool isWiFiDeviceCountSupported
            )
        {
            IsAllClassroomsHaveWiFiSupported = isAllClassroomsHaveWiFiSupported;
            IsFiberOpticConnectionSupported = isFiberOpticConnectionSupported;
            IsStudentsBringOwnDeviceSupported = isStudentsBringOwnDeviceSupported;
            IsStudentsTakeHomeDeviceSupported = isStudentsTakeHomeDeviceSupported;
            IsWiFiDeviceCountSupported = isWiFiDeviceCountSupported;
        }

        public bool IsAllClassroomsHaveWiFiSupported { get; }
        public bool IsFiberOpticConnectionSupported { get; }
        public bool IsStudentsBringOwnDeviceSupported { get; }
        public bool IsStudentsTakeHomeDeviceSupported { get; }
        public bool IsWiFiDeviceCountSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AllClassroomsHaveWiFi":
                    return IsAllClassroomsHaveWiFiSupported;
                case "FiberOpticConnection":
                    return IsFiberOpticConnectionSupported;
                case "StudentsBringOwnDevice":
                    return IsStudentsBringOwnDeviceSupported;
                case "StudentsTakeHomeDevice":
                    return IsStudentsTakeHomeDeviceSupported;
                case "WiFiDeviceCount":
                    return IsWiFiDeviceCountSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentClassGroupAssociation model.
    /// </summary>
    public interface IStudentClassGroupAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime BeginDate { get; set; }
        
        string ClassGroupName { get; set; }
        
        long CommunityProviderId { get; set; }
        
        int CommunityProviderLocationId { get; set; }
        
        bool SpecialNeedsProvidedIndicator { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        DateTime? EndDate { get; set; }
        string ReasonExitedDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? ClassGroupResourceId { get; set; }
        string ClassGroupDiscriminator { get; set; }
        Guid? StudentResourceId { get; set; }
        string StudentDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentClassGroupAssociationMappingContract : IMappingContract
    {
        public StudentClassGroupAssociationMappingContract(
            bool isClassGroupReferenceSupported,
            bool isEndDateSupported,
            bool isReasonExitedDescriptorSupported,
            bool isStudentReferenceSupported
            )
        {
            IsClassGroupReferenceSupported = isClassGroupReferenceSupported;
            IsEndDateSupported = isEndDateSupported;
            IsReasonExitedDescriptorSupported = isReasonExitedDescriptorSupported;
            IsStudentReferenceSupported = isStudentReferenceSupported;
        }

        public bool IsClassGroupReferenceSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsReasonExitedDescriptorSupported { get; }
        public bool IsStudentReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ClassGroupReference":
                    return IsClassGroupReferenceSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "ReasonExitedDescriptor":
                    return IsReasonExitedDescriptorSupported;
                case "StudentReference":
                    return IsStudentReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "ClassGroupName":
                    return true;
                case "CommunityProviderId":
                    return true;
                case "CommunityProviderLocationId":
                    return true;
                case "SpecialNeedsProvidedIndicator":
                    return true;
                case "StudentUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentCommunityProviderLocationAssociation model.
    /// </summary>
    public interface IStudentCommunityProviderLocationAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime BeginDate { get; set; }
        
        long CommunityProviderId { get; set; }
        
        int CommunityProviderLocationId { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        DateTime? EndDate { get; set; }
        string EnrollmentStatus { get; set; }
        string ReasonExitedDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? CommunityProviderLocationResourceId { get; set; }
        string CommunityProviderLocationDiscriminator { get; set; }
        Guid? StudentResourceId { get; set; }
        string StudentDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentCommunityProviderLocationAssociationMappingContract : IMappingContract
    {
        public StudentCommunityProviderLocationAssociationMappingContract(
            bool isCommunityProviderLocationReferenceSupported,
            bool isEndDateSupported,
            bool isEnrollmentStatusSupported,
            bool isReasonExitedDescriptorSupported,
            bool isStudentReferenceSupported
            )
        {
            IsCommunityProviderLocationReferenceSupported = isCommunityProviderLocationReferenceSupported;
            IsEndDateSupported = isEndDateSupported;
            IsEnrollmentStatusSupported = isEnrollmentStatusSupported;
            IsReasonExitedDescriptorSupported = isReasonExitedDescriptorSupported;
            IsStudentReferenceSupported = isStudentReferenceSupported;
        }

        public bool IsCommunityProviderLocationReferenceSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsEnrollmentStatusSupported { get; }
        public bool IsReasonExitedDescriptorSupported { get; }
        public bool IsStudentReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CommunityProviderLocationReference":
                    return IsCommunityProviderLocationReferenceSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "EnrollmentStatus":
                    return IsEnrollmentStatusSupported;
                case "ReasonExitedDescriptor":
                    return IsReasonExitedDescriptorSupported;
                case "StudentReference":
                    return IsStudentReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "CommunityProviderId":
                    return true;
                case "CommunityProviderLocationId":
                    return true;
                case "StudentUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the UngradedDetailDescriptor model.
    /// </summary>
    public interface IUngradedDetailDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int UngradedDetailDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class UngradedDetailDescriptorMappingContract : IMappingContract
    {
        public UngradedDetailDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "UngradedDetailDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }
}
