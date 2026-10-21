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
using EdFi.Ods.Entities.Common.Edfixcrdc;
using Newtonsoft.Json;
using FluentValidation.Results;

// Aggregate: RestraintCategoryDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.RestraintCategoryDescriptor.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.RestraintCategoryDescriptor table of the RestraintCategoryDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptor : Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "RestraintCategoryDescriptor");

        // Fluent validator instance (threadsafe)
        private static RestraintCategoryDescriptorPutPostRequestValidator _validator = new RestraintCategoryDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the RestraintCategoryDescriptor resource.
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
        public int RestraintCategoryDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return RestraintCategoryDescriptorId; }
            set { RestraintCategoryDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor).RestraintCategoryDescriptorId.Equals(compareTo.RestraintCategoryDescriptorId))
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
            hash.Add((this as Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor).RestraintCategoryDescriptorId);

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
            return Entities.Common.Edfixcrdc.RestraintCategoryDescriptorMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.RestraintCategoryDescriptorMapper.MapTo(this, (Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor)target, null);
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
    public class RestraintCategoryDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<RestraintCategoryDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<RestraintCategoryDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: RestraintEvent

namespace EdFi.Ods.Api.Common.Models.Resources.RestraintEvent.EdFi.Extensions.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.RestraintEventExtension table of the RestraintEvent aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Edfixcrdc")]
    public class RestraintEventExtension : Entities.Common.Edfixcrdc.IRestraintEventExtension, IChildEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("edfixcrdc", "RestraintEventExtension");

        // Fluent validator instance (threadsafe)
        private static RestraintEventExtensionPutPostRequestValidator _validator = new RestraintEventExtensionPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        public RestraintEventExtension()
        {
            RestraintEventRestraintCategories = new List<RestraintEventRestraintCategory>();
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
        private Entities.Common.EdFi.IRestraintEvent _restraintEvent;

        [IgnoreDataMember]
        Entities.Common.EdFi.IRestraintEvent Entities.Common.Edfixcrdc.IRestraintEventExtension.RestraintEvent
        {
            get { return _restraintEvent; }
            set { SetRestraintEvent(value); }
        }

        public Entities.Common.EdFi.IRestraintEvent RestraintEvent
        {
            set { SetRestraintEvent(value); }
        }

        private void SetRestraintEvent(Entities.Common.EdFi.IRestraintEvent value)
        {
            _restraintEvent = value;
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IRestraintEventExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_restraintEvent == null || !_restraintEvent.Equals(compareTo.RestraintEvent))
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
            if (_restraintEvent != null)
                hash.Add(_restraintEvent);
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
        private ICollection<RestraintEventRestraintCategory> _restraintEventRestraintCategories;
        private ICollection<Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory> _restraintEventRestraintCategoriesCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="restraintCategories")]
        public ICollection<RestraintEventRestraintCategory> RestraintEventRestraintCategories
        {
            get { return _restraintEventRestraintCategories; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<RestraintEventRestraintCategory>(value,
                    (s, e) => ((Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory)e.Item).RestraintEventExtension = this);
                _restraintEventRestraintCategories = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory, RestraintEventRestraintCategory>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory)e.Item).RestraintEventExtension = this;
                _restraintEventRestraintCategoriesCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory> Entities.Common.Edfixcrdc.IRestraintEventExtension.RestraintEventRestraintCategories
        {
            get { return _restraintEventRestraintCategoriesCovariant; }
            set { RestraintEventRestraintCategories = new List<RestraintEventRestraintCategory>(value.Cast<RestraintEventRestraintCategory>()); }
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
            if (_restraintEventRestraintCategories != null) foreach (var item in _restraintEventRestraintCategories)
            {
                item.RestraintEventExtension = this;
            }

        }
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.Edfixcrdc.RestraintEventExtensionMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IRestraintEventExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.RestraintEventExtensionMapper.MapTo(this, (Entities.Common.Edfixcrdc.IRestraintEventExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            RestraintEvent = (IRestraintEvent)value;
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
                if (RestraintEventRestraintCategories.Any() && mappingContract?.IsMemberSupported("RestraintEventRestraintCategories") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("RestraintEventRestraintCategories");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(RestraintEventRestraintCategories, validationContext, validationContext.Items.ForCollection("RestraintEventRestraintCategories"))))
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
    public class RestraintEventExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<RestraintEventExtension>
    {
        private static readonly FullName _fullName_edfixcrdc_RestraintEventExtension = new FullName("edfixcrdc", "RestraintEventExtension");

        // Declare collection item validators
        private RestraintEventRestraintCategoryPutPostRequestValidator _restraintEventRestraintCategoriesValidator = new ();

        protected override bool PreValidate(FluentValidation.ValidationContext<RestraintEventExtension> context, FluentValidation.Results.ValidationResult result)
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
            var mappingContract = (global::EdFi.Ods.Entities.Common.Edfixcrdc.RestraintEventExtensionMappingContract) GeneratedArtifactStaticDependencies.MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_RestraintEventExtension);

            if (mappingContract != null)
            {
                if (mappingContract.IsRestraintEventRestraintCategoryIncluded != null)
                {
                    var hasInvalidRestraintEventRestraintCategoriesItems = instance.RestraintEventRestraintCategories.Any(x => !mappingContract.IsRestraintEventRestraintCategoryIncluded(x));
        
                    if (hasInvalidRestraintEventRestraintCategoriesItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("RestraintEventRestraintCategories", $"A supplied 'RestraintEventRestraintCategory' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
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
    /// A class which represents the edfixcrdc.RestraintEventRestraintCategory table of the RestraintEvent aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class RestraintEventRestraintCategory : Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory
    {
        private static FullName _fullName = new FullName("edfixcrdc", "RestraintEventRestraintCategory");

        // Fluent validator instance (threadsafe)
        private static RestraintEventRestraintCategoryPutPostRequestValidator _validator = new RestraintEventRestraintCategoryPutPostRequestValidator();
        
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
        private Entities.Common.Edfixcrdc.IRestraintEventExtension _restraintEventExtension;

        [IgnoreDataMember]
        Entities.Common.Edfixcrdc.IRestraintEventExtension Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory.RestraintEventExtension
        {
            get { return _restraintEventExtension; }
            set { SetRestraintEventExtension(value); }
        }

        public Entities.Common.Edfixcrdc.IRestraintEventExtension RestraintEventExtension
        {
            set { SetRestraintEventExtension(value); }
        }

        private void SetRestraintEventExtension(Entities.Common.Edfixcrdc.IRestraintEventExtension value)
        {
            _restraintEventExtension = value;
        }

        /// <summary>
        /// The category of the restraint administered.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="restraintCategoryDescriptor")][DescriptorExists("RestraintCategoryDescriptor")]
        public string RestraintCategoryDescriptor { get; set; }
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_restraintEventExtension == null || !_restraintEventExtension.Equals(compareTo.RestraintEventExtension))
                return false;


            // Standard Property
            if (!StringComparer.OrdinalIgnoreCase.Equals((this as Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory).RestraintCategoryDescriptor, compareTo.RestraintCategoryDescriptor))
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
            if (_restraintEventExtension != null)
                hash.Add(_restraintEventExtension);

            // Standard Property
                hash.Add((this as Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory).RestraintCategoryDescriptor);

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
            return Entities.Common.Edfixcrdc.RestraintEventRestraintCategoryMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.RestraintEventRestraintCategoryMapper.MapTo(this, (Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory)target, null);
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
    public class RestraintEventRestraintCategoryPutPostRequestValidator : FluentValidation.AbstractValidator<RestraintEventRestraintCategory>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<RestraintEventRestraintCategory> context, FluentValidation.Results.ValidationResult result)
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
