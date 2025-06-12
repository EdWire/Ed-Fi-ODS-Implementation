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

// Aggregate: AlternativeStatusDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.AlternativeStatusDescriptor.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.AlternativeStatusDescriptor table of the AlternativeStatusDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class AlternativeStatusDescriptor : Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "AlternativeStatusDescriptor");

        // Fluent validator instance (threadsafe)
        private static AlternativeStatusDescriptorPutPostRequestValidator _validator = new AlternativeStatusDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the AlternativeStatusDescriptor resource.
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
        public int AlternativeStatusDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return AlternativeStatusDescriptorId; }
            set { AlternativeStatusDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor).AlternativeStatusDescriptorId.Equals(compareTo.AlternativeStatusDescriptorId))
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
            hash.Add((this as Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor).AlternativeStatusDescriptorId);

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
            return Entities.Common.Edfixcrdc.AlternativeStatusDescriptorMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.AlternativeStatusDescriptorMapper.MapTo(this, (Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor)target, null);
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
    public class AlternativeStatusDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<AlternativeStatusDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<AlternativeStatusDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: ClassGroup

namespace EdFi.Ods.Api.Common.Models.Resources.ClassGroup.Edfixcrdc
{
    /// <summary>
    /// Represents a reference to the ClassGroup resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class ClassGroupReference : IResourceReference
    {
        [DataMember(Name="classGroupName")]
        public string ClassGroupName { get; set; }

        [DataMember(Name="communityProviderId")]
        public long CommunityProviderId { get; set; }

        [DataMember(Name="communityProviderLocationId")]
        public int CommunityProviderLocationId { get; set; }

        [DataMember(Name="specialNeedsProvidedIndicator")]
        public bool SpecialNeedsProvidedIndicator { get; set; }

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
                    if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled && IsReferenceFullyDefined())
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
            return ClassGroupName != default(string) && CommunityProviderId != default(long) && CommunityProviderLocationId != default(int) && SpecialNeedsProvidedIndicator != default(bool);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (ClassGroupName == default)
            {
                yield return "ClassGroupName";
            }

            if (CommunityProviderId == default)
            {
                yield return "CommunityProviderId";
            }

            if (CommunityProviderLocationId == default)
            {
                yield return "CommunityProviderLocationId";
            }

