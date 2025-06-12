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

namespace EdFi.Ods.Entities.Common.EdFiXLearningModality
{

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ModalityTimeTypeDescriptor model.
    /// </summary>
    public interface IModalityTimeTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ModalityTimeTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ModalityTimeTypeDescriptorMappingContract : IMappingContract
    {
        public ModalityTimeTypeDescriptorMappingContract(
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
                case "ModalityTimeTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ModalityTypeDescriptor model.
    /// </summary>
    public interface IModalityTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ModalityTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ModalityTypeDescriptorMappingContract : IMappingContract
    {
        public ModalityTypeDescriptorMappingContract(
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
                case "ModalityTypeDescriptorId":
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

        // One-to-one relationships

        // Lists
        ICollection<IProgramLearningModality> ProgramLearningModalities { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProgramExtensionMappingContract : IMappingContract
    {
        public ProgramExtensionMappingContract(
            bool isProgramLearningModalitiesSupported,
            bool isProgramLearningModalitiesItemCreatable,
            Func<IProgramLearningModality, bool> isProgramLearningModalityIncluded
            )
        {
            IsProgramLearningModalitiesSupported = isProgramLearningModalitiesSupported;
            IsProgramLearningModalitiesItemCreatable = isProgramLearningModalitiesItemCreatable;
            IsProgramLearningModalityIncluded = isProgramLearningModalityIncluded;
        }

        public bool IsProgramLearningModalitiesSupported { get; }
        public bool IsProgramLearningModalitiesItemCreatable { get; }
        public Func<IProgramLearningModality, bool> IsProgramLearningModalityIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ProgramLearningModalities":
                    return IsProgramLearningModalitiesSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "ProgramLearningModalities":
                    return IsProgramLearningModalitiesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ProgramLearningModality model.
    /// </summary>
    public interface IProgramLearningModality : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IProgramExtension ProgramExtension { get; set; }
        
        string ModalityTypeDescriptor { get; set; }

        // Non-PK properties
        decimal ModalityTime { get; set; }
        string ModalityTimeTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProgramLearningModalityMappingContract : IMappingContract
    {
        public ProgramLearningModalityMappingContract(
            bool isModalityTimeSupported,
            bool isModalityTimeTypeDescriptorSupported
            )
        {
            IsModalityTimeSupported = isModalityTimeSupported;
            IsModalityTimeTypeDescriptorSupported = isModalityTimeTypeDescriptorSupported;
        }

        public bool IsModalityTimeSupported { get; }
        public bool IsModalityTimeTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ModalityTime":
                    return IsModalityTimeSupported;
                case "ModalityTimeTypeDescriptor":
                    return IsModalityTimeTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ModalityTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }
}
