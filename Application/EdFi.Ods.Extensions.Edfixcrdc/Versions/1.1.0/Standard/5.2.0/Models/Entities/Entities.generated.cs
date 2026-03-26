using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using EdFi.Common.Extensions;
using EdFi.Ods.Api.Caching;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common.Adapters;
using EdFi.Ods.Common.Attributes;
using EdFi.Ods.Common.Caching;
using EdFi.Ods.Common.Dependencies;
using EdFi.Ods.Common.Models.Domain;
using EdFi.Ods.Common.Infrastructure.Extensibility;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Serialization;
using EdFi.Ods.Entities.Common.EdFi;
using EdFi.Ods.Entities.Common.Edfixcrdc;
using Newtonsoft.Json;
using MessagePack;
using KeyAttribute = MessagePack.KeyAttribute;

// Aggregate: AlternativeStatusDescriptor

namespace EdFi.Ods.Entities.NHibernate.AlternativeStatusDescriptorAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.AlternativeStatusDescriptor table of the AlternativeStatusDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class AlternativeStatusDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
    {

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [IgnoreMember]
        public virtual int AlternativeStatusDescriptorId 
        {
            get { return base.DescriptorId; }
            set { base.DescriptorId = value; }
        }
        

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        string IDescriptor.CodeValue
        {
            get { return CodeValue; }
            set { CodeValue = value; }
        }
        string IDescriptor.Description
        {
            get { return Description; }
            set { Description = value; }
        }
        DateTime? IDescriptor.EffectiveBeginDate
        {
            get { return EffectiveBeginDate; }
            set { EffectiveBeginDate = value; }
        }
        DateTime? IDescriptor.EffectiveEndDate
        {
            get { return EffectiveEndDate; }
            set { EffectiveEndDate = value; }
        }
        string IDescriptor.Namespace
        {
            get { return Namespace; }
            set { Namespace = value; }
        }
        string IDescriptor.ShortDescription
        {
            get { return ShortDescription; }
            set { ShortDescription = value; }
        }
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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("AlternativeStatusDescriptorId", AlternativeStatusDescriptorId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IAlternativeStatusDescriptor) target, null);
        }

    }
}
// Aggregate: ClassGroup

namespace EdFi.Ods.Entities.NHibernate.ClassGroupAggregate.Edfixcrdc
{
    /// <summary>
    /// Represents a read-only reference to the <see cref="ClassGroup"/> entity.
    /// </summary>
    [MessagePackObject]
    public class ClassGroupReferenceData : IEntityReferenceData
    {
        private bool _trackLookupContext;
        private Action<ClassGroupReferenceData> _contextualValuesInitializer;
        private bool _contextualValuesInitialized;

        // Default constructor (used by NHibernate)
        public ClassGroupReferenceData() { }

        // Constructor used for deferred initialization when the parent reference hasn't yet been initialized because we're falling back from stale serialized data to NHibernate hydration
        public ClassGroupReferenceData(Action<ClassGroupReferenceData> contextualValuesInitializer)
        {
            _trackLookupContext = true;
            _contextualValuesInitializer = contextualValuesInitializer;
        }

        // Constructor used for link support with Serialized Data feature
        public ClassGroupReferenceData(string contextualClassGroupName = default, long contextualCommunityProviderId = default, int contextualCommunityProviderLocationId = default, bool contextualSpecialNeedsProvidedIndicator = default, bool trackLookupContext = true)
        {
            _trackLookupContext = trackLookupContext;
    
            // Assign supplied contextual values (values pre-determined from parent context)
            _classGroupName = contextualClassGroupName;
            _communityProviderId = contextualCommunityProviderId;
            _communityProviderLocationId = contextualCommunityProviderLocationId;
            _specialNeedsProvidedIndicator = contextualSpecialNeedsProvidedIndicator;

            _contextualValuesInitialized = true;
        }

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Guid? _id;