            if (SpecialNeedsProvidedIndicator == default)
            {
                yield return "SpecialNeedsProvidedIndicator";
            }

        }

        private Link CreateLink()
        {
            var link = new Link
            {
                Rel = "ClassGroup",
                Href = $"/edfixcrdc/classGroups/{ResourceId:n}"
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
    /// A class which represents the edfixcrdc.ClassGroup table of the ClassGroup aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [NoUnsuppliedRequiredMembersWithMeaningfulDefaults]
    public class ClassGroup : Entities.Common.Edfixcrdc.IClassGroup, IHasETag, IDateVersionedEntity, IHasRequiredMembersWithMeaningfulDefaultValues, IValidatableObject
    {
        private static FullName _fullName = new FullName("edfixcrdc", "ClassGroup");

        // Fluent validator instance (threadsafe)
        private static ClassGroupPutPostRequestValidator _validator = new ClassGroupPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        public ClassGroup()
        {
            ClassGroupCourses = new List<ClassGroupCourse>();
            ClassGroupMeetingTimes = new List<ClassGroupMeetingTime>();
        }
        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------

        /// <summary>
        /// The unique identifier for the ClassGroup resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------

        private bool _communityProviderLocationReferenceExplicitlyAssigned;
        private CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference _communityProviderLocationReference;
        private CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference ImplicitCommunityProviderLocationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_communityProviderLocationReference == null && !_communityProviderLocationReferenceExplicitlyAssigned)
                    _communityProviderLocationReference = new CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference();

                return _communityProviderLocationReference;
            }
        }

        [DataMember(Name="communityProviderLocationReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference CommunityProviderLocationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitCommunityProviderLocationReference != null
                    && (_communityProviderLocationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitCommunityProviderLocationReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderLocationReference;

                return null;
            }
            set
            {
                _communityProviderLocationReferenceExplicitlyAssigned = true;
                _communityProviderLocationReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// The name of the class/group of students.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(75, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="classGroupName")]
        public string ClassGroupName { get; set; }

        /// <summary>
        /// The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.Edfixcrdc.IClassGroup.CommunityProviderId
        {
            get
            {
                if (ImplicitCommunityProviderLocationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitCommunityProviderLocationReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderLocationReference.CommunityProviderId;

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // CommunityProviderLocation
                _communityProviderLocationReferenceExplicitlyAssigned = false;
                ImplicitCommunityProviderLocationReference.CommunityProviderId = value;
            }
        }

        /// <summary>
        /// A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.Edfixcrdc.IClassGroup.CommunityProviderLocationId
        {
            get
            {
                if (ImplicitCommunityProviderLocationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitCommunityProviderLocationReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderLocationReference.CommunityProviderLocationId;

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // CommunityProviderLocation
                _communityProviderLocationReferenceExplicitlyAssigned = false;
                ImplicitCommunityProviderLocationReference.CommunityProviderLocationId = value;
            }
        }
        
        private bool _specialNeedsProvidedIndicatorExplicitlyAssigned = false;
        private bool _specialNeedsProvidedIndicator;

        /// <summary>
        /// An indication of whether a class or group serves children with special needs.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="specialNeedsProvidedIndicator")]
        public bool SpecialNeedsProvidedIndicator 
        { 
            get => _specialNeedsProvidedIndicator;
            set 
            { 
                _specialNeedsProvidedIndicator = value;
                _specialNeedsProvidedIndicatorExplicitlyAssigned = true; 
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IClassGroup;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Standard Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.Edfixcrdc.IClassGroup).ClassGroupName, compareTo.ClassGroupName))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IClassGroup).CommunityProviderId.Equals(compareTo.CommunityProviderId))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IClassGroup).CommunityProviderLocationId.Equals(compareTo.CommunityProviderLocationId))
                return false;


            // Standard Property
            if (!(this as Entities.Common.Edfixcrdc.IClassGroup).SpecialNeedsProvidedIndicator.Equals(compareTo.SpecialNeedsProvidedIndicator))
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
                hash.Add((this as Entities.Common.Edfixcrdc.IClassGroup).ClassGroupName);


            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IClassGroup).CommunityProviderId);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IClassGroup).CommunityProviderLocationId);

            // Standard Property
                hash.Add((this as Entities.Common.Edfixcrdc.IClassGroup).SpecialNeedsProvidedIndicator);

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
        /// The maximum number of students this class group can accomodate at any given time.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="capacity")]
        public int? Capacity { get; set; }

        /// <summary>
        /// The number of days per week this class/group meets.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(0, 2147483647, ErrorMessage=ValidationHelpers.RangeMinOnlyMessageFormat)]
        [DataMember(Name="daysAvailablePerWeek")]
        public int? DaysAvailablePerWeek { get; set; }

        /// <summary>
        /// The number of hours per day the class/group meets.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(typeof(decimal), "-99.99", "99.99", ErrorMessage=ValidationHelpers.RangeMessageFormat)]
        [DataMember(Name="hoursAvailablePerDay")]
        public decimal? HoursAvailablePerDay { get; set; }

        /// <summary>
        /// The services provided to students at this class/group.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="serviceDescriptor")][DescriptorExists("ServiceDescriptor")]
        public string ServiceDescriptor { get; set; }
        // -------------------------------------------------------------

        IEnumerable<string> IHasRequiredMembersWithMeaningfulDefaultValues.GetUnassignedMemberNames()
        {
            if (!_specialNeedsProvidedIndicatorExplicitlyAssigned)
            {
                yield return "SpecialNeedsProvidedIndicator";
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
        private ICollection<ClassGroupCourse> _classGroupCourses;
        private ICollection<Entities.Common.Edfixcrdc.IClassGroupCourse> _classGroupCoursesCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="courses")]
        public ICollection<ClassGroupCourse> ClassGroupCourses
        {
            get { return _classGroupCourses; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<ClassGroupCourse>(value,
                    (s, e) => ((Entities.Common.Edfixcrdc.IClassGroupCourse)e.Item).ClassGroup = this);
                _classGroupCourses = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.Edfixcrdc.IClassGroupCourse, ClassGroupCourse>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.Edfixcrdc.IClassGroupCourse)e.Item).ClassGroup = this;
                _classGroupCoursesCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.Edfixcrdc.IClassGroupCourse> Entities.Common.Edfixcrdc.IClassGroup.ClassGroupCourses
        {
            get { return _classGroupCoursesCovariant; }
            set { ClassGroupCourses = new List<ClassGroupCourse>(value.Cast<ClassGroupCourse>()); }
        }

        private ICollection<ClassGroupMeetingTime> _classGroupMeetingTimes;
        private ICollection<Entities.Common.Edfixcrdc.IClassGroupMeetingTime> _classGroupMeetingTimesCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="meetingTimes")]
        public ICollection<ClassGroupMeetingTime> ClassGroupMeetingTimes
        {
            get { return _classGroupMeetingTimes; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<ClassGroupMeetingTime>(value,
                    (s, e) => ((Entities.Common.Edfixcrdc.IClassGroupMeetingTime)e.Item).ClassGroup = this);
                _classGroupMeetingTimes = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.Edfixcrdc.IClassGroupMeetingTime, ClassGroupMeetingTime>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.Edfixcrdc.IClassGroupMeetingTime)e.Item).ClassGroup = this;
                _classGroupMeetingTimesCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.Edfixcrdc.IClassGroupMeetingTime> Entities.Common.Edfixcrdc.IClassGroup.ClassGroupMeetingTimes
        {
            get { return _classGroupMeetingTimesCovariant; }
            set { ClassGroupMeetingTimes = new List<ClassGroupMeetingTime>(value.Cast<ClassGroupMeetingTime>()); }
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
            if (_classGroupCourses != null) foreach (var item in _classGroupCourses)
            {
                item.ClassGroup = this;
            }

            if (_classGroupMeetingTimes != null) foreach (var item in _classGroupMeetingTimes)
            {
                item.ClassGroup = this;
            }

        }
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.Edfixcrdc.ClassGroupMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IClassGroup)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.ClassGroupMapper.MapTo(this, (Entities.Common.Edfixcrdc.IClassGroup)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.Edfixcrdc.IClassGroup.CommunityProviderLocationResourceId
        {
            get { return null; }
            set { ImplicitCommunityProviderLocationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.Edfixcrdc.IClassGroup.CommunityProviderLocationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitCommunityProviderLocationReference.Discriminator = value; }
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
                if (ClassGroupCourses.Any() && mappingContract?.IsMemberSupported("ClassGroupCourses") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("ClassGroupCourses");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(ClassGroupCourses, validationContext, validationContext.Items.ForCollection("ClassGroupCourses"))))
                    {
                        yield return result;
                    }
                }

                if (ClassGroupMeetingTimes.Any() && mappingContract?.IsMemberSupported("ClassGroupMeetingTimes") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("ClassGroupMeetingTimes");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(ClassGroupMeetingTimes, validationContext, validationContext.Items.ForCollection("ClassGroupMeetingTimes"))))
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
    public class ClassGroupPutPostRequestValidator : FluentValidation.AbstractValidator<ClassGroup>
    {
        private static readonly FullName _fullName_edfixcrdc_ClassGroup = new FullName("edfixcrdc", "ClassGroup");

        // Declare collection item validators
        private ClassGroupCoursePutPostRequestValidator _classGroupCoursesValidator = new ();
        private ClassGroupMeetingTimePutPostRequestValidator _classGroupMeetingTimesValidator = new ();

        protected override bool PreValidate(FluentValidation.ValidationContext<ClassGroup> context, FluentValidation.Results.ValidationResult result)
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
            var mappingContract = (global::EdFi.Ods.Entities.Common.Edfixcrdc.ClassGroupMappingContract) GeneratedArtifactStaticDependencies.MappingContractProvider
                .GetMappingContract(_fullName_edfixcrdc_ClassGroup);

            if (mappingContract != null)
            {
                if (mappingContract.IsClassGroupCourseIncluded != null)
                {
                    var hasInvalidClassGroupCoursesItems = instance.ClassGroupCourses.Any(x => !mappingContract.IsClassGroupCourseIncluded(x));
        
                    if (hasInvalidClassGroupCoursesItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("ClassGroupCourses", $"A supplied 'ClassGroupCourse' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
                    }
                }

                if (mappingContract.IsClassGroupMeetingTimeIncluded != null)
                {
                    var hasInvalidClassGroupMeetingTimesItems = instance.ClassGroupMeetingTimes.Any(x => !mappingContract.IsClassGroupMeetingTimeIncluded(x));
        
                    if (hasInvalidClassGroupMeetingTimesItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("ClassGroupMeetingTimes", $"A supplied 'ClassGroupMeetingTime' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
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
    /// A class which represents the edfixcrdc.ClassGroupCourse table of the ClassGroup aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class ClassGroupCourse : Entities.Common.Edfixcrdc.IClassGroupCourse
    {
        private static FullName _fullName = new FullName("edfixcrdc", "ClassGroupCourse");

        // Fluent validator instance (threadsafe)
        private static ClassGroupCoursePutPostRequestValidator _validator = new ClassGroupCoursePutPostRequestValidator();
        
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

        private bool _courseReferenceExplicitlyAssigned;
        private Course.EdFi.CourseReference _courseReference;
        private Course.EdFi.CourseReference ImplicitCourseReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_courseReference == null && !_courseReferenceExplicitlyAssigned)
                    _courseReference = new Course.EdFi.CourseReference();

                return _courseReference;
            }
        }

        [DataMember(Name="courseReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public Course.EdFi.CourseReference CourseReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitCourseReference != null
                    && (_courseReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitCourseReference.IsReferenceFullyDefined()))
                    return ImplicitCourseReference;

                return null;
            }
            set
            {
                _courseReferenceExplicitlyAssigned = true;
                _courseReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Entities.Common.Edfixcrdc.IClassGroup _classGroup;

        [IgnoreDataMember]
        Entities.Common.Edfixcrdc.IClassGroup Entities.Common.Edfixcrdc.IClassGroupCourse.ClassGroup
        {
            get { return _classGroup; }
            set { SetClassGroup(value); }
        }

        public Entities.Common.Edfixcrdc.IClassGroup ClassGroup
        {
            set { SetClassGroup(value); }
        }

        private void SetClassGroup(Entities.Common.Edfixcrdc.IClassGroup value)
        {
            _classGroup = value;
        }

        /// <summary>
        /// A unique alphanumeric code assigned to a course.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.Edfixcrdc.IClassGroupCourse.CourseCode
        {
            get
            {
                if (ImplicitCourseReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitCourseReference.IsReferenceFullyDefined()))
                    return ImplicitCourseReference.CourseCode;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Course
                _courseReferenceExplicitlyAssigned = false;
                ImplicitCourseReference.CourseCode = value;
            }
        }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.Edfixcrdc.IClassGroupCourse.EducationOrganizationId
        {
            get
            {
                if (ImplicitCourseReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitCourseReference.IsReferenceFullyDefined()))
                    return ImplicitCourseReference.EducationOrganizationId;

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Course
                _courseReferenceExplicitlyAssigned = false;
                ImplicitCourseReference.EducationOrganizationId = value;
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IClassGroupCourse;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_classGroup == null || !_classGroup.Equals(compareTo.ClassGroup))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.Edfixcrdc.IClassGroupCourse).CourseCode, compareTo.CourseCode))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IClassGroupCourse).EducationOrganizationId.Equals(compareTo.EducationOrganizationId))
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
            if (_classGroup != null)
                hash.Add(_classGroup);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IClassGroupCourse).CourseCode);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IClassGroupCourse).EducationOrganizationId);
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
            return Entities.Common.Edfixcrdc.ClassGroupCourseMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IClassGroupCourse)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.ClassGroupCourseMapper.MapTo(this, (Entities.Common.Edfixcrdc.IClassGroupCourse)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.Edfixcrdc.IClassGroupCourse.CourseResourceId
        {
            get { return null; }
            set { ImplicitCourseReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.Edfixcrdc.IClassGroupCourse.CourseDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitCourseReference.Discriminator = value; }
        }


        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class ClassGroupCoursePutPostRequestValidator : FluentValidation.AbstractValidator<ClassGroupCourse>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ClassGroupCourse> context, FluentValidation.Results.ValidationResult result)
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
    /// A class which represents the edfixcrdc.ClassGroupMeetingTime table of the ClassGroup aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [NoUnsuppliedRequiredMembersWithMeaningfulDefaults]
    public class ClassGroupMeetingTime : Entities.Common.Edfixcrdc.IClassGroupMeetingTime, IHasRequiredMembersWithMeaningfulDefaultValues
    {
        private static FullName _fullName = new FullName("edfixcrdc", "ClassGroupMeetingTime");

        // Fluent validator instance (threadsafe)
        private static ClassGroupMeetingTimePutPostRequestValidator _validator = new ClassGroupMeetingTimePutPostRequestValidator();
        
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
        private Entities.Common.Edfixcrdc.IClassGroup _classGroup;

        [IgnoreDataMember]
        Entities.Common.Edfixcrdc.IClassGroup Entities.Common.Edfixcrdc.IClassGroupMeetingTime.ClassGroup
        {
            get { return _classGroup; }
            set { SetClassGroup(value); }
        }

        public Entities.Common.Edfixcrdc.IClassGroup ClassGroup
        {
            set { SetClassGroup(value); }
        }

        private void SetClassGroup(Entities.Common.Edfixcrdc.IClassGroup value)
        {
            _classGroup = value;
        }

        /// <summary>
        /// Indicates meeting day.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="meetingDayDescriptor")][DescriptorExists("MeetingDayDescriptor")]
        public string MeetingDayDescriptor { get; set; }

        /// <summary>
        /// The time of day a class/group starts providing services.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="startTime")][JsonConverter(typeof(UtcTimeConverter))]
        public TimeSpan StartTime { get; set; }
        
        private bool _stopTimeExplicitlyAssigned = false;
        private TimeSpan _stopTime;

        /// <summary>
        /// The time of day a class/group stops providing services.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="stopTime")][JsonConverter(typeof(UtcTimeConverter))]
        public TimeSpan StopTime 
        { 
            get => _stopTime;
            set 
            { 
                _stopTime = value;
                _stopTimeExplicitlyAssigned = true; 
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IClassGroupMeetingTime;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_classGroup == null || !_classGroup.Equals(compareTo.ClassGroup))
                return false;


            // Standard Property
            if (!StringComparer.OrdinalIgnoreCase.Equals((this as Entities.Common.Edfixcrdc.IClassGroupMeetingTime).MeetingDayDescriptor, compareTo.MeetingDayDescriptor))
                return false;


            // Standard Property
            if (!(this as Entities.Common.Edfixcrdc.IClassGroupMeetingTime).StartTime.Equals(compareTo.StartTime))
                return false;


            // Standard Property
            if (!(this as Entities.Common.Edfixcrdc.IClassGroupMeetingTime).StopTime.Equals(compareTo.StopTime))
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
            if (_classGroup != null)
                hash.Add(_classGroup);

            // Standard Property
                hash.Add((this as Entities.Common.Edfixcrdc.IClassGroupMeetingTime).MeetingDayDescriptor);


            // Standard Property
                hash.Add((this as Entities.Common.Edfixcrdc.IClassGroupMeetingTime).StartTime);


            // Standard Property
                hash.Add((this as Entities.Common.Edfixcrdc.IClassGroupMeetingTime).StopTime);

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

        IEnumerable<string> IHasRequiredMembersWithMeaningfulDefaultValues.GetUnassignedMemberNames()
        {
            if (!_stopTimeExplicitlyAssigned)
            {
                yield return "StopTime";
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
            return Entities.Common.Edfixcrdc.ClassGroupMeetingTimeMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IClassGroupMeetingTime)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.ClassGroupMeetingTimeMapper.MapTo(this, (Entities.Common.Edfixcrdc.IClassGroupMeetingTime)target, null);
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
    public class ClassGroupMeetingTimePutPostRequestValidator : FluentValidation.AbstractValidator<ClassGroupMeetingTime>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ClassGroupMeetingTime> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: CommunityProviderLocation

namespace EdFi.Ods.Api.Common.Models.Resources.CommunityProviderLocation.Edfixcrdc
{
    /// <summary>
    /// Represents a reference to the CommunityProviderLocation resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationReference : IResourceReference
    {
        [DataMember(Name="communityProviderId")]
        public long CommunityProviderId { get; set; }

        [DataMember(Name="communityProviderLocationId")]
        public int CommunityProviderLocationId { get; set; }

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
                    if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled && IsReferenceFullyDefined())
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
            return CommunityProviderId != default(long) && CommunityProviderLocationId != default(int);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (CommunityProviderId == default)
            {
                yield return "CommunityProviderId";
            }

            if (CommunityProviderLocationId == default)
            {
                yield return "CommunityProviderLocationId";
            }

        }

        private Link CreateLink()
        {
            var link = new Link
            {
                Rel = "CommunityProviderLocation",
                Href = $"/edfixcrdc/communityProviderLocations/{ResourceId:n}"
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
    /// A class which represents the edfixcrdc.CommunityProviderLocation table of the CommunityProviderLocation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocation : Entities.Common.Edfixcrdc.ICommunityProviderLocation, IHasETag, IDateVersionedEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("edfixcrdc", "CommunityProviderLocation");

        // Fluent validator instance (threadsafe)
        private static CommunityProviderLocationPutPostRequestValidator _validator = new CommunityProviderLocationPutPostRequestValidator();
        
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
        /// The unique identifier for the CommunityProviderLocation resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------

        private bool _communityProviderReferenceExplicitlyAssigned;
        private CommunityProvider.EdFi.CommunityProviderReference _communityProviderReference;
        private CommunityProvider.EdFi.CommunityProviderReference ImplicitCommunityProviderReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_communityProviderReference == null && !_communityProviderReferenceExplicitlyAssigned)
                    _communityProviderReference = new CommunityProvider.EdFi.CommunityProviderReference();

                return _communityProviderReference;
            }
        }

        [DataMember(Name="communityProviderReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public CommunityProvider.EdFi.CommunityProviderReference CommunityProviderReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitCommunityProviderReference != null
                    && (_communityProviderReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitCommunityProviderReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderReference;

                return null;
            }
            set
            {
                _communityProviderReferenceExplicitlyAssigned = true;
                _communityProviderReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.Edfixcrdc.ICommunityProviderLocation.CommunityProviderId
        {
            get
            {
                if (ImplicitCommunityProviderReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitCommunityProviderReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderReference.CommunityProviderId;

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // CommunityProvider
                _communityProviderReferenceExplicitlyAssigned = false;
                ImplicitCommunityProviderReference.CommunityProviderId = value;
            }
        }

        /// <summary>
        /// A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="communityProviderLocationId")]
        public int CommunityProviderLocationId { get; set; }
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
            var compareTo = obj as Entities.Common.Edfixcrdc.ICommunityProviderLocation;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.ICommunityProviderLocation).CommunityProviderId.Equals(compareTo.CommunityProviderId))
                return false;


            // Standard Property
            if (!(this as Entities.Common.Edfixcrdc.ICommunityProviderLocation).CommunityProviderLocationId.Equals(compareTo.CommunityProviderLocationId))
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
            hash.Add((this as Entities.Common.Edfixcrdc.ICommunityProviderLocation).CommunityProviderId);

            // Standard Property
                hash.Add((this as Entities.Common.Edfixcrdc.ICommunityProviderLocation).CommunityProviderLocationId);

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
        /// The type of address listed for the community provider location.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="addressTypeDescriptor")][DescriptorExists("AddressTypeDescriptor")]
        public string AddressTypeDescriptor { get; set; }

        /// <summary>
        /// An indication of the range of ages of students that this provider location can accommodate.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(75, MinimumLength=1, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="ageRangeDescription")]
        public string AgeRangeDescription { get; set; }

        /// <summary>
        /// The street number and street name or post office box number of an address.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(50, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="apartmentRoomSuiteNumber")]
        public string ApartmentRoomSuiteNumber { get; set; }

        /// <summary>
        /// The number of the building on the site, if more than one building shares the same address.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(20, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="buildingSiteNumber")]
        public string BuildingSiteNumber { get; set; }

        /// <summary>
        /// The maximum number of students this provider location can accommodate at any given time.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="capacity")]
        public int? Capacity { get; set; }

        /// <summary>
        /// The name of the city in which an address is located.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(30, MinimumLength=2, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="city")]
        public string City { get; set; }

        /// <summary>
        /// The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the 'first-order subdivisions' of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.). Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(5, MinimumLength=3, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="countyFIPSCode")]
        public string CountyFIPSCode { get; set; }

        /// <summary>
        /// The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(30, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="nameOfCounty")]
        public string NameOfCounty { get; set; }

        /// <summary>
        /// The oldest age of students accepted at this location.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(0, 2147483647, ErrorMessage=ValidationHelpers.RangeMinOnlyMessageFormat)]
        [DataMember(Name="oldestAgeAccepted")]
        public int? OldestAgeAccepted { get; set; }

        /// <summary>
        /// The five or nine digit zip code or overseas postal code portion of an address.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(17, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="postalCode")]
        public string PostalCode { get; set; }

        /// <summary>
        /// An indication of whether a provider location serves children with special needs.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="specialNeedsProvidedIndicator")]
        public bool? SpecialNeedsProvidedIndicator { get; set; }

        /// <summary>
        /// The abbreviation for the state (within the United States) or outlying area in which an address is located.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="stateAbbreviationDescriptor")][DescriptorExists("StateAbbreviationDescriptor")]
        public string StateAbbreviationDescriptor { get; set; }

        /// <summary>
        /// The street number and street name or post office box number of an address.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(150, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="streetNumberName")]
        public string StreetNumberName { get; set; }

        /// <summary>
        /// The time of day this provider location stops providing services.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="timeClose")][JsonConverter(typeof(UtcTimeConverter))]
        public TimeSpan? TimeClose { get; set; }

        /// <summary>
        /// The time of day this provider location begins providing services.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="timeOpen")][JsonConverter(typeof(UtcTimeConverter))]
        public TimeSpan? TimeOpen { get; set; }

        /// <summary>
        /// The youngest age of students accepted at this location.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(0, 2147483647, ErrorMessage=ValidationHelpers.RangeMinOnlyMessageFormat)]
        [DataMember(Name="youngestAgeAccepted")]
        public int? YoungestAgeAccepted { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        /// <summary>
        /// instructionalCalendar
        /// </summary>
        
        [DataMember(Name = "instructionalCalendar")]
        public CommunityProviderLocationInstructionalCalendar CommunityProviderLocationInstructionalCalendar { get; set; }

        Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar Entities.Common.Edfixcrdc.ICommunityProviderLocation.CommunityProviderLocationInstructionalCalendar
        {
            get { return CommunityProviderLocationInstructionalCalendar; }
            set { CommunityProviderLocationInstructionalCalendar = (CommunityProviderLocationInstructionalCalendar) value; }
        }

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
            return Entities.Common.Edfixcrdc.CommunityProviderLocationMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.ICommunityProviderLocation)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.CommunityProviderLocationMapper.MapTo(this, (Entities.Common.Edfixcrdc.ICommunityProviderLocation)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.Edfixcrdc.ICommunityProviderLocation.CommunityProviderResourceId
        {
            get { return null; }
            set { ImplicitCommunityProviderReference.ResourceId = value ?? default(Guid); }
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

                // ---------------------------
                //  Validate embedded objects
                // ---------------------------
                if (CommunityProviderLocationInstructionalCalendar != null && mappingContract?.IsMemberSupported("CommunityProviderLocationInstructionalCalendar") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("CommunityProviderLocationInstructionalCalendar");

                    foreach (var result in ValidationHelpers.ValidateEmbeddedObject(new ValidationContext(CommunityProviderLocationInstructionalCalendar, validationContext, validationContext.Items.ForEmbeddedObject("CommunityProviderLocationInstructionalCalendar"))))
                    {
                        yield return result;
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
    public class CommunityProviderLocationPutPostRequestValidator : FluentValidation.AbstractValidator<CommunityProviderLocation>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<CommunityProviderLocation> context, FluentValidation.Results.ValidationResult result)
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
    /// A class which represents the edfixcrdc.CommunityProviderLocationInstructionalCalendar table of the CommunityProviderLocation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [NoUnsuppliedRequiredMembersWithMeaningfulDefaults]
    public class CommunityProviderLocationInstructionalCalendar : Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar, IHasRequiredMembersWithMeaningfulDefaultValues
    {
        private static FullName _fullName = new FullName("edfixcrdc", "CommunityProviderLocationInstructionalCalendar");

        // Fluent validator instance (threadsafe)
        private static CommunityProviderLocationInstructionalCalendarPutPostRequestValidator _validator = new CommunityProviderLocationInstructionalCalendarPutPostRequestValidator();
        
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

        private bool _schoolYearTypeReferenceExplicitlyAssigned;
        private SchoolYearType.EdFi.SchoolYearTypeReference _schoolYearTypeReference;
        private SchoolYearType.EdFi.SchoolYearTypeReference ImplicitSchoolYearTypeReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_schoolYearTypeReference == null && !_schoolYearTypeReferenceExplicitlyAssigned)
                    _schoolYearTypeReference = new SchoolYearType.EdFi.SchoolYearTypeReference();

                return _schoolYearTypeReference;
            }
        }

        [DataMember(Name="schoolYearTypeReference")]
        [FullyDefinedReference][RequiredReference("edfixcrdc", "CommunityProviderLocation")]
        public SchoolYearType.EdFi.SchoolYearTypeReference SchoolYearTypeReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitSchoolYearTypeReference != null
                    && (_schoolYearTypeReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitSchoolYearTypeReference.IsReferenceFullyDefined()))
                    return ImplicitSchoolYearTypeReference;

                return null;
            }
            set
            {
                _schoolYearTypeReferenceExplicitlyAssigned = true;
                _schoolYearTypeReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Entities.Common.Edfixcrdc.ICommunityProviderLocation _communityProviderLocation;

        [IgnoreDataMember]
        Entities.Common.Edfixcrdc.ICommunityProviderLocation Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar.CommunityProviderLocation
        {
            get { return _communityProviderLocation; }
            set { SetCommunityProviderLocation(value); }
        }

        public Entities.Common.Edfixcrdc.ICommunityProviderLocation CommunityProviderLocation
        {
            set { SetCommunityProviderLocation(value); }
        }

        private void SetCommunityProviderLocation(Entities.Common.Edfixcrdc.ICommunityProviderLocation value)
        {
            _communityProviderLocation = value;
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
            var compareTo = obj as Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_communityProviderLocation == null || !_communityProviderLocation.Equals(compareTo.CommunityProviderLocation))
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
            if (_communityProviderLocation != null)
                hash.Add(_communityProviderLocation);
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
        /// Month, day and year of the first day of the instructional calendar.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }

        /// <summary>
        /// Month, day and year of the last day of the instuctional calendar.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="endDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime EndDate { get; set; }

        /// <summary>
        /// The identifier for the instructional year.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        short Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar.SchoolYear
        {
            get
            {
                if (ImplicitSchoolYearTypeReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitSchoolYearTypeReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitSchoolYearTypeReference.SchoolYear;
                    }

                return default(short);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // SchoolYearType
                _schoolYearTypeReferenceExplicitlyAssigned = false;
                ImplicitSchoolYearTypeReference.SchoolYear = value;
            }
        }
        
        private bool _totalInstructionalDaysPerYearExplicitlyAssigned = false;
        private int _totalInstructionalDaysPerYear;

        /// <summary>
        /// The total number of instructional days in the intructional calendar.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(0, 2147483647, ErrorMessage=ValidationHelpers.RangeMinOnlyMessageFormat)]
        [DataMember(Name="totalInstructionalDaysPerYear")]
        public int TotalInstructionalDaysPerYear 
        { 
            get => _totalInstructionalDaysPerYear;
            set 
            { 
                _totalInstructionalDaysPerYear = value;
                _totalInstructionalDaysPerYearExplicitlyAssigned = true; 
            }
        }

        // -------------------------------------------------------------

        IEnumerable<string> IHasRequiredMembersWithMeaningfulDefaultValues.GetUnassignedMemberNames()
        {
            if (!_totalInstructionalDaysPerYearExplicitlyAssigned)
            {
                yield return "TotalInstructionalDaysPerYear";
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
            return Entities.Common.Edfixcrdc.CommunityProviderLocationInstructionalCalendarMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.CommunityProviderLocationInstructionalCalendarMapper.MapTo(this, (Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar.SchoolYearTypeResourceId
        {
            get { return null; }
            set { ImplicitSchoolYearTypeReference.ResourceId = value ?? default(Guid); }
        }


        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationInstructionalCalendarPutPostRequestValidator : FluentValidation.AbstractValidator<CommunityProviderLocationInstructionalCalendar>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<CommunityProviderLocationInstructionalCalendar> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: MeetingDayDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.MeetingDayDescriptor.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.MeetingDayDescriptor table of the MeetingDayDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class MeetingDayDescriptor : Entities.Common.Edfixcrdc.IMeetingDayDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "MeetingDayDescriptor");

        // Fluent validator instance (threadsafe)
        private static MeetingDayDescriptorPutPostRequestValidator _validator = new MeetingDayDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the MeetingDayDescriptor resource.
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
        public int MeetingDayDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return MeetingDayDescriptorId; }
            set { MeetingDayDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IMeetingDayDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.Edfixcrdc.IMeetingDayDescriptor).MeetingDayDescriptorId.Equals(compareTo.MeetingDayDescriptorId))
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
            hash.Add((this as Entities.Common.Edfixcrdc.IMeetingDayDescriptor).MeetingDayDescriptorId);

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
            return Entities.Common.Edfixcrdc.MeetingDayDescriptorMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IMeetingDayDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.MeetingDayDescriptorMapper.MapTo(this, (Entities.Common.Edfixcrdc.IMeetingDayDescriptor)target, null);
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
    public class MeetingDayDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<MeetingDayDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<MeetingDayDescriptor> context, FluentValidation.Results.ValidationResult result)
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

namespace EdFi.Ods.Api.Common.Models.Resources.Program.EdFi.Extensions.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.ProgramExtension table of the Program aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Edfixcrdc")]
    public class ProgramExtension : Entities.Common.Edfixcrdc.IProgramExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "ProgramExtension");

        // Fluent validator instance (threadsafe)
        private static ProgramExtensionPutPostRequestValidator _validator = new ProgramExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.IProgram _program;

        [IgnoreDataMember]
        Entities.Common.EdFi.IProgram Entities.Common.Edfixcrdc.IProgramExtension.Program
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IProgramExtension;

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

        /// <summary>
        /// Defines the cost of a program that is offered by the Education Organization
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="programCostDescriptor")][DescriptorExists("ProgramCostDescriptor")]
        public string ProgramCostDescriptor { get; set; }
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
            return Entities.Common.Edfixcrdc.ProgramExtensionMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IProgramExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.ProgramExtensionMapper.MapTo(this, (Entities.Common.Edfixcrdc.IProgramExtension)target, null);
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
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class ProgramExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<ProgramExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ProgramExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: ProgramCostDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.ProgramCostDescriptor.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.ProgramCostDescriptor table of the ProgramCostDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class ProgramCostDescriptor : Entities.Common.Edfixcrdc.IProgramCostDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "ProgramCostDescriptor");

        // Fluent validator instance (threadsafe)
        private static ProgramCostDescriptorPutPostRequestValidator _validator = new ProgramCostDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the ProgramCostDescriptor resource.
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
        public int ProgramCostDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return ProgramCostDescriptorId; }
            set { ProgramCostDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IProgramCostDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.Edfixcrdc.IProgramCostDescriptor).ProgramCostDescriptorId.Equals(compareTo.ProgramCostDescriptorId))
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
            hash.Add((this as Entities.Common.Edfixcrdc.IProgramCostDescriptor).ProgramCostDescriptorId);

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
            return Entities.Common.Edfixcrdc.ProgramCostDescriptorMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IProgramCostDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.ProgramCostDescriptorMapper.MapTo(this, (Entities.Common.Edfixcrdc.IProgramCostDescriptor)target, null);
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
    public class ProgramCostDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<ProgramCostDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ProgramCostDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: School

