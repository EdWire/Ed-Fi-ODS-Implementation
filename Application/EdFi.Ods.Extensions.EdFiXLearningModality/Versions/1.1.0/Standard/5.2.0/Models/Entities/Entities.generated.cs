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
using EdFi.Ods.Entities.Common.EdFiXLearningModality;
using Newtonsoft.Json;
using MessagePack;
using KeyAttribute = MessagePack.KeyAttribute;

// Aggregate: ModalityTimeTypeDescriptor

namespace EdFi.Ods.Entities.NHibernate.ModalityTimeTypeDescriptorAggregate.EdFiXLearningModality
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixlearningmodality.ModalityTimeTypeDescriptor table of the ModalityTimeTypeDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("edfixlearningmodality")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ModalityTimeTypeDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int ModalityTimeTypeDescriptorId 
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
            keyValues.Add("ModalityTimeTypeDescriptorId", ModalityTimeTypeDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXLearningModality.IModalityTimeTypeDescriptor) target, null);
        }

    }
}
// Aggregate: ModalityTypeDescriptor

namespace EdFi.Ods.Entities.NHibernate.ModalityTypeDescriptorAggregate.EdFiXLearningModality
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixlearningmodality.ModalityTypeDescriptor table of the ModalityTypeDescriptor aggregate in the ODS database.
    /// </summary>
    [Schema("edfixlearningmodality")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ModalityTypeDescriptor : DescriptorAggregate.EdFi.Descriptor,
        Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap, IEdFiDescriptor
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
        public virtual int ModalityTypeDescriptorId 
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
            keyValues.Add("ModalityTypeDescriptorId", ModalityTypeDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXLearningModality.IModalityTypeDescriptor) target, null);
        }

    }
}
// Aggregate: Program

namespace EdFi.Ods.Entities.NHibernate.ProgramAggregate.EdFiXLearningModality
{
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixlearningmodality.ProgramLearningModality table of the Program aggregate in the ODS database.
    /// </summary>
    [Schema("edfixlearningmodality")]
    [ExcludeFromCodeCoverage]
    [MessagePackObject]
    public class ProgramLearningModality : EntityWithCompositeKey, IChildEntity,
        Entities.Common.EdFiXLearningModality.IProgramLearningModality, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public ProgramLearningModality()
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

        Entities.Common.EdFiXLearningModality.IProgramExtension IProgramLearningModality.ProgramExtension
        {
            get { return (IProgramExtension) Program.Extensions["EdFiXLearningModality"]; }
            set { Program.Extensions["EdFiXLearningModality"] = value; }
        }

        [DomainSignature]
        [Key(1)]
        public virtual int ModalityTypeDescriptorId 
        {
            get
            {
                if (_modalityTypeDescriptorId == default(int))
                {
                    _modalityTypeDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ModalityTypeDescriptor", _modalityTypeDescriptor);
                }

                return _modalityTypeDescriptorId;
            } 
            set
            {
                _modalityTypeDescriptorId = value;
                _modalityTypeDescriptor = null;
            }
        }

        private int _modalityTypeDescriptorId;
        private string _modalityTypeDescriptor;

