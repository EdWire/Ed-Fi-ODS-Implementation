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
using EdFi.Ods.Entities.Common.NE;
using Newtonsoft.Json;
using MessagePack;
using KeyAttribute = MessagePack.KeyAttribute;

// Aggregate: CalendarDate

namespace EdFi.Ods.Entities.NHibernate.CalendarDateAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.CalendarDateExtension table of the CalendarDate aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class CalendarDateExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.ICalendarDateExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public CalendarDateExtension()
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
        public virtual EdFi.CalendarDate CalendarDate { get; set; }

        Entities.Common.EdFi.ICalendarDate ICalendarDateExtension.CalendarDate
        {
            get { return CalendarDate; }
            set { CalendarDate = (EdFi.CalendarDate) value; }
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
        public virtual decimal InstructionalDuration  { get; set; }

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
            var keyValues = (CalendarDate as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.ICalendarDateExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.ICalendarDateExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            CalendarDate = (EdFi.CalendarDate) value;
        }
    }
}
// Aggregate: DisciplineAction

namespace EdFi.Ods.Entities.NHibernate.DisciplineActionAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.DisciplineActionExtension table of the DisciplineAction aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class DisciplineActionExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.IDisciplineActionExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public DisciplineActionExtension()
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
        public virtual EdFi.DisciplineAction DisciplineAction { get; set; }

        Entities.Common.EdFi.IDisciplineAction IDisciplineActionExtension.DisciplineAction
        {
            get { return DisciplineAction; }
            set { DisciplineAction = (EdFi.DisciplineAction) value; }
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
        public virtual bool? GFSAExpulsionModifiedToLessThanOneYear  { get; set; }

        [Key(2)]
        public virtual int? UnilateralRemovalDescriptorId 
        {
            get
            {
                if (_unilateralRemovalDescriptorId == default(int?))
                {
                    _unilateralRemovalDescriptorId = string.IsNullOrWhiteSpace(_unilateralRemovalDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("UnilateralRemovalDescriptor", _unilateralRemovalDescriptor);
                }

                return _unilateralRemovalDescriptorId;
            } 
            set
            {
                _unilateralRemovalDescriptorId = value;
                _unilateralRemovalDescriptor = null;
            }
        }

        private int? _unilateralRemovalDescriptorId;
        private string _unilateralRemovalDescriptor;

        [IgnoreMember]
        public virtual string UnilateralRemovalDescriptor
        {
            get
            {
                if (_unilateralRemovalDescriptor == null)
                    _unilateralRemovalDescriptor = _unilateralRemovalDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("UnilateralRemovalDescriptor", _unilateralRemovalDescriptorId.Value);
                    
                return _unilateralRemovalDescriptor;
            }
            set
            {
                _unilateralRemovalDescriptor = value;
                _unilateralRemovalDescriptorId = default(int?);
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
                { "UnilateralRemovalDescriptor", new LookupColumnDetails { PropertyName = "UnilateralRemovalDescriptorId", LookupTypeName = "UnilateralRemovalDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (DisciplineAction as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.IDisciplineActionExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IDisciplineActionExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            DisciplineAction = (EdFi.DisciplineAction) value;
        }
    }
}
// Aggregate: DisciplineIncident

namespace EdFi.Ods.Entities.NHibernate.DisciplineIncidentAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.DisciplineIncidentExtension table of the DisciplineIncident aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class DisciplineIncidentExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.IDisciplineIncidentExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public DisciplineIncidentExtension()
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
        public virtual EdFi.DisciplineIncident DisciplineIncident { get; set; }

        Entities.Common.EdFi.IDisciplineIncident IDisciplineIncidentExtension.DisciplineIncident
        {
            get { return DisciplineIncident; }
            set { DisciplineIncident = (EdFi.DisciplineIncident) value; }
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
        public virtual bool? HomicideIndicator  { get; set; }

        [Key(2)]
        public virtual bool? ShootingIndicator  { get; set; }

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
            var keyValues = (DisciplineIncident as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.IDisciplineIncidentExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IDisciplineIncidentExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            DisciplineIncident = (EdFi.DisciplineIncident) value;
        }
    }
}
// Aggregate: EarlyLearningSettingDescriptor

namespace EdFi.Ods.Entities.NHibernate.EarlyLearningSettingDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.EarlyLearningSettingDescriptor table of the EarlyLearningSettingDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class EarlyLearningSettingDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IEarlyLearningSettingDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int EarlyLearningSettingDescriptorId 
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
            keyValues.Add("EarlyLearningSettingDescriptorId", EarlyLearningSettingDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IEarlyLearningSettingDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IEarlyLearningSettingDescriptor) target, null);
        }

    }
}
// Aggregate: ImmigrantIndicatorDescriptor

namespace EdFi.Ods.Entities.NHibernate.ImmigrantIndicatorDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.ImmigrantIndicatorDescriptor table of the ImmigrantIndicatorDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ImmigrantIndicatorDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IImmigrantIndicatorDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int ImmigrantIndicatorDescriptorId 
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
            keyValues.Add("ImmigrantIndicatorDescriptorId", ImmigrantIndicatorDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IImmigrantIndicatorDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IImmigrantIndicatorDescriptor) target, null);
        }

    }
}
// Aggregate: PartCTransitionDelayReasonDescriptor

namespace EdFi.Ods.Entities.NHibernate.PartCTransitionDelayReasonDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.PartCTransitionDelayReasonDescriptor table of the PartCTransitionDelayReasonDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class PartCTransitionDelayReasonDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IPartCTransitionDelayReasonDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int PartCTransitionDelayReasonDescriptorId 
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
            keyValues.Add("PartCTransitionDelayReasonDescriptorId", PartCTransitionDelayReasonDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IPartCTransitionDelayReasonDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IPartCTransitionDelayReasonDescriptor) target, null);
        }

    }
}
// Aggregate: PlacementTypeDescriptor

