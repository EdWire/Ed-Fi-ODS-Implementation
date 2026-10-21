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