        [IgnoreMember]
        public virtual string ModalityTypeDescriptor
        {
            get
            {
                if (_modalityTypeDescriptor == null)
                    _modalityTypeDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ModalityTypeDescriptor", _modalityTypeDescriptorId);
                    
                return _modalityTypeDescriptor;
            }
            set
            {
                _modalityTypeDescriptor = value;
                _modalityTypeDescriptorId = default(int);
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
        [Key(2)]
        public virtual decimal ModalityTime  { get; set; }

        [Key(3)]
        public virtual int ModalityTimeTypeDescriptorId 
        {
            get
            {
                if (_modalityTimeTypeDescriptorId == default(int))
                {
                    _modalityTimeTypeDescriptorId = GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("ModalityTimeTypeDescriptor", _modalityTimeTypeDescriptor);
                }

                return _modalityTimeTypeDescriptorId;
            } 
            set
            {
                _modalityTimeTypeDescriptorId = value;
                _modalityTimeTypeDescriptor = null;
            }
        }

        private int _modalityTimeTypeDescriptorId;
        private string _modalityTimeTypeDescriptor;

        [IgnoreMember]
        public virtual string ModalityTimeTypeDescriptor
        {
            get
            {
                if (_modalityTimeTypeDescriptor == null)
                    _modalityTimeTypeDescriptor = GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("ModalityTimeTypeDescriptor", _modalityTimeTypeDescriptorId);
                    
                return _modalityTimeTypeDescriptor;
            }
            set
            {
                _modalityTimeTypeDescriptor = value;
                _modalityTimeTypeDescriptorId = default(int);
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
                { "ModalityTimeTypeDescriptor", new LookupColumnDetails { PropertyName = "ModalityTimeTypeDescriptorId", LookupTypeName = "ModalityTimeTypeDescriptor"} },
                { "ModalityTypeDescriptor", new LookupColumnDetails { PropertyName = "ModalityTypeDescriptorId", LookupTypeName = "ModalityTypeDescriptor"} },
                { "ProgramTypeDescriptor", new LookupColumnDetails { PropertyName = "ProgramTypeDescriptorId", LookupTypeName = "ProgramTypeDescriptor"} },
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
            keyValues.Add("ModalityTypeDescriptorId", ModalityTypeDescriptorId);

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
            return this.SynchronizeTo((Entities.Common.EdFiXLearningModality.IProgramLearningModality)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXLearningModality.IProgramLearningModality) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            Program = (EdFi.Program) value;
        }
    }

    /// <summary>
    /// An implicitly created entity extension class to enable entity mapping and sychronization behavior for the Program entity's aggregate extensions.
    /// </summary>
    [ExcludeFromCodeCoverage][MessagePackObject]
    public class ProgramExtension : IProgramExtension, IChildEntity, IImplicitEntityExtension, IHasPrimaryKeyValues
    {
        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private EdFi.Program _program;

        Common.EdFi.IProgram IProgramExtension.Program
        {
            get { return _program; }
            set { _program = (EdFi.Program) value; }
        }

        private EdFi.Program Program
        {
            get { return (this as IProgramExtension).Program as EdFi.Program; }
        }

        bool IImplicitEntityExtension.IsEmpty()
        {
            return (true
                && ((IList<object>) _program.AggregateExtensions["EdFiXLearningModality_ProgramLearningModalities"]).Count == 0
            );
        }

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Collections
        // -------------------------------------------------------------
        ICollection<IProgramLearningModality> IProgramExtension.ProgramLearningModalities
        {
            get
            {
                var sourceList =  new ContravariantCollectionAdapter<object, ProgramLearningModality>((IList<object>) _program.AggregateExtensions["EdFiXLearningModality_ProgramLearningModalities"]);

                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (ProgramLearningModality item in sourceList)
                    if (item.Program == null)
                        item.Program = this.Program;
                // -------------------------------------------------------------

                var adaptedList = new CovariantCollectionAdapter<IProgramLearningModality, ProgramLearningModality>(sourceList);

                return adaptedList;
            }
            set
            {
                _program.AggregateExtensions["EdFiXLearningModality_ProgramLearningModalities"] = value;
            }
        }
        // -------------------------------------------------------------

        void IMappable.Map(object target)
        {
            this.MapTo((IProgramExtension) target, null);
        }

        bool ISynchronizable.Synchronize(object target)
        {
            return this.SynchronizeTo((IProgramExtension) target);
        }

        void IChildEntity.SetParent(object value)
        {
            _program = (EdFi.Program)value;
        }

        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            return (_program as IHasPrimaryKeyValues).GetPrimaryKeyValues();
        }

        void IGetByExample.SuspendReferenceAssignmentCheck() { }
    }
}