namespace EdFi.Ods.Entities.NHibernate.PlacementTypeDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.PlacementTypeDescriptor table of the PlacementTypeDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class PlacementTypeDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IPlacementTypeDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int PlacementTypeDescriptorId 
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
            keyValues.Add("PlacementTypeDescriptorId", PlacementTypeDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IPlacementTypeDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IPlacementTypeDescriptor) target, null);
        }

    }
}
// Aggregate: PositionTitleDescriptor

namespace EdFi.Ods.Entities.NHibernate.PositionTitleDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.PositionTitleDescriptor table of the PositionTitleDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class PositionTitleDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IPositionTitleDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int PositionTitleDescriptorId 
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
            keyValues.Add("PositionTitleDescriptorId", PositionTitleDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IPositionTitleDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IPositionTitleDescriptor) target, null);
        }

    }
}
// Aggregate: PostGraduateActivity

namespace EdFi.Ods.Entities.NHibernate.PostGraduateActivityAggregate.NE
{
    /// <summary>
    /// Represents a read-only reference to the <see cref="PostGraduateActivity"/> entity.
    /// </summary>
    [MessagePackObject]
    public class PostGraduateActivityReferenceData : IEntityReferenceData
    {
        private bool _trackLookupContext;
    
        // Default constructor (used by NHibernate)
        public PostGraduateActivityReferenceData() { }

        // Constructor (used for link support with Serialized Data feature)
        public PostGraduateActivityReferenceData(bool trackLookupContext) { _trackLookupContext = trackLookupContext; }

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

        private long _localEducationAgencyId;

