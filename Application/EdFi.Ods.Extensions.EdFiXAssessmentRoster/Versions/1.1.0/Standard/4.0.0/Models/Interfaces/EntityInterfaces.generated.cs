using System;
using System.Linq;
using System.Collections.Generic;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Models;

#pragma warning disable 108,114

namespace EdFi.Ods.Entities.Common.EdFiXAssessmentRoster
{

    /// <summary>
    /// Defines available properties and methods for the abstraction of the AssessmentAdministration model.
    /// </summary>
    public interface IAssessmentAdministration : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string AdministrationIdentifier { get; set; }
        
        string AssessmentIdentifier { get; set; }
        
        int AssigningEducationOrganizationId { get; set; }
        
        string Namespace { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists
        ICollection<IAssessmentAdministrationContact> AssessmentAdministrationContacts { get; set; }
        ICollection<IAssessmentAdministrationPeriod> AssessmentAdministrationPeriods { get; set; }

        // Resource reference data
        Guid? AssessmentResourceId { get; set; }
        string AssessmentDiscriminator { get; set; }
        Guid? AssigningEducationOrganizationResourceId { get; set; }
        string AssigningEducationOrganizationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class AssessmentAdministrationMappingContract : IMappingContract
    {
        public AssessmentAdministrationMappingContract(
            bool isAssessmentAdministrationContactsSupported,
            bool isAssessmentAdministrationPeriodsSupported,
            bool isAssessmentReferenceSupported,
            bool isAssigningEducationOrganizationReferenceSupported,
            bool isAssessmentAdministrationContactsItemCreatable,
            Func<IAssessmentAdministrationContact, bool> isAssessmentAdministrationContactIncluded,
            bool isAssessmentAdministrationPeriodsItemCreatable,
            Func<IAssessmentAdministrationPeriod, bool> isAssessmentAdministrationPeriodIncluded
            )
        {
            IsAssessmentAdministrationContactsSupported = isAssessmentAdministrationContactsSupported;
            IsAssessmentAdministrationPeriodsSupported = isAssessmentAdministrationPeriodsSupported;
            IsAssessmentReferenceSupported = isAssessmentReferenceSupported;
            IsAssigningEducationOrganizationReferenceSupported = isAssigningEducationOrganizationReferenceSupported;
            IsAssessmentAdministrationContactsItemCreatable = isAssessmentAdministrationContactsItemCreatable;
            IsAssessmentAdministrationContactIncluded = isAssessmentAdministrationContactIncluded;
            IsAssessmentAdministrationPeriodsItemCreatable = isAssessmentAdministrationPeriodsItemCreatable;
            IsAssessmentAdministrationPeriodIncluded = isAssessmentAdministrationPeriodIncluded;
        }

        public bool IsAssessmentAdministrationContactsSupported { get; }
        public bool IsAssessmentAdministrationPeriodsSupported { get; }
        public bool IsAssessmentReferenceSupported { get; }
        public bool IsAssigningEducationOrganizationReferenceSupported { get; }
        public bool IsAssessmentAdministrationContactsItemCreatable { get; }
        public Func<IAssessmentAdministrationContact, bool> IsAssessmentAdministrationContactIncluded { get; }
        public bool IsAssessmentAdministrationPeriodsItemCreatable { get; }
        public Func<IAssessmentAdministrationPeriod, bool> IsAssessmentAdministrationPeriodIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AssessmentAdministrationContacts":
                    return IsAssessmentAdministrationContactsSupported;
                case "AssessmentAdministrationPeriods":
                    return IsAssessmentAdministrationPeriodsSupported;
                case "AssessmentReference":
                    return IsAssessmentReferenceSupported;
                case "AssigningEducationOrganizationReference":
                    return IsAssigningEducationOrganizationReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AdministrationIdentifier":
                    return true;
                case "AssessmentIdentifier":
                    return true;
                case "AssigningEducationOrganizationId":
                    return true;
                case "Namespace":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "AssessmentAdministrationContacts":
                    return IsAssessmentAdministrationContactsItemCreatable;
                case "AssessmentAdministrationPeriods":
                    return IsAssessmentAdministrationPeriodsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the AssessmentAdministrationContact model.
    /// </summary>
    public interface IAssessmentAdministrationContact : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IAssessmentAdministration AssessmentAdministration { get; set; }
        
        int EducationOrganizationId { get; set; }
        
        string ElectronicMailAddress { get; set; }

        // Non-PK properties
        string FirstName { get; set; }
        string LastSurname { get; set; }
        string LoginId { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EducationOrganizationResourceId { get; set; }
        string EducationOrganizationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class AssessmentAdministrationContactMappingContract : IMappingContract
    {
        public AssessmentAdministrationContactMappingContract(
            bool isEducationOrganizationReferenceSupported,
            bool isFirstNameSupported,
            bool isLastSurnameSupported,
            bool isLoginIdSupported
            )
        {
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsFirstNameSupported = isFirstNameSupported;
            IsLastSurnameSupported = isLastSurnameSupported;
            IsLoginIdSupported = isLoginIdSupported;
        }

        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsFirstNameSupported { get; }
        public bool IsLastSurnameSupported { get; }
        public bool IsLoginIdSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "FirstName":
                    return IsFirstNameSupported;
                case "LastSurname":
                    return IsLastSurnameSupported;
                case "LoginId":
                    return IsLoginIdSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "ElectronicMailAddress":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the AssessmentAdministrationPeriod model.
    /// </summary>
    public interface IAssessmentAdministrationPeriod : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IAssessmentAdministration AssessmentAdministration { get; set; }
        
        DateTime BeginDate { get; set; }

        // Non-PK properties
        DateTime? EndDate { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class AssessmentAdministrationPeriodMappingContract : IMappingContract
    {
        public AssessmentAdministrationPeriodMappingContract(
            bool isEndDateSupported
            )
        {
            IsEndDateSupported = isEndDateSupported;
        }

        public bool IsEndDateSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EndDate":
                    return IsEndDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentAssessmentRegistration model.
    /// </summary>
    public interface IStudentAssessmentRegistration : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string AdministrationIdentifier { get; set; }
        
        string AssessmentIdentifier { get; set; }
        
        int AssigningEducationOrganizationId { get; set; }
        
        int EducationOrganizationId { get; set; }
        
        string Namespace { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        DateTime EntryDate { get; set; }
        string PlatformTypeDescriptor { get; set; }
        int? ReportingEducationOrganizationId { get; set; }
        int SchoolId { get; set; }
        int? TestingEducationOrganizationId { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IStudentAssessmentRegistrationAssessmentCustomization> StudentAssessmentRegistrationAssessmentCustomizations { get; set; }

        // Resource reference data
        Guid? AssessmentAdministrationResourceId { get; set; }
        string AssessmentAdministrationDiscriminator { get; set; }
        Guid? ReportingEducationOrganizationResourceId { get; set; }
        string ReportingEducationOrganizationDiscriminator { get; set; }
        Guid? StudentEducationOrganizationAssociationResourceId { get; set; }
        string StudentEducationOrganizationAssociationDiscriminator { get; set; }
        Guid? StudentSchoolAssociationResourceId { get; set; }
        string StudentSchoolAssociationDiscriminator { get; set; }
        Guid? TestingEducationOrganizationResourceId { get; set; }
        string TestingEducationOrganizationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentAssessmentRegistrationMappingContract : IMappingContract
    {
        public StudentAssessmentRegistrationMappingContract(
            bool isAssessmentAdministrationReferenceSupported,
            bool isEntryDateSupported,
            bool isPlatformTypeDescriptorSupported,
            bool isReportingEducationOrganizationIdSupported,
            bool isReportingEducationOrganizationReferenceSupported,
            bool isSchoolIdSupported,
            bool isStudentAssessmentRegistrationAssessmentCustomizationsSupported,
            bool isStudentEducationOrganizationAssociationReferenceSupported,
            bool isStudentSchoolAssociationReferenceSupported,
            bool isTestingEducationOrganizationIdSupported,
            bool isTestingEducationOrganizationReferenceSupported,
            bool isStudentAssessmentRegistrationAssessmentCustomizationsItemCreatable,
            Func<IStudentAssessmentRegistrationAssessmentCustomization, bool> isStudentAssessmentRegistrationAssessmentCustomizationIncluded
            )
        {
            IsAssessmentAdministrationReferenceSupported = isAssessmentAdministrationReferenceSupported;
            IsEntryDateSupported = isEntryDateSupported;
            IsPlatformTypeDescriptorSupported = isPlatformTypeDescriptorSupported;
            IsReportingEducationOrganizationIdSupported = isReportingEducationOrganizationIdSupported;
            IsReportingEducationOrganizationReferenceSupported = isReportingEducationOrganizationReferenceSupported;
            IsSchoolIdSupported = isSchoolIdSupported;
            IsStudentAssessmentRegistrationAssessmentCustomizationsSupported = isStudentAssessmentRegistrationAssessmentCustomizationsSupported;
            IsStudentEducationOrganizationAssociationReferenceSupported = isStudentEducationOrganizationAssociationReferenceSupported;
            IsStudentSchoolAssociationReferenceSupported = isStudentSchoolAssociationReferenceSupported;
            IsTestingEducationOrganizationIdSupported = isTestingEducationOrganizationIdSupported;
            IsTestingEducationOrganizationReferenceSupported = isTestingEducationOrganizationReferenceSupported;
            IsStudentAssessmentRegistrationAssessmentCustomizationsItemCreatable = isStudentAssessmentRegistrationAssessmentCustomizationsItemCreatable;
            IsStudentAssessmentRegistrationAssessmentCustomizationIncluded = isStudentAssessmentRegistrationAssessmentCustomizationIncluded;
        }

        public bool IsAssessmentAdministrationReferenceSupported { get; }
        public bool IsEntryDateSupported { get; }
        public bool IsPlatformTypeDescriptorSupported { get; }
        public bool IsReportingEducationOrganizationIdSupported { get; }
        public bool IsReportingEducationOrganizationReferenceSupported { get; }
        public bool IsSchoolIdSupported { get; }
        public bool IsStudentAssessmentRegistrationAssessmentCustomizationsSupported { get; }
        public bool IsStudentEducationOrganizationAssociationReferenceSupported { get; }
        public bool IsStudentSchoolAssociationReferenceSupported { get; }
        public bool IsTestingEducationOrganizationIdSupported { get; }
        public bool IsTestingEducationOrganizationReferenceSupported { get; }
        public bool IsStudentAssessmentRegistrationAssessmentCustomizationsItemCreatable { get; }
        public Func<IStudentAssessmentRegistrationAssessmentCustomization, bool> IsStudentAssessmentRegistrationAssessmentCustomizationIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AssessmentAdministrationReference":
                    return IsAssessmentAdministrationReferenceSupported;
                case "EntryDate":
                    return IsEntryDateSupported;
                case "PlatformTypeDescriptor":
                    return IsPlatformTypeDescriptorSupported;
                case "ReportingEducationOrganizationId":
                    return IsReportingEducationOrganizationIdSupported;
                case "ReportingEducationOrganizationReference":
                    return IsReportingEducationOrganizationReferenceSupported;
                case "SchoolId":
                    return IsSchoolIdSupported;
                case "StudentAssessmentRegistrationAssessmentCustomizations":
                    return IsStudentAssessmentRegistrationAssessmentCustomizationsSupported;
                case "StudentEducationOrganizationAssociationReference":
                    return IsStudentEducationOrganizationAssociationReferenceSupported;
                case "StudentSchoolAssociationReference":
                    return IsStudentSchoolAssociationReferenceSupported;
                case "TestingEducationOrganizationId":
                    return IsTestingEducationOrganizationIdSupported;
                case "TestingEducationOrganizationReference":
                    return IsTestingEducationOrganizationReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AdministrationIdentifier":
                    return true;
                case "AssessmentIdentifier":
                    return true;
                case "AssigningEducationOrganizationId":
                    return true;
                case "EducationOrganizationId":
                    return true;
                case "Namespace":
                    return true;
                case "StudentUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "StudentAssessmentRegistrationAssessmentCustomizations":
                    return IsStudentAssessmentRegistrationAssessmentCustomizationsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentAssessmentRegistrationAssessmentCustomization model.
    /// </summary>
    public interface IStudentAssessmentRegistrationAssessmentCustomization : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStudentAssessmentRegistration StudentAssessmentRegistration { get; set; }
        
        string IdentificationCode { get; set; }

        // Non-PK properties
        string CustomizationValue { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentAssessmentRegistrationAssessmentCustomizationMappingContract : IMappingContract
    {
        public StudentAssessmentRegistrationAssessmentCustomizationMappingContract(
            bool isCustomizationValueSupported
            )
        {
            IsCustomizationValueSupported = isCustomizationValueSupported;
        }

        public bool IsCustomizationValueSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CustomizationValue":
                    return IsCustomizationValueSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "IdentificationCode":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }
}
