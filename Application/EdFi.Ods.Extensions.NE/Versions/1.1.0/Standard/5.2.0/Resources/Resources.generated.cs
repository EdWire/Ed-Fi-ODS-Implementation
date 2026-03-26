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
using EdFi.Ods.Entities.Common.NE;
using Newtonsoft.Json;
using FluentValidation.Results;

// Aggregate: CalendarDate

namespace EdFi.Ods.Api.Common.Models.Resources.CalendarDate.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.CalendarDateExtension table of the CalendarDate aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    [NoUnsuppliedRequiredMembersWithMeaningfulDefaults]
    public class CalendarDateExtension : Entities.Common.NE.ICalendarDateExtension, IHasRequiredMembersWithMeaningfulDefaultValues, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "CalendarDateExtension");

        // Fluent validator instance (threadsafe)
        private static CalendarDateExtensionPutPostRequestValidator _validator = new CalendarDateExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.ICalendarDate _calendarDate;

        [IgnoreDataMember]
        Entities.Common.EdFi.ICalendarDate Entities.Common.NE.ICalendarDateExtension.CalendarDate
        {
            get { return _calendarDate; }
            set { SetCalendarDate(value); }
        }

        public Entities.Common.EdFi.ICalendarDate CalendarDate
        {
            set { SetCalendarDate(value); }
        }

        private void SetCalendarDate(Entities.Common.EdFi.ICalendarDate value)
        {
            _calendarDate = value;
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
            var compareTo = obj as Entities.Common.NE.ICalendarDateExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_calendarDate == null || !_calendarDate.Equals(compareTo.CalendarDate))
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
            if (_calendarDate != null)
                hash.Add(_calendarDate);
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
        
        private bool _instructionalDurationExplicitlyAssigned = false;
        private decimal _instructionalDuration;

        /// <summary>
        /// The portion of the day that instruction occurred.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(typeof(decimal), "0", "1", ErrorMessage=ValidationHelpers.RangeMessageFormat)]
        [DataMember(Name="instructionalDuration")]
        public decimal InstructionalDuration 
        { 
            get => _instructionalDuration;
            set 
            { 
                _instructionalDuration = value;
                _instructionalDurationExplicitlyAssigned = true; 
            }
        }

        // -------------------------------------------------------------

        IEnumerable<string> IHasRequiredMembersWithMeaningfulDefaultValues.GetUnassignedMemberNames()
        {
            if (!_instructionalDurationExplicitlyAssigned)
            {
                yield return "InstructionalDuration";
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
            return Entities.Common.NE.CalendarDateExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.ICalendarDateExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.CalendarDateExtensionMapper.MapTo(this, (Entities.Common.NE.ICalendarDateExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            CalendarDate = (ICalendarDate)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class CalendarDateExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<CalendarDateExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<CalendarDateExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: DisciplineAction

namespace EdFi.Ods.Api.Common.Models.Resources.DisciplineAction.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.DisciplineActionExtension table of the DisciplineAction aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class DisciplineActionExtension : Entities.Common.NE.IDisciplineActionExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "DisciplineActionExtension");

        // Fluent validator instance (threadsafe)
        private static DisciplineActionExtensionPutPostRequestValidator _validator = new DisciplineActionExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.IDisciplineAction _disciplineAction;

        [IgnoreDataMember]
        Entities.Common.EdFi.IDisciplineAction Entities.Common.NE.IDisciplineActionExtension.DisciplineAction
        {
            get { return _disciplineAction; }
            set { SetDisciplineAction(value); }
        }

        public Entities.Common.EdFi.IDisciplineAction DisciplineAction
        {
            set { SetDisciplineAction(value); }
        }

        private void SetDisciplineAction(Entities.Common.EdFi.IDisciplineAction value)
        {
            _disciplineAction = value;
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
            var compareTo = obj as Entities.Common.NE.IDisciplineActionExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_disciplineAction == null || !_disciplineAction.Equals(compareTo.DisciplineAction))
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
            if (_disciplineAction != null)
                hash.Add(_disciplineAction);
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
        /// True = Student expelled under GFSA had expulsion modified to less than one year.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="gfsaExpulsionModifiedToLessThanOneYear")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? GFSAExpulsionModifiedToLessThanOneYear { get; set; }

        /// <summary>
        /// For SPED students only who were were subject to Uniliteral Removal
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="unilateralRemovalDescriptor")][DescriptorExists("UnilateralRemovalDescriptor")]
        public string UnilateralRemovalDescriptor { get; set; }
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
            return Entities.Common.NE.DisciplineActionExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.IDisciplineActionExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.DisciplineActionExtensionMapper.MapTo(this, (Entities.Common.NE.IDisciplineActionExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            DisciplineAction = (IDisciplineAction)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class DisciplineActionExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<DisciplineActionExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<DisciplineActionExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: DisciplineIncident

namespace EdFi.Ods.Api.Common.Models.Resources.DisciplineIncident.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.DisciplineIncidentExtension table of the DisciplineIncident aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class DisciplineIncidentExtension : Entities.Common.NE.IDisciplineIncidentExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "DisciplineIncidentExtension");

        // Fluent validator instance (threadsafe)
        private static DisciplineIncidentExtensionPutPostRequestValidator _validator = new DisciplineIncidentExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.IDisciplineIncident _disciplineIncident;

        [IgnoreDataMember]
        Entities.Common.EdFi.IDisciplineIncident Entities.Common.NE.IDisciplineIncidentExtension.DisciplineIncident
        {
            get { return _disciplineIncident; }
            set { SetDisciplineIncident(value); }
        }

        public Entities.Common.EdFi.IDisciplineIncident DisciplineIncident
        {
            set { SetDisciplineIncident(value); }
        }

        private void SetDisciplineIncident(Entities.Common.EdFi.IDisciplineIncident value)
        {
            _disciplineIncident = value;
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
            var compareTo = obj as Entities.Common.NE.IDisciplineIncidentExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_disciplineIncident == null || !_disciplineIncident.Equals(compareTo.DisciplineIncident))
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
            if (_disciplineIncident != null)
                hash.Add(_disciplineIncident);
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
        /// Indicates if this discipline incident involved homicide.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="homicideIndicator")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? HomicideIndicator { get; set; }

        /// <summary>
        /// Indicates if the discipline incident involved a shooting.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="shootingIndicator")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? ShootingIndicator { get; set; }
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
            return Entities.Common.NE.DisciplineIncidentExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.IDisciplineIncidentExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.DisciplineIncidentExtensionMapper.MapTo(this, (Entities.Common.NE.IDisciplineIncidentExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            DisciplineIncident = (IDisciplineIncident)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class DisciplineIncidentExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<DisciplineIncidentExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<DisciplineIncidentExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: EarlyLearningSettingDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.EarlyLearningSettingDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.EarlyLearningSettingDescriptor table of the EarlyLearningSettingDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class EarlyLearningSettingDescriptor : Entities.Common.NE.IEarlyLearningSettingDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "EarlyLearningSettingDescriptor");

        // Fluent validator instance (threadsafe)
        private static EarlyLearningSettingDescriptorPutPostRequestValidator _validator = new EarlyLearningSettingDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the EarlyLearningSettingDescriptor resource.
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
        public int EarlyLearningSettingDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return EarlyLearningSettingDescriptorId; }
            set { EarlyLearningSettingDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IEarlyLearningSettingDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IEarlyLearningSettingDescriptor).EarlyLearningSettingDescriptorId.Equals(compareTo.EarlyLearningSettingDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IEarlyLearningSettingDescriptor).EarlyLearningSettingDescriptorId);

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
            return Entities.Common.NE.EarlyLearningSettingDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IEarlyLearningSettingDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.EarlyLearningSettingDescriptorMapper.MapTo(this, (Entities.Common.NE.IEarlyLearningSettingDescriptor)target, null);
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
    public class EarlyLearningSettingDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<EarlyLearningSettingDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<EarlyLearningSettingDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: ImmigrantIndicatorDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.ImmigrantIndicatorDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.ImmigrantIndicatorDescriptor table of the ImmigrantIndicatorDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class ImmigrantIndicatorDescriptor : Entities.Common.NE.IImmigrantIndicatorDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "ImmigrantIndicatorDescriptor");

        // Fluent validator instance (threadsafe)
        private static ImmigrantIndicatorDescriptorPutPostRequestValidator _validator = new ImmigrantIndicatorDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the ImmigrantIndicatorDescriptor resource.
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
        public int ImmigrantIndicatorDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return ImmigrantIndicatorDescriptorId; }
            set { ImmigrantIndicatorDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IImmigrantIndicatorDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IImmigrantIndicatorDescriptor).ImmigrantIndicatorDescriptorId.Equals(compareTo.ImmigrantIndicatorDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IImmigrantIndicatorDescriptor).ImmigrantIndicatorDescriptorId);

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
            return Entities.Common.NE.ImmigrantIndicatorDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IImmigrantIndicatorDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.ImmigrantIndicatorDescriptorMapper.MapTo(this, (Entities.Common.NE.IImmigrantIndicatorDescriptor)target, null);
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
    public class ImmigrantIndicatorDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<ImmigrantIndicatorDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<ImmigrantIndicatorDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: PartCTransitionDelayReasonDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.PartCTransitionDelayReasonDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.PartCTransitionDelayReasonDescriptor table of the PartCTransitionDelayReasonDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class PartCTransitionDelayReasonDescriptor : Entities.Common.NE.IPartCTransitionDelayReasonDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "PartCTransitionDelayReasonDescriptor");

        // Fluent validator instance (threadsafe)
        private static PartCTransitionDelayReasonDescriptorPutPostRequestValidator _validator = new PartCTransitionDelayReasonDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the PartCTransitionDelayReasonDescriptor resource.
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
        public int PartCTransitionDelayReasonDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return PartCTransitionDelayReasonDescriptorId; }
            set { PartCTransitionDelayReasonDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IPartCTransitionDelayReasonDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IPartCTransitionDelayReasonDescriptor).PartCTransitionDelayReasonDescriptorId.Equals(compareTo.PartCTransitionDelayReasonDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IPartCTransitionDelayReasonDescriptor).PartCTransitionDelayReasonDescriptorId);

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
            return Entities.Common.NE.PartCTransitionDelayReasonDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IPartCTransitionDelayReasonDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.PartCTransitionDelayReasonDescriptorMapper.MapTo(this, (Entities.Common.NE.IPartCTransitionDelayReasonDescriptor)target, null);
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
    public class PartCTransitionDelayReasonDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<PartCTransitionDelayReasonDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<PartCTransitionDelayReasonDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: PlacementTypeDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.PlacementTypeDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.PlacementTypeDescriptor table of the PlacementTypeDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class PlacementTypeDescriptor : Entities.Common.NE.IPlacementTypeDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "PlacementTypeDescriptor");

        // Fluent validator instance (threadsafe)
        private static PlacementTypeDescriptorPutPostRequestValidator _validator = new PlacementTypeDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the PlacementTypeDescriptor resource.
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
        public int PlacementTypeDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return PlacementTypeDescriptorId; }
            set { PlacementTypeDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IPlacementTypeDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IPlacementTypeDescriptor).PlacementTypeDescriptorId.Equals(compareTo.PlacementTypeDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IPlacementTypeDescriptor).PlacementTypeDescriptorId);

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
            return Entities.Common.NE.PlacementTypeDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IPlacementTypeDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.PlacementTypeDescriptorMapper.MapTo(this, (Entities.Common.NE.IPlacementTypeDescriptor)target, null);
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
    public class PlacementTypeDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<PlacementTypeDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<PlacementTypeDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: PositionTitleDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.PositionTitleDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.PositionTitleDescriptor table of the PositionTitleDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class PositionTitleDescriptor : Entities.Common.NE.IPositionTitleDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "PositionTitleDescriptor");

        // Fluent validator instance (threadsafe)
        private static PositionTitleDescriptorPutPostRequestValidator _validator = new PositionTitleDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the PositionTitleDescriptor resource.
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
        public int PositionTitleDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return PositionTitleDescriptorId; }
            set { PositionTitleDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IPositionTitleDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IPositionTitleDescriptor).PositionTitleDescriptorId.Equals(compareTo.PositionTitleDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IPositionTitleDescriptor).PositionTitleDescriptorId);

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
            return Entities.Common.NE.PositionTitleDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IPositionTitleDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.PositionTitleDescriptorMapper.MapTo(this, (Entities.Common.NE.IPositionTitleDescriptor)target, null);
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
    public class PositionTitleDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<PositionTitleDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<PositionTitleDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: PostGraduateActivity

