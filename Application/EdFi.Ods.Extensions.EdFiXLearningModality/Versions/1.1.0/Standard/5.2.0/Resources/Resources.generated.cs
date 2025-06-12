using System;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using System.Text;
using System.Diagnostics.CodeAnalysis;
using EdFi.Common.Extensions;
using EdFi.Ods.Api.Extensions;
using EdFi.Ods.Api.Models;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Models.Domain;
using EdFi.Ods.Common.Serialization;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common.Adapters;
using EdFi.Ods.Common.Attributes;
using EdFi.Ods.Common.Dependencies;
using EdFi.Ods.Common.Models;
using EdFi.Ods.Common.Models.Resource;
using EdFi.Ods.Common.Validation;
using EdFi.Ods.Entities.Common.EdFi;
using EdFi.Ods.Entities.Common.EdFiXLearningModality;
using Newtonsoft.Json;
using FluentValidation.Results;

// Aggregate: ModalityTimeTypeDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.ModalityTimeTypeDescriptor.EdFiXLearningModality
{
    /// <summary>
    /// A class which represents the edfixlearningmodality.ModalityTimeTypeDescriptor table of the ModalityTimeTypeDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptor : Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixlearningmodality", "ModalityTimeTypeDescriptor");

        // Fluent validator instance (threadsafe)
        private static ModalityTimeTypeDescriptorPutPostRequestValidator _validator = new ModalityTimeTypeDescriptorPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------

        /// <summary>
        /// The unique identifier for the ModalityTimeTypeDescriptor resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [JsonIgnore]
        public int ModalityTimeTypeDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return ModalityTimeTypeDescriptorId; }
            set { ModalityTimeTypeDescriptorId = value; }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Equality
        // -------------------------------------------------------------

        /// <summary>
        /// Determines equality based on the natural key properties of the resource.
        /// </summary>
        /// <returns>
        /// A boolean value indicating equality result of the compared resources.
        /// </returns>
        public override bool Equals(object obj)
        {
            var compareTo = obj as Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor).ModalityTimeTypeDescriptorId.Equals(compareTo.ModalityTimeTypeDescriptorId))
                return false;


            return true;
        }

        /// <summary>
        /// Builds the hash code based on the unique identifying values.
        /// </summary>
        /// <returns>
        /// A hash code for the resource.
        /// </returns>
        public override int GetHashCode()
        {
            var hash = new HashCode();

            //Derived Property
            hash.Add((this as Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor).ModalityTimeTypeDescriptorId);

            return hash.ToHashCode();
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------

        /// <summary>
        /// A code or abbreviation that is used to refer to the descriptor.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(50, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="codeValue")]
        public string CodeValue { get; set; }

        /// <summary>
        /// The description of the descriptor.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(1024, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="description")]
        public string Description { get; set; }

        /// <summary>
        /// The beginning date of the period when the descriptor is in effect. If omitted, the default is immediate effectiveness.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="effectiveBeginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EffectiveBeginDate { get; set; }

        /// <summary>
        /// The end date of the period when the descriptor is in effect.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="effectiveEndDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EffectiveEndDate { get; set; }

        /// <summary>
        /// A globally unique namespace that identifies this descriptor set. Author is strongly encouraged to use the Universal Resource Identifier (http, ftp, file, etc.) for the source of the descriptor definition. Best practice is for this source to be the descriptor file itself, so that it can be machine-readable and be fetched in real-time, if necessary.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(255, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="namespace")]
        public string Namespace { get; set; }

        /// <summary>
        /// A shortened description for the descriptor.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(75, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="shortDescription")]
        public string ShortDescription { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //              Inherited One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Inherited Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Extensions
        // -------------------------------------------------------------
        // NOT a lookup column, Not supported by this model, so there's "null object pattern" style implementation
        public System.Collections.IDictionary Extensions {
            get { return null; }
            set { }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Versioning
        // -------------------------------------------------------------

        [DataMember(Name="_etag")]
        public virtual string ETag { get; set; }
            
        [DataMember(Name="_lastModifiedDate")]
        public virtual DateTime LastModifiedDate { get; set; }

        // -------------------------------------------------------------

        // -------------------------------------------------------------
        //                        OnDeserialize
        // -------------------------------------------------------------
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.EdFiXLearningModality.ModalityTimeTypeDescriptorMapper.SynchronizeTo(this, (Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXLearningModality.ModalityTimeTypeDescriptorMapper.MapTo(this, (Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<ModalityTimeTypeDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ModalityTimeTypeDescriptor> context, FluentValidation.Results.ValidationResult result)
        {
            if (context.InstanceToValidate == null)
            {
                result.Errors.Add(new ValidationFailure("", "Please ensure a model was supplied."));

                return false;
            }

            var instance = context.InstanceToValidate;

            var failures = new List<ValidationFailure>();

            if (failures.Any())
            {
                foreach (var failure in failures)
                {
                    result.Errors.Add(failure);
                }

                return false;
            }

            return true;
        }
    }
    // -----------------------------------------------------------------

}
// Aggregate: ModalityTypeDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.ModalityTypeDescriptor.EdFiXLearningModality
{
    /// <summary>
    /// A class which represents the edfixlearningmodality.ModalityTypeDescriptor table of the ModalityTypeDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptor : Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixlearningmodality", "ModalityTypeDescriptor");

        // Fluent validator instance (threadsafe)
        private static ModalityTypeDescriptorPutPostRequestValidator _validator = new ModalityTypeDescriptorPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------

        /// <summary>
        /// The unique identifier for the ModalityTypeDescriptor resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [JsonIgnore]
        public int ModalityTypeDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return ModalityTypeDescriptorId; }
            set { ModalityTypeDescriptorId = value; }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Equality
        // -------------------------------------------------------------

        /// <summary>
        /// Determines equality based on the natural key properties of the resource.
        /// </summary>
        /// <returns>
        /// A boolean value indicating equality result of the compared resources.
        /// </returns>
        public override bool Equals(object obj)
        {
            var compareTo = obj as Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor).ModalityTypeDescriptorId.Equals(compareTo.ModalityTypeDescriptorId))
                return false;


            return true;
        }

        /// <summary>
        /// Builds the hash code based on the unique identifying values.
        /// </summary>
        /// <returns>
        /// A hash code for the resource.
        /// </returns>
        public override int GetHashCode()
        {
            var hash = new HashCode();

            //Derived Property
            hash.Add((this as Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor).ModalityTypeDescriptorId);

            return hash.ToHashCode();
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------

        /// <summary>
        /// A code or abbreviation that is used to refer to the descriptor.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(50, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="codeValue")]
        public string CodeValue { get; set; }

        /// <summary>
        /// The description of the descriptor.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(1024, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="description")]
        public string Description { get; set; }

        /// <summary>
        /// The beginning date of the period when the descriptor is in effect. If omitted, the default is immediate effectiveness.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="effectiveBeginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EffectiveBeginDate { get; set; }

        /// <summary>
        /// The end date of the period when the descriptor is in effect.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="effectiveEndDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EffectiveEndDate { get; set; }

        /// <summary>
        /// A globally unique namespace that identifies this descriptor set. Author is strongly encouraged to use the Universal Resource Identifier (http, ftp, file, etc.) for the source of the descriptor definition. Best practice is for this source to be the descriptor file itself, so that it can be machine-readable and be fetched in real-time, if necessary.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(255, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="namespace")]
        public string Namespace { get; set; }

        /// <summary>
        /// A shortened description for the descriptor.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(75, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="shortDescription")]
        public string ShortDescription { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //              Inherited One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Inherited Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Extensions
        // -------------------------------------------------------------
        // NOT a lookup column, Not supported by this model, so there's "null object pattern" style implementation
        public System.Collections.IDictionary Extensions {
            get { return null; }
            set { }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Versioning
        // -------------------------------------------------------------

        [DataMember(Name="_etag")]
        public virtual string ETag { get; set; }
            
        [DataMember(Name="_lastModifiedDate")]
        public virtual DateTime LastModifiedDate { get; set; }

        // -------------------------------------------------------------

        // -------------------------------------------------------------
        //                        OnDeserialize
        // -------------------------------------------------------------
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.EdFiXLearningModality.ModalityTypeDescriptorMapper.SynchronizeTo(this, (Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXLearningModality.ModalityTypeDescriptorMapper.MapTo(this, (Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<ModalityTypeDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ModalityTypeDescriptor> context, FluentValidation.Results.ValidationResult result)
        {
            if (context.InstanceToValidate == null)
            {
                result.Errors.Add(new ValidationFailure("", "Please ensure a model was supplied."));

                return false;
            }

            var instance = context.InstanceToValidate;

            var failures = new List<ValidationFailure>();

            if (failures.Any())
            {
                foreach (var failure in failures)
                {
                    result.Errors.Add(failure);
                }

                return false;
            }

            return true;
        }
    }
    // -----------------------------------------------------------------

}
// Aggregate: Program

namespace EdFi.Ods.Api.Common.Models.Resources.Program.EdFi.Extensions.EdFiXLearningModality
{
    /// <summary>
    /// A class which represents the edfixlearningmodality.ProgramExtension table of the Program aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="EdFiXLearningModality")]
    public class ProgramExtension : Entities.Common.EdFiXLearningModality.IProgramExtension, IChildEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("edfixlearningmodality", "ProgramExtension");

        // Fluent validator instance (threadsafe)
        private static ProgramExtensionPutPostRequestValidator _validator = new ProgramExtensionPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        public ProgramExtension()
        {
            ProgramLearningModalities = new List<ProgramLearningModality>();
        }
        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Entities.Common.EdFi.IProgram _program;

        [IgnoreDataMember]
        Entities.Common.EdFi.IProgram Entities.Common.EdFiXLearningModality.IProgramExtension.Program
        {
            get { return _program; }
            set { SetProgram(value); }
        }

        public Entities.Common.EdFi.IProgram Program
        {
            set { SetProgram(value); }
        }

        private void SetProgram(Entities.Common.EdFi.IProgram value)
        {
            _program = value;
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Equality
        // -------------------------------------------------------------

        /// <summary>
        /// Determines equality based on the natural key properties of the resource.
        /// </summary>
        /// <returns>
        /// A boolean value indicating equality result of the compared resources.
        /// </returns>
        public override bool Equals(object obj)
        {
            var compareTo = obj as Entities.Common.EdFiXLearningModality.IProgramExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_program == null || !_program.Equals(compareTo.Program))
                return false;


            return true;
        }

        /// <summary>
        /// Builds the hash code based on the unique identifying values.
        /// </summary>
        /// <returns>
        /// A hash code for the resource.
        /// </returns>
        public override int GetHashCode()
        {
            var hash = new HashCode();
            //Parent Property
            if (_program != null)
                hash.Add(_program);
            return hash.ToHashCode();
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //              Inherited One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Inherited Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Extensions
        // -------------------------------------------------------------
        // NOT a lookup column, Not supported by this model, so there's "null object pattern" style implementation
        public System.Collections.IDictionary Extensions {
            get { return null; }
            set { }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                          Collections
        // -------------------------------------------------------------
        private ICollection<ProgramLearningModality> _programLearningModalities;
        private ICollection<Entities.Common.EdFiXLearningModality.IProgramLearningModality> _programLearningModalitiesCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="learningModalities")]
        public ICollection<ProgramLearningModality> ProgramLearningModalities
        {
            get { return _programLearningModalities; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<ProgramLearningModality>(value,
                    (s, e) => ((Entities.Common.EdFiXLearningModality.IProgramLearningModality)e.Item).ProgramExtension = this);
                _programLearningModalities = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.EdFiXLearningModality.IProgramLearningModality, ProgramLearningModality>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.EdFiXLearningModality.IProgramLearningModality)e.Item).ProgramExtension = this;
                _programLearningModalitiesCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFiXLearningModality.IProgramLearningModality> Entities.Common.EdFiXLearningModality.IProgramExtension.ProgramLearningModalities
        {
            get { return _programLearningModalitiesCovariant; }
            set { ProgramLearningModalities = new List<ProgramLearningModality>(value.Cast<ProgramLearningModality>()); }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Versioning
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // -------------------------------------------------------------
        //                        OnDeserialize
        // -------------------------------------------------------------

        [OnDeserialized]
        internal void OnDeserialized(StreamingContext context)
        {
            // Reconnect collection item parent references on deserialization
            if (_programLearningModalities != null) foreach (var item in _programLearningModalities)
            {
                item.ProgramExtension = this;
            }

        }
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.EdFiXLearningModality.ProgramExtensionMapper.SynchronizeTo(this, (Entities.Common.EdFiXLearningModality.IProgramExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXLearningModality.ProgramExtensionMapper.MapTo(this, (Entities.Common.EdFiXLearningModality.IProgramExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            Program = (IProgram)value;
        }

        // ==================================
        //            Validation
        // ----------------------------------
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            var mappingContractProvider = GeneratedArtifactStaticDependencies.MappingContractProvider;
            var mappingContract = mappingContractProvider.GetMappingContract(_fullName);
            
            var pathBuilder = ValidationHelpers.GetPathBuilder(validationContext);
            
            int originalLength = pathBuilder.Length;

            try
            {
                // Prepare builders for validating members
                pathBuilder.Append(ValidationHelpers.JsonPathSeparator);
                int dotLength = pathBuilder.Length;

                // ----------------------
                //  Validate collections
                // ----------------------
                if (ProgramLearningModalities.Any() && mappingContract?.IsMemberSupported("ProgramLearningModalities") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("ProgramLearningModalities");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(ProgramLearningModalities, validationContext, validationContext.Items.ForCollection("ProgramLearningModalities"))))
                    {
                        yield return result;
                    }
                }


                // ---------------------------
                //  Validate embedded objects
                // ---------------------------
            
                // Execute the resource's fluent validator
                var fluentValidationResult = _validator.Validate(this);

                if (!fluentValidationResult.IsValid)
                {
                    foreach (var error in fluentValidationResult.Errors)
                    {
                        yield return new System.ComponentModel.DataAnnotations.ValidationResult(error.ErrorMessage, new[] { error.PropertyName });
                    }
                }
            }
            finally
            {
                // Restore original length
                pathBuilder.Length = originalLength;
            }
            // ----------------------------------
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class ProgramExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<ProgramExtension>
    {
        private static readonly FullName _fullName_edfixlearningmodality_ProgramExtension = new FullName("edfixlearningmodality", "ProgramExtension");

        // Declare collection item validators
        private ProgramLearningModalityPutPostRequestValidator _programLearningModalitiesValidator = new ();

        protected override bool PreValidate(FluentValidation.ValidationContext<ProgramExtension> context, FluentValidation.Results.ValidationResult result)
        {
            if (context.InstanceToValidate == null)
            {
                result.Errors.Add(new ValidationFailure("", "Please ensure a model was supplied."));

                return false;
            }

            var instance = context.InstanceToValidate;

            var failures = new List<ValidationFailure>();

            // Profile-based collection item filter validation
            string profileName = null;

            // Get the current mapping contract
            var mappingContract = (global::EdFi.Ods.Entities.Common.EdFiXLearningModality.ProgramExtensionMappingContract) GeneratedArtifactStaticDependencies.MappingContractProvider
                .GetMappingContract(_fullName_edfixlearningmodality_ProgramExtension);

            if (mappingContract != null)
            {
                if (mappingContract.IsProgramLearningModalityIncluded != null)
                {
                    var hasInvalidProgramLearningModalitiesItems = instance.ProgramLearningModalities.Any(x => !mappingContract.IsProgramLearningModalityIncluded(x));
        
                    if (hasInvalidProgramLearningModalitiesItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("ProgramLearningModalities", $"A supplied 'ProgramLearningModality' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
                    }
                }

            }

            if (failures.Any())
            {
                foreach (var failure in failures)
                {
                    result.Errors.Add(failure);
                }

                return false;
            }

            return true;
        }
    }
    // -----------------------------------------------------------------

    /// <summary>
    /// A class which represents the edfixlearningmodality.ProgramLearningModality table of the Program aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [NoUnsuppliedRequiredMembersWithMeaningfulDefaults]
    public class ProgramLearningModality : Entities.Common.EdFiXLearningModality.IProgramLearningModality, IHasRequiredMembersWithMeaningfulDefaultValues
    {
        private static FullName _fullName = new FullName("edfixlearningmodality", "ProgramLearningModality");

        // Fluent validator instance (threadsafe)
        private static ProgramLearningModalityPutPostRequestValidator _validator = new ProgramLearningModalityPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Entities.Common.EdFiXLearningModality.IProgramExtension _programExtension;

        [IgnoreDataMember]
        Entities.Common.EdFiXLearningModality.IProgramExtension Entities.Common.EdFiXLearningModality.IProgramLearningModality.ProgramExtension
        {
            get { return _programExtension; }
            set { SetProgramExtension(value); }
        }

        public Entities.Common.EdFiXLearningModality.IProgramExtension ProgramExtension
        {
            set { SetProgramExtension(value); }
        }

        private void SetProgramExtension(Entities.Common.EdFiXLearningModality.IProgramExtension value)
        {
            _programExtension = value;
        }

        /// <summary>
        /// The method by which the student is engaging in instruction.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="modalityTypeDescriptor")][DescriptorExists("ModalityTypeDescriptor")]
        public string ModalityTypeDescriptor { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                      Equality
        // -------------------------------------------------------------

        /// <summary>
        /// Determines equality based on the natural key properties of the resource.
        /// </summary>
        /// <returns>
        /// A boolean value indicating equality result of the compared resources.
        /// </returns>
        public override bool Equals(object obj)
        {
            var compareTo = obj as Entities.Common.EdFiXLearningModality.IProgramLearningModality;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_programExtension == null || !_programExtension.Equals(compareTo.ProgramExtension))
                return false;


            // Standard Property
            if (!StringComparer.OrdinalIgnoreCase.Equals((this as Entities.Common.EdFiXLearningModality.IProgramLearningModality).ModalityTypeDescriptor, compareTo.ModalityTypeDescriptor))
                return false;


            return true;
        }

        /// <summary>
        /// Builds the hash code based on the unique identifying values.
        /// </summary>
        /// <returns>
        /// A hash code for the resource.
        /// </returns>
        public override int GetHashCode()
        {
            var hash = new HashCode();
            //Parent Property
            if (_programExtension != null)
                hash.Add(_programExtension);

            // Standard Property
                hash.Add((this as Entities.Common.EdFiXLearningModality.IProgramLearningModality).ModalityTypeDescriptor);

            return hash.ToHashCode();
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        
        private bool _modalityTimeExplicitlyAssigned = false;
        private decimal _modalityTime;

        /// <summary>
        /// The duration the student engaged via the modality.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(typeof(decimal), "0", "999999.99", ErrorMessage=ValidationHelpers.RangeMessageFormat)]
        [DataMember(Name="modalityTime")]
        public decimal ModalityTime 
        { 
            get => _modalityTime;
            set 
            { 
                _modalityTime = value;
                _modalityTimeExplicitlyAssigned = true; 
            }
        }


        /// <summary>
        /// The units or time dimension for hte duration.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="modalityTimeTypeDescriptor")][DescriptorExists("ModalityTimeTypeDescriptor")]
        public string ModalityTimeTypeDescriptor { get; set; }
        // -------------------------------------------------------------

        IEnumerable<string> IHasRequiredMembersWithMeaningfulDefaultValues.GetUnassignedMemberNames()
        {
            if (!_modalityTimeExplicitlyAssigned)
            {
                yield return "ModalityTime";
            }
        }

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //              Inherited One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Inherited Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Extensions
        // -------------------------------------------------------------
        // NOT a lookup column, Not supported by this model, so there's "null object pattern" style implementation
        public System.Collections.IDictionary Extensions {
            get { return null; }
            set { }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Versioning
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // -------------------------------------------------------------
        //                        OnDeserialize
        // -------------------------------------------------------------
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.EdFiXLearningModality.ProgramLearningModalityMapper.SynchronizeTo(this, (Entities.Common.EdFiXLearningModality.IProgramLearningModality)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXLearningModality.ProgramLearningModalityMapper.MapTo(this, (Entities.Common.EdFiXLearningModality.IProgramLearningModality)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class ProgramLearningModalityPutPostRequestValidator : FluentValidation.AbstractValidator<ProgramLearningModality>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ProgramLearningModality> context, FluentValidation.Results.ValidationResult result)
        {
            if (context.InstanceToValidate == null)
            {
                result.Errors.Add(new ValidationFailure("", "Please ensure a model was supplied."));

                return false;
            }

            var instance = context.InstanceToValidate;

            var failures = new List<ValidationFailure>();

            if (failures.Any())
            {
                foreach (var failure in failures)
                {
                    result.Errors.Add(failure);
                }

                return false;
            }

            return true;
        }
    }
    // -----------------------------------------------------------------

}