        [Key(1)]
        public virtual long LocalEducationAgencyId
        {
            get => _localEducationAgencyId;
            set
            {
                var originalValue = _localEducationAgencyId;
                _localEducationAgencyId = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                    // If key value is changing (i.e. only via Synchronize)
                    else if (originalValue != default && value != originalValue) 
                    {
                        // Clear the values
                        Id = default;
                        Discriminator = null;
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
            }
        }
        private short _schoolYear;

        [Key(2)]
        public virtual short SchoolYear
        {
            get => _schoolYear;
            set
            {
                var originalValue = _schoolYear;
                _schoolYear = value;

                if (_trackLookupContext)
                {
                    // If Id is NOT already known then value is being initialized (from mapping or syncing -- not deserialized) and needs resolution 
                    if (_id == default && originalValue == default && value != default && IsFullyDefined())
                    {
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                    // If key value is changing (i.e. only via Synchronize)
                    else if (originalValue != default && value != originalValue) 
                    {
                        // Clear the values
                        Id = default;
                        Discriminator = null;
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
            }
        }
        private int _studentUSI;

        [Key(3)]
        public virtual int StudentUSI
        {
            get => _studentUSI;
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
                    // If key value is changing (i.e. only via Synchronize)
                    else if (originalValue != default && value != originalValue) 
                    {
                        // Clear the values
                        Id = default;
                        Discriminator = null;
                        GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Add(this);
                    }
                }
            }
        }

        public virtual bool IsFullyDefined()
        {
            return
                _localEducationAgencyId != default
                            && _schoolYear != default
                            && _studentUSI != default
            ;
        }

        /// <summary>
        /// Gets and sets the discriminator value which identifies the concrete sub-type of the referenced entity
        /// when that entity has been derived; otherwise <b>null</b>.
        /// </summary>
        [Key(4)]
        public virtual string Discriminator { get; set; }

        private static FullName _fullName = new FullName("ne", "PostGraduateActivity"); 
        FullName IEntityReferenceData.FullName { get => _fullName; }
    
        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("LocalEducationAgencyId", LocalEducationAgencyId);
            keyValues.Add("SchoolYear", SchoolYear);
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
    /// A class which represents the ne.PostGraduateActivity table of the PostGraduateActivity aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class PostGraduateActivity : AggregateRootWithCompositeKey,
        Entities.Common.NE.IPostGraduateActivity, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public PostGraduateActivity()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _localEducationAgencyReferenceData;

        private bool LocalEducationAgencyReferenceDataIsProxied()
        {
            return _localEducationAgencyReferenceData != null 
                && _localEducationAgencyReferenceData.GetType() != typeof(NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData LocalEducationAgencyReferenceData
        {
            get => _localEducationAgencyReferenceData;
            set
            {
                _localEducationAgencyReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !LocalEducationAgencyReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(6)]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData LocalEducationAgencySerializedReferenceData { get => _localEducationAgencySerializedReferenceData; set { if (value != null) _localEducationAgencySerializedReferenceData = value; } }
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _localEducationAgencySerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the LocalEducationAgency resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.NE.IPostGraduateActivity.LocalEducationAgencyResourceId
        {
            get
            {
                return LocalEducationAgencyReferenceDataIsProxied()
                    ? (LocalEducationAgencySerializedReferenceData ?? LocalEducationAgencyReferenceData)?.Id
                    : (LocalEducationAgencyReferenceData ?? LocalEducationAgencySerializedReferenceData)?.Id;
            }
            set { if (LocalEducationAgencySerializedReferenceData?.IsFullyDefined() == true) LocalEducationAgencySerializedReferenceData.Id = value; }
        }

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

        [Key(7)]
        public virtual NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData SchoolYearTypeSerializedReferenceData { get => _schoolYearTypeSerializedReferenceData; set { if (value != null) _schoolYearTypeSerializedReferenceData = value; } }
        private NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData _schoolYearTypeSerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the SchoolYearType resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.NE.IPostGraduateActivity.SchoolYearTypeResourceId
        {
            get
            {
                return SchoolYearTypeReferenceDataIsProxied()
                    ? (SchoolYearTypeSerializedReferenceData ?? SchoolYearTypeReferenceData)?.Id
                    : (SchoolYearTypeReferenceData ?? SchoolYearTypeSerializedReferenceData)?.Id;
            }
            set { if (SchoolYearTypeSerializedReferenceData?.IsFullyDefined() == true) SchoolYearTypeSerializedReferenceData.Id = value; }
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

        [Key(8)]
        public virtual NHibernate.StudentAggregate.EdFi.StudentReferenceData StudentSerializedReferenceData { get => _studentSerializedReferenceData; set { if (value != null) _studentSerializedReferenceData = value; } }
        private NHibernate.StudentAggregate.EdFi.StudentReferenceData _studentSerializedReferenceData;

        /// <summary>
        /// A read-only property implementation that allows the Student discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.NE.IPostGraduateActivity.StudentDiscriminator
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
        Guid? Entities.Common.NE.IPostGraduateActivity.StudentResourceId
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
        [Key(9)]
        public virtual long LocalEducationAgencyId 
        {
            get => _localEducationAgencyId;
            set
            {
                _localEducationAgencyId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    LocalEducationAgencySerializedReferenceData ??= new NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData(true);
                    LocalEducationAgencySerializedReferenceData.EducationOrganizationId = value;
                }
            }
        }

        private long _localEducationAgencyId;

        [DomainSignature]
        [Key(10)]
        public virtual short SchoolYear 
        {
            get => _schoolYear;
            set
            {
                _schoolYear = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    SchoolYearTypeSerializedReferenceData ??= new NHibernate.SchoolYearTypeAggregate.EdFi.SchoolYearTypeReferenceData(true);
                    SchoolYearTypeSerializedReferenceData.SchoolYear = value;
                }
            }
        }

        private short _schoolYear;

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
                            StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(true);
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
                    StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(true);
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
                        StudentSerializedReferenceData ??= new NHibernate.StudentAggregate.EdFi.StudentReferenceData(true);
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
        public virtual int PostGraduateActivityDescriptorId 
        {
            get
            {
                if (_postGraduateActivityDescriptorId == default(int))
                {
                    _postGraduateActivityDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("PostGraduateActivityDescriptor", _postGraduateActivityDescriptor);
                }

                return _postGraduateActivityDescriptorId;
            } 
            set
            {
                _postGraduateActivityDescriptorId = value;
                _postGraduateActivityDescriptor = null;
            }
        }

        private int _postGraduateActivityDescriptorId;
        private string _postGraduateActivityDescriptor;

        [IgnoreMember]
        public virtual string PostGraduateActivityDescriptor
        {
            get
            {
                if (_postGraduateActivityDescriptor == null)
                    _postGraduateActivityDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("PostGraduateActivityDescriptor", _postGraduateActivityDescriptorId);
                    
                return _postGraduateActivityDescriptor;
            }
            set
            {
                _postGraduateActivityDescriptor = value;
                _postGraduateActivityDescriptorId = default(int);
            }
        }

        [Key(13)]
        public virtual int PostGraduateActivityDeterminationDescriptorId 
        {
            get
            {
                if (_postGraduateActivityDeterminationDescriptorId == default(int))
                {
                    _postGraduateActivityDeterminationDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("PostGraduateActivityDeterminationDescriptor", _postGraduateActivityDeterminationDescriptor);
                }

                return _postGraduateActivityDeterminationDescriptorId;
            } 
            set
            {
                _postGraduateActivityDeterminationDescriptorId = value;
                _postGraduateActivityDeterminationDescriptor = null;
            }
        }

        private int _postGraduateActivityDeterminationDescriptorId;
        private string _postGraduateActivityDeterminationDescriptor;

        [IgnoreMember]
        public virtual string PostGraduateActivityDeterminationDescriptor
        {
            get
            {
                if (_postGraduateActivityDeterminationDescriptor == null)
                    _postGraduateActivityDeterminationDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("PostGraduateActivityDeterminationDescriptor", _postGraduateActivityDeterminationDescriptorId);
                    
                return _postGraduateActivityDeterminationDescriptor;
            }
            set
            {
                _postGraduateActivityDeterminationDescriptor = value;
                _postGraduateActivityDeterminationDescriptorId = default(int);
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
                { "PostGraduateActivityDescriptor", new LookupColumnDetails { PropertyName = "PostGraduateActivityDescriptorId", LookupTypeName = "PostGraduateActivityDescriptor"} },
                { "PostGraduateActivityDeterminationDescriptor", new LookupColumnDetails { PropertyName = "PostGraduateActivityDeterminationDescriptorId", LookupTypeName = "PostGraduateActivityDeterminationDescriptor"} },
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
            keyValues.Add("LocalEducationAgencyId", LocalEducationAgencyId);
            keyValues.Add("SchoolYear", SchoolYear);
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
            return this.SynchronizeTo((Entities.Common.NE.IPostGraduateActivity)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IPostGraduateActivity) target, null);
        }

    }
}
// Aggregate: PostGraduateActivityDescriptor

namespace EdFi.Ods.Entities.NHibernate.PostGraduateActivityDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.PostGraduateActivityDescriptor table of the PostGraduateActivityDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class PostGraduateActivityDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IPostGraduateActivityDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int PostGraduateActivityDescriptorId 
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
            keyValues.Add("PostGraduateActivityDescriptorId", PostGraduateActivityDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IPostGraduateActivityDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IPostGraduateActivityDescriptor) target, null);
        }

    }
}
// Aggregate: PostGraduateActivityDeterminationDescriptor

namespace EdFi.Ods.Entities.NHibernate.PostGraduateActivityDeterminationDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.PostGraduateActivityDeterminationDescriptor table of the PostGraduateActivityDeterminationDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class PostGraduateActivityDeterminationDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int PostGraduateActivityDeterminationDescriptorId 
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
            keyValues.Add("PostGraduateActivityDeterminationDescriptorId", PostGraduateActivityDeterminationDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor) target, null);
        }

    }
}
// Aggregate: Section

