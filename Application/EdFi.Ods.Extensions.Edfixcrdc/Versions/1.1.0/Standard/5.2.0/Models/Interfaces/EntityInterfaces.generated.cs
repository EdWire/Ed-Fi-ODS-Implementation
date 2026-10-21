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
}