namespace EdFi.Ods.Api.Common.Models.Resources.School.EdFi.Extensions.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.SchoolExtension table of the School aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Edfixcrdc")]
    public class SchoolExtension : Entities.Common.Edfixcrdc.ISchoolExtension, IChildEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("edfixcrdc", "SchoolExtension");

        // Fluent validator instance (threadsafe)
        private static SchoolExtensionPutPostRequestValidator _validator = new SchoolExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.ISchool _school;

        [IgnoreDataMember]
        Entities.Common.EdFi.ISchool Entities.Common.Edfixcrdc.ISchoolExtension.School
        {
            get { return _school; }
            set { SetSchool(value); }
        }

        public Entities.Common.EdFi.ISchool School
        {
            set { SetSchool(value); }
        }

        private void SetSchool(Entities.Common.EdFi.ISchool value)
        {
            _school = value;
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
            var compareTo = obj as Entities.Common.Edfixcrdc.ISchoolExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_school == null || !_school.Equals(compareTo.School))
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
            if (_school != null)
                hash.Add(_school);
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
        /// The alternative status of the school, such as academic or discipline
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="alternativeStatusDescriptor")][DescriptorExists("AlternativeStatusDescriptor")]
        public string AlternativeStatusDescriptor { get; set; }

        /// <summary>
        /// Description of the population of students who attend an ungraded school
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="ungradedDetailDescriptor")][DescriptorExists("UngradedDetailDescriptor")]
        public string UngradedDetailDescriptor { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        /// <summary>
        /// technology
        /// </summary>
        
        [DataMember(Name = "technology")]
        public SchoolTechnology SchoolTechnology { get; set; }

        Entities.Common.Edfixcrdc.ISchoolTechnology Entities.Common.Edfixcrdc.ISchoolExtension.SchoolTechnology
        {
            get { return SchoolTechnology; }
            set { SchoolTechnology = (SchoolTechnology) value; }
        }

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
            return Entities.Common.Edfixcrdc.SchoolExtensionMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.ISchoolExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.SchoolExtensionMapper.MapTo(this, (Entities.Common.Edfixcrdc.ISchoolExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            School = (ISchool)value;
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

                // ---------------------------
                //  Validate embedded objects
                // ---------------------------
                if (SchoolTechnology != null && mappingContract?.IsMemberSupported("SchoolTechnology") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("SchoolTechnology");

                    foreach (var result in ValidationHelpers.ValidateEmbeddedObject(new ValidationContext(SchoolTechnology, validationContext, validationContext.Items.ForEmbeddedObject("SchoolTechnology"))))
                    {
                        yield return result;
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
    public class SchoolExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<SchoolExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<SchoolExtension> context, FluentValidation.Results.ValidationResult result)
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
    /// A class which represents the edfixcrdc.SchoolTechnology table of the School aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [NoUnsuppliedRequiredMembersWithMeaningfulDefaults]
    public class SchoolTechnology : Entities.Common.Edfixcrdc.ISchoolTechnology, IHasRequiredMembersWithMeaningfulDefaultValues
    {
        private static FullName _fullName = new FullName("edfixcrdc", "SchoolTechnology");

        // Fluent validator instance (threadsafe)
        private static SchoolTechnologyPutPostRequestValidator _validator = new SchoolTechnologyPutPostRequestValidator();
        
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
        private Entities.Common.Edfixcrdc.ISchoolExtension _schoolExtension;

        [IgnoreDataMember]
        Entities.Common.Edfixcrdc.ISchoolExtension Entities.Common.Edfixcrdc.ISchoolTechnology.SchoolExtension
        {
            get { return _schoolExtension; }
            set { SetSchoolExtension(value); }
        }

        public Entities.Common.Edfixcrdc.ISchoolExtension SchoolExtension
        {
            set { SetSchoolExtension(value); }
        }

        private void SetSchoolExtension(Entities.Common.Edfixcrdc.ISchoolExtension value)
        {
            _schoolExtension = value;
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
            var compareTo = obj as Entities.Common.Edfixcrdc.ISchoolTechnology;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_schoolExtension == null || !_schoolExtension.Equals(compareTo.SchoolExtension))
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
            if (_schoolExtension != null)
                hash.Add(_schoolExtension);
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
        
        private bool _allClassroomsHaveWiFiExplicitlyAssigned = false;
        private bool _allClassroomsHaveWiFi;

        /// <summary>
        /// Does the school have Wi-Fi access in every classroom?
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="allClassroomsHaveWiFi")]
        public bool AllClassroomsHaveWiFi 
        { 
            get => _allClassroomsHaveWiFi;
            set 
            { 
                _allClassroomsHaveWiFi = value;
                _allClassroomsHaveWiFiExplicitlyAssigned = true; 
            }
        }

        
        private bool _fiberOpticConnectionExplicitlyAssigned = false;
        private bool _fiberOpticConnection;

        /// <summary>
        /// Is the school connected to the internet through fiber-optic connection?
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="fiberOpticConnection")]
        public bool FiberOpticConnection 
        { 
            get => _fiberOpticConnection;
            set 
            { 
                _fiberOpticConnection = value;
                _fiberOpticConnectionExplicitlyAssigned = true; 
            }
        }

        
        private bool _studentsBringOwnDeviceExplicitlyAssigned = false;
        private bool _studentsBringOwnDevice;

        /// <summary>
        /// Does the school allow students to bring to the school student-owned devices that can be used to access the internet for student learning?
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="studentsBringOwnDevice")]
        public bool StudentsBringOwnDevice 
        { 
            get => _studentsBringOwnDevice;
            set 
            { 
                _studentsBringOwnDevice = value;
                _studentsBringOwnDeviceExplicitlyAssigned = true; 
            }
        }

        
        private bool _studentsTakeHomeDeviceExplicitlyAssigned = false;
        private bool _studentsTakeHomeDevice;

        /// <summary>
        /// Does the school allow students to take home school-issued devices that can be used to access the internet for student learning?
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="studentsTakeHomeDevice")]
        public bool StudentsTakeHomeDevice 
        { 
            get => _studentsTakeHomeDevice;
            set 
            { 
                _studentsTakeHomeDevice = value;
                _studentsTakeHomeDeviceExplicitlyAssigned = true; 
            }
        }

        
        private bool _wiFiDeviceCountExplicitlyAssigned = false;
        private int _wiFiDeviceCount;

        /// <summary>
        /// Number of Wi-Fi enabled devices provided by the school to students for student learning use
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="wiFiDeviceCount")]
        public int WiFiDeviceCount 
        { 
            get => _wiFiDeviceCount;
            set 
            { 
                _wiFiDeviceCount = value;
                _wiFiDeviceCountExplicitlyAssigned = true; 
            }
        }

        // -------------------------------------------------------------

        IEnumerable<string> IHasRequiredMembersWithMeaningfulDefaultValues.GetUnassignedMemberNames()
        {
            if (!_allClassroomsHaveWiFiExplicitlyAssigned)
            {
                yield return "AllClassroomsHaveWiFi";
            }
            if (!_fiberOpticConnectionExplicitlyAssigned)
            {
                yield return "FiberOpticConnection";
            }
            if (!_studentsBringOwnDeviceExplicitlyAssigned)
            {
                yield return "StudentsBringOwnDevice";
            }
            if (!_studentsTakeHomeDeviceExplicitlyAssigned)
            {
                yield return "StudentsTakeHomeDevice";
            }
            if (!_wiFiDeviceCountExplicitlyAssigned)
            {
                yield return "WiFiDeviceCount";
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
            return Entities.Common.Edfixcrdc.SchoolTechnologyMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.ISchoolTechnology)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.SchoolTechnologyMapper.MapTo(this, (Entities.Common.Edfixcrdc.ISchoolTechnology)target, null);
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
    public class SchoolTechnologyPutPostRequestValidator : FluentValidation.AbstractValidator<SchoolTechnology>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<SchoolTechnology> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentClassGroupAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentClassGroupAssociation.Edfixcrdc
{
    /// <summary>
    /// Represents a reference to the StudentClassGroupAssociation resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationReference : IResourceReference
    {
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }

        [DataMember(Name="classGroupName")]
        public string ClassGroupName { get; set; }

        [DataMember(Name="communityProviderId")]
        public long CommunityProviderId { get; set; }

        [DataMember(Name="communityProviderLocationId")]
        public int CommunityProviderLocationId { get; set; }

        [DataMember(Name="specialNeedsProvidedIndicator")]
        public bool SpecialNeedsProvidedIndicator { get; set; }

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
                    if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled && IsReferenceFullyDefined())
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
            return BeginDate != default(DateTime) && ClassGroupName != default(string) && CommunityProviderId != default(long) && CommunityProviderLocationId != default(int) && SpecialNeedsProvidedIndicator != default(bool) && StudentUniqueId != default(string);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (BeginDate == default)
            {
                yield return "BeginDate";
            }

            if (ClassGroupName == default)
            {
                yield return "ClassGroupName";
            }

            if (CommunityProviderId == default)
            {
                yield return "CommunityProviderId";
            }

            if (CommunityProviderLocationId == default)
            {
                yield return "CommunityProviderLocationId";
            }

            if (SpecialNeedsProvidedIndicator == default)
            {
                yield return "SpecialNeedsProvidedIndicator";
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
                Rel = "StudentClassGroupAssociation",
                Href = $"/edfixcrdc/studentClassGroupAssociations/{ResourceId:n}"
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
    /// A class which represents the edfixcrdc.StudentClassGroupAssociation table of the StudentClassGroupAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociation : Entities.Common.Edfixcrdc.IStudentClassGroupAssociation, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "StudentClassGroupAssociation");

        // Fluent validator instance (threadsafe)
        private static StudentClassGroupAssociationPutPostRequestValidator _validator = new StudentClassGroupAssociationPutPostRequestValidator();
        
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
        /// The unique identifier for the StudentClassGroupAssociation resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------

        private bool _classGroupReferenceExplicitlyAssigned;
        private ClassGroup.Edfixcrdc.ClassGroupReference _classGroupReference;
        private ClassGroup.Edfixcrdc.ClassGroupReference ImplicitClassGroupReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_classGroupReference == null && !_classGroupReferenceExplicitlyAssigned)
                    _classGroupReference = new ClassGroup.Edfixcrdc.ClassGroupReference();

                return _classGroupReference;
            }
        }

        [DataMember(Name="classGroupReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public ClassGroup.Edfixcrdc.ClassGroupReference ClassGroupReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitClassGroupReference != null
                    && (_classGroupReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitClassGroupReference.IsReferenceFullyDefined()))
                    return ImplicitClassGroupReference;

                return null;
            }
            set
            {
                _classGroupReferenceExplicitlyAssigned = true;
                _classGroupReference = value;
            }
        }
        private bool _studentReferenceExplicitlyAssigned;
        private Student.EdFi.StudentReference _studentReference;
        private Student.EdFi.StudentReference ImplicitStudentReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_studentReference == null && !_studentReferenceExplicitlyAssigned)
                    _studentReference = new Student.EdFi.StudentReference();

                return _studentReference;
            }
        }

        [DataMember(Name="studentReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public Student.EdFi.StudentReference StudentReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitStudentReference != null
                    && (_studentReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitStudentReference.IsReferenceFullyDefined()))
                    return ImplicitStudentReference;

                return null;
            }
            set
            {
                _studentReferenceExplicitlyAssigned = true;
                _studentReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// The month, day, and year on which the student began participating in a class/group.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }

        /// <summary>
        /// The name of the class/group of students.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.ClassGroupName
        {
            get
            {
                if (ImplicitClassGroupReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitClassGroupReference.IsReferenceFullyDefined()))
                    return ImplicitClassGroupReference.ClassGroupName;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ClassGroup
                _classGroupReferenceExplicitlyAssigned = false;
                ImplicitClassGroupReference.ClassGroupName = value;
            }
        }

        /// <summary>
        /// The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.CommunityProviderId
        {
            get
            {
                if (ImplicitClassGroupReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitClassGroupReference.IsReferenceFullyDefined()))
                    return ImplicitClassGroupReference.CommunityProviderId;

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ClassGroup
                _classGroupReferenceExplicitlyAssigned = false;
                ImplicitClassGroupReference.CommunityProviderId = value;
            }
        }

        /// <summary>
        /// A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.CommunityProviderLocationId
        {
            get
            {
                if (ImplicitClassGroupReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitClassGroupReference.IsReferenceFullyDefined()))
                    return ImplicitClassGroupReference.CommunityProviderLocationId;

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ClassGroup
                _classGroupReferenceExplicitlyAssigned = false;
                ImplicitClassGroupReference.CommunityProviderLocationId = value;
            }
        }

        /// <summary>
        /// An indication of whether a class or group serves children with special needs.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        bool Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.SpecialNeedsProvidedIndicator
        {
            get
            {
                if (ImplicitClassGroupReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitClassGroupReference.IsReferenceFullyDefined()))
                    return ImplicitClassGroupReference.SpecialNeedsProvidedIndicator;

                return default(bool);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ClassGroup
                _classGroupReferenceExplicitlyAssigned = false;
                ImplicitClassGroupReference.SpecialNeedsProvidedIndicator = value;
            }
        }

        /// <summary>
        /// A unique alphanumeric code assigned to a student.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.StudentUniqueId
        {
            get
            {
                if (ImplicitStudentReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitStudentReference.IsReferenceFullyDefined()))
                    return ImplicitStudentReference.StudentUniqueId;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Student
                _studentReferenceExplicitlyAssigned = false;
                ImplicitStudentReference.StudentUniqueId = value;
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Standard Property
            if (!(this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).BeginDate.Equals(compareTo.BeginDate))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).ClassGroupName, compareTo.ClassGroupName))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).CommunityProviderId.Equals(compareTo.CommunityProviderId))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).CommunityProviderLocationId.Equals(compareTo.CommunityProviderLocationId))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).SpecialNeedsProvidedIndicator.Equals(compareTo.SpecialNeedsProvidedIndicator))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).StudentUniqueId, compareTo.StudentUniqueId))
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
                hash.Add((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).BeginDate);


            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).ClassGroupName);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).CommunityProviderId);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).CommunityProviderLocationId);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).SpecialNeedsProvidedIndicator);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentClassGroupAssociation).StudentUniqueId);
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
        /// The month, day, and year on which the student stopped participating in a class/group.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="endDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EndDate { get; set; }

        /// <summary>
        /// The reason the student stopped participating in a class/group.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="reasonExitedDescriptor")][DescriptorExists("ReasonExitedDescriptor")]
        public string ReasonExitedDescriptor { get; set; }
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
            return Entities.Common.Edfixcrdc.StudentClassGroupAssociationMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IStudentClassGroupAssociation)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.StudentClassGroupAssociationMapper.MapTo(this, (Entities.Common.Edfixcrdc.IStudentClassGroupAssociation)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.ClassGroupResourceId
        {
            get { return null; }
            set { ImplicitClassGroupReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.ClassGroupDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitClassGroupReference.Discriminator = value; }
        }


        Guid? Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.StudentResourceId
        {
            get { return null; }
            set { ImplicitStudentReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.StudentDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitStudentReference.Discriminator = value; }
        }


        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationPutPostRequestValidator : FluentValidation.AbstractValidator<StudentClassGroupAssociation>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentClassGroupAssociation> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentCommunityProviderLocationAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentCommunityProviderLocationAssociation.Edfixcrdc
{
    /// <summary>
    /// Represents a reference to the StudentCommunityProviderLocationAssociation resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationReference : IResourceReference
    {
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }

        [DataMember(Name="communityProviderId")]
        public long CommunityProviderId { get; set; }

        [DataMember(Name="communityProviderLocationId")]
        public int CommunityProviderLocationId { get; set; }

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
                    if (GeneratedArtifactStaticDependencies.ResourceLinksEnabled && IsReferenceFullyDefined())
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
            return BeginDate != default(DateTime) && CommunityProviderId != default(long) && CommunityProviderLocationId != default(int) && StudentUniqueId != default(string);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (BeginDate == default)
            {
                yield return "BeginDate";
            }

            if (CommunityProviderId == default)
            {
                yield return "CommunityProviderId";
            }

            if (CommunityProviderLocationId == default)
            {
                yield return "CommunityProviderLocationId";
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
                Rel = "StudentCommunityProviderLocationAssociation",
                Href = $"/edfixcrdc/studentCommunityProviderLocationAssociations/{ResourceId:n}"
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
    /// A class which represents the edfixcrdc.StudentCommunityProviderLocationAssociation table of the StudentCommunityProviderLocationAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociation : Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "StudentCommunityProviderLocationAssociation");

        // Fluent validator instance (threadsafe)
        private static StudentCommunityProviderLocationAssociationPutPostRequestValidator _validator = new StudentCommunityProviderLocationAssociationPutPostRequestValidator();
        
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
        /// The unique identifier for the StudentCommunityProviderLocationAssociation resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------

        private bool _communityProviderLocationReferenceExplicitlyAssigned;
        private CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference _communityProviderLocationReference;
        private CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference ImplicitCommunityProviderLocationReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_communityProviderLocationReference == null && !_communityProviderLocationReferenceExplicitlyAssigned)
                    _communityProviderLocationReference = new CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference();

                return _communityProviderLocationReference;
            }
        }

        [DataMember(Name="communityProviderLocationReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public CommunityProviderLocation.Edfixcrdc.CommunityProviderLocationReference CommunityProviderLocationReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitCommunityProviderLocationReference != null
                    && (_communityProviderLocationReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitCommunityProviderLocationReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderLocationReference;

                return null;
            }
            set
            {
                _communityProviderLocationReferenceExplicitlyAssigned = true;
                _communityProviderLocationReference = value;
            }
        }
        private bool _studentReferenceExplicitlyAssigned;
        private Student.EdFi.StudentReference _studentReference;
        private Student.EdFi.StudentReference ImplicitStudentReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_studentReference == null && !_studentReferenceExplicitlyAssigned)
                    _studentReference = new Student.EdFi.StudentReference();

                return _studentReference;
            }
        }

        [DataMember(Name="studentReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public Student.EdFi.StudentReference StudentReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitStudentReference != null
                    && (_studentReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitStudentReference.IsReferenceFullyDefined()))
                    return ImplicitStudentReference;

                return null;
            }
            set
            {
                _studentReferenceExplicitlyAssigned = true;
                _studentReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------

        /// <summary>
        /// The month, day, and year on which the student began participating at a provider location.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }

        /// <summary>
        /// The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.CommunityProviderId
        {
            get
            {
                if (ImplicitCommunityProviderLocationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitCommunityProviderLocationReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderLocationReference.CommunityProviderId;

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // CommunityProviderLocation
                _communityProviderLocationReferenceExplicitlyAssigned = false;
                ImplicitCommunityProviderLocationReference.CommunityProviderId = value;
            }
        }

        /// <summary>
        /// A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        int Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.CommunityProviderLocationId
        {
            get
            {
                if (ImplicitCommunityProviderLocationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitCommunityProviderLocationReference.IsReferenceFullyDefined()))
                    return ImplicitCommunityProviderLocationReference.CommunityProviderLocationId;

                return default(int);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // CommunityProviderLocation
                _communityProviderLocationReferenceExplicitlyAssigned = false;
                ImplicitCommunityProviderLocationReference.CommunityProviderLocationId = value;
            }
        }

        /// <summary>
        /// A unique alphanumeric code assigned to a student.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.StudentUniqueId
        {
            get
            {
                if (ImplicitStudentReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitStudentReference.IsReferenceFullyDefined()))
                    return ImplicitStudentReference.StudentUniqueId;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Student
                _studentReferenceExplicitlyAssigned = false;
                ImplicitStudentReference.StudentUniqueId = value;
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Standard Property
            if (!(this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).BeginDate.Equals(compareTo.BeginDate))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).CommunityProviderId.Equals(compareTo.CommunityProviderId))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).CommunityProviderLocationId.Equals(compareTo.CommunityProviderLocationId))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).StudentUniqueId, compareTo.StudentUniqueId))
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
                hash.Add((this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).BeginDate);


            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).CommunityProviderId);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).CommunityProviderLocationId);

            //Referenced Property
            hash.Add((this as Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation).StudentUniqueId);
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
        /// The month, day, and year on which the student stopped participating at a provider location.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="endDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EndDate { get; set; }

        /// <summary>
        /// The status of the student's enrollment by the Community Provider Loaction.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(30, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="enrollmentStatus")]
        public string EnrollmentStatus { get; set; }

        /// <summary>
        /// The reason the child left the community provider.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="reasonExitedDescriptor")][DescriptorExists("ReasonExitedDescriptor")]
        public string ReasonExitedDescriptor { get; set; }
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
            return Entities.Common.Edfixcrdc.StudentCommunityProviderLocationAssociationMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.StudentCommunityProviderLocationAssociationMapper.MapTo(this, (Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.CommunityProviderLocationResourceId
        {
            get { return null; }
            set { ImplicitCommunityProviderLocationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.CommunityProviderLocationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitCommunityProviderLocationReference.Discriminator = value; }
        }


        Guid? Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.StudentResourceId
        {
            get { return null; }
            set { ImplicitStudentReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.StudentDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitStudentReference.Discriminator = value; }
        }


        // -----------------------------------------------------------------
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationPutPostRequestValidator : FluentValidation.AbstractValidator<StudentCommunityProviderLocationAssociation>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentCommunityProviderLocationAssociation> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: UngradedDetailDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.UngradedDetailDescriptor.Edfixcrdc
{
    /// <summary>
    /// A class which represents the edfixcrdc.UngradedDetailDescriptor table of the UngradedDetailDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class UngradedDetailDescriptor : Entities.Common.Edfixcrdc.IUngradedDetailDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("edfixcrdc", "UngradedDetailDescriptor");

        // Fluent validator instance (threadsafe)
        private static UngradedDetailDescriptorPutPostRequestValidator _validator = new UngradedDetailDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the UngradedDetailDescriptor resource.
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
        public int UngradedDetailDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return UngradedDetailDescriptorId; }
            set { UngradedDetailDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.Edfixcrdc.IUngradedDetailDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.Edfixcrdc.IUngradedDetailDescriptor).UngradedDetailDescriptorId.Equals(compareTo.UngradedDetailDescriptorId))
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
            hash.Add((this as Entities.Common.Edfixcrdc.IUngradedDetailDescriptor).UngradedDetailDescriptorId);

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
            return Entities.Common.Edfixcrdc.UngradedDetailDescriptorMapper.SynchronizeTo(this, (Entities.Common.Edfixcrdc.IUngradedDetailDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.Edfixcrdc.UngradedDetailDescriptorMapper.MapTo(this, (Entities.Common.Edfixcrdc.IUngradedDetailDescriptor)target, null);
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
    public class UngradedDetailDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<UngradedDetailDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<UngradedDetailDescriptor> context, FluentValidation.Results.ValidationResult result)
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