namespace EdFi.Ods.Entities.NHibernate.SectionAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.SectionDelivery table of the Section aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class SectionDelivery : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.ISectionDelivery, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public SectionDelivery()
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
        public virtual EdFi.Section Section { get; set; }

        Entities.Common.NE.ISectionExtension ISectionDelivery.SectionExtension
        {
            get { return (ISectionExtension) Section.Extensions["NE"]; }
            set { Section.Extensions["NE"] = value; }
        }

        [DomainSignature]
        [Key(1)]
        public virtual int SectionDeliveryDescriptorId 
        {
            get
            {
                if (_sectionDeliveryDescriptorId == default(int))
                {
                    _sectionDeliveryDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("SectionDeliveryDescriptor", _sectionDeliveryDescriptor);
                }

                return _sectionDeliveryDescriptorId;
            } 
            set
            {
                _sectionDeliveryDescriptorId = value;
                _sectionDeliveryDescriptor = null;
            }
        }

        private int _sectionDeliveryDescriptorId;
        private string _sectionDeliveryDescriptor;

        [IgnoreMember]
        public virtual string SectionDeliveryDescriptor
        {
            get
            {
                if (_sectionDeliveryDescriptor == null)
                    _sectionDeliveryDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("SectionDeliveryDescriptor", _sectionDeliveryDescriptorId);
                    
                return _sectionDeliveryDescriptor;
            }
            set
            {
                _sectionDeliveryDescriptor = value;
                _sectionDeliveryDescriptorId = default(int);
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
                { "SectionDeliveryDescriptor", new LookupColumnDetails { PropertyName = "SectionDeliveryDescriptorId", LookupTypeName = "SectionDeliveryDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (Section as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

            // Add current key values
            keyValues.Add("SectionDeliveryDescriptorId", SectionDeliveryDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.ISectionDelivery)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.ISectionDelivery) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            Section = (EdFi.Section) value;
        }
    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.SectionExtension table of the Section aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class SectionExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.ISectionExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public SectionExtension()
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
        public virtual EdFi.Section Section { get; set; }

        Entities.Common.EdFi.ISection ISectionExtension.Section
        {
            get { return Section; }
            set { Section = (EdFi.Section) value; }
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
        public virtual string CourseStaffIdOverride  { get; set; }

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
        private ICollection<Entities.Common.NE.ISectionDelivery> _sectionDeliveries;
        // Aggregate extension explicit implementation to redirect model abstraction to the persistent entity location
        ICollection<Entities.Common.NE.ISectionDelivery> ISectionExtension.SectionDeliveries
        {
            get
            {
                var sourceList =  new ContravariantCollectionAdapter<object, SectionDelivery>((IList<object>) Section.AggregateExtensions["NE_SectionDeliveries"]);

                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (SectionDelivery item in sourceList)
                    if (item.Section == null)
                        item.Section = this.Section;
                // -------------------------------------------------------------

                if (_sectionDeliveries == null)
                    _sectionDeliveries = new CovariantCollectionAdapter<Entities.Common.NE.ISectionDelivery, SectionDelivery>(sourceList);

                return _sectionDeliveries;
            }
            set
            {
                Section.AggregateExtensions["NE_SectionDeliveries"] = value;
            }
        }
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
            var keyValues = (Section as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.ISectionExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.ISectionExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            Section = (EdFi.Section) value;
        }
    }
}
// Aggregate: SectionDeliveryDescriptor

namespace EdFi.Ods.Entities.NHibernate.SectionDeliveryDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.SectionDeliveryDescriptor table of the SectionDeliveryDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class SectionDeliveryDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.ISectionDeliveryDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int SectionDeliveryDescriptorId 
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
            keyValues.Add("SectionDeliveryDescriptorId", SectionDeliveryDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.ISectionDeliveryDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.ISectionDeliveryDescriptor) target, null);
        }

    }
}
// Aggregate: SpecialEducationProgramDescriptor