        /// <summary>
        /// The id of the referenced entity (used as the resource identifier in the API).
        /// </summary>
        [Key(0)]
        public virtual Guid? Id
        {
            get => _id;
            set
            {
                _id = value;

                if (_trackLookupContext || (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled))
                {
                    // If explicitly setting this to a non-value, it needs to be resolved.
                    if (value == default(Guid) || value == null)
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
            }
        }

        private string _classGroupName;

        [Key(1)]
        public virtual string ClassGroupName
        {
            get { EnsureContextualValuesInitialized(); return _classGroupName; }
            set
            {
                var originalValue = _classGroupName;
                _classGroupName = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private long _communityProviderId;

        [Key(2)]
        public virtual long CommunityProviderId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderId; }
            set
            {
                var originalValue = _communityProviderId;
                _communityProviderId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private int _communityProviderLocationId;

        [Key(3)]
        public virtual int CommunityProviderLocationId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderLocationId; }
            set
            {
                var originalValue = _communityProviderLocationId;
                _communityProviderLocationId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private bool _specialNeedsProvidedIndicator;

        [Key(4)]
        public virtual bool SpecialNeedsProvidedIndicator
        {
            get { EnsureContextualValuesInitialized(); return _specialNeedsProvidedIndicator; }
            set
            {
                var originalValue = _specialNeedsProvidedIndicator;
                _specialNeedsProvidedIndicator = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }

        private void EnsureContextualValuesInitialized()
        {
            if (!_contextualValuesInitialized && _contextualValuesInitializer != null)
            {
                _contextualValuesInitializer(this);
                _contextualValuesInitialized = true;
            }
        }

        public virtual bool IsFullyDefined()
        {
            return
                _classGroupName != default
                            && _communityProviderId != default
                            && _communityProviderLocationId != default
                            && _specialNeedsProvidedIndicator != default
            ;
        }

        /// <summary>
        /// Gets and sets the discriminator value which identifies the concrete sub-type of the referenced entity
        /// when that entity has been derived; otherwise <b>null</b>.
        /// </summary>
        [Key(5)]
        public virtual string Discriminator { get; set; }

        private static FullName _fullName = new FullName("edfixcrdc", "ClassGroup"); 
        FullName IEntityReferenceData.FullName { get => _fullName; }
    
        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("ClassGroupName", ClassGroupName);
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);
            keyValues.Add("SpecialNeedsProvidedIndicator", SpecialNeedsProvidedIndicator);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (!entry.Value.Equals(thoseKeys[entry.Key]))
                    return false;
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                hashCode.Add(entry.Value);
            }

            return hashCode.ToHashCode();
        }
        #endregion
    }

// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.ClassGroup table of the ClassGroup aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ClassGroup : AggregateRootWithCompositeKey,
        Entities.Common.Edfixcrdc.IClassGroup, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public ClassGroup()
        {
            ClassGroupCourses = new HashSet<ClassGroupCourse>();
            ClassGroupMeetingTimes = new HashSet<ClassGroupMeetingTime>();
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData _communityProviderLocationReferenceData;

        private bool CommunityProviderLocationReferenceDataIsProxied()
        {
            return _communityProviderLocationReferenceData != null 
                && _communityProviderLocationReferenceData.GetType() != typeof(NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData CommunityProviderLocationReferenceData
        {
            get => _communityProviderLocationReferenceData;
            set
            {
                _communityProviderLocationReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !CommunityProviderLocationReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(6)]
        public virtual NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData CommunityProviderLocationSerializedReferenceData { get => _communityProviderLocationSerializedReferenceData; set { if (value != null) _communityProviderLocationSerializedReferenceData = value; } }
        private NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData _communityProviderLocationSerializedReferenceData;

        /// <summary>
        /// A read-only property implementation that allows the CommunityProviderLocation discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.Edfixcrdc.IClassGroup.CommunityProviderLocationDiscriminator
        {
            get
            {
                return CommunityProviderLocationReferenceDataIsProxied()
                    ? (CommunityProviderLocationSerializedReferenceData ?? CommunityProviderLocationReferenceData)?.Discriminator
                    : (CommunityProviderLocationReferenceData ?? CommunityProviderLocationSerializedReferenceData)?.Discriminator;
            }
            set { }
        }

        /// <summary>
        /// A property implementation whose getter allows the CommunityProviderLocation resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.IClassGroup.CommunityProviderLocationResourceId
        {
            get
            {
                return CommunityProviderLocationReferenceDataIsProxied()
                    ? (CommunityProviderLocationSerializedReferenceData ?? CommunityProviderLocationReferenceData)?.Id
                    : (CommunityProviderLocationReferenceData ?? CommunityProviderLocationSerializedReferenceData)?.Id;
            }
            set { if (CommunityProviderLocationSerializedReferenceData?.IsFullyDefined() == true) CommunityProviderLocationSerializedReferenceData.Id = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [Key(7)]
        public virtual string ClassGroupName { get => _classGroupName; set { _classGroupName = value; } }
        private string _classGroupName;

        [DomainSignature]
        [Key(8)]
        public virtual long CommunityProviderId 
        {
            get => _communityProviderId;
            set
            {
                _communityProviderId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    CommunityProviderLocationSerializedReferenceData ??= new NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData(trackLookupContext: true);
                    CommunityProviderLocationSerializedReferenceData.CommunityProviderId = value;
                }
            }
        }

        private long _communityProviderId;

        [DomainSignature]
        [Key(9)]
        public virtual int CommunityProviderLocationId 
        {
            get => _communityProviderLocationId;
            set
            {
                _communityProviderLocationId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    CommunityProviderLocationSerializedReferenceData ??= new NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData(trackLookupContext: true);
                    CommunityProviderLocationSerializedReferenceData.CommunityProviderLocationId = value;
                }
            }
        }

        private int _communityProviderLocationId;

        [DomainSignature]
        [Key(10)]
        public virtual bool SpecialNeedsProvidedIndicator { get => _specialNeedsProvidedIndicator; set { _specialNeedsProvidedIndicator = value; } }
        private bool _specialNeedsProvidedIndicator;

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(11)]
        public virtual int? Capacity { get => _capacity; set { _capacity = value; } }
        private int? _capacity;

        [Key(12)]
        public virtual int? DaysAvailablePerWeek { get => _daysAvailablePerWeek; set { _daysAvailablePerWeek = value; } }
        private int? _daysAvailablePerWeek;

        [Key(13)]
        public virtual decimal? HoursAvailablePerDay { get => _hoursAvailablePerDay; set { _hoursAvailablePerDay = value; } }
        private decimal? _hoursAvailablePerDay;

        [Key(14)]
        public virtual int? ServiceDescriptorId 
        {
            get
            {
                if (_serviceDescriptorId == default(int?))
                {
                    _serviceDescriptorId = string.IsNullOrWhiteSpace(_serviceDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ServiceDescriptor", _serviceDescriptor);
                }

                return _serviceDescriptorId;
            } 
            set
            {
                _serviceDescriptorId = value;
                _serviceDescriptor = null;
            }
        }

        private int? _serviceDescriptorId;
        private string _serviceDescriptor;

        [IgnoreMember]
        public virtual string ServiceDescriptor
        {
            get
            {
                if (_serviceDescriptor == null)
                    _serviceDescriptor = _serviceDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ServiceDescriptor", _serviceDescriptorId.Value);
                    
                return _serviceDescriptor;
            }
            set
            {
                _serviceDescriptor = value;
                _serviceDescriptorId = default(int?);
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------

        private ICollection<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupCourse> _classGroupCourses;
        private ICollection<Entities.Common.Edfixcrdc.IClassGroupCourse> _classGroupCoursesCovariant;
        [Key(15)]
        [MessagePackFormatter(typeof(PersistentCollectionFormatter<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupCourse>))]
        public virtual ICollection<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupCourse> ClassGroupCourses
        {
            get
            {
                // -------------------------------------------------------------
                // On-demand deserialization logic to attach reverse reference of children
                // due to ServiceStack's lack of [OnDeserialized] attribute support.
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                if (_classGroupCourses is DeserializedPersistentGenericSet<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupCourse> set)
                {
                    set.Reattach(this, "ClassGroupCourses");
                }
            
                foreach (var item in _classGroupCourses)
                    if (item.ClassGroup == null)
                        item.ClassGroup = this;
                // -------------------------------------------------------------

                return _classGroupCourses;
            }
            set
            {
                _classGroupCourses = value;
                _classGroupCoursesCovariant = new CovariantCollectionAdapter<Entities.Common.Edfixcrdc.IClassGroupCourse, Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupCourse>(value);
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.Edfixcrdc.IClassGroupCourse> Entities.Common.Edfixcrdc.IClassGroup.ClassGroupCourses
        {
            get
            {
                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _classGroupCourses)
                    if (item.ClassGroup == null)
                        item.ClassGroup = this;
                // -------------------------------------------------------------

                return _classGroupCoursesCovariant;
            }
            set
            {
                ClassGroupCourses = new HashSet<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupCourse>(value.Cast<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupCourse>());
            }
        }


        private ICollection<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupMeetingTime> _classGroupMeetingTimes;
        private ICollection<Entities.Common.Edfixcrdc.IClassGroupMeetingTime> _classGroupMeetingTimesCovariant;
        [Key(16)]
        [MessagePackFormatter(typeof(PersistentCollectionFormatter<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupMeetingTime>))]
        public virtual ICollection<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupMeetingTime> ClassGroupMeetingTimes
        {
            get
            {
                // -------------------------------------------------------------
                // On-demand deserialization logic to attach reverse reference of children
                // due to ServiceStack's lack of [OnDeserialized] attribute support.
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                if (_classGroupMeetingTimes is DeserializedPersistentGenericSet<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupMeetingTime> set)
                {
                    set.Reattach(this, "ClassGroupMeetingTimes");
                }
            
                foreach (var item in _classGroupMeetingTimes)
                    if (item.ClassGroup == null)
                        item.ClassGroup = this;
                // -------------------------------------------------------------

                return _classGroupMeetingTimes;
            }
            set
            {
                _classGroupMeetingTimes = value;
                _classGroupMeetingTimesCovariant = new CovariantCollectionAdapter<Entities.Common.Edfixcrdc.IClassGroupMeetingTime, Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupMeetingTime>(value);
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.Edfixcrdc.IClassGroupMeetingTime> Entities.Common.Edfixcrdc.IClassGroup.ClassGroupMeetingTimes
        {
            get
            {
                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _classGroupMeetingTimes)
                    if (item.ClassGroup == null)
                        item.ClassGroup = this;
                // -------------------------------------------------------------

                return _classGroupMeetingTimesCovariant;
            }
            set
            {
                ClassGroupMeetingTimes = new HashSet<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupMeetingTime>(value.Cast<Entities.NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupMeetingTime>());
            }
        }

        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "ServiceDescriptor", new LookupColumnDetails { PropertyName = "ServiceDescriptorId", LookupTypeName = "ServiceDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("ClassGroupName", ClassGroupName);
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);
            keyValues.Add("SpecialNeedsProvidedIndicator", SpecialNeedsProvidedIndicator);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IClassGroup)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IClassGroup) target, null);
        }

    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.ClassGroupCourse table of the ClassGroup aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ClassGroupCourse : EntityWithCompositeKey, IChildEntity,
        Entities.Common.Edfixcrdc.IClassGroupCourse, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public ClassGroupCourse()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.CourseAggregate.EdFi.CourseReferenceData _courseReferenceData;

        private bool CourseReferenceDataIsProxied()
        {
            return _courseReferenceData != null 
                && _courseReferenceData.GetType() != typeof(NHibernate.CourseAggregate.EdFi.CourseReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.CourseAggregate.EdFi.CourseReferenceData CourseReferenceData
        {
            get => _courseReferenceData;
            set
            {
                _courseReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !CourseReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(1)]
        public virtual NHibernate.CourseAggregate.EdFi.CourseReferenceData CourseSerializedReferenceData { get => _courseSerializedReferenceData; set { if (value != null) _courseSerializedReferenceData = value; } }
        private NHibernate.CourseAggregate.EdFi.CourseReferenceData _courseSerializedReferenceData;

        /// <summary>
        /// A read-only property implementation that allows the Course discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.Edfixcrdc.IClassGroupCourse.CourseDiscriminator
        {
            get
            {
                return CourseReferenceDataIsProxied()
                    ? (CourseSerializedReferenceData ?? CourseReferenceData)?.Discriminator
                    : (CourseReferenceData ?? CourseSerializedReferenceData)?.Discriminator;
            }
            set { }
        }

        /// <summary>
        /// A property implementation whose getter allows the Course resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.IClassGroupCourse.CourseResourceId
        {
            get
            {
                return CourseReferenceDataIsProxied()
                    ? (CourseSerializedReferenceData ?? CourseReferenceData)?.Id
                    : (CourseReferenceData ?? CourseSerializedReferenceData)?.Id;
            }
            set { if (CourseSerializedReferenceData?.IsFullyDefined() == true) CourseSerializedReferenceData.Id = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual ClassGroup ClassGroup { get; set; }

        Entities.Common.Edfixcrdc.IClassGroup IClassGroupCourse.ClassGroup
        {
            get { return ClassGroup; }
            set { ClassGroup = (ClassGroup) value; }
        }

        [DomainSignature]
        [Key(2)]
        public virtual string CourseCode 
        {
            get => _courseCode;
            set
            {
                _courseCode = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    CourseSerializedReferenceData ??= new NHibernate.CourseAggregate.EdFi.CourseReferenceData(trackLookupContext: true);
                    CourseSerializedReferenceData.CourseCode = value;
                }
            }
        }

        private string _courseCode;

        [DomainSignature]
        [Key(3)]
        public virtual long EducationOrganizationId 
        {
            get => _educationOrganizationId;
            set
            {
                _educationOrganizationId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    CourseSerializedReferenceData ??= new NHibernate.CourseAggregate.EdFi.CourseReferenceData(trackLookupContext: true);
                    CourseSerializedReferenceData.EducationOrganizationId = value;
                }
            }
        }

        private long _educationOrganizationId;

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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (ClassGroup as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values
            keyValues.Add("CourseCode", CourseCode);
            keyValues.Add("EducationOrganizationId", EducationOrganizationId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IClassGroupCourse)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IClassGroupCourse) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            ClassGroup = (ClassGroup) value;
        }
    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.ClassGroupMeetingTime table of the ClassGroup aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ClassGroupMeetingTime : EntityWithCompositeKey, IChildEntity,
        Entities.Common.Edfixcrdc.IClassGroupMeetingTime, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public ClassGroupMeetingTime()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual ClassGroup ClassGroup { get; set; }

        Entities.Common.Edfixcrdc.IClassGroup IClassGroupMeetingTime.ClassGroup
        {
            get { return ClassGroup; }
            set { ClassGroup = (ClassGroup) value; }
        }

        [DomainSignature]
        [Key(1)]
        public virtual int MeetingDayDescriptorId 
        {
            get
            {
                if (_meetingDayDescriptorId == default(int))
                {
                    _meetingDayDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("MeetingDayDescriptor", _meetingDayDescriptor);
                }

                return _meetingDayDescriptorId;
            } 
            set
            {
                _meetingDayDescriptorId = value;
                _meetingDayDescriptor = null;
            }
        }

        private int _meetingDayDescriptorId;
        private string _meetingDayDescriptor;

        [IgnoreMember]
        public virtual string MeetingDayDescriptor
        {
            get
            {
                if (_meetingDayDescriptor == null)
                    _meetingDayDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("MeetingDayDescriptor", _meetingDayDescriptorId);
                    
                return _meetingDayDescriptor;
            }
            set
            {
                _meetingDayDescriptor = value;
                _meetingDayDescriptorId = default(int);
            }
        }

        [DomainSignature]
        [Key(2)]
        public virtual TimeSpan StartTime { get => _startTime; set { _startTime = value; } }
        private TimeSpan _startTime;

        [DomainSignature]
        [Key(3)]
        public virtual TimeSpan StopTime { get => _stopTime; set { _stopTime = value; } }
        private TimeSpan _stopTime;

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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "MeetingDayDescriptor", new LookupColumnDetails { PropertyName = "MeetingDayDescriptorId", LookupTypeName = "MeetingDayDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (ClassGroup as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values
            keyValues.Add("MeetingDayDescriptorId", MeetingDayDescriptorId);
            keyValues.Add("StartTime", StartTime);
            keyValues.Add("StopTime", StopTime);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IClassGroupMeetingTime)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IClassGroupMeetingTime) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            ClassGroup = (ClassGroup) value;
        }
    }
}
// Aggregate: CommunityProviderLocation

namespace EdFi.Ods.Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc
{
    /// <summary>
    /// Represents a read-only reference to the <see cref="CommunityProviderLocation"/> entity.
    /// </summary>
    [MessagePackObject]
    public class CommunityProviderLocationReferenceData : IEntityReferenceData
    {
        private bool _trackLookupContext;
        private Action<CommunityProviderLocationReferenceData> _contextualValuesInitializer;
        private bool _contextualValuesInitialized;

        // Default constructor (used by NHibernate)
        public CommunityProviderLocationReferenceData() { }

        // Constructor used for deferred initialization when the parent reference hasn't yet been initialized because we're falling back from stale serialized data to NHibernate hydration
        public CommunityProviderLocationReferenceData(Action<CommunityProviderLocationReferenceData> contextualValuesInitializer)
        {
            _trackLookupContext = true;
            _contextualValuesInitializer = contextualValuesInitializer;
        }

        // Constructor used for link support with Serialized Data feature
        public CommunityProviderLocationReferenceData(long contextualCommunityProviderId = default, int contextualCommunityProviderLocationId = default, bool trackLookupContext = true)
        {
            _trackLookupContext = trackLookupContext;
    
            // Assign supplied contextual values (values pre-determined from parent context)
            _communityProviderId = contextualCommunityProviderId;
            _communityProviderLocationId = contextualCommunityProviderLocationId;

            _contextualValuesInitialized = true;
        }

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Guid? _id;

        /// <summary>
        /// The id of the referenced entity (used as the resource identifier in the API).
        /// </summary>
        [Key(0)]
        public virtual Guid? Id
        {
            get => _id;
            set
            {
                _id = value;

                if (_trackLookupContext || (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled))
                {
                    // If explicitly setting this to a non-value, it needs to be resolved.
                    if (value == default(Guid) || value == null)
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
            }
        }

        private long _communityProviderId;

        [Key(1)]
        public virtual long CommunityProviderId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderId; }
            set
            {
                var originalValue = _communityProviderId;
                _communityProviderId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private int _communityProviderLocationId;

        [Key(2)]
        public virtual int CommunityProviderLocationId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderLocationId; }
            set
            {
                var originalValue = _communityProviderLocationId;
                _communityProviderLocationId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }

        private void EnsureContextualValuesInitialized()
        {
            if (!_contextualValuesInitialized && _contextualValuesInitializer != null)
            {
                _contextualValuesInitializer(this);
                _contextualValuesInitialized = true;
            }
        }

        public virtual bool IsFullyDefined()
        {
            return
                _communityProviderId != default
                            && _communityProviderLocationId != default
            ;
        }

        /// <summary>
        /// Gets and sets the discriminator value which identifies the concrete sub-type of the referenced entity
        /// when that entity has been derived; otherwise <b>null</b>.
        /// </summary>
        [Key(3)]
        public virtual string Discriminator { get; set; }

        private static FullName _fullName = new FullName("edfixcrdc", "CommunityProviderLocation"); 
        FullName IEntityReferenceData.FullName { get => _fullName; }
    
        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (!entry.Value.Equals(thoseKeys[entry.Key]))
                    return false;
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                hashCode.Add(entry.Value);
            }

            return hashCode.ToHashCode();
        }
        #endregion
    }

// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.CommunityProviderLocation table of the CommunityProviderLocation aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class CommunityProviderLocation : AggregateRootWithCompositeKey,
        Entities.Common.Edfixcrdc.ICommunityProviderLocation, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public CommunityProviderLocation()
        {
           CommunityProviderLocationInstructionalCalendarPersistentList = new HashSet<CommunityProviderLocationInstructionalCalendar>();
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _communityProviderReferenceData;

        private bool CommunityProviderReferenceDataIsProxied()
        {
            return _communityProviderReferenceData != null 
                && _communityProviderReferenceData.GetType() != typeof(NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData CommunityProviderReferenceData
        {
            get => _communityProviderReferenceData;
            set
            {
                _communityProviderReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !CommunityProviderReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(6)]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData CommunityProviderSerializedReferenceData { get => _communityProviderSerializedReferenceData; set { if (value != null) _communityProviderSerializedReferenceData = value; } }
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _communityProviderSerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the CommunityProvider resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.ICommunityProviderLocation.CommunityProviderResourceId
        {
            get
            {
                return CommunityProviderReferenceDataIsProxied()
                    ? (CommunityProviderSerializedReferenceData ?? CommunityProviderReferenceData)?.Id
                    : (CommunityProviderReferenceData ?? CommunityProviderSerializedReferenceData)?.Id;
            }
            set { if (CommunityProviderSerializedReferenceData?.IsFullyDefined() == true) CommunityProviderSerializedReferenceData.Id = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [Key(7)]
        public virtual long CommunityProviderId 
        {
            get => _communityProviderId;
            set
            {
                _communityProviderId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    CommunityProviderSerializedReferenceData ??= new NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData(trackLookupContext: true);
                    CommunityProviderSerializedReferenceData.EducationOrganizationId = value;
                }
            }
        }

        private long _communityProviderId;

        [DomainSignature]
        [Key(8)]
        public virtual int CommunityProviderLocationId { get => _communityProviderLocationId; set { _communityProviderLocationId = value; } }
        private int _communityProviderLocationId;

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(9)]
        public virtual int? AddressTypeDescriptorId 
        {
            get
            {
                if (_addressTypeDescriptorId == default(int?))
                {
                    _addressTypeDescriptorId = string.IsNullOrWhiteSpace(_addressTypeDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("AddressTypeDescriptor", _addressTypeDescriptor);
                }

                return _addressTypeDescriptorId;
            } 
            set
            {
                _addressTypeDescriptorId = value;
                _addressTypeDescriptor = null;
            }
        }

        private int? _addressTypeDescriptorId;
        private string _addressTypeDescriptor;

        [IgnoreMember]
        public virtual string AddressTypeDescriptor
        {
            get
            {
                if (_addressTypeDescriptor == null)
                    _addressTypeDescriptor = _addressTypeDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("AddressTypeDescriptor", _addressTypeDescriptorId.Value);
                    
                return _addressTypeDescriptor;
            }
            set
            {
                _addressTypeDescriptor = value;
                _addressTypeDescriptorId = default(int?);
            }
        }

        [Key(10)]
        public virtual string AgeRangeDescription { get => _ageRangeDescription; set { _ageRangeDescription = value; } }
        private string _ageRangeDescription;

        [Key(11)]
        public virtual string ApartmentRoomSuiteNumber { get => _apartmentRoomSuiteNumber; set { _apartmentRoomSuiteNumber = value; } }
        private string _apartmentRoomSuiteNumber;

        [Key(12)]
        public virtual string BuildingSiteNumber { get => _buildingSiteNumber; set { _buildingSiteNumber = value; } }
        private string _buildingSiteNumber;

        [Key(13)]
        public virtual int? Capacity { get => _capacity; set { _capacity = value; } }
        private int? _capacity;

        [Key(14)]
        public virtual string City { get => _city; set { _city = value; } }
        private string _city;

        [Key(15)]
        public virtual string CountyFIPSCode { get => _countyFIPSCode; set { _countyFIPSCode = value; } }
        private string _countyFIPSCode;

        [Key(16)]
        public virtual string NameOfCounty { get => _nameOfCounty; set { _nameOfCounty = value; } }
        private string _nameOfCounty;

        [Key(17)]
        public virtual int? OldestAgeAccepted { get => _oldestAgeAccepted; set { _oldestAgeAccepted = value; } }
        private int? _oldestAgeAccepted;

        [Key(18)]
        public virtual string PostalCode { get => _postalCode; set { _postalCode = value; } }
        private string _postalCode;

        [Key(19)]
        public virtual bool? SpecialNeedsProvidedIndicator { get => _specialNeedsProvidedIndicator; set { _specialNeedsProvidedIndicator = value; } }
        private bool? _specialNeedsProvidedIndicator;

        [Key(20)]
        public virtual int? StateAbbreviationDescriptorId 
        {
            get
            {
                if (_stateAbbreviationDescriptorId == default(int?))
                {
                    _stateAbbreviationDescriptorId = string.IsNullOrWhiteSpace(_stateAbbreviationDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("StateAbbreviationDescriptor", _stateAbbreviationDescriptor);
                }

                return _stateAbbreviationDescriptorId;
            } 
            set
            {
                _stateAbbreviationDescriptorId = value;
                _stateAbbreviationDescriptor = null;
            }
        }

        private int? _stateAbbreviationDescriptorId;
        private string _stateAbbreviationDescriptor;

        [IgnoreMember]
        public virtual string StateAbbreviationDescriptor
        {
            get
            {
                if (_stateAbbreviationDescriptor == null)
                    _stateAbbreviationDescriptor = _stateAbbreviationDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("StateAbbreviationDescriptor", _stateAbbreviationDescriptorId.Value);
                    
                return _stateAbbreviationDescriptor;
            }
            set
            {
                _stateAbbreviationDescriptor = value;
                _stateAbbreviationDescriptorId = default(int?);
            }
        }

        [Key(21)]
        public virtual string StreetNumberName { get => _streetNumberName; set { _streetNumberName = value; } }
        private string _streetNumberName;

        [Key(22)]
        public virtual TimeSpan? TimeClose { get => _timeClose; set { _timeClose = value; } }
        private TimeSpan? _timeClose;

        [Key(23)]
        public virtual TimeSpan? TimeOpen { get => _timeOpen; set { _timeOpen = value; } }
        private TimeSpan? _timeOpen;

        [Key(24)]
        public virtual int? YoungestAgeAccepted { get => _youngestAgeAccepted; set { _youngestAgeAccepted = value; } }
        private int? _youngestAgeAccepted;

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        [IgnoreMember]
        public virtual Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationInstructionalCalendar CommunityProviderLocationInstructionalCalendar
        {
            get
            {
                // Return the item in the list, if one exists
                if (CommunityProviderLocationInstructionalCalendarPersistentList.Any())
                    return CommunityProviderLocationInstructionalCalendarPersistentList.First();

                // No reference is present
                return null;
            }
            set
            {
                // Delete the existing object
                if (CommunityProviderLocationInstructionalCalendarPersistentList.Any())
                    CommunityProviderLocationInstructionalCalendarPersistentList.Clear();

                // If we're setting a value, add it to the list now
                if (value != null)
                {
                    // Set the back-reference to the parent
                    value.CommunityProviderLocation = this;

                    CommunityProviderLocationInstructionalCalendarPersistentList.Add(value);
                }
            }
        }

        Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar Entities.Common.Edfixcrdc.ICommunityProviderLocation.CommunityProviderLocationInstructionalCalendar
        {
            get { return CommunityProviderLocationInstructionalCalendar; }
            set { CommunityProviderLocationInstructionalCalendar = (Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationInstructionalCalendar) value; }
        }

        private ICollection<Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationInstructionalCalendar> _communityProviderLocationInstructionalCalendarPersistentList;

        [Key(25)]
        [MessagePackFormatter(typeof(PersistentCollectionFormatter<Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationInstructionalCalendar>))]
        public virtual ICollection<Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationInstructionalCalendar> CommunityProviderLocationInstructionalCalendarPersistentList
        {
            get
            {
                // -------------------------------------------------------------
                // On-demand deserialization logic to attach reverse reference of children
                // due to ServiceStack's lack of [OnDeserialized] attribute support.
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                if (_communityProviderLocationInstructionalCalendarPersistentList is DeserializedPersistentGenericSet<Entities.NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationInstructionalCalendar> set)
                {
                    set.Reattach(this, "CommunityProviderLocationInstructionalCalendar");
                }

                foreach (var item in _communityProviderLocationInstructionalCalendarPersistentList)
                    if (item.CommunityProviderLocation == null)
                        item.CommunityProviderLocation = this;
                // -------------------------------------------------------------

                return _communityProviderLocationInstructionalCalendarPersistentList;
            }
            set
            {
                _communityProviderLocationInstructionalCalendarPersistentList = value;
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "AddressTypeDescriptor", new LookupColumnDetails { PropertyName = "AddressTypeDescriptorId", LookupTypeName = "AddressTypeDescriptor"} },
                { "StateAbbreviationDescriptor", new LookupColumnDetails { PropertyName = "StateAbbreviationDescriptorId", LookupTypeName = "StateAbbreviationDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.ICommunityProviderLocation)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.ICommunityProviderLocation) target, null);
        }

    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.CommunityProviderLocationInstructionalCalendar table of the CommunityProviderLocation aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class CommunityProviderLocationInstructionalCalendar : EntityWithCompositeKey, IChildEntity,
        Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public CommunityProviderLocationInstructionalCalendar()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData _schoolYearTypeReferenceData;

        private bool SchoolYearTypeReferenceDataIsProxied()
        {
            return _schoolYearTypeReferenceData != null 
                && _schoolYearTypeReferenceData.GetType() != typeof(NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData SchoolYearTypeReferenceData
        {
            get => _schoolYearTypeReferenceData;
            set
            {
                _schoolYearTypeReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !SchoolYearTypeReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(1)]
        public virtual NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData SchoolYearTypeSerializedReferenceData { get => _schoolYearTypeSerializedReferenceData; set { if (value != null) _schoolYearTypeSerializedReferenceData = value; } }
        private NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData _schoolYearTypeSerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the SchoolYearType resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar.SchoolYearTypeResourceId
        {
            get
            {
                return SchoolYearTypeReferenceDataIsProxied()
                    ? (SchoolYearTypeSerializedReferenceData ?? SchoolYearTypeReferenceData)?.Id
                    : (SchoolYearTypeReferenceData ?? SchoolYearTypeSerializedReferenceData)?.Id;
            }
            set { if (SchoolYearTypeSerializedReferenceData?.IsFullyDefined() == true) SchoolYearTypeSerializedReferenceData.Id = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual CommunityProviderLocation CommunityProviderLocation { get; set; }

        Entities.Common.Edfixcrdc.ICommunityProviderLocation ICommunityProviderLocationInstructionalCalendar.CommunityProviderLocation
        {
            get { return CommunityProviderLocation; }
            set { CommunityProviderLocation = (CommunityProviderLocation) value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(2)]
        public virtual DateTime BeginDate 
        {
            get { return _beginDate; }
            //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
            set { _beginDate = new DateTime(value.Year, value.Month, value.Day); }
        }

        private DateTime _beginDate;

        [Key(3)]
        public virtual DateTime EndDate 
        {
            get { return _endDate; }
            //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
            set { _endDate = new DateTime(value.Year, value.Month, value.Day); }
        }

        private DateTime _endDate;

        [Key(4)]
        public virtual short SchoolYear 
        {
            get => _schoolYear;
            set
            {
                _schoolYear = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    SchoolYearTypeSerializedReferenceData ??= new NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData(trackLookupContext: true);
                    SchoolYearTypeSerializedReferenceData.SchoolYear = value;
                }
            }
        }

        private short _schoolYear;

        [Key(5)]
        public virtual int TotalInstructionalDaysPerYear { get => _totalInstructionalDaysPerYear; set { _totalInstructionalDaysPerYear = value; } }
        private int _totalInstructionalDaysPerYear;

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (CommunityProviderLocation as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.ICommunityProviderLocationInstructionalCalendar) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            CommunityProviderLocation = (CommunityProviderLocation) value;
        }
    }
}
// Aggregate: MeetingDayDescriptor

namespace EdFi.Ods.Entities.NHibernate.MeetingDayDescriptorAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.MeetingDayDescriptor table of the MeetingDayDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class MeetingDayDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.Edfixcrdc.IMeetingDayDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
    {

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [IgnoreMember]
        public virtual int MeetingDayDescriptorId 
        {
            get { return base.DescriptorId; }
            set { base.DescriptorId = value; }
        }
        

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        string IDescriptor.CodeValue
        {
            get { return CodeValue; }
            set { CodeValue = value; }
        }
        string IDescriptor.Description
        {
            get { return Description; }
            set { Description = value; }
        }
        DateTime? IDescriptor.EffectiveBeginDate
        {
            get { return EffectiveBeginDate; }
            set { EffectiveBeginDate = value; }
        }
        DateTime? IDescriptor.EffectiveEndDate
        {
            get { return EffectiveEndDate; }
            set { EffectiveEndDate = value; }
        }
        string IDescriptor.Namespace
        {
            get { return Namespace; }
            set { Namespace = value; }
        }
        string IDescriptor.ShortDescription
        {
            get { return ShortDescription; }
            set { ShortDescription = value; }
        }
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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("MeetingDayDescriptorId", MeetingDayDescriptorId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IMeetingDayDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IMeetingDayDescriptor) target, null);
        }

    }
}
// Aggregate: Program

namespace EdFi.Ods.Entities.NHibernate.ProgramAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.ProgramExtension table of the Program aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ProgramExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.Edfixcrdc.IProgramExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public ProgramExtension()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual EdFi.Program Program { get; set; }

        Entities.Common.EdFi.IProgram IProgramExtension.Program
        {
            get { return Program; }
            set { Program = (EdFi.Program) value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(1)]
        public virtual int? ProgramCostDescriptorId 
        {
            get
            {
                if (_programCostDescriptorId == default(int?))
                {
                    _programCostDescriptorId = string.IsNullOrWhiteSpace(_programCostDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ProgramCostDescriptor", _programCostDescriptor);
                }

                return _programCostDescriptorId;
            } 
            set
            {
                _programCostDescriptorId = value;
                _programCostDescriptor = null;
            }
        }

        private int? _programCostDescriptorId;
        private string _programCostDescriptor;

        [IgnoreMember]
        public virtual string ProgramCostDescriptor
        {
            get
            {
                if (_programCostDescriptor == null)
                    _programCostDescriptor = _programCostDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ProgramCostDescriptor", _programCostDescriptorId.Value);
                    
                return _programCostDescriptor;
            }
            set
            {
                _programCostDescriptor = value;
                _programCostDescriptorId = default(int?);
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "ProgramCostDescriptor", new LookupColumnDetails { PropertyName = "ProgramCostDescriptorId", LookupTypeName = "ProgramCostDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (Program as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IProgramExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IProgramExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            Program = (EdFi.Program) value;
        }
    }
}
// Aggregate: ProgramCostDescriptor

namespace EdFi.Ods.Entities.NHibernate.ProgramCostDescriptorAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.ProgramCostDescriptor table of the ProgramCostDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ProgramCostDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.Edfixcrdc.IProgramCostDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
    {

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [IgnoreMember]
        public virtual int ProgramCostDescriptorId 
        {
            get { return base.DescriptorId; }
            set { base.DescriptorId = value; }
        }
        

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        string IDescriptor.CodeValue
        {
            get { return CodeValue; }
            set { CodeValue = value; }
        }
        string IDescriptor.Description
        {
            get { return Description; }
            set { Description = value; }
        }
        DateTime? IDescriptor.EffectiveBeginDate
        {
            get { return EffectiveBeginDate; }
            set { EffectiveBeginDate = value; }
        }
        DateTime? IDescriptor.EffectiveEndDate
        {
            get { return EffectiveEndDate; }
            set { EffectiveEndDate = value; }
        }
        string IDescriptor.Namespace
        {
            get { return Namespace; }
            set { Namespace = value; }
        }
        string IDescriptor.ShortDescription
        {
            get { return ShortDescription; }
            set { ShortDescription = value; }
        }
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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("ProgramCostDescriptorId", ProgramCostDescriptorId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IProgramCostDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IProgramCostDescriptor) target, null);
        }

    }
}
// Aggregate: RestraintCategoryDescriptor

namespace EdFi.Ods.Entities.NHibernate.RestraintCategoryDescriptorAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.RestraintCategoryDescriptor table of the RestraintCategoryDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class RestraintCategoryDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
    {

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [IgnoreMember]
        public virtual int RestraintCategoryDescriptorId 
        {
            get { return base.DescriptorId; }
            set { base.DescriptorId = value; }
        }
        

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        string IDescriptor.CodeValue
        {
            get { return CodeValue; }
            set { CodeValue = value; }
        }
        string IDescriptor.Description
        {
            get { return Description; }
            set { Description = value; }
        }
        DateTime? IDescriptor.EffectiveBeginDate
        {
            get { return EffectiveBeginDate; }
            set { EffectiveBeginDate = value; }
        }
        DateTime? IDescriptor.EffectiveEndDate
        {
            get { return EffectiveEndDate; }
            set { EffectiveEndDate = value; }
        }
        string IDescriptor.Namespace
        {
            get { return Namespace; }
            set { Namespace = value; }
        }
        string IDescriptor.ShortDescription
        {
            get { return ShortDescription; }
            set { ShortDescription = value; }
        }
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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("RestraintCategoryDescriptorId", RestraintCategoryDescriptorId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IRestraintCategoryDescriptor) target, null);
        }

    }
}
// Aggregate: RestraintEvent

namespace EdFi.Ods.Entities.NHibernate.RestraintEventAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.RestraintEventRestraintCategory table of the RestraintEvent aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class RestraintEventRestraintCategory : EntityWithCompositeKey, IChildEntity,
        Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public RestraintEventRestraintCategory()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual EdFi.RestraintEvent RestraintEvent { get; set; }

        Entities.Common.Edfixcrdc.IRestraintEventExtension IRestraintEventRestraintCategory.RestraintEventExtension
        {
            get { return (IRestraintEventExtension) RestraintEvent.Extensions["Edfixcrdc"]; }
            set { RestraintEvent.Extensions["Edfixcrdc"] = value; }
        }

        [DomainSignature]
        [Key(1)]
        public virtual int RestraintCategoryDescriptorId 
        {
            get
            {
                if (_restraintCategoryDescriptorId == default(int))
                {
                    _restraintCategoryDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("RestraintCategoryDescriptor", _restraintCategoryDescriptor);
                }

                return _restraintCategoryDescriptorId;
            } 
            set
            {
                _restraintCategoryDescriptorId = value;
                _restraintCategoryDescriptor = null;
            }
        }

        private int _restraintCategoryDescriptorId;
        private string _restraintCategoryDescriptor;

        [IgnoreMember]
        public virtual string RestraintCategoryDescriptor
        {
            get
            {
                if (_restraintCategoryDescriptor == null)
                    _restraintCategoryDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("RestraintCategoryDescriptor", _restraintCategoryDescriptorId);
                    
                return _restraintCategoryDescriptor;
            }
            set
            {
                _restraintCategoryDescriptor = value;
                _restraintCategoryDescriptorId = default(int);
            }
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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "RestraintCategoryDescriptor", new LookupColumnDetails { PropertyName = "RestraintCategoryDescriptorId", LookupTypeName = "RestraintCategoryDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (RestraintEvent as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values
            keyValues.Add("RestraintCategoryDescriptorId", RestraintCategoryDescriptorId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IRestraintEventRestraintCategory) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            RestraintEvent = (EdFi.RestraintEvent) value;
        }
    }

    /// <summary>
    /// An implicitly created entity extension class to enable entity mapping and sychronization behavior for the RestraintEvent entity's aggregate extensions.
    /// </summary>
    [ExcludeFromCodeCoverage][MessagePackObject]
    public class RestraintEventExtension : IRestraintEventExtension, IChildEntity, IImplicitEntityExtension, IHasPrimaryKeyValues
    {
        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private EdFi.RestraintEvent _restraintEvent;

        Common.EdFi.IRestraintEvent IRestraintEventExtension.RestraintEvent
        {
            get { return _restraintEvent; }
            set { _restraintEvent = (EdFi.RestraintEvent) value; }
        }

        private EdFi.RestraintEvent RestraintEvent
        {
            get { return (this as IRestraintEventExtension).RestraintEvent as EdFi.RestraintEvent; }
        }

        bool IImplicitEntityExtension.IsEmpty()
        {
            return (true
                && ((IList<object>) _restraintEvent.AggregateExtensions["Edfixcrdc_RestraintEventRestraintCategories"]).Count == 0
            );
        }

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Collections
        // -------------------------------------------------------------
        ICollection<IRestraintEventRestraintCategory> IRestraintEventExtension.RestraintEventRestraintCategories
        {
            get
            {
                var sourceList =  new ContravariantCollectionAdapter<object, RestraintEventRestraintCategory>((IList<object>) _restraintEvent.AggregateExtensions["Edfixcrdc_RestraintEventRestraintCategories"]);

                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (RestraintEventRestraintCategory item in sourceList)
                    if (item.RestraintEvent == null)
                        item.RestraintEvent = this.RestraintEvent;
                // -------------------------------------------------------------

                var adaptedList = new CovariantCollectionAdapter<IRestraintEventRestraintCategory, RestraintEventRestraintCategory>(sourceList);

                return adaptedList;
            }
            set
            {
                _restraintEvent.AggregateExtensions["Edfixcrdc_RestraintEventRestraintCategories"] = value;
            }
        }
        // -------------------------------------------------------------

        void IMappable.Map(object target)
        {
            this.MapTo((IRestraintEventExtension) target, null);
        }

        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((IRestraintEventExtension) target);
        }

        void IChildEntity.SetParent(object value)
        {
            _restraintEvent = (EdFi.RestraintEvent)value;
        }

        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            return (_restraintEvent as IHasPrimaryKeyValues).GetPrimaryKeyValues();
        }

        void IGetByExample.SuspendReferenceAssignmentCheck() { }
    }
}
// Aggregate: School

namespace EdFi.Ods.Entities.NHibernate.SchoolAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.SchoolTechnology table of the School aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class SchoolTechnology : EntityWithCompositeKey, IChildEntity,
        Entities.Common.Edfixcrdc.ISchoolTechnology, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public SchoolTechnology()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual EdFi.School School { get; set; }

        Entities.Common.Edfixcrdc.ISchoolExtension ISchoolTechnology.SchoolExtension
        {
            get { return (ISchoolExtension) School.Extensions["Edfixcrdc"]; }
            set { School.Extensions["Edfixcrdc"] = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(1)]
        public virtual bool AllClassroomsHaveWiFi { get => _allClassroomsHaveWiFi; set { _allClassroomsHaveWiFi = value; } }
        private bool _allClassroomsHaveWiFi;

        [Key(2)]
        public virtual bool FiberOpticConnection { get => _fiberOpticConnection; set { _fiberOpticConnection = value; } }
        private bool _fiberOpticConnection;

        [Key(3)]
        public virtual bool StudentsBringOwnDevice { get => _studentsBringOwnDevice; set { _studentsBringOwnDevice = value; } }
        private bool _studentsBringOwnDevice;

        [Key(4)]
        public virtual bool StudentsTakeHomeDevice { get => _studentsTakeHomeDevice; set { _studentsTakeHomeDevice = value; } }
        private bool _studentsTakeHomeDevice;

        [Key(5)]
        public virtual int WiFiDeviceCount { get => _wiFiDeviceCount; set { _wiFiDeviceCount = value; } }
        private int _wiFiDeviceCount;

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (School as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.ISchoolTechnology)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.ISchoolTechnology) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            School = (EdFi.School) value;
        }
    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.SchoolExtension table of the School aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class SchoolExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.Edfixcrdc.ISchoolExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public SchoolExtension()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual EdFi.School School { get; set; }

