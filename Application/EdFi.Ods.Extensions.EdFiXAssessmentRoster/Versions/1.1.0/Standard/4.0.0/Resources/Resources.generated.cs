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
using EdFi.Ods.Entities.Common.EdFiXAssessmentRoster;
using Newtonsoft.Json;
using FluentValidation.Results;

// Aggregate: AssessmentAdministration

namespace EdFi.Ods.Api.Common.Models.Resources.AssessmentAdministration.EdFiXAssessmentRoster
{
    /// <summary>
    /// Represents a reference to the AssessmentAdministration resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationReference : IResourceReference
    {
        [DataMember(Name="administrationIdentifier")]
        public string AdministrationIdentifier { get; set; }

        [DataMember(Name="assessmentIdentifier")]
        public string AssessmentIdentifier { get; set; }

        [DataMember(Name="assigningEducationOrganizationId")]
        public int AssigningEducationOrganizationId { get; set; }

        [DataMember(Name="namespace")]
        public string Namespace { get; set; }

        /// <summary>
        /// Gets or sets the resource identifier of the referenced resource.
        /// </summary>
        public Guid ResourceId { get; set; }

        /// <summary>
        /// Gets or sets the discriminator value which identifies the concrete sub-type of the referenced resource
        /// when the referenced resource has been derived; otherwise <b>null</b>.
        /// </summary>
        public string Discriminator { get; set; }


        private Link _link;

        [DataMember(Name="link")]
        public Link Link
        {
            get
            {
                if (_link == null)
                {
                    // Only generate links when all values are present
                    if (IsReferenceFullyDefined())
                        _link = CreateLink();
                }

                return _link;
            }
        }

        /// <summary>
        /// Indicates whether the reference has been fully defined (all key values are currently assigned non-default values).
        /// </summary>
        /// <returns><b>true</b> if the reference's properties are all set to non-default values; otherwise <b>false</b>.</returns>
        public bool IsReferenceFullyDefined()
        {
            return AdministrationIdentifier != default(string) && AssessmentIdentifier != default(string) && AssigningEducationOrganizationId != default(int) && Namespace != default(string);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (AdministrationIdentifier == default)
            {
                yield return "AdministrationIdentifier";
            }

            if (AssessmentIdentifier == default)
            {
                yield return "AssessmentIdentifier";
            }

            if (AssigningEducationOrganizationId == default)
            {
                yield return "AssigningEducationOrganizationId";
            }

            if (Namespace == default)
            {
                yield return "Namespace";
            }

        }

        private Link CreateLink()
        {
            var link = new Link
            {
                Rel = "AssessmentAdministration",
                Href = $"/ed-fi-xassessment-roster/assessmentAdministrations/{ResourceId:n}"
            };

            if (string.IsNullOrEmpty(Discriminator))
                return link;

            string[] linkParts = Discriminator.Split('.');

            if (linkParts.Length < 2)
                return link;

            var resource = GeneratedArtifactStaticDependencies.ResourceModelProvider.GetResourceModel()
                .GetResourceByFullName(new FullName(linkParts[0], linkParts[1]));

            // return the default link if the relationship is already correct, and/or if the resource is not found.
            if (resource == null || link.Rel == resource.Name)
                return link;

            return new Link
            {
                Rel = resource.Name,
                Href = $"/{resource.SchemaUriSegment()}/{resource.PluralName.ToCamelCase()}/{ResourceId:n}"
            };
        }
    } // Aggregate reference

    /// <summary>
    /// A class which represents the edfixassessmentroster.AssessmentAdministration table of the AssessmentAdministration aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministration : Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration, IHasETag, IDateVersionedEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("edfixassessmentroster", "AssessmentAdministration");

        // Fluent validator instance (threadsafe)
        private static AssessmentAdministrationPutPostRequestValidator _validator = new AssessmentAdministrationPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        public AssessmentAdministration()
        {
            AssessmentAdministrationContacts = new List<AssessmentAdministrationContact>();
            AssessmentAdministrationPeriods = new List<AssessmentAdministrationPeriod>();
        }
        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------

        /// <summary>
        /// The unique identifier for the AssessmentAdministration resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------