namespace EdFi.Ods.Entities.NHibernate.SpecialEducationProgramDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.SpecialEducationProgramDescriptor table of the SpecialEducationProgramDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class SpecialEducationProgramDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.ISpecialEducationProgramDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int SpecialEducationProgramDescriptorId 
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
            keyValues.Add("SpecialEducationProgramDescriptorId", SpecialEducationProgramDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.ISpecialEducationProgramDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.ISpecialEducationProgramDescriptor) target, null);
        }

    }
}
// Aggregate: StudentDisciplineIncidentBehaviorAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentDisciplineIncidentBehaviorAssociationAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.StudentDisciplineIncidentBehaviorAssociationExtension table of the StudentDisciplineIncidentBehaviorAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentDisciplineIncidentBehaviorAssociationExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentDisciplineIncidentBehaviorAssociationExtension()
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
        public virtual EdFi.StudentDisciplineIncidentBehaviorAssociation StudentDisciplineIncidentBehaviorAssociation { get; set; }

        Entities.Common.EdFi.IStudentDisciplineIncidentBehaviorAssociation IStudentDisciplineIncidentBehaviorAssociationExtension.StudentDisciplineIncidentBehaviorAssociation
        {
            get { return StudentDisciplineIncidentBehaviorAssociation; }
            set { StudentDisciplineIncidentBehaviorAssociation = (EdFi.StudentDisciplineIncidentBehaviorAssociation) value; }
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
        public virtual bool? GunFreeSchoolViolation  { get; set; }

        [Key(2)]
        public virtual bool? ReferralToLawEnforcement  { get; set; }

        [Key(3)]
        public virtual bool? SchoolRelatedArrestIndicator  { get; set; }

        [Key(4)]
        public virtual bool? SeriousBodilyInjury  { get; set; }

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
            var keyValues = (StudentDisciplineIncidentBehaviorAssociation as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            StudentDisciplineIncidentBehaviorAssociation = (EdFi.StudentDisciplineIncidentBehaviorAssociation) value;
        }
    }
}
// Aggregate: StudentEarlyLearningProgramAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentEarlyLearningProgramAssociationAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.StudentEarlyLearningProgramAssociation table of the StudentEarlyLearningProgramAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentEarlyLearningProgramAssociation : GeneralStudentProgramAssociationAggregate.EdFi.GeneralStudentProgramAssociation,
        Entities.Common.NE.IStudentEarlyLearningProgramAssociation, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public StudentEarlyLearningProgramAssociation()
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
        [DomainSignature]
        [IgnoreMember]
        public override DateTime BeginDate  { get; set; }

        [DomainSignature]
        [IgnoreMember]
        public override long EducationOrganizationId  { get; set; }

        [DomainSignature]
        [IgnoreMember]
        public override long ProgramEducationOrganizationId  { get; set; }

        [DomainSignature]
        [IgnoreMember]
        public override string ProgramName  { get; set; }

        [DomainSignature]
        [IgnoreMember]
        public override int ProgramTypeDescriptorId 
        {
            get
            {
                if (_programTypeDescriptorId == default(int))
                {
                    _programTypeDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ProgramTypeDescriptor", _programTypeDescriptor);
                }

                return _programTypeDescriptorId;
            } 
            set
            {
                _programTypeDescriptorId = value;
                _programTypeDescriptor = null;
            }
        }

        private int _programTypeDescriptorId;
        private string _programTypeDescriptor;

        [IgnoreMember]
        public override string ProgramTypeDescriptor
        {
            get
            {
                if (_programTypeDescriptor == null)
                    _programTypeDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ProgramTypeDescriptor", _programTypeDescriptorId);
                    
                return _programTypeDescriptor;
            }
            set
            {
                _programTypeDescriptor = value;
                _programTypeDescriptorId = default(int);
            }
        }

        [Display(Name="StudentUniqueId")][DomainSignature]
        [IgnoreMember]
        public override int StudentUSI 
        {
            get
            {
                if (_studentUSI == default(int) && _studentUniqueId != null)
                {
                    if (GeneratedArtifactStaticDependencies.UsiLookupsByUniqueIdContextProvider.Get().UsiByUniqueIdByPersonType.TryGetValue("Student", out var usiByUniqueId)
                        && usiByUniqueId.TryGetValue(_studentUniqueId, out var usi))
                    {
                        _studentUSI = usi;
                    }
                }

                return _studentUSI;
            } 
            set
            {
                _studentUSI = value;
                GeneratedArtifactStaticDependencies.UniqueIdLookupsByUsiContextProvider.Get().AddLookup("Student", value);
            }
        }

        private int _studentUSI;
        private string _studentUniqueId;

        [IgnoreMember]
        public override string StudentUniqueId
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
            }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        DateTime? IGeneralStudentProgramAssociation.EndDate
        {
            get { return EndDate; }
            set { EndDate = value; }
        }
        string IGeneralStudentProgramAssociation.ReasonExitedDescriptor
        {
            get { return ReasonExitedDescriptor; }
            set { ReasonExitedDescriptor = value; }
        }
        bool? IGeneralStudentProgramAssociation.ServedOutsideOfRegularSession
        {
            get { return ServedOutsideOfRegularSession; }
            set { ServedOutsideOfRegularSession = value; }
        }
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(19)]
        public virtual int? EarlyLearningSettingDescriptorId 
        {
            get
            {
                if (_earlyLearningSettingDescriptorId == default(int?))
                {
                    _earlyLearningSettingDescriptorId = string.IsNullOrWhiteSpace(_earlyLearningSettingDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("EarlyLearningSettingDescriptor", _earlyLearningSettingDescriptor);
                }

                return _earlyLearningSettingDescriptorId;
            } 
            set
            {
                _earlyLearningSettingDescriptorId = value;
                _earlyLearningSettingDescriptor = null;
            }
        }

        private int? _earlyLearningSettingDescriptorId;
        private string _earlyLearningSettingDescriptor;

        [IgnoreMember]
        public virtual string EarlyLearningSettingDescriptor
        {
            get
            {
                if (_earlyLearningSettingDescriptor == null)
                    _earlyLearningSettingDescriptor = _earlyLearningSettingDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("EarlyLearningSettingDescriptor", _earlyLearningSettingDescriptorId.Value);
                    
                return _earlyLearningSettingDescriptor;
            }
            set
            {
                _earlyLearningSettingDescriptor = value;
                _earlyLearningSettingDescriptorId = default(int?);
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
                { "EarlyLearningSettingDescriptor", new LookupColumnDetails { PropertyName = "EarlyLearningSettingDescriptorId", LookupTypeName = "EarlyLearningSettingDescriptor"} },
                { "ProgramTypeDescriptor", new LookupColumnDetails { PropertyName = "ProgramTypeDescriptorId", LookupTypeName = "ProgramTypeDescriptor"} },
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
            keyValues.Add("EducationOrganizationId", EducationOrganizationId);
            keyValues.Add("ProgramEducationOrganizationId", ProgramEducationOrganizationId);
            keyValues.Add("ProgramName", ProgramName);
            keyValues.Add("ProgramTypeDescriptorId", ProgramTypeDescriptorId);
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
            return this.SynchronizeTo((Entities.Common.NE.IStudentEarlyLearningProgramAssociation)target);
        }

        void IMappable.Map(object target)
        {
            this.MapDerivedTo((Entities.Common.NE.IStudentEarlyLearningProgramAssociation) target, null);
        }

    }
}
// Aggregate: StudentEducationOrganizationAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentEducationOrganizationAssociationAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.StudentEducationOrganizationAssociationExtension table of the StudentEducationOrganizationAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentEducationOrganizationAssociationExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.IStudentEducationOrganizationAssociationExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentEducationOrganizationAssociationExtension()
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
        public virtual EdFi.StudentEducationOrganizationAssociation StudentEducationOrganizationAssociation { get; set; }

        Entities.Common.EdFi.IStudentEducationOrganizationAssociation IStudentEducationOrganizationAssociationExtension.StudentEducationOrganizationAssociation
        {
            get { return StudentEducationOrganizationAssociation; }
            set { StudentEducationOrganizationAssociation = (EdFi.StudentEducationOrganizationAssociation) value; }
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
        public virtual int? ImmigrantIndicatorDescriptorId 
        {
            get
            {
                if (_immigrantIndicatorDescriptorId == default(int?))
                {
                    _immigrantIndicatorDescriptorId = string.IsNullOrWhiteSpace(_immigrantIndicatorDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ImmigrantIndicatorDescriptor", _immigrantIndicatorDescriptor);
                }

                return _immigrantIndicatorDescriptorId;
            } 
            set
            {
                _immigrantIndicatorDescriptorId = value;
                _immigrantIndicatorDescriptor = null;
            }
        }

        private int? _immigrantIndicatorDescriptorId;
        private string _immigrantIndicatorDescriptor;

        [IgnoreMember]
        public virtual string ImmigrantIndicatorDescriptor
        {
            get
            {
                if (_immigrantIndicatorDescriptor == null)
                    _immigrantIndicatorDescriptor = _immigrantIndicatorDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ImmigrantIndicatorDescriptor", _immigrantIndicatorDescriptorId.Value);
                    
                return _immigrantIndicatorDescriptor;
            }
            set
            {
                _immigrantIndicatorDescriptor = value;
                _immigrantIndicatorDescriptorId = default(int?);
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
                { "ImmigrantIndicatorDescriptor", new LookupColumnDetails { PropertyName = "ImmigrantIndicatorDescriptorId", LookupTypeName = "ImmigrantIndicatorDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (StudentEducationOrganizationAssociation as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.IStudentEducationOrganizationAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IStudentEducationOrganizationAssociationExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            StudentEducationOrganizationAssociation = (EdFi.StudentEducationOrganizationAssociation) value;
        }
    }
}
// Aggregate: StudentLanguageInstructionProgramAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentLanguageInstructionProgramAssociationAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.StudentLanguageInstructionProgramAssociationExtension table of the StudentLanguageInstructionProgramAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentLanguageInstructionProgramAssociationExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentLanguageInstructionProgramAssociationExtension()
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
        public virtual EdFi.StudentLanguageInstructionProgramAssociation StudentLanguageInstructionProgramAssociation { get; set; }

        Entities.Common.EdFi.IStudentLanguageInstructionProgramAssociation IStudentLanguageInstructionProgramAssociationExtension.StudentLanguageInstructionProgramAssociation
        {
            get { return StudentLanguageInstructionProgramAssociation; }
            set { StudentLanguageInstructionProgramAssociation = (EdFi.StudentLanguageInstructionProgramAssociation) value; }
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
        public virtual bool? DismissedViaIEPReview  { get; set; }

        [Key(2)]
        public virtual bool? RedesignatedEnglishFluent  { get; set; }

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
            var keyValues = (StudentLanguageInstructionProgramAssociation as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            StudentLanguageInstructionProgramAssociation = (EdFi.StudentLanguageInstructionProgramAssociation) value;
        }
    }
}
// Aggregate: StudentSchoolAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentSchoolAssociationAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.StudentSchoolAssociationExtension table of the StudentSchoolAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentSchoolAssociationExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.IStudentSchoolAssociationExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentSchoolAssociationExtension()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _expectedHighSchoolOfGraduationSchoolReferenceData;

        private bool ExpectedHighSchoolOfGraduationSchoolReferenceDataIsProxied()
        {
            return _expectedHighSchoolOfGraduationSchoolReferenceData != null 
                && _expectedHighSchoolOfGraduationSchoolReferenceData.GetType() != typeof(NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ExpectedHighSchoolOfGraduationSchoolReferenceData
        {
            get => _expectedHighSchoolOfGraduationSchoolReferenceData;
            set
            {
                _expectedHighSchoolOfGraduationSchoolReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !ExpectedHighSchoolOfGraduationSchoolReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(1)]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ExpectedHighSchoolOfGraduationSchoolSerializedReferenceData { get => _expectedHighSchoolOfGraduationSchoolSerializedReferenceData; set { if (value != null) _expectedHighSchoolOfGraduationSchoolSerializedReferenceData = value; } }
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _expectedHighSchoolOfGraduationSchoolSerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the ExpectedHighSchoolOfGraduationSchool resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ExpectedHighSchoolOfGraduationSchoolResourceId
        {
            get
            {
                return ExpectedHighSchoolOfGraduationSchoolReferenceDataIsProxied()
                    ? (ExpectedHighSchoolOfGraduationSchoolSerializedReferenceData ?? ExpectedHighSchoolOfGraduationSchoolReferenceData)?.Id
                    : (ExpectedHighSchoolOfGraduationSchoolReferenceData ?? ExpectedHighSchoolOfGraduationSchoolSerializedReferenceData)?.Id;
            }
            set { if (ExpectedHighSchoolOfGraduationSchoolSerializedReferenceData?.IsFullyDefined() == true) ExpectedHighSchoolOfGraduationSchoolSerializedReferenceData.Id = value; }
        }

        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _reportingSchoolReferenceData;

        private bool ReportingSchoolReferenceDataIsProxied()
        {
            return _reportingSchoolReferenceData != null 
                && _reportingSchoolReferenceData.GetType() != typeof(NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ReportingSchoolReferenceData
        {
            get => _reportingSchoolReferenceData;
            set
            {
                _reportingSchoolReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !ReportingSchoolReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(2)]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ReportingSchoolSerializedReferenceData { get => _reportingSchoolSerializedReferenceData; set { if (value != null) _reportingSchoolSerializedReferenceData = value; } }
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _reportingSchoolSerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the ReportingSchool resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ReportingSchoolResourceId
        {
            get
            {
                return ReportingSchoolReferenceDataIsProxied()
                    ? (ReportingSchoolSerializedReferenceData ?? ReportingSchoolReferenceData)?.Id
                    : (ReportingSchoolReferenceData ?? ReportingSchoolSerializedReferenceData)?.Id;
            }
            set { if (ReportingSchoolSerializedReferenceData?.IsFullyDefined() == true) ReportingSchoolSerializedReferenceData.Id = value; }
        }

        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _residentLocalEducationAgencyReferenceData;

        private bool ResidentLocalEducationAgencyReferenceDataIsProxied()
        {
            return _residentLocalEducationAgencyReferenceData != null 
                && _residentLocalEducationAgencyReferenceData.GetType() != typeof(NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ResidentLocalEducationAgencyReferenceData
        {
            get => _residentLocalEducationAgencyReferenceData;
            set
            {
                _residentLocalEducationAgencyReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !ResidentLocalEducationAgencyReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(3)]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ResidentLocalEducationAgencySerializedReferenceData { get => _residentLocalEducationAgencySerializedReferenceData; set { if (value != null) _residentLocalEducationAgencySerializedReferenceData = value; } }
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _residentLocalEducationAgencySerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the ResidentLocalEducationAgency resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ResidentLocalEducationAgencyResourceId
        {
            get
            {
                return ResidentLocalEducationAgencyReferenceDataIsProxied()
                    ? (ResidentLocalEducationAgencySerializedReferenceData ?? ResidentLocalEducationAgencyReferenceData)?.Id
                    : (ResidentLocalEducationAgencyReferenceData ?? ResidentLocalEducationAgencySerializedReferenceData)?.Id;
            }
            set { if (ResidentLocalEducationAgencySerializedReferenceData?.IsFullyDefined() == true) ResidentLocalEducationAgencySerializedReferenceData.Id = value; }
        }

        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _residentSchoolReferenceData;

        private bool ResidentSchoolReferenceDataIsProxied()
        {
            return _residentSchoolReferenceData != null 
                && _residentSchoolReferenceData.GetType() != typeof(NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData);
        }

        [IgnoreMember]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ResidentSchoolReferenceData
        {
            get => _residentSchoolReferenceData;
            set
            {
                _residentSchoolReferenceData = value;

                if (value != null && GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled
                    // NHibernate will proxy this object reference if it is not hydrated through an outer join in the query
                    && !ResidentSchoolReferenceDataIsProxied())
                {
                    // We've encountered an NHibernate hydrated reference data meaning we've already got all reference data needed
                    GeneratedArtifactStaticDependencies.ReferenceDataLookupContextProvider.Get()?.Suppress();
                }
            }
        }

        [Key(4)]
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ResidentSchoolSerializedReferenceData { get => _residentSchoolSerializedReferenceData; set { if (value != null) _residentSchoolSerializedReferenceData = value; } }
        private NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData _residentSchoolSerializedReferenceData;

        /// <summary>
        /// A property implementation whose getter allows the ResidentSchool resource identifier value to be mapped to the resource reference,
        /// and whose setter is used with serialized data and links features to signal need to resolve reference data from the ODS.
        /// </summary>
        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ResidentSchoolResourceId
        {
            get
            {
                return ResidentSchoolReferenceDataIsProxied()
                    ? (ResidentSchoolSerializedReferenceData ?? ResidentSchoolReferenceData)?.Id
                    : (ResidentSchoolReferenceData ?? ResidentSchoolSerializedReferenceData)?.Id;
            }
            set { if (ResidentSchoolSerializedReferenceData?.IsFullyDefined() == true) ResidentSchoolSerializedReferenceData.Id = value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, IgnoreMember]
        public virtual EdFi.StudentSchoolAssociation StudentSchoolAssociation { get; set; }

        Entities.Common.EdFi.IStudentSchoolAssociation IStudentSchoolAssociationExtension.StudentSchoolAssociation
        {
            get { return StudentSchoolAssociation; }
            set { StudentSchoolAssociation = (EdFi.StudentSchoolAssociation) value; }
        }

        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        [Key(5)]
        public virtual long? ExpectedHighSchoolOfGraduationSchoolId 
        {
            get => _expectedHighSchoolOfGraduationSchoolId;
            set
            {
                _expectedHighSchoolOfGraduationSchoolId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ExpectedHighSchoolOfGraduationSchoolSerializedReferenceData ??= new NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData(true);
                    ExpectedHighSchoolOfGraduationSchoolSerializedReferenceData.EducationOrganizationId = value ?? default;
                }
            }
        }

        private long? _expectedHighSchoolOfGraduationSchoolId;

        [Key(6)]
        public virtual long ReportingSchoolId 
        {
            get => _reportingSchoolId;
            set
            {
                _reportingSchoolId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ReportingSchoolSerializedReferenceData ??= new NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData(true);
                    ReportingSchoolSerializedReferenceData.EducationOrganizationId = value;
                }
            }
        }

        private long _reportingSchoolId;

        [Key(7)]
        public virtual long ResidentLocalEducationAgencyId 
        {
            get => _residentLocalEducationAgencyId;
            set
            {
                _residentLocalEducationAgencyId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ResidentLocalEducationAgencySerializedReferenceData ??= new NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData(true);
                    ResidentLocalEducationAgencySerializedReferenceData.EducationOrganizationId = value;
                }
            }
        }

        private long _residentLocalEducationAgencyId;

        [Key(8)]
        public virtual long? ResidentSchoolId 
        {
            get => _residentSchoolId;
            set
            {
                _residentSchoolId = value;

                if (GeneratedArtifactStaticDependencies.SerializedDataEnabled && GeneratedArtifactStaticDependencies.ResourceLinksEnabled)
                {
                    ResidentSchoolSerializedReferenceData ??= new NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData(true);
                    ResidentSchoolSerializedReferenceData.EducationOrganizationId = value ?? default;
                }
            }
        }

        private long? _residentSchoolId;

        [Key(9)]
        public virtual decimal? StudentDaysEnrolled  { get; set; }

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
            var keyValues = (StudentSchoolAssociation as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.IStudentSchoolAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IStudentSchoolAssociationExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            StudentSchoolAssociation = (EdFi.StudentSchoolAssociation) value;
        }
    }
}
// Aggregate: StudentSpecialEducationProgramAssociation

namespace EdFi.Ods.Entities.NHibernate.StudentSpecialEducationProgramAssociationAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.StudentSpecialEducationProgramAssociationExtension table of the StudentSpecialEducationProgramAssociation aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class StudentSpecialEducationProgramAssociationExtension : EntityWithCompositeKey, IChildEntity,
        Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentSpecialEducationProgramAssociationExtension()
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
        public virtual EdFi.StudentSpecialEducationProgramAssociation StudentSpecialEducationProgramAssociation { get; set; }

        Entities.Common.EdFi.IStudentSpecialEducationProgramAssociation IStudentSpecialEducationProgramAssociationExtension.StudentSpecialEducationProgramAssociation
        {
            get { return StudentSpecialEducationProgramAssociation; }
            set { StudentSpecialEducationProgramAssociation = (EdFi.StudentSpecialEducationProgramAssociation) value; }
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
        public virtual DateTime? InitialSpecialEducationEntryDate 
        {
            get { return _initialSpecialEducationEntryDate; }
            set 
            { 
                //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
                if(value == null)
                {
                    _initialSpecialEducationEntryDate = null;
                } else
                {
                    var given = (DateTime) value;
                    _initialSpecialEducationEntryDate = new DateTime(given.Year, given.Month, given.Day);
                }
            }
        }

        private DateTime? _initialSpecialEducationEntryDate;

        [Key(2)]
        public virtual int? PartCTransitionDelayReasonDescriptorId 
        {
            get
            {
                if (_partCTransitionDelayReasonDescriptorId == default(int?))
                {
                    _partCTransitionDelayReasonDescriptorId = string.IsNullOrWhiteSpace(_partCTransitionDelayReasonDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("PartCTransitionDelayReasonDescriptor", _partCTransitionDelayReasonDescriptor);
                }

                return _partCTransitionDelayReasonDescriptorId;
            } 
            set
            {
                _partCTransitionDelayReasonDescriptorId = value;
                _partCTransitionDelayReasonDescriptor = null;
            }
        }

        private int? _partCTransitionDelayReasonDescriptorId;
        private string _partCTransitionDelayReasonDescriptor;

        [IgnoreMember]
        public virtual string PartCTransitionDelayReasonDescriptor
        {
            get
            {
                if (_partCTransitionDelayReasonDescriptor == null)
                    _partCTransitionDelayReasonDescriptor = _partCTransitionDelayReasonDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("PartCTransitionDelayReasonDescriptor", _partCTransitionDelayReasonDescriptorId.Value);
                    
                return _partCTransitionDelayReasonDescriptor;
            }
            set
            {
                _partCTransitionDelayReasonDescriptor = value;
                _partCTransitionDelayReasonDescriptorId = default(int?);
            }
        }

        [Key(3)]
        public virtual int? PlacementTypeDescriptorId 
        {
            get
            {
                if (_placementTypeDescriptorId == default(int?))
                {
                    _placementTypeDescriptorId = string.IsNullOrWhiteSpace(_placementTypeDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("PlacementTypeDescriptor", _placementTypeDescriptor);
                }

                return _placementTypeDescriptorId;
            } 
            set
            {
                _placementTypeDescriptorId = value;
                _placementTypeDescriptor = null;
            }
        }

        private int? _placementTypeDescriptorId;
        private string _placementTypeDescriptor;

        [IgnoreMember]
        public virtual string PlacementTypeDescriptor
        {
            get
            {
                if (_placementTypeDescriptor == null)
                    _placementTypeDescriptor = _placementTypeDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("PlacementTypeDescriptor", _placementTypeDescriptorId.Value);
                    
                return _placementTypeDescriptor;
            }
            set
            {
                _placementTypeDescriptor = value;
                _placementTypeDescriptorId = default(int?);
            }
        }

        [Key(4)]
        public virtual int? SpecialEducationProgramDescriptorId 
        {
            get
            {
                if (_specialEducationProgramDescriptorId == default(int?))
                {
                    _specialEducationProgramDescriptorId = string.IsNullOrWhiteSpace(_specialEducationProgramDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("SpecialEducationProgramDescriptor", _specialEducationProgramDescriptor);
                }

                return _specialEducationProgramDescriptorId;
            } 
            set
            {
                _specialEducationProgramDescriptorId = value;
                _specialEducationProgramDescriptor = null;
            }
        }

        private int? _specialEducationProgramDescriptorId;
        private string _specialEducationProgramDescriptor;

        [IgnoreMember]
        public virtual string SpecialEducationProgramDescriptor
        {
            get
            {
                if (_specialEducationProgramDescriptor == null)
                    _specialEducationProgramDescriptor = _specialEducationProgramDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("SpecialEducationProgramDescriptor", _specialEducationProgramDescriptorId.Value);
                    
                return _specialEducationProgramDescriptor;
            }
            set
            {
                _specialEducationProgramDescriptor = value;
                _specialEducationProgramDescriptorId = default(int?);
            }
        }

        [Key(5)]
        public virtual bool? ToTakeAlternateAssessment  { get; set; }

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
                { "PartCTransitionDelayReasonDescriptor", new LookupColumnDetails { PropertyName = "PartCTransitionDelayReasonDescriptorId", LookupTypeName = "PartCTransitionDelayReasonDescriptor"} },
                { "PlacementTypeDescriptor", new LookupColumnDetails { PropertyName = "PlacementTypeDescriptorId", LookupTypeName = "PlacementTypeDescriptor"} },
                { "SpecialEducationProgramDescriptor", new LookupColumnDetails { PropertyName = "SpecialEducationProgramDescriptorId", LookupTypeName = "SpecialEducationProgramDescriptor"} },
            };

        Dictionary<string, LookupColumnDetails> IHasLookupColumnPropertyMap.IdPropertyByLookupProperty
        {
            get { return _idPropertyByLookupProperty; }
        }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Get parent key values
            var keyValues = (StudentSpecialEducationProgramAssociation as IHasPrimaryKeyValues)?.GetPrimaryKeyValues() ?? new OrderedDictionary();

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
            return this.SynchronizeTo((Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            StudentSpecialEducationProgramAssociation = (EdFi.StudentSpecialEducationProgramAssociation) value;
        }
    }
}
// Aggregate: UnilateralRemovalDescriptor

namespace EdFi.Ods.Entities.NHibernate.UnilateralRemovalDescriptorAggregate.NE
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the ne.UnilateralRemovalDescriptor table of the UnilateralRemovalDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("ne")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class UnilateralRemovalDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.NE.IUnilateralRemovalDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int UnilateralRemovalDescriptorId 
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
            keyValues.Add("UnilateralRemovalDescriptorId", UnilateralRemovalDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.NE.IUnilateralRemovalDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.NE.IUnilateralRemovalDescriptor) target, null);
        }

    }
}