        Entities.Common.EdFi.ISchool ISchoolExtension.School
        {
            get { return School; }
            set { School = (EdFi.School) value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(1)]
        public virtual int? AlternativeStatusDescriptorId 
        {
            get
            {
                if (_alternativeStatusDescriptorId == default(int?))
                {
                    _alternativeStatusDescriptorId = string.IsNullOrWhiteSpace(_alternativeStatusDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("AlternativeStatusDescriptor", _alternativeStatusDescriptor);
                }

                return _alternativeStatusDescriptorId;
            } 
            set
            {
                _alternativeStatusDescriptorId = value;
                _alternativeStatusDescriptor = null;
            }
        }

        private int? _alternativeStatusDescriptorId;
        private string _alternativeStatusDescriptor;

        [IgnoreMember]
        public virtual string AlternativeStatusDescriptor
        {
            get
            {
                if (_alternativeStatusDescriptor == null)
                    _alternativeStatusDescriptor = _alternativeStatusDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("AlternativeStatusDescriptor", _alternativeStatusDescriptorId.Value);
                    
                return _alternativeStatusDescriptor;
            }
            set
            {
                _alternativeStatusDescriptor = value;
                _alternativeStatusDescriptorId = default(int?);
            }
        }

        [Key(2)]
        public virtual int? UngradedDetailDescriptorId 
        {
            get
            {
                if (_ungradedDetailDescriptorId == default(int?))
                {
                    _ungradedDetailDescriptorId = string.IsNullOrWhiteSpace(_ungradedDetailDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("UngradedDetailDescriptor", _ungradedDetailDescriptor);
                }

                return _ungradedDetailDescriptorId;
            } 
            set
            {
                _ungradedDetailDescriptorId = value;
                _ungradedDetailDescriptor = null;
            }
        }

        private int? _ungradedDetailDescriptorId;
        private string _ungradedDetailDescriptor;

        [IgnoreMember]
        public virtual string UngradedDetailDescriptor
        {
            get
            {
                if (_ungradedDetailDescriptor == null)
                    _ungradedDetailDescriptor = _ungradedDetailDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("UngradedDetailDescriptor", _ungradedDetailDescriptorId.Value);
                    
                return _ungradedDetailDescriptor;
            }
            set
            {
                _ungradedDetailDescriptor = value;
                _ungradedDetailDescriptorId = default(int?);
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        [IgnoreMember]
        // This property implementation exists to provide the mapper with reflection-based access to the target instance's .NET type (for creating new instances)
        public Entities.NHibernate.SchoolAggregate.Edfixcrdc.SchoolTechnology SchoolTechnology
        {
            get { return (Entities.NHibernate.SchoolAggregate.Edfixcrdc.SchoolTechnology) (this as Entities.Common.Edfixcrdc.ISchoolExtension).SchoolTechnology;  }
            set { (this as Entities.Common.Edfixcrdc.ISchoolExtension).SchoolTechnology = value;  }
        }

        // Aggregate extension explicit implementation to redirect model abstraction to the persistent entity location
        Entities.Common.Edfixcrdc.ISchoolTechnology Entities.Common.Edfixcrdc.ISchoolExtension.SchoolTechnology
        {
            get
            {
                var list = (IList) School.AggregateExtensions["Edfixcrdc_SchoolTechnology"];

                if (list != null && list.Count > 0)
                    return (Entities.Common.Edfixcrdc.ISchoolTechnology) list[0];

                return null;
            }
            set
            {
                // Delete the existing object
                var list = (IList) School.AggregateExtensions["Edfixcrdc_SchoolTechnology"] ?? new List<object>();
                list.Clear();

                // If we're setting a value, add it to the list now
                if (value != null)
                {
                    list.Add(value);

                    // Set the parent reference
                    (value as IChildEntity).SetParent(School);
                }
            }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "AlternativeStatusDescriptor", new LookupColumnDetails { PropertyName = "AlternativeStatusDescriptorId", LookupTypeName = "AlternativeStatusDescriptor"} },
                { "UngradedDetailDescriptor", new LookupColumnDetails { PropertyName = "UngradedDetailDescriptorId", LookupTypeName = "UngradedDetailDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (School as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.ISchoolExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.ISchoolExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            School = (EdFi.School) value;
        }
    }
}
// Aggregate: StudentClassGroupAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentClassGroupAssociationAggregate.Edfixcrdc
{
    /// <summary>
    /// Represents a read-only reference to the <see cref="StudentClassGroupAssociation"/> entity.
    /// </summary>
    [MessagePackObject]
    public class StudentClassGroupAssociationReferenceData : IEntityReferenceData
    {
        private bool _trackLookupContext;
        private Action<StudentClassGroupAssociationReferenceData> _contextualValuesInitializer;
        private bool _contextualValuesInitialized;

        // Default constructor (used by NHibernate)
        public StudentClassGroupAssociationReferenceData() { }

        // Constructor used for deferred initialization when the parent reference hasn't yet been initialized because we're falling back from stale serialized data to NHibernate hydration
        public StudentClassGroupAssociationReferenceData(Action<StudentClassGroupAssociationReferenceData> contextualValuesInitializer)
        {
            _trackLookupContext = true;
            _contextualValuesInitializer = contextualValuesInitializer;
        }

        // Constructor used for link support with Serialized Data feature
        public StudentClassGroupAssociationReferenceData(DateTime contextualBeginDate = default, string contextualClassGroupName = default, long contextualCommunityProviderId = default, int contextualCommunityProviderLocationId = default, bool contextualSpecialNeedsProvidedIndicator = default, int contextualStudentUSI = default, bool trackLookupContext = true)
        {
            _trackLookupContext = trackLookupContext;
    
            // Assign supplied contextual values (values pre-determined from parent context)
            _beginDate = contextualBeginDate;
            _classGroupName = contextualClassGroupName;
            _communityProviderId = contextualCommunityProviderId;
            _communityProviderLocationId = contextualCommunityProviderLocationId;
            _specialNeedsProvidedIndicator = contextualSpecialNeedsProvidedIndicator;
            _studentUSI = contextualStudentUSI;

            _contextualValuesInitialized = true;
        }

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Guid? _id;

        /// <summary>
        /// The id of the referenced entity (used as the resource identifier in the API).
        /// </summary>
        [Key(0)]
        public virtual Guid? Id
        {
            get => _id;
            set
            {
                _id = value;

                if (_trackLookupContext || (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled))
                {
                    // If explicitly setting this to a non-value, it needs to be resolved.
                    if (value == default(Guid) || value == null)
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
            }
        }

        private DateTime _beginDate;

        [Key(1)]
        public virtual DateTime BeginDate
        {
            get { EnsureContextualValuesInitialized(); return _beginDate; }
            set
            {
                var originalValue = _beginDate;
                _beginDate = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private string _classGroupName;

        [Key(2)]
        public virtual string ClassGroupName
        {
            get { EnsureContextualValuesInitialized(); return _classGroupName; }
            set
            {
                var originalValue = _classGroupName;
                _classGroupName = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private long _communityProviderId;

        [Key(3)]
        public virtual long CommunityProviderId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderId; }
            set
            {
                var originalValue = _communityProviderId;
                _communityProviderId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private int _communityProviderLocationId;

        [Key(4)]
        public virtual int CommunityProviderLocationId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderLocationId; }
            set
            {
                var originalValue = _communityProviderLocationId;
                _communityProviderLocationId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private bool _specialNeedsProvidedIndicator;

        [Key(5)]
        public virtual bool SpecialNeedsProvidedIndicator
        {
            get { EnsureContextualValuesInitialized(); return _specialNeedsProvidedIndicator; }
            set
            {
                var originalValue = _specialNeedsProvidedIndicator;
                _specialNeedsProvidedIndicator = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private int _studentUSI;

        [Key(6)]
        public virtual int StudentUSI
        {
            get { EnsureContextualValuesInitialized(); return _studentUSI; }
            set
            {
                var originalValue = _studentUSI;
                _studentUSI = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }

        private void EnsureContextualValuesInitialized()
        {
            if (!_contextualValuesInitialized && _contextualValuesInitializer != null)
            {
                _contextualValuesInitializer(this);
                _contextualValuesInitialized = true;
            }
        }

        public virtual bool IsFullyDefined()
        {
            return
                _beginDate != default
                            && _classGroupName != default
                            && _communityProviderId != default
                            && _communityProviderLocationId != default
                            && _specialNeedsProvidedIndicator != default
                            && _studentUSI != default
            ;
        }

        /// <summary>
        /// Gets and sets the discriminator value which identifies the concrete sub-type of the referenced entity
        /// when that entity has been derived; otherwise <b>null</b>.
        /// </summary>
        [Key(7)]
        public virtual string Discriminator { get; set; }

        private static FullName _fullName = new FullName("edfixcrdc", "StudentClassGroupAssociation"); 
        FullName IEntityReferenceData.FullName { get => _fullName; }
    
        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("BeginDate", BeginDate);
            keyValues.Add("ClassGroupName", ClassGroupName);
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);
            keyValues.Add("SpecialNeedsProvidedIndicator", SpecialNeedsProvidedIndicator);
            keyValues.Add("StudentUSI", StudentUSI);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (!entry.Value.Equals(thoseKeys[entry.Key]))
                    return false;
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                hashCode.Add(entry.Value);
            }

            return hashCode.ToHashCode();
        }
        #endregion
    }

// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.StudentClassGroupAssociation table of the StudentClassGroupAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentClassGroupAssociation : AggregateRootWithCompositeKey,
        Entities.Common.Edfixcrdc.IStudentClassGroupAssociation, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentClassGroupAssociation()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData _classGroupReferenceData;

        private bool ClassGroupReferenceDataIsProxied()
        {
            return _classGroupReferenceData != null 
                && _classGroupReferenceData.GetType() != typeof(NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData ClassGroupReferenceData
        {
            get => _classGroupReferenceData;
            set
            {
                _classGroupReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !ClassGroupReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(6)]
        public virtual NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData ClassGroupSerializedReferenceData { get => _classGroupSerializedReferenceData; set { if (value != null) _classGroupSerializedReferenceData = value; } }
        private NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData _classGroupSerializedReferenceData;

        /// <summary>
        /// A read-only property implementation that allows the ClassGroup discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.ClassGroupDiscriminator
        {
            get
            {
                return ClassGroupReferenceDataIsProxied()
                    ? (ClassGroupSerializedReferenceData ?? ClassGroupReferenceData)?.Discriminator
                    : (ClassGroupReferenceData ?? ClassGroupSerializedReferenceData)?.Discriminator;
            }
            set { }
        }

        /// <summary>
        /// A property implementation whose getter allows the ClassGroup resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.ClassGroupResourceId
        {
            get
            {
                return ClassGroupReferenceDataIsProxied()
                    ? (ClassGroupSerializedReferenceData ?? ClassGroupReferenceData)?.Id
                    : (ClassGroupReferenceData ?? ClassGroupSerializedReferenceData)?.Id;
            }
            set { if (ClassGroupSerializedReferenceData?.IsFullyDefined() == true) ClassGroupSerializedReferenceData.Id = value; }
        }

        private NHibernate.StudentAggregate.EdFi.StudentReferenceData _studentReferenceData;

        private bool StudentReferenceDataIsProxied()
        {
            return _studentReferenceData != null 
                && _studentReferenceData.GetType() != typeof(NHibernate.StudentAggregate.EdFi.StudentReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.StudentAggregate.EdFi.StudentReferenceData StudentReferenceData
        {
            get => _studentReferenceData;
            set
            {
                _studentReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !StudentReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(7)]
        public virtual NHibernate.StudentAggregate.EdFi.StudentReferenceData StudentSerializedReferenceData { get => _studentSerializedReferenceData; set { if (value != null) _studentSerializedReferenceData = value; } }
        private NHibernate.StudentAggregate.EdFi.StudentReferenceData _studentSerializedReferenceData;

        /// <summary>
        /// A read-only property implementation that allows the Student discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.StudentDiscriminator
        {
            get
            {
                return StudentReferenceDataIsProxied()
                    ? (StudentSerializedReferenceData ?? StudentReferenceData)?.Discriminator
                    : (StudentReferenceData ?? StudentSerializedReferenceData)?.Discriminator;
            }
            set { }
        }

        /// <summary>
        /// A property implementation whose getter allows the Student resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.IStudentClassGroupAssociation.StudentResourceId
        {
            get
            {
                return StudentReferenceDataIsProxied()
                    ? (StudentSerializedReferenceData ?? StudentReferenceData)?.Id
                    : (StudentReferenceData ?? StudentSerializedReferenceData)?.Id;
            }
            set { if (StudentSerializedReferenceData?.IsFullyDefined() == true) StudentSerializedReferenceData.Id = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [Key(8)]
        public virtual DateTime BeginDate 
        {
            get { return _beginDate; }
            //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
            set { _beginDate = new DateTime(value.Year, value.Month, value.Day); }
        }

        private DateTime _beginDate;

        [DomainSignature]
        [Key(9)]
        public virtual string ClassGroupName 
        {
            get => _classGroupName;
            set
            {
                _classGroupName = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ClassGroupSerializedReferenceData ??= new NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData(trackLookupContext: true);
                    ClassGroupSerializedReferenceData.ClassGroupName = value;
                }
            }
        }

        private string _classGroupName;

        [DomainSignature]
        [Key(10)]
        public virtual long CommunityProviderId 
        {
            get => _communityProviderId;
            set
            {
                _communityProviderId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ClassGroupSerializedReferenceData ??= new NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData(trackLookupContext: true);
                    ClassGroupSerializedReferenceData.CommunityProviderId = value;
                }
            }
        }

        private long _communityProviderId;

        [DomainSignature]
        [Key(11)]
        public virtual int CommunityProviderLocationId 
        {
            get => _communityProviderLocationId;
            set
            {
                _communityProviderLocationId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ClassGroupSerializedReferenceData ??= new NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData(trackLookupContext: true);
                    ClassGroupSerializedReferenceData.CommunityProviderLocationId = value;
                }
            }
        }

        private int _communityProviderLocationId;

        [DomainSignature]
        [Key(12)]
        public virtual bool SpecialNeedsProvidedIndicator 
        {
            get => _specialNeedsProvidedIndicator;
            set
            {
                _specialNeedsProvidedIndicator = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ClassGroupSerializedReferenceData ??= new NHibernate.ClassGroupAggregate.Edfixcrdc.ClassGroupReferenceData(trackLookupContext: true);
                    ClassGroupSerializedReferenceData.SpecialNeedsProvidedIndicator = value;
                }
            }
        }

        private bool _specialNeedsProvidedIndicator;

        [Display(Name="StudentUniqueId")][DomainSignature]
        [Key(13)]
        public virtual int StudentUSI 
        {
            get
            {
                if (_studentUSI == default(int) && _studentUniqueId != null)
                {
                    if (GeneratedArtifactStaticDependencies.UsiLookupsByUniqueIdContextProvider.Get().UsiByUniqueIdByPersonType.TryGetValue("Student", out var usiByUniqueId)
                        && usiByUniqueId.TryGetValue(_studentUniqueId, out var usi))
                    {
                        _studentUSI = usi;

                        if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                        {
                            StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(trackLookupContext: true);
                            StudentSerializedReferenceData.StudentUSI = _studentUSI;
                        }
                    }
                }

                return _studentUSI;
            } 
            set
            {
                _studentUSI = value;
                GeneratedArtifactStaticDependencies.UniqueIdLookupsByUsiContextProvider.Get().AddLookup("Student", value);

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(trackLookupContext: true);
                    StudentSerializedReferenceData.StudentUSI = value;
                }
            }
        }

        private int _studentUSI;
        private string _studentUniqueId;

        [IgnoreMember]
        public virtual string StudentUniqueId
        {
            get
            {
                if (_studentUniqueId == null)
                {
                    if (GeneratedArtifactStaticDependencies.UniqueIdLookupsByUsiContextProvider.Get().UniqueIdByUsiByPersonType.TryGetValue("Student", out var uniqueIdByUsi)
                        && uniqueIdByUsi.TryGetValue(_studentUSI, out var uniqueId))
                    {
                        _studentUniqueId = uniqueId;
                    }
                }

                return _studentUniqueId;
            }
            set
            {
                if (_studentUniqueId != value)
                        _studentUSI = default(int);

                _studentUniqueId = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    if (GeneratedArtifactStaticDependencies.UsiLookupsByUniqueIdContextProvider.Get().UsiByUniqueIdByPersonType.TryGetValue("Student", out var usiByUniqueId)
                        && usiByUniqueId.TryGetValue(_studentUniqueId, out var usi))
                    {
                        StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(trackLookupContext: true);
                        StudentSerializedReferenceData.StudentUSI = usi;
                    }
                }
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(14)]
        public virtual DateTime? EndDate 
        {
            get { return _endDate; }
            set 
            { 
                //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
                if(value == null)
                {
                    _endDate = null;
                } else
                {
                    var given = (DateTime) value;
                    _endDate = new DateTime(given.Year, given.Month, given.Day);
                }
            }
        }

        private DateTime? _endDate;

        [Key(15)]
        public virtual int? ReasonExitedDescriptorId 
        {
            get
            {
                if (_reasonExitedDescriptorId == default(int?))
                {
                    _reasonExitedDescriptorId = string.IsNullOrWhiteSpace(_reasonExitedDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ReasonExitedDescriptor", _reasonExitedDescriptor);
                }

                return _reasonExitedDescriptorId;
            } 
            set
            {
                _reasonExitedDescriptorId = value;
                _reasonExitedDescriptor = null;
            }
        }

        private int? _reasonExitedDescriptorId;
        private string _reasonExitedDescriptor;

        [IgnoreMember]
        public virtual string ReasonExitedDescriptor
        {
            get
            {
                if (_reasonExitedDescriptor == null)
                    _reasonExitedDescriptor = _reasonExitedDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ReasonExitedDescriptor", _reasonExitedDescriptorId.Value);
                    
                return _reasonExitedDescriptor;
            }
            set
            {
                _reasonExitedDescriptor = value;
                _reasonExitedDescriptorId = default(int?);
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "ReasonExitedDescriptor", new LookupColumnDetails { PropertyName = "ReasonExitedDescriptorId", LookupTypeName = "ReasonExitedDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("BeginDate", BeginDate);
            keyValues.Add("ClassGroupName", ClassGroupName);
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);
            keyValues.Add("SpecialNeedsProvidedIndicator", SpecialNeedsProvidedIndicator);
            keyValues.Add("StudentUSI", StudentUSI);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IStudentClassGroupAssociation)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IStudentClassGroupAssociation) target, null);
        }

    }
}
// Aggregate: StudentCommunityProviderLocationAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentCommunityProviderLocationAssociationAggregate.Edfixcrdc
{
    /// <summary>
    /// Represents a read-only reference to the <see cref="StudentCommunityProviderLocationAssociation"/> entity.
    /// </summary>
    [MessagePackObject]
    public class StudentCommunityProviderLocationAssociationReferenceData : IEntityReferenceData
    {
        private bool _trackLookupContext;
        private Action<StudentCommunityProviderLocationAssociationReferenceData> _contextualValuesInitializer;
        private bool _contextualValuesInitialized;

        // Default constructor (used by NHibernate)
        public StudentCommunityProviderLocationAssociationReferenceData() { }

        // Constructor used for deferred initialization when the parent reference hasn't yet been initialized because we're falling back from stale serialized data to NHibernate hydration
        public StudentCommunityProviderLocationAssociationReferenceData(Action<StudentCommunityProviderLocationAssociationReferenceData> contextualValuesInitializer)
        {
            _trackLookupContext = true;
            _contextualValuesInitializer = contextualValuesInitializer;
        }

        // Constructor used for link support with Serialized Data feature
        public StudentCommunityProviderLocationAssociationReferenceData(DateTime contextualBeginDate = default, long contextualCommunityProviderId = default, int contextualCommunityProviderLocationId = default, int contextualStudentUSI = default, bool trackLookupContext = true)
        {
            _trackLookupContext = trackLookupContext;
    
            // Assign supplied contextual values (values pre-determined from parent context)
            _beginDate = contextualBeginDate;
            _communityProviderId = contextualCommunityProviderId;
            _communityProviderLocationId = contextualCommunityProviderLocationId;
            _studentUSI = contextualStudentUSI;

            _contextualValuesInitialized = true;
        }

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Guid? _id;

        /// <summary>
        /// The id of the referenced entity (used as the resource identifier in the API).
        /// </summary>
        [Key(0)]
        public virtual Guid? Id
        {
            get => _id;
            set
            {
                _id = value;

                if (_trackLookupContext || (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled))
                {
                    // If explicitly setting this to a non-value, it needs to be resolved.
                    if (value == default(Guid) || value == null)
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
            }
        }

        private DateTime _beginDate;

        [Key(1)]
        public virtual DateTime BeginDate
        {
            get { EnsureContextualValuesInitialized(); return _beginDate; }
            set
            {
                var originalValue = _beginDate;
                _beginDate = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private long _communityProviderId;

        [Key(2)]
        public virtual long CommunityProviderId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderId; }
            set
            {
                var originalValue = _communityProviderId;
                _communityProviderId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private int _communityProviderLocationId;

        [Key(3)]
        public virtual int CommunityProviderLocationId
        {
            get { EnsureContextualValuesInitialized(); return _communityProviderLocationId; }
            set
            {
                var originalValue = _communityProviderLocationId;
                _communityProviderLocationId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }
        private int _studentUSI;

        [Key(4)]
        public virtual int StudentUSI
        {
            get { EnsureContextualValuesInitialized(); return _studentUSI; }
            set
            {
                var originalValue = _studentUSI;
                _studentUSI = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
                
                // If reference's key value is changing from a non-default value (i.e. only via Synchronize) it needs resolution
                if (originalValue != default && value != originalValue) 
                {
                    // Clear the values
                    Id = default;
                    Discriminator = null;
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                }
            }
        }

        private void EnsureContextualValuesInitialized()
        {
            if (!_contextualValuesInitialized && _contextualValuesInitializer != null)
            {
                _contextualValuesInitializer(this);
                _contextualValuesInitialized = true;
            }
        }

        public virtual bool IsFullyDefined()
        {
            return
                _beginDate != default
                            && _communityProviderId != default
                            && _communityProviderLocationId != default
                            && _studentUSI != default
            ;
        }

        /// <summary>
        /// Gets and sets the discriminator value which identifies the concrete sub-type of the referenced entity
        /// when that entity has been derived; otherwise <b>null</b>.
        /// </summary>
        [Key(5)]
        public virtual string Discriminator { get; set; }

        private static FullName _fullName = new FullName("edfixcrdc", "StudentCommunityProviderLocationAssociation"); 
        FullName IEntityReferenceData.FullName { get => _fullName; }
    
        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("BeginDate", BeginDate);
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);
            keyValues.Add("StudentUSI", StudentUSI);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (!entry.Value.Equals(thoseKeys[entry.Key]))
                    return false;
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                hashCode.Add(entry.Value);
            }

            return hashCode.ToHashCode();
        }
        #endregion
    }

// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.StudentCommunityProviderLocationAssociation table of the StudentCommunityProviderLocationAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentCommunityProviderLocationAssociation : AggregateRootWithCompositeKey,
        Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentCommunityProviderLocationAssociation()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData _communityProviderLocationReferenceData;

        private bool CommunityProviderLocationReferenceDataIsProxied()
        {
            return _communityProviderLocationReferenceData != null 
                && _communityProviderLocationReferenceData.GetType() != typeof(NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData CommunityProviderLocationReferenceData
        {
            get => _communityProviderLocationReferenceData;
            set
            {
                _communityProviderLocationReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !CommunityProviderLocationReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(6)]
        public virtual NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData CommunityProviderLocationSerializedReferenceData { get => _communityProviderLocationSerializedReferenceData; set { if (value != null) _communityProviderLocationSerializedReferenceData = value; } }
        private NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData _communityProviderLocationSerializedReferenceData;

        /// <summary>
        /// A read-only property implementation that allows the CommunityProviderLocation discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.CommunityProviderLocationDiscriminator
        {
            get
            {
                return CommunityProviderLocationReferenceDataIsProxied()
                    ? (CommunityProviderLocationSerializedReferenceData ?? CommunityProviderLocationReferenceData)?.Discriminator
                    : (CommunityProviderLocationReferenceData ?? CommunityProviderLocationSerializedReferenceData)?.Discriminator;
            }
            set { }
        }

        /// <summary>
        /// A property implementation whose getter allows the CommunityProviderLocation resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.CommunityProviderLocationResourceId
        {
            get
            {
                return CommunityProviderLocationReferenceDataIsProxied()
                    ? (CommunityProviderLocationSerializedReferenceData ?? CommunityProviderLocationReferenceData)?.Id
                    : (CommunityProviderLocationReferenceData ?? CommunityProviderLocationSerializedReferenceData)?.Id;
            }
            set { if (CommunityProviderLocationSerializedReferenceData?.IsFullyDefined() == true) CommunityProviderLocationSerializedReferenceData.Id = value; }
        }

        private NHibernate.StudentAggregate.EdFi.StudentReferenceData _studentReferenceData;

        private bool StudentReferenceDataIsProxied()
        {
            return _studentReferenceData != null 
                && _studentReferenceData.GetType() != typeof(NHibernate.StudentAggregate.EdFi.StudentReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.StudentAggregate.EdFi.StudentReferenceData StudentReferenceData
        {
            get => _studentReferenceData;
            set
            {
                _studentReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !StudentReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(7)]
        public virtual NHibernate.StudentAggregate.EdFi.StudentReferenceData StudentSerializedReferenceData { get => _studentSerializedReferenceData; set { if (value != null) _studentSerializedReferenceData = value; } }
        private NHibernate.StudentAggregate.EdFi.StudentReferenceData _studentSerializedReferenceData;

        /// <summary>
        /// A read-only property implementation that allows the Student discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.StudentDiscriminator
        {
            get
            {
                return StudentReferenceDataIsProxied()
                    ? (StudentSerializedReferenceData ?? StudentReferenceData)?.Discriminator
                    : (StudentReferenceData ?? StudentSerializedReferenceData)?.Discriminator;
            }
            set { }
        }

        /// <summary>
        /// A property implementation whose getter allows the Student resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation.StudentResourceId
        {
            get
            {
                return StudentReferenceDataIsProxied()
                    ? (StudentSerializedReferenceData ?? StudentReferenceData)?.Id
                    : (StudentReferenceData ?? StudentSerializedReferenceData)?.Id;
            }
            set { if (StudentSerializedReferenceData?.IsFullyDefined() == true) StudentSerializedReferenceData.Id = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [Key(8)]
        public virtual DateTime BeginDate 
        {
            get { return _beginDate; }
            //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
            set { _beginDate = new DateTime(value.Year, value.Month, value.Day); }
        }

        private DateTime _beginDate;

        [DomainSignature]
        [Key(9)]
        public virtual long CommunityProviderId 
        {
            get => _communityProviderId;
            set
            {
                _communityProviderId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    CommunityProviderLocationSerializedReferenceData ??= new NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData(trackLookupContext: true);
                    CommunityProviderLocationSerializedReferenceData.CommunityProviderId = value;
                }
            }
        }

        private long _communityProviderId;

        [DomainSignature]
        [Key(10)]
        public virtual int CommunityProviderLocationId 
        {
            get => _communityProviderLocationId;
            set
            {
                _communityProviderLocationId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    CommunityProviderLocationSerializedReferenceData ??= new NHibernate.CommunityProviderLocationAggregate.Edfixcrdc.CommunityProviderLocationReferenceData(trackLookupContext: true);
                    CommunityProviderLocationSerializedReferenceData.CommunityProviderLocationId = value;
                }
            }
        }

        private int _communityProviderLocationId;

        [Display(Name="StudentUniqueId")][DomainSignature]
        [Key(11)]
        public virtual int StudentUSI 
        {
            get
            {
                if (_studentUSI == default(int) && _studentUniqueId != null)
                {
                    if (GeneratedArtifactStaticDependencies.UsiLookupsByUniqueIdContextProvider.Get().UsiByUniqueIdByPersonType.TryGetValue("Student", out var usiByUniqueId)
                        && usiByUniqueId.TryGetValue(_studentUniqueId, out var usi))
                    {
                        _studentUSI = usi;

                        if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                        {
                            StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(trackLookupContext: true);
                            StudentSerializedReferenceData.StudentUSI = _studentUSI;
                        }
                    }
                }

                return _studentUSI;
            } 
            set
            {
                _studentUSI = value;
                GeneratedArtifactStaticDependencies.UniqueIdLookupsByUsiContextProvider.Get().AddLookup("Student", value);

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(trackLookupContext: true);
                    StudentSerializedReferenceData.StudentUSI = value;
                }
            }
        }

        private int _studentUSI;
        private string _studentUniqueId;

        [IgnoreMember]
        public virtual string StudentUniqueId
        {
            get
            {
                if (_studentUniqueId == null)
                {
                    if (GeneratedArtifactStaticDependencies.UniqueIdLookupsByUsiContextProvider.Get().UniqueIdByUsiByPersonType.TryGetValue("Student", out var uniqueIdByUsi)
                        && uniqueIdByUsi.TryGetValue(_studentUSI, out var uniqueId))
                    {
                        _studentUniqueId = uniqueId;
                    }
                }

                return _studentUniqueId;
            }
            set
            {
                if (_studentUniqueId != value)
                        _studentUSI = default(int);

                _studentUniqueId = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    if (GeneratedArtifactStaticDependencies.UsiLookupsByUniqueIdContextProvider.Get().UsiByUniqueIdByPersonType.TryGetValue("Student", out var usiByUniqueId)
                        && usiByUniqueId.TryGetValue(_studentUniqueId, out var usi))
                    {
                        StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(trackLookupContext: true);
                        StudentSerializedReferenceData.StudentUSI = usi;
                    }
                }
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(12)]
        public virtual DateTime? EndDate 
        {
            get { return _endDate; }
            set 
            { 
                //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
                if(value == null)
                {
                    _endDate = null;
                } else
                {
                    var given = (DateTime) value;
                    _endDate = new DateTime(given.Year, given.Month, given.Day);
                }
            }
        }

        private DateTime? _endDate;

        [Key(13)]
        public virtual string EnrollmentStatus { get => _enrollmentStatus; set { _enrollmentStatus = value; } }
        private string _enrollmentStatus;

        [Key(14)]
        public virtual int? ReasonExitedDescriptorId 
        {
            get
            {
                if (_reasonExitedDescriptorId == default(int?))
                {
                    _reasonExitedDescriptorId = string.IsNullOrWhiteSpace(_reasonExitedDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ReasonExitedDescriptor", _reasonExitedDescriptor);
                }

                return _reasonExitedDescriptorId;
            } 
            set
            {
                _reasonExitedDescriptorId = value;
                _reasonExitedDescriptor = null;
            }
        }

        private int? _reasonExitedDescriptorId;
        private string _reasonExitedDescriptor;

        [IgnoreMember]
        public virtual string ReasonExitedDescriptor
        {
            get
            {
                if (_reasonExitedDescriptor == null)
                    _reasonExitedDescriptor = _reasonExitedDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ReasonExitedDescriptor", _reasonExitedDescriptorId.Value);
                    
                return _reasonExitedDescriptor;
            }
            set
            {
                _reasonExitedDescriptor = value;
                _reasonExitedDescriptorId = default(int?);
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "ReasonExitedDescriptor", new LookupColumnDetails { PropertyName = "ReasonExitedDescriptorId", LookupTypeName = "ReasonExitedDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("BeginDate", BeginDate);
            keyValues.Add("CommunityProviderId", CommunityProviderId);
            keyValues.Add("CommunityProviderLocationId", CommunityProviderLocationId);
            keyValues.Add("StudentUSI", StudentUSI);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IStudentCommunityProviderLocationAssociation) target, null);
        }

    }
}
// Aggregate: UngradedDetailDescriptor

namespace EdFi.Ods.Entities.NHibernate.UngradedDetailDescriptorAggregate.Edfixcrdc
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixcrdc.UngradedDetailDescriptor table of the UngradedDetailDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("edfixcrdc")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class UngradedDetailDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.Edfixcrdc.IUngradedDetailDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
    {

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        [IgnoreMember]
        public virtual int UngradedDetailDescriptorId 
        {
            get { return base.DescriptorId; }
            set { base.DescriptorId = value; }
        }
        

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        string IDescriptor.CodeValue
        {
            get { return CodeValue; }
            set { CodeValue = value; }
        }
        string IDescriptor.Description
        {
            get { return Description; }
            set { Description = value; }
        }
        DateTime? IDescriptor.EffectiveBeginDate
        {
            get { return EffectiveBeginDate; }
            set { EffectiveBeginDate = value; }
        }
        DateTime? IDescriptor.EffectiveEndDate
        {
            get { return EffectiveEndDate; }
            set { EffectiveEndDate = value; }
        }
        string IDescriptor.Namespace
        {
            get { return Namespace; }
            set { Namespace = value; }
        }
        string IDescriptor.ShortDescription
        {
            get { return ShortDescription; }
            set { ShortDescription = value; }
        }
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
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("UngradedDetailDescriptorId", UngradedDetailDescriptorId);

            return keyValues;
        }

        #region Overrides for Equals() and GetHashCode()
        public override bool Equals(object obj)
        {
            var compareTo = obj as IHasPrimaryKeyValues;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            var theseKeys = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();
            var thoseKeys = compareTo.GetPrimaryKeyValues();

            foreach (DictionaryEntry entry in theseKeys)
            {
                if (entry.Value is string)
                {
                    if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((string) entry.Value, (string) thoseKeys[entry.Key]))
                    {
                        return false;
                    }
                }
                else
                {
                    if (!entry.Value.Equals(thoseKeys[entry.Key]))
                        return false;
                }
            }

            return true;
        }

        public override int GetHashCode()
        {
            var keyValues = (this as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            if (keyValues.Count == 0)
                return base.GetHashCode();

            var hashCode = new HashCode();

            foreach (DictionaryEntry entry in keyValues)
            {
                if (entry.Value is string)
                {
                    hashCode.Add(entry.Value as string, GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer);
                }
                else
                {
                    hashCode.Add(entry.Value);
                }
            }

            return hashCode.ToHashCode();
        }
        #endregion
        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((Entities.Common.Edfixcrdc.IUngradedDetailDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.Edfixcrdc.IUngradedDetailDescriptor) target, null);
        }

    }
}
