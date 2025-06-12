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

namespace EdFi.Ods.Entities.Common.NE
{

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CalendarDateExtension model.
    /// </summary>
    public interface ICalendarDateExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ICalendarDate CalendarDate { get; set; }

        // Non-PK properties
        decimal InstructionalDuration { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CalendarDateExtensionMappingContract : IMappingContract
    {
        public CalendarDateExtensionMappingContract(
            bool isInstructionalDurationSupported
            )
        {
            IsInstructionalDurationSupported = isInstructionalDurationSupported;
        }

        public bool IsInstructionalDurationSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "InstructionalDuration":
                    return IsInstructionalDurationSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the DisciplineActionExtension model.
    /// </summary>
    public interface IDisciplineActionExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IDisciplineAction DisciplineAction { get; set; }

        // Non-PK properties
        bool? GFSAExpulsionModifiedToLessThanOneYear { get; set; }
        string UnilateralRemovalDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class DisciplineActionExtensionMappingContract : IMappingContract
    {
        public DisciplineActionExtensionMappingContract(
            bool isGFSAExpulsionModifiedToLessThanOneYearSupported,
            bool isUnilateralRemovalDescriptorSupported
            )
        {
            IsGFSAExpulsionModifiedToLessThanOneYearSupported = isGFSAExpulsionModifiedToLessThanOneYearSupported;
            IsUnilateralRemovalDescriptorSupported = isUnilateralRemovalDescriptorSupported;
        }

        public bool IsGFSAExpulsionModifiedToLessThanOneYearSupported { get; }
        public bool IsUnilateralRemovalDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "GFSAExpulsionModifiedToLessThanOneYear":
                    return IsGFSAExpulsionModifiedToLessThanOneYearSupported;
                case "UnilateralRemovalDescriptor":
                    return IsUnilateralRemovalDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the DisciplineIncidentExtension model.
    /// </summary>
    public interface IDisciplineIncidentExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IDisciplineIncident DisciplineIncident { get; set; }

        // Non-PK properties
        bool? HomicideIndicator { get; set; }
        bool? ShootingIndicator { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class DisciplineIncidentExtensionMappingContract : IMappingContract
    {
        public DisciplineIncidentExtensionMappingContract(
            bool isHomicideIndicatorSupported,
            bool isShootingIndicatorSupported
            )
        {
            IsHomicideIndicatorSupported = isHomicideIndicatorSupported;
            IsShootingIndicatorSupported = isShootingIndicatorSupported;
        }

        public bool IsHomicideIndicatorSupported { get; }
        public bool IsShootingIndicatorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "HomicideIndicator":
                    return IsHomicideIndicatorSupported;
                case "ShootingIndicator":
                    return IsShootingIndicatorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EarlyLearningSettingDescriptor model.
    /// </summary>
    public interface IEarlyLearningSettingDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EarlyLearningSettingDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EarlyLearningSettingDescriptorMappingContract : IMappingContract
    {
        public EarlyLearningSettingDescriptorMappingContract(
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
                case "EarlyLearningSettingDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ImmigrantIndicatorDescriptor model.
    /// </summary>
    public interface IImmigrantIndicatorDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ImmigrantIndicatorDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ImmigrantIndicatorDescriptorMappingContract : IMappingContract
    {
        public ImmigrantIndicatorDescriptorMappingContract(
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
                case "ImmigrantIndicatorDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PartCTransitionDelayReasonDescriptor model.
    /// </summary>
    public interface IPartCTransitionDelayReasonDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PartCTransitionDelayReasonDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PartCTransitionDelayReasonDescriptorMappingContract : IMappingContract
    {
        public PartCTransitionDelayReasonDescriptorMappingContract(
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
                case "PartCTransitionDelayReasonDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PlacementTypeDescriptor model.
    /// </summary>
    public interface IPlacementTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PlacementTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PlacementTypeDescriptorMappingContract : IMappingContract
    {
        public PlacementTypeDescriptorMappingContract(
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
                case "PlacementTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PositionTitleDescriptor model.
    /// </summary>
    public interface IPositionTitleDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PositionTitleDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PositionTitleDescriptorMappingContract : IMappingContract
    {
        public PositionTitleDescriptorMappingContract(
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
                case "PositionTitleDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PostGraduateActivity model.
    /// </summary>
    public interface IPostGraduateActivity : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long LocalEducationAgencyId { get; set; }
        
        short SchoolYear { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        string PostGraduateActivityDescriptor { get; set; }
        string PostGraduateActivityDeterminationDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? LocalEducationAgencyResourceId { get; set; }
        Guid? SchoolYearTypeResourceId { get; set; }
        Guid? StudentResourceId { get; set; }
        string StudentDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PostGraduateActivityMappingContract : IMappingContract
    {
        public PostGraduateActivityMappingContract(
            bool isLocalEducationAgencyReferenceSupported,
            bool isPostGraduateActivityDescriptorSupported,
            bool isPostGraduateActivityDeterminationDescriptorSupported,
            bool isSchoolYearTypeReferenceSupported,
            bool isStudentReferenceSupported
            )
        {
            IsLocalEducationAgencyReferenceSupported = isLocalEducationAgencyReferenceSupported;
            IsPostGraduateActivityDescriptorSupported = isPostGraduateActivityDescriptorSupported;
            IsPostGraduateActivityDeterminationDescriptorSupported = isPostGraduateActivityDeterminationDescriptorSupported;
            IsSchoolYearTypeReferenceSupported = isSchoolYearTypeReferenceSupported;
            IsStudentReferenceSupported = isStudentReferenceSupported;
        }

        public bool IsLocalEducationAgencyReferenceSupported { get; }
        public bool IsPostGraduateActivityDescriptorSupported { get; }
        public bool IsPostGraduateActivityDeterminationDescriptorSupported { get; }
        public bool IsSchoolYearTypeReferenceSupported { get; }
        public bool IsStudentReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "LocalEducationAgencyReference":
                    return IsLocalEducationAgencyReferenceSupported;
                case "PostGraduateActivityDescriptor":
                    return IsPostGraduateActivityDescriptorSupported;
                case "PostGraduateActivityDeterminationDescriptor":
                    return IsPostGraduateActivityDeterminationDescriptorSupported;
                case "SchoolYearTypeReference":
                    return IsSchoolYearTypeReferenceSupported;
                case "StudentReference":
                    return IsStudentReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "LocalEducationAgencyId":
                    return true;
                case "SchoolYear":
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
    /// Defines available properties and methods for the abstraction of the PostGraduateActivityDescriptor model.
    /// </summary>
    public interface IPostGraduateActivityDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PostGraduateActivityDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PostGraduateActivityDescriptorMappingContract : IMappingContract
    {
        public PostGraduateActivityDescriptorMappingContract(
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
                case "PostGraduateActivityDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PostGraduateActivityDeterminationDescriptor model.
    /// </summary>
    public interface IPostGraduateActivityDeterminationDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PostGraduateActivityDeterminationDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PostGraduateActivityDeterminationDescriptorMappingContract : IMappingContract
    {
        public PostGraduateActivityDeterminationDescriptorMappingContract(
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
                case "PostGraduateActivityDeterminationDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SectionDelivery model.
    /// </summary>
    public interface ISectionDelivery : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ISectionExtension SectionExtension { get; set; }
        
        string SectionDeliveryDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SectionDeliveryMappingContract : IMappingContract
    {
        public SectionDeliveryMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "SectionDeliveryDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SectionDeliveryDescriptor model.
    /// </summary>
    public interface ISectionDeliveryDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int SectionDeliveryDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SectionDeliveryDescriptorMappingContract : IMappingContract
    {
        public SectionDeliveryDescriptorMappingContract(
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
                case "SectionDeliveryDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SectionExtension model.
    /// </summary>
    public interface ISectionExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ISection Section { get; set; }

        // Non-PK properties
        string CourseStaffIdOverride { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ISectionDelivery> SectionDeliveries { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SectionExtensionMappingContract : IMappingContract
    {
        public SectionExtensionMappingContract(
            bool isCourseStaffIdOverrideSupported,
            bool isSectionDeliveriesSupported,
            bool isSectionDeliveriesItemCreatable,
            Func<ISectionDelivery, bool> isSectionDeliveryIncluded
            )
        {
            IsCourseStaffIdOverrideSupported = isCourseStaffIdOverrideSupported;
            IsSectionDeliveriesSupported = isSectionDeliveriesSupported;
            IsSectionDeliveriesItemCreatable = isSectionDeliveriesItemCreatable;
            IsSectionDeliveryIncluded = isSectionDeliveryIncluded;
        }

        public bool IsCourseStaffIdOverrideSupported { get; }
        public bool IsSectionDeliveriesSupported { get; }
        public bool IsSectionDeliveriesItemCreatable { get; }
        public Func<ISectionDelivery, bool> IsSectionDeliveryIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CourseStaffIdOverride":
                    return IsCourseStaffIdOverrideSupported;
                case "SectionDeliveries":
                    return IsSectionDeliveriesSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "SectionDeliveries":
                    return IsSectionDeliveriesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SpecialEducationProgramDescriptor model.
    /// </summary>
    public interface ISpecialEducationProgramDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int SpecialEducationProgramDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SpecialEducationProgramDescriptorMappingContract : IMappingContract
    {
        public SpecialEducationProgramDescriptorMappingContract(
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
                case "SpecialEducationProgramDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentDisciplineIncidentBehaviorAssociationExtension model.
    /// </summary>
    public interface IStudentDisciplineIncidentBehaviorAssociationExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStudentDisciplineIncidentBehaviorAssociation StudentDisciplineIncidentBehaviorAssociation { get; set; }

        // Non-PK properties
        bool? GunFreeSchoolViolation { get; set; }
        bool? ReferralToLawEnforcement { get; set; }
        bool? SchoolRelatedArrestIndicator { get; set; }
        bool? SeriousBodilyInjury { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentDisciplineIncidentBehaviorAssociationExtensionMappingContract : IMappingContract
    {
        public StudentDisciplineIncidentBehaviorAssociationExtensionMappingContract(
            bool isGunFreeSchoolViolationSupported,
            bool isReferralToLawEnforcementSupported,
            bool isSchoolRelatedArrestIndicatorSupported,
            bool isSeriousBodilyInjurySupported
            )
        {
            IsGunFreeSchoolViolationSupported = isGunFreeSchoolViolationSupported;
            IsReferralToLawEnforcementSupported = isReferralToLawEnforcementSupported;
            IsSchoolRelatedArrestIndicatorSupported = isSchoolRelatedArrestIndicatorSupported;
            IsSeriousBodilyInjurySupported = isSeriousBodilyInjurySupported;
        }

        public bool IsGunFreeSchoolViolationSupported { get; }
        public bool IsReferralToLawEnforcementSupported { get; }
        public bool IsSchoolRelatedArrestIndicatorSupported { get; }
        public bool IsSeriousBodilyInjurySupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "GunFreeSchoolViolation":
                    return IsGunFreeSchoolViolationSupported;
                case "ReferralToLawEnforcement":
                    return IsReferralToLawEnforcementSupported;
                case "SchoolRelatedArrestIndicator":
                    return IsSchoolRelatedArrestIndicatorSupported;
                case "SeriousBodilyInjury":
                    return IsSeriousBodilyInjurySupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentEarlyLearningProgramAssociation model.
    /// </summary>
    public interface IStudentEarlyLearningProgramAssociation : EdFi.IGeneralStudentProgramAssociation, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties

        // Non-PK properties
        string EarlyLearningSettingDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentEarlyLearningProgramAssociationMappingContract : IMappingContract
    {
        public StudentEarlyLearningProgramAssociationMappingContract(
            bool isEarlyLearningSettingDescriptorSupported,
            bool isEducationOrganizationReferenceSupported,
            bool isEndDateSupported,
            bool isGeneralStudentProgramAssociationProgramParticipationStatusesSupported,
            bool isProgramReferenceSupported,
            bool isReasonExitedDescriptorSupported,
            bool isServedOutsideOfRegularSessionSupported,
            bool isStudentReferenceSupported,
            bool isGeneralStudentProgramAssociationProgramParticipationStatusesItemCreatable,
            Func<IGeneralStudentProgramAssociationProgramParticipationStatus, bool> isGeneralStudentProgramAssociationProgramParticipationStatusIncluded
            )
        {
            IsEarlyLearningSettingDescriptorSupported = isEarlyLearningSettingDescriptorSupported;
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsEndDateSupported = isEndDateSupported;
            IsGeneralStudentProgramAssociationProgramParticipationStatusesSupported = isGeneralStudentProgramAssociationProgramParticipationStatusesSupported;
            IsProgramReferenceSupported = isProgramReferenceSupported;
            IsReasonExitedDescriptorSupported = isReasonExitedDescriptorSupported;
            IsServedOutsideOfRegularSessionSupported = isServedOutsideOfRegularSessionSupported;
            IsStudentReferenceSupported = isStudentReferenceSupported;
            IsGeneralStudentProgramAssociationProgramParticipationStatusesItemCreatable = isGeneralStudentProgramAssociationProgramParticipationStatusesItemCreatable;
            IsGeneralStudentProgramAssociationProgramParticipationStatusIncluded = isGeneralStudentProgramAssociationProgramParticipationStatusIncluded;
        }

        public bool IsEarlyLearningSettingDescriptorSupported { get; }
        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsGeneralStudentProgramAssociationProgramParticipationStatusesSupported { get; }
        public bool IsProgramReferenceSupported { get; }
        public bool IsReasonExitedDescriptorSupported { get; }
        public bool IsServedOutsideOfRegularSessionSupported { get; }
        public bool IsStudentReferenceSupported { get; }
        public bool IsGeneralStudentProgramAssociationProgramParticipationStatusesItemCreatable { get; }
        public Func<IGeneralStudentProgramAssociationProgramParticipationStatus, bool> IsGeneralStudentProgramAssociationProgramParticipationStatusIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EarlyLearningSettingDescriptor":
                    return IsEarlyLearningSettingDescriptorSupported;
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "GeneralStudentProgramAssociationProgramParticipationStatuses":
                    return IsGeneralStudentProgramAssociationProgramParticipationStatusesSupported;
                case "ProgramReference":
                    return IsProgramReferenceSupported;
                case "ReasonExitedDescriptor":
                    return IsReasonExitedDescriptorSupported;
                case "ServedOutsideOfRegularSession":
                    return IsServedOutsideOfRegularSessionSupported;
                case "StudentReference":
                    return IsStudentReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "EducationOrganizationId":
                    return true;
                case "ProgramEducationOrganizationId":
                    return true;
                case "ProgramName":
                    return true;
                case "ProgramTypeDescriptor":
                    return true;
                case "StudentUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "GeneralStudentProgramAssociationProgramParticipationStatuses":
                    return IsGeneralStudentProgramAssociationProgramParticipationStatusesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentEducationOrganizationAssociationExtension model.
    /// </summary>
    public interface IStudentEducationOrganizationAssociationExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStudentEducationOrganizationAssociation StudentEducationOrganizationAssociation { get; set; }

        // Non-PK properties
        string ImmigrantIndicatorDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentEducationOrganizationAssociationExtensionMappingContract : IMappingContract
    {
        public StudentEducationOrganizationAssociationExtensionMappingContract(
            bool isImmigrantIndicatorDescriptorSupported
            )
        {
            IsImmigrantIndicatorDescriptorSupported = isImmigrantIndicatorDescriptorSupported;
        }

        public bool IsImmigrantIndicatorDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ImmigrantIndicatorDescriptor":
                    return IsImmigrantIndicatorDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentLanguageInstructionProgramAssociationExtension model.
    /// </summary>
    public interface IStudentLanguageInstructionProgramAssociationExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStudentLanguageInstructionProgramAssociation StudentLanguageInstructionProgramAssociation { get; set; }

        // Non-PK properties
        bool? DismissedViaIEPReview { get; set; }
        bool? RedesignatedEnglishFluent { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentLanguageInstructionProgramAssociationExtensionMappingContract : IMappingContract
    {
        public StudentLanguageInstructionProgramAssociationExtensionMappingContract(
            bool isDismissedViaIEPReviewSupported,
            bool isRedesignatedEnglishFluentSupported
            )
        {
            IsDismissedViaIEPReviewSupported = isDismissedViaIEPReviewSupported;
            IsRedesignatedEnglishFluentSupported = isRedesignatedEnglishFluentSupported;
        }

        public bool IsDismissedViaIEPReviewSupported { get; }
        public bool IsRedesignatedEnglishFluentSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DismissedViaIEPReview":
                    return IsDismissedViaIEPReviewSupported;
                case "RedesignatedEnglishFluent":
                    return IsRedesignatedEnglishFluentSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentSchoolAssociationExtension model.
    /// </summary>
    public interface IStudentSchoolAssociationExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStudentSchoolAssociation StudentSchoolAssociation { get; set; }

        // Non-PK properties
        long? ExpectedHighSchoolOfGraduationSchoolId { get; set; }
        long ReportingSchoolId { get; set; }
        long ResidentLocalEducationAgencyId { get; set; }
        long? ResidentSchoolId { get; set; }
        decimal? StudentDaysEnrolled { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? ExpectedHighSchoolOfGraduationSchoolResourceId { get; set; }
        Guid? ReportingSchoolResourceId { get; set; }
        Guid? ResidentLocalEducationAgencyResourceId { get; set; }
        Guid? ResidentSchoolResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentSchoolAssociationExtensionMappingContract : IMappingContract
    {
        public StudentSchoolAssociationExtensionMappingContract(
            bool isExpectedHighSchoolOfGraduationSchoolIdSupported,
            bool isExpectedHighSchoolOfGraduationSchoolReferenceSupported,
            bool isReportingSchoolIdSupported,
            bool isReportingSchoolReferenceSupported,
            bool isResidentLocalEducationAgencyIdSupported,
            bool isResidentLocalEducationAgencyReferenceSupported,
            bool isResidentSchoolIdSupported,
            bool isResidentSchoolReferenceSupported,
            bool isStudentDaysEnrolledSupported
            )
        {
            IsExpectedHighSchoolOfGraduationSchoolIdSupported = isExpectedHighSchoolOfGraduationSchoolIdSupported;
            IsExpectedHighSchoolOfGraduationSchoolReferenceSupported = isExpectedHighSchoolOfGraduationSchoolReferenceSupported;
            IsReportingSchoolIdSupported = isReportingSchoolIdSupported;
            IsReportingSchoolReferenceSupported = isReportingSchoolReferenceSupported;
            IsResidentLocalEducationAgencyIdSupported = isResidentLocalEducationAgencyIdSupported;
            IsResidentLocalEducationAgencyReferenceSupported = isResidentLocalEducationAgencyReferenceSupported;
            IsResidentSchoolIdSupported = isResidentSchoolIdSupported;
            IsResidentSchoolReferenceSupported = isResidentSchoolReferenceSupported;
            IsStudentDaysEnrolledSupported = isStudentDaysEnrolledSupported;
        }

        public bool IsExpectedHighSchoolOfGraduationSchoolIdSupported { get; }
        public bool IsExpectedHighSchoolOfGraduationSchoolReferenceSupported { get; }
        public bool IsReportingSchoolIdSupported { get; }
        public bool IsReportingSchoolReferenceSupported { get; }
        public bool IsResidentLocalEducationAgencyIdSupported { get; }
        public bool IsResidentLocalEducationAgencyReferenceSupported { get; }
        public bool IsResidentSchoolIdSupported { get; }
        public bool IsResidentSchoolReferenceSupported { get; }
        public bool IsStudentDaysEnrolledSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ExpectedHighSchoolOfGraduationSchoolId":
                    return IsExpectedHighSchoolOfGraduationSchoolIdSupported;
                case "ExpectedHighSchoolOfGraduationSchoolReference":
                    return IsExpectedHighSchoolOfGraduationSchoolReferenceSupported;
                case "ReportingSchoolId":
                    return IsReportingSchoolIdSupported;
                case "ReportingSchoolReference":
                    return IsReportingSchoolReferenceSupported;
                case "ResidentLocalEducationAgencyId":
                    return IsResidentLocalEducationAgencyIdSupported;
                case "ResidentLocalEducationAgencyReference":
                    return IsResidentLocalEducationAgencyReferenceSupported;
                case "ResidentSchoolId":
                    return IsResidentSchoolIdSupported;
                case "ResidentSchoolReference":
                    return IsResidentSchoolReferenceSupported;
                case "StudentDaysEnrolled":
                    return IsStudentDaysEnrolledSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentSpecialEducationProgramAssociationExtension model.
    /// </summary>
    public interface IStudentSpecialEducationProgramAssociationExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStudentSpecialEducationProgramAssociation StudentSpecialEducationProgramAssociation { get; set; }

        // Non-PK properties
        DateTime? InitialSpecialEducationEntryDate { get; set; }
        string PartCTransitionDelayReasonDescriptor { get; set; }
        string PlacementTypeDescriptor { get; set; }
        string SpecialEducationProgramDescriptor { get; set; }
        bool? ToTakeAlternateAssessment { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentSpecialEducationProgramAssociationExtensionMappingContract : IMappingContract
    {
        public StudentSpecialEducationProgramAssociationExtensionMappingContract(
            bool isInitialSpecialEducationEntryDateSupported,
            bool isPartCTransitionDelayReasonDescriptorSupported,
            bool isPlacementTypeDescriptorSupported,
            bool isSpecialEducationProgramDescriptorSupported,
            bool isToTakeAlternateAssessmentSupported
            )
        {
            IsInitialSpecialEducationEntryDateSupported = isInitialSpecialEducationEntryDateSupported;
            IsPartCTransitionDelayReasonDescriptorSupported = isPartCTransitionDelayReasonDescriptorSupported;
            IsPlacementTypeDescriptorSupported = isPlacementTypeDescriptorSupported;
            IsSpecialEducationProgramDescriptorSupported = isSpecialEducationProgramDescriptorSupported;
            IsToTakeAlternateAssessmentSupported = isToTakeAlternateAssessmentSupported;
        }

        public bool IsInitialSpecialEducationEntryDateSupported { get; }
        public bool IsPartCTransitionDelayReasonDescriptorSupported { get; }
        public bool IsPlacementTypeDescriptorSupported { get; }
        public bool IsSpecialEducationProgramDescriptorSupported { get; }
        public bool IsToTakeAlternateAssessmentSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "InitialSpecialEducationEntryDate":
                    return IsInitialSpecialEducationEntryDateSupported;
                case "PartCTransitionDelayReasonDescriptor":
                    return IsPartCTransitionDelayReasonDescriptorSupported;
                case "PlacementTypeDescriptor":
                    return IsPlacementTypeDescriptorSupported;
                case "SpecialEducationProgramDescriptor":
                    return IsSpecialEducationProgramDescriptorSupported;
                case "ToTakeAlternateAssessment":
                    return IsToTakeAlternateAssessmentSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the UnilateralRemovalDescriptor model.
    /// </summary>
    public interface IUnilateralRemovalDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int UnilateralRemovalDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class UnilateralRemovalDescriptorMappingContract : IMappingContract
    {
        public UnilateralRemovalDescriptorMappingContract(
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
                case "UnilateralRemovalDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }
}