namespace EdFi.Ods.Api.Common.Models.Resources.PostGraduateActivity.NE
{
    /// <summary>
    /// Represents a reference to the PostGraduateActivity resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityReference : IResourceReference
    {
        [DataMember(Name="localEducationAgencyId")]
        public long LocalEducationAgencyId { get; set; }

        [DataMember(Name="schoolYear")]
        public short SchoolYear { get; set; }

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
            return LocalEducationAgencyId != default(long) && SchoolYear != default(short) && StudentUniqueId != default(string);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (LocalEducationAgencyId == default)
            {
                yield return "LocalEducationAgencyId";
            }

            if (SchoolYear == default)
            {
                yield return "SchoolYear";
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
                Rel = "PostGraduateActivity",
                Href = $"/ne/postGraduateActivities/{ResourceId:n}"
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
    /// A class which represents the ne.PostGraduateActivity table of the PostGraduateActivity aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class PostGraduateActivity : Entities.Common.NE.IPostGraduateActivity, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "PostGraduateActivity");

        // Fluent validator instance (threadsafe)
        private static PostGraduateActivityPutPostRequestValidator _validator = new PostGraduateActivityPutPostRequestValidator();
        
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
        /// The unique identifier for the PostGraduateActivity resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
        // ------------------------------------------------------------

        // =============================================================
        //                         References
        // -------------------------------------------------------------

        private bool _localEducationAgencyReferenceExplicitlyAssigned;
        private LocalEducationAgency.EdFi.LocalEducationAgencyReference _localEducationAgencyReference;
        private LocalEducationAgency.EdFi.LocalEducationAgencyReference ImplicitLocalEducationAgencyReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_localEducationAgencyReference == null && !_localEducationAgencyReferenceExplicitlyAssigned)
                    _localEducationAgencyReference = new LocalEducationAgency.EdFi.LocalEducationAgencyReference();

                return _localEducationAgencyReference;
            }
        }

        [DataMember(Name="localEducationAgencyReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public LocalEducationAgency.EdFi.LocalEducationAgencyReference LocalEducationAgencyReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitLocalEducationAgencyReference != null
                    && (_localEducationAgencyReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitLocalEducationAgencyReference.IsReferenceFullyDefined()))
                    return ImplicitLocalEducationAgencyReference;

                return null;
            }
            set
            {
                _localEducationAgencyReferenceExplicitlyAssigned = true;
                _localEducationAgencyReference = value;
            }
        }
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
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
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
        /// The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.NE.IPostGraduateActivity.LocalEducationAgencyId
        {
            get
            {
                if (ImplicitLocalEducationAgencyReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitLocalEducationAgencyReference.IsReferenceFullyDefined()))
                    return ImplicitLocalEducationAgencyReference.LocalEducationAgencyId;

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // LocalEducationAgency
                _localEducationAgencyReferenceExplicitlyAssigned = false;
                ImplicitLocalEducationAgencyReference.LocalEducationAgencyId = value;
            }
        }

        /// <summary>
        /// Represents the school year during which the student graduated.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        short Entities.Common.NE.IPostGraduateActivity.SchoolYear
        {
            get
            {
                if (ImplicitSchoolYearTypeReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitSchoolYearTypeReference.IsReferenceFullyDefined()))
                    return ImplicitSchoolYearTypeReference.SchoolYear;

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

        /// <summary>
        /// A unique alphanumeric code assigned to a student.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.NE.IPostGraduateActivity.StudentUniqueId
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
            var compareTo = obj as Entities.Common.NE.IPostGraduateActivity;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Referenced Property
            if (!(this as Entities.Common.NE.IPostGraduateActivity).LocalEducationAgencyId.Equals(compareTo.LocalEducationAgencyId))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.NE.IPostGraduateActivity).SchoolYear.Equals(compareTo.SchoolYear))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.NE.IPostGraduateActivity).StudentUniqueId, compareTo.StudentUniqueId))
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
            hash.Add((this as Entities.Common.NE.IPostGraduateActivity).LocalEducationAgencyId);

            //Referenced Property
            hash.Add((this as Entities.Common.NE.IPostGraduateActivity).SchoolYear);

            //Referenced Property
            hash.Add((this as Entities.Common.NE.IPostGraduateActivity).StudentUniqueId);
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
        /// Appropriate code to describe the student's activity after completion.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="postGraduateActivityDescriptor")][DescriptorExists("PostGraduateActivityDescriptor")]
        public string PostGraduateActivityDescriptor { get; set; }

        /// <summary>
        /// Appropriate code to describe the student's activity after completion.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="postGraduateActivityDeterminationDescriptor")][DescriptorExists("PostGraduateActivityDeterminationDescriptor")]
        public string PostGraduateActivityDeterminationDescriptor { get; set; }
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
            return Entities.Common.NE.PostGraduateActivityMapper.SynchronizeTo(this, (Entities.Common.NE.IPostGraduateActivity)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.PostGraduateActivityMapper.MapTo(this, (Entities.Common.NE.IPostGraduateActivity)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.NE.IPostGraduateActivity.LocalEducationAgencyResourceId
        {
            get { return null; }
            set { ImplicitLocalEducationAgencyReference.ResourceId = value ?? default(Guid); }
        }


        Guid? Entities.Common.NE.IPostGraduateActivity.SchoolYearTypeResourceId
        {
            get { return null; }
            set { ImplicitSchoolYearTypeReference.ResourceId = value ?? default(Guid); }
        }


        Guid? Entities.Common.NE.IPostGraduateActivity.StudentResourceId
        {
            get { return null; }
            set { ImplicitStudentReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.NE.IPostGraduateActivity.StudentDiscriminator
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
    public class PostGraduateActivityPutPostRequestValidator : FluentValidation.AbstractValidator<PostGraduateActivity>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<PostGraduateActivity> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: PostGraduateActivityDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.PostGraduateActivityDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.PostGraduateActivityDescriptor table of the PostGraduateActivityDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDescriptor : Entities.Common.NE.IPostGraduateActivityDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "PostGraduateActivityDescriptor");

        // Fluent validator instance (threadsafe)
        private static PostGraduateActivityDescriptorPutPostRequestValidator _validator = new PostGraduateActivityDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the PostGraduateActivityDescriptor resource.
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
        public int PostGraduateActivityDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return PostGraduateActivityDescriptorId; }
            set { PostGraduateActivityDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IPostGraduateActivityDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IPostGraduateActivityDescriptor).PostGraduateActivityDescriptorId.Equals(compareTo.PostGraduateActivityDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IPostGraduateActivityDescriptor).PostGraduateActivityDescriptorId);

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
            return Entities.Common.NE.PostGraduateActivityDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IPostGraduateActivityDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.PostGraduateActivityDescriptorMapper.MapTo(this, (Entities.Common.NE.IPostGraduateActivityDescriptor)target, null);
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
    public class PostGraduateActivityDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<PostGraduateActivityDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<PostGraduateActivityDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: PostGraduateActivityDeterminationDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.PostGraduateActivityDeterminationDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.PostGraduateActivityDeterminationDescriptor table of the PostGraduateActivityDeterminationDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDeterminationDescriptor : Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "PostGraduateActivityDeterminationDescriptor");

        // Fluent validator instance (threadsafe)
        private static PostGraduateActivityDeterminationDescriptorPutPostRequestValidator _validator = new PostGraduateActivityDeterminationDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the PostGraduateActivityDeterminationDescriptor resource.
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
        public int PostGraduateActivityDeterminationDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return PostGraduateActivityDeterminationDescriptorId; }
            set { PostGraduateActivityDeterminationDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor).PostGraduateActivityDeterminationDescriptorId.Equals(compareTo.PostGraduateActivityDeterminationDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor).PostGraduateActivityDeterminationDescriptorId);

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
            return Entities.Common.NE.PostGraduateActivityDeterminationDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.PostGraduateActivityDeterminationDescriptorMapper.MapTo(this, (Entities.Common.NE.IPostGraduateActivityDeterminationDescriptor)target, null);
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
    public class PostGraduateActivityDeterminationDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<PostGraduateActivityDeterminationDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<PostGraduateActivityDeterminationDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: Section

