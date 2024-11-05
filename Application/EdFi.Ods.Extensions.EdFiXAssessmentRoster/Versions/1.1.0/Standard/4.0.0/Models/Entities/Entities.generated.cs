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
using EdFi.Ods.Entities.Common.EdFiXAssessmentRoster;
using Newtonsoft.Json;

// Aggregate: AssessmentAdministration

namespace EdFi.Ods.Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster
{
    /// <summary>
    /// Represents a read-only reference to the <see cref="AssessmentAdministration"/> entity.
    /// </summary>
    public class AssessmentAdministrationReferenceData : IHasPrimaryKeyValues
    {
        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        public virtual string AdministrationIdentifier { get; set; }
        public virtual string AssessmentIdentifier { get; set; }
        public virtual int AssigningEducationOrganizationId { get; set; }
        public virtual string Namespace { get; set; }
        // -------------------------------------------------------------

        /// <summary>
        /// The id of the referenced entity (used as the resource identifier in the API).
        /// </summary>
        public virtual Guid? Id { get; set; }

        /// <summary>
        /// Gets and sets the discriminator value which identifies the concrete sub-type of the referenced entity
        /// when that entity has been derived; otherwise <b>null</b>.
        /// </summary>
        public virtual string Discriminator { get; set; }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("AdministrationIdentifier", AdministrationIdentifier);
            keyValues.Add("AssessmentIdentifier", AssessmentIdentifier);
            keyValues.Add("AssigningEducationOrganizationId", AssigningEducationOrganizationId);
            keyValues.Add("Namespace", Namespace);

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
    /// A class which represents the edfixassessmentroster.AssessmentAdministration table of the AssessmentAdministration aggregate in the ODS database.
    /// </summary>
    [Schema("edfixassessmentroster")]
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministration : AggregateRootWithCompositeKey,
        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public AssessmentAdministration()
        {
            AssessmentAdministrationContacts = new HashSet<AssessmentAdministrationContact>();
            AssessmentAdministrationPeriods = new HashSet<AssessmentAdministrationPeriod>();
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        public virtual string AdministrationIdentifier  { get; set; }
        [DomainSignature]
        public virtual string AssessmentIdentifier  { get; set; }
        [DomainSignature]
        public virtual int AssigningEducationOrganizationId  { get; set; }
        [DomainSignature]
        public virtual string Namespace  { get; set; }
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

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        public virtual NHibernate.AssessmentAggregate.EdFi.AssessmentReferenceData AssessmentReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the Assessment discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentDiscriminator
        {
            get { return AssessmentReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the Assessment resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentResourceId
        {
            get { return AssessmentReferenceData?.Id; }
            set { }
        }

        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData AssigningEducationOrganizationReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the AssigningEducationOrganization discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssigningEducationOrganizationDiscriminator
        {
            get { return AssigningEducationOrganizationReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the AssigningEducationOrganization resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssigningEducationOrganizationResourceId
        {
            get { return AssigningEducationOrganizationReferenceData?.Id; }
            set { }
        }

        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------

        private ICollection<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationContact> _assessmentAdministrationContacts;
        private ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact> _assessmentAdministrationContactsCovariant;
        public virtual ICollection<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationContact> AssessmentAdministrationContacts
        {
            get
            {
                // -------------------------------------------------------------
                // On-demand deserialization logic to attach reverse reference of children
                // due to ServiceStack's lack of [OnDeserialized] attribute support.
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _assessmentAdministrationContacts)
                    if (item.AssessmentAdministration == null)
                        item.AssessmentAdministration = this;
                // -------------------------------------------------------------

                return _assessmentAdministrationContacts;
            }
            set
            {
                _assessmentAdministrationContacts = value;
                _assessmentAdministrationContactsCovariant = new CovariantCollectionAdapter<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact, Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationContact>(value);
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact> Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentAdministrationContacts
        {
            get
            {
                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _assessmentAdministrationContacts)
                    if (item.AssessmentAdministration == null)
                        item.AssessmentAdministration = this;
                // -------------------------------------------------------------

                return _assessmentAdministrationContactsCovariant;
            }
            set
            {
                AssessmentAdministrationContacts = new HashSet<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationContact>(value.Cast<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationContact>());
            }
        }


        private ICollection<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationPeriod> _assessmentAdministrationPeriods;
        private ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod> _assessmentAdministrationPeriodsCovariant;
        public virtual ICollection<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationPeriod> AssessmentAdministrationPeriods
        {
            get
            {
                // -------------------------------------------------------------
                // On-demand deserialization logic to attach reverse reference of children
                // due to ServiceStack's lack of [OnDeserialized] attribute support.
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _assessmentAdministrationPeriods)
                    if (item.AssessmentAdministration == null)
                        item.AssessmentAdministration = this;
                // -------------------------------------------------------------

                return _assessmentAdministrationPeriods;
            }
            set
            {
                _assessmentAdministrationPeriods = value;
                _assessmentAdministrationPeriodsCovariant = new CovariantCollectionAdapter<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod, Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationPeriod>(value);
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod> Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration.AssessmentAdministrationPeriods
        {
            get
            {
                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _assessmentAdministrationPeriods)
                    if (item.AssessmentAdministration == null)
                        item.AssessmentAdministration = this;
                // -------------------------------------------------------------

                return _assessmentAdministrationPeriodsCovariant;
            }
            set
            {
                AssessmentAdministrationPeriods = new HashSet<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationPeriod>(value.Cast<Entities.NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationPeriod>());
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
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("AdministrationIdentifier", AdministrationIdentifier);
            keyValues.Add("AssessmentIdentifier", AssessmentIdentifier);
            keyValues.Add("AssigningEducationOrganizationId", AssigningEducationOrganizationId);
            keyValues.Add("Namespace", Namespace);

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
            return this.SynchronizeTo((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration) target, null);
        }

    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixassessmentroster.AssessmentAdministrationContact table of the AssessmentAdministration aggregate in the ODS database.
    /// </summary>
    [Schema("edfixassessmentroster")]
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationContact : EntityWithCompositeKey, IChildEntity,
        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public AssessmentAdministrationContact()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, JsonIgnore]
        public virtual AssessmentAdministration AssessmentAdministration { get; set; }

        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration IAssessmentAdministrationContact.AssessmentAdministration
        {
            get { return AssessmentAdministration; }
            set { AssessmentAdministration = (AssessmentAdministration) value; }
        }

        [DomainSignature]
        public virtual int EducationOrganizationId  { get; set; }
        [DomainSignature]
        public virtual string ElectronicMailAddress  { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        public virtual string FirstName  { get; set; }
        public virtual string LastSurname  { get; set; }
        public virtual string LoginId  { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData EducationOrganizationReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the EducationOrganization discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact.EducationOrganizationDiscriminator
        {
            get { return EducationOrganizationReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the EducationOrganization resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact.EducationOrganizationResourceId
        {
            get { return EducationOrganizationReferenceData?.Id; }
            set { }
        }

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
            var keyValues = (AssessmentAdministration as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            // Add current key values
            keyValues.Add("EducationOrganizationId", EducationOrganizationId);
            keyValues.Add("ElectronicMailAddress", ElectronicMailAddress);

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
            return this.SynchronizeTo((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationContact) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            AssessmentAdministration = (AssessmentAdministration) value;
        }
    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixassessmentroster.AssessmentAdministrationPeriod table of the AssessmentAdministration aggregate in the ODS database.
    /// </summary>
    [Schema("edfixassessmentroster")]
    [ExcludeFromCodeCoverage]
    public class AssessmentAdministrationPeriod : EntityWithCompositeKey, IChildEntity,
        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public AssessmentAdministrationPeriod()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, JsonIgnore]
        public virtual AssessmentAdministration AssessmentAdministration { get; set; }

        Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministration IAssessmentAdministrationPeriod.AssessmentAdministration
        {
            get { return AssessmentAdministration; }
            set { AssessmentAdministration = (AssessmentAdministration) value; }
        }

        [DomainSignature]
        public virtual DateTime BeginDate 
        {
            get { return _beginDate; }
            //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
            set { _beginDate = new DateTime(value.Year, value.Month, value.Day); }
        }

        private DateTime _beginDate;
        
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
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
        
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Reference Data
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
            var keyValues = (AssessmentAdministration as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            // Add current key values
            keyValues.Add("BeginDate", BeginDate);

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
            return this.SynchronizeTo((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXAssessmentRoster.IAssessmentAdministrationPeriod) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            AssessmentAdministration = (AssessmentAdministration) value;
        }
    }
}
// Aggregate: StudentAssessmentRegistration

namespace EdFi.Ods.Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster
{
    /// <summary>
    /// Represents a read-only reference to the <see cref="StudentAssessmentRegistration"/> entity.
    /// </summary>
    public class StudentAssessmentRegistrationReferenceData : IHasPrimaryKeyValues
    {
        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        public virtual string AdministrationIdentifier { get; set; }
        public virtual string AssessmentIdentifier { get; set; }
        public virtual int AssigningEducationOrganizationId { get; set; }
        public virtual int EducationOrganizationId { get; set; }
        public virtual string Namespace { get; set; }
        public virtual int StudentUSI { get; set; }
        // -------------------------------------------------------------

        /// <summary>
        /// The id of the referenced entity (used as the resource identifier in the API).
        /// </summary>
        public virtual Guid? Id { get; set; }

        /// <summary>
        /// Gets and sets the discriminator value which identifies the concrete sub-type of the referenced entity
        /// when that entity has been derived; otherwise <b>null</b>.
        /// </summary>
        public virtual string Discriminator { get; set; }

        // Provide primary key information
        OrderedDictionary IHasPrimaryKeyValues.GetPrimaryKeyValues()
        {
            // Initialize a new dictionary to hold the key values
            var keyValues = new OrderedDictionary();

            // Add current key values
            keyValues.Add("AdministrationIdentifier", AdministrationIdentifier);
            keyValues.Add("AssessmentIdentifier", AssessmentIdentifier);
            keyValues.Add("AssigningEducationOrganizationId", AssigningEducationOrganizationId);
            keyValues.Add("EducationOrganizationId", EducationOrganizationId);
            keyValues.Add("Namespace", Namespace);
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
    /// A class which represents the edfixassessmentroster.StudentAssessmentRegistration table of the StudentAssessmentRegistration aggregate in the ODS database.
    /// </summary>
    [Schema("edfixassessmentroster")]
    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistration : AggregateRootWithCompositeKey,
        Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentAssessmentRegistration()
        {
            StudentAssessmentRegistrationAssessmentCustomizations = new HashSet<StudentAssessmentRegistrationAssessmentCustomization>();
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature]
        public virtual string AdministrationIdentifier  { get; set; }
        [DomainSignature]
        public virtual string AssessmentIdentifier  { get; set; }
        [DomainSignature]
        public virtual int AssigningEducationOrganizationId  { get; set; }
        [DomainSignature]
        public virtual int EducationOrganizationId  { get; set; }
        [DomainSignature]
        public virtual string Namespace  { get; set; }
        [Display(Name="StudentUniqueId")][DomainSignature]
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
        public virtual DateTime EntryDate 
        {
            get { return _entryDate; }
            //This is only stored as a Date in the DB and NHibernate will retrieve it using the default (local) DateTime.Kind.  We must ensure it is set consistently for any equality/change evaluation.
            set { _entryDate = new DateTime(value.Year, value.Month, value.Day); }
        }

        private DateTime _entryDate;
        
        public virtual int? PlatformTypeDescriptorId 
        {
            get
            {
                if (_platformTypeDescriptorId == default(int?))
                    _platformTypeDescriptorId = string.IsNullOrWhiteSpace(_platformTypeDescriptor) ? default(int?) : GeneratedArtifactStaticDependencies.DescriptorResolver.GetDescriptorId("PlatformTypeDescriptor", _platformTypeDescriptor);

                return _platformTypeDescriptorId;
            } 
            set
            {
                _platformTypeDescriptorId = value;
                _platformTypeDescriptor = null;
            }
        }

        private int? _platformTypeDescriptorId;
        private string _platformTypeDescriptor;

        public virtual string PlatformTypeDescriptor
        {
            get
            {
                if (_platformTypeDescriptor == null)
                    _platformTypeDescriptor = _platformTypeDescriptorId == null ? null : GeneratedArtifactStaticDependencies.DescriptorResolver.GetUri("PlatformTypeDescriptor", _platformTypeDescriptorId.Value);
                    
                return _platformTypeDescriptor;
            }
            set
            {
                _platformTypeDescriptor = value;
                _platformTypeDescriptorId = default(int?);
            }
        }
        public virtual int? ReportingEducationOrganizationId  { get; set; }
        public virtual int SchoolId  { get; set; }
        public virtual int? TestingEducationOrganizationId  { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Reference Data
        // -------------------------------------------------------------
        public virtual NHibernate.AssessmentAdministrationAggregate.EdFiXAssessmentRoster.AssessmentAdministrationReferenceData AssessmentAdministrationReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the AssessmentAdministration discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.AssessmentAdministrationDiscriminator
        {
            get { return AssessmentAdministrationReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the AssessmentAdministration resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.AssessmentAdministrationResourceId
        {
            get { return AssessmentAdministrationReferenceData?.Id; }
            set { }
        }

        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData ReportingEducationOrganizationReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the ReportingEducationOrganization discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.ReportingEducationOrganizationDiscriminator
        {
            get { return ReportingEducationOrganizationReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the ReportingEducationOrganization resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.ReportingEducationOrganizationResourceId
        {
            get { return ReportingEducationOrganizationReferenceData?.Id; }
            set { }
        }

        public virtual NHibernate.StudentEducationOrganizationAssociationAggregate.EdFi.StudentEducationOrganizationAssociationReferenceData StudentEducationOrganizationAssociationReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the StudentEducationOrganizationAssociation discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentEducationOrganizationAssociationDiscriminator
        {
            get { return StudentEducationOrganizationAssociationReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the StudentEducationOrganizationAssociation resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentEducationOrganizationAssociationResourceId
        {
            get { return StudentEducationOrganizationAssociationReferenceData?.Id; }
            set { }
        }

        public virtual NHibernate.StudentSchoolAssociationAggregate.EdFi.StudentSchoolAssociationReferenceData StudentSchoolAssociationReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the StudentSchoolAssociation discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentSchoolAssociationDiscriminator
        {
            get { return StudentSchoolAssociationReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the StudentSchoolAssociation resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentSchoolAssociationResourceId
        {
            get { return StudentSchoolAssociationReferenceData?.Id; }
            set { }
        }

        public virtual NHibernate.EducationOrganizationAggregate.EdFi.EducationOrganizationReferenceData TestingEducationOrganizationReferenceData { get; set; }

        /// <summary>
        /// Read-only property that allows the TestingEducationOrganization discriminator value to be mapped to the resource reference.
        /// </summary>
        string Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.TestingEducationOrganizationDiscriminator
        {
            get { return TestingEducationOrganizationReferenceData?.Discriminator; }
            set { }
        }

        /// <summary>
        /// Read-only property that allows the TestingEducationOrganization resource identifier value to be mapped to the resource reference.
        /// </summary>
        Guid? Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.TestingEducationOrganizationResourceId
        {
            get { return TestingEducationOrganizationReferenceData?.Id; }
            set { }
        }

        // -------------------------------------------------------------

        //=============================================================
        //                          Collections
        // -------------------------------------------------------------

        private ICollection<Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster.StudentAssessmentRegistrationAssessmentCustomization> _studentAssessmentRegistrationAssessmentCustomizations;
        private ICollection<Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization> _studentAssessmentRegistrationAssessmentCustomizationsCovariant;
        public virtual ICollection<Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster.StudentAssessmentRegistrationAssessmentCustomization> StudentAssessmentRegistrationAssessmentCustomizations
        {
            get
            {
                // -------------------------------------------------------------
                // On-demand deserialization logic to attach reverse reference of children
                // due to ServiceStack's lack of [OnDeserialized] attribute support.
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _studentAssessmentRegistrationAssessmentCustomizations)
                    if (item.StudentAssessmentRegistration == null)
                        item.StudentAssessmentRegistration = this;
                // -------------------------------------------------------------

                return _studentAssessmentRegistrationAssessmentCustomizations;
            }
            set
            {
                _studentAssessmentRegistrationAssessmentCustomizations = value;
                _studentAssessmentRegistrationAssessmentCustomizationsCovariant = new CovariantCollectionAdapter<Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization, Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster.StudentAssessmentRegistrationAssessmentCustomization>(value);
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization> Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration.StudentAssessmentRegistrationAssessmentCustomizations
        {
            get
            {
                // -------------------------------------------------------------
                // Back-reference is required by NHibernate for persistence.
                // -------------------------------------------------------------
                foreach (var item in _studentAssessmentRegistrationAssessmentCustomizations)
                    if (item.StudentAssessmentRegistration == null)
                        item.StudentAssessmentRegistration = this;
                // -------------------------------------------------------------

                return _studentAssessmentRegistrationAssessmentCustomizationsCovariant;
            }
            set
            {
                StudentAssessmentRegistrationAssessmentCustomizations = new HashSet<Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster.StudentAssessmentRegistrationAssessmentCustomization>(value.Cast<Entities.NHibernate.StudentAssessmentRegistrationAggregate.EdFiXAssessmentRoster.StudentAssessmentRegistrationAssessmentCustomization>());
            }
        }

        // -------------------------------------------------------------

        // Provide lookup property map
        private static readonly Dictionary<string, LookupColumnDetails> _idPropertyByLookupProperty = new Dictionary<string, LookupColumnDetails>(StringComparer.InvariantCultureIgnoreCase)
            {
                { "PlatformTypeDescriptor", new LookupColumnDetails { PropertyName = "PlatformTypeDescriptorId", LookupTypeName = "PlatformTypeDescriptor"} },
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
            keyValues.Add("AdministrationIdentifier", AdministrationIdentifier);
            keyValues.Add("AssessmentIdentifier", AssessmentIdentifier);
            keyValues.Add("AssigningEducationOrganizationId", AssigningEducationOrganizationId);
            keyValues.Add("EducationOrganizationId", EducationOrganizationId);
            keyValues.Add("Namespace", Namespace);
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
            return this.SynchronizeTo((Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration) target, null);
        }

    }
// disable warnings for inheritance from classes marked Obsolete within this generated code only
#pragma warning disable 612, 618

    /// <summary>
    /// A class which represents the edfixassessmentroster.StudentAssessmentRegistrationAssessmentCustomization table of the StudentAssessmentRegistration aggregate in the ODS database.
    /// </summary>
    [Schema("edfixassessmentroster")]
    [ExcludeFromCodeCoverage]
    public class StudentAssessmentRegistrationAssessmentCustomization : EntityWithCompositeKey, IChildEntity,
        Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization, IHasPrimaryKeyValues, IHasLookupColumnPropertyMap
    {
        public virtual void SuspendReferenceAssignmentCheck() { }

        public StudentAssessmentRegistrationAssessmentCustomization()
        {
        }
// restore warnings for inheritance from classes marked Obsolete
#pragma warning restore 612, 618

        // =============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        [DomainSignature, JsonIgnore]
        public virtual StudentAssessmentRegistration StudentAssessmentRegistration { get; set; }

        Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistration IStudentAssessmentRegistrationAssessmentCustomization.StudentAssessmentRegistration
        {
            get { return StudentAssessmentRegistration; }
            set { StudentAssessmentRegistration = (StudentAssessmentRegistration) value; }
        }

        [DomainSignature]
        public virtual string IdentificationCode  { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------
        public virtual string CustomizationValue  { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                     One-to-one relationships
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                          Extensions
        // -------------------------------------------------------------
        // -------------------------------------------------------------

        // =============================================================
        //                     Reference Data
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
            var keyValues = (StudentAssessmentRegistration as IHasPrimaryKeyValues).GetPrimaryKeyValues();

            // Add current key values
            keyValues.Add("IdentificationCode", IdentificationCode);

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
            return this.SynchronizeTo((Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization)target);
        }

        void IMappable.Map(object target)
        {
            this.MapTo((Entities.Common.EdFiXAssessmentRoster.IStudentAssessmentRegistrationAssessmentCustomization) target, null);
        }

        void IChildEntity.SetParent(object value)
        {
            StudentAssessmentRegistration = (StudentAssessmentRegistration) value;
        }
    }
}