        private bool _assessmentReferenceExplicitlyAssigned;
        private Assessment.EdFi.AssessmentReference _assessmentReference;
        private Assessment.EdFi.AssessmentReference ImplicitAssessmentReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_assessmentReference == null && !_assessmentReferenceExplicitlyAssigned)
                    _assessmentReference = new Assessment.EdFi.AssessmentReference();

                return _assessmentReference;
            }
        }

        [DataMember(Name="assessmentReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public Assessment.EdFi.AssessmentReference AssessmentReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitAssessmentReference != null
                    && (_assessmentReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitAssessmentReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentReference;

                return null;
            }
            set
            {
                _assessmentReferenceExplicitlyAssigned = true;
                _assessmentReference = value;
            }
        }
        private bool _assigningEducationOrganizationReferenceExplicitlyAssigned;
        private EducationOrganization.EdFi.EducationOrganizationReference _assigningEducationOrganizationReference;
        private EducationOrganization.EdFi.EducationOrganizationReference ImplicitAssigningEducationOrganizationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_assigningEducationOrganizationReference == null && !_assigningEducationOrganizationReferenceExplicitlyAssigned)
                    _assigningEducationOrganizationReference = new EducationOrganization.EdFi.EducationOrganizationReference();

                return _assigningEducationOrganizationReference;
            }
        }

        [DataMember(Name="assigningEducationOrganizationReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public EducationOrganization.EdFi.EducationOrganizationReference AssigningEducationOrganizationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitAssigningEducationOrganizationReference != null
                    && (_assigningEducationOrganizationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitAssigningEducationOrganizationReference.IsReferenceFullyDefined()))
                    return ImplicitAssigningEducationOrganizationReference;

                return null;
            }
            set
            {
                _assigningEducationOrganizationReferenceExplicitlyAssigned = true;
                _assigningEducationOrganizationReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// The title or name of the assessment in the context of it's administration.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(255, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="administrationIdentifier")]
        public string AdministrationIdentifier { get; set; }

        /// <summary>
        /// A unique number or alphanumeric code assigned to an assessment.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentIdentifier
        {
            get
            {
                if (ImplicitAssessmentReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitAssessmentReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentReference.AssessmentIdentifier;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Assessment
                _assessmentReferenceExplicitlyAssigned = false;
                ImplicitAssessmentReference.AssessmentIdentifier = value;
            }
        }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssigningEducationOrganizationId
        {
            get
            {
                if (ImplicitAssigningEducationOrganizationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitAssigningEducationOrganizationReference.IsReferenceFullyDefined()))
                    return ImplicitAssigningEducationOrganizationReference.EducationOrganizationId;

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // AssigningEducationOrganization
                _assigningEducationOrganizationReferenceExplicitlyAssigned = false;
                ImplicitAssigningEducationOrganizationReference.EducationOrganizationId = value;
            }
        }

        /// <summary>
        /// Namespace for the assessment.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.Namespace
        {
            get
            {
                if (ImplicitAssessmentReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitAssessmentReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentReference.Namespace;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Assessment
                _assessmentReferenceExplicitlyAssigned = false;
                ImplicitAssessmentReference.Namespace = value;
            }
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
            var compareTo = obj as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Standard Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).AdministrationIdentifier, compareTo.AdministrationIdentifier))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).AssessmentIdentifier, compareTo.AssessmentIdentifier))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).AssigningEducationOrganizationId.Equals(compareTo.AssigningEducationOrganizationId))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).Namespace, compareTo.Namespace))
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

            // Standard Property
                hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).AdministrationIdentifier);


            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).AssessmentIdentifier);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).AssigningEducationOrganizationId);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration).Namespace);
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
        private ICollection<AssessmentAdministrationContact> _assessmentAdministrationContacts;
        private ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact> _assessmentAdministrationContactsCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="contacts")]
        public ICollection<AssessmentAdministrationContact> AssessmentAdministrationContacts
        {
            get { return _assessmentAdministrationContacts; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<AssessmentAdministrationContact>(value,
                    (s, e) => ((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact)e.Item).AssessmentAdministration = this);
                _assessmentAdministrationContacts = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact, AssessmentAdministrationContact>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact)e.Item).AssessmentAdministration = this;
                _assessmentAdministrationContactsCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact> Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentAdministrationContacts
        {
            get { return _assessmentAdministrationContactsCovariant; }
            set { AssessmentAdministrationContacts = new List<AssessmentAdministrationContact>(value.Cast<AssessmentAdministrationContact>()); }
        }

        private ICollection<AssessmentAdministrationPeriod> _assessmentAdministrationPeriods;
        private ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod> _assessmentAdministrationPeriodsCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="periods")]
        public ICollection<AssessmentAdministrationPeriod> AssessmentAdministrationPeriods
        {
            get { return _assessmentAdministrationPeriods; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<AssessmentAdministrationPeriod>(value,
                    (s, e) => ((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod)e.Item).AssessmentAdministration = this);
                _assessmentAdministrationPeriods = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod, AssessmentAdministrationPeriod>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod)e.Item).AssessmentAdministration = this;
                _assessmentAdministrationPeriodsCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod> Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentAdministrationPeriods
        {
            get { return _assessmentAdministrationPeriodsCovariant; }
            set { AssessmentAdministrationPeriods = new List<AssessmentAdministrationPeriod>(value.Cast<AssessmentAdministrationPeriod>()); }
        }

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

        [OnDeserialized]
        internal void OnDeserialized(StreamingContext context)
        {
            // Reconnect collection item parent references on deserialization
            if (_assessmentAdministrationContacts != null) foreach (var item in _assessmentAdministrationContacts)
            {
                item.AssessmentAdministration = this;
            }

            if (_assessmentAdministrationPeriods != null) foreach (var item in _assessmentAdministrationPeriods)
            {
                item.AssessmentAdministration = this;
            }

        }
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.EdFiXAssessmentRoster.AssessmentAdministrationMapper.SynchronizeTo(this, (Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXAssessmentRoster.AssessmentAdministrationMapper.MapTo(this, (Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentResourceId
        {
            get { return null; }
            set { ImplicitAssessmentReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitAssessmentReference.Discriminator = value; }
        }


        Guid? Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssigningEducationOrganizationResourceId
        {
            get { return null; }
            set { ImplicitAssigningEducationOrganizationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssigningEducationOrganizationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitAssigningEducationOrganizationReference.Discriminator = value; }
        }


        // -----------------------------------------------------------------

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
                int dotLength = pathBuilder.Length;

                // ----------------------
                //  Validate collections
                // ----------------------
                if (AssessmentAdministrationContacts.Any() && mappingContract?.IsMemberSupported("AssessmentAdministrationContacts") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("AssessmentAdministrationContacts");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(AssessmentAdministrationContacts, validationContext, validationContext.Items.ForCollection("AssessmentAdministrationContacts"))))
                    {
                        yield return result;
                    }
                }

                if (AssessmentAdministrationPeriods.Any() && mappingContract?.IsMemberSupported("AssessmentAdministrationPeriods") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("AssessmentAdministrationPeriods");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(AssessmentAdministrationPeriods, validationContext, validationContext.Items.ForCollection("AssessmentAdministrationPeriods"))))
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
    public class AssessmentAdministrationPutPostRequestValidator : FluentValidation.AbstractValidator<AssessmentAdministration>
    {
        private static readonly FullName _fullName_edfixassessmentroster_AssessmentAdministration = new FullName("edfixassessmentroster", "AssessmentAdministration");

        // Declare collection item validators
        private AssessmentAdministrationContactPutPostRequestValidator _assessmentAdministrationContactsValidator = new ();
        private AssessmentAdministrationPeriodPutPostRequestValidator _assessmentAdministrationPeriodsValidator = new ();

        protected override bool PreValidate(FluentValidation.ValidationContext<AssessmentAdministration> context, FluentValidation.Results.ValidationResult result)
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
            var mappingContract = (global::EdFi.Ods.Entities.Common.EdFiXAssessmentRoster.AssessmentAdministrationMappingContract) GeneratedArtifactStaticDependencies.MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_AssessmentAdministration);

            if (mappingContract != null)
            {
                if (mappingContract.IsAssessmentAdministrationContactIncluded != null)
                {
                    var hasInvalidAssessmentAdministrationContactsItems = instance.AssessmentAdministrationContacts.Any(x => !mappingContract.IsAssessmentAdministrationContactIncluded(x));
        
                    if (hasInvalidAssessmentAdministrationContactsItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("AssessmentAdministrationContacts", $"A supplied 'AssessmentAdministrationContact' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
                    }
                }

                if (mappingContract.IsAssessmentAdministrationPeriodIncluded != null)
                {
                    var hasInvalidAssessmentAdministrationPeriodsItems = instance.AssessmentAdministrationPeriods.Any(x => !mappingContract.IsAssessmentAdministrationPeriodIncluded(x));
        
                    if (hasInvalidAssessmentAdministrationPeriodsItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("AssessmentAdministrationPeriods", $"A supplied 'AssessmentAdministrationPeriod' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
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
    /// A class which represents the edfixassessmentroster.AssessmentAdministrationContact table of the AssessmentAdministration aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationContact : Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact
    {
        private static FullName _fullName = new FullName("edfixassessmentroster", "AssessmentAdministrationContact");

        // Fluent validator instance (threadsafe)
        private static AssessmentAdministrationContactPutPostRequestValidator _validator = new AssessmentAdministrationContactPutPostRequestValidator();
        
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

        private bool _educationOrganizationReferenceExplicitlyAssigned;
        private EducationOrganization.EdFi.EducationOrganizationReference _educationOrganizationReference;
        private EducationOrganization.EdFi.EducationOrganizationReference ImplicitEducationOrganizationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_educationOrganizationReference == null && !_educationOrganizationReferenceExplicitlyAssigned)
                    _educationOrganizationReference = new EducationOrganization.EdFi.EducationOrganizationReference();

                return _educationOrganizationReference;
            }
        }

        [DataMember(Name="educationOrganizationReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public EducationOrganization.EdFi.EducationOrganizationReference EducationOrganizationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitEducationOrganizationReference != null
                    && (_educationOrganizationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitEducationOrganizationReference.IsReferenceFullyDefined()))
                    return ImplicitEducationOrganizationReference;

                return null;
            }
            set
            {
                _educationOrganizationReferenceExplicitlyAssigned = true;
                _educationOrganizationReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration _assessmentAdministration;

        [IgnoreDataMember]
        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact.AssessmentAdministration
        {
            get { return _assessmentAdministration; }
            set { SetAssessmentAdministration(value); }
        }

        public Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration AssessmentAdministration
        {
            set { SetAssessmentAdministration(value); }
        }

        private void SetAssessmentAdministration(Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration value)
        {
            _assessmentAdministration = value;
        }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact.EducationOrganizationId
        {
            get
            {
                if (ImplicitEducationOrganizationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitEducationOrganizationReference.IsReferenceFullyDefined()))
                    return ImplicitEducationOrganizationReference.EducationOrganizationId;

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // EducationOrganization
                _educationOrganizationReferenceExplicitlyAssigned = false;
                ImplicitEducationOrganizationReference.EducationOrganizationId = value;
            }
        }

        /// <summary>
        /// The email address for the contact.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(128, MinimumLength=7, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="electronicMailAddress")]
        public string ElectronicMailAddress { get; set; }
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
            var compareTo = obj as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_assessmentAdministration == null || !_assessmentAdministration.Equals(compareTo.AssessmentAdministration))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact).EducationOrganizationId.Equals(compareTo.EducationOrganizationId))
                return false;


            // Standard Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact).ElectronicMailAddress, compareTo.ElectronicMailAddress))
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
            if (_assessmentAdministration != null)
                hash.Add(_assessmentAdministration);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact).EducationOrganizationId);

            // Standard Property
                hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact).ElectronicMailAddress);

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

        /// <summary>
        /// The conatcts's first name
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(75, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="firstName")]
        public string FirstName { get; set; }

        /// <summary>
        /// The contact's last name
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(75, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="lastSurname")]
        public string LastSurname { get; set; }

        /// <summary>
        /// The login ID for the user; used for security access control interface.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(60, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="loginId")]
        public string LoginId { get; set; }
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
            return Entities.Common.EdFiXAssessmentRoster.AssessmentAdministrationContactMapper.SynchronizeTo(this, (Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXAssessmentRoster.AssessmentAdministrationContactMapper.MapTo(this, (Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact.EducationOrganizationResourceId
        {
            get { return null; }
            set { ImplicitEducationOrganizationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact.EducationOrganizationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitEducationOrganizationReference.Discriminator = value; }
        }


        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationContactPutPostRequestValidator : FluentValidation.AbstractValidator<AssessmentAdministrationContact>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<AssessmentAdministrationContact> context, FluentValidation.Results.ValidationResult result)
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

    /// <summary>
    /// A class which represents the edfixassessmentroster.AssessmentAdministrationPeriod table of the AssessmentAdministration aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationPeriod : Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod
    {
        private static FullName _fullName = new FullName("edfixassessmentroster", "AssessmentAdministrationPeriod");

        // Fluent validator instance (threadsafe)
        private static AssessmentAdministrationPeriodPutPostRequestValidator _validator = new AssessmentAdministrationPeriodPutPostRequestValidator();
        
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
        private Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration _assessmentAdministration;

        [IgnoreDataMember]
        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod.AssessmentAdministration
        {
            get { return _assessmentAdministration; }
            set { SetAssessmentAdministration(value); }
        }

        public Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration AssessmentAdministration
        {
            set { SetAssessmentAdministration(value); }
        }

        private void SetAssessmentAdministration(Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration value)
        {
            _assessmentAdministration = value;
        }

        /// <summary>
        /// The month, day, and year for the start of the period.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }
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
            var compareTo = obj as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_assessmentAdministration == null || !_assessmentAdministration.Equals(compareTo.AssessmentAdministration))
                return false;


            // Standard Property
            if (!(this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod).BeginDate.Equals(compareTo.BeginDate))
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
            if (_assessmentAdministration != null)
                hash.Add(_assessmentAdministration);

            // Standard Property
                hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod).BeginDate);

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

        /// <summary>
        /// The month, day, and year for the end of the period.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="endDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EndDate { get; set; }
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
            return Entities.Common.EdFiXAssessmentRoster.AssessmentAdministrationPeriodMapper.SynchronizeTo(this, (Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXAssessmentRoster.AssessmentAdministrationPeriodMapper.MapTo(this, (Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod)target, null);
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
    public class AssessmentAdministrationPeriodPutPostRequestValidator : FluentValidation.AbstractValidator<AssessmentAdministrationPeriod>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<AssessmentAdministrationPeriod> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentAssessmentRegistration

namespace EdFi.Ods.Api.Common.Models.Resources.StudentAssessmentRegistration.EdFiXAssessmentRoster
{
    /// <summary>
    /// Represents a reference to the StudentAssessmentRegistration resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationReference : IResourceReference
    {
        [DataMember(Name="administrationIdentifier")]
        public string AdministrationIdentifier { get; set; }

        [DataMember(Name="assessmentIdentifier")]
        public string AssessmentIdentifier { get; set; }

        [DataMember(Name="assigningEducationOrganizationId")]
        public int AssigningEducationOrganizationId { get; set; }

        [DataMember(Name="educationOrganizationId")]
        public int EducationOrganizationId { get; set; }

        [DataMember(Name="namespace")]
        public string Namespace { get; set; }

        [DataMember(Name="studentUniqueId")]
        public string StudentUniqueId 
        {
            get => _studentUniqueId;
            set
            {
                _studentUniqueId = value;
                GeneratedArtifactStaticDependencies.UsiLookupsByUniqueIdContextProvider.Get().AddLookup("Student", value);
            }
        }
        private string _studentUniqueId;

        /// <summary>
        /// Gets or sets the resource identifier of the referenced resource.
        /// </summary>
        public Guid ResourceId { get; set; }

        /// <summary>
        /// Gets or sets the discriminator value which identifies the concrete sub-type of the referenced resource
        /// when the referenced resource has been derived; otherwise <b>null</b>.
        /// </summary>
        public string Discriminator { get; set; }


        private Link _link;

        [DataMember(Name="link")]
        public Link Link
        {
            get
            {
                if (_link == null)
                {
                    // Only generate links when all values are present
                    if (IsReferenceFullyDefined())
                        _link = CreateLink();
                }

                return _link;
            }
        }

        /// <summary>
        /// Indicates whether the reference has been fully defined (all key values are currently assigned non-default values).
        /// </summary>
        /// <returns><b>true</b> if the reference's properties are all set to non-default values; otherwise <b>false</b>.</returns>
        public bool IsReferenceFullyDefined()
        {
            return AdministrationIdentifier != default(string) && AssessmentIdentifier != default(string) && AssigningEducationOrganizationId != default(int) && EducationOrganizationId != default(int) && Namespace != default(string) && StudentUniqueId != default(string);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (AdministrationIdentifier == default)
            {
                yield return "AdministrationIdentifier";
            }

            if (AssessmentIdentifier == default)
            {
                yield return "AssessmentIdentifier";
            }

            if (AssigningEducationOrganizationId == default)
            {
                yield return "AssigningEducationOrganizationId";
            }

            if (EducationOrganizationId == default)
            {
                yield return "EducationOrganizationId";
            }

            if (Namespace == default)
            {
                yield return "Namespace";
            }

            if (StudentUniqueId == default)
            {
                yield return "StudentUniqueId";
            }

        }

        private Link CreateLink()
        {
            var link = new Link
            {
                Rel = "StudentAssessmentRegistration",
                Href = $"/ed-fi-xassessment-roster/studentAssessmentRegistrations/{ResourceId:n}"
            };

            if (string.IsNullOrEmpty(Discriminator))
                return link;

            string[] linkParts = Discriminator.Split('.');

            if (linkParts.Length < 2)
                return link;

            var resource = GeneratedArtifactStaticDependencies.ResourceModelProvider.GetResourceModel()
                .GetResourceByFullName(new FullName(linkParts[0], linkParts[1]));

            // return the default link if the relationship is already correct, and/or if the resource is not found.
            if (resource == null || link.Rel == resource.Name)
                return link;

            return new Link
            {
                Rel = resource.Name,
                Href = $"/{resource.SchemaUriSegment()}/{resource.PluralName.ToCamelCase()}/{ResourceId:n}"
            };
        }
    } // Aggregate reference

    /// <summary>
    /// A class which represents the edfixassessmentroster.StudentAssessmentRegistration table of the StudentAssessmentRegistration aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistration : Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration, IHasETag, IDateVersionedEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("edfixassessmentroster", "StudentAssessmentRegistration");

        // Fluent validator instance (threadsafe)
        private static StudentAssessmentRegistrationPutPostRequestValidator _validator = new StudentAssessmentRegistrationPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        public StudentAssessmentRegistration()
        {
            StudentAssessmentRegistrationAssessmentCustomizations = new List<StudentAssessmentRegistrationAssessmentCustomization>();
        }
        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------

        /// <summary>
        /// The unique identifier for the StudentAssessmentRegistration resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------

        private bool _assessmentAdministrationReferenceExplicitlyAssigned;
        private AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministrationReference _assessmentAdministrationReference;
        private AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministrationReference ImplicitAssessmentAdministrationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_assessmentAdministrationReference == null && !_assessmentAdministrationReferenceExplicitlyAssigned)
                    _assessmentAdministrationReference = new AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministrationReference();

                return _assessmentAdministrationReference;
            }
        }

        [DataMember(Name="assessmentAdministrationReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public AssessmentAdministration.EdFiXAssessmentRoster.AssessmentAdministrationReference AssessmentAdministrationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitAssessmentAdministrationReference != null
                    && (_assessmentAdministrationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitAssessmentAdministrationReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentAdministrationReference;

                return null;
            }
            set
            {
                _assessmentAdministrationReferenceExplicitlyAssigned = true;
                _assessmentAdministrationReference = value;
            }
        }
        private bool _reportingEducationOrganizationReferenceExplicitlyAssigned;
        private EducationOrganization.EdFi.EducationOrganizationReference _reportingEducationOrganizationReference;
        private EducationOrganization.EdFi.EducationOrganizationReference ImplicitReportingEducationOrganizationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_reportingEducationOrganizationReference == null && !_reportingEducationOrganizationReferenceExplicitlyAssigned)
                    _reportingEducationOrganizationReference = new EducationOrganization.EdFi.EducationOrganizationReference();

                return _reportingEducationOrganizationReference;
            }
        }

        [DataMember(Name="reportingEducationOrganizationReference")]
        [FullyDefinedReference]
        public EducationOrganization.EdFi.EducationOrganizationReference ReportingEducationOrganizationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitReportingEducationOrganizationReference != null
                    && (_reportingEducationOrganizationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitReportingEducationOrganizationReference.IsReferenceFullyDefined()))
                    return ImplicitReportingEducationOrganizationReference;

                return null;
            }
            set
            {
                _reportingEducationOrganizationReferenceExplicitlyAssigned = true;
                _reportingEducationOrganizationReference = value;
            }
        }
        private bool _studentEducationOrganizationAssociationReferenceExplicitlyAssigned;
        private StudentEducationOrganizationAssociation.EdFi.StudentEducationOrganizationAssociationReference _studentEducationOrganizationAssociationReference;
        private StudentEducationOrganizationAssociation.EdFi.StudentEducationOrganizationAssociationReference ImplicitStudentEducationOrganizationAssociationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_studentEducationOrganizationAssociationReference == null && !_studentEducationOrganizationAssociationReferenceExplicitlyAssigned)
                    _studentEducationOrganizationAssociationReference = new StudentEducationOrganizationAssociation.EdFi.StudentEducationOrganizationAssociationReference();

                return _studentEducationOrganizationAssociationReference;
            }
        }

        [DataMember(Name="studentEducationOrganizationAssociationReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public StudentEducationOrganizationAssociation.EdFi.StudentEducationOrganizationAssociationReference StudentEducationOrganizationAssociationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitStudentEducationOrganizationAssociationReference != null
                    && (_studentEducationOrganizationAssociationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitStudentEducationOrganizationAssociationReference.IsReferenceFullyDefined()))
                    return ImplicitStudentEducationOrganizationAssociationReference;

                return null;
            }
            set
            {
                _studentEducationOrganizationAssociationReferenceExplicitlyAssigned = true;
                _studentEducationOrganizationAssociationReference = value;
            }
        }
        private bool _studentSchoolAssociationReferenceExplicitlyAssigned;
        private StudentSchoolAssociation.EdFi.StudentSchoolAssociationReference _studentSchoolAssociationReference;
        private StudentSchoolAssociation.EdFi.StudentSchoolAssociationReference ImplicitStudentSchoolAssociationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_studentSchoolAssociationReference == null && !_studentSchoolAssociationReferenceExplicitlyAssigned)
                    _studentSchoolAssociationReference = new StudentSchoolAssociation.EdFi.StudentSchoolAssociationReference();

                return _studentSchoolAssociationReference;
            }
        }

        [DataMember(Name="studentSchoolAssociationReference")]
        [FullyDefinedReference][RequiredReference("edfixassessmentroster", "StudentAssessmentRegistration")]
        public StudentSchoolAssociation.EdFi.StudentSchoolAssociationReference StudentSchoolAssociationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitStudentSchoolAssociationReference != null
                    && (_studentSchoolAssociationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitStudentSchoolAssociationReference.IsReferenceFullyDefined()))
                    return ImplicitStudentSchoolAssociationReference;

                return null;
            }
            set
            {
                _studentSchoolAssociationReferenceExplicitlyAssigned = true;
                _studentSchoolAssociationReference = value;
            }
        }
        private bool _testingEducationOrganizationReferenceExplicitlyAssigned;
        private EducationOrganization.EdFi.EducationOrganizationReference _testingEducationOrganizationReference;
        private EducationOrganization.EdFi.EducationOrganizationReference ImplicitTestingEducationOrganizationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_testingEducationOrganizationReference == null && !_testingEducationOrganizationReferenceExplicitlyAssigned)
                    _testingEducationOrganizationReference = new EducationOrganization.EdFi.EducationOrganizationReference();

                return _testingEducationOrganizationReference;
            }
        }

        [DataMember(Name="testingEducationOrganizationReference")]
        [FullyDefinedReference]
        public EducationOrganization.EdFi.EducationOrganizationReference TestingEducationOrganizationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitTestingEducationOrganizationReference != null
                    && (_testingEducationOrganizationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitTestingEducationOrganizationReference.IsReferenceFullyDefined()))
                    return ImplicitTestingEducationOrganizationReference;

                return null;
            }
            set
            {
                _testingEducationOrganizationReferenceExplicitlyAssigned = true;
                _testingEducationOrganizationReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// The title or name of the assessment in the context of it's administration.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.AdministrationIdentifier
        {
            get
            {
                if (ImplicitAssessmentAdministrationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitAssessmentAdministrationReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentAdministrationReference.AdministrationIdentifier;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // AssessmentAdministration
                _assessmentAdministrationReferenceExplicitlyAssigned = false;
                ImplicitAssessmentAdministrationReference.AdministrationIdentifier = value;
            }
        }

        /// <summary>
        /// A unique number or alphanumeric code assigned to an assessment.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.AssessmentIdentifier
        {
            get
            {
                if (ImplicitAssessmentAdministrationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitAssessmentAdministrationReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentAdministrationReference.AssessmentIdentifier;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // AssessmentAdministration
                _assessmentAdministrationReferenceExplicitlyAssigned = false;
                ImplicitAssessmentAdministrationReference.AssessmentIdentifier = value;
            }
        }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.AssigningEducationOrganizationId
        {
            get
            {
                if (ImplicitAssessmentAdministrationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitAssessmentAdministrationReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentAdministrationReference.AssigningEducationOrganizationId;

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // AssessmentAdministration
                _assessmentAdministrationReferenceExplicitlyAssigned = false;
                ImplicitAssessmentAdministrationReference.AssigningEducationOrganizationId = value;
            }
        }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.EducationOrganizationId
        {
            get
            {
                if (ImplicitStudentEducationOrganizationAssociationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitStudentEducationOrganizationAssociationReference.IsReferenceFullyDefined()))
                    return ImplicitStudentEducationOrganizationAssociationReference.EducationOrganizationId;

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // StudentEducationOrganizationAssociation
                _studentEducationOrganizationAssociationReferenceExplicitlyAssigned = false;
                ImplicitStudentEducationOrganizationAssociationReference.EducationOrganizationId = value;
            }
        }

        /// <summary>
        /// Namespace for the assessment.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.Namespace
        {
            get
            {
                if (ImplicitAssessmentAdministrationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitAssessmentAdministrationReference.IsReferenceFullyDefined()))
                    return ImplicitAssessmentAdministrationReference.Namespace;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // AssessmentAdministration
                _assessmentAdministrationReferenceExplicitlyAssigned = false;
                ImplicitAssessmentAdministrationReference.Namespace = value;
            }
        }

        /// <summary>
        /// A unique alphanumeric code assigned to a student.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentUniqueId
        {
            get
            {
                if (ImplicitStudentEducationOrganizationAssociationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitStudentEducationOrganizationAssociationReference.IsReferenceFullyDefined()))
                    return ImplicitStudentEducationOrganizationAssociationReference.StudentUniqueId;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // StudentEducationOrganizationAssociation
                _studentEducationOrganizationAssociationReferenceExplicitlyAssigned = false;
                ImplicitStudentEducationOrganizationAssociationReference.StudentUniqueId = value;

                // StudentSchoolAssociation
                _studentSchoolAssociationReferenceExplicitlyAssigned = false;
                ImplicitStudentSchoolAssociationReference.StudentUniqueId = value;
                GeneratedArtifactStaticDependencies.UsiLookupsByUniqueIdContextProvider.Get().AddLookup("Student", value);                
            }
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
            var compareTo = obj as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).AdministrationIdentifier, compareTo.AdministrationIdentifier))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).AssessmentIdentifier, compareTo.AssessmentIdentifier))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).AssigningEducationOrganizationId.Equals(compareTo.AssigningEducationOrganizationId))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).EducationOrganizationId.Equals(compareTo.EducationOrganizationId))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).Namespace, compareTo.Namespace))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).StudentUniqueId, compareTo.StudentUniqueId))
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

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).AdministrationIdentifier);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).AssessmentIdentifier);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).AssigningEducationOrganizationId);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).EducationOrganizationId);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).Namespace);

            //Referenced Property
            hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration).StudentUniqueId);
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

        /// <summary>
        /// The month, day, and year on which an individual enters and begins to receive instructional services in a school.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        DateTime Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.EntryDate
        {
            get
            {
                if (ImplicitStudentSchoolAssociationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitStudentSchoolAssociationReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitStudentSchoolAssociationReference.EntryDate;
                    }

                return default(DateTime);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // StudentSchoolAssociation
                _studentSchoolAssociationReferenceExplicitlyAssigned = false;
                ImplicitStudentSchoolAssociationReference.EntryDate = value;
            }
        }

        /// <summary>
        /// The environment or format in which the assessment is expected to be administred
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="platformTypeDescriptor")][DescriptorExists("PlatformTypeDescriptor")]
        public string PlatformTypeDescriptor { get; set; }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.ReportingEducationOrganizationId
        {
            get
            {
                if (ImplicitReportingEducationOrganizationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitReportingEducationOrganizationReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitReportingEducationOrganizationReference.EducationOrganizationId;
                    }

                return default(int?);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ReportingEducationOrganization
                _reportingEducationOrganizationReferenceExplicitlyAssigned = false;
                ImplicitReportingEducationOrganizationReference.EducationOrganizationId = value.GetValueOrDefault();
            }
        }

        /// <summary>
        /// The identifier assigned to a school.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.SchoolId
        {
            get
            {
                if (ImplicitStudentSchoolAssociationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitStudentSchoolAssociationReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitStudentSchoolAssociationReference.SchoolId;
                    }

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // StudentSchoolAssociation
                _studentSchoolAssociationReferenceExplicitlyAssigned = false;
                ImplicitStudentSchoolAssociationReference.SchoolId = value;
            }
        }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.TestingEducationOrganizationId
        {
            get
            {
                if (ImplicitTestingEducationOrganizationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitTestingEducationOrganizationReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitTestingEducationOrganizationReference.EducationOrganizationId;
                    }

                return default(int?);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // TestingEducationOrganization
                _testingEducationOrganizationReferenceExplicitlyAssigned = false;
                ImplicitTestingEducationOrganizationReference.EducationOrganizationId = value.GetValueOrDefault();
            }
        }
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
        private ICollection<StudentAssessmentRegistrationAssessmentCustomization> _studentAssessmentRegistrationAssessmentCustomizations;
        private ICollection<Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization> _studentAssessmentRegistrationAssessmentCustomizationsCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="assessmentCustomizations")]
        public ICollection<StudentAssessmentRegistrationAssessmentCustomization> StudentAssessmentRegistrationAssessmentCustomizations
        {
            get { return _studentAssessmentRegistrationAssessmentCustomizations; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<StudentAssessmentRegistrationAssessmentCustomization>(value,
                    (s, e) => ((Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization)e.Item).StudentAssessmentRegistration = this);
                _studentAssessmentRegistrationAssessmentCustomizations = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization, StudentAssessmentRegistrationAssessmentCustomization>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization)e.Item).StudentAssessmentRegistration = this;
                _studentAssessmentRegistrationAssessmentCustomizationsCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization> Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentAssessmentRegistrationAssessmentCustomizations
        {
            get { return _studentAssessmentRegistrationAssessmentCustomizationsCovariant; }
            set { StudentAssessmentRegistrationAssessmentCustomizations = new List<StudentAssessmentRegistrationAssessmentCustomization>(value.Cast<StudentAssessmentRegistrationAssessmentCustomization>()); }
        }

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

        [OnDeserialized]
        internal void OnDeserialized(StreamingContext context)
        {
            // Reconnect collection item parent references on deserialization
            if (_studentAssessmentRegistrationAssessmentCustomizations != null) foreach (var item in _studentAssessmentRegistrationAssessmentCustomizations)
            {
                item.StudentAssessmentRegistration = this;
            }

        }
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.EdFiXAssessmentRoster.StudentAssessmentRegistrationMapper.SynchronizeTo(this, (Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXAssessmentRoster.StudentAssessmentRegistrationMapper.MapTo(this, (Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.AssessmentAdministrationResourceId
        {
            get { return null; }
            set { ImplicitAssessmentAdministrationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.AssessmentAdministrationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitAssessmentAdministrationReference.Discriminator = value; }
        }


        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.ReportingEducationOrganizationResourceId
        {
            get { return null; }
            set { ImplicitReportingEducationOrganizationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.ReportingEducationOrganizationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitReportingEducationOrganizationReference.Discriminator = value; }
        }


        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentEducationOrganizationAssociationResourceId
        {
            get { return null; }
            set { ImplicitStudentEducationOrganizationAssociationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentEducationOrganizationAssociationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitStudentEducationOrganizationAssociationReference.Discriminator = value; }
        }


        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentSchoolAssociationResourceId
        {
            get { return null; }
            set { ImplicitStudentSchoolAssociationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentSchoolAssociationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitStudentSchoolAssociationReference.Discriminator = value; }
        }


        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.TestingEducationOrganizationResourceId
        {
            get { return null; }
            set { ImplicitTestingEducationOrganizationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.TestingEducationOrganizationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitTestingEducationOrganizationReference.Discriminator = value; }
        }


        // -----------------------------------------------------------------

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
                int dotLength = pathBuilder.Length;

                // ----------------------
                //  Validate collections
                // ----------------------
                if (StudentAssessmentRegistrationAssessmentCustomizations.Any() && mappingContract?.IsMemberSupported("StudentAssessmentRegistrationAssessmentCustomizations") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("StudentAssessmentRegistrationAssessmentCustomizations");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(StudentAssessmentRegistrationAssessmentCustomizations, validationContext, validationContext.Items.ForCollection("StudentAssessmentRegistrationAssessmentCustomizations"))))
                    {
                        yield return result;
                    }
                }


                // ---------------------------
                //  Validate embedded objects
                // ---------------------------

                // -----------------------
                //  Validate unified keys
                // -----------------------
                pathBuilder.Length = dotLength;
                string pathPrefix = null;

                var sourcesForStudentUniqueId = GetStudentUniqueIdSources().ToArray();

                if (!sourcesForStudentUniqueId.Select(t => t.Item2).Where(v => !v.IsDefaultValue()).AllEqual(GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer))
                {
                    pathPrefix ??= pathBuilder.ToString();

                    string values = string.Join("', '", sourcesForStudentUniqueId.Select(src => src.value.ToString().TrimAt(50, true)));
                    string parentContextNote = sourcesForStudentUniqueId.Any(src => src.path == null) ? " (including those higher up in the resource's data)" : null;

                    yield return new System.ComponentModel.DataAnnotations.ValidationResult($"All values supplied for 'studentUniqueId' must match. Review all references{parentContextNote} and align the following conflicting values: '{values}'",
                        sourcesForStudentUniqueId.Where(src => src.path != null).Select(src => $"{pathPrefix}{src.path}").ToArray());
                }
    
                IEnumerable<(string path, string value)> GetStudentUniqueIdSources()
                {
                    // Obtain value from other references
                    var valueFromStudentEducationOrganizationAssociationReference = this.StudentEducationOrganizationAssociationReference?.StudentUniqueId;
    
                    if (valueFromStudentEducationOrganizationAssociationReference != null)
                    {
                        yield return ("studentEducationOrganizationAssociationReference.studentUniqueId", this.StudentEducationOrganizationAssociationReference.StudentUniqueId);
                    }
    
                    // Obtain value from other references
                    var valueFromStudentSchoolAssociationReference = this.StudentSchoolAssociationReference?.StudentUniqueId;
    
                    if (valueFromStudentSchoolAssociationReference != null)
                    {
                        yield return ("studentSchoolAssociationReference.studentUniqueId", this.StudentSchoolAssociationReference.StudentUniqueId);
                    }
    
                }
            
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
    public class StudentAssessmentRegistrationPutPostRequestValidator : FluentValidation.AbstractValidator<StudentAssessmentRegistration>
    {
        private static readonly FullName _fullName_edfixassessmentroster_StudentAssessmentRegistration = new FullName("edfixassessmentroster", "StudentAssessmentRegistration");

        // Declare collection item validators
        private StudentAssessmentRegistrationAssessmentCustomizationPutPostRequestValidator _studentAssessmentRegistrationAssessmentCustomizationsValidator = new ();

        protected override bool PreValidate(FluentValidation.ValidationContext<StudentAssessmentRegistration> context, FluentValidation.Results.ValidationResult result)
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
            var mappingContract = (global::EdFi.Ods.Entities.Common.EdFiXAssessmentRoster.StudentAssessmentRegistrationMappingContract) GeneratedArtifactStaticDependencies.MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_StudentAssessmentRegistration);

            if (mappingContract != null)
            {
                if (mappingContract.IsStudentAssessmentRegistrationAssessmentCustomizationIncluded != null)
                {
                    var hasInvalidStudentAssessmentRegistrationAssessmentCustomizationsItems = instance.StudentAssessmentRegistrationAssessmentCustomizations.Any(x => !mappingContract.IsStudentAssessmentRegistrationAssessmentCustomizationIncluded(x));
        
                    if (hasInvalidStudentAssessmentRegistrationAssessmentCustomizationsItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("StudentAssessmentRegistrationAssessmentCustomizations", $"A supplied 'StudentAssessmentRegistrationAssessmentCustomization' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
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
    /// A class which represents the edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization table of the StudentAssessmentRegistration aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationAssessmentCustomization : Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization
    {
        private static FullName _fullName = new FullName("edfixassessmentroster", "StudentAssessmentRegistrationAssessmentCustomization");

        // Fluent validator instance (threadsafe)
        private static StudentAssessmentRegistrationAssessmentCustomizationPutPostRequestValidator _validator = new StudentAssessmentRegistrationAssessmentCustomizationPutPostRequestValidator();
        
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
        private Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration _studentAssessmentRegistration;

        [IgnoreDataMember]
        Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization.StudentAssessmentRegistration
        {
            get { return _studentAssessmentRegistration; }
            set { SetStudentAssessmentRegistration(value); }
        }

        public Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration StudentAssessmentRegistration
        {
            set { SetStudentAssessmentRegistration(value); }
        }

        private void SetStudentAssessmentRegistration(Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration value)
        {
            _studentAssessmentRegistration = value;
        }

        /// <summary>
        /// An agreed upon code identifying the value for customization or reporting
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(60, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="identificationCode")]
        public string IdentificationCode { get; set; }
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
            var compareTo = obj as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_studentAssessmentRegistration == null || !_studentAssessmentRegistration.Equals(compareTo.StudentAssessmentRegistration))
                return false;


            // Standard Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization).IdentificationCode, compareTo.IdentificationCode))
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
            if (_studentAssessmentRegistration != null)
                hash.Add(_studentAssessmentRegistration);

            // Standard Property
                hash.Add((this as Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization).IdentificationCode);

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

        /// <summary>
        /// The value indicated for customization or reporting
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(1024, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="customizationValue")]
        public string CustomizationValue { get; set; }
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
            return Entities.Common.EdFiXAssessmentRoster.StudentAssessmentRegistrationAssessmentCustomizationMapper.SynchronizeTo(this, (Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.EdFiXAssessmentRoster.StudentAssessmentRegistrationAssessmentCustomizationMapper.MapTo(this, (Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization)target, null);
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
    public class StudentAssessmentRegistrationAssessmentCustomizationPutPostRequestValidator : FluentValidation.AbstractValidator<StudentAssessmentRegistrationAssessmentCustomization>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentAssessmentRegistrationAssessmentCustomization> context, FluentValidation.Results.ValidationResult result)
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