namespace EdFi.Ods.Api.Common.Models.Resources.Section.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.SectionDelivery table of the Section aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class SectionDelivery : Entities.Common.NE.ISectionDelivery
    {
        private static FullName _fullName = new FullName("ne", "SectionDelivery");

        // Fluent validator instance (threadsafe)
        private static SectionDeliveryPutPostRequestValidator _validator = new SectionDeliveryPutPostRequestValidator();
        
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
        private Entities.Common.NE.ISectionExtension _sectionExtension;

        [IgnoreDataMember]
        Entities.Common.NE.ISectionExtension Entities.Common.NE.ISectionDelivery.SectionExtension
        {
            get { return _sectionExtension; }
            set { SetSectionExtension(value); }
        }

        public Entities.Common.NE.ISectionExtension SectionExtension
        {
            set { SetSectionExtension(value); }
        }

        private void SetSectionExtension(Entities.Common.NE.ISectionExtension value)
        {
            _sectionExtension = value;
        }

        /// <summary>
        /// Description of the delivery method for a section of a course.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [RequiredWithNonDefault]
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText, NoWhitespace]
        [DataMember(Name="sectionDeliveryDescriptor")][DescriptorExists("SectionDeliveryDescriptor")]
        public string SectionDeliveryDescriptor { get; set; }
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
            var compareTo = obj as Entities.Common.NE.ISectionDelivery;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_sectionExtension == null || !_sectionExtension.Equals(compareTo.SectionExtension))
                return false;


            // Standard Property
            if (!StringComparer.OrdinalIgnoreCase.Equals((this as Entities.Common.NE.ISectionDelivery).SectionDeliveryDescriptor, compareTo.SectionDeliveryDescriptor))
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
            if (_sectionExtension != null)
                hash.Add(_sectionExtension);

            // Standard Property
                hash.Add((this as Entities.Common.NE.ISectionDelivery).SectionDeliveryDescriptor);

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
            return Entities.Common.NE.SectionDeliveryMapper.SynchronizeTo(this, (Entities.Common.NE.ISectionDelivery)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.SectionDeliveryMapper.MapTo(this, (Entities.Common.NE.ISectionDelivery)target, null);
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
    public class SectionDeliveryPutPostRequestValidator : FluentValidation.AbstractValidator<SectionDelivery>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<SectionDelivery> context, FluentValidation.Results.ValidationResult result)
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
    /// A class which represents the ne.SectionExtension table of the Section aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class SectionExtension : Entities.Common.NE.ISectionExtension, IChildEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("ne", "SectionExtension");

        // Fluent validator instance (threadsafe)
        private static SectionExtensionPutPostRequestValidator _validator = new SectionExtensionPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        public SectionExtension()
        {
            SectionDeliveries = new List<SectionDelivery>();
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
        private Entities.Common.EdFi.ISection _section;

        [IgnoreDataMember]
        Entities.Common.EdFi.ISection Entities.Common.NE.ISectionExtension.Section
        {
            get { return _section; }
            set { SetSection(value); }
        }

        public Entities.Common.EdFi.ISection Section
        {
            set { SetSection(value); }
        }

        private void SetSection(Entities.Common.EdFi.ISection value)
        {
            _section = value;
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
            var compareTo = obj as Entities.Common.NE.ISectionExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_section == null || !_section.Equals(compareTo.Section))
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
            if (_section != null)
                hash.Add(_section);
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
        /// Staff Id of non district employee correspoinding to the teacher of the course.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [NonDefaultStringLength(10, MinimumLength=10, ErrorMessage=ValidationHelpers.StringLengthWithMinimumMessageFormat), NoDangerousText]
        [DataMember(Name="courseStaffIdOverride")]
        public string CourseStaffIdOverride { get; set; }
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
        private ICollection<SectionDelivery> _sectionDeliveries;
        private ICollection<Entities.Common.NE.ISectionDelivery> _sectionDeliveriesCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="deliveries")]
        public ICollection<SectionDelivery> SectionDeliveries
        {
            get { return _sectionDeliveries; }
            set
            {
                if (value == null) return;
                // Initialize primary list with notifying adapter immediately wired up so existing items are associated with the parent
                var list = new CollectionAdapterWithAddNotifications<SectionDelivery>(value,
                    (s, e) => ((Entities.Common.NE.ISectionDelivery)e.Item).SectionExtension = this);
                _sectionDeliveries = list;

                // Initialize covariant list with notifying adapter with deferred wire up so only new items are processed (optimization)
                var covariantList = new CovariantCollectionAdapterWithAddNotifications<Entities.Common.NE.ISectionDelivery, SectionDelivery>(value);
                covariantList.ItemAdded += (s, e) => ((Entities.Common.NE.ISectionDelivery)e.Item).SectionExtension = this;
                _sectionDeliveriesCovariant = covariantList;
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.NE.ISectionDelivery> Entities.Common.NE.ISectionExtension.SectionDeliveries
        {
            get { return _sectionDeliveriesCovariant; }
            set { SectionDeliveries = new List<SectionDelivery>(value.Cast<SectionDelivery>()); }
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
            if (_sectionDeliveries != null) foreach (var item in _sectionDeliveries)
            {
                item.SectionExtension = this;
            }

        }
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.NE.SectionExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.ISectionExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.SectionExtensionMapper.MapTo(this, (Entities.Common.NE.ISectionExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            Section = (ISection)value;
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
                if (SectionDeliveries.Any() && mappingContract?.IsMemberSupported("SectionDeliveries") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("SectionDeliveries");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(SectionDeliveries, validationContext, validationContext.Items.ForCollection("SectionDeliveries"))))
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
    public class SectionExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<SectionExtension>
    {
        private static readonly FullName _fullName_ne_SectionExtension = new FullName("ne", "SectionExtension");

        // Declare collection item validators
        private SectionDeliveryPutPostRequestValidator _sectionDeliveriesValidator = new ();

        protected override bool PreValidate(FluentValidation.ValidationContext<SectionExtension> context, FluentValidation.Results.ValidationResult result)
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
            var mappingContract = (global::EdFi.Ods.Entities.Common.NE.SectionExtensionMappingContract) GeneratedArtifactStaticDependencies.MappingContractProvider
                .GetMappingContract(_fullName_ne_SectionExtension);

            if (mappingContract != null)
            {
                if (mappingContract.IsSectionDeliveryIncluded != null)
                {
                    var hasInvalidSectionDeliveriesItems = instance.SectionDeliveries.Any(x => !mappingContract.IsSectionDeliveryIncluded(x));
        
                    if (hasInvalidSectionDeliveriesItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("SectionDeliveries", $"A supplied 'SectionDelivery' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
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

}
// Aggregate: SectionDeliveryDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.SectionDeliveryDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.SectionDeliveryDescriptor table of the SectionDeliveryDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class SectionDeliveryDescriptor : Entities.Common.NE.ISectionDeliveryDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "SectionDeliveryDescriptor");

        // Fluent validator instance (threadsafe)
        private static SectionDeliveryDescriptorPutPostRequestValidator _validator = new SectionDeliveryDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the SectionDeliveryDescriptor resource.
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
        public int SectionDeliveryDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return SectionDeliveryDescriptorId; }
            set { SectionDeliveryDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.ISectionDeliveryDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.ISectionDeliveryDescriptor).SectionDeliveryDescriptorId.Equals(compareTo.SectionDeliveryDescriptorId))
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
            hash.Add((this as Entities.Common.NE.ISectionDeliveryDescriptor).SectionDeliveryDescriptorId);

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
            return Entities.Common.NE.SectionDeliveryDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.ISectionDeliveryDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.SectionDeliveryDescriptorMapper.MapTo(this, (Entities.Common.NE.ISectionDeliveryDescriptor)target, null);
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
    public class SectionDeliveryDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<SectionDeliveryDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<SectionDeliveryDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: SpecialEducationProgramDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.SpecialEducationProgramDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.SpecialEducationProgramDescriptor table of the SpecialEducationProgramDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class SpecialEducationProgramDescriptor : Entities.Common.NE.ISpecialEducationProgramDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "SpecialEducationProgramDescriptor");

        // Fluent validator instance (threadsafe)
        private static SpecialEducationProgramDescriptorPutPostRequestValidator _validator = new SpecialEducationProgramDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the SpecialEducationProgramDescriptor resource.
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
        public int SpecialEducationProgramDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return SpecialEducationProgramDescriptorId; }
            set { SpecialEducationProgramDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.ISpecialEducationProgramDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.ISpecialEducationProgramDescriptor).SpecialEducationProgramDescriptorId.Equals(compareTo.SpecialEducationProgramDescriptorId))
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
            hash.Add((this as Entities.Common.NE.ISpecialEducationProgramDescriptor).SpecialEducationProgramDescriptorId);

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
            return Entities.Common.NE.SpecialEducationProgramDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.ISpecialEducationProgramDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.SpecialEducationProgramDescriptorMapper.MapTo(this, (Entities.Common.NE.ISpecialEducationProgramDescriptor)target, null);
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
    public class SpecialEducationProgramDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<SpecialEducationProgramDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<SpecialEducationProgramDescriptor> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentDisciplineIncidentBehaviorAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentDisciplineIncidentBehaviorAssociation.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.StudentDisciplineIncidentBehaviorAssociationExtension table of the StudentDisciplineIncidentBehaviorAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class StudentDisciplineIncidentBehaviorAssociationExtension : Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "StudentDisciplineIncidentBehaviorAssociationExtension");

        // Fluent validator instance (threadsafe)
        private static StudentDisciplineIncidentBehaviorAssociationExtensionPutPostRequestValidator _validator = new StudentDisciplineIncidentBehaviorAssociationExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.IStudentDisciplineIncidentBehaviorAssociation _studentDisciplineIncidentBehaviorAssociation;

        [IgnoreDataMember]
        Entities.Common.EdFi.IStudentDisciplineIncidentBehaviorAssociation Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension.StudentDisciplineIncidentBehaviorAssociation
        {
            get { return _studentDisciplineIncidentBehaviorAssociation; }
            set { SetStudentDisciplineIncidentBehaviorAssociation(value); }
        }

        public Entities.Common.EdFi.IStudentDisciplineIncidentBehaviorAssociation StudentDisciplineIncidentBehaviorAssociation
        {
            set { SetStudentDisciplineIncidentBehaviorAssociation(value); }
        }

        private void SetStudentDisciplineIncidentBehaviorAssociation(Entities.Common.EdFi.IStudentDisciplineIncidentBehaviorAssociation value)
        {
            _studentDisciplineIncidentBehaviorAssociation = value;
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
            var compareTo = obj as Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_studentDisciplineIncidentBehaviorAssociation == null || !_studentDisciplineIncidentBehaviorAssociation.Equals(compareTo.StudentDisciplineIncidentBehaviorAssociation))
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
            if (_studentDisciplineIncidentBehaviorAssociation != null)
                hash.Add(_studentDisciplineIncidentBehaviorAssociation);
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
        /// True = Student was charged with a Gun-Free Schools Violation.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="gunFreeSchoolViolation")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? GunFreeSchoolViolation { get; set; }

        /// <summary>
        /// Indicates if a student was referred to law enforcement.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="referralToLawEnforcement")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? ReferralToLawEnforcement { get; set; }

        /// <summary>
        /// Indicates if student was involved in a disciplinary incident that resulted in an arrest.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="schoolRelatedArrestIndicator")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? SchoolRelatedArrestIndicator { get; set; }

        /// <summary>
        /// Indicates if an incident resulted in serious bodily injury as defined by 18 U.S.C. Section 1365(3)(h).
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="seriousBodilyInjury")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? SeriousBodilyInjury { get; set; }
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
            return Entities.Common.NE.StudentDisciplineIncidentBehaviorAssociationExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.StudentDisciplineIncidentBehaviorAssociationExtensionMapper.MapTo(this, (Entities.Common.NE.IStudentDisciplineIncidentBehaviorAssociationExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            StudentDisciplineIncidentBehaviorAssociation = (IStudentDisciplineIncidentBehaviorAssociation)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class StudentDisciplineIncidentBehaviorAssociationExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<StudentDisciplineIncidentBehaviorAssociationExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentDisciplineIncidentBehaviorAssociationExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentEarlyLearningProgramAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentEarlyLearningProgramAssociation.NE
{
    /// <summary>
    /// Represents a reference to the StudentEarlyLearningProgramAssociation resource.
    /// </summary>
    [DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociationReference : IResourceReference
    {
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }

        [DataMember(Name="educationOrganizationId")]
        public long EducationOrganizationId { get; set; }

        [DataMember(Name="programEducationOrganizationId")]
        public long ProgramEducationOrganizationId { get; set; }

        [DataMember(Name="programName")]
        public string ProgramName { get; set; }

        [DataMember(Name="programTypeDescriptor")][DescriptorExists("ProgramTypeDescriptor")]
        public string ProgramTypeDescriptor { get; set; }

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
            return BeginDate != default(DateTime) && EducationOrganizationId != default(long) && ProgramEducationOrganizationId != default(long) && ProgramName != default(string) && ProgramTypeDescriptor != default(string) && StudentUniqueId != default(string);
        }

        IEnumerable<string> IResourceReference.GetUndefinedProperties()
        {
            if (BeginDate == default)
            {
                yield return "BeginDate";
            }

            if (EducationOrganizationId == default)
            {
                yield return "EducationOrganizationId";
            }

            if (ProgramEducationOrganizationId == default)
            {
                yield return "ProgramEducationOrganizationId";
            }

            if (ProgramName == default)
            {
                yield return "ProgramName";
            }

            if (ProgramTypeDescriptor == default)
            {
                yield return "ProgramTypeDescriptor";
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
                Rel = "StudentEarlyLearningProgramAssociation",
                Href = $"/ne/studentEarlyLearningProgramAssociations/{ResourceId:n}"
            };

            return link;
        }
    } // Aggregate reference

    /// <summary>
    /// A class which represents the ne.StudentEarlyLearningProgramAssociation table of the StudentEarlyLearningProgramAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociation : Entities.Common.NE.IStudentEarlyLearningProgramAssociation, Entities.Common.EdFi.IGeneralStudentProgramAssociation, IHasETag, IDateVersionedEntity, IValidatableObject
    {
        private static FullName _fullName = new FullName("ne", "StudentEarlyLearningProgramAssociation");

        // Fluent validator instance (threadsafe)
        private static StudentEarlyLearningProgramAssociationPutPostRequestValidator _validator = new StudentEarlyLearningProgramAssociationPutPostRequestValidator();
        
#pragma warning disable 414
        private bool _SuspendReferenceAssignmentCheck = false;
        public void SuspendReferenceAssignmentCheck() { _SuspendReferenceAssignmentCheck = true; }
#pragma warning restore 414

        // =============================================================
        //                         Constructor
        // -------------------------------------------------------------

        public StudentEarlyLearningProgramAssociation()
        {

            // Inherited lists
            GeneralStudentProgramAssociationProgramParticipationStatuses = new List<GeneralStudentProgramAssociation.EdFi.GeneralStudentProgramAssociationProgramParticipationStatus>();
        }
        
        // ------------------------------------------------------------

        // ============================================================
        //                Unique Identifier
        // ------------------------------------------------------------

        /// <summary>
        /// The unique identifier for the StudentEarlyLearningProgramAssociation resource.
        /// </summary>
        [DataMember(Name="id")]
        [JsonConverter(typeof(GuidConverter))]
        public Guid Id { get; set; }
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
        private bool _programReferenceExplicitlyAssigned;
        private Program.EdFi.ProgramReference _programReference;
        private Program.EdFi.ProgramReference ImplicitProgramReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_programReference == null && !_programReferenceExplicitlyAssigned)
                    _programReference = new Program.EdFi.ProgramReference();

                return _programReference;
            }
        }

        [DataMember(Name="programReference")]
        [FullyDefinedReference][RequiredReference(isIdentifying: true)]
        public Program.EdFi.ProgramReference ProgramReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitProgramReference != null
                    && (_programReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitProgramReference.IsReferenceFullyDefined()))
                    return ImplicitProgramReference;

                return null;
            }
            set
            {
                _programReferenceExplicitlyAssigned = true;
                _programReference = value;
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
        /// The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [RequiredWithNonDefault]
        [DataMember(Name="beginDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime BeginDate { get; set; }

        /// <summary>
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.EdFi.IGeneralStudentProgramAssociation.EducationOrganizationId
        {
            get
            {
                if (ImplicitEducationOrganizationReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitEducationOrganizationReference.IsReferenceFullyDefined()))
                    return ImplicitEducationOrganizationReference.EducationOrganizationId;

                return default(long);
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
        /// The identifier assigned to an education organization.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.EdFi.IGeneralStudentProgramAssociation.ProgramEducationOrganizationId
        {
            get
            {
                if (ImplicitProgramReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitProgramReference.IsReferenceFullyDefined()))
                    return ImplicitProgramReference.EducationOrganizationId;

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Program
                _programReferenceExplicitlyAssigned = false;
                ImplicitProgramReference.EducationOrganizationId = value;
            }
        }

        /// <summary>
        /// The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFi.IGeneralStudentProgramAssociation.ProgramName
        {
            get
            {
                if (ImplicitProgramReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitProgramReference.IsReferenceFullyDefined()))
                    return ImplicitProgramReference.ProgramName;

                return default(string);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // Program
                _programReferenceExplicitlyAssigned = false;
                ImplicitProgramReference.ProgramName = value;
            }
        }

        /// <summary>
        /// The type of program.
        /// </summary>

        // IS in a reference (StudentEarlyLearningProgramAssociation.ProgramTypeDescriptorId), IS a lookup column 
        string Entities.Common.EdFi.IGeneralStudentProgramAssociation.ProgramTypeDescriptor
        {
            get
            {
                if (ImplicitProgramReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitProgramReference.IsReferenceFullyDefined()))
                    return ImplicitProgramReference.ProgramTypeDescriptor;

                return null;
            }
            set
            {
                ImplicitProgramReference.ProgramTypeDescriptor = value;
            }
        }

        /// <summary>
        /// A unique alphanumeric code assigned to a student.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        string Entities.Common.EdFi.IGeneralStudentProgramAssociation.StudentUniqueId
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
            var compareTo = obj as Entities.Common.NE.IStudentEarlyLearningProgramAssociation;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Standard Property
            if (!(this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).BeginDate.Equals(compareTo.BeginDate))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).EducationOrganizationId.Equals(compareTo.EducationOrganizationId))
                return false;


            // Referenced Property
            if (!(this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).ProgramEducationOrganizationId.Equals(compareTo.ProgramEducationOrganizationId))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).ProgramName, compareTo.ProgramName))
                return false;


            // Unified Type Property
            if (!StringComparer.OrdinalIgnoreCase.Equals((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).ProgramTypeDescriptor, compareTo.ProgramTypeDescriptor))
                return false;


            // Referenced Property
            if (!GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer.Equals((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).StudentUniqueId, compareTo.StudentUniqueId))
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
                hash.Add((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).BeginDate);


            //Referenced Property
            hash.Add((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).EducationOrganizationId);

            //Referenced Property
            hash.Add((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).ProgramEducationOrganizationId);

            //Referenced Property
            hash.Add((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).ProgramName);

            //Unified Type Property
            hash.Add((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).ProgramTypeDescriptor);


            //Referenced Property
            hash.Add((this as Entities.Common.NE.IStudentEarlyLearningProgramAssociation).StudentUniqueId);
            return hash.ToHashCode();
        }
        // -------------------------------------------------------------

        // =============================================================
        //                      Inherited Properties
        // -------------------------------------------------------------

        /// <summary>
        /// The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="endDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? EndDate { get; set; }

        /// <summary>
        /// The reason the student left the program within a school or district.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="reasonExitedDescriptor")][DescriptorExists("ReasonExitedDescriptor")]
        public string ReasonExitedDescriptor { get; set; }

        /// <summary>
        /// Indicates whether the student received services during the summer session or between sessions.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="servedOutsideOfRegularSession")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? ServedOutsideOfRegularSession { get; set; }
        // -------------------------------------------------------------

        // =============================================================
        //                          Properties
        // -------------------------------------------------------------

        /// <summary>
        /// Indicates the classroom setting of the student's program participation.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="earlyLearningSettingDescriptor")][DescriptorExists("EarlyLearningSettingDescriptor")]
        public string EarlyLearningSettingDescriptor { get; set; }
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
        private ICollection<GeneralStudentProgramAssociation.EdFi.GeneralStudentProgramAssociationProgramParticipationStatus> _generalStudentProgramAssociationProgramParticipationStatuses;
        private ICollection<Entities.Common.EdFi.IGeneralStudentProgramAssociationProgramParticipationStatus> _generalStudentProgramAssociationProgramParticipationStatusesCovariant;

        [NoDuplicateMembers]
        [DataMember(Name="programParticipationStatuses")]
        public ICollection<GeneralStudentProgramAssociation.EdFi.GeneralStudentProgramAssociationProgramParticipationStatus> GeneralStudentProgramAssociationProgramParticipationStatuses
        {
            get { return _generalStudentProgramAssociationProgramParticipationStatuses; }
            set
            {
                _generalStudentProgramAssociationProgramParticipationStatuses = value;
                _generalStudentProgramAssociationProgramParticipationStatusesCovariant = new CovariantCollectionAdapter<Entities.Common.EdFi.IGeneralStudentProgramAssociationProgramParticipationStatus, GeneralStudentProgramAssociation.EdFi.GeneralStudentProgramAssociationProgramParticipationStatus>(value);
            }
        }

        // Covariant version, visible only on the interface
        ICollection<Entities.Common.EdFi.IGeneralStudentProgramAssociationProgramParticipationStatus> Entities.Common.EdFi.IGeneralStudentProgramAssociation.GeneralStudentProgramAssociationProgramParticipationStatuses
        {
            get { return _generalStudentProgramAssociationProgramParticipationStatusesCovariant; }
            set { GeneralStudentProgramAssociationProgramParticipationStatuses = new List<GeneralStudentProgramAssociation.EdFi.GeneralStudentProgramAssociationProgramParticipationStatus>(value.Cast<GeneralStudentProgramAssociation.EdFi.GeneralStudentProgramAssociationProgramParticipationStatus>()); }
        }
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

        [OnDeserialized]
        internal void OnDeserialized(StreamingContext context)
        {
            // Reconnect collection item parent references on deserialization
            if (_generalStudentProgramAssociationProgramParticipationStatuses != null) foreach (var item in _generalStudentProgramAssociationProgramParticipationStatuses)
            {
                item.GeneralStudentProgramAssociation = this;
            }

        }
        // ------------------------------------------------------------

        // ============================================================
        //                      Data Synchronization
        // ------------------------------------------------------------
        bool ISynchronizable.Synchronize(object target)
        {
            return Entities.Common.NE.StudentEarlyLearningProgramAssociationMapper.SynchronizeTo(this, (Entities.Common.NE.IStudentEarlyLearningProgramAssociation)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.StudentEarlyLearningProgramAssociationMapper.MapDerivedTo(this, (Entities.Common.NE.IStudentEarlyLearningProgramAssociation)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.EdFi.IGeneralStudentProgramAssociation.EducationOrganizationResourceId
        {
            get { return null; }
            set { ImplicitEducationOrganizationReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFi.IGeneralStudentProgramAssociation.EducationOrganizationDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitEducationOrganizationReference.Discriminator = value; }
        }


        Guid? Entities.Common.EdFi.IGeneralStudentProgramAssociation.ProgramResourceId
        {
            get { return null; }
            set { ImplicitProgramReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFi.IGeneralStudentProgramAssociation.ProgramDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitProgramReference.Discriminator = value; }
        }


        Guid? Entities.Common.EdFi.IGeneralStudentProgramAssociation.StudentResourceId
        {
            get { return null; }
            set { ImplicitStudentReference.ResourceId = value ?? default(Guid); }
        }

        string Entities.Common.EdFi.IGeneralStudentProgramAssociation.StudentDiscriminator
        {
            // Not supported for Resources
            get { return null; }
            set { ImplicitStudentReference.Discriminator = value; }
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
                if (GeneralStudentProgramAssociationProgramParticipationStatuses.Any() && mappingContract?.IsMemberSupported("GeneralStudentProgramAssociationProgramParticipationStatuses") != false)
                {
                    // Reset path builder
                    pathBuilder.Length = dotLength;
                    pathBuilder.Append("GeneralStudentProgramAssociationProgramParticipationStatuses");
    
                    foreach (var result in ValidationHelpers.ValidateCollection(new ValidationContext(GeneralStudentProgramAssociationProgramParticipationStatuses, validationContext, validationContext.Items.ForCollection("GeneralStudentProgramAssociationProgramParticipationStatuses"))))
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
    public class StudentEarlyLearningProgramAssociationPutPostRequestValidator : FluentValidation.AbstractValidator<StudentEarlyLearningProgramAssociation>
    {
        private static readonly FullName _fullName_ne_StudentEarlyLearningProgramAssociation = new FullName("ne", "StudentEarlyLearningProgramAssociation");

        // Declare collection item validators
        private GeneralStudentProgramAssociation.EdFi.GeneralStudentProgramAssociationProgramParticipationStatusPutPostRequestValidator _generalStudentProgramAssociationProgramParticipationStatusesValidator = new ();

        protected override bool PreValidate(FluentValidation.ValidationContext<StudentEarlyLearningProgramAssociation> context, FluentValidation.Results.ValidationResult result)
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
            var mappingContract = (global::EdFi.Ods.Entities.Common.NE.StudentEarlyLearningProgramAssociationMappingContract) GeneratedArtifactStaticDependencies.MappingContractProvider
                .GetMappingContract(_fullName_ne_StudentEarlyLearningProgramAssociation);

            if (mappingContract != null)
            {
                if (mappingContract.IsGeneralStudentProgramAssociationProgramParticipationStatusIncluded != null)
                {
                    var hasInvalidGeneralStudentProgramAssociationProgramParticipationStatusesItems = instance.GeneralStudentProgramAssociationProgramParticipationStatuses.Any(x => !mappingContract.IsGeneralStudentProgramAssociationProgramParticipationStatusIncluded(x));
        
                    if (hasInvalidGeneralStudentProgramAssociationProgramParticipationStatusesItems)
                    {
                        profileName ??= GeneratedArtifactStaticDependencies.ProfileContentTypeContextProvider.Get().ProfileName;
                        failures.Add(new ValidationFailure("GeneralStudentProgramAssociationProgramParticipationStatuses", $"A supplied 'GeneralStudentProgramAssociationProgramParticipationStatus' has a descriptor value that does not conform with the filter values defined by profile '{profileName}'."));
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

}
// Aggregate: StudentEducationOrganizationAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentEducationOrganizationAssociation.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.StudentEducationOrganizationAssociationExtension table of the StudentEducationOrganizationAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class StudentEducationOrganizationAssociationExtension : Entities.Common.NE.IStudentEducationOrganizationAssociationExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "StudentEducationOrganizationAssociationExtension");

        // Fluent validator instance (threadsafe)
        private static StudentEducationOrganizationAssociationExtensionPutPostRequestValidator _validator = new StudentEducationOrganizationAssociationExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.IStudentEducationOrganizationAssociation _studentEducationOrganizationAssociation;

        [IgnoreDataMember]
        Entities.Common.EdFi.IStudentEducationOrganizationAssociation Entities.Common.NE.IStudentEducationOrganizationAssociationExtension.StudentEducationOrganizationAssociation
        {
            get { return _studentEducationOrganizationAssociation; }
            set { SetStudentEducationOrganizationAssociation(value); }
        }

        public Entities.Common.EdFi.IStudentEducationOrganizationAssociation StudentEducationOrganizationAssociation
        {
            set { SetStudentEducationOrganizationAssociation(value); }
        }

        private void SetStudentEducationOrganizationAssociation(Entities.Common.EdFi.IStudentEducationOrganizationAssociation value)
        {
            _studentEducationOrganizationAssociation = value;
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
            var compareTo = obj as Entities.Common.NE.IStudentEducationOrganizationAssociationExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_studentEducationOrganizationAssociation == null || !_studentEducationOrganizationAssociation.Equals(compareTo.StudentEducationOrganizationAssociation))
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
            if (_studentEducationOrganizationAssociation != null)
                hash.Add(_studentEducationOrganizationAssociation);
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
        /// Description that best reflects the student's immigrant status.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="immigrantIndicatorDescriptor")][DescriptorExists("ImmigrantIndicatorDescriptor")]
        public string ImmigrantIndicatorDescriptor { get; set; }
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
            return Entities.Common.NE.StudentEducationOrganizationAssociationExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.IStudentEducationOrganizationAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.StudentEducationOrganizationAssociationExtensionMapper.MapTo(this, (Entities.Common.NE.IStudentEducationOrganizationAssociationExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            StudentEducationOrganizationAssociation = (IStudentEducationOrganizationAssociation)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class StudentEducationOrganizationAssociationExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<StudentEducationOrganizationAssociationExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentEducationOrganizationAssociationExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentLanguageInstructionProgramAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentLanguageInstructionProgramAssociation.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.StudentLanguageInstructionProgramAssociationExtension table of the StudentLanguageInstructionProgramAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class StudentLanguageInstructionProgramAssociationExtension : Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "StudentLanguageInstructionProgramAssociationExtension");

        // Fluent validator instance (threadsafe)
        private static StudentLanguageInstructionProgramAssociationExtensionPutPostRequestValidator _validator = new StudentLanguageInstructionProgramAssociationExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.IStudentLanguageInstructionProgramAssociation _studentLanguageInstructionProgramAssociation;

        [IgnoreDataMember]
        Entities.Common.EdFi.IStudentLanguageInstructionProgramAssociation Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension.StudentLanguageInstructionProgramAssociation
        {
            get { return _studentLanguageInstructionProgramAssociation; }
            set { SetStudentLanguageInstructionProgramAssociation(value); }
        }

        public Entities.Common.EdFi.IStudentLanguageInstructionProgramAssociation StudentLanguageInstructionProgramAssociation
        {
            set { SetStudentLanguageInstructionProgramAssociation(value); }
        }

        private void SetStudentLanguageInstructionProgramAssociation(Entities.Common.EdFi.IStudentLanguageInstructionProgramAssociation value)
        {
            _studentLanguageInstructionProgramAssociation = value;
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
            var compareTo = obj as Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_studentLanguageInstructionProgramAssociation == null || !_studentLanguageInstructionProgramAssociation.Equals(compareTo.StudentLanguageInstructionProgramAssociation))
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
            if (_studentLanguageInstructionProgramAssociation != null)
                hash.Add(_studentLanguageInstructionProgramAssociation);
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
        /// A special education student that is no longer considered an English Learner due to a decision by the IEP review team to dismiss the ELPA testing requirement.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="dismissedViaIEPReview")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? DismissedViaIEPReview { get; set; }

        /// <summary>
        /// students that have been redesignated as English Fluent.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="redesignatedEnglishFluent")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? RedesignatedEnglishFluent { get; set; }
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
            return Entities.Common.NE.StudentLanguageInstructionProgramAssociationExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.StudentLanguageInstructionProgramAssociationExtensionMapper.MapTo(this, (Entities.Common.NE.IStudentLanguageInstructionProgramAssociationExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            StudentLanguageInstructionProgramAssociation = (IStudentLanguageInstructionProgramAssociation)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class StudentLanguageInstructionProgramAssociationExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<StudentLanguageInstructionProgramAssociationExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentLanguageInstructionProgramAssociationExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentSchoolAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentSchoolAssociation.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.StudentSchoolAssociationExtension table of the StudentSchoolAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class StudentSchoolAssociationExtension : Entities.Common.NE.IStudentSchoolAssociationExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "StudentSchoolAssociationExtension");

        // Fluent validator instance (threadsafe)
        private static StudentSchoolAssociationExtensionPutPostRequestValidator _validator = new StudentSchoolAssociationExtensionPutPostRequestValidator();
        
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

        private bool _expectedHighSchoolOfGraduationSchoolReferenceExplicitlyAssigned;
        private School.EdFi.SchoolReference _expectedHighSchoolOfGraduationSchoolReference;
        private School.EdFi.SchoolReference ImplicitExpectedHighSchoolOfGraduationSchoolReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_expectedHighSchoolOfGraduationSchoolReference == null && !_expectedHighSchoolOfGraduationSchoolReferenceExplicitlyAssigned)
                    _expectedHighSchoolOfGraduationSchoolReference = new School.EdFi.SchoolReference();

                return _expectedHighSchoolOfGraduationSchoolReference;
            }
        }

        [DataMember(Name="expectedHighSchoolOfGraduationSchoolReference")]
        [FullyDefinedReference]
        public School.EdFi.SchoolReference ExpectedHighSchoolOfGraduationSchoolReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitExpectedHighSchoolOfGraduationSchoolReference != null
                    && (_expectedHighSchoolOfGraduationSchoolReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitExpectedHighSchoolOfGraduationSchoolReference.IsReferenceFullyDefined()))
                    return ImplicitExpectedHighSchoolOfGraduationSchoolReference;

                return null;
            }
            set
            {
                _expectedHighSchoolOfGraduationSchoolReferenceExplicitlyAssigned = true;
                _expectedHighSchoolOfGraduationSchoolReference = value;
            }
        }
        private bool _reportingSchoolReferenceExplicitlyAssigned;
        private School.EdFi.SchoolReference _reportingSchoolReference;
        private School.EdFi.SchoolReference ImplicitReportingSchoolReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_reportingSchoolReference == null && !_reportingSchoolReferenceExplicitlyAssigned)
                    _reportingSchoolReference = new School.EdFi.SchoolReference();

                return _reportingSchoolReference;
            }
        }

        [DataMember(Name="reportingSchoolReference")]
        [FullyDefinedReference][RequiredReference("ne", "StudentSchoolAssociation")]
        public School.EdFi.SchoolReference ReportingSchoolReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitReportingSchoolReference != null
                    && (_reportingSchoolReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitReportingSchoolReference.IsReferenceFullyDefined()))
                    return ImplicitReportingSchoolReference;

                return null;
            }
            set
            {
                _reportingSchoolReferenceExplicitlyAssigned = true;
                _reportingSchoolReference = value;
            }
        }
        private bool _residentLocalEducationAgencyReferenceExplicitlyAssigned;
        private LocalEducationAgency.EdFi.LocalEducationAgencyReference _residentLocalEducationAgencyReference;
        private LocalEducationAgency.EdFi.LocalEducationAgencyReference ImplicitResidentLocalEducationAgencyReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_residentLocalEducationAgencyReference == null && !_residentLocalEducationAgencyReferenceExplicitlyAssigned)
                    _residentLocalEducationAgencyReference = new LocalEducationAgency.EdFi.LocalEducationAgencyReference();

                return _residentLocalEducationAgencyReference;
            }
        }

        [DataMember(Name="residentLocalEducationAgencyReference")]
        [FullyDefinedReference][RequiredReference("ne", "StudentSchoolAssociation")]
        public LocalEducationAgency.EdFi.LocalEducationAgencyReference ResidentLocalEducationAgencyReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitResidentLocalEducationAgencyReference != null
                    && (_residentLocalEducationAgencyReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitResidentLocalEducationAgencyReference.IsReferenceFullyDefined()))
                    return ImplicitResidentLocalEducationAgencyReference;

                return null;
            }
            set
            {
                _residentLocalEducationAgencyReferenceExplicitlyAssigned = true;
                _residentLocalEducationAgencyReference = value;
            }
        }
        private bool _residentSchoolReferenceExplicitlyAssigned;
        private School.EdFi.SchoolReference _residentSchoolReference;
        private School.EdFi.SchoolReference ImplicitResidentSchoolReference
        {
            get
            {
                // if the Reference is null, it is instantiated unless it has been explicitly assigned to null
                if (_residentSchoolReference == null && !_residentSchoolReferenceExplicitlyAssigned)
                    _residentSchoolReference = new School.EdFi.SchoolReference();

                return _residentSchoolReference;
            }
        }

        [DataMember(Name="residentSchoolReference")]
        [FullyDefinedReference]
        public School.EdFi.SchoolReference ResidentSchoolReference
        {
            get
            {
                // Only return the reference if it's non-null, and all its properties have non-default values assigned
                if (ImplicitResidentSchoolReference != null
                    && (_residentSchoolReferenceExplicitlyAssigned || _SuspendReferenceAssignmentCheck || ImplicitResidentSchoolReference.IsReferenceFullyDefined()))
                    return ImplicitResidentSchoolReference;

                return null;
            }
            set
            {
                _residentSchoolReferenceExplicitlyAssigned = true;
                _residentSchoolReference = value;
            }
        }
        // -------------------------------------------------------------

        //==============================================================
        //                         Primary Key
        // -------------------------------------------------------------
        private Entities.Common.EdFi.IStudentSchoolAssociation _studentSchoolAssociation;

        [IgnoreDataMember]
        Entities.Common.EdFi.IStudentSchoolAssociation Entities.Common.NE.IStudentSchoolAssociationExtension.StudentSchoolAssociation
        {
            get { return _studentSchoolAssociation; }
            set { SetStudentSchoolAssociation(value); }
        }

        public Entities.Common.EdFi.IStudentSchoolAssociation StudentSchoolAssociation
        {
            set { SetStudentSchoolAssociation(value); }
        }

        private void SetStudentSchoolAssociation(Entities.Common.EdFi.IStudentSchoolAssociation value)
        {
            _studentSchoolAssociation = value;
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
            var compareTo = obj as Entities.Common.NE.IStudentSchoolAssociationExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_studentSchoolAssociation == null || !_studentSchoolAssociation.Equals(compareTo.StudentSchoolAssociation))
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
            if (_studentSchoolAssociation != null)
                hash.Add(_studentSchoolAssociation);
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
        /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long? Entities.Common.NE.IStudentSchoolAssociationExtension.ExpectedHighSchoolOfGraduationSchoolId
        {
            get
            {
                if (ImplicitExpectedHighSchoolOfGraduationSchoolReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitExpectedHighSchoolOfGraduationSchoolReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitExpectedHighSchoolOfGraduationSchoolReference.SchoolId;
                    }

                return default(long?);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ExpectedHighSchoolOfGraduationSchool
                _expectedHighSchoolOfGraduationSchoolReferenceExplicitlyAssigned = false;
                ImplicitExpectedHighSchoolOfGraduationSchoolReference.SchoolId = value.GetValueOrDefault();
            }
        }

        /// <summary>
        /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.NE.IStudentSchoolAssociationExtension.ReportingSchoolId
        {
            get
            {
                if (ImplicitReportingSchoolReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitReportingSchoolReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitReportingSchoolReference.SchoolId;
                    }

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ReportingSchool
                _reportingSchoolReferenceExplicitlyAssigned = false;
                ImplicitReportingSchoolReference.SchoolId = value;
            }
        }

        /// <summary>
        /// The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long Entities.Common.NE.IStudentSchoolAssociationExtension.ResidentLocalEducationAgencyId
        {
            get
            {
                if (ImplicitResidentLocalEducationAgencyReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitResidentLocalEducationAgencyReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitResidentLocalEducationAgencyReference.LocalEducationAgencyId;
                    }

                return default(long);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ResidentLocalEducationAgency
                _residentLocalEducationAgencyReferenceExplicitlyAssigned = false;
                ImplicitResidentLocalEducationAgencyReference.LocalEducationAgencyId = value;
            }
        }

        /// <summary>
        /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
        /// </summary>
        // IS in a reference, NOT a lookup column 
        long? Entities.Common.NE.IStudentSchoolAssociationExtension.ResidentSchoolId
        {
            get
            {
                if (ImplicitResidentSchoolReference != null
                    && (_SuspendReferenceAssignmentCheck || ImplicitResidentSchoolReference.IsReferenceFullyDefined()))
                    {
                        return ImplicitResidentSchoolReference.SchoolId;
                    }

                return default(long?);
            }
            set
            {
                // When a property is assigned, Reference should not be null even if it has been explicitly assigned to null.
                // All ExplicitlyAssigned are reset to false in advanced

                // ResidentSchool
                _residentSchoolReferenceExplicitlyAssigned = false;
                ImplicitResidentSchoolReference.SchoolId = value.GetValueOrDefault();
            }
        }

        /// <summary>
        /// Override field to determine number of days the student was in membership for ADA and ADM calculation.  This field is optional, and records without a value will use the related calendar to determine days enrolled.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [Range(typeof(decimal), "-999.99", "999.99", ErrorMessage=ValidationHelpers.RangeMessageFormat)]
        [DataMember(Name="studentDaysEnrolled")]
        public decimal? StudentDaysEnrolled { get; set; }
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
            return Entities.Common.NE.StudentSchoolAssociationExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.IStudentSchoolAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.StudentSchoolAssociationExtensionMapper.MapTo(this, (Entities.Common.NE.IStudentSchoolAssociationExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ExpectedHighSchoolOfGraduationSchoolResourceId
        {
            get { return null; }
            set { ImplicitExpectedHighSchoolOfGraduationSchoolReference.ResourceId = value ?? default(Guid); }
        }


        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ReportingSchoolResourceId
        {
            get { return null; }
            set { ImplicitReportingSchoolReference.ResourceId = value ?? default(Guid); }
        }


        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ResidentLocalEducationAgencyResourceId
        {
            get { return null; }
            set { ImplicitResidentLocalEducationAgencyReference.ResourceId = value ?? default(Guid); }
        }


        Guid? Entities.Common.NE.IStudentSchoolAssociationExtension.ResidentSchoolResourceId
        {
            get { return null; }
            set { ImplicitResidentSchoolReference.ResourceId = value ?? default(Guid); }
        }


        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            StudentSchoolAssociation = (IStudentSchoolAssociation)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class StudentSchoolAssociationExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<StudentSchoolAssociationExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentSchoolAssociationExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: StudentSpecialEducationProgramAssociation

namespace EdFi.Ods.Api.Common.Models.Resources.StudentSpecialEducationProgramAssociation.EdFi.Extensions.NE
{
    /// <summary>
    /// A class which represents the ne.StudentSpecialEducationProgramAssociationExtension table of the StudentSpecialEducationProgramAssociation aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    [Display(Name="Ne")]
    public class StudentSpecialEducationProgramAssociationExtension : Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension, IChildEntity
    {
        private static FullName _fullName = new FullName("ne", "StudentSpecialEducationProgramAssociationExtension");

        // Fluent validator instance (threadsafe)
        private static StudentSpecialEducationProgramAssociationExtensionPutPostRequestValidator _validator = new StudentSpecialEducationProgramAssociationExtensionPutPostRequestValidator();
        
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
        private Entities.Common.EdFi.IStudentSpecialEducationProgramAssociation _studentSpecialEducationProgramAssociation;

        [IgnoreDataMember]
        Entities.Common.EdFi.IStudentSpecialEducationProgramAssociation Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension.StudentSpecialEducationProgramAssociation
        {
            get { return _studentSpecialEducationProgramAssociation; }
            set { SetStudentSpecialEducationProgramAssociation(value); }
        }

        public Entities.Common.EdFi.IStudentSpecialEducationProgramAssociation StudentSpecialEducationProgramAssociation
        {
            set { SetStudentSpecialEducationProgramAssociation(value); }
        }

        private void SetStudentSpecialEducationProgramAssociation(Entities.Common.EdFi.IStudentSpecialEducationProgramAssociation value)
        {
            _studentSpecialEducationProgramAssociation = value;
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
            var compareTo = obj as Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;

            // Parent Property
            if (_studentSpecialEducationProgramAssociation == null || !_studentSpecialEducationProgramAssociation.Equals(compareTo.StudentSpecialEducationProgramAssociation))
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
            if (_studentSpecialEducationProgramAssociation != null)
                hash.Add(_studentSpecialEducationProgramAssociation);
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
        /// Date when the child's first IEP or IFSP
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="initialSpecialEducationEntryDate")][JsonConverter(typeof(Iso8601UtcDateOnlyConverter))]
        public DateTime? InitialSpecialEducationEntryDate { get; set; }

        /// <summary>
        /// The reason the Part C IDEA child was delayed in transitioning to Part B.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="partCTransitionDelayReasonDescriptor")][DescriptorExists("PartCTransitionDelayReasonDescriptor")]
        public string PartCTransitionDelayReasonDescriptor { get; set; }

        /// <summary>
        /// Placement type of the student.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="placementTypeDescriptor")][DescriptorExists("PlacementTypeDescriptor")]
        public string PlacementTypeDescriptor { get; set; }

        /// <summary>
        /// Type of program a Special Education student is in - Part B or Part C.
        /// </summary>
        // NOT in a reference, IS a lookup column 
        [NonDefaultStringLength(306, ErrorMessage=ValidationHelpers.StringLengthMessageFormat), NoDangerousText]
        [DataMember(Name="specialEducationProgramDescriptor")][DescriptorExists("SpecialEducationProgramDescriptor")]
        public string SpecialEducationProgramDescriptor { get; set; }

        /// <summary>
        /// True = Indicates the student needs alternate assessment.
        /// </summary>
        // NOT in a reference, NOT a lookup column 
        [DataMember(Name="toTakeAlternateAssessment")][JsonConverter(typeof(StrictBooleanConverter))]
        public bool? ToTakeAlternateAssessment { get; set; }
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
            return Entities.Common.NE.StudentSpecialEducationProgramAssociationExtensionMapper.SynchronizeTo(this, (Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.StudentSpecialEducationProgramAssociationExtensionMapper.MapTo(this, (Entities.Common.NE.IStudentSpecialEducationProgramAssociationExtension)target, null);
        }
        // -------------------------------------------------------------

        // =================================================================
        //                    Resource Reference Data
        // -----------------------------------------------------------------
        // -----------------------------------------------------------------

        void IChildEntity.SetParent(object value)
        {
            StudentSpecialEducationProgramAssociation = (IStudentSpecialEducationProgramAssociation)value;
        }
    }

    // =================================================================
    //                         Validators
    // -----------------------------------------------------------------

    [ExcludeFromCodeCoverage]
    public class StudentSpecialEducationProgramAssociationExtensionPutPostRequestValidator : FluentValidation.AbstractValidator<StudentSpecialEducationProgramAssociationExtension>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<StudentSpecialEducationProgramAssociationExtension> context, FluentValidation.Results.ValidationResult result)
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
// Aggregate: UnilateralRemovalDescriptor

namespace EdFi.Ods.Api.Common.Models.Resources.UnilateralRemovalDescriptor.NE
{
    /// <summary>
    /// A class which represents the ne.UnilateralRemovalDescriptor table of the UnilateralRemovalDescriptor aggregate in the ODS Database.
    /// </summary>
    [Serializable, DataContract]
    [ExcludeFromCodeCoverage]
    public class UnilateralRemovalDescriptor : Entities.Common.NE.IUnilateralRemovalDescriptor, Entities.Common.EdFi.IDescriptor, IHasETag, IDateVersionedEntity
    {
        private static FullName _fullName = new FullName("ne", "UnilateralRemovalDescriptor");

        // Fluent validator instance (threadsafe)
        private static UnilateralRemovalDescriptorPutPostRequestValidator _validator = new UnilateralRemovalDescriptorPutPostRequestValidator();
        
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
        /// The unique identifier for the UnilateralRemovalDescriptor resource.
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
        public int UnilateralRemovalDescriptorId { get; set; }

        int IDescriptor.DescriptorId
        {
            get { return UnilateralRemovalDescriptorId; }
            set { UnilateralRemovalDescriptorId = value; }
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
            var compareTo = obj as Entities.Common.NE.IUnilateralRemovalDescriptor;

            if (ReferenceEquals(this, compareTo))
                return true;

            if (compareTo == null)
                return false;


            // Derived Property
            if (!(this as Entities.Common.NE.IUnilateralRemovalDescriptor).UnilateralRemovalDescriptorId.Equals(compareTo.UnilateralRemovalDescriptorId))
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
            hash.Add((this as Entities.Common.NE.IUnilateralRemovalDescriptor).UnilateralRemovalDescriptorId);

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
            return Entities.Common.NE.UnilateralRemovalDescriptorMapper.SynchronizeTo(this, (Entities.Common.NE.IUnilateralRemovalDescriptor)target);
        }

        void IMappable.Map(object target)
        {
            Entities.Common.NE.UnilateralRemovalDescriptorMapper.MapTo(this, (Entities.Common.NE.IUnilateralRemovalDescriptor)target, null);
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
    public class UnilateralRemovalDescriptorPutPostRequestValidator : FluentValidation.AbstractValidator<UnilateralRemovalDescriptor>
    {
        protected override bool PreValidate(FluentValidation.ValidationContext<UnilateralRemovalDescriptor> context, FluentValidation.Results.ValidationResult result)
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
