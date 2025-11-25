using System;
using System.Linq;
using System.Collections.Generic;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Models;
using EdFi.Ods.Entities.Common.EdFi;

#pragma warning disable 108,114

namespace EdFi.Ods.Entities.Common.TPDM
{

    /// <summary>
    /// Defines available properties and methods for the abstraction of the AccreditationStatusDescriptor model.
    /// </summary>
    public interface IAccreditationStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int AccreditationStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class AccreditationStatusDescriptorMappingContract : IMappingContract
    {
        public AccreditationStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AccreditationStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the AidTypeDescriptor model.
    /// </summary>
    public interface IAidTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int AidTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class AidTypeDescriptorMappingContract : IMappingContract
    {
        public AidTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AidTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfile model.
    /// </summary>
    public interface IApplicantProfile : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string ApplicantProfileIdentifier { get; set; }

        // Non-PK properties
        DateTime? BirthDate { get; set; }
        string CitizenshipStatusDescriptor { get; set; }
        bool? EconomicDisadvantaged { get; set; }
        bool? FirstGenerationStudent { get; set; }
        string FirstName { get; set; }
        string GenderDescriptor { get; set; }
        string GenerationCodeSuffix { get; set; }
        string HighestCompletedLevelOfEducationDescriptor { get; set; }
        bool? HighlyQualifiedTeacher { get; set; }
        bool? HispanicLatinoEthnicity { get; set; }
        string LastSurname { get; set; }
        string MaidenName { get; set; }
        string MiddleName { get; set; }
        string PersonalTitlePrefix { get; set; }
        string PreferredFirstName { get; set; }
        string PreferredLastSurname { get; set; }
        string SexDescriptor { get; set; }
        decimal? YearsOfPriorProfessionalExperience { get; set; }
        decimal? YearsOfPriorTeachingExperience { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IApplicantProfileAddress> ApplicantProfileAddresses { get; set; }
        ICollection<IApplicantProfileApplicantCharacteristic> ApplicantProfileApplicantCharacteristics { get; set; }
        ICollection<IApplicantProfileBackgroundCheck> ApplicantProfileBackgroundChecks { get; set; }
        ICollection<IApplicantProfileDisability> ApplicantProfileDisabilities { get; set; }
        ICollection<IApplicantProfileEducatorPreparationProgramName> ApplicantProfileEducatorPreparationProgramNames { get; set; }
        ICollection<IApplicantProfileElectronicMail> ApplicantProfileElectronicMails { get; set; }
        ICollection<IApplicantProfileGradePointAverage> ApplicantProfileGradePointAverages { get; set; }
        ICollection<IApplicantProfileHighlyQualifiedAcademicSubject> ApplicantProfileHighlyQualifiedAcademicSubjects { get; set; }
        ICollection<IApplicantProfileIdentificationDocument> ApplicantProfileIdentificationDocuments { get; set; }
        ICollection<IApplicantProfileInternationalAddress> ApplicantProfileInternationalAddresses { get; set; }
        ICollection<IApplicantProfileLanguage> ApplicantProfileLanguages { get; set; }
        ICollection<IApplicantProfilePersonalIdentificationDocument> ApplicantProfilePersonalIdentificationDocuments { get; set; }
        ICollection<IApplicantProfileRace> ApplicantProfileRaces { get; set; }
        ICollection<IApplicantProfileTelephone> ApplicantProfileTelephones { get; set; }
        ICollection<IApplicantProfileVisa> ApplicantProfileVisas { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileMappingContract : IMappingContract
    {
        public ApplicantProfileMappingContract(
            bool isApplicantProfileAddressesSupported,
            bool isApplicantProfileApplicantCharacteristicsSupported,
            bool isApplicantProfileBackgroundChecksSupported,
            bool isApplicantProfileDisabilitiesSupported,
            bool isApplicantProfileEducatorPreparationProgramNamesSupported,
            bool isApplicantProfileElectronicMailsSupported,
            bool isApplicantProfileGradePointAveragesSupported,
            bool isApplicantProfileHighlyQualifiedAcademicSubjectsSupported,
            bool isApplicantProfileIdentificationDocumentsSupported,
            bool isApplicantProfileInternationalAddressesSupported,
            bool isApplicantProfileLanguagesSupported,
            bool isApplicantProfilePersonalIdentificationDocumentsSupported,
            bool isApplicantProfileRacesSupported,
            bool isApplicantProfileTelephonesSupported,
            bool isApplicantProfileVisasSupported,
            bool isBirthDateSupported,
            bool isCitizenshipStatusDescriptorSupported,
            bool isEconomicDisadvantagedSupported,
            bool isFirstGenerationStudentSupported,
            bool isFirstNameSupported,
            bool isGenderDescriptorSupported,
            bool isGenerationCodeSuffixSupported,
            bool isHighestCompletedLevelOfEducationDescriptorSupported,
            bool isHighlyQualifiedTeacherSupported,
            bool isHispanicLatinoEthnicitySupported,
            bool isLastSurnameSupported,
            bool isMaidenNameSupported,
            bool isMiddleNameSupported,
            bool isPersonalTitlePrefixSupported,
            bool isPreferredFirstNameSupported,
            bool isPreferredLastSurnameSupported,
            bool isSexDescriptorSupported,
            bool isYearsOfPriorProfessionalExperienceSupported,
            bool isYearsOfPriorTeachingExperienceSupported,
            bool isApplicantProfileAddressesItemCreatable,
            Func<IApplicantProfileAddress, bool> isApplicantProfileAddressIncluded,
            bool isApplicantProfileApplicantCharacteristicsItemCreatable,
            Func<IApplicantProfileApplicantCharacteristic, bool> isApplicantProfileApplicantCharacteristicIncluded,
            bool isApplicantProfileBackgroundChecksItemCreatable,
            Func<IApplicantProfileBackgroundCheck, bool> isApplicantProfileBackgroundCheckIncluded,
            bool isApplicantProfileDisabilitiesItemCreatable,
            Func<IApplicantProfileDisability, bool> isApplicantProfileDisabilityIncluded,
            bool isApplicantProfileEducatorPreparationProgramNamesItemCreatable,
            Func<IApplicantProfileEducatorPreparationProgramName, bool> isApplicantProfileEducatorPreparationProgramNameIncluded,
            bool isApplicantProfileElectronicMailsItemCreatable,
            Func<IApplicantProfileElectronicMail, bool> isApplicantProfileElectronicMailIncluded,
            bool isApplicantProfileGradePointAveragesItemCreatable,
            Func<IApplicantProfileGradePointAverage, bool> isApplicantProfileGradePointAverageIncluded,
            bool isApplicantProfileHighlyQualifiedAcademicSubjectsItemCreatable,
            Func<IApplicantProfileHighlyQualifiedAcademicSubject, bool> isApplicantProfileHighlyQualifiedAcademicSubjectIncluded,
            bool isApplicantProfileIdentificationDocumentsItemCreatable,
            Func<IApplicantProfileIdentificationDocument, bool> isApplicantProfileIdentificationDocumentIncluded,
            bool isApplicantProfileInternationalAddressesItemCreatable,
            Func<IApplicantProfileInternationalAddress, bool> isApplicantProfileInternationalAddressIncluded,
            bool isApplicantProfileLanguagesItemCreatable,
            Func<IApplicantProfileLanguage, bool> isApplicantProfileLanguageIncluded,
            bool isApplicantProfilePersonalIdentificationDocumentsItemCreatable,
            Func<IApplicantProfilePersonalIdentificationDocument, bool> isApplicantProfilePersonalIdentificationDocumentIncluded,
            bool isApplicantProfileRacesItemCreatable,
            Func<IApplicantProfileRace, bool> isApplicantProfileRaceIncluded,
            bool isApplicantProfileTelephonesItemCreatable,
            Func<IApplicantProfileTelephone, bool> isApplicantProfileTelephoneIncluded,
            bool isApplicantProfileVisasItemCreatable,
            Func<IApplicantProfileVisa, bool> isApplicantProfileVisaIncluded
            )
        {
            IsApplicantProfileAddressesSupported = isApplicantProfileAddressesSupported;
            IsApplicantProfileApplicantCharacteristicsSupported = isApplicantProfileApplicantCharacteristicsSupported;
            IsApplicantProfileBackgroundChecksSupported = isApplicantProfileBackgroundChecksSupported;
            IsApplicantProfileDisabilitiesSupported = isApplicantProfileDisabilitiesSupported;
            IsApplicantProfileEducatorPreparationProgramNamesSupported = isApplicantProfileEducatorPreparationProgramNamesSupported;
            IsApplicantProfileElectronicMailsSupported = isApplicantProfileElectronicMailsSupported;
            IsApplicantProfileGradePointAveragesSupported = isApplicantProfileGradePointAveragesSupported;
            IsApplicantProfileHighlyQualifiedAcademicSubjectsSupported = isApplicantProfileHighlyQualifiedAcademicSubjectsSupported;
            IsApplicantProfileIdentificationDocumentsSupported = isApplicantProfileIdentificationDocumentsSupported;
            IsApplicantProfileInternationalAddressesSupported = isApplicantProfileInternationalAddressesSupported;
            IsApplicantProfileLanguagesSupported = isApplicantProfileLanguagesSupported;
            IsApplicantProfilePersonalIdentificationDocumentsSupported = isApplicantProfilePersonalIdentificationDocumentsSupported;
            IsApplicantProfileRacesSupported = isApplicantProfileRacesSupported;
            IsApplicantProfileTelephonesSupported = isApplicantProfileTelephonesSupported;
            IsApplicantProfileVisasSupported = isApplicantProfileVisasSupported;
            IsBirthDateSupported = isBirthDateSupported;
            IsCitizenshipStatusDescriptorSupported = isCitizenshipStatusDescriptorSupported;
            IsEconomicDisadvantagedSupported = isEconomicDisadvantagedSupported;
            IsFirstGenerationStudentSupported = isFirstGenerationStudentSupported;
            IsFirstNameSupported = isFirstNameSupported;
            IsGenderDescriptorSupported = isGenderDescriptorSupported;
            IsGenerationCodeSuffixSupported = isGenerationCodeSuffixSupported;
            IsHighestCompletedLevelOfEducationDescriptorSupported = isHighestCompletedLevelOfEducationDescriptorSupported;
            IsHighlyQualifiedTeacherSupported = isHighlyQualifiedTeacherSupported;
            IsHispanicLatinoEthnicitySupported = isHispanicLatinoEthnicitySupported;
            IsLastSurnameSupported = isLastSurnameSupported;
            IsMaidenNameSupported = isMaidenNameSupported;
            IsMiddleNameSupported = isMiddleNameSupported;
            IsPersonalTitlePrefixSupported = isPersonalTitlePrefixSupported;
            IsPreferredFirstNameSupported = isPreferredFirstNameSupported;
            IsPreferredLastSurnameSupported = isPreferredLastSurnameSupported;
            IsSexDescriptorSupported = isSexDescriptorSupported;
            IsYearsOfPriorProfessionalExperienceSupported = isYearsOfPriorProfessionalExperienceSupported;
            IsYearsOfPriorTeachingExperienceSupported = isYearsOfPriorTeachingExperienceSupported;
            IsApplicantProfileAddressesItemCreatable = isApplicantProfileAddressesItemCreatable;
            IsApplicantProfileAddressIncluded = isApplicantProfileAddressIncluded;
            IsApplicantProfileApplicantCharacteristicsItemCreatable = isApplicantProfileApplicantCharacteristicsItemCreatable;
            IsApplicantProfileApplicantCharacteristicIncluded = isApplicantProfileApplicantCharacteristicIncluded;
            IsApplicantProfileBackgroundChecksItemCreatable = isApplicantProfileBackgroundChecksItemCreatable;
            IsApplicantProfileBackgroundCheckIncluded = isApplicantProfileBackgroundCheckIncluded;
            IsApplicantProfileDisabilitiesItemCreatable = isApplicantProfileDisabilitiesItemCreatable;
            IsApplicantProfileDisabilityIncluded = isApplicantProfileDisabilityIncluded;
            IsApplicantProfileEducatorPreparationProgramNamesItemCreatable = isApplicantProfileEducatorPreparationProgramNamesItemCreatable;
            IsApplicantProfileEducatorPreparationProgramNameIncluded = isApplicantProfileEducatorPreparationProgramNameIncluded;
            IsApplicantProfileElectronicMailsItemCreatable = isApplicantProfileElectronicMailsItemCreatable;
            IsApplicantProfileElectronicMailIncluded = isApplicantProfileElectronicMailIncluded;
            IsApplicantProfileGradePointAveragesItemCreatable = isApplicantProfileGradePointAveragesItemCreatable;
            IsApplicantProfileGradePointAverageIncluded = isApplicantProfileGradePointAverageIncluded;
            IsApplicantProfileHighlyQualifiedAcademicSubjectsItemCreatable = isApplicantProfileHighlyQualifiedAcademicSubjectsItemCreatable;
            IsApplicantProfileHighlyQualifiedAcademicSubjectIncluded = isApplicantProfileHighlyQualifiedAcademicSubjectIncluded;
            IsApplicantProfileIdentificationDocumentsItemCreatable = isApplicantProfileIdentificationDocumentsItemCreatable;
            IsApplicantProfileIdentificationDocumentIncluded = isApplicantProfileIdentificationDocumentIncluded;
            IsApplicantProfileInternationalAddressesItemCreatable = isApplicantProfileInternationalAddressesItemCreatable;
            IsApplicantProfileInternationalAddressIncluded = isApplicantProfileInternationalAddressIncluded;
            IsApplicantProfileLanguagesItemCreatable = isApplicantProfileLanguagesItemCreatable;
            IsApplicantProfileLanguageIncluded = isApplicantProfileLanguageIncluded;
            IsApplicantProfilePersonalIdentificationDocumentsItemCreatable = isApplicantProfilePersonalIdentificationDocumentsItemCreatable;
            IsApplicantProfilePersonalIdentificationDocumentIncluded = isApplicantProfilePersonalIdentificationDocumentIncluded;
            IsApplicantProfileRacesItemCreatable = isApplicantProfileRacesItemCreatable;
            IsApplicantProfileRaceIncluded = isApplicantProfileRaceIncluded;
            IsApplicantProfileTelephonesItemCreatable = isApplicantProfileTelephonesItemCreatable;
            IsApplicantProfileTelephoneIncluded = isApplicantProfileTelephoneIncluded;
            IsApplicantProfileVisasItemCreatable = isApplicantProfileVisasItemCreatable;
            IsApplicantProfileVisaIncluded = isApplicantProfileVisaIncluded;
        }

        public bool IsApplicantProfileAddressesSupported { get; }
        public bool IsApplicantProfileApplicantCharacteristicsSupported { get; }
        public bool IsApplicantProfileBackgroundChecksSupported { get; }
        public bool IsApplicantProfileDisabilitiesSupported { get; }
        public bool IsApplicantProfileEducatorPreparationProgramNamesSupported { get; }
        public bool IsApplicantProfileElectronicMailsSupported { get; }
        public bool IsApplicantProfileGradePointAveragesSupported { get; }
        public bool IsApplicantProfileHighlyQualifiedAcademicSubjectsSupported { get; }
        public bool IsApplicantProfileIdentificationDocumentsSupported { get; }
        public bool IsApplicantProfileInternationalAddressesSupported { get; }
        public bool IsApplicantProfileLanguagesSupported { get; }
        public bool IsApplicantProfilePersonalIdentificationDocumentsSupported { get; }
        public bool IsApplicantProfileRacesSupported { get; }
        public bool IsApplicantProfileTelephonesSupported { get; }
        public bool IsApplicantProfileVisasSupported { get; }
        public bool IsBirthDateSupported { get; }
        public bool IsCitizenshipStatusDescriptorSupported { get; }
        public bool IsEconomicDisadvantagedSupported { get; }
        public bool IsFirstGenerationStudentSupported { get; }
        public bool IsFirstNameSupported { get; }
        public bool IsGenderDescriptorSupported { get; }
        public bool IsGenerationCodeSuffixSupported { get; }
        public bool IsHighestCompletedLevelOfEducationDescriptorSupported { get; }
        public bool IsHighlyQualifiedTeacherSupported { get; }
        public bool IsHispanicLatinoEthnicitySupported { get; }
        public bool IsLastSurnameSupported { get; }
        public bool IsMaidenNameSupported { get; }
        public bool IsMiddleNameSupported { get; }
        public bool IsPersonalTitlePrefixSupported { get; }
        public bool IsPreferredFirstNameSupported { get; }
        public bool IsPreferredLastSurnameSupported { get; }
        public bool IsSexDescriptorSupported { get; }
        public bool IsYearsOfPriorProfessionalExperienceSupported { get; }
        public bool IsYearsOfPriorTeachingExperienceSupported { get; }
        public bool IsApplicantProfileAddressesItemCreatable { get; }
        public Func<IApplicantProfileAddress, bool> IsApplicantProfileAddressIncluded { get; }
        public bool IsApplicantProfileApplicantCharacteristicsItemCreatable { get; }
        public Func<IApplicantProfileApplicantCharacteristic, bool> IsApplicantProfileApplicantCharacteristicIncluded { get; }
        public bool IsApplicantProfileBackgroundChecksItemCreatable { get; }
        public Func<IApplicantProfileBackgroundCheck, bool> IsApplicantProfileBackgroundCheckIncluded { get; }
        public bool IsApplicantProfileDisabilitiesItemCreatable { get; }
        public Func<IApplicantProfileDisability, bool> IsApplicantProfileDisabilityIncluded { get; }
        public bool IsApplicantProfileEducatorPreparationProgramNamesItemCreatable { get; }
        public Func<IApplicantProfileEducatorPreparationProgramName, bool> IsApplicantProfileEducatorPreparationProgramNameIncluded { get; }
        public bool IsApplicantProfileElectronicMailsItemCreatable { get; }
        public Func<IApplicantProfileElectronicMail, bool> IsApplicantProfileElectronicMailIncluded { get; }
        public bool IsApplicantProfileGradePointAveragesItemCreatable { get; }
        public Func<IApplicantProfileGradePointAverage, bool> IsApplicantProfileGradePointAverageIncluded { get; }
        public bool IsApplicantProfileHighlyQualifiedAcademicSubjectsItemCreatable { get; }
        public Func<IApplicantProfileHighlyQualifiedAcademicSubject, bool> IsApplicantProfileHighlyQualifiedAcademicSubjectIncluded { get; }
        public bool IsApplicantProfileIdentificationDocumentsItemCreatable { get; }
        public Func<IApplicantProfileIdentificationDocument, bool> IsApplicantProfileIdentificationDocumentIncluded { get; }
        public bool IsApplicantProfileInternationalAddressesItemCreatable { get; }
        public Func<IApplicantProfileInternationalAddress, bool> IsApplicantProfileInternationalAddressIncluded { get; }
        public bool IsApplicantProfileLanguagesItemCreatable { get; }
        public Func<IApplicantProfileLanguage, bool> IsApplicantProfileLanguageIncluded { get; }
        public bool IsApplicantProfilePersonalIdentificationDocumentsItemCreatable { get; }
        public Func<IApplicantProfilePersonalIdentificationDocument, bool> IsApplicantProfilePersonalIdentificationDocumentIncluded { get; }
        public bool IsApplicantProfileRacesItemCreatable { get; }
        public Func<IApplicantProfileRace, bool> IsApplicantProfileRaceIncluded { get; }
        public bool IsApplicantProfileTelephonesItemCreatable { get; }
        public Func<IApplicantProfileTelephone, bool> IsApplicantProfileTelephoneIncluded { get; }
        public bool IsApplicantProfileVisasItemCreatable { get; }
        public Func<IApplicantProfileVisa, bool> IsApplicantProfileVisaIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileAddresses":
                    return IsApplicantProfileAddressesSupported;
                case "ApplicantProfileApplicantCharacteristics":
                    return IsApplicantProfileApplicantCharacteristicsSupported;
                case "ApplicantProfileBackgroundChecks":
                    return IsApplicantProfileBackgroundChecksSupported;
                case "ApplicantProfileDisabilities":
                    return IsApplicantProfileDisabilitiesSupported;
                case "ApplicantProfileEducatorPreparationProgramNames":
                    return IsApplicantProfileEducatorPreparationProgramNamesSupported;
                case "ApplicantProfileElectronicMails":
                    return IsApplicantProfileElectronicMailsSupported;
                case "ApplicantProfileGradePointAverages":
                    return IsApplicantProfileGradePointAveragesSupported;
                case "ApplicantProfileHighlyQualifiedAcademicSubjects":
                    return IsApplicantProfileHighlyQualifiedAcademicSubjectsSupported;
                case "ApplicantProfileIdentificationDocuments":
                    return IsApplicantProfileIdentificationDocumentsSupported;
                case "ApplicantProfileInternationalAddresses":
                    return IsApplicantProfileInternationalAddressesSupported;
                case "ApplicantProfileLanguages":
                    return IsApplicantProfileLanguagesSupported;
                case "ApplicantProfilePersonalIdentificationDocuments":
                    return IsApplicantProfilePersonalIdentificationDocumentsSupported;
                case "ApplicantProfileRaces":
                    return IsApplicantProfileRacesSupported;
                case "ApplicantProfileTelephones":
                    return IsApplicantProfileTelephonesSupported;
                case "ApplicantProfileVisas":
                    return IsApplicantProfileVisasSupported;
                case "BirthDate":
                    return IsBirthDateSupported;
                case "CitizenshipStatusDescriptor":
                    return IsCitizenshipStatusDescriptorSupported;
                case "EconomicDisadvantaged":
                    return IsEconomicDisadvantagedSupported;
                case "FirstGenerationStudent":
                    return IsFirstGenerationStudentSupported;
                case "FirstName":
                    return IsFirstNameSupported;
                case "GenderDescriptor":
                    return IsGenderDescriptorSupported;
                case "GenerationCodeSuffix":
                    return IsGenerationCodeSuffixSupported;
                case "HighestCompletedLevelOfEducationDescriptor":
                    return IsHighestCompletedLevelOfEducationDescriptorSupported;
                case "HighlyQualifiedTeacher":
                    return IsHighlyQualifiedTeacherSupported;
                case "HispanicLatinoEthnicity":
                    return IsHispanicLatinoEthnicitySupported;
                case "LastSurname":
                    return IsLastSurnameSupported;
                case "MaidenName":
                    return IsMaidenNameSupported;
                case "MiddleName":
                    return IsMiddleNameSupported;
                case "PersonalTitlePrefix":
                    return IsPersonalTitlePrefixSupported;
                case "PreferredFirstName":
                    return IsPreferredFirstNameSupported;
                case "PreferredLastSurname":
                    return IsPreferredLastSurnameSupported;
                case "SexDescriptor":
                    return IsSexDescriptorSupported;
                case "YearsOfPriorProfessionalExperience":
                    return IsYearsOfPriorProfessionalExperienceSupported;
                case "YearsOfPriorTeachingExperience":
                    return IsYearsOfPriorTeachingExperienceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ApplicantProfileIdentifier":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileAddresses":
                    return IsApplicantProfileAddressesItemCreatable;
                case "ApplicantProfileApplicantCharacteristics":
                    return IsApplicantProfileApplicantCharacteristicsItemCreatable;
                case "ApplicantProfileBackgroundChecks":
                    return IsApplicantProfileBackgroundChecksItemCreatable;
                case "ApplicantProfileDisabilities":
                    return IsApplicantProfileDisabilitiesItemCreatable;
                case "ApplicantProfileEducatorPreparationProgramNames":
                    return IsApplicantProfileEducatorPreparationProgramNamesItemCreatable;
                case "ApplicantProfileElectronicMails":
                    return IsApplicantProfileElectronicMailsItemCreatable;
                case "ApplicantProfileGradePointAverages":
                    return IsApplicantProfileGradePointAveragesItemCreatable;
                case "ApplicantProfileHighlyQualifiedAcademicSubjects":
                    return IsApplicantProfileHighlyQualifiedAcademicSubjectsItemCreatable;
                case "ApplicantProfileIdentificationDocuments":
                    return IsApplicantProfileIdentificationDocumentsItemCreatable;
                case "ApplicantProfileInternationalAddresses":
                    return IsApplicantProfileInternationalAddressesItemCreatable;
                case "ApplicantProfileLanguages":
                    return IsApplicantProfileLanguagesItemCreatable;
                case "ApplicantProfilePersonalIdentificationDocuments":
                    return IsApplicantProfilePersonalIdentificationDocumentsItemCreatable;
                case "ApplicantProfileRaces":
                    return IsApplicantProfileRacesItemCreatable;
                case "ApplicantProfileTelephones":
                    return IsApplicantProfileTelephonesItemCreatable;
                case "ApplicantProfileVisas":
                    return IsApplicantProfileVisasItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileAddress model.
    /// </summary>
    public interface IApplicantProfileAddress : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string AddressTypeDescriptor { get; set; }
        
        string City { get; set; }
        
        string PostalCode { get; set; }
        
        string StateAbbreviationDescriptor { get; set; }
        
        string StreetNumberName { get; set; }

        // Non-PK properties
        string ApartmentRoomSuiteNumber { get; set; }
        string BuildingSiteNumber { get; set; }
        string CongressionalDistrict { get; set; }
        string CountyFIPSCode { get; set; }
        bool? DoNotPublishIndicator { get; set; }
        string Latitude { get; set; }
        string LocaleDescriptor { get; set; }
        string Longitude { get; set; }
        string NameOfCounty { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IApplicantProfileAddressPeriod> ApplicantProfileAddressPeriods { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileAddressMappingContract : IMappingContract
    {
        public ApplicantProfileAddressMappingContract(
            bool isApartmentRoomSuiteNumberSupported,
            bool isApplicantProfileAddressPeriodsSupported,
            bool isBuildingSiteNumberSupported,
            bool isCongressionalDistrictSupported,
            bool isCountyFIPSCodeSupported,
            bool isDoNotPublishIndicatorSupported,
            bool isLatitudeSupported,
            bool isLocaleDescriptorSupported,
            bool isLongitudeSupported,
            bool isNameOfCountySupported,
            bool isApplicantProfileAddressPeriodsItemCreatable,
            Func<IApplicantProfileAddressPeriod, bool> isApplicantProfileAddressPeriodIncluded
            )
        {
            IsApartmentRoomSuiteNumberSupported = isApartmentRoomSuiteNumberSupported;
            IsApplicantProfileAddressPeriodsSupported = isApplicantProfileAddressPeriodsSupported;
            IsBuildingSiteNumberSupported = isBuildingSiteNumberSupported;
            IsCongressionalDistrictSupported = isCongressionalDistrictSupported;
            IsCountyFIPSCodeSupported = isCountyFIPSCodeSupported;
            IsDoNotPublishIndicatorSupported = isDoNotPublishIndicatorSupported;
            IsLatitudeSupported = isLatitudeSupported;
            IsLocaleDescriptorSupported = isLocaleDescriptorSupported;
            IsLongitudeSupported = isLongitudeSupported;
            IsNameOfCountySupported = isNameOfCountySupported;
            IsApplicantProfileAddressPeriodsItemCreatable = isApplicantProfileAddressPeriodsItemCreatable;
            IsApplicantProfileAddressPeriodIncluded = isApplicantProfileAddressPeriodIncluded;
        }

        public bool IsApartmentRoomSuiteNumberSupported { get; }
        public bool IsApplicantProfileAddressPeriodsSupported { get; }
        public bool IsBuildingSiteNumberSupported { get; }
        public bool IsCongressionalDistrictSupported { get; }
        public bool IsCountyFIPSCodeSupported { get; }
        public bool IsDoNotPublishIndicatorSupported { get; }
        public bool IsLatitudeSupported { get; }
        public bool IsLocaleDescriptorSupported { get; }
        public bool IsLongitudeSupported { get; }
        public bool IsNameOfCountySupported { get; }
        public bool IsApplicantProfileAddressPeriodsItemCreatable { get; }
        public Func<IApplicantProfileAddressPeriod, bool> IsApplicantProfileAddressPeriodIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApartmentRoomSuiteNumber":
                    return IsApartmentRoomSuiteNumberSupported;
                case "ApplicantProfileAddressPeriods":
                    return IsApplicantProfileAddressPeriodsSupported;
                case "BuildingSiteNumber":
                    return IsBuildingSiteNumberSupported;
                case "CongressionalDistrict":
                    return IsCongressionalDistrictSupported;
                case "CountyFIPSCode":
                    return IsCountyFIPSCodeSupported;
                case "DoNotPublishIndicator":
                    return IsDoNotPublishIndicatorSupported;
                case "Latitude":
                    return IsLatitudeSupported;
                case "LocaleDescriptor":
                    return IsLocaleDescriptorSupported;
                case "Longitude":
                    return IsLongitudeSupported;
                case "NameOfCounty":
                    return IsNameOfCountySupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AddressTypeDescriptor":
                    return true;
                case "City":
                    return true;
                case "PostalCode":
                    return true;
                case "StateAbbreviationDescriptor":
                    return true;
                case "StreetNumberName":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileAddressPeriods":
                    return IsApplicantProfileAddressPeriodsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileAddressPeriod model.
    /// </summary>
    public interface IApplicantProfileAddressPeriod : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfileAddress ApplicantProfileAddress { get; set; }
        
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
    public class ApplicantProfileAddressPeriodMappingContract : IMappingContract
    {
        public ApplicantProfileAddressPeriodMappingContract(
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
    /// Defines available properties and methods for the abstraction of the ApplicantProfileApplicantCharacteristic model.
    /// </summary>
    public interface IApplicantProfileApplicantCharacteristic : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string StudentCharacteristicDescriptor { get; set; }

        // Non-PK properties
        DateTime? BeginDate { get; set; }
        string DesignatedBy { get; set; }
        DateTime? EndDate { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileApplicantCharacteristicMappingContract : IMappingContract
    {
        public ApplicantProfileApplicantCharacteristicMappingContract(
            bool isBeginDateSupported,
            bool isDesignatedBySupported,
            bool isEndDateSupported
            )
        {
            IsBeginDateSupported = isBeginDateSupported;
            IsDesignatedBySupported = isDesignatedBySupported;
            IsEndDateSupported = isEndDateSupported;
        }

        public bool IsBeginDateSupported { get; }
        public bool IsDesignatedBySupported { get; }
        public bool IsEndDateSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BeginDate":
                    return IsBeginDateSupported;
                case "DesignatedBy":
                    return IsDesignatedBySupported;
                case "EndDate":
                    return IsEndDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "StudentCharacteristicDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileBackgroundCheck model.
    /// </summary>
    public interface IApplicantProfileBackgroundCheck : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string BackgroundCheckTypeDescriptor { get; set; }

        // Non-PK properties
        DateTime? BackgroundCheckCompletedDate { get; set; }
        DateTime BackgroundCheckRequestedDate { get; set; }
        string BackgroundCheckStatusDescriptor { get; set; }
        bool? Fingerprint { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileBackgroundCheckMappingContract : IMappingContract
    {
        public ApplicantProfileBackgroundCheckMappingContract(
            bool isBackgroundCheckCompletedDateSupported,
            bool isBackgroundCheckRequestedDateSupported,
            bool isBackgroundCheckStatusDescriptorSupported,
            bool isFingerprintSupported
            )
        {
            IsBackgroundCheckCompletedDateSupported = isBackgroundCheckCompletedDateSupported;
            IsBackgroundCheckRequestedDateSupported = isBackgroundCheckRequestedDateSupported;
            IsBackgroundCheckStatusDescriptorSupported = isBackgroundCheckStatusDescriptorSupported;
            IsFingerprintSupported = isFingerprintSupported;
        }

        public bool IsBackgroundCheckCompletedDateSupported { get; }
        public bool IsBackgroundCheckRequestedDateSupported { get; }
        public bool IsBackgroundCheckStatusDescriptorSupported { get; }
        public bool IsFingerprintSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BackgroundCheckCompletedDate":
                    return IsBackgroundCheckCompletedDateSupported;
                case "BackgroundCheckRequestedDate":
                    return IsBackgroundCheckRequestedDateSupported;
                case "BackgroundCheckStatusDescriptor":
                    return IsBackgroundCheckStatusDescriptorSupported;
                case "Fingerprint":
                    return IsFingerprintSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BackgroundCheckTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileDisability model.
    /// </summary>
    public interface IApplicantProfileDisability : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string DisabilityDescriptor { get; set; }

        // Non-PK properties
        string DisabilityDeterminationSourceTypeDescriptor { get; set; }
        string DisabilityDiagnosis { get; set; }
        int? OrderOfDisability { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IApplicantProfileDisabilityDesignation> ApplicantProfileDisabilityDesignations { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileDisabilityMappingContract : IMappingContract
    {
        public ApplicantProfileDisabilityMappingContract(
            bool isApplicantProfileDisabilityDesignationsSupported,
            bool isDisabilityDeterminationSourceTypeDescriptorSupported,
            bool isDisabilityDiagnosisSupported,
            bool isOrderOfDisabilitySupported,
            bool isApplicantProfileDisabilityDesignationsItemCreatable,
            Func<IApplicantProfileDisabilityDesignation, bool> isApplicantProfileDisabilityDesignationIncluded
            )
        {
            IsApplicantProfileDisabilityDesignationsSupported = isApplicantProfileDisabilityDesignationsSupported;
            IsDisabilityDeterminationSourceTypeDescriptorSupported = isDisabilityDeterminationSourceTypeDescriptorSupported;
            IsDisabilityDiagnosisSupported = isDisabilityDiagnosisSupported;
            IsOrderOfDisabilitySupported = isOrderOfDisabilitySupported;
            IsApplicantProfileDisabilityDesignationsItemCreatable = isApplicantProfileDisabilityDesignationsItemCreatable;
            IsApplicantProfileDisabilityDesignationIncluded = isApplicantProfileDisabilityDesignationIncluded;
        }

        public bool IsApplicantProfileDisabilityDesignationsSupported { get; }
        public bool IsDisabilityDeterminationSourceTypeDescriptorSupported { get; }
        public bool IsDisabilityDiagnosisSupported { get; }
        public bool IsOrderOfDisabilitySupported { get; }
        public bool IsApplicantProfileDisabilityDesignationsItemCreatable { get; }
        public Func<IApplicantProfileDisabilityDesignation, bool> IsApplicantProfileDisabilityDesignationIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileDisabilityDesignations":
                    return IsApplicantProfileDisabilityDesignationsSupported;
                case "DisabilityDeterminationSourceTypeDescriptor":
                    return IsDisabilityDeterminationSourceTypeDescriptorSupported;
                case "DisabilityDiagnosis":
                    return IsDisabilityDiagnosisSupported;
                case "OrderOfDisability":
                    return IsOrderOfDisabilitySupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "DisabilityDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileDisabilityDesignations":
                    return IsApplicantProfileDisabilityDesignationsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileDisabilityDesignation model.
    /// </summary>
    public interface IApplicantProfileDisabilityDesignation : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfileDisability ApplicantProfileDisability { get; set; }
        
        string DisabilityDesignationDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileDisabilityDesignationMappingContract : IMappingContract
    {
        public ApplicantProfileDisabilityDesignationMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "DisabilityDesignationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileEducatorPreparationProgramName model.
    /// </summary>
    public interface IApplicantProfileEducatorPreparationProgramName : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string EducatorPreparationProgramName { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileEducatorPreparationProgramNameMappingContract : IMappingContract
    {
        public ApplicantProfileEducatorPreparationProgramNameMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducatorPreparationProgramName":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileElectronicMail model.
    /// </summary>
    public interface IApplicantProfileElectronicMail : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string ElectronicMailAddress { get; set; }
        
        string ElectronicMailTypeDescriptor { get; set; }

        // Non-PK properties
        bool? DoNotPublishIndicator { get; set; }
        bool? PrimaryEmailAddressIndicator { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileElectronicMailMappingContract : IMappingContract
    {
        public ApplicantProfileElectronicMailMappingContract(
            bool isDoNotPublishIndicatorSupported,
            bool isPrimaryEmailAddressIndicatorSupported
            )
        {
            IsDoNotPublishIndicatorSupported = isDoNotPublishIndicatorSupported;
            IsPrimaryEmailAddressIndicatorSupported = isPrimaryEmailAddressIndicatorSupported;
        }

        public bool IsDoNotPublishIndicatorSupported { get; }
        public bool IsPrimaryEmailAddressIndicatorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DoNotPublishIndicator":
                    return IsDoNotPublishIndicatorSupported;
                case "PrimaryEmailAddressIndicator":
                    return IsPrimaryEmailAddressIndicatorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ElectronicMailAddress":
                    return true;
                case "ElectronicMailTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileGradePointAverage model.
    /// </summary>
    public interface IApplicantProfileGradePointAverage : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string GradePointAverageTypeDescriptor { get; set; }

        // Non-PK properties
        decimal GradePointAverageValue { get; set; }
        bool? IsCumulative { get; set; }
        decimal? MaxGradePointAverageValue { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileGradePointAverageMappingContract : IMappingContract
    {
        public ApplicantProfileGradePointAverageMappingContract(
            bool isGradePointAverageValueSupported,
            bool isIsCumulativeSupported,
            bool isMaxGradePointAverageValueSupported
            )
        {
            IsGradePointAverageValueSupported = isGradePointAverageValueSupported;
            IsIsCumulativeSupported = isIsCumulativeSupported;
            IsMaxGradePointAverageValueSupported = isMaxGradePointAverageValueSupported;
        }

        public bool IsGradePointAverageValueSupported { get; }
        public bool IsIsCumulativeSupported { get; }
        public bool IsMaxGradePointAverageValueSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "GradePointAverageValue":
                    return IsGradePointAverageValueSupported;
                case "IsCumulative":
                    return IsIsCumulativeSupported;
                case "MaxGradePointAverageValue":
                    return IsMaxGradePointAverageValueSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "GradePointAverageTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileHighlyQualifiedAcademicSubject model.
    /// </summary>
    public interface IApplicantProfileHighlyQualifiedAcademicSubject : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string AcademicSubjectDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileHighlyQualifiedAcademicSubjectMappingContract : IMappingContract
    {
        public ApplicantProfileHighlyQualifiedAcademicSubjectMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AcademicSubjectDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileIdentificationDocument model.
    /// </summary>
    public interface IApplicantProfileIdentificationDocument : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string IdentificationDocumentUseDescriptor { get; set; }
        
        string PersonalInformationVerificationDescriptor { get; set; }

        // Non-PK properties
        DateTime? DocumentExpirationDate { get; set; }
        string DocumentTitle { get; set; }
        string IssuerCountryDescriptor { get; set; }
        string IssuerDocumentIdentificationCode { get; set; }
        string IssuerName { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileIdentificationDocumentMappingContract : IMappingContract
    {
        public ApplicantProfileIdentificationDocumentMappingContract(
            bool isDocumentExpirationDateSupported,
            bool isDocumentTitleSupported,
            bool isIssuerCountryDescriptorSupported,
            bool isIssuerDocumentIdentificationCodeSupported,
            bool isIssuerNameSupported
            )
        {
            IsDocumentExpirationDateSupported = isDocumentExpirationDateSupported;
            IsDocumentTitleSupported = isDocumentTitleSupported;
            IsIssuerCountryDescriptorSupported = isIssuerCountryDescriptorSupported;
            IsIssuerDocumentIdentificationCodeSupported = isIssuerDocumentIdentificationCodeSupported;
            IsIssuerNameSupported = isIssuerNameSupported;
        }

        public bool IsDocumentExpirationDateSupported { get; }
        public bool IsDocumentTitleSupported { get; }
        public bool IsIssuerCountryDescriptorSupported { get; }
        public bool IsIssuerDocumentIdentificationCodeSupported { get; }
        public bool IsIssuerNameSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DocumentExpirationDate":
                    return IsDocumentExpirationDateSupported;
                case "DocumentTitle":
                    return IsDocumentTitleSupported;
                case "IssuerCountryDescriptor":
                    return IsIssuerCountryDescriptorSupported;
                case "IssuerDocumentIdentificationCode":
                    return IsIssuerDocumentIdentificationCodeSupported;
                case "IssuerName":
                    return IsIssuerNameSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "IdentificationDocumentUseDescriptor":
                    return true;
                case "PersonalInformationVerificationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileInternationalAddress model.
    /// </summary>
    public interface IApplicantProfileInternationalAddress : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string AddressTypeDescriptor { get; set; }

        // Non-PK properties
        string AddressLine1 { get; set; }
        string AddressLine2 { get; set; }
        string AddressLine3 { get; set; }
        string AddressLine4 { get; set; }
        DateTime? BeginDate { get; set; }
        string CountryDescriptor { get; set; }
        DateTime? EndDate { get; set; }
        string Latitude { get; set; }
        string Longitude { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileInternationalAddressMappingContract : IMappingContract
    {
        public ApplicantProfileInternationalAddressMappingContract(
            bool isAddressLine1Supported,
            bool isAddressLine2Supported,
            bool isAddressLine3Supported,
            bool isAddressLine4Supported,
            bool isBeginDateSupported,
            bool isCountryDescriptorSupported,
            bool isEndDateSupported,
            bool isLatitudeSupported,
            bool isLongitudeSupported
            )
        {
            IsAddressLine1Supported = isAddressLine1Supported;
            IsAddressLine2Supported = isAddressLine2Supported;
            IsAddressLine3Supported = isAddressLine3Supported;
            IsAddressLine4Supported = isAddressLine4Supported;
            IsBeginDateSupported = isBeginDateSupported;
            IsCountryDescriptorSupported = isCountryDescriptorSupported;
            IsEndDateSupported = isEndDateSupported;
            IsLatitudeSupported = isLatitudeSupported;
            IsLongitudeSupported = isLongitudeSupported;
        }

        public bool IsAddressLine1Supported { get; }
        public bool IsAddressLine2Supported { get; }
        public bool IsAddressLine3Supported { get; }
        public bool IsAddressLine4Supported { get; }
        public bool IsBeginDateSupported { get; }
        public bool IsCountryDescriptorSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsLatitudeSupported { get; }
        public bool IsLongitudeSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AddressLine1":
                    return IsAddressLine1Supported;
                case "AddressLine2":
                    return IsAddressLine2Supported;
                case "AddressLine3":
                    return IsAddressLine3Supported;
                case "AddressLine4":
                    return IsAddressLine4Supported;
                case "BeginDate":
                    return IsBeginDateSupported;
                case "CountryDescriptor":
                    return IsCountryDescriptorSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "Latitude":
                    return IsLatitudeSupported;
                case "Longitude":
                    return IsLongitudeSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AddressTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileLanguage model.
    /// </summary>
    public interface IApplicantProfileLanguage : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string LanguageDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists
        ICollection<IApplicantProfileLanguageUse> ApplicantProfileLanguageUses { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileLanguageMappingContract : IMappingContract
    {
        public ApplicantProfileLanguageMappingContract(
            bool isApplicantProfileLanguageUsesSupported,
            bool isApplicantProfileLanguageUsesItemCreatable,
            Func<IApplicantProfileLanguageUse, bool> isApplicantProfileLanguageUseIncluded
            )
        {
            IsApplicantProfileLanguageUsesSupported = isApplicantProfileLanguageUsesSupported;
            IsApplicantProfileLanguageUsesItemCreatable = isApplicantProfileLanguageUsesItemCreatable;
            IsApplicantProfileLanguageUseIncluded = isApplicantProfileLanguageUseIncluded;
        }

        public bool IsApplicantProfileLanguageUsesSupported { get; }
        public bool IsApplicantProfileLanguageUsesItemCreatable { get; }
        public Func<IApplicantProfileLanguageUse, bool> IsApplicantProfileLanguageUseIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileLanguageUses":
                    return IsApplicantProfileLanguageUsesSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "LanguageDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileLanguageUses":
                    return IsApplicantProfileLanguageUsesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileLanguageUse model.
    /// </summary>
    public interface IApplicantProfileLanguageUse : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfileLanguage ApplicantProfileLanguage { get; set; }
        
        string LanguageUseDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileLanguageUseMappingContract : IMappingContract
    {
        public ApplicantProfileLanguageUseMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "LanguageUseDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfilePersonalIdentificationDocument model.
    /// </summary>
    public interface IApplicantProfilePersonalIdentificationDocument : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string IdentificationDocumentUseDescriptor { get; set; }
        
        string PersonalInformationVerificationDescriptor { get; set; }

        // Non-PK properties
        DateTime? DocumentExpirationDate { get; set; }
        string DocumentTitle { get; set; }
        string IssuerCountryDescriptor { get; set; }
        string IssuerDocumentIdentificationCode { get; set; }
        string IssuerName { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfilePersonalIdentificationDocumentMappingContract : IMappingContract
    {
        public ApplicantProfilePersonalIdentificationDocumentMappingContract(
            bool isDocumentExpirationDateSupported,
            bool isDocumentTitleSupported,
            bool isIssuerCountryDescriptorSupported,
            bool isIssuerDocumentIdentificationCodeSupported,
            bool isIssuerNameSupported
            )
        {
            IsDocumentExpirationDateSupported = isDocumentExpirationDateSupported;
            IsDocumentTitleSupported = isDocumentTitleSupported;
            IsIssuerCountryDescriptorSupported = isIssuerCountryDescriptorSupported;
            IsIssuerDocumentIdentificationCodeSupported = isIssuerDocumentIdentificationCodeSupported;
            IsIssuerNameSupported = isIssuerNameSupported;
        }

        public bool IsDocumentExpirationDateSupported { get; }
        public bool IsDocumentTitleSupported { get; }
        public bool IsIssuerCountryDescriptorSupported { get; }
        public bool IsIssuerDocumentIdentificationCodeSupported { get; }
        public bool IsIssuerNameSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DocumentExpirationDate":
                    return IsDocumentExpirationDateSupported;
                case "DocumentTitle":
                    return IsDocumentTitleSupported;
                case "IssuerCountryDescriptor":
                    return IsIssuerCountryDescriptorSupported;
                case "IssuerDocumentIdentificationCode":
                    return IsIssuerDocumentIdentificationCodeSupported;
                case "IssuerName":
                    return IsIssuerNameSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "IdentificationDocumentUseDescriptor":
                    return true;
                case "PersonalInformationVerificationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileRace model.
    /// </summary>
    public interface IApplicantProfileRace : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string RaceDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileRaceMappingContract : IMappingContract
    {
        public ApplicantProfileRaceMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RaceDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileTelephone model.
    /// </summary>
    public interface IApplicantProfileTelephone : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string TelephoneNumber { get; set; }
        
        string TelephoneNumberTypeDescriptor { get; set; }

        // Non-PK properties
        bool? DoNotPublishIndicator { get; set; }
        int? OrderOfPriority { get; set; }
        bool? TextMessageCapabilityIndicator { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileTelephoneMappingContract : IMappingContract
    {
        public ApplicantProfileTelephoneMappingContract(
            bool isDoNotPublishIndicatorSupported,
            bool isOrderOfPrioritySupported,
            bool isTextMessageCapabilityIndicatorSupported
            )
        {
            IsDoNotPublishIndicatorSupported = isDoNotPublishIndicatorSupported;
            IsOrderOfPrioritySupported = isOrderOfPrioritySupported;
            IsTextMessageCapabilityIndicatorSupported = isTextMessageCapabilityIndicatorSupported;
        }

        public bool IsDoNotPublishIndicatorSupported { get; }
        public bool IsOrderOfPrioritySupported { get; }
        public bool IsTextMessageCapabilityIndicatorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DoNotPublishIndicator":
                    return IsDoNotPublishIndicatorSupported;
                case "OrderOfPriority":
                    return IsOrderOfPrioritySupported;
                case "TextMessageCapabilityIndicator":
                    return IsTextMessageCapabilityIndicatorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "TelephoneNumber":
                    return true;
                case "TelephoneNumberTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicantProfileVisa model.
    /// </summary>
    public interface IApplicantProfileVisa : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplicantProfile ApplicantProfile { get; set; }
        
        string VisaDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicantProfileVisaMappingContract : IMappingContract
    {
        public ApplicantProfileVisaMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "VisaDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the Application model.
    /// </summary>
    public interface IApplication : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string ApplicantProfileIdentifier { get; set; }
        
        string ApplicationIdentifier { get; set; }
        
        long EducationOrganizationId { get; set; }

        // Non-PK properties
        string AcademicSubjectDescriptor { get; set; }
        DateTime? AcceptedDate { get; set; }
        DateTime ApplicationDate { get; set; }
        string ApplicationSourceDescriptor { get; set; }
        string ApplicationStatusDescriptor { get; set; }
        bool? CurrentEmployee { get; set; }
        DateTime? FirstContactDate { get; set; }
        string HighNeedsAcademicSubjectDescriptor { get; set; }
        string HireStatusDescriptor { get; set; }
        string HiringSourceDescriptor { get; set; }
        string RequisitionNumber { get; set; }
        DateTime? WithdrawDate { get; set; }
        string WithdrawReasonDescriptor { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IApplicationRecruitmentEventAttendance> ApplicationRecruitmentEventAttendances { get; set; }
        ICollection<IApplicationScoreResult> ApplicationScoreResults { get; set; }
        ICollection<IApplicationTerm> ApplicationTerms { get; set; }

        // Resource reference data
        Guid? ApplicantProfileResourceId { get; set; }
        string ApplicantProfileDiscriminator { get; set; }
        Guid? EducationOrganizationResourceId { get; set; }
        string EducationOrganizationDiscriminator { get; set; }
        Guid? OpenStaffPositionResourceId { get; set; }
        string OpenStaffPositionDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationMappingContract : IMappingContract
    {
        public ApplicationMappingContract(
            bool isAcademicSubjectDescriptorSupported,
            bool isAcceptedDateSupported,
            bool isApplicantProfileReferenceSupported,
            bool isApplicationDateSupported,
            bool isApplicationRecruitmentEventAttendancesSupported,
            bool isApplicationScoreResultsSupported,
            bool isApplicationSourceDescriptorSupported,
            bool isApplicationStatusDescriptorSupported,
            bool isApplicationTermsSupported,
            bool isCurrentEmployeeSupported,
            bool isEducationOrganizationReferenceSupported,
            bool isFirstContactDateSupported,
            bool isHighNeedsAcademicSubjectDescriptorSupported,
            bool isHireStatusDescriptorSupported,
            bool isHiringSourceDescriptorSupported,
            bool isOpenStaffPositionReferenceSupported,
            bool isRequisitionNumberSupported,
            bool isWithdrawDateSupported,
            bool isWithdrawReasonDescriptorSupported,
            bool isApplicationRecruitmentEventAttendancesItemCreatable,
            Func<IApplicationRecruitmentEventAttendance, bool> isApplicationRecruitmentEventAttendanceIncluded,
            bool isApplicationScoreResultsItemCreatable,
            Func<IApplicationScoreResult, bool> isApplicationScoreResultIncluded,
            bool isApplicationTermsItemCreatable,
            Func<IApplicationTerm, bool> isApplicationTermIncluded
            )
        {
            IsAcademicSubjectDescriptorSupported = isAcademicSubjectDescriptorSupported;
            IsAcceptedDateSupported = isAcceptedDateSupported;
            IsApplicantProfileReferenceSupported = isApplicantProfileReferenceSupported;
            IsApplicationDateSupported = isApplicationDateSupported;
            IsApplicationRecruitmentEventAttendancesSupported = isApplicationRecruitmentEventAttendancesSupported;
            IsApplicationScoreResultsSupported = isApplicationScoreResultsSupported;
            IsApplicationSourceDescriptorSupported = isApplicationSourceDescriptorSupported;
            IsApplicationStatusDescriptorSupported = isApplicationStatusDescriptorSupported;
            IsApplicationTermsSupported = isApplicationTermsSupported;
            IsCurrentEmployeeSupported = isCurrentEmployeeSupported;
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsFirstContactDateSupported = isFirstContactDateSupported;
            IsHighNeedsAcademicSubjectDescriptorSupported = isHighNeedsAcademicSubjectDescriptorSupported;
            IsHireStatusDescriptorSupported = isHireStatusDescriptorSupported;
            IsHiringSourceDescriptorSupported = isHiringSourceDescriptorSupported;
            IsOpenStaffPositionReferenceSupported = isOpenStaffPositionReferenceSupported;
            IsRequisitionNumberSupported = isRequisitionNumberSupported;
            IsWithdrawDateSupported = isWithdrawDateSupported;
            IsWithdrawReasonDescriptorSupported = isWithdrawReasonDescriptorSupported;
            IsApplicationRecruitmentEventAttendancesItemCreatable = isApplicationRecruitmentEventAttendancesItemCreatable;
            IsApplicationRecruitmentEventAttendanceIncluded = isApplicationRecruitmentEventAttendanceIncluded;
            IsApplicationScoreResultsItemCreatable = isApplicationScoreResultsItemCreatable;
            IsApplicationScoreResultIncluded = isApplicationScoreResultIncluded;
            IsApplicationTermsItemCreatable = isApplicationTermsItemCreatable;
            IsApplicationTermIncluded = isApplicationTermIncluded;
        }

        public bool IsAcademicSubjectDescriptorSupported { get; }
        public bool IsAcceptedDateSupported { get; }
        public bool IsApplicantProfileReferenceSupported { get; }
        public bool IsApplicationDateSupported { get; }
        public bool IsApplicationRecruitmentEventAttendancesSupported { get; }
        public bool IsApplicationScoreResultsSupported { get; }
        public bool IsApplicationSourceDescriptorSupported { get; }
        public bool IsApplicationStatusDescriptorSupported { get; }
        public bool IsApplicationTermsSupported { get; }
        public bool IsCurrentEmployeeSupported { get; }
        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsFirstContactDateSupported { get; }
        public bool IsHighNeedsAcademicSubjectDescriptorSupported { get; }
        public bool IsHireStatusDescriptorSupported { get; }
        public bool IsHiringSourceDescriptorSupported { get; }
        public bool IsOpenStaffPositionReferenceSupported { get; }
        public bool IsRequisitionNumberSupported { get; }
        public bool IsWithdrawDateSupported { get; }
        public bool IsWithdrawReasonDescriptorSupported { get; }
        public bool IsApplicationRecruitmentEventAttendancesItemCreatable { get; }
        public Func<IApplicationRecruitmentEventAttendance, bool> IsApplicationRecruitmentEventAttendanceIncluded { get; }
        public bool IsApplicationScoreResultsItemCreatable { get; }
        public Func<IApplicationScoreResult, bool> IsApplicationScoreResultIncluded { get; }
        public bool IsApplicationTermsItemCreatable { get; }
        public Func<IApplicationTerm, bool> IsApplicationTermIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AcademicSubjectDescriptor":
                    return IsAcademicSubjectDescriptorSupported;
                case "AcceptedDate":
                    return IsAcceptedDateSupported;
                case "ApplicantProfileReference":
                    return IsApplicantProfileReferenceSupported;
                case "ApplicationDate":
                    return IsApplicationDateSupported;
                case "ApplicationRecruitmentEventAttendances":
                    return IsApplicationRecruitmentEventAttendancesSupported;
                case "ApplicationScoreResults":
                    return IsApplicationScoreResultsSupported;
                case "ApplicationSourceDescriptor":
                    return IsApplicationSourceDescriptorSupported;
                case "ApplicationStatusDescriptor":
                    return IsApplicationStatusDescriptorSupported;
                case "ApplicationTerms":
                    return IsApplicationTermsSupported;
                case "CurrentEmployee":
                    return IsCurrentEmployeeSupported;
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "FirstContactDate":
                    return IsFirstContactDateSupported;
                case "HighNeedsAcademicSubjectDescriptor":
                    return IsHighNeedsAcademicSubjectDescriptorSupported;
                case "HireStatusDescriptor":
                    return IsHireStatusDescriptorSupported;
                case "HiringSourceDescriptor":
                    return IsHiringSourceDescriptorSupported;
                case "OpenStaffPositionReference":
                    return IsOpenStaffPositionReferenceSupported;
                case "RequisitionNumber":
                    return IsRequisitionNumberSupported;
                case "WithdrawDate":
                    return IsWithdrawDateSupported;
                case "WithdrawReasonDescriptor":
                    return IsWithdrawReasonDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ApplicantProfileIdentifier":
                    return true;
                case "ApplicationIdentifier":
                    return true;
                case "EducationOrganizationId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "ApplicationRecruitmentEventAttendances":
                    return IsApplicationRecruitmentEventAttendancesItemCreatable;
                case "ApplicationScoreResults":
                    return IsApplicationScoreResultsItemCreatable;
                case "ApplicationTerms":
                    return IsApplicationTermsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationEvent model.
    /// </summary>
    public interface IApplicationEvent : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string ApplicantProfileIdentifier { get; set; }
        
        string ApplicationEventTypeDescriptor { get; set; }
        
        string ApplicationIdentifier { get; set; }
        
        long EducationOrganizationId { get; set; }
        
        DateTime EventDate { get; set; }
        
        int SequenceNumber { get; set; }

        // Non-PK properties
        decimal? ApplicationEvaluationScore { get; set; }
        string ApplicationEventResultDescriptor { get; set; }
        DateTime? EventEndDate { get; set; }
        short SchoolYear { get; set; }
        string TermDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? ApplicationResourceId { get; set; }
        string ApplicationDiscriminator { get; set; }
        Guid? SchoolYearTypeResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationEventMappingContract : IMappingContract
    {
        public ApplicationEventMappingContract(
            bool isApplicationEvaluationScoreSupported,
            bool isApplicationEventResultDescriptorSupported,
            bool isApplicationReferenceSupported,
            bool isEventEndDateSupported,
            bool isSchoolYearSupported,
            bool isSchoolYearTypeReferenceSupported,
            bool isTermDescriptorSupported
            )
        {
            IsApplicationEvaluationScoreSupported = isApplicationEvaluationScoreSupported;
            IsApplicationEventResultDescriptorSupported = isApplicationEventResultDescriptorSupported;
            IsApplicationReferenceSupported = isApplicationReferenceSupported;
            IsEventEndDateSupported = isEventEndDateSupported;
            IsSchoolYearSupported = isSchoolYearSupported;
            IsSchoolYearTypeReferenceSupported = isSchoolYearTypeReferenceSupported;
            IsTermDescriptorSupported = isTermDescriptorSupported;
        }

        public bool IsApplicationEvaluationScoreSupported { get; }
        public bool IsApplicationEventResultDescriptorSupported { get; }
        public bool IsApplicationReferenceSupported { get; }
        public bool IsEventEndDateSupported { get; }
        public bool IsSchoolYearSupported { get; }
        public bool IsSchoolYearTypeReferenceSupported { get; }
        public bool IsTermDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApplicationEvaluationScore":
                    return IsApplicationEvaluationScoreSupported;
                case "ApplicationEventResultDescriptor":
                    return IsApplicationEventResultDescriptorSupported;
                case "ApplicationReference":
                    return IsApplicationReferenceSupported;
                case "EventEndDate":
                    return IsEventEndDateSupported;
                case "SchoolYear":
                    return IsSchoolYearSupported;
                case "SchoolYearTypeReference":
                    return IsSchoolYearTypeReferenceSupported;
                case "TermDescriptor":
                    return IsTermDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ApplicantProfileIdentifier":
                    return true;
                case "ApplicationEventTypeDescriptor":
                    return true;
                case "ApplicationIdentifier":
                    return true;
                case "EducationOrganizationId":
                    return true;
                case "EventDate":
                    return true;
                case "SequenceNumber":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationEventResultDescriptor model.
    /// </summary>
    public interface IApplicationEventResultDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ApplicationEventResultDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationEventResultDescriptorMappingContract : IMappingContract
    {
        public ApplicationEventResultDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ApplicationEventResultDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationEventTypeDescriptor model.
    /// </summary>
    public interface IApplicationEventTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ApplicationEventTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationEventTypeDescriptorMappingContract : IMappingContract
    {
        public ApplicationEventTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ApplicationEventTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationRecruitmentEventAttendance model.
    /// </summary>
    public interface IApplicationRecruitmentEventAttendance : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplication Application { get; set; }
        
        DateTime EventDate { get; set; }
        
        string EventTitle { get; set; }
        
        string RecruitmentEventAttendeeIdentifier { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? RecruitmentEventAttendanceResourceId { get; set; }
        string RecruitmentEventAttendanceDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationRecruitmentEventAttendanceMappingContract : IMappingContract
    {
        public ApplicationRecruitmentEventAttendanceMappingContract(
            bool isRecruitmentEventAttendanceReferenceSupported
            )
        {
            IsRecruitmentEventAttendanceReferenceSupported = isRecruitmentEventAttendanceReferenceSupported;
        }

        public bool IsRecruitmentEventAttendanceReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "RecruitmentEventAttendanceReference":
                    return IsRecruitmentEventAttendanceReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EventDate":
                    return true;
                case "EventTitle":
                    return true;
                case "RecruitmentEventAttendeeIdentifier":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationScoreResult model.
    /// </summary>
    public interface IApplicationScoreResult : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplication Application { get; set; }
        
        string AssessmentReportingMethodDescriptor { get; set; }

        // Non-PK properties
        string Result { get; set; }
        string ResultDatatypeTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationScoreResultMappingContract : IMappingContract
    {
        public ApplicationScoreResultMappingContract(
            bool isResultSupported,
            bool isResultDatatypeTypeDescriptorSupported
            )
        {
            IsResultSupported = isResultSupported;
            IsResultDatatypeTypeDescriptorSupported = isResultDatatypeTypeDescriptorSupported;
        }

        public bool IsResultSupported { get; }
        public bool IsResultDatatypeTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "Result":
                    return IsResultSupported;
                case "ResultDatatypeTypeDescriptor":
                    return IsResultDatatypeTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AssessmentReportingMethodDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationSourceDescriptor model.
    /// </summary>
    public interface IApplicationSourceDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ApplicationSourceDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationSourceDescriptorMappingContract : IMappingContract
    {
        public ApplicationSourceDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ApplicationSourceDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationStatusDescriptor model.
    /// </summary>
    public interface IApplicationStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ApplicationStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationStatusDescriptorMappingContract : IMappingContract
    {
        public ApplicationStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ApplicationStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ApplicationTerm model.
    /// </summary>
    public interface IApplicationTerm : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IApplication Application { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ApplicationTermMappingContract : IMappingContract
    {
        public ApplicationTermMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the AssessmentExtension model.
    /// </summary>
    public interface IAssessmentExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IAssessment Assessment { get; set; }

        // Non-PK properties
        string ProgramGatewayDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class AssessmentExtensionMappingContract : IMappingContract
    {
        public AssessmentExtensionMappingContract(
            bool isProgramGatewayDescriptorSupported
            )
        {
            IsProgramGatewayDescriptorSupported = isProgramGatewayDescriptorSupported;
        }

        public bool IsProgramGatewayDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ProgramGatewayDescriptor":
                    return IsProgramGatewayDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the BackgroundCheckStatusDescriptor model.
    /// </summary>
    public interface IBackgroundCheckStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int BackgroundCheckStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class BackgroundCheckStatusDescriptorMappingContract : IMappingContract
    {
        public BackgroundCheckStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BackgroundCheckStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the BackgroundCheckTypeDescriptor model.
    /// </summary>
    public interface IBackgroundCheckTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int BackgroundCheckTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class BackgroundCheckTypeDescriptorMappingContract : IMappingContract
    {
        public BackgroundCheckTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BackgroundCheckTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the Candidate model.
    /// </summary>
    public interface ICandidate : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string CandidateIdentifier { get; set; }

        // Non-PK properties
        string ApplicantProfileIdentifier { get; set; }
        string ApplicationIdentifier { get; set; }
        string BirthCity { get; set; }
        string BirthCountryDescriptor { get; set; }
        DateTime BirthDate { get; set; }
        string BirthInternationalProvince { get; set; }
        string BirthSexDescriptor { get; set; }
        string BirthStateAbbreviationDescriptor { get; set; }
        string CitizenshipStatusDescriptor { get; set; }
        DateTime? DateEnteredUS { get; set; }
        string DisplacementStatus { get; set; }
        bool? EconomicDisadvantaged { get; set; }
        long? EducationOrganizationId { get; set; }
        string EnglishLanguageExamDescriptor { get; set; }
        bool? FirstGenerationStudent { get; set; }
        string FirstName { get; set; }
        string GenderDescriptor { get; set; }
        string GenerationCodeSuffix { get; set; }
        bool? HispanicLatinoEthnicity { get; set; }
        string LastSurname { get; set; }
        string LimitedEnglishProficiencyDescriptor { get; set; }
        string LoginId { get; set; }
        string MaidenName { get; set; }
        string MiddleName { get; set; }
        bool? MultipleBirthStatus { get; set; }
        string OldEthnicityDescriptor { get; set; }
        string PersonalTitlePrefix { get; set; }
        string PersonId { get; set; }
        string PreferredFirstName { get; set; }
        string PreferredLastSurname { get; set; }
        string PreviousCareerDescriptor { get; set; }
        string ProfileThumbnail { get; set; }
        bool? ProgramComplete { get; set; }
        string SexDescriptor { get; set; }
        string SourceSystemDescriptor { get; set; }
        decimal? TuitionCost { get; set; }

        // One-to-one relationships

        ICandidateBackgroundCheck CandidateBackgroundCheck { get; set; }

        // Lists
        ICollection<ICandidateAddress> CandidateAddresses { get; set; }
        ICollection<ICandidateAid> CandidateAids { get; set; }
        ICollection<ICandidateCharacteristic> CandidateCharacteristics { get; set; }
        ICollection<ICandidateCohortYear> CandidateCohortYears { get; set; }
        ICollection<ICandidateDegreeSpecialization> CandidateDegreeSpecializations { get; set; }
        ICollection<ICandidateDisability> CandidateDisabilities { get; set; }
        ICollection<ICandidateElectronicMail> CandidateElectronicMails { get; set; }
        ICollection<ICandidateEPPProgramDegree> CandidateEPPProgramDegrees { get; set; }
        ICollection<ICandidateIdentificationCode> CandidateIdentificationCodes { get; set; }
        ICollection<ICandidateIdentificationDocument> CandidateIdentificationDocuments { get; set; }
        ICollection<ICandidateIndicator> CandidateIndicators { get; set; }
        ICollection<ICandidateInternationalAddress> CandidateInternationalAddresses { get; set; }
        ICollection<ICandidateLanguage> CandidateLanguages { get; set; }
        ICollection<ICandidateOtherName> CandidateOtherNames { get; set; }
        ICollection<ICandidatePersonalIdentificationDocument> CandidatePersonalIdentificationDocuments { get; set; }
        ICollection<ICandidateRace> CandidateRaces { get; set; }
        ICollection<ICandidateTelephone> CandidateTelephones { get; set; }
        ICollection<ICandidateVisa> CandidateVisas { get; set; }

        // Resource reference data
        Guid? ApplicationResourceId { get; set; }
        string ApplicationDiscriminator { get; set; }
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateMappingContract : IMappingContract
    {
        public CandidateMappingContract(
            bool isApplicantProfileIdentifierSupported,
            bool isApplicationIdentifierSupported,
            bool isApplicationReferenceSupported,
            bool isBirthCitySupported,
            bool isBirthCountryDescriptorSupported,
            bool isBirthDateSupported,
            bool isBirthInternationalProvinceSupported,
            bool isBirthSexDescriptorSupported,
            bool isBirthStateAbbreviationDescriptorSupported,
            bool isCandidateAddressesSupported,
            bool isCandidateAidsSupported,
            bool isCandidateBackgroundCheckSupported,
            bool isCandidateCharacteristicsSupported,
            bool isCandidateCohortYearsSupported,
            bool isCandidateDegreeSpecializationsSupported,
            bool isCandidateDisabilitiesSupported,
            bool isCandidateElectronicMailsSupported,
            bool isCandidateEPPProgramDegreesSupported,
            bool isCandidateIdentificationCodesSupported,
            bool isCandidateIdentificationDocumentsSupported,
            bool isCandidateIndicatorsSupported,
            bool isCandidateInternationalAddressesSupported,
            bool isCandidateLanguagesSupported,
            bool isCandidateOtherNamesSupported,
            bool isCandidatePersonalIdentificationDocumentsSupported,
            bool isCandidateRacesSupported,
            bool isCandidateTelephonesSupported,
            bool isCandidateVisasSupported,
            bool isCitizenshipStatusDescriptorSupported,
            bool isDateEnteredUSSupported,
            bool isDisplacementStatusSupported,
            bool isEconomicDisadvantagedSupported,
            bool isEducationOrganizationIdSupported,
            bool isEnglishLanguageExamDescriptorSupported,
            bool isFirstGenerationStudentSupported,
            bool isFirstNameSupported,
            bool isGenderDescriptorSupported,
            bool isGenerationCodeSuffixSupported,
            bool isHispanicLatinoEthnicitySupported,
            bool isLastSurnameSupported,
            bool isLimitedEnglishProficiencyDescriptorSupported,
            bool isLoginIdSupported,
            bool isMaidenNameSupported,
            bool isMiddleNameSupported,
            bool isMultipleBirthStatusSupported,
            bool isOldEthnicityDescriptorSupported,
            bool isPersonalTitlePrefixSupported,
            bool isPersonIdSupported,
            bool isPersonReferenceSupported,
            bool isPreferredFirstNameSupported,
            bool isPreferredLastSurnameSupported,
            bool isPreviousCareerDescriptorSupported,
            bool isProfileThumbnailSupported,
            bool isProgramCompleteSupported,
            bool isSexDescriptorSupported,
            bool isSourceSystemDescriptorSupported,
            bool isTuitionCostSupported,
            bool isCandidateBackgroundCheckCreatable,
            bool isCandidateAddressesItemCreatable,
            Func<ICandidateAddress, bool> isCandidateAddressIncluded,
            bool isCandidateAidsItemCreatable,
            Func<ICandidateAid, bool> isCandidateAidIncluded,
            bool isCandidateCharacteristicsItemCreatable,
            Func<ICandidateCharacteristic, bool> isCandidateCharacteristicIncluded,
            bool isCandidateCohortYearsItemCreatable,
            Func<ICandidateCohortYear, bool> isCandidateCohortYearIncluded,
            bool isCandidateDegreeSpecializationsItemCreatable,
            Func<ICandidateDegreeSpecialization, bool> isCandidateDegreeSpecializationIncluded,
            bool isCandidateDisabilitiesItemCreatable,
            Func<ICandidateDisability, bool> isCandidateDisabilityIncluded,
            bool isCandidateElectronicMailsItemCreatable,
            Func<ICandidateElectronicMail, bool> isCandidateElectronicMailIncluded,
            bool isCandidateEPPProgramDegreesItemCreatable,
            Func<ICandidateEPPProgramDegree, bool> isCandidateEPPProgramDegreeIncluded,
            bool isCandidateIdentificationCodesItemCreatable,
            Func<ICandidateIdentificationCode, bool> isCandidateIdentificationCodeIncluded,
            bool isCandidateIdentificationDocumentsItemCreatable,
            Func<ICandidateIdentificationDocument, bool> isCandidateIdentificationDocumentIncluded,
            bool isCandidateIndicatorsItemCreatable,
            Func<ICandidateIndicator, bool> isCandidateIndicatorIncluded,
            bool isCandidateInternationalAddressesItemCreatable,
            Func<ICandidateInternationalAddress, bool> isCandidateInternationalAddressIncluded,
            bool isCandidateLanguagesItemCreatable,
            Func<ICandidateLanguage, bool> isCandidateLanguageIncluded,
            bool isCandidateOtherNamesItemCreatable,
            Func<ICandidateOtherName, bool> isCandidateOtherNameIncluded,
            bool isCandidatePersonalIdentificationDocumentsItemCreatable,
            Func<ICandidatePersonalIdentificationDocument, bool> isCandidatePersonalIdentificationDocumentIncluded,
            bool isCandidateRacesItemCreatable,
            Func<ICandidateRace, bool> isCandidateRaceIncluded,
            bool isCandidateTelephonesItemCreatable,
            Func<ICandidateTelephone, bool> isCandidateTelephoneIncluded,
            bool isCandidateVisasItemCreatable,
            Func<ICandidateVisa, bool> isCandidateVisaIncluded
            )
        {
            IsApplicantProfileIdentifierSupported = isApplicantProfileIdentifierSupported;
            IsApplicationIdentifierSupported = isApplicationIdentifierSupported;
            IsApplicationReferenceSupported = isApplicationReferenceSupported;
            IsBirthCitySupported = isBirthCitySupported;
            IsBirthCountryDescriptorSupported = isBirthCountryDescriptorSupported;
            IsBirthDateSupported = isBirthDateSupported;
            IsBirthInternationalProvinceSupported = isBirthInternationalProvinceSupported;
            IsBirthSexDescriptorSupported = isBirthSexDescriptorSupported;
            IsBirthStateAbbreviationDescriptorSupported = isBirthStateAbbreviationDescriptorSupported;
            IsCandidateAddressesSupported = isCandidateAddressesSupported;
            IsCandidateAidsSupported = isCandidateAidsSupported;
            IsCandidateBackgroundCheckSupported = isCandidateBackgroundCheckSupported;
            IsCandidateCharacteristicsSupported = isCandidateCharacteristicsSupported;
            IsCandidateCohortYearsSupported = isCandidateCohortYearsSupported;
            IsCandidateDegreeSpecializationsSupported = isCandidateDegreeSpecializationsSupported;
            IsCandidateDisabilitiesSupported = isCandidateDisabilitiesSupported;
            IsCandidateElectronicMailsSupported = isCandidateElectronicMailsSupported;
            IsCandidateEPPProgramDegreesSupported = isCandidateEPPProgramDegreesSupported;
            IsCandidateIdentificationCodesSupported = isCandidateIdentificationCodesSupported;
            IsCandidateIdentificationDocumentsSupported = isCandidateIdentificationDocumentsSupported;
            IsCandidateIndicatorsSupported = isCandidateIndicatorsSupported;
            IsCandidateInternationalAddressesSupported = isCandidateInternationalAddressesSupported;
            IsCandidateLanguagesSupported = isCandidateLanguagesSupported;
            IsCandidateOtherNamesSupported = isCandidateOtherNamesSupported;
            IsCandidatePersonalIdentificationDocumentsSupported = isCandidatePersonalIdentificationDocumentsSupported;
            IsCandidateRacesSupported = isCandidateRacesSupported;
            IsCandidateTelephonesSupported = isCandidateTelephonesSupported;
            IsCandidateVisasSupported = isCandidateVisasSupported;
            IsCitizenshipStatusDescriptorSupported = isCitizenshipStatusDescriptorSupported;
            IsDateEnteredUSSupported = isDateEnteredUSSupported;
            IsDisplacementStatusSupported = isDisplacementStatusSupported;
            IsEconomicDisadvantagedSupported = isEconomicDisadvantagedSupported;
            IsEducationOrganizationIdSupported = isEducationOrganizationIdSupported;
            IsEnglishLanguageExamDescriptorSupported = isEnglishLanguageExamDescriptorSupported;
            IsFirstGenerationStudentSupported = isFirstGenerationStudentSupported;
            IsFirstNameSupported = isFirstNameSupported;
            IsGenderDescriptorSupported = isGenderDescriptorSupported;
            IsGenerationCodeSuffixSupported = isGenerationCodeSuffixSupported;
            IsHispanicLatinoEthnicitySupported = isHispanicLatinoEthnicitySupported;
            IsLastSurnameSupported = isLastSurnameSupported;
            IsLimitedEnglishProficiencyDescriptorSupported = isLimitedEnglishProficiencyDescriptorSupported;
            IsLoginIdSupported = isLoginIdSupported;
            IsMaidenNameSupported = isMaidenNameSupported;
            IsMiddleNameSupported = isMiddleNameSupported;
            IsMultipleBirthStatusSupported = isMultipleBirthStatusSupported;
            IsOldEthnicityDescriptorSupported = isOldEthnicityDescriptorSupported;
            IsPersonalTitlePrefixSupported = isPersonalTitlePrefixSupported;
            IsPersonIdSupported = isPersonIdSupported;
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsPreferredFirstNameSupported = isPreferredFirstNameSupported;
            IsPreferredLastSurnameSupported = isPreferredLastSurnameSupported;
            IsPreviousCareerDescriptorSupported = isPreviousCareerDescriptorSupported;
            IsProfileThumbnailSupported = isProfileThumbnailSupported;
            IsProgramCompleteSupported = isProgramCompleteSupported;
            IsSexDescriptorSupported = isSexDescriptorSupported;
            IsSourceSystemDescriptorSupported = isSourceSystemDescriptorSupported;
            IsTuitionCostSupported = isTuitionCostSupported;
            IsCandidateBackgroundCheckCreatable = isCandidateBackgroundCheckCreatable;
            IsCandidateAddressesItemCreatable = isCandidateAddressesItemCreatable;
            IsCandidateAddressIncluded = isCandidateAddressIncluded;
            IsCandidateAidsItemCreatable = isCandidateAidsItemCreatable;
            IsCandidateAidIncluded = isCandidateAidIncluded;
            IsCandidateCharacteristicsItemCreatable = isCandidateCharacteristicsItemCreatable;
            IsCandidateCharacteristicIncluded = isCandidateCharacteristicIncluded;
            IsCandidateCohortYearsItemCreatable = isCandidateCohortYearsItemCreatable;
            IsCandidateCohortYearIncluded = isCandidateCohortYearIncluded;
            IsCandidateDegreeSpecializationsItemCreatable = isCandidateDegreeSpecializationsItemCreatable;
            IsCandidateDegreeSpecializationIncluded = isCandidateDegreeSpecializationIncluded;
            IsCandidateDisabilitiesItemCreatable = isCandidateDisabilitiesItemCreatable;
            IsCandidateDisabilityIncluded = isCandidateDisabilityIncluded;
            IsCandidateElectronicMailsItemCreatable = isCandidateElectronicMailsItemCreatable;
            IsCandidateElectronicMailIncluded = isCandidateElectronicMailIncluded;
            IsCandidateEPPProgramDegreesItemCreatable = isCandidateEPPProgramDegreesItemCreatable;
            IsCandidateEPPProgramDegreeIncluded = isCandidateEPPProgramDegreeIncluded;
            IsCandidateIdentificationCodesItemCreatable = isCandidateIdentificationCodesItemCreatable;
            IsCandidateIdentificationCodeIncluded = isCandidateIdentificationCodeIncluded;
            IsCandidateIdentificationDocumentsItemCreatable = isCandidateIdentificationDocumentsItemCreatable;
            IsCandidateIdentificationDocumentIncluded = isCandidateIdentificationDocumentIncluded;
            IsCandidateIndicatorsItemCreatable = isCandidateIndicatorsItemCreatable;
            IsCandidateIndicatorIncluded = isCandidateIndicatorIncluded;
            IsCandidateInternationalAddressesItemCreatable = isCandidateInternationalAddressesItemCreatable;
            IsCandidateInternationalAddressIncluded = isCandidateInternationalAddressIncluded;
            IsCandidateLanguagesItemCreatable = isCandidateLanguagesItemCreatable;
            IsCandidateLanguageIncluded = isCandidateLanguageIncluded;
            IsCandidateOtherNamesItemCreatable = isCandidateOtherNamesItemCreatable;
            IsCandidateOtherNameIncluded = isCandidateOtherNameIncluded;
            IsCandidatePersonalIdentificationDocumentsItemCreatable = isCandidatePersonalIdentificationDocumentsItemCreatable;
            IsCandidatePersonalIdentificationDocumentIncluded = isCandidatePersonalIdentificationDocumentIncluded;
            IsCandidateRacesItemCreatable = isCandidateRacesItemCreatable;
            IsCandidateRaceIncluded = isCandidateRaceIncluded;
            IsCandidateTelephonesItemCreatable = isCandidateTelephonesItemCreatable;
            IsCandidateTelephoneIncluded = isCandidateTelephoneIncluded;
            IsCandidateVisasItemCreatable = isCandidateVisasItemCreatable;
            IsCandidateVisaIncluded = isCandidateVisaIncluded;
        }

        public bool IsApplicantProfileIdentifierSupported { get; }
        public bool IsApplicationIdentifierSupported { get; }
        public bool IsApplicationReferenceSupported { get; }
        public bool IsBirthCitySupported { get; }
        public bool IsBirthCountryDescriptorSupported { get; }
        public bool IsBirthDateSupported { get; }
        public bool IsBirthInternationalProvinceSupported { get; }
        public bool IsBirthSexDescriptorSupported { get; }
        public bool IsBirthStateAbbreviationDescriptorSupported { get; }
        public bool IsCandidateAddressesSupported { get; }
        public bool IsCandidateAidsSupported { get; }
        public bool IsCandidateBackgroundCheckSupported { get; }
        public bool IsCandidateCharacteristicsSupported { get; }
        public bool IsCandidateCohortYearsSupported { get; }
        public bool IsCandidateDegreeSpecializationsSupported { get; }
        public bool IsCandidateDisabilitiesSupported { get; }
        public bool IsCandidateElectronicMailsSupported { get; }
        public bool IsCandidateEPPProgramDegreesSupported { get; }
        public bool IsCandidateIdentificationCodesSupported { get; }
        public bool IsCandidateIdentificationDocumentsSupported { get; }
        public bool IsCandidateIndicatorsSupported { get; }
        public bool IsCandidateInternationalAddressesSupported { get; }
        public bool IsCandidateLanguagesSupported { get; }
        public bool IsCandidateOtherNamesSupported { get; }
        public bool IsCandidatePersonalIdentificationDocumentsSupported { get; }
        public bool IsCandidateRacesSupported { get; }
        public bool IsCandidateTelephonesSupported { get; }
        public bool IsCandidateVisasSupported { get; }
        public bool IsCitizenshipStatusDescriptorSupported { get; }
        public bool IsDateEnteredUSSupported { get; }
        public bool IsDisplacementStatusSupported { get; }
        public bool IsEconomicDisadvantagedSupported { get; }
        public bool IsEducationOrganizationIdSupported { get; }
        public bool IsEnglishLanguageExamDescriptorSupported { get; }
        public bool IsFirstGenerationStudentSupported { get; }
        public bool IsFirstNameSupported { get; }
        public bool IsGenderDescriptorSupported { get; }
        public bool IsGenerationCodeSuffixSupported { get; }
        public bool IsHispanicLatinoEthnicitySupported { get; }
        public bool IsLastSurnameSupported { get; }
        public bool IsLimitedEnglishProficiencyDescriptorSupported { get; }
        public bool IsLoginIdSupported { get; }
        public bool IsMaidenNameSupported { get; }
        public bool IsMiddleNameSupported { get; }
        public bool IsMultipleBirthStatusSupported { get; }
        public bool IsOldEthnicityDescriptorSupported { get; }
        public bool IsPersonalTitlePrefixSupported { get; }
        public bool IsPersonIdSupported { get; }
        public bool IsPersonReferenceSupported { get; }
        public bool IsPreferredFirstNameSupported { get; }
        public bool IsPreferredLastSurnameSupported { get; }
        public bool IsPreviousCareerDescriptorSupported { get; }
        public bool IsProfileThumbnailSupported { get; }
        public bool IsProgramCompleteSupported { get; }
        public bool IsSexDescriptorSupported { get; }
        public bool IsSourceSystemDescriptorSupported { get; }
        public bool IsTuitionCostSupported { get; }
        public bool IsCandidateBackgroundCheckCreatable { get; }
        public bool IsCandidateAddressesItemCreatable { get; }
        public Func<ICandidateAddress, bool> IsCandidateAddressIncluded { get; }
        public bool IsCandidateAidsItemCreatable { get; }
        public Func<ICandidateAid, bool> IsCandidateAidIncluded { get; }
        public bool IsCandidateCharacteristicsItemCreatable { get; }
        public Func<ICandidateCharacteristic, bool> IsCandidateCharacteristicIncluded { get; }
        public bool IsCandidateCohortYearsItemCreatable { get; }
        public Func<ICandidateCohortYear, bool> IsCandidateCohortYearIncluded { get; }
        public bool IsCandidateDegreeSpecializationsItemCreatable { get; }
        public Func<ICandidateDegreeSpecialization, bool> IsCandidateDegreeSpecializationIncluded { get; }
        public bool IsCandidateDisabilitiesItemCreatable { get; }
        public Func<ICandidateDisability, bool> IsCandidateDisabilityIncluded { get; }
        public bool IsCandidateElectronicMailsItemCreatable { get; }
        public Func<ICandidateElectronicMail, bool> IsCandidateElectronicMailIncluded { get; }
        public bool IsCandidateEPPProgramDegreesItemCreatable { get; }
        public Func<ICandidateEPPProgramDegree, bool> IsCandidateEPPProgramDegreeIncluded { get; }
        public bool IsCandidateIdentificationCodesItemCreatable { get; }
        public Func<ICandidateIdentificationCode, bool> IsCandidateIdentificationCodeIncluded { get; }
        public bool IsCandidateIdentificationDocumentsItemCreatable { get; }
        public Func<ICandidateIdentificationDocument, bool> IsCandidateIdentificationDocumentIncluded { get; }
        public bool IsCandidateIndicatorsItemCreatable { get; }
        public Func<ICandidateIndicator, bool> IsCandidateIndicatorIncluded { get; }
        public bool IsCandidateInternationalAddressesItemCreatable { get; }
        public Func<ICandidateInternationalAddress, bool> IsCandidateInternationalAddressIncluded { get; }
        public bool IsCandidateLanguagesItemCreatable { get; }
        public Func<ICandidateLanguage, bool> IsCandidateLanguageIncluded { get; }
        public bool IsCandidateOtherNamesItemCreatable { get; }
        public Func<ICandidateOtherName, bool> IsCandidateOtherNameIncluded { get; }
        public bool IsCandidatePersonalIdentificationDocumentsItemCreatable { get; }
        public Func<ICandidatePersonalIdentificationDocument, bool> IsCandidatePersonalIdentificationDocumentIncluded { get; }
        public bool IsCandidateRacesItemCreatable { get; }
        public Func<ICandidateRace, bool> IsCandidateRaceIncluded { get; }
        public bool IsCandidateTelephonesItemCreatable { get; }
        public Func<ICandidateTelephone, bool> IsCandidateTelephoneIncluded { get; }
        public bool IsCandidateVisasItemCreatable { get; }
        public Func<ICandidateVisa, bool> IsCandidateVisaIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileIdentifier":
                    return IsApplicantProfileIdentifierSupported;
                case "ApplicationIdentifier":
                    return IsApplicationIdentifierSupported;
                case "ApplicationReference":
                    return IsApplicationReferenceSupported;
                case "BirthCity":
                    return IsBirthCitySupported;
                case "BirthCountryDescriptor":
                    return IsBirthCountryDescriptorSupported;
                case "BirthDate":
                    return IsBirthDateSupported;
                case "BirthInternationalProvince":
                    return IsBirthInternationalProvinceSupported;
                case "BirthSexDescriptor":
                    return IsBirthSexDescriptorSupported;
                case "BirthStateAbbreviationDescriptor":
                    return IsBirthStateAbbreviationDescriptorSupported;
                case "CandidateAddresses":
                    return IsCandidateAddressesSupported;
                case "CandidateAids":
                    return IsCandidateAidsSupported;
                case "CandidateBackgroundCheck":
                    return IsCandidateBackgroundCheckSupported;
                case "CandidateCharacteristics":
                    return IsCandidateCharacteristicsSupported;
                case "CandidateCohortYears":
                    return IsCandidateCohortYearsSupported;
                case "CandidateDegreeSpecializations":
                    return IsCandidateDegreeSpecializationsSupported;
                case "CandidateDisabilities":
                    return IsCandidateDisabilitiesSupported;
                case "CandidateElectronicMails":
                    return IsCandidateElectronicMailsSupported;
                case "CandidateEPPProgramDegrees":
                    return IsCandidateEPPProgramDegreesSupported;
                case "CandidateIdentificationCodes":
                    return IsCandidateIdentificationCodesSupported;
                case "CandidateIdentificationDocuments":
                    return IsCandidateIdentificationDocumentsSupported;
                case "CandidateIndicators":
                    return IsCandidateIndicatorsSupported;
                case "CandidateInternationalAddresses":
                    return IsCandidateInternationalAddressesSupported;
                case "CandidateLanguages":
                    return IsCandidateLanguagesSupported;
                case "CandidateOtherNames":
                    return IsCandidateOtherNamesSupported;
                case "CandidatePersonalIdentificationDocuments":
                    return IsCandidatePersonalIdentificationDocumentsSupported;
                case "CandidateRaces":
                    return IsCandidateRacesSupported;
                case "CandidateTelephones":
                    return IsCandidateTelephonesSupported;
                case "CandidateVisas":
                    return IsCandidateVisasSupported;
                case "CitizenshipStatusDescriptor":
                    return IsCitizenshipStatusDescriptorSupported;
                case "DateEnteredUS":
                    return IsDateEnteredUSSupported;
                case "DisplacementStatus":
                    return IsDisplacementStatusSupported;
                case "EconomicDisadvantaged":
                    return IsEconomicDisadvantagedSupported;
                case "EducationOrganizationId":
                    return IsEducationOrganizationIdSupported;
                case "EnglishLanguageExamDescriptor":
                    return IsEnglishLanguageExamDescriptorSupported;
                case "FirstGenerationStudent":
                    return IsFirstGenerationStudentSupported;
                case "FirstName":
                    return IsFirstNameSupported;
                case "GenderDescriptor":
                    return IsGenderDescriptorSupported;
                case "GenerationCodeSuffix":
                    return IsGenerationCodeSuffixSupported;
                case "HispanicLatinoEthnicity":
                    return IsHispanicLatinoEthnicitySupported;
                case "LastSurname":
                    return IsLastSurnameSupported;
                case "LimitedEnglishProficiencyDescriptor":
                    return IsLimitedEnglishProficiencyDescriptorSupported;
                case "LoginId":
                    return IsLoginIdSupported;
                case "MaidenName":
                    return IsMaidenNameSupported;
                case "MiddleName":
                    return IsMiddleNameSupported;
                case "MultipleBirthStatus":
                    return IsMultipleBirthStatusSupported;
                case "OldEthnicityDescriptor":
                    return IsOldEthnicityDescriptorSupported;
                case "PersonalTitlePrefix":
                    return IsPersonalTitlePrefixSupported;
                case "PersonId":
                    return IsPersonIdSupported;
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "PreferredFirstName":
                    return IsPreferredFirstNameSupported;
                case "PreferredLastSurname":
                    return IsPreferredLastSurnameSupported;
                case "PreviousCareerDescriptor":
                    return IsPreviousCareerDescriptorSupported;
                case "ProfileThumbnail":
                    return IsProfileThumbnailSupported;
                case "ProgramComplete":
                    return IsProgramCompleteSupported;
                case "SexDescriptor":
                    return IsSexDescriptorSupported;
                case "SourceSystemDescriptor":
                    return IsSourceSystemDescriptorSupported;
                case "TuitionCost":
                    return IsTuitionCostSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CandidateIdentifier":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CandidateBackgroundCheck":
                    return IsCandidateBackgroundCheckCreatable;
                case "CandidateAddresses":
                    return IsCandidateAddressesItemCreatable;
                case "CandidateAids":
                    return IsCandidateAidsItemCreatable;
                case "CandidateCharacteristics":
                    return IsCandidateCharacteristicsItemCreatable;
                case "CandidateCohortYears":
                    return IsCandidateCohortYearsItemCreatable;
                case "CandidateDegreeSpecializations":
                    return IsCandidateDegreeSpecializationsItemCreatable;
                case "CandidateDisabilities":
                    return IsCandidateDisabilitiesItemCreatable;
                case "CandidateElectronicMails":
                    return IsCandidateElectronicMailsItemCreatable;
                case "CandidateEPPProgramDegrees":
                    return IsCandidateEPPProgramDegreesItemCreatable;
                case "CandidateIdentificationCodes":
                    return IsCandidateIdentificationCodesItemCreatable;
                case "CandidateIdentificationDocuments":
                    return IsCandidateIdentificationDocumentsItemCreatable;
                case "CandidateIndicators":
                    return IsCandidateIndicatorsItemCreatable;
                case "CandidateInternationalAddresses":
                    return IsCandidateInternationalAddressesItemCreatable;
                case "CandidateLanguages":
                    return IsCandidateLanguagesItemCreatable;
                case "CandidateOtherNames":
                    return IsCandidateOtherNamesItemCreatable;
                case "CandidatePersonalIdentificationDocuments":
                    return IsCandidatePersonalIdentificationDocumentsItemCreatable;
                case "CandidateRaces":
                    return IsCandidateRacesItemCreatable;
                case "CandidateTelephones":
                    return IsCandidateTelephonesItemCreatable;
                case "CandidateVisas":
                    return IsCandidateVisasItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateAddress model.
    /// </summary>
    public interface ICandidateAddress : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string AddressTypeDescriptor { get; set; }
        
        string City { get; set; }
        
        string PostalCode { get; set; }
        
        string StateAbbreviationDescriptor { get; set; }
        
        string StreetNumberName { get; set; }

        // Non-PK properties
        string ApartmentRoomSuiteNumber { get; set; }
        string BuildingSiteNumber { get; set; }
        string CongressionalDistrict { get; set; }
        string CountyFIPSCode { get; set; }
        bool? DoNotPublishIndicator { get; set; }
        string Latitude { get; set; }
        string LocaleDescriptor { get; set; }
        string Longitude { get; set; }
        string NameOfCounty { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ICandidateAddressPeriod> CandidateAddressPeriods { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateAddressMappingContract : IMappingContract
    {
        public CandidateAddressMappingContract(
            bool isApartmentRoomSuiteNumberSupported,
            bool isBuildingSiteNumberSupported,
            bool isCandidateAddressPeriodsSupported,
            bool isCongressionalDistrictSupported,
            bool isCountyFIPSCodeSupported,
            bool isDoNotPublishIndicatorSupported,
            bool isLatitudeSupported,
            bool isLocaleDescriptorSupported,
            bool isLongitudeSupported,
            bool isNameOfCountySupported,
            bool isCandidateAddressPeriodsItemCreatable,
            Func<ICandidateAddressPeriod, bool> isCandidateAddressPeriodIncluded
            )
        {
            IsApartmentRoomSuiteNumberSupported = isApartmentRoomSuiteNumberSupported;
            IsBuildingSiteNumberSupported = isBuildingSiteNumberSupported;
            IsCandidateAddressPeriodsSupported = isCandidateAddressPeriodsSupported;
            IsCongressionalDistrictSupported = isCongressionalDistrictSupported;
            IsCountyFIPSCodeSupported = isCountyFIPSCodeSupported;
            IsDoNotPublishIndicatorSupported = isDoNotPublishIndicatorSupported;
            IsLatitudeSupported = isLatitudeSupported;
            IsLocaleDescriptorSupported = isLocaleDescriptorSupported;
            IsLongitudeSupported = isLongitudeSupported;
            IsNameOfCountySupported = isNameOfCountySupported;
            IsCandidateAddressPeriodsItemCreatable = isCandidateAddressPeriodsItemCreatable;
            IsCandidateAddressPeriodIncluded = isCandidateAddressPeriodIncluded;
        }

        public bool IsApartmentRoomSuiteNumberSupported { get; }
        public bool IsBuildingSiteNumberSupported { get; }
        public bool IsCandidateAddressPeriodsSupported { get; }
        public bool IsCongressionalDistrictSupported { get; }
        public bool IsCountyFIPSCodeSupported { get; }
        public bool IsDoNotPublishIndicatorSupported { get; }
        public bool IsLatitudeSupported { get; }
        public bool IsLocaleDescriptorSupported { get; }
        public bool IsLongitudeSupported { get; }
        public bool IsNameOfCountySupported { get; }
        public bool IsCandidateAddressPeriodsItemCreatable { get; }
        public Func<ICandidateAddressPeriod, bool> IsCandidateAddressPeriodIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApartmentRoomSuiteNumber":
                    return IsApartmentRoomSuiteNumberSupported;
                case "BuildingSiteNumber":
                    return IsBuildingSiteNumberSupported;
                case "CandidateAddressPeriods":
                    return IsCandidateAddressPeriodsSupported;
                case "CongressionalDistrict":
                    return IsCongressionalDistrictSupported;
                case "CountyFIPSCode":
                    return IsCountyFIPSCodeSupported;
                case "DoNotPublishIndicator":
                    return IsDoNotPublishIndicatorSupported;
                case "Latitude":
                    return IsLatitudeSupported;
                case "LocaleDescriptor":
                    return IsLocaleDescriptorSupported;
                case "Longitude":
                    return IsLongitudeSupported;
                case "NameOfCounty":
                    return IsNameOfCountySupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AddressTypeDescriptor":
                    return true;
                case "City":
                    return true;
                case "PostalCode":
                    return true;
                case "StateAbbreviationDescriptor":
                    return true;
                case "StreetNumberName":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CandidateAddressPeriods":
                    return IsCandidateAddressPeriodsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateAddressPeriod model.
    /// </summary>
    public interface ICandidateAddressPeriod : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateAddress CandidateAddress { get; set; }
        
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
    public class CandidateAddressPeriodMappingContract : IMappingContract
    {
        public CandidateAddressPeriodMappingContract(
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
    /// Defines available properties and methods for the abstraction of the CandidateAid model.
    /// </summary>
    public interface ICandidateAid : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string AidTypeDescriptor { get; set; }
        
        DateTime BeginDate { get; set; }

        // Non-PK properties
        decimal? AidAmount { get; set; }
        string AidConditionDescription { get; set; }
        DateTime? EndDate { get; set; }
        bool? PellGrantRecipient { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateAidMappingContract : IMappingContract
    {
        public CandidateAidMappingContract(
            bool isAidAmountSupported,
            bool isAidConditionDescriptionSupported,
            bool isEndDateSupported,
            bool isPellGrantRecipientSupported
            )
        {
            IsAidAmountSupported = isAidAmountSupported;
            IsAidConditionDescriptionSupported = isAidConditionDescriptionSupported;
            IsEndDateSupported = isEndDateSupported;
            IsPellGrantRecipientSupported = isPellGrantRecipientSupported;
        }

        public bool IsAidAmountSupported { get; }
        public bool IsAidConditionDescriptionSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsPellGrantRecipientSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AidAmount":
                    return IsAidAmountSupported;
                case "AidConditionDescription":
                    return IsAidConditionDescriptionSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "PellGrantRecipient":
                    return IsPellGrantRecipientSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AidTypeDescriptor":
                    return true;
                case "BeginDate":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateBackgroundCheck model.
    /// </summary>
    public interface ICandidateBackgroundCheck : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }

        // Non-PK properties
        DateTime? BackgroundCheckCompletedDate { get; set; }
        DateTime BackgroundCheckRequestedDate { get; set; }
        string BackgroundCheckStatusDescriptor { get; set; }
        string BackgroundCheckTypeDescriptor { get; set; }
        bool? Fingerprint { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateBackgroundCheckMappingContract : IMappingContract
    {
        public CandidateBackgroundCheckMappingContract(
            bool isBackgroundCheckCompletedDateSupported,
            bool isBackgroundCheckRequestedDateSupported,
            bool isBackgroundCheckStatusDescriptorSupported,
            bool isBackgroundCheckTypeDescriptorSupported,
            bool isFingerprintSupported
            )
        {
            IsBackgroundCheckCompletedDateSupported = isBackgroundCheckCompletedDateSupported;
            IsBackgroundCheckRequestedDateSupported = isBackgroundCheckRequestedDateSupported;
            IsBackgroundCheckStatusDescriptorSupported = isBackgroundCheckStatusDescriptorSupported;
            IsBackgroundCheckTypeDescriptorSupported = isBackgroundCheckTypeDescriptorSupported;
            IsFingerprintSupported = isFingerprintSupported;
        }

        public bool IsBackgroundCheckCompletedDateSupported { get; }
        public bool IsBackgroundCheckRequestedDateSupported { get; }
        public bool IsBackgroundCheckStatusDescriptorSupported { get; }
        public bool IsBackgroundCheckTypeDescriptorSupported { get; }
        public bool IsFingerprintSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BackgroundCheckCompletedDate":
                    return IsBackgroundCheckCompletedDateSupported;
                case "BackgroundCheckRequestedDate":
                    return IsBackgroundCheckRequestedDateSupported;
                case "BackgroundCheckStatusDescriptor":
                    return IsBackgroundCheckStatusDescriptorSupported;
                case "BackgroundCheckTypeDescriptor":
                    return IsBackgroundCheckTypeDescriptorSupported;
                case "Fingerprint":
                    return IsFingerprintSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateCharacteristic model.
    /// </summary>
    public interface ICandidateCharacteristic : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string CandidateCharacteristicDescriptor { get; set; }

        // Non-PK properties
        DateTime? BeginDate { get; set; }
        string DesignatedBy { get; set; }
        DateTime? EndDate { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateCharacteristicMappingContract : IMappingContract
    {
        public CandidateCharacteristicMappingContract(
            bool isBeginDateSupported,
            bool isDesignatedBySupported,
            bool isEndDateSupported
            )
        {
            IsBeginDateSupported = isBeginDateSupported;
            IsDesignatedBySupported = isDesignatedBySupported;
            IsEndDateSupported = isEndDateSupported;
        }

        public bool IsBeginDateSupported { get; }
        public bool IsDesignatedBySupported { get; }
        public bool IsEndDateSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BeginDate":
                    return IsBeginDateSupported;
                case "DesignatedBy":
                    return IsDesignatedBySupported;
                case "EndDate":
                    return IsEndDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CandidateCharacteristicDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateCharacteristicDescriptor model.
    /// </summary>
    public interface ICandidateCharacteristicDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CandidateCharacteristicDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateCharacteristicDescriptorMappingContract : IMappingContract
    {
        public CandidateCharacteristicDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CandidateCharacteristicDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateCohortYear model.
    /// </summary>
    public interface ICandidateCohortYear : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string CohortYearTypeDescriptor { get; set; }
        
        short SchoolYear { get; set; }

        // Non-PK properties
        string TermDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? SchoolYearTypeResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateCohortYearMappingContract : IMappingContract
    {
        public CandidateCohortYearMappingContract(
            bool isSchoolYearTypeReferenceSupported,
            bool isTermDescriptorSupported
            )
        {
            IsSchoolYearTypeReferenceSupported = isSchoolYearTypeReferenceSupported;
            IsTermDescriptorSupported = isTermDescriptorSupported;
        }

        public bool IsSchoolYearTypeReferenceSupported { get; }
        public bool IsTermDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "SchoolYearTypeReference":
                    return IsSchoolYearTypeReferenceSupported;
                case "TermDescriptor":
                    return IsTermDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CohortYearTypeDescriptor":
                    return true;
                case "SchoolYear":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateDegreeSpecialization model.
    /// </summary>
    public interface ICandidateDegreeSpecialization : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        DateTime BeginDate { get; set; }
        
        string MajorSpecialization { get; set; }

        // Non-PK properties
        DateTime? EndDate { get; set; }
        string MinorSpecialization { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateDegreeSpecializationMappingContract : IMappingContract
    {
        public CandidateDegreeSpecializationMappingContract(
            bool isEndDateSupported,
            bool isMinorSpecializationSupported
            )
        {
            IsEndDateSupported = isEndDateSupported;
            IsMinorSpecializationSupported = isMinorSpecializationSupported;
        }

        public bool IsEndDateSupported { get; }
        public bool IsMinorSpecializationSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EndDate":
                    return IsEndDateSupported;
                case "MinorSpecialization":
                    return IsMinorSpecializationSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "MajorSpecialization":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateDisability model.
    /// </summary>
    public interface ICandidateDisability : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string DisabilityDescriptor { get; set; }

        // Non-PK properties
        string DisabilityDeterminationSourceTypeDescriptor { get; set; }
        string DisabilityDiagnosis { get; set; }
        int? OrderOfDisability { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ICandidateDisabilityDesignation> CandidateDisabilityDesignations { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateDisabilityMappingContract : IMappingContract
    {
        public CandidateDisabilityMappingContract(
            bool isCandidateDisabilityDesignationsSupported,
            bool isDisabilityDeterminationSourceTypeDescriptorSupported,
            bool isDisabilityDiagnosisSupported,
            bool isOrderOfDisabilitySupported,
            bool isCandidateDisabilityDesignationsItemCreatable,
            Func<ICandidateDisabilityDesignation, bool> isCandidateDisabilityDesignationIncluded
            )
        {
            IsCandidateDisabilityDesignationsSupported = isCandidateDisabilityDesignationsSupported;
            IsDisabilityDeterminationSourceTypeDescriptorSupported = isDisabilityDeterminationSourceTypeDescriptorSupported;
            IsDisabilityDiagnosisSupported = isDisabilityDiagnosisSupported;
            IsOrderOfDisabilitySupported = isOrderOfDisabilitySupported;
            IsCandidateDisabilityDesignationsItemCreatable = isCandidateDisabilityDesignationsItemCreatable;
            IsCandidateDisabilityDesignationIncluded = isCandidateDisabilityDesignationIncluded;
        }

        public bool IsCandidateDisabilityDesignationsSupported { get; }
        public bool IsDisabilityDeterminationSourceTypeDescriptorSupported { get; }
        public bool IsDisabilityDiagnosisSupported { get; }
        public bool IsOrderOfDisabilitySupported { get; }
        public bool IsCandidateDisabilityDesignationsItemCreatable { get; }
        public Func<ICandidateDisabilityDesignation, bool> IsCandidateDisabilityDesignationIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CandidateDisabilityDesignations":
                    return IsCandidateDisabilityDesignationsSupported;
                case "DisabilityDeterminationSourceTypeDescriptor":
                    return IsDisabilityDeterminationSourceTypeDescriptorSupported;
                case "DisabilityDiagnosis":
                    return IsDisabilityDiagnosisSupported;
                case "OrderOfDisability":
                    return IsOrderOfDisabilitySupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "DisabilityDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CandidateDisabilityDesignations":
                    return IsCandidateDisabilityDesignationsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateDisabilityDesignation model.
    /// </summary>
    public interface ICandidateDisabilityDesignation : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateDisability CandidateDisability { get; set; }
        
        string DisabilityDesignationDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateDisabilityDesignationMappingContract : IMappingContract
    {
        public CandidateDisabilityDesignationMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "DisabilityDesignationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateEducatorPreparationProgramAssociation model.
    /// </summary>
    public interface ICandidateEducatorPreparationProgramAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime BeginDate { get; set; }
        
        string CandidateIdentifier { get; set; }
        
        long EducationOrganizationId { get; set; }
        
        string ProgramName { get; set; }
        
        string ProgramTypeDescriptor { get; set; }

        // Non-PK properties
        string ApplicantProfileIdentifier { get; set; }
        string ApplicationIdentifier { get; set; }
        DateTime? EndDate { get; set; }
        string EPPProgramPathwayDescriptor { get; set; }
        string MajorSpecialization { get; set; }
        string MinorSpecialization { get; set; }
        string ReasonExitedDescriptor { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ICandidateEducatorPreparationProgramAssociationCandidateIndicator> CandidateEducatorPreparationProgramAssociationCandidateIndicators { get; set; }
        ICollection<ICandidateEducatorPreparationProgramAssociationCohortYear> CandidateEducatorPreparationProgramAssociationCohortYears { get; set; }
        ICollection<ICandidateEducatorPreparationProgramAssociationDegreeSpecialization> CandidateEducatorPreparationProgramAssociationDegreeSpecializations { get; set; }

        // Resource reference data
        Guid? ApplicationResourceId { get; set; }
        string ApplicationDiscriminator { get; set; }
        Guid? CandidateResourceId { get; set; }
        string CandidateDiscriminator { get; set; }
        Guid? EducatorPreparationProgramResourceId { get; set; }
        string EducatorPreparationProgramDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateEducatorPreparationProgramAssociationMappingContract : IMappingContract
    {
        public CandidateEducatorPreparationProgramAssociationMappingContract(
            bool isApplicantProfileIdentifierSupported,
            bool isApplicationIdentifierSupported,
            bool isApplicationReferenceSupported,
            bool isCandidateEducatorPreparationProgramAssociationCandidateIndicatorsSupported,
            bool isCandidateEducatorPreparationProgramAssociationCohortYearsSupported,
            bool isCandidateEducatorPreparationProgramAssociationDegreeSpecializationsSupported,
            bool isCandidateReferenceSupported,
            bool isEducatorPreparationProgramReferenceSupported,
            bool isEndDateSupported,
            bool isEPPProgramPathwayDescriptorSupported,
            bool isMajorSpecializationSupported,
            bool isMinorSpecializationSupported,
            bool isReasonExitedDescriptorSupported,
            bool isCandidateEducatorPreparationProgramAssociationCandidateIndicatorsItemCreatable,
            Func<ICandidateEducatorPreparationProgramAssociationCandidateIndicator, bool> isCandidateEducatorPreparationProgramAssociationCandidateIndicatorIncluded,
            bool isCandidateEducatorPreparationProgramAssociationCohortYearsItemCreatable,
            Func<ICandidateEducatorPreparationProgramAssociationCohortYear, bool> isCandidateEducatorPreparationProgramAssociationCohortYearIncluded,
            bool isCandidateEducatorPreparationProgramAssociationDegreeSpecializationsItemCreatable,
            Func<ICandidateEducatorPreparationProgramAssociationDegreeSpecialization, bool> isCandidateEducatorPreparationProgramAssociationDegreeSpecializationIncluded
            )
        {
            IsApplicantProfileIdentifierSupported = isApplicantProfileIdentifierSupported;
            IsApplicationIdentifierSupported = isApplicationIdentifierSupported;
            IsApplicationReferenceSupported = isApplicationReferenceSupported;
            IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorsSupported = isCandidateEducatorPreparationProgramAssociationCandidateIndicatorsSupported;
            IsCandidateEducatorPreparationProgramAssociationCohortYearsSupported = isCandidateEducatorPreparationProgramAssociationCohortYearsSupported;
            IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationsSupported = isCandidateEducatorPreparationProgramAssociationDegreeSpecializationsSupported;
            IsCandidateReferenceSupported = isCandidateReferenceSupported;
            IsEducatorPreparationProgramReferenceSupported = isEducatorPreparationProgramReferenceSupported;
            IsEndDateSupported = isEndDateSupported;
            IsEPPProgramPathwayDescriptorSupported = isEPPProgramPathwayDescriptorSupported;
            IsMajorSpecializationSupported = isMajorSpecializationSupported;
            IsMinorSpecializationSupported = isMinorSpecializationSupported;
            IsReasonExitedDescriptorSupported = isReasonExitedDescriptorSupported;
            IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorsItemCreatable = isCandidateEducatorPreparationProgramAssociationCandidateIndicatorsItemCreatable;
            IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorIncluded = isCandidateEducatorPreparationProgramAssociationCandidateIndicatorIncluded;
            IsCandidateEducatorPreparationProgramAssociationCohortYearsItemCreatable = isCandidateEducatorPreparationProgramAssociationCohortYearsItemCreatable;
            IsCandidateEducatorPreparationProgramAssociationCohortYearIncluded = isCandidateEducatorPreparationProgramAssociationCohortYearIncluded;
            IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationsItemCreatable = isCandidateEducatorPreparationProgramAssociationDegreeSpecializationsItemCreatable;
            IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationIncluded = isCandidateEducatorPreparationProgramAssociationDegreeSpecializationIncluded;
        }

        public bool IsApplicantProfileIdentifierSupported { get; }
        public bool IsApplicationIdentifierSupported { get; }
        public bool IsApplicationReferenceSupported { get; }
        public bool IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorsSupported { get; }
        public bool IsCandidateEducatorPreparationProgramAssociationCohortYearsSupported { get; }
        public bool IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationsSupported { get; }
        public bool IsCandidateReferenceSupported { get; }
        public bool IsEducatorPreparationProgramReferenceSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsEPPProgramPathwayDescriptorSupported { get; }
        public bool IsMajorSpecializationSupported { get; }
        public bool IsMinorSpecializationSupported { get; }
        public bool IsReasonExitedDescriptorSupported { get; }
        public bool IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorsItemCreatable { get; }
        public Func<ICandidateEducatorPreparationProgramAssociationCandidateIndicator, bool> IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorIncluded { get; }
        public bool IsCandidateEducatorPreparationProgramAssociationCohortYearsItemCreatable { get; }
        public Func<ICandidateEducatorPreparationProgramAssociationCohortYear, bool> IsCandidateEducatorPreparationProgramAssociationCohortYearIncluded { get; }
        public bool IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationsItemCreatable { get; }
        public Func<ICandidateEducatorPreparationProgramAssociationDegreeSpecialization, bool> IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ApplicantProfileIdentifier":
                    return IsApplicantProfileIdentifierSupported;
                case "ApplicationIdentifier":
                    return IsApplicationIdentifierSupported;
                case "ApplicationReference":
                    return IsApplicationReferenceSupported;
                case "CandidateEducatorPreparationProgramAssociationCandidateIndicators":
                    return IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorsSupported;
                case "CandidateEducatorPreparationProgramAssociationCohortYears":
                    return IsCandidateEducatorPreparationProgramAssociationCohortYearsSupported;
                case "CandidateEducatorPreparationProgramAssociationDegreeSpecializations":
                    return IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationsSupported;
                case "CandidateReference":
                    return IsCandidateReferenceSupported;
                case "EducatorPreparationProgramReference":
                    return IsEducatorPreparationProgramReferenceSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "EPPProgramPathwayDescriptor":
                    return IsEPPProgramPathwayDescriptorSupported;
                case "MajorSpecialization":
                    return IsMajorSpecializationSupported;
                case "MinorSpecialization":
                    return IsMinorSpecializationSupported;
                case "ReasonExitedDescriptor":
                    return IsReasonExitedDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "CandidateIdentifier":
                    return true;
                case "EducationOrganizationId":
                    return true;
                case "ProgramName":
                    return true;
                case "ProgramTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CandidateEducatorPreparationProgramAssociationCandidateIndicators":
                    return IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorsItemCreatable;
                case "CandidateEducatorPreparationProgramAssociationCohortYears":
                    return IsCandidateEducatorPreparationProgramAssociationCohortYearsItemCreatable;
                case "CandidateEducatorPreparationProgramAssociationDegreeSpecializations":
                    return IsCandidateEducatorPreparationProgramAssociationDegreeSpecializationsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateEducatorPreparationProgramAssociationCandidateIndicator model.
    /// </summary>
    public interface ICandidateEducatorPreparationProgramAssociationCandidateIndicator : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateEducatorPreparationProgramAssociation CandidateEducatorPreparationProgramAssociation { get; set; }
        
        string IndicatorName { get; set; }

        // Non-PK properties
        string DesignatedBy { get; set; }
        DateTime? EndDate { get; set; }
        string Indicator { get; set; }
        string IndicatorGroup { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ICandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriod> CandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriods { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateEducatorPreparationProgramAssociationCandidateIndicatorMappingContract : IMappingContract
    {
        public CandidateEducatorPreparationProgramAssociationCandidateIndicatorMappingContract(
            bool isCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsSupported,
            bool isDesignatedBySupported,
            bool isEndDateSupported,
            bool isIndicatorSupported,
            bool isIndicatorGroupSupported,
            bool isCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsItemCreatable,
            Func<ICandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriod, bool> isCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodIncluded
            )
        {
            IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsSupported = isCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsSupported;
            IsDesignatedBySupported = isDesignatedBySupported;
            IsEndDateSupported = isEndDateSupported;
            IsIndicatorSupported = isIndicatorSupported;
            IsIndicatorGroupSupported = isIndicatorGroupSupported;
            IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsItemCreatable = isCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsItemCreatable;
            IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodIncluded = isCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodIncluded;
        }

        public bool IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsSupported { get; }
        public bool IsDesignatedBySupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsIndicatorSupported { get; }
        public bool IsIndicatorGroupSupported { get; }
        public bool IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsItemCreatable { get; }
        public Func<ICandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriod, bool> IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriods":
                    return IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsSupported;
                case "DesignatedBy":
                    return IsDesignatedBySupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "Indicator":
                    return IsIndicatorSupported;
                case "IndicatorGroup":
                    return IsIndicatorGroupSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "IndicatorName":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriods":
                    return IsCandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriod model.
    /// </summary>
    public interface ICandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriod : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateEducatorPreparationProgramAssociationCandidateIndicator CandidateEducatorPreparationProgramAssociationCandidateIndicator { get; set; }

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
    public class CandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodMappingContract : IMappingContract
    {
        public CandidateEducatorPreparationProgramAssociationCandidateIndicatorPeriodMappingContract(
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
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateEducatorPreparationProgramAssociationCohortYear model.
    /// </summary>
    public interface ICandidateEducatorPreparationProgramAssociationCohortYear : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateEducatorPreparationProgramAssociation CandidateEducatorPreparationProgramAssociation { get; set; }
        
        string CohortYearTypeDescriptor { get; set; }
        
        short SchoolYear { get; set; }

        // Non-PK properties
        string TermDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? SchoolYearTypeResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateEducatorPreparationProgramAssociationCohortYearMappingContract : IMappingContract
    {
        public CandidateEducatorPreparationProgramAssociationCohortYearMappingContract(
            bool isSchoolYearTypeReferenceSupported,
            bool isTermDescriptorSupported
            )
        {
            IsSchoolYearTypeReferenceSupported = isSchoolYearTypeReferenceSupported;
            IsTermDescriptorSupported = isTermDescriptorSupported;
        }

        public bool IsSchoolYearTypeReferenceSupported { get; }
        public bool IsTermDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "SchoolYearTypeReference":
                    return IsSchoolYearTypeReferenceSupported;
                case "TermDescriptor":
                    return IsTermDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CohortYearTypeDescriptor":
                    return true;
                case "SchoolYear":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateEducatorPreparationProgramAssociationDegreeSpecialization model.
    /// </summary>
    public interface ICandidateEducatorPreparationProgramAssociationDegreeSpecialization : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateEducatorPreparationProgramAssociation CandidateEducatorPreparationProgramAssociation { get; set; }
        
        string MajorSpecialization { get; set; }

        // Non-PK properties
        DateTime? EndDate { get; set; }
        string MinorSpecialization { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateEducatorPreparationProgramAssociationDegreeSpecializationMappingContract : IMappingContract
    {
        public CandidateEducatorPreparationProgramAssociationDegreeSpecializationMappingContract(
            bool isEndDateSupported,
            bool isMinorSpecializationSupported
            )
        {
            IsEndDateSupported = isEndDateSupported;
            IsMinorSpecializationSupported = isMinorSpecializationSupported;
        }

        public bool IsEndDateSupported { get; }
        public bool IsMinorSpecializationSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EndDate":
                    return IsEndDateSupported;
                case "MinorSpecialization":
                    return IsMinorSpecializationSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "MajorSpecialization":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateElectronicMail model.
    /// </summary>
    public interface ICandidateElectronicMail : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string ElectronicMailAddress { get; set; }
        
        string ElectronicMailTypeDescriptor { get; set; }

        // Non-PK properties
        bool? DoNotPublishIndicator { get; set; }
        bool? PrimaryEmailAddressIndicator { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateElectronicMailMappingContract : IMappingContract
    {
        public CandidateElectronicMailMappingContract(
            bool isDoNotPublishIndicatorSupported,
            bool isPrimaryEmailAddressIndicatorSupported
            )
        {
            IsDoNotPublishIndicatorSupported = isDoNotPublishIndicatorSupported;
            IsPrimaryEmailAddressIndicatorSupported = isPrimaryEmailAddressIndicatorSupported;
        }

        public bool IsDoNotPublishIndicatorSupported { get; }
        public bool IsPrimaryEmailAddressIndicatorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DoNotPublishIndicator":
                    return IsDoNotPublishIndicatorSupported;
                case "PrimaryEmailAddressIndicator":
                    return IsPrimaryEmailAddressIndicatorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ElectronicMailAddress":
                    return true;
                case "ElectronicMailTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateEPPProgramDegree model.
    /// </summary>
    public interface ICandidateEPPProgramDegree : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string AcademicSubjectDescriptor { get; set; }
        
        string EPPDegreeTypeDescriptor { get; set; }
        
        string GradeLevelDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateEPPProgramDegreeMappingContract : IMappingContract
    {
        public CandidateEPPProgramDegreeMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AcademicSubjectDescriptor":
                    return true;
                case "EPPDegreeTypeDescriptor":
                    return true;
                case "GradeLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateIdentificationCode model.
    /// </summary>
    public interface ICandidateIdentificationCode : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string AssigningOrganizationIdentificationCode { get; set; }
        
        string IdentificationCode { get; set; }
        
        string StudentIdentificationSystemDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateIdentificationCodeMappingContract : IMappingContract
    {
        public CandidateIdentificationCodeMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AssigningOrganizationIdentificationCode":
                    return true;
                case "IdentificationCode":
                    return true;
                case "StudentIdentificationSystemDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateIdentificationDocument model.
    /// </summary>
    public interface ICandidateIdentificationDocument : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string IdentificationDocumentUseDescriptor { get; set; }
        
        string PersonalInformationVerificationDescriptor { get; set; }

        // Non-PK properties
        DateTime? DocumentExpirationDate { get; set; }
        string DocumentTitle { get; set; }
        string IssuerCountryDescriptor { get; set; }
        string IssuerDocumentIdentificationCode { get; set; }
        string IssuerName { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateIdentificationDocumentMappingContract : IMappingContract
    {
        public CandidateIdentificationDocumentMappingContract(
            bool isDocumentExpirationDateSupported,
            bool isDocumentTitleSupported,
            bool isIssuerCountryDescriptorSupported,
            bool isIssuerDocumentIdentificationCodeSupported,
            bool isIssuerNameSupported
            )
        {
            IsDocumentExpirationDateSupported = isDocumentExpirationDateSupported;
            IsDocumentTitleSupported = isDocumentTitleSupported;
            IsIssuerCountryDescriptorSupported = isIssuerCountryDescriptorSupported;
            IsIssuerDocumentIdentificationCodeSupported = isIssuerDocumentIdentificationCodeSupported;
            IsIssuerNameSupported = isIssuerNameSupported;
        }

        public bool IsDocumentExpirationDateSupported { get; }
        public bool IsDocumentTitleSupported { get; }
        public bool IsIssuerCountryDescriptorSupported { get; }
        public bool IsIssuerDocumentIdentificationCodeSupported { get; }
        public bool IsIssuerNameSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DocumentExpirationDate":
                    return IsDocumentExpirationDateSupported;
                case "DocumentTitle":
                    return IsDocumentTitleSupported;
                case "IssuerCountryDescriptor":
                    return IsIssuerCountryDescriptorSupported;
                case "IssuerDocumentIdentificationCode":
                    return IsIssuerDocumentIdentificationCodeSupported;
                case "IssuerName":
                    return IsIssuerNameSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "IdentificationDocumentUseDescriptor":
                    return true;
                case "PersonalInformationVerificationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateIndicator model.
    /// </summary>
    public interface ICandidateIndicator : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        DateTime BeginDate { get; set; }
        
        string IndicatorName { get; set; }

        // Non-PK properties
        string DesignatedBy { get; set; }
        DateTime? EndDate { get; set; }
        string Indicator { get; set; }
        string IndicatorGroup { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ICandidateIndicatorPeriod> CandidateIndicatorPeriods { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateIndicatorMappingContract : IMappingContract
    {
        public CandidateIndicatorMappingContract(
            bool isCandidateIndicatorPeriodsSupported,
            bool isDesignatedBySupported,
            bool isEndDateSupported,
            bool isIndicatorSupported,
            bool isIndicatorGroupSupported,
            bool isCandidateIndicatorPeriodsItemCreatable,
            Func<ICandidateIndicatorPeriod, bool> isCandidateIndicatorPeriodIncluded
            )
        {
            IsCandidateIndicatorPeriodsSupported = isCandidateIndicatorPeriodsSupported;
            IsDesignatedBySupported = isDesignatedBySupported;
            IsEndDateSupported = isEndDateSupported;
            IsIndicatorSupported = isIndicatorSupported;
            IsIndicatorGroupSupported = isIndicatorGroupSupported;
            IsCandidateIndicatorPeriodsItemCreatable = isCandidateIndicatorPeriodsItemCreatable;
            IsCandidateIndicatorPeriodIncluded = isCandidateIndicatorPeriodIncluded;
        }

        public bool IsCandidateIndicatorPeriodsSupported { get; }
        public bool IsDesignatedBySupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsIndicatorSupported { get; }
        public bool IsIndicatorGroupSupported { get; }
        public bool IsCandidateIndicatorPeriodsItemCreatable { get; }
        public Func<ICandidateIndicatorPeriod, bool> IsCandidateIndicatorPeriodIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CandidateIndicatorPeriods":
                    return IsCandidateIndicatorPeriodsSupported;
                case "DesignatedBy":
                    return IsDesignatedBySupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "Indicator":
                    return IsIndicatorSupported;
                case "IndicatorGroup":
                    return IsIndicatorGroupSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "IndicatorName":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CandidateIndicatorPeriods":
                    return IsCandidateIndicatorPeriodsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateIndicatorPeriod model.
    /// </summary>
    public interface ICandidateIndicatorPeriod : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateIndicator CandidateIndicator { get; set; }

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
    public class CandidateIndicatorPeriodMappingContract : IMappingContract
    {
        public CandidateIndicatorPeriodMappingContract(
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
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateInternationalAddress model.
    /// </summary>
    public interface ICandidateInternationalAddress : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string AddressTypeDescriptor { get; set; }

        // Non-PK properties
        string AddressLine1 { get; set; }
        string AddressLine2 { get; set; }
        string AddressLine3 { get; set; }
        string AddressLine4 { get; set; }
        DateTime? BeginDate { get; set; }
        string CountryDescriptor { get; set; }
        DateTime? EndDate { get; set; }
        string Latitude { get; set; }
        string Longitude { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateInternationalAddressMappingContract : IMappingContract
    {
        public CandidateInternationalAddressMappingContract(
            bool isAddressLine1Supported,
            bool isAddressLine2Supported,
            bool isAddressLine3Supported,
            bool isAddressLine4Supported,
            bool isBeginDateSupported,
            bool isCountryDescriptorSupported,
            bool isEndDateSupported,
            bool isLatitudeSupported,
            bool isLongitudeSupported
            )
        {
            IsAddressLine1Supported = isAddressLine1Supported;
            IsAddressLine2Supported = isAddressLine2Supported;
            IsAddressLine3Supported = isAddressLine3Supported;
            IsAddressLine4Supported = isAddressLine4Supported;
            IsBeginDateSupported = isBeginDateSupported;
            IsCountryDescriptorSupported = isCountryDescriptorSupported;
            IsEndDateSupported = isEndDateSupported;
            IsLatitudeSupported = isLatitudeSupported;
            IsLongitudeSupported = isLongitudeSupported;
        }

        public bool IsAddressLine1Supported { get; }
        public bool IsAddressLine2Supported { get; }
        public bool IsAddressLine3Supported { get; }
        public bool IsAddressLine4Supported { get; }
        public bool IsBeginDateSupported { get; }
        public bool IsCountryDescriptorSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsLatitudeSupported { get; }
        public bool IsLongitudeSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AddressLine1":
                    return IsAddressLine1Supported;
                case "AddressLine2":
                    return IsAddressLine2Supported;
                case "AddressLine3":
                    return IsAddressLine3Supported;
                case "AddressLine4":
                    return IsAddressLine4Supported;
                case "BeginDate":
                    return IsBeginDateSupported;
                case "CountryDescriptor":
                    return IsCountryDescriptorSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "Latitude":
                    return IsLatitudeSupported;
                case "Longitude":
                    return IsLongitudeSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AddressTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateLanguage model.
    /// </summary>
    public interface ICandidateLanguage : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string LanguageDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists
        ICollection<ICandidateLanguageUse> CandidateLanguageUses { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateLanguageMappingContract : IMappingContract
    {
        public CandidateLanguageMappingContract(
            bool isCandidateLanguageUsesSupported,
            bool isCandidateLanguageUsesItemCreatable,
            Func<ICandidateLanguageUse, bool> isCandidateLanguageUseIncluded
            )
        {
            IsCandidateLanguageUsesSupported = isCandidateLanguageUsesSupported;
            IsCandidateLanguageUsesItemCreatable = isCandidateLanguageUsesItemCreatable;
            IsCandidateLanguageUseIncluded = isCandidateLanguageUseIncluded;
        }

        public bool IsCandidateLanguageUsesSupported { get; }
        public bool IsCandidateLanguageUsesItemCreatable { get; }
        public Func<ICandidateLanguageUse, bool> IsCandidateLanguageUseIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CandidateLanguageUses":
                    return IsCandidateLanguageUsesSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "LanguageDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CandidateLanguageUses":
                    return IsCandidateLanguageUsesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateLanguageUse model.
    /// </summary>
    public interface ICandidateLanguageUse : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidateLanguage CandidateLanguage { get; set; }
        
        string LanguageUseDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateLanguageUseMappingContract : IMappingContract
    {
        public CandidateLanguageUseMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "LanguageUseDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateOtherName model.
    /// </summary>
    public interface ICandidateOtherName : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string OtherNameTypeDescriptor { get; set; }

        // Non-PK properties
        string FirstName { get; set; }
        string GenerationCodeSuffix { get; set; }
        string LastSurname { get; set; }
        string MiddleName { get; set; }
        string PersonalTitlePrefix { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateOtherNameMappingContract : IMappingContract
    {
        public CandidateOtherNameMappingContract(
            bool isFirstNameSupported,
            bool isGenerationCodeSuffixSupported,
            bool isLastSurnameSupported,
            bool isMiddleNameSupported,
            bool isPersonalTitlePrefixSupported
            )
        {
            IsFirstNameSupported = isFirstNameSupported;
            IsGenerationCodeSuffixSupported = isGenerationCodeSuffixSupported;
            IsLastSurnameSupported = isLastSurnameSupported;
            IsMiddleNameSupported = isMiddleNameSupported;
            IsPersonalTitlePrefixSupported = isPersonalTitlePrefixSupported;
        }

        public bool IsFirstNameSupported { get; }
        public bool IsGenerationCodeSuffixSupported { get; }
        public bool IsLastSurnameSupported { get; }
        public bool IsMiddleNameSupported { get; }
        public bool IsPersonalTitlePrefixSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "FirstName":
                    return IsFirstNameSupported;
                case "GenerationCodeSuffix":
                    return IsGenerationCodeSuffixSupported;
                case "LastSurname":
                    return IsLastSurnameSupported;
                case "MiddleName":
                    return IsMiddleNameSupported;
                case "PersonalTitlePrefix":
                    return IsPersonalTitlePrefixSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "OtherNameTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidatePersonalIdentificationDocument model.
    /// </summary>
    public interface ICandidatePersonalIdentificationDocument : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string IdentificationDocumentUseDescriptor { get; set; }
        
        string PersonalInformationVerificationDescriptor { get; set; }

        // Non-PK properties
        DateTime? DocumentExpirationDate { get; set; }
        string DocumentTitle { get; set; }
        string IssuerCountryDescriptor { get; set; }
        string IssuerDocumentIdentificationCode { get; set; }
        string IssuerName { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidatePersonalIdentificationDocumentMappingContract : IMappingContract
    {
        public CandidatePersonalIdentificationDocumentMappingContract(
            bool isDocumentExpirationDateSupported,
            bool isDocumentTitleSupported,
            bool isIssuerCountryDescriptorSupported,
            bool isIssuerDocumentIdentificationCodeSupported,
            bool isIssuerNameSupported
            )
        {
            IsDocumentExpirationDateSupported = isDocumentExpirationDateSupported;
            IsDocumentTitleSupported = isDocumentTitleSupported;
            IsIssuerCountryDescriptorSupported = isIssuerCountryDescriptorSupported;
            IsIssuerDocumentIdentificationCodeSupported = isIssuerDocumentIdentificationCodeSupported;
            IsIssuerNameSupported = isIssuerNameSupported;
        }

        public bool IsDocumentExpirationDateSupported { get; }
        public bool IsDocumentTitleSupported { get; }
        public bool IsIssuerCountryDescriptorSupported { get; }
        public bool IsIssuerDocumentIdentificationCodeSupported { get; }
        public bool IsIssuerNameSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DocumentExpirationDate":
                    return IsDocumentExpirationDateSupported;
                case "DocumentTitle":
                    return IsDocumentTitleSupported;
                case "IssuerCountryDescriptor":
                    return IsIssuerCountryDescriptorSupported;
                case "IssuerDocumentIdentificationCode":
                    return IsIssuerDocumentIdentificationCodeSupported;
                case "IssuerName":
                    return IsIssuerNameSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "IdentificationDocumentUseDescriptor":
                    return true;
                case "PersonalInformationVerificationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateRace model.
    /// </summary>
    public interface ICandidateRace : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string RaceDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateRaceMappingContract : IMappingContract
    {
        public CandidateRaceMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RaceDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateRelationshipToStaffAssociation model.
    /// </summary>
    public interface ICandidateRelationshipToStaffAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string CandidateIdentifier { get; set; }
        
        string StaffUniqueId { get; set; }

        // Non-PK properties
        DateTime BeginDate { get; set; }
        DateTime? EndDate { get; set; }
        string StaffToCandidateRelationshipDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? CandidateResourceId { get; set; }
        string CandidateDiscriminator { get; set; }
        Guid? StaffResourceId { get; set; }
        string StaffDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateRelationshipToStaffAssociationMappingContract : IMappingContract
    {
        public CandidateRelationshipToStaffAssociationMappingContract(
            bool isBeginDateSupported,
            bool isCandidateReferenceSupported,
            bool isEndDateSupported,
            bool isStaffReferenceSupported,
            bool isStaffToCandidateRelationshipDescriptorSupported
            )
        {
            IsBeginDateSupported = isBeginDateSupported;
            IsCandidateReferenceSupported = isCandidateReferenceSupported;
            IsEndDateSupported = isEndDateSupported;
            IsStaffReferenceSupported = isStaffReferenceSupported;
            IsStaffToCandidateRelationshipDescriptorSupported = isStaffToCandidateRelationshipDescriptorSupported;
        }

        public bool IsBeginDateSupported { get; }
        public bool IsCandidateReferenceSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsStaffReferenceSupported { get; }
        public bool IsStaffToCandidateRelationshipDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BeginDate":
                    return IsBeginDateSupported;
                case "CandidateReference":
                    return IsCandidateReferenceSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "StaffReference":
                    return IsStaffReferenceSupported;
                case "StaffToCandidateRelationshipDescriptor":
                    return IsStaffToCandidateRelationshipDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CandidateIdentifier":
                    return true;
                case "StaffUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateTelephone model.
    /// </summary>
    public interface ICandidateTelephone : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string TelephoneNumber { get; set; }
        
        string TelephoneNumberTypeDescriptor { get; set; }

        // Non-PK properties
        bool? DoNotPublishIndicator { get; set; }
        int? OrderOfPriority { get; set; }
        bool? TextMessageCapabilityIndicator { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateTelephoneMappingContract : IMappingContract
    {
        public CandidateTelephoneMappingContract(
            bool isDoNotPublishIndicatorSupported,
            bool isOrderOfPrioritySupported,
            bool isTextMessageCapabilityIndicatorSupported
            )
        {
            IsDoNotPublishIndicatorSupported = isDoNotPublishIndicatorSupported;
            IsOrderOfPrioritySupported = isOrderOfPrioritySupported;
            IsTextMessageCapabilityIndicatorSupported = isTextMessageCapabilityIndicatorSupported;
        }

        public bool IsDoNotPublishIndicatorSupported { get; }
        public bool IsOrderOfPrioritySupported { get; }
        public bool IsTextMessageCapabilityIndicatorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DoNotPublishIndicator":
                    return IsDoNotPublishIndicatorSupported;
                case "OrderOfPriority":
                    return IsOrderOfPrioritySupported;
                case "TextMessageCapabilityIndicator":
                    return IsTextMessageCapabilityIndicatorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "TelephoneNumber":
                    return true;
                case "TelephoneNumberTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CandidateVisa model.
    /// </summary>
    public interface ICandidateVisa : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICandidate Candidate { get; set; }
        
        string VisaDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CandidateVisaMappingContract : IMappingContract
    {
        public CandidateVisaMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "VisaDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the Certification model.
    /// </summary>
    public interface ICertification : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string CertificationIdentifier { get; set; }
        
        string Namespace { get; set; }

        // Non-PK properties
        string CertificationFieldDescriptor { get; set; }
        string CertificationLevelDescriptor { get; set; }
        string CertificationStandardDescriptor { get; set; }
        string CertificationTitle { get; set; }
        long? EducationOrganizationId { get; set; }
        string EducatorRoleDescriptor { get; set; }
        DateTime? EffectiveDate { get; set; }
        DateTime? EndDate { get; set; }
        string InstructionalSettingDescriptor { get; set; }
        string MinimumDegreeDescriptor { get; set; }
        string PopulationServedDescriptor { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ICertificationCertificationExam> CertificationCertificationExams { get; set; }
        ICollection<ICertificationGradeLevel> CertificationGradeLevels { get; set; }
        ICollection<ICertificationRoute> CertificationRoutes { get; set; }

        // Resource reference data
        Guid? EducationOrganizationResourceId { get; set; }
        string EducationOrganizationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationMappingContract : IMappingContract
    {
        public CertificationMappingContract(
            bool isCertificationCertificationExamsSupported,
            bool isCertificationFieldDescriptorSupported,
            bool isCertificationGradeLevelsSupported,
            bool isCertificationLevelDescriptorSupported,
            bool isCertificationRoutesSupported,
            bool isCertificationStandardDescriptorSupported,
            bool isCertificationTitleSupported,
            bool isEducationOrganizationIdSupported,
            bool isEducationOrganizationReferenceSupported,
            bool isEducatorRoleDescriptorSupported,
            bool isEffectiveDateSupported,
            bool isEndDateSupported,
            bool isInstructionalSettingDescriptorSupported,
            bool isMinimumDegreeDescriptorSupported,
            bool isPopulationServedDescriptorSupported,
            bool isCertificationCertificationExamsItemCreatable,
            Func<ICertificationCertificationExam, bool> isCertificationCertificationExamIncluded,
            bool isCertificationGradeLevelsItemCreatable,
            Func<ICertificationGradeLevel, bool> isCertificationGradeLevelIncluded,
            bool isCertificationRoutesItemCreatable,
            Func<ICertificationRoute, bool> isCertificationRouteIncluded
            )
        {
            IsCertificationCertificationExamsSupported = isCertificationCertificationExamsSupported;
            IsCertificationFieldDescriptorSupported = isCertificationFieldDescriptorSupported;
            IsCertificationGradeLevelsSupported = isCertificationGradeLevelsSupported;
            IsCertificationLevelDescriptorSupported = isCertificationLevelDescriptorSupported;
            IsCertificationRoutesSupported = isCertificationRoutesSupported;
            IsCertificationStandardDescriptorSupported = isCertificationStandardDescriptorSupported;
            IsCertificationTitleSupported = isCertificationTitleSupported;
            IsEducationOrganizationIdSupported = isEducationOrganizationIdSupported;
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsEducatorRoleDescriptorSupported = isEducatorRoleDescriptorSupported;
            IsEffectiveDateSupported = isEffectiveDateSupported;
            IsEndDateSupported = isEndDateSupported;
            IsInstructionalSettingDescriptorSupported = isInstructionalSettingDescriptorSupported;
            IsMinimumDegreeDescriptorSupported = isMinimumDegreeDescriptorSupported;
            IsPopulationServedDescriptorSupported = isPopulationServedDescriptorSupported;
            IsCertificationCertificationExamsItemCreatable = isCertificationCertificationExamsItemCreatable;
            IsCertificationCertificationExamIncluded = isCertificationCertificationExamIncluded;
            IsCertificationGradeLevelsItemCreatable = isCertificationGradeLevelsItemCreatable;
            IsCertificationGradeLevelIncluded = isCertificationGradeLevelIncluded;
            IsCertificationRoutesItemCreatable = isCertificationRoutesItemCreatable;
            IsCertificationRouteIncluded = isCertificationRouteIncluded;
        }

        public bool IsCertificationCertificationExamsSupported { get; }
        public bool IsCertificationFieldDescriptorSupported { get; }
        public bool IsCertificationGradeLevelsSupported { get; }
        public bool IsCertificationLevelDescriptorSupported { get; }
        public bool IsCertificationRoutesSupported { get; }
        public bool IsCertificationStandardDescriptorSupported { get; }
        public bool IsCertificationTitleSupported { get; }
        public bool IsEducationOrganizationIdSupported { get; }
        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsEducatorRoleDescriptorSupported { get; }
        public bool IsEffectiveDateSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsInstructionalSettingDescriptorSupported { get; }
        public bool IsMinimumDegreeDescriptorSupported { get; }
        public bool IsPopulationServedDescriptorSupported { get; }
        public bool IsCertificationCertificationExamsItemCreatable { get; }
        public Func<ICertificationCertificationExam, bool> IsCertificationCertificationExamIncluded { get; }
        public bool IsCertificationGradeLevelsItemCreatable { get; }
        public Func<ICertificationGradeLevel, bool> IsCertificationGradeLevelIncluded { get; }
        public bool IsCertificationRoutesItemCreatable { get; }
        public Func<ICertificationRoute, bool> IsCertificationRouteIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CertificationCertificationExams":
                    return IsCertificationCertificationExamsSupported;
                case "CertificationFieldDescriptor":
                    return IsCertificationFieldDescriptorSupported;
                case "CertificationGradeLevels":
                    return IsCertificationGradeLevelsSupported;
                case "CertificationLevelDescriptor":
                    return IsCertificationLevelDescriptorSupported;
                case "CertificationRoutes":
                    return IsCertificationRoutesSupported;
                case "CertificationStandardDescriptor":
                    return IsCertificationStandardDescriptorSupported;
                case "CertificationTitle":
                    return IsCertificationTitleSupported;
                case "EducationOrganizationId":
                    return IsEducationOrganizationIdSupported;
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "EducatorRoleDescriptor":
                    return IsEducatorRoleDescriptorSupported;
                case "EffectiveDate":
                    return IsEffectiveDateSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "InstructionalSettingDescriptor":
                    return IsInstructionalSettingDescriptorSupported;
                case "MinimumDegreeDescriptor":
                    return IsMinimumDegreeDescriptorSupported;
                case "PopulationServedDescriptor":
                    return IsPopulationServedDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationIdentifier":
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
                case "CertificationCertificationExams":
                    return IsCertificationCertificationExamsItemCreatable;
                case "CertificationGradeLevels":
                    return IsCertificationGradeLevelsItemCreatable;
                case "CertificationRoutes":
                    return IsCertificationRoutesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationCertificationExam model.
    /// </summary>
    public interface ICertificationCertificationExam : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICertification Certification { get; set; }
        
        string CertificationExamIdentifier { get; set; }
        
        string CertificationExamNamespace { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? CertificationExamResourceId { get; set; }
        string CertificationExamDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationCertificationExamMappingContract : IMappingContract
    {
        public CertificationCertificationExamMappingContract(
            bool isCertificationExamReferenceSupported
            )
        {
            IsCertificationExamReferenceSupported = isCertificationExamReferenceSupported;
        }

        public bool IsCertificationExamReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CertificationExamReference":
                    return IsCertificationExamReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationExamIdentifier":
                    return true;
                case "CertificationExamNamespace":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationExam model.
    /// </summary>
    public interface ICertificationExam : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string CertificationExamIdentifier { get; set; }
        
        string Namespace { get; set; }

        // Non-PK properties
        string CertificationExamTitle { get; set; }
        string CertificationExamTypeDescriptor { get; set; }
        long? EducationOrganizationId { get; set; }
        DateTime? EffectiveDate { get; set; }
        DateTime? EndDate { get; set; }

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
    public class CertificationExamMappingContract : IMappingContract
    {
        public CertificationExamMappingContract(
            bool isCertificationExamTitleSupported,
            bool isCertificationExamTypeDescriptorSupported,
            bool isEducationOrganizationIdSupported,
            bool isEducationOrganizationReferenceSupported,
            bool isEffectiveDateSupported,
            bool isEndDateSupported
            )
        {
            IsCertificationExamTitleSupported = isCertificationExamTitleSupported;
            IsCertificationExamTypeDescriptorSupported = isCertificationExamTypeDescriptorSupported;
            IsEducationOrganizationIdSupported = isEducationOrganizationIdSupported;
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsEffectiveDateSupported = isEffectiveDateSupported;
            IsEndDateSupported = isEndDateSupported;
        }

        public bool IsCertificationExamTitleSupported { get; }
        public bool IsCertificationExamTypeDescriptorSupported { get; }
        public bool IsEducationOrganizationIdSupported { get; }
        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsEffectiveDateSupported { get; }
        public bool IsEndDateSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CertificationExamTitle":
                    return IsCertificationExamTitleSupported;
                case "CertificationExamTypeDescriptor":
                    return IsCertificationExamTypeDescriptorSupported;
                case "EducationOrganizationId":
                    return IsEducationOrganizationIdSupported;
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "EffectiveDate":
                    return IsEffectiveDateSupported;
                case "EndDate":
                    return IsEndDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationExamIdentifier":
                    return true;
                case "Namespace":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationExamResult model.
    /// </summary>
    public interface ICertificationExamResult : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime CertificationExamDate { get; set; }
        
        string CertificationExamIdentifier { get; set; }
        
        string Namespace { get; set; }
        
        string PersonId { get; set; }
        
        string SourceSystemDescriptor { get; set; }

        // Non-PK properties
        int? AttemptNumber { get; set; }
        string CertificationExamAssessmentIdentifier { get; set; }
        string CertificationExamNamespace { get; set; }
        bool? CertificationExamPassIndicator { get; set; }
        decimal? CertificationExamScore { get; set; }
        string CertificationExamStatusDescriptor { get; set; }
        string CertificationExamStudentAssessmentIdentifier { get; set; }
        string CertificationExamStudentUniqueId { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? CertificationExamResourceId { get; set; }
        string CertificationExamDiscriminator { get; set; }
        Guid? CertificationExamStudentAssessmentResourceId { get; set; }
        string CertificationExamStudentAssessmentDiscriminator { get; set; }
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationExamResultMappingContract : IMappingContract
    {
        public CertificationExamResultMappingContract(
            bool isAttemptNumberSupported,
            bool isCertificationExamAssessmentIdentifierSupported,
            bool isCertificationExamNamespaceSupported,
            bool isCertificationExamPassIndicatorSupported,
            bool isCertificationExamReferenceSupported,
            bool isCertificationExamScoreSupported,
            bool isCertificationExamStatusDescriptorSupported,
            bool isCertificationExamStudentAssessmentIdentifierSupported,
            bool isCertificationExamStudentAssessmentReferenceSupported,
            bool isCertificationExamStudentUniqueIdSupported,
            bool isPersonReferenceSupported
            )
        {
            IsAttemptNumberSupported = isAttemptNumberSupported;
            IsCertificationExamAssessmentIdentifierSupported = isCertificationExamAssessmentIdentifierSupported;
            IsCertificationExamNamespaceSupported = isCertificationExamNamespaceSupported;
            IsCertificationExamPassIndicatorSupported = isCertificationExamPassIndicatorSupported;
            IsCertificationExamReferenceSupported = isCertificationExamReferenceSupported;
            IsCertificationExamScoreSupported = isCertificationExamScoreSupported;
            IsCertificationExamStatusDescriptorSupported = isCertificationExamStatusDescriptorSupported;
            IsCertificationExamStudentAssessmentIdentifierSupported = isCertificationExamStudentAssessmentIdentifierSupported;
            IsCertificationExamStudentAssessmentReferenceSupported = isCertificationExamStudentAssessmentReferenceSupported;
            IsCertificationExamStudentUniqueIdSupported = isCertificationExamStudentUniqueIdSupported;
            IsPersonReferenceSupported = isPersonReferenceSupported;
        }

        public bool IsAttemptNumberSupported { get; }
        public bool IsCertificationExamAssessmentIdentifierSupported { get; }
        public bool IsCertificationExamNamespaceSupported { get; }
        public bool IsCertificationExamPassIndicatorSupported { get; }
        public bool IsCertificationExamReferenceSupported { get; }
        public bool IsCertificationExamScoreSupported { get; }
        public bool IsCertificationExamStatusDescriptorSupported { get; }
        public bool IsCertificationExamStudentAssessmentIdentifierSupported { get; }
        public bool IsCertificationExamStudentAssessmentReferenceSupported { get; }
        public bool IsCertificationExamStudentUniqueIdSupported { get; }
        public bool IsPersonReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AttemptNumber":
                    return IsAttemptNumberSupported;
                case "CertificationExamAssessmentIdentifier":
                    return IsCertificationExamAssessmentIdentifierSupported;
                case "CertificationExamNamespace":
                    return IsCertificationExamNamespaceSupported;
                case "CertificationExamPassIndicator":
                    return IsCertificationExamPassIndicatorSupported;
                case "CertificationExamReference":
                    return IsCertificationExamReferenceSupported;
                case "CertificationExamScore":
                    return IsCertificationExamScoreSupported;
                case "CertificationExamStatusDescriptor":
                    return IsCertificationExamStatusDescriptorSupported;
                case "CertificationExamStudentAssessmentIdentifier":
                    return IsCertificationExamStudentAssessmentIdentifierSupported;
                case "CertificationExamStudentAssessmentReference":
                    return IsCertificationExamStudentAssessmentReferenceSupported;
                case "CertificationExamStudentUniqueId":
                    return IsCertificationExamStudentUniqueIdSupported;
                case "PersonReference":
                    return IsPersonReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationExamDate":
                    return true;
                case "CertificationExamIdentifier":
                    return true;
                case "Namespace":
                    return true;
                case "PersonId":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationExamStatusDescriptor model.
    /// </summary>
    public interface ICertificationExamStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CertificationExamStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationExamStatusDescriptorMappingContract : IMappingContract
    {
        public CertificationExamStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationExamStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationExamTypeDescriptor model.
    /// </summary>
    public interface ICertificationExamTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CertificationExamTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationExamTypeDescriptorMappingContract : IMappingContract
    {
        public CertificationExamTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationExamTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationFieldDescriptor model.
    /// </summary>
    public interface ICertificationFieldDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CertificationFieldDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationFieldDescriptorMappingContract : IMappingContract
    {
        public CertificationFieldDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationFieldDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationGradeLevel model.
    /// </summary>
    public interface ICertificationGradeLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICertification Certification { get; set; }
        
        string GradeLevelDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationGradeLevelMappingContract : IMappingContract
    {
        public CertificationGradeLevelMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "GradeLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationLevelDescriptor model.
    /// </summary>
    public interface ICertificationLevelDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CertificationLevelDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationLevelDescriptorMappingContract : IMappingContract
    {
        public CertificationLevelDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationLevelDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationRoute model.
    /// </summary>
    public interface ICertificationRoute : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICertification Certification { get; set; }
        
        string CertificationRouteDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationRouteMappingContract : IMappingContract
    {
        public CertificationRouteMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationRouteDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationRouteDescriptor model.
    /// </summary>
    public interface ICertificationRouteDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CertificationRouteDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationRouteDescriptorMappingContract : IMappingContract
    {
        public CertificationRouteDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationRouteDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CertificationStandardDescriptor model.
    /// </summary>
    public interface ICertificationStandardDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CertificationStandardDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CertificationStandardDescriptorMappingContract : IMappingContract
    {
        public CertificationStandardDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationStandardDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CoteachingStyleObservedDescriptor model.
    /// </summary>
    public interface ICoteachingStyleObservedDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CoteachingStyleObservedDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CoteachingStyleObservedDescriptorMappingContract : IMappingContract
    {
        public CoteachingStyleObservedDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CoteachingStyleObservedDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CredentialEvent model.
    /// </summary>
    public interface ICredentialEvent : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime CredentialEventDate { get; set; }
        
        string CredentialEventTypeDescriptor { get; set; }
        
        string CredentialIdentifier { get; set; }
        
        string StateOfIssueStateAbbreviationDescriptor { get; set; }

        // Non-PK properties
        string CredentialEventReason { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? CredentialResourceId { get; set; }
        string CredentialDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CredentialEventMappingContract : IMappingContract
    {
        public CredentialEventMappingContract(
            bool isCredentialEventReasonSupported,
            bool isCredentialReferenceSupported
            )
        {
            IsCredentialEventReasonSupported = isCredentialEventReasonSupported;
            IsCredentialReferenceSupported = isCredentialReferenceSupported;
        }

        public bool IsCredentialEventReasonSupported { get; }
        public bool IsCredentialReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CredentialEventReason":
                    return IsCredentialEventReasonSupported;
                case "CredentialReference":
                    return IsCredentialReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CredentialEventDate":
                    return true;
                case "CredentialEventTypeDescriptor":
                    return true;
                case "CredentialIdentifier":
                    return true;
                case "StateOfIssueStateAbbreviationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CredentialEventTypeDescriptor model.
    /// </summary>
    public interface ICredentialEventTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CredentialEventTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CredentialEventTypeDescriptorMappingContract : IMappingContract
    {
        public CredentialEventTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CredentialEventTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CredentialExtension model.
    /// </summary>
    public interface ICredentialExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ICredential Credential { get; set; }

        // Non-PK properties
        bool? BoardCertificationIndicator { get; set; }
        string CertificationIdentifier { get; set; }
        string CertificationRouteDescriptor { get; set; }
        string CertificationTitle { get; set; }
        DateTime? CredentialStatusDate { get; set; }
        string CredentialStatusDescriptor { get; set; }
        string EducatorRoleDescriptor { get; set; }
        string Namespace { get; set; }
        string PersonId { get; set; }
        string SourceSystemDescriptor { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<ICredentialStudentAcademicRecord> CredentialStudentAcademicRecords { get; set; }

        // Resource reference data
        Guid? CertificationResourceId { get; set; }
        string CertificationDiscriminator { get; set; }
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CredentialExtensionMappingContract : IMappingContract
    {
        public CredentialExtensionMappingContract(
            bool isBoardCertificationIndicatorSupported,
            bool isCertificationIdentifierSupported,
            bool isCertificationReferenceSupported,
            bool isCertificationRouteDescriptorSupported,
            bool isCertificationTitleSupported,
            bool isCredentialStatusDateSupported,
            bool isCredentialStatusDescriptorSupported,
            bool isCredentialStudentAcademicRecordsSupported,
            bool isEducatorRoleDescriptorSupported,
            bool isNamespaceSupported,
            bool isPersonIdSupported,
            bool isPersonReferenceSupported,
            bool isSourceSystemDescriptorSupported,
            bool isCredentialStudentAcademicRecordsItemCreatable,
            Func<ICredentialStudentAcademicRecord, bool> isCredentialStudentAcademicRecordIncluded
            )
        {
            IsBoardCertificationIndicatorSupported = isBoardCertificationIndicatorSupported;
            IsCertificationIdentifierSupported = isCertificationIdentifierSupported;
            IsCertificationReferenceSupported = isCertificationReferenceSupported;
            IsCertificationRouteDescriptorSupported = isCertificationRouteDescriptorSupported;
            IsCertificationTitleSupported = isCertificationTitleSupported;
            IsCredentialStatusDateSupported = isCredentialStatusDateSupported;
            IsCredentialStatusDescriptorSupported = isCredentialStatusDescriptorSupported;
            IsCredentialStudentAcademicRecordsSupported = isCredentialStudentAcademicRecordsSupported;
            IsEducatorRoleDescriptorSupported = isEducatorRoleDescriptorSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsPersonIdSupported = isPersonIdSupported;
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsSourceSystemDescriptorSupported = isSourceSystemDescriptorSupported;
            IsCredentialStudentAcademicRecordsItemCreatable = isCredentialStudentAcademicRecordsItemCreatable;
            IsCredentialStudentAcademicRecordIncluded = isCredentialStudentAcademicRecordIncluded;
        }

        public bool IsBoardCertificationIndicatorSupported { get; }
        public bool IsCertificationIdentifierSupported { get; }
        public bool IsCertificationReferenceSupported { get; }
        public bool IsCertificationRouteDescriptorSupported { get; }
        public bool IsCertificationTitleSupported { get; }
        public bool IsCredentialStatusDateSupported { get; }
        public bool IsCredentialStatusDescriptorSupported { get; }
        public bool IsCredentialStudentAcademicRecordsSupported { get; }
        public bool IsEducatorRoleDescriptorSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsPersonIdSupported { get; }
        public bool IsPersonReferenceSupported { get; }
        public bool IsSourceSystemDescriptorSupported { get; }
        public bool IsCredentialStudentAcademicRecordsItemCreatable { get; }
        public Func<ICredentialStudentAcademicRecord, bool> IsCredentialStudentAcademicRecordIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BoardCertificationIndicator":
                    return IsBoardCertificationIndicatorSupported;
                case "CertificationIdentifier":
                    return IsCertificationIdentifierSupported;
                case "CertificationReference":
                    return IsCertificationReferenceSupported;
                case "CertificationRouteDescriptor":
                    return IsCertificationRouteDescriptorSupported;
                case "CertificationTitle":
                    return IsCertificationTitleSupported;
                case "CredentialStatusDate":
                    return IsCredentialStatusDateSupported;
                case "CredentialStatusDescriptor":
                    return IsCredentialStatusDescriptorSupported;
                case "CredentialStudentAcademicRecords":
                    return IsCredentialStudentAcademicRecordsSupported;
                case "EducatorRoleDescriptor":
                    return IsEducatorRoleDescriptorSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "PersonId":
                    return IsPersonIdSupported;
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "SourceSystemDescriptor":
                    return IsSourceSystemDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "CredentialStudentAcademicRecords":
                    return IsCredentialStudentAcademicRecordsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CredentialStatusDescriptor model.
    /// </summary>
    public interface ICredentialStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int CredentialStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CredentialStatusDescriptorMappingContract : IMappingContract
    {
        public CredentialStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CredentialStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the CredentialStudentAcademicRecord model.
    /// </summary>
    public interface ICredentialStudentAcademicRecord : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        ICredentialExtension CredentialExtension { get; set; }
        
        long EducationOrganizationId { get; set; }
        
        short SchoolYear { get; set; }
        
        string StudentUniqueId { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? StudentAcademicRecordResourceId { get; set; }
        string StudentAcademicRecordDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class CredentialStudentAcademicRecordMappingContract : IMappingContract
    {
        public CredentialStudentAcademicRecordMappingContract(
            bool isStudentAcademicRecordReferenceSupported
            )
        {
            IsStudentAcademicRecordReferenceSupported = isStudentAcademicRecordReferenceSupported;
        }

        public bool IsStudentAcademicRecordReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "StudentAcademicRecordReference":
                    return IsStudentAcademicRecordReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "SchoolYear":
                    return true;
                case "StudentUniqueId":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the DegreeDescriptor model.
    /// </summary>
    public interface IDegreeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int DegreeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class DegreeDescriptorMappingContract : IMappingContract
    {
        public DegreeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "DegreeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EducatorPreparationProgram model.
    /// </summary>
    public interface IEducatorPreparationProgram : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string ProgramName { get; set; }
        
        string ProgramTypeDescriptor { get; set; }

        // Non-PK properties
        string AccreditationStatusDescriptor { get; set; }
        string EducatorPreparationProgramTypeDescriptor { get; set; }
        string ProgramId { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IEducatorPreparationProgramGradeLevel> EducatorPreparationProgramGradeLevels { get; set; }

        // Resource reference data
        Guid? EducationOrganizationResourceId { get; set; }
        string EducationOrganizationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EducatorPreparationProgramMappingContract : IMappingContract
    {
        public EducatorPreparationProgramMappingContract(
            bool isAccreditationStatusDescriptorSupported,
            bool isEducationOrganizationReferenceSupported,
            bool isEducatorPreparationProgramGradeLevelsSupported,
            bool isEducatorPreparationProgramTypeDescriptorSupported,
            bool isProgramIdSupported,
            bool isEducatorPreparationProgramGradeLevelsItemCreatable,
            Func<IEducatorPreparationProgramGradeLevel, bool> isEducatorPreparationProgramGradeLevelIncluded
            )
        {
            IsAccreditationStatusDescriptorSupported = isAccreditationStatusDescriptorSupported;
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsEducatorPreparationProgramGradeLevelsSupported = isEducatorPreparationProgramGradeLevelsSupported;
            IsEducatorPreparationProgramTypeDescriptorSupported = isEducatorPreparationProgramTypeDescriptorSupported;
            IsProgramIdSupported = isProgramIdSupported;
            IsEducatorPreparationProgramGradeLevelsItemCreatable = isEducatorPreparationProgramGradeLevelsItemCreatable;
            IsEducatorPreparationProgramGradeLevelIncluded = isEducatorPreparationProgramGradeLevelIncluded;
        }

        public bool IsAccreditationStatusDescriptorSupported { get; }
        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsEducatorPreparationProgramGradeLevelsSupported { get; }
        public bool IsEducatorPreparationProgramTypeDescriptorSupported { get; }
        public bool IsProgramIdSupported { get; }
        public bool IsEducatorPreparationProgramGradeLevelsItemCreatable { get; }
        public Func<IEducatorPreparationProgramGradeLevel, bool> IsEducatorPreparationProgramGradeLevelIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AccreditationStatusDescriptor":
                    return IsAccreditationStatusDescriptorSupported;
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "EducatorPreparationProgramGradeLevels":
                    return IsEducatorPreparationProgramGradeLevelsSupported;
                case "EducatorPreparationProgramTypeDescriptor":
                    return IsEducatorPreparationProgramTypeDescriptorSupported;
                case "ProgramId":
                    return IsProgramIdSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "ProgramName":
                    return true;
                case "ProgramTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EducatorPreparationProgramGradeLevels":
                    return IsEducatorPreparationProgramGradeLevelsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EducatorPreparationProgramGradeLevel model.
    /// </summary>
    public interface IEducatorPreparationProgramGradeLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEducatorPreparationProgram EducatorPreparationProgram { get; set; }
        
        string GradeLevelDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EducatorPreparationProgramGradeLevelMappingContract : IMappingContract
    {
        public EducatorPreparationProgramGradeLevelMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "GradeLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EducatorPreparationProgramTypeDescriptor model.
    /// </summary>
    public interface IEducatorPreparationProgramTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EducatorPreparationProgramTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EducatorPreparationProgramTypeDescriptorMappingContract : IMappingContract
    {
        public EducatorPreparationProgramTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducatorPreparationProgramTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EducatorRoleDescriptor model.
    /// </summary>
    public interface IEducatorRoleDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EducatorRoleDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EducatorRoleDescriptorMappingContract : IMappingContract
    {
        public EducatorRoleDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducatorRoleDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EnglishLanguageExamDescriptor model.
    /// </summary>
    public interface IEnglishLanguageExamDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EnglishLanguageExamDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EnglishLanguageExamDescriptorMappingContract : IMappingContract
    {
        public EnglishLanguageExamDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EnglishLanguageExamDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EPPDegreeTypeDescriptor model.
    /// </summary>
    public interface IEPPDegreeTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EPPDegreeTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EPPDegreeTypeDescriptorMappingContract : IMappingContract
    {
        public EPPDegreeTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EPPDegreeTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EPPProgramPathwayDescriptor model.
    /// </summary>
    public interface IEPPProgramPathwayDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EPPProgramPathwayDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EPPProgramPathwayDescriptorMappingContract : IMappingContract
    {
        public EPPProgramPathwayDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EPPProgramPathwayDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the Evaluation model.
    /// </summary>
    public interface IEvaluation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        short SchoolYear { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string EvaluationDescription { get; set; }
        string EvaluationTypeDescriptor { get; set; }
        int? InterRaterReliabilityScore { get; set; }
        decimal? MaxRating { get; set; }
        decimal? MinRating { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IEvaluationRatingLevel> EvaluationRatingLevels { get; set; }

        // Resource reference data
        Guid? PerformanceEvaluationResourceId { get; set; }
        string PerformanceEvaluationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationMappingContract : IMappingContract
    {
        public EvaluationMappingContract(
            bool isEvaluationDescriptionSupported,
            bool isEvaluationRatingLevelsSupported,
            bool isEvaluationTypeDescriptorSupported,
            bool isInterRaterReliabilityScoreSupported,
            bool isMaxRatingSupported,
            bool isMinRatingSupported,
            bool isPerformanceEvaluationReferenceSupported,
            bool isEvaluationRatingLevelsItemCreatable,
            Func<IEvaluationRatingLevel, bool> isEvaluationRatingLevelIncluded
            )
        {
            IsEvaluationDescriptionSupported = isEvaluationDescriptionSupported;
            IsEvaluationRatingLevelsSupported = isEvaluationRatingLevelsSupported;
            IsEvaluationTypeDescriptorSupported = isEvaluationTypeDescriptorSupported;
            IsInterRaterReliabilityScoreSupported = isInterRaterReliabilityScoreSupported;
            IsMaxRatingSupported = isMaxRatingSupported;
            IsMinRatingSupported = isMinRatingSupported;
            IsPerformanceEvaluationReferenceSupported = isPerformanceEvaluationReferenceSupported;
            IsEvaluationRatingLevelsItemCreatable = isEvaluationRatingLevelsItemCreatable;
            IsEvaluationRatingLevelIncluded = isEvaluationRatingLevelIncluded;
        }

        public bool IsEvaluationDescriptionSupported { get; }
        public bool IsEvaluationRatingLevelsSupported { get; }
        public bool IsEvaluationTypeDescriptorSupported { get; }
        public bool IsInterRaterReliabilityScoreSupported { get; }
        public bool IsMaxRatingSupported { get; }
        public bool IsMinRatingSupported { get; }
        public bool IsPerformanceEvaluationReferenceSupported { get; }
        public bool IsEvaluationRatingLevelsItemCreatable { get; }
        public Func<IEvaluationRatingLevel, bool> IsEvaluationRatingLevelIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationDescription":
                    return IsEvaluationDescriptionSupported;
                case "EvaluationRatingLevels":
                    return IsEvaluationRatingLevelsSupported;
                case "EvaluationTypeDescriptor":
                    return IsEvaluationTypeDescriptorSupported;
                case "InterRaterReliabilityScore":
                    return IsInterRaterReliabilityScoreSupported;
                case "MaxRating":
                    return IsMaxRatingSupported;
                case "MinRating":
                    return IsMinRatingSupported;
                case "PerformanceEvaluationReference":
                    return IsPerformanceEvaluationReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "SchoolYear":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationRatingLevels":
                    return IsEvaluationRatingLevelsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationElement model.
    /// </summary>
    public interface IEvaluationElement : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string EvaluationElementTitle { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        short SchoolYear { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string EvaluationTypeDescriptor { get; set; }
        decimal? MaxRating { get; set; }
        decimal? MinRating { get; set; }
        int? SortOrder { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IEvaluationElementRatingLevel> EvaluationElementRatingLevels { get; set; }

        // Resource reference data
        Guid? EvaluationObjectiveResourceId { get; set; }
        string EvaluationObjectiveDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationElementMappingContract : IMappingContract
    {
        public EvaluationElementMappingContract(
            bool isEvaluationElementRatingLevelsSupported,
            bool isEvaluationObjectiveReferenceSupported,
            bool isEvaluationTypeDescriptorSupported,
            bool isMaxRatingSupported,
            bool isMinRatingSupported,
            bool isSortOrderSupported,
            bool isEvaluationElementRatingLevelsItemCreatable,
            Func<IEvaluationElementRatingLevel, bool> isEvaluationElementRatingLevelIncluded
            )
        {
            IsEvaluationElementRatingLevelsSupported = isEvaluationElementRatingLevelsSupported;
            IsEvaluationObjectiveReferenceSupported = isEvaluationObjectiveReferenceSupported;
            IsEvaluationTypeDescriptorSupported = isEvaluationTypeDescriptorSupported;
            IsMaxRatingSupported = isMaxRatingSupported;
            IsMinRatingSupported = isMinRatingSupported;
            IsSortOrderSupported = isSortOrderSupported;
            IsEvaluationElementRatingLevelsItemCreatable = isEvaluationElementRatingLevelsItemCreatable;
            IsEvaluationElementRatingLevelIncluded = isEvaluationElementRatingLevelIncluded;
        }

        public bool IsEvaluationElementRatingLevelsSupported { get; }
        public bool IsEvaluationObjectiveReferenceSupported { get; }
        public bool IsEvaluationTypeDescriptorSupported { get; }
        public bool IsMaxRatingSupported { get; }
        public bool IsMinRatingSupported { get; }
        public bool IsSortOrderSupported { get; }
        public bool IsEvaluationElementRatingLevelsItemCreatable { get; }
        public Func<IEvaluationElementRatingLevel, bool> IsEvaluationElementRatingLevelIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationElementRatingLevels":
                    return IsEvaluationElementRatingLevelsSupported;
                case "EvaluationObjectiveReference":
                    return IsEvaluationObjectiveReferenceSupported;
                case "EvaluationTypeDescriptor":
                    return IsEvaluationTypeDescriptorSupported;
                case "MaxRating":
                    return IsMaxRatingSupported;
                case "MinRating":
                    return IsMinRatingSupported;
                case "SortOrder":
                    return IsSortOrderSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationElementTitle":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "SchoolYear":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationElementRatingLevels":
                    return IsEvaluationElementRatingLevelsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationElementRating model.
    /// </summary>
    public interface IEvaluationElementRating : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EvaluationDate { get; set; }
        
        string EvaluationElementTitle { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        string PersonId { get; set; }
        
        short SchoolYear { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string AreaOfRefinement { get; set; }
        string AreaOfReinforcement { get; set; }
        string Comments { get; set; }
        string EvaluationElementRatingLevelDescriptor { get; set; }
        string Feedback { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IEvaluationElementRatingResult> EvaluationElementRatingResults { get; set; }

        // Resource reference data
        Guid? EvaluationElementResourceId { get; set; }
        string EvaluationElementDiscriminator { get; set; }
        Guid? EvaluationObjectiveRatingResourceId { get; set; }
        string EvaluationObjectiveRatingDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationElementRatingMappingContract : IMappingContract
    {
        public EvaluationElementRatingMappingContract(
            bool isAreaOfRefinementSupported,
            bool isAreaOfReinforcementSupported,
            bool isCommentsSupported,
            bool isEvaluationElementRatingLevelDescriptorSupported,
            bool isEvaluationElementRatingResultsSupported,
            bool isEvaluationElementReferenceSupported,
            bool isEvaluationObjectiveRatingReferenceSupported,
            bool isFeedbackSupported,
            bool isEvaluationElementRatingResultsItemCreatable,
            Func<IEvaluationElementRatingResult, bool> isEvaluationElementRatingResultIncluded
            )
        {
            IsAreaOfRefinementSupported = isAreaOfRefinementSupported;
            IsAreaOfReinforcementSupported = isAreaOfReinforcementSupported;
            IsCommentsSupported = isCommentsSupported;
            IsEvaluationElementRatingLevelDescriptorSupported = isEvaluationElementRatingLevelDescriptorSupported;
            IsEvaluationElementRatingResultsSupported = isEvaluationElementRatingResultsSupported;
            IsEvaluationElementReferenceSupported = isEvaluationElementReferenceSupported;
            IsEvaluationObjectiveRatingReferenceSupported = isEvaluationObjectiveRatingReferenceSupported;
            IsFeedbackSupported = isFeedbackSupported;
            IsEvaluationElementRatingResultsItemCreatable = isEvaluationElementRatingResultsItemCreatable;
            IsEvaluationElementRatingResultIncluded = isEvaluationElementRatingResultIncluded;
        }

        public bool IsAreaOfRefinementSupported { get; }
        public bool IsAreaOfReinforcementSupported { get; }
        public bool IsCommentsSupported { get; }
        public bool IsEvaluationElementRatingLevelDescriptorSupported { get; }
        public bool IsEvaluationElementRatingResultsSupported { get; }
        public bool IsEvaluationElementReferenceSupported { get; }
        public bool IsEvaluationObjectiveRatingReferenceSupported { get; }
        public bool IsFeedbackSupported { get; }
        public bool IsEvaluationElementRatingResultsItemCreatable { get; }
        public Func<IEvaluationElementRatingResult, bool> IsEvaluationElementRatingResultIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AreaOfRefinement":
                    return IsAreaOfRefinementSupported;
                case "AreaOfReinforcement":
                    return IsAreaOfReinforcementSupported;
                case "Comments":
                    return IsCommentsSupported;
                case "EvaluationElementRatingLevelDescriptor":
                    return IsEvaluationElementRatingLevelDescriptorSupported;
                case "EvaluationElementRatingResults":
                    return IsEvaluationElementRatingResultsSupported;
                case "EvaluationElementReference":
                    return IsEvaluationElementReferenceSupported;
                case "EvaluationObjectiveRatingReference":
                    return IsEvaluationObjectiveRatingReferenceSupported;
                case "Feedback":
                    return IsFeedbackSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationDate":
                    return true;
                case "EvaluationElementTitle":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "PersonId":
                    return true;
                case "SchoolYear":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationElementRatingResults":
                    return IsEvaluationElementRatingResultsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationElementRatingLevel model.
    /// </summary>
    public interface IEvaluationElementRatingLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluationElement EvaluationElement { get; set; }
        
        string EvaluationRatingLevelDescriptor { get; set; }

        // Non-PK properties
        decimal? MaxRating { get; set; }
        decimal? MinRating { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationElementRatingLevelMappingContract : IMappingContract
    {
        public EvaluationElementRatingLevelMappingContract(
            bool isMaxRatingSupported,
            bool isMinRatingSupported
            )
        {
            IsMaxRatingSupported = isMaxRatingSupported;
            IsMinRatingSupported = isMinRatingSupported;
        }

        public bool IsMaxRatingSupported { get; }
        public bool IsMinRatingSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "MaxRating":
                    return IsMaxRatingSupported;
                case "MinRating":
                    return IsMinRatingSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationRatingLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationElementRatingLevelDescriptor model.
    /// </summary>
    public interface IEvaluationElementRatingLevelDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EvaluationElementRatingLevelDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationElementRatingLevelDescriptorMappingContract : IMappingContract
    {
        public EvaluationElementRatingLevelDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationElementRatingLevelDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationElementRatingResult model.
    /// </summary>
    public interface IEvaluationElementRatingResult : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluationElementRating EvaluationElementRating { get; set; }
        
        decimal Rating { get; set; }
        
        string RatingResultTitle { get; set; }

        // Non-PK properties
        string ResultDatatypeTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationElementRatingResultMappingContract : IMappingContract
    {
        public EvaluationElementRatingResultMappingContract(
            bool isResultDatatypeTypeDescriptorSupported
            )
        {
            IsResultDatatypeTypeDescriptorSupported = isResultDatatypeTypeDescriptorSupported;
        }

        public bool IsResultDatatypeTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ResultDatatypeTypeDescriptor":
                    return IsResultDatatypeTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "Rating":
                    return true;
                case "RatingResultTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationObjective model.
    /// </summary>
    public interface IEvaluationObjective : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        short SchoolYear { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string EvaluationObjectiveDescription { get; set; }
        string EvaluationTypeDescriptor { get; set; }
        decimal? MaxRating { get; set; }
        decimal? MinRating { get; set; }
        int? SortOrder { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IEvaluationObjectiveRatingLevel> EvaluationObjectiveRatingLevels { get; set; }

        // Resource reference data
        Guid? EvaluationResourceId { get; set; }
        string EvaluationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationObjectiveMappingContract : IMappingContract
    {
        public EvaluationObjectiveMappingContract(
            bool isEvaluationObjectiveDescriptionSupported,
            bool isEvaluationObjectiveRatingLevelsSupported,
            bool isEvaluationReferenceSupported,
            bool isEvaluationTypeDescriptorSupported,
            bool isMaxRatingSupported,
            bool isMinRatingSupported,
            bool isSortOrderSupported,
            bool isEvaluationObjectiveRatingLevelsItemCreatable,
            Func<IEvaluationObjectiveRatingLevel, bool> isEvaluationObjectiveRatingLevelIncluded
            )
        {
            IsEvaluationObjectiveDescriptionSupported = isEvaluationObjectiveDescriptionSupported;
            IsEvaluationObjectiveRatingLevelsSupported = isEvaluationObjectiveRatingLevelsSupported;
            IsEvaluationReferenceSupported = isEvaluationReferenceSupported;
            IsEvaluationTypeDescriptorSupported = isEvaluationTypeDescriptorSupported;
            IsMaxRatingSupported = isMaxRatingSupported;
            IsMinRatingSupported = isMinRatingSupported;
            IsSortOrderSupported = isSortOrderSupported;
            IsEvaluationObjectiveRatingLevelsItemCreatable = isEvaluationObjectiveRatingLevelsItemCreatable;
            IsEvaluationObjectiveRatingLevelIncluded = isEvaluationObjectiveRatingLevelIncluded;
        }

        public bool IsEvaluationObjectiveDescriptionSupported { get; }
        public bool IsEvaluationObjectiveRatingLevelsSupported { get; }
        public bool IsEvaluationReferenceSupported { get; }
        public bool IsEvaluationTypeDescriptorSupported { get; }
        public bool IsMaxRatingSupported { get; }
        public bool IsMinRatingSupported { get; }
        public bool IsSortOrderSupported { get; }
        public bool IsEvaluationObjectiveRatingLevelsItemCreatable { get; }
        public Func<IEvaluationObjectiveRatingLevel, bool> IsEvaluationObjectiveRatingLevelIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationObjectiveDescription":
                    return IsEvaluationObjectiveDescriptionSupported;
                case "EvaluationObjectiveRatingLevels":
                    return IsEvaluationObjectiveRatingLevelsSupported;
                case "EvaluationReference":
                    return IsEvaluationReferenceSupported;
                case "EvaluationTypeDescriptor":
                    return IsEvaluationTypeDescriptorSupported;
                case "MaxRating":
                    return IsMaxRatingSupported;
                case "MinRating":
                    return IsMinRatingSupported;
                case "SortOrder":
                    return IsSortOrderSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "SchoolYear":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationObjectiveRatingLevels":
                    return IsEvaluationObjectiveRatingLevelsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationObjectiveRating model.
    /// </summary>
    public interface IEvaluationObjectiveRating : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EvaluationDate { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        string PersonId { get; set; }
        
        short SchoolYear { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string Comments { get; set; }
        string ObjectiveRatingLevelDescriptor { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IEvaluationObjectiveRatingResult> EvaluationObjectiveRatingResults { get; set; }

        // Resource reference data
        Guid? EvaluationObjectiveResourceId { get; set; }
        string EvaluationObjectiveDiscriminator { get; set; }
        Guid? EvaluationRatingResourceId { get; set; }
        string EvaluationRatingDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationObjectiveRatingMappingContract : IMappingContract
    {
        public EvaluationObjectiveRatingMappingContract(
            bool isCommentsSupported,
            bool isEvaluationObjectiveRatingResultsSupported,
            bool isEvaluationObjectiveReferenceSupported,
            bool isEvaluationRatingReferenceSupported,
            bool isObjectiveRatingLevelDescriptorSupported,
            bool isEvaluationObjectiveRatingResultsItemCreatable,
            Func<IEvaluationObjectiveRatingResult, bool> isEvaluationObjectiveRatingResultIncluded
            )
        {
            IsCommentsSupported = isCommentsSupported;
            IsEvaluationObjectiveRatingResultsSupported = isEvaluationObjectiveRatingResultsSupported;
            IsEvaluationObjectiveReferenceSupported = isEvaluationObjectiveReferenceSupported;
            IsEvaluationRatingReferenceSupported = isEvaluationRatingReferenceSupported;
            IsObjectiveRatingLevelDescriptorSupported = isObjectiveRatingLevelDescriptorSupported;
            IsEvaluationObjectiveRatingResultsItemCreatable = isEvaluationObjectiveRatingResultsItemCreatable;
            IsEvaluationObjectiveRatingResultIncluded = isEvaluationObjectiveRatingResultIncluded;
        }

        public bool IsCommentsSupported { get; }
        public bool IsEvaluationObjectiveRatingResultsSupported { get; }
        public bool IsEvaluationObjectiveReferenceSupported { get; }
        public bool IsEvaluationRatingReferenceSupported { get; }
        public bool IsObjectiveRatingLevelDescriptorSupported { get; }
        public bool IsEvaluationObjectiveRatingResultsItemCreatable { get; }
        public Func<IEvaluationObjectiveRatingResult, bool> IsEvaluationObjectiveRatingResultIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "Comments":
                    return IsCommentsSupported;
                case "EvaluationObjectiveRatingResults":
                    return IsEvaluationObjectiveRatingResultsSupported;
                case "EvaluationObjectiveReference":
                    return IsEvaluationObjectiveReferenceSupported;
                case "EvaluationRatingReference":
                    return IsEvaluationRatingReferenceSupported;
                case "ObjectiveRatingLevelDescriptor":
                    return IsObjectiveRatingLevelDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationDate":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "PersonId":
                    return true;
                case "SchoolYear":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationObjectiveRatingResults":
                    return IsEvaluationObjectiveRatingResultsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationObjectiveRatingLevel model.
    /// </summary>
    public interface IEvaluationObjectiveRatingLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluationObjective EvaluationObjective { get; set; }
        
        string EvaluationRatingLevelDescriptor { get; set; }

        // Non-PK properties
        decimal? MaxRating { get; set; }
        decimal? MinRating { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationObjectiveRatingLevelMappingContract : IMappingContract
    {
        public EvaluationObjectiveRatingLevelMappingContract(
            bool isMaxRatingSupported,
            bool isMinRatingSupported
            )
        {
            IsMaxRatingSupported = isMaxRatingSupported;
            IsMinRatingSupported = isMinRatingSupported;
        }

        public bool IsMaxRatingSupported { get; }
        public bool IsMinRatingSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "MaxRating":
                    return IsMaxRatingSupported;
                case "MinRating":
                    return IsMinRatingSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationRatingLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationObjectiveRatingResult model.
    /// </summary>
    public interface IEvaluationObjectiveRatingResult : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluationObjectiveRating EvaluationObjectiveRating { get; set; }
        
        decimal Rating { get; set; }
        
        string RatingResultTitle { get; set; }

        // Non-PK properties
        string ResultDatatypeTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationObjectiveRatingResultMappingContract : IMappingContract
    {
        public EvaluationObjectiveRatingResultMappingContract(
            bool isResultDatatypeTypeDescriptorSupported
            )
        {
            IsResultDatatypeTypeDescriptorSupported = isResultDatatypeTypeDescriptorSupported;
        }

        public bool IsResultDatatypeTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ResultDatatypeTypeDescriptor":
                    return IsResultDatatypeTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "Rating":
                    return true;
                case "RatingResultTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationPeriodDescriptor model.
    /// </summary>
    public interface IEvaluationPeriodDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EvaluationPeriodDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationPeriodDescriptorMappingContract : IMappingContract
    {
        public EvaluationPeriodDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationPeriodDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationRating model.
    /// </summary>
    public interface IEvaluationRating : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EvaluationDate { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        string PersonId { get; set; }
        
        short SchoolYear { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        int? ActualDuration { get; set; }
        string Comments { get; set; }
        string EvaluationRatingLevelDescriptor { get; set; }
        string EvaluationRatingStatusDescriptor { get; set; }
        string LocalCourseCode { get; set; }
        long? SchoolId { get; set; }
        string SectionIdentifier { get; set; }
        string SessionName { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IEvaluationRatingResult> EvaluationRatingResults { get; set; }
        ICollection<IEvaluationRatingReviewer> EvaluationRatingReviewers { get; set; }

        // Resource reference data
        Guid? EvaluationResourceId { get; set; }
        string EvaluationDiscriminator { get; set; }
        Guid? PerformanceEvaluationRatingResourceId { get; set; }
        string PerformanceEvaluationRatingDiscriminator { get; set; }
        Guid? SectionResourceId { get; set; }
        string SectionDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationRatingMappingContract : IMappingContract
    {
        public EvaluationRatingMappingContract(
            bool isActualDurationSupported,
            bool isCommentsSupported,
            bool isEvaluationRatingLevelDescriptorSupported,
            bool isEvaluationRatingResultsSupported,
            bool isEvaluationRatingReviewersSupported,
            bool isEvaluationRatingStatusDescriptorSupported,
            bool isEvaluationReferenceSupported,
            bool isLocalCourseCodeSupported,
            bool isPerformanceEvaluationRatingReferenceSupported,
            bool isSchoolIdSupported,
            bool isSectionIdentifierSupported,
            bool isSectionReferenceSupported,
            bool isSessionNameSupported,
            bool isEvaluationRatingResultsItemCreatable,
            Func<IEvaluationRatingResult, bool> isEvaluationRatingResultIncluded,
            bool isEvaluationRatingReviewersItemCreatable,
            Func<IEvaluationRatingReviewer, bool> isEvaluationRatingReviewerIncluded
            )
        {
            IsActualDurationSupported = isActualDurationSupported;
            IsCommentsSupported = isCommentsSupported;
            IsEvaluationRatingLevelDescriptorSupported = isEvaluationRatingLevelDescriptorSupported;
            IsEvaluationRatingResultsSupported = isEvaluationRatingResultsSupported;
            IsEvaluationRatingReviewersSupported = isEvaluationRatingReviewersSupported;
            IsEvaluationRatingStatusDescriptorSupported = isEvaluationRatingStatusDescriptorSupported;
            IsEvaluationReferenceSupported = isEvaluationReferenceSupported;
            IsLocalCourseCodeSupported = isLocalCourseCodeSupported;
            IsPerformanceEvaluationRatingReferenceSupported = isPerformanceEvaluationRatingReferenceSupported;
            IsSchoolIdSupported = isSchoolIdSupported;
            IsSectionIdentifierSupported = isSectionIdentifierSupported;
            IsSectionReferenceSupported = isSectionReferenceSupported;
            IsSessionNameSupported = isSessionNameSupported;
            IsEvaluationRatingResultsItemCreatable = isEvaluationRatingResultsItemCreatable;
            IsEvaluationRatingResultIncluded = isEvaluationRatingResultIncluded;
            IsEvaluationRatingReviewersItemCreatable = isEvaluationRatingReviewersItemCreatable;
            IsEvaluationRatingReviewerIncluded = isEvaluationRatingReviewerIncluded;
        }

        public bool IsActualDurationSupported { get; }
        public bool IsCommentsSupported { get; }
        public bool IsEvaluationRatingLevelDescriptorSupported { get; }
        public bool IsEvaluationRatingResultsSupported { get; }
        public bool IsEvaluationRatingReviewersSupported { get; }
        public bool IsEvaluationRatingStatusDescriptorSupported { get; }
        public bool IsEvaluationReferenceSupported { get; }
        public bool IsLocalCourseCodeSupported { get; }
        public bool IsPerformanceEvaluationRatingReferenceSupported { get; }
        public bool IsSchoolIdSupported { get; }
        public bool IsSectionIdentifierSupported { get; }
        public bool IsSectionReferenceSupported { get; }
        public bool IsSessionNameSupported { get; }
        public bool IsEvaluationRatingResultsItemCreatable { get; }
        public Func<IEvaluationRatingResult, bool> IsEvaluationRatingResultIncluded { get; }
        public bool IsEvaluationRatingReviewersItemCreatable { get; }
        public Func<IEvaluationRatingReviewer, bool> IsEvaluationRatingReviewerIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ActualDuration":
                    return IsActualDurationSupported;
                case "Comments":
                    return IsCommentsSupported;
                case "EvaluationRatingLevelDescriptor":
                    return IsEvaluationRatingLevelDescriptorSupported;
                case "EvaluationRatingResults":
                    return IsEvaluationRatingResultsSupported;
                case "EvaluationRatingReviewers":
                    return IsEvaluationRatingReviewersSupported;
                case "EvaluationRatingStatusDescriptor":
                    return IsEvaluationRatingStatusDescriptorSupported;
                case "EvaluationReference":
                    return IsEvaluationReferenceSupported;
                case "LocalCourseCode":
                    return IsLocalCourseCodeSupported;
                case "PerformanceEvaluationRatingReference":
                    return IsPerformanceEvaluationRatingReferenceSupported;
                case "SchoolId":
                    return IsSchoolIdSupported;
                case "SectionIdentifier":
                    return IsSectionIdentifierSupported;
                case "SectionReference":
                    return IsSectionReferenceSupported;
                case "SessionName":
                    return IsSessionNameSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationDate":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "PersonId":
                    return true;
                case "SchoolYear":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationRatingResults":
                    return IsEvaluationRatingResultsItemCreatable;
                case "EvaluationRatingReviewers":
                    return IsEvaluationRatingReviewersItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationRatingLevel model.
    /// </summary>
    public interface IEvaluationRatingLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluation Evaluation { get; set; }
        
        string EvaluationRatingLevelDescriptor { get; set; }

        // Non-PK properties
        decimal? MaxRating { get; set; }
        decimal? MinRating { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationRatingLevelMappingContract : IMappingContract
    {
        public EvaluationRatingLevelMappingContract(
            bool isMaxRatingSupported,
            bool isMinRatingSupported
            )
        {
            IsMaxRatingSupported = isMaxRatingSupported;
            IsMinRatingSupported = isMinRatingSupported;
        }

        public bool IsMaxRatingSupported { get; }
        public bool IsMinRatingSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "MaxRating":
                    return IsMaxRatingSupported;
                case "MinRating":
                    return IsMinRatingSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationRatingLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationRatingLevelDescriptor model.
    /// </summary>
    public interface IEvaluationRatingLevelDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EvaluationRatingLevelDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationRatingLevelDescriptorMappingContract : IMappingContract
    {
        public EvaluationRatingLevelDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationRatingLevelDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationRatingResult model.
    /// </summary>
    public interface IEvaluationRatingResult : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluationRating EvaluationRating { get; set; }
        
        decimal Rating { get; set; }
        
        string RatingResultTitle { get; set; }

        // Non-PK properties
        string ResultDatatypeTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationRatingResultMappingContract : IMappingContract
    {
        public EvaluationRatingResultMappingContract(
            bool isResultDatatypeTypeDescriptorSupported
            )
        {
            IsResultDatatypeTypeDescriptorSupported = isResultDatatypeTypeDescriptorSupported;
        }

        public bool IsResultDatatypeTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ResultDatatypeTypeDescriptor":
                    return IsResultDatatypeTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "Rating":
                    return true;
                case "RatingResultTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationRatingReviewer model.
    /// </summary>
    public interface IEvaluationRatingReviewer : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluationRating EvaluationRating { get; set; }
        
        string FirstName { get; set; }
        
        string LastSurname { get; set; }

        // Non-PK properties
        string ReviewerPersonId { get; set; }
        string ReviewerSourceSystemDescriptor { get; set; }

        // One-to-one relationships

        IEvaluationRatingReviewerReceivedTraining EvaluationRatingReviewerReceivedTraining { get; set; }

        // Lists

        // Resource reference data
        Guid? ReviewerPersonResourceId { get; set; }
        string ReviewerPersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationRatingReviewerMappingContract : IMappingContract
    {
        public EvaluationRatingReviewerMappingContract(
            bool isEvaluationRatingReviewerReceivedTrainingSupported,
            bool isReviewerPersonIdSupported,
            bool isReviewerPersonReferenceSupported,
            bool isReviewerSourceSystemDescriptorSupported,
            bool isEvaluationRatingReviewerReceivedTrainingCreatable
            )
        {
            IsEvaluationRatingReviewerReceivedTrainingSupported = isEvaluationRatingReviewerReceivedTrainingSupported;
            IsReviewerPersonIdSupported = isReviewerPersonIdSupported;
            IsReviewerPersonReferenceSupported = isReviewerPersonReferenceSupported;
            IsReviewerSourceSystemDescriptorSupported = isReviewerSourceSystemDescriptorSupported;
            IsEvaluationRatingReviewerReceivedTrainingCreatable = isEvaluationRatingReviewerReceivedTrainingCreatable;
        }

        public bool IsEvaluationRatingReviewerReceivedTrainingSupported { get; }
        public bool IsReviewerPersonIdSupported { get; }
        public bool IsReviewerPersonReferenceSupported { get; }
        public bool IsReviewerSourceSystemDescriptorSupported { get; }
        public bool IsEvaluationRatingReviewerReceivedTrainingCreatable { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationRatingReviewerReceivedTraining":
                    return IsEvaluationRatingReviewerReceivedTrainingSupported;
                case "ReviewerPersonId":
                    return IsReviewerPersonIdSupported;
                case "ReviewerPersonReference":
                    return IsReviewerPersonReferenceSupported;
                case "ReviewerSourceSystemDescriptor":
                    return IsReviewerSourceSystemDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "FirstName":
                    return true;
                case "LastSurname":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationRatingReviewerReceivedTraining":
                    return IsEvaluationRatingReviewerReceivedTrainingCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationRatingReviewerReceivedTraining model.
    /// </summary>
    public interface IEvaluationRatingReviewerReceivedTraining : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IEvaluationRatingReviewer EvaluationRatingReviewer { get; set; }

        // Non-PK properties
        int? InterRaterReliabilityScore { get; set; }
        DateTime? ReceivedTrainingDate { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationRatingReviewerReceivedTrainingMappingContract : IMappingContract
    {
        public EvaluationRatingReviewerReceivedTrainingMappingContract(
            bool isInterRaterReliabilityScoreSupported,
            bool isReceivedTrainingDateSupported
            )
        {
            IsInterRaterReliabilityScoreSupported = isInterRaterReliabilityScoreSupported;
            IsReceivedTrainingDateSupported = isReceivedTrainingDateSupported;
        }

        public bool IsInterRaterReliabilityScoreSupported { get; }
        public bool IsReceivedTrainingDateSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "InterRaterReliabilityScore":
                    return IsInterRaterReliabilityScoreSupported;
                case "ReceivedTrainingDate":
                    return IsReceivedTrainingDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationRatingStatusDescriptor model.
    /// </summary>
    public interface IEvaluationRatingStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EvaluationRatingStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationRatingStatusDescriptorMappingContract : IMappingContract
    {
        public EvaluationRatingStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationRatingStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the EvaluationTypeDescriptor model.
    /// </summary>
    public interface IEvaluationTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int EvaluationTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class EvaluationTypeDescriptorMappingContract : IMappingContract
    {
        public EvaluationTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the FederalLocaleCodeDescriptor model.
    /// </summary>
    public interface IFederalLocaleCodeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int FederalLocaleCodeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class FederalLocaleCodeDescriptorMappingContract : IMappingContract
    {
        public FederalLocaleCodeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "FederalLocaleCodeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the FieldworkExperience model.
    /// </summary>
    public interface IFieldworkExperience : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime BeginDate { get; set; }
        
        string FieldworkIdentifier { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        long? EducationOrganizationId { get; set; }
        DateTime? EndDate { get; set; }
        string FieldworkTypeDescriptor { get; set; }
        decimal? HoursCompleted { get; set; }
        string ProgramGatewayDescriptor { get; set; }
        string ProgramName { get; set; }
        string ProgramTypeDescriptor { get; set; }
        long? SchoolId { get; set; }

        // One-to-one relationships

        IFieldworkExperienceCoteaching FieldworkExperienceCoteaching { get; set; }

        // Lists

        // Resource reference data
        Guid? EducatorPreparationProgramResourceId { get; set; }
        string EducatorPreparationProgramDiscriminator { get; set; }
        Guid? SchoolResourceId { get; set; }
        Guid? StudentResourceId { get; set; }
        string StudentDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class FieldworkExperienceMappingContract : IMappingContract
    {
        public FieldworkExperienceMappingContract(
            bool isEducationOrganizationIdSupported,
            bool isEducatorPreparationProgramReferenceSupported,
            bool isEndDateSupported,
            bool isFieldworkExperienceCoteachingSupported,
            bool isFieldworkTypeDescriptorSupported,
            bool isHoursCompletedSupported,
            bool isProgramGatewayDescriptorSupported,
            bool isProgramNameSupported,
            bool isProgramTypeDescriptorSupported,
            bool isSchoolIdSupported,
            bool isSchoolReferenceSupported,
            bool isStudentReferenceSupported,
            bool isFieldworkExperienceCoteachingCreatable
            )
        {
            IsEducationOrganizationIdSupported = isEducationOrganizationIdSupported;
            IsEducatorPreparationProgramReferenceSupported = isEducatorPreparationProgramReferenceSupported;
            IsEndDateSupported = isEndDateSupported;
            IsFieldworkExperienceCoteachingSupported = isFieldworkExperienceCoteachingSupported;
            IsFieldworkTypeDescriptorSupported = isFieldworkTypeDescriptorSupported;
            IsHoursCompletedSupported = isHoursCompletedSupported;
            IsProgramGatewayDescriptorSupported = isProgramGatewayDescriptorSupported;
            IsProgramNameSupported = isProgramNameSupported;
            IsProgramTypeDescriptorSupported = isProgramTypeDescriptorSupported;
            IsSchoolIdSupported = isSchoolIdSupported;
            IsSchoolReferenceSupported = isSchoolReferenceSupported;
            IsStudentReferenceSupported = isStudentReferenceSupported;
            IsFieldworkExperienceCoteachingCreatable = isFieldworkExperienceCoteachingCreatable;
        }

        public bool IsEducationOrganizationIdSupported { get; }
        public bool IsEducatorPreparationProgramReferenceSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsFieldworkExperienceCoteachingSupported { get; }
        public bool IsFieldworkTypeDescriptorSupported { get; }
        public bool IsHoursCompletedSupported { get; }
        public bool IsProgramGatewayDescriptorSupported { get; }
        public bool IsProgramNameSupported { get; }
        public bool IsProgramTypeDescriptorSupported { get; }
        public bool IsSchoolIdSupported { get; }
        public bool IsSchoolReferenceSupported { get; }
        public bool IsStudentReferenceSupported { get; }
        public bool IsFieldworkExperienceCoteachingCreatable { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EducationOrganizationId":
                    return IsEducationOrganizationIdSupported;
                case "EducatorPreparationProgramReference":
                    return IsEducatorPreparationProgramReferenceSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "FieldworkExperienceCoteaching":
                    return IsFieldworkExperienceCoteachingSupported;
                case "FieldworkTypeDescriptor":
                    return IsFieldworkTypeDescriptorSupported;
                case "HoursCompleted":
                    return IsHoursCompletedSupported;
                case "ProgramGatewayDescriptor":
                    return IsProgramGatewayDescriptorSupported;
                case "ProgramName":
                    return IsProgramNameSupported;
                case "ProgramTypeDescriptor":
                    return IsProgramTypeDescriptorSupported;
                case "SchoolId":
                    return IsSchoolIdSupported;
                case "SchoolReference":
                    return IsSchoolReferenceSupported;
                case "StudentReference":
                    return IsStudentReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "FieldworkIdentifier":
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
                case "FieldworkExperienceCoteaching":
                    return IsFieldworkExperienceCoteachingCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the FieldworkExperienceCoteaching model.
    /// </summary>
    public interface IFieldworkExperienceCoteaching : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IFieldworkExperience FieldworkExperience { get; set; }

        // Non-PK properties
        DateTime CoteachingBeginDate { get; set; }
        DateTime? CoteachingEndDate { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class FieldworkExperienceCoteachingMappingContract : IMappingContract
    {
        public FieldworkExperienceCoteachingMappingContract(
            bool isCoteachingBeginDateSupported,
            bool isCoteachingEndDateSupported
            )
        {
            IsCoteachingBeginDateSupported = isCoteachingBeginDateSupported;
            IsCoteachingEndDateSupported = isCoteachingEndDateSupported;
        }

        public bool IsCoteachingBeginDateSupported { get; }
        public bool IsCoteachingEndDateSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CoteachingBeginDate":
                    return IsCoteachingBeginDateSupported;
                case "CoteachingEndDate":
                    return IsCoteachingEndDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the FieldworkExperienceSectionAssociation model.
    /// </summary>
    public interface IFieldworkExperienceSectionAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime BeginDate { get; set; }
        
        string FieldworkIdentifier { get; set; }
        
        string LocalCourseCode { get; set; }
        
        long SchoolId { get; set; }
        
        short SchoolYear { get; set; }
        
        string SectionIdentifier { get; set; }
        
        string SessionName { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? FieldworkExperienceResourceId { get; set; }
        string FieldworkExperienceDiscriminator { get; set; }
        Guid? SectionResourceId { get; set; }
        string SectionDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class FieldworkExperienceSectionAssociationMappingContract : IMappingContract
    {
        public FieldworkExperienceSectionAssociationMappingContract(
            bool isFieldworkExperienceReferenceSupported,
            bool isSectionReferenceSupported
            )
        {
            IsFieldworkExperienceReferenceSupported = isFieldworkExperienceReferenceSupported;
            IsSectionReferenceSupported = isSectionReferenceSupported;
        }

        public bool IsFieldworkExperienceReferenceSupported { get; }
        public bool IsSectionReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "FieldworkExperienceReference":
                    return IsFieldworkExperienceReferenceSupported;
                case "SectionReference":
                    return IsSectionReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BeginDate":
                    return true;
                case "FieldworkIdentifier":
                    return true;
                case "LocalCourseCode":
                    return true;
                case "SchoolId":
                    return true;
                case "SchoolYear":
                    return true;
                case "SectionIdentifier":
                    return true;
                case "SessionName":
                    return true;
                case "StudentUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the FieldworkTypeDescriptor model.
    /// </summary>
    public interface IFieldworkTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int FieldworkTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class FieldworkTypeDescriptorMappingContract : IMappingContract
    {
        public FieldworkTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "FieldworkTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the FinancialAid model.
    /// </summary>
    public interface IFinancialAid : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string AidTypeDescriptor { get; set; }
        
        DateTime BeginDate { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        decimal? AidAmount { get; set; }
        string AidConditionDescription { get; set; }
        DateTime? EndDate { get; set; }
        bool? PellGrantRecipient { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? StudentResourceId { get; set; }
        string StudentDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class FinancialAidMappingContract : IMappingContract
    {
        public FinancialAidMappingContract(
            bool isAidAmountSupported,
            bool isAidConditionDescriptionSupported,
            bool isEndDateSupported,
            bool isPellGrantRecipientSupported,
            bool isStudentReferenceSupported
            )
        {
            IsAidAmountSupported = isAidAmountSupported;
            IsAidConditionDescriptionSupported = isAidConditionDescriptionSupported;
            IsEndDateSupported = isEndDateSupported;
            IsPellGrantRecipientSupported = isPellGrantRecipientSupported;
            IsStudentReferenceSupported = isStudentReferenceSupported;
        }

        public bool IsAidAmountSupported { get; }
        public bool IsAidConditionDescriptionSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsPellGrantRecipientSupported { get; }
        public bool IsStudentReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AidAmount":
                    return IsAidAmountSupported;
                case "AidConditionDescription":
                    return IsAidConditionDescriptionSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "PellGrantRecipient":
                    return IsPellGrantRecipientSupported;
                case "StudentReference":
                    return IsStudentReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AidTypeDescriptor":
                    return true;
                case "BeginDate":
                    return true;
                case "StudentUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the FundingSourceDescriptor model.
    /// </summary>
    public interface IFundingSourceDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int FundingSourceDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class FundingSourceDescriptorMappingContract : IMappingContract
    {
        public FundingSourceDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "FundingSourceDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the GenderDescriptor model.
    /// </summary>
    public interface IGenderDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int GenderDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class GenderDescriptorMappingContract : IMappingContract
    {
        public GenderDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "GenderDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the Goal model.
    /// </summary>
    public interface IGoal : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime AssignmentDate { get; set; }
        
        string GoalTitle { get; set; }
        
        string PersonId { get; set; }
        
        string SourceSystemDescriptor { get; set; }

        // Non-PK properties
        string Comments { get; set; }
        DateTime? CompletedDate { get; set; }
        bool? CompletedIndicator { get; set; }
        DateTime? DueDate { get; set; }
        long? EducationOrganizationId { get; set; }
        string EvaluationElementTitle { get; set; }
        string EvaluationObjectiveTitle { get; set; }
        string EvaluationPeriodDescriptor { get; set; }
        string EvaluationTitle { get; set; }
        string GoalDescription { get; set; }
        string GoalTypeDescriptor { get; set; }
        DateTime? ParentAssignmentDate { get; set; }
        string ParentGoalTitle { get; set; }
        string ParentPersonId { get; set; }
        string ParentSourceSystemDescriptor { get; set; }
        string PerformanceEvaluationTitle { get; set; }
        string PerformanceEvaluationTypeDescriptor { get; set; }
        short? SchoolYear { get; set; }
        string TermDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EvaluationElementResourceId { get; set; }
        string EvaluationElementDiscriminator { get; set; }
        Guid? EvaluationObjectiveResourceId { get; set; }
        string EvaluationObjectiveDiscriminator { get; set; }
        Guid? ParentGoalResourceId { get; set; }
        string ParentGoalDiscriminator { get; set; }
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class GoalMappingContract : IMappingContract
    {
        public GoalMappingContract(
            bool isCommentsSupported,
            bool isCompletedDateSupported,
            bool isCompletedIndicatorSupported,
            bool isDueDateSupported,
            bool isEducationOrganizationIdSupported,
            bool isEvaluationElementReferenceSupported,
            bool isEvaluationElementTitleSupported,
            bool isEvaluationObjectiveReferenceSupported,
            bool isEvaluationObjectiveTitleSupported,
            bool isEvaluationPeriodDescriptorSupported,
            bool isEvaluationTitleSupported,
            bool isGoalDescriptionSupported,
            bool isGoalTypeDescriptorSupported,
            bool isParentAssignmentDateSupported,
            bool isParentGoalReferenceSupported,
            bool isParentGoalTitleSupported,
            bool isParentPersonIdSupported,
            bool isParentSourceSystemDescriptorSupported,
            bool isPerformanceEvaluationTitleSupported,
            bool isPerformanceEvaluationTypeDescriptorSupported,
            bool isPersonReferenceSupported,
            bool isSchoolYearSupported,
            bool isTermDescriptorSupported
            )
        {
            IsCommentsSupported = isCommentsSupported;
            IsCompletedDateSupported = isCompletedDateSupported;
            IsCompletedIndicatorSupported = isCompletedIndicatorSupported;
            IsDueDateSupported = isDueDateSupported;
            IsEducationOrganizationIdSupported = isEducationOrganizationIdSupported;
            IsEvaluationElementReferenceSupported = isEvaluationElementReferenceSupported;
            IsEvaluationElementTitleSupported = isEvaluationElementTitleSupported;
            IsEvaluationObjectiveReferenceSupported = isEvaluationObjectiveReferenceSupported;
            IsEvaluationObjectiveTitleSupported = isEvaluationObjectiveTitleSupported;
            IsEvaluationPeriodDescriptorSupported = isEvaluationPeriodDescriptorSupported;
            IsEvaluationTitleSupported = isEvaluationTitleSupported;
            IsGoalDescriptionSupported = isGoalDescriptionSupported;
            IsGoalTypeDescriptorSupported = isGoalTypeDescriptorSupported;
            IsParentAssignmentDateSupported = isParentAssignmentDateSupported;
            IsParentGoalReferenceSupported = isParentGoalReferenceSupported;
            IsParentGoalTitleSupported = isParentGoalTitleSupported;
            IsParentPersonIdSupported = isParentPersonIdSupported;
            IsParentSourceSystemDescriptorSupported = isParentSourceSystemDescriptorSupported;
            IsPerformanceEvaluationTitleSupported = isPerformanceEvaluationTitleSupported;
            IsPerformanceEvaluationTypeDescriptorSupported = isPerformanceEvaluationTypeDescriptorSupported;
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsSchoolYearSupported = isSchoolYearSupported;
            IsTermDescriptorSupported = isTermDescriptorSupported;
        }

        public bool IsCommentsSupported { get; }
        public bool IsCompletedDateSupported { get; }
        public bool IsCompletedIndicatorSupported { get; }
        public bool IsDueDateSupported { get; }
        public bool IsEducationOrganizationIdSupported { get; }
        public bool IsEvaluationElementReferenceSupported { get; }
        public bool IsEvaluationElementTitleSupported { get; }
        public bool IsEvaluationObjectiveReferenceSupported { get; }
        public bool IsEvaluationObjectiveTitleSupported { get; }
        public bool IsEvaluationPeriodDescriptorSupported { get; }
        public bool IsEvaluationTitleSupported { get; }
        public bool IsGoalDescriptionSupported { get; }
        public bool IsGoalTypeDescriptorSupported { get; }
        public bool IsParentAssignmentDateSupported { get; }
        public bool IsParentGoalReferenceSupported { get; }
        public bool IsParentGoalTitleSupported { get; }
        public bool IsParentPersonIdSupported { get; }
        public bool IsParentSourceSystemDescriptorSupported { get; }
        public bool IsPerformanceEvaluationTitleSupported { get; }
        public bool IsPerformanceEvaluationTypeDescriptorSupported { get; }
        public bool IsPersonReferenceSupported { get; }
        public bool IsSchoolYearSupported { get; }
        public bool IsTermDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "Comments":
                    return IsCommentsSupported;
                case "CompletedDate":
                    return IsCompletedDateSupported;
                case "CompletedIndicator":
                    return IsCompletedIndicatorSupported;
                case "DueDate":
                    return IsDueDateSupported;
                case "EducationOrganizationId":
                    return IsEducationOrganizationIdSupported;
                case "EvaluationElementReference":
                    return IsEvaluationElementReferenceSupported;
                case "EvaluationElementTitle":
                    return IsEvaluationElementTitleSupported;
                case "EvaluationObjectiveReference":
                    return IsEvaluationObjectiveReferenceSupported;
                case "EvaluationObjectiveTitle":
                    return IsEvaluationObjectiveTitleSupported;
                case "EvaluationPeriodDescriptor":
                    return IsEvaluationPeriodDescriptorSupported;
                case "EvaluationTitle":
                    return IsEvaluationTitleSupported;
                case "GoalDescription":
                    return IsGoalDescriptionSupported;
                case "GoalTypeDescriptor":
                    return IsGoalTypeDescriptorSupported;
                case "ParentAssignmentDate":
                    return IsParentAssignmentDateSupported;
                case "ParentGoalReference":
                    return IsParentGoalReferenceSupported;
                case "ParentGoalTitle":
                    return IsParentGoalTitleSupported;
                case "ParentPersonId":
                    return IsParentPersonIdSupported;
                case "ParentSourceSystemDescriptor":
                    return IsParentSourceSystemDescriptorSupported;
                case "PerformanceEvaluationTitle":
                    return IsPerformanceEvaluationTitleSupported;
                case "PerformanceEvaluationTypeDescriptor":
                    return IsPerformanceEvaluationTypeDescriptorSupported;
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "SchoolYear":
                    return IsSchoolYearSupported;
                case "TermDescriptor":
                    return IsTermDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AssignmentDate":
                    return true;
                case "GoalTitle":
                    return true;
                case "PersonId":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the GoalTypeDescriptor model.
    /// </summary>
    public interface IGoalTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int GoalTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class GoalTypeDescriptorMappingContract : IMappingContract
    {
        public GoalTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "GoalTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the GraduationPlanExtension model.
    /// </summary>
    public interface IGraduationPlanExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IGraduationPlan GraduationPlan { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists
        ICollection<IGraduationPlanRequiredCertification> GraduationPlanRequiredCertifications { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class GraduationPlanExtensionMappingContract : IMappingContract
    {
        public GraduationPlanExtensionMappingContract(
            bool isGraduationPlanRequiredCertificationsSupported,
            bool isGraduationPlanRequiredCertificationsItemCreatable,
            Func<IGraduationPlanRequiredCertification, bool> isGraduationPlanRequiredCertificationIncluded
            )
        {
            IsGraduationPlanRequiredCertificationsSupported = isGraduationPlanRequiredCertificationsSupported;
            IsGraduationPlanRequiredCertificationsItemCreatable = isGraduationPlanRequiredCertificationsItemCreatable;
            IsGraduationPlanRequiredCertificationIncluded = isGraduationPlanRequiredCertificationIncluded;
        }

        public bool IsGraduationPlanRequiredCertificationsSupported { get; }
        public bool IsGraduationPlanRequiredCertificationsItemCreatable { get; }
        public Func<IGraduationPlanRequiredCertification, bool> IsGraduationPlanRequiredCertificationIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "GraduationPlanRequiredCertifications":
                    return IsGraduationPlanRequiredCertificationsSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "GraduationPlanRequiredCertifications":
                    return IsGraduationPlanRequiredCertificationsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the GraduationPlanRequiredCertification model.
    /// </summary>
    public interface IGraduationPlanRequiredCertification : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IGraduationPlanExtension GraduationPlanExtension { get; set; }
        
        string CertificationTitle { get; set; }

        // Non-PK properties
        string CertificationIdentifier { get; set; }
        string CertificationRouteDescriptor { get; set; }
        string Namespace { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? CertificationResourceId { get; set; }
        string CertificationDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class GraduationPlanRequiredCertificationMappingContract : IMappingContract
    {
        public GraduationPlanRequiredCertificationMappingContract(
            bool isCertificationIdentifierSupported,
            bool isCertificationReferenceSupported,
            bool isCertificationRouteDescriptorSupported,
            bool isNamespaceSupported
            )
        {
            IsCertificationIdentifierSupported = isCertificationIdentifierSupported;
            IsCertificationReferenceSupported = isCertificationReferenceSupported;
            IsCertificationRouteDescriptorSupported = isCertificationRouteDescriptorSupported;
            IsNamespaceSupported = isNamespaceSupported;
        }

        public bool IsCertificationIdentifierSupported { get; }
        public bool IsCertificationReferenceSupported { get; }
        public bool IsCertificationRouteDescriptorSupported { get; }
        public bool IsNamespaceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CertificationIdentifier":
                    return IsCertificationIdentifierSupported;
                case "CertificationReference":
                    return IsCertificationReferenceSupported;
                case "CertificationRouteDescriptor":
                    return IsCertificationRouteDescriptorSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CertificationTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the HireStatusDescriptor model.
    /// </summary>
    public interface IHireStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int HireStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class HireStatusDescriptorMappingContract : IMappingContract
    {
        public HireStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "HireStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the HiringSourceDescriptor model.
    /// </summary>
    public interface IHiringSourceDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int HiringSourceDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class HiringSourceDescriptorMappingContract : IMappingContract
    {
        public HiringSourceDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "HiringSourceDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the InstructionalSettingDescriptor model.
    /// </summary>
    public interface IInstructionalSettingDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int InstructionalSettingDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class InstructionalSettingDescriptorMappingContract : IMappingContract
    {
        public InstructionalSettingDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "InstructionalSettingDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the LengthOfContractDescriptor model.
    /// </summary>
    public interface ILengthOfContractDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int LengthOfContractDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class LengthOfContractDescriptorMappingContract : IMappingContract
    {
        public LengthOfContractDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "LengthOfContractDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the LocalEducationAgencyExtension model.
    /// </summary>
    public interface ILocalEducationAgencyExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ILocalEducationAgency LocalEducationAgency { get; set; }

        // Non-PK properties
        string FederalLocaleCodeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class LocalEducationAgencyExtensionMappingContract : IMappingContract
    {
        public LocalEducationAgencyExtensionMappingContract(
            bool isFederalLocaleCodeDescriptorSupported
            )
        {
            IsFederalLocaleCodeDescriptorSupported = isFederalLocaleCodeDescriptorSupported;
        }

        public bool IsFederalLocaleCodeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "FederalLocaleCodeDescriptor":
                    return IsFederalLocaleCodeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ObjectiveRatingLevelDescriptor model.
    /// </summary>
    public interface IObjectiveRatingLevelDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ObjectiveRatingLevelDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ObjectiveRatingLevelDescriptorMappingContract : IMappingContract
    {
        public ObjectiveRatingLevelDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ObjectiveRatingLevelDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the OldEthnicityDescriptor model.
    /// </summary>
    public interface IOldEthnicityDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int OldEthnicityDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class OldEthnicityDescriptorMappingContract : IMappingContract
    {
        public OldEthnicityDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "OldEthnicityDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the OpenStaffPositionEvent model.
    /// </summary>
    public interface IOpenStaffPositionEvent : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EventDate { get; set; }
        
        string OpenStaffPositionEventTypeDescriptor { get; set; }
        
        string RequisitionNumber { get; set; }

        // Non-PK properties
        string OpenStaffPositionEventStatusDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? OpenStaffPositionResourceId { get; set; }
        string OpenStaffPositionDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class OpenStaffPositionEventMappingContract : IMappingContract
    {
        public OpenStaffPositionEventMappingContract(
            bool isOpenStaffPositionEventStatusDescriptorSupported,
            bool isOpenStaffPositionReferenceSupported
            )
        {
            IsOpenStaffPositionEventStatusDescriptorSupported = isOpenStaffPositionEventStatusDescriptorSupported;
            IsOpenStaffPositionReferenceSupported = isOpenStaffPositionReferenceSupported;
        }

        public bool IsOpenStaffPositionEventStatusDescriptorSupported { get; }
        public bool IsOpenStaffPositionReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "OpenStaffPositionEventStatusDescriptor":
                    return IsOpenStaffPositionEventStatusDescriptorSupported;
                case "OpenStaffPositionReference":
                    return IsOpenStaffPositionReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EventDate":
                    return true;
                case "OpenStaffPositionEventTypeDescriptor":
                    return true;
                case "RequisitionNumber":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the OpenStaffPositionEventStatusDescriptor model.
    /// </summary>
    public interface IOpenStaffPositionEventStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int OpenStaffPositionEventStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class OpenStaffPositionEventStatusDescriptorMappingContract : IMappingContract
    {
        public OpenStaffPositionEventStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "OpenStaffPositionEventStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the OpenStaffPositionEventTypeDescriptor model.
    /// </summary>
    public interface IOpenStaffPositionEventTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int OpenStaffPositionEventTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class OpenStaffPositionEventTypeDescriptorMappingContract : IMappingContract
    {
        public OpenStaffPositionEventTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "OpenStaffPositionEventTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the OpenStaffPositionExtension model.
    /// </summary>
    public interface IOpenStaffPositionExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IOpenStaffPosition OpenStaffPosition { get; set; }

        // Non-PK properties
        decimal? FullTimeEquivalency { get; set; }
        string FundingSourceDescriptor { get; set; }
        bool? HighNeedAcademicSubject { get; set; }
        bool? IsActive { get; set; }
        decimal? MaxSalary { get; set; }
        decimal? MinSalary { get; set; }
        string OpenStaffPositionReasonDescriptor { get; set; }
        string PositionControlNumber { get; set; }
        short? SchoolYear { get; set; }
        string TermDescriptor { get; set; }
        decimal? TotalBudgeted { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? SchoolYearTypeResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class OpenStaffPositionExtensionMappingContract : IMappingContract
    {
        public OpenStaffPositionExtensionMappingContract(
            bool isFullTimeEquivalencySupported,
            bool isFundingSourceDescriptorSupported,
            bool isHighNeedAcademicSubjectSupported,
            bool isIsActiveSupported,
            bool isMaxSalarySupported,
            bool isMinSalarySupported,
            bool isOpenStaffPositionReasonDescriptorSupported,
            bool isPositionControlNumberSupported,
            bool isSchoolYearSupported,
            bool isSchoolYearTypeReferenceSupported,
            bool isTermDescriptorSupported,
            bool isTotalBudgetedSupported
            )
        {
            IsFullTimeEquivalencySupported = isFullTimeEquivalencySupported;
            IsFundingSourceDescriptorSupported = isFundingSourceDescriptorSupported;
            IsHighNeedAcademicSubjectSupported = isHighNeedAcademicSubjectSupported;
            IsIsActiveSupported = isIsActiveSupported;
            IsMaxSalarySupported = isMaxSalarySupported;
            IsMinSalarySupported = isMinSalarySupported;
            IsOpenStaffPositionReasonDescriptorSupported = isOpenStaffPositionReasonDescriptorSupported;
            IsPositionControlNumberSupported = isPositionControlNumberSupported;
            IsSchoolYearSupported = isSchoolYearSupported;
            IsSchoolYearTypeReferenceSupported = isSchoolYearTypeReferenceSupported;
            IsTermDescriptorSupported = isTermDescriptorSupported;
            IsTotalBudgetedSupported = isTotalBudgetedSupported;
        }

        public bool IsFullTimeEquivalencySupported { get; }
        public bool IsFundingSourceDescriptorSupported { get; }
        public bool IsHighNeedAcademicSubjectSupported { get; }
        public bool IsIsActiveSupported { get; }
        public bool IsMaxSalarySupported { get; }
        public bool IsMinSalarySupported { get; }
        public bool IsOpenStaffPositionReasonDescriptorSupported { get; }
        public bool IsPositionControlNumberSupported { get; }
        public bool IsSchoolYearSupported { get; }
        public bool IsSchoolYearTypeReferenceSupported { get; }
        public bool IsTermDescriptorSupported { get; }
        public bool IsTotalBudgetedSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "FullTimeEquivalency":
                    return IsFullTimeEquivalencySupported;
                case "FundingSourceDescriptor":
                    return IsFundingSourceDescriptorSupported;
                case "HighNeedAcademicSubject":
                    return IsHighNeedAcademicSubjectSupported;
                case "IsActive":
                    return IsIsActiveSupported;
                case "MaxSalary":
                    return IsMaxSalarySupported;
                case "MinSalary":
                    return IsMinSalarySupported;
                case "OpenStaffPositionReasonDescriptor":
                    return IsOpenStaffPositionReasonDescriptorSupported;
                case "PositionControlNumber":
                    return IsPositionControlNumberSupported;
                case "SchoolYear":
                    return IsSchoolYearSupported;
                case "SchoolYearTypeReference":
                    return IsSchoolYearTypeReferenceSupported;
                case "TermDescriptor":
                    return IsTermDescriptorSupported;
                case "TotalBudgeted":
                    return IsTotalBudgetedSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the OpenStaffPositionReasonDescriptor model.
    /// </summary>
    public interface IOpenStaffPositionReasonDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int OpenStaffPositionReasonDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class OpenStaffPositionReasonDescriptorMappingContract : IMappingContract
    {
        public OpenStaffPositionReasonDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "OpenStaffPositionReasonDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the Path model.
    /// </summary>
    public interface IPath : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string PathName { get; set; }

        // Non-PK properties
        string GraduationPlanTypeDescriptor { get; set; }
        short? GraduationSchoolYear { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EducationOrganizationResourceId { get; set; }
        string EducationOrganizationDiscriminator { get; set; }
        Guid? GraduationPlanResourceId { get; set; }
        string GraduationPlanDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PathMappingContract : IMappingContract
    {
        public PathMappingContract(
            bool isEducationOrganizationReferenceSupported,
            bool isGraduationPlanReferenceSupported,
            bool isGraduationPlanTypeDescriptorSupported,
            bool isGraduationSchoolYearSupported
            )
        {
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsGraduationPlanReferenceSupported = isGraduationPlanReferenceSupported;
            IsGraduationPlanTypeDescriptorSupported = isGraduationPlanTypeDescriptorSupported;
            IsGraduationSchoolYearSupported = isGraduationSchoolYearSupported;
        }

        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsGraduationPlanReferenceSupported { get; }
        public bool IsGraduationPlanTypeDescriptorSupported { get; }
        public bool IsGraduationSchoolYearSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "GraduationPlanReference":
                    return IsGraduationPlanReferenceSupported;
                case "GraduationPlanTypeDescriptor":
                    return IsGraduationPlanTypeDescriptorSupported;
                case "GraduationSchoolYear":
                    return IsGraduationSchoolYearSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "PathName":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PathMilestone model.
    /// </summary>
    public interface IPathMilestone : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string PathMilestoneName { get; set; }
        
        string PathMilestoneTypeDescriptor { get; set; }

        // Non-PK properties
        string PathMilestoneCode { get; set; }
        string PathMilestoneDescription { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PathMilestoneMappingContract : IMappingContract
    {
        public PathMilestoneMappingContract(
            bool isPathMilestoneCodeSupported,
            bool isPathMilestoneDescriptionSupported
            )
        {
            IsPathMilestoneCodeSupported = isPathMilestoneCodeSupported;
            IsPathMilestoneDescriptionSupported = isPathMilestoneDescriptionSupported;
        }

        public bool IsPathMilestoneCodeSupported { get; }
        public bool IsPathMilestoneDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PathMilestoneCode":
                    return IsPathMilestoneCodeSupported;
                case "PathMilestoneDescription":
                    return IsPathMilestoneDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PathMilestoneName":
                    return true;
                case "PathMilestoneTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PathMilestoneStatusDescriptor model.
    /// </summary>
    public interface IPathMilestoneStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PathMilestoneStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PathMilestoneStatusDescriptorMappingContract : IMappingContract
    {
        public PathMilestoneStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PathMilestoneStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PathMilestoneTypeDescriptor model.
    /// </summary>
    public interface IPathMilestoneTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PathMilestoneTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PathMilestoneTypeDescriptorMappingContract : IMappingContract
    {
        public PathMilestoneTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PathMilestoneTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PathPhase model.
    /// </summary>
    public interface IPathPhase : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string PathName { get; set; }
        
        string PathPhaseName { get; set; }

        // Non-PK properties
        int? PathPhaseSequence { get; set; }
        string PhasePathDescription { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IPathPhasePathMilestone> PathPhasePathMilestones { get; set; }

        // Resource reference data
        Guid? PathResourceId { get; set; }
        string PathDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PathPhaseMappingContract : IMappingContract
    {
        public PathPhaseMappingContract(
            bool isPathPhasePathMilestonesSupported,
            bool isPathPhaseSequenceSupported,
            bool isPathReferenceSupported,
            bool isPhasePathDescriptionSupported,
            bool isPathPhasePathMilestonesItemCreatable,
            Func<IPathPhasePathMilestone, bool> isPathPhasePathMilestoneIncluded
            )
        {
            IsPathPhasePathMilestonesSupported = isPathPhasePathMilestonesSupported;
            IsPathPhaseSequenceSupported = isPathPhaseSequenceSupported;
            IsPathReferenceSupported = isPathReferenceSupported;
            IsPhasePathDescriptionSupported = isPhasePathDescriptionSupported;
            IsPathPhasePathMilestonesItemCreatable = isPathPhasePathMilestonesItemCreatable;
            IsPathPhasePathMilestoneIncluded = isPathPhasePathMilestoneIncluded;
        }

        public bool IsPathPhasePathMilestonesSupported { get; }
        public bool IsPathPhaseSequenceSupported { get; }
        public bool IsPathReferenceSupported { get; }
        public bool IsPhasePathDescriptionSupported { get; }
        public bool IsPathPhasePathMilestonesItemCreatable { get; }
        public Func<IPathPhasePathMilestone, bool> IsPathPhasePathMilestoneIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PathPhasePathMilestones":
                    return IsPathPhasePathMilestonesSupported;
                case "PathPhaseSequence":
                    return IsPathPhaseSequenceSupported;
                case "PathReference":
                    return IsPathReferenceSupported;
                case "PhasePathDescription":
                    return IsPhasePathDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "PathName":
                    return true;
                case "PathPhaseName":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "PathPhasePathMilestones":
                    return IsPathPhasePathMilestonesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PathPhasePathMilestone model.
    /// </summary>
    public interface IPathPhasePathMilestone : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IPathPhase PathPhase { get; set; }
        
        string PathMilestoneName { get; set; }
        
        string PathMilestoneTypeDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? PathMilestoneResourceId { get; set; }
        string PathMilestoneDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PathPhasePathMilestoneMappingContract : IMappingContract
    {
        public PathPhasePathMilestoneMappingContract(
            bool isPathMilestoneReferenceSupported
            )
        {
            IsPathMilestoneReferenceSupported = isPathMilestoneReferenceSupported;
        }

        public bool IsPathMilestoneReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PathMilestoneReference":
                    return IsPathMilestoneReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PathMilestoneName":
                    return true;
                case "PathMilestoneTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PathPhaseStatusDescriptor model.
    /// </summary>
    public interface IPathPhaseStatusDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PathPhaseStatusDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PathPhaseStatusDescriptorMappingContract : IMappingContract
    {
        public PathPhaseStatusDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PathPhaseStatusDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluation model.
    /// </summary>
    public interface IPerformanceEvaluation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        short SchoolYear { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string AcademicSubjectDescriptor { get; set; }
        string PerformanceEvaluationDescription { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IPerformanceEvaluationGradeLevel> PerformanceEvaluationGradeLevels { get; set; }
        ICollection<IPerformanceEvaluationProgramGateway> PerformanceEvaluationProgramGateways { get; set; }
        ICollection<IPerformanceEvaluationRatingLevel> PerformanceEvaluationRatingLevels { get; set; }

        // Resource reference data
        Guid? EducationOrganizationResourceId { get; set; }
        string EducationOrganizationDiscriminator { get; set; }
        Guid? SchoolYearTypeResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationMappingContract : IMappingContract
    {
        public PerformanceEvaluationMappingContract(
            bool isAcademicSubjectDescriptorSupported,
            bool isEducationOrganizationReferenceSupported,
            bool isPerformanceEvaluationDescriptionSupported,
            bool isPerformanceEvaluationGradeLevelsSupported,
            bool isPerformanceEvaluationProgramGatewaysSupported,
            bool isPerformanceEvaluationRatingLevelsSupported,
            bool isSchoolYearTypeReferenceSupported,
            bool isPerformanceEvaluationGradeLevelsItemCreatable,
            Func<IPerformanceEvaluationGradeLevel, bool> isPerformanceEvaluationGradeLevelIncluded,
            bool isPerformanceEvaluationProgramGatewaysItemCreatable,
            Func<IPerformanceEvaluationProgramGateway, bool> isPerformanceEvaluationProgramGatewayIncluded,
            bool isPerformanceEvaluationRatingLevelsItemCreatable,
            Func<IPerformanceEvaluationRatingLevel, bool> isPerformanceEvaluationRatingLevelIncluded
            )
        {
            IsAcademicSubjectDescriptorSupported = isAcademicSubjectDescriptorSupported;
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsPerformanceEvaluationDescriptionSupported = isPerformanceEvaluationDescriptionSupported;
            IsPerformanceEvaluationGradeLevelsSupported = isPerformanceEvaluationGradeLevelsSupported;
            IsPerformanceEvaluationProgramGatewaysSupported = isPerformanceEvaluationProgramGatewaysSupported;
            IsPerformanceEvaluationRatingLevelsSupported = isPerformanceEvaluationRatingLevelsSupported;
            IsSchoolYearTypeReferenceSupported = isSchoolYearTypeReferenceSupported;
            IsPerformanceEvaluationGradeLevelsItemCreatable = isPerformanceEvaluationGradeLevelsItemCreatable;
            IsPerformanceEvaluationGradeLevelIncluded = isPerformanceEvaluationGradeLevelIncluded;
            IsPerformanceEvaluationProgramGatewaysItemCreatable = isPerformanceEvaluationProgramGatewaysItemCreatable;
            IsPerformanceEvaluationProgramGatewayIncluded = isPerformanceEvaluationProgramGatewayIncluded;
            IsPerformanceEvaluationRatingLevelsItemCreatable = isPerformanceEvaluationRatingLevelsItemCreatable;
            IsPerformanceEvaluationRatingLevelIncluded = isPerformanceEvaluationRatingLevelIncluded;
        }

        public bool IsAcademicSubjectDescriptorSupported { get; }
        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsPerformanceEvaluationDescriptionSupported { get; }
        public bool IsPerformanceEvaluationGradeLevelsSupported { get; }
        public bool IsPerformanceEvaluationProgramGatewaysSupported { get; }
        public bool IsPerformanceEvaluationRatingLevelsSupported { get; }
        public bool IsSchoolYearTypeReferenceSupported { get; }
        public bool IsPerformanceEvaluationGradeLevelsItemCreatable { get; }
        public Func<IPerformanceEvaluationGradeLevel, bool> IsPerformanceEvaluationGradeLevelIncluded { get; }
        public bool IsPerformanceEvaluationProgramGatewaysItemCreatable { get; }
        public Func<IPerformanceEvaluationProgramGateway, bool> IsPerformanceEvaluationProgramGatewayIncluded { get; }
        public bool IsPerformanceEvaluationRatingLevelsItemCreatable { get; }
        public Func<IPerformanceEvaluationRatingLevel, bool> IsPerformanceEvaluationRatingLevelIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AcademicSubjectDescriptor":
                    return IsAcademicSubjectDescriptorSupported;
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "PerformanceEvaluationDescription":
                    return IsPerformanceEvaluationDescriptionSupported;
                case "PerformanceEvaluationGradeLevels":
                    return IsPerformanceEvaluationGradeLevelsSupported;
                case "PerformanceEvaluationProgramGateways":
                    return IsPerformanceEvaluationProgramGatewaysSupported;
                case "PerformanceEvaluationRatingLevels":
                    return IsPerformanceEvaluationRatingLevelsSupported;
                case "SchoolYearTypeReference":
                    return IsSchoolYearTypeReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "SchoolYear":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "PerformanceEvaluationGradeLevels":
                    return IsPerformanceEvaluationGradeLevelsItemCreatable;
                case "PerformanceEvaluationProgramGateways":
                    return IsPerformanceEvaluationProgramGatewaysItemCreatable;
                case "PerformanceEvaluationRatingLevels":
                    return IsPerformanceEvaluationRatingLevelsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationGradeLevel model.
    /// </summary>
    public interface IPerformanceEvaluationGradeLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IPerformanceEvaluation PerformanceEvaluation { get; set; }
        
        string GradeLevelDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationGradeLevelMappingContract : IMappingContract
    {
        public PerformanceEvaluationGradeLevelMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "GradeLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationProgramGateway model.
    /// </summary>
    public interface IPerformanceEvaluationProgramGateway : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IPerformanceEvaluation PerformanceEvaluation { get; set; }
        
        string ProgramGatewayDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationProgramGatewayMappingContract : IMappingContract
    {
        public PerformanceEvaluationProgramGatewayMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ProgramGatewayDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationRating model.
    /// </summary>
    public interface IPerformanceEvaluationRating : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        string PersonId { get; set; }
        
        short SchoolYear { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        DateTime ActualDate { get; set; }
        int? ActualDuration { get; set; }
        TimeSpan? ActualTime { get; set; }
        bool? Announced { get; set; }
        string Comments { get; set; }
        string CoteachingStyleObservedDescriptor { get; set; }
        string PerformanceEvaluationRatingLevelDescriptor { get; set; }
        DateTime? ScheduleDate { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IPerformanceEvaluationRatingResult> PerformanceEvaluationRatingResults { get; set; }
        ICollection<IPerformanceEvaluationRatingReviewer> PerformanceEvaluationRatingReviewers { get; set; }

        // Resource reference data
        Guid? PerformanceEvaluationResourceId { get; set; }
        string PerformanceEvaluationDiscriminator { get; set; }
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationRatingMappingContract : IMappingContract
    {
        public PerformanceEvaluationRatingMappingContract(
            bool isActualDateSupported,
            bool isActualDurationSupported,
            bool isActualTimeSupported,
            bool isAnnouncedSupported,
            bool isCommentsSupported,
            bool isCoteachingStyleObservedDescriptorSupported,
            bool isPerformanceEvaluationRatingLevelDescriptorSupported,
            bool isPerformanceEvaluationRatingResultsSupported,
            bool isPerformanceEvaluationRatingReviewersSupported,
            bool isPerformanceEvaluationReferenceSupported,
            bool isPersonReferenceSupported,
            bool isScheduleDateSupported,
            bool isPerformanceEvaluationRatingResultsItemCreatable,
            Func<IPerformanceEvaluationRatingResult, bool> isPerformanceEvaluationRatingResultIncluded,
            bool isPerformanceEvaluationRatingReviewersItemCreatable,
            Func<IPerformanceEvaluationRatingReviewer, bool> isPerformanceEvaluationRatingReviewerIncluded
            )
        {
            IsActualDateSupported = isActualDateSupported;
            IsActualDurationSupported = isActualDurationSupported;
            IsActualTimeSupported = isActualTimeSupported;
            IsAnnouncedSupported = isAnnouncedSupported;
            IsCommentsSupported = isCommentsSupported;
            IsCoteachingStyleObservedDescriptorSupported = isCoteachingStyleObservedDescriptorSupported;
            IsPerformanceEvaluationRatingLevelDescriptorSupported = isPerformanceEvaluationRatingLevelDescriptorSupported;
            IsPerformanceEvaluationRatingResultsSupported = isPerformanceEvaluationRatingResultsSupported;
            IsPerformanceEvaluationRatingReviewersSupported = isPerformanceEvaluationRatingReviewersSupported;
            IsPerformanceEvaluationReferenceSupported = isPerformanceEvaluationReferenceSupported;
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsScheduleDateSupported = isScheduleDateSupported;
            IsPerformanceEvaluationRatingResultsItemCreatable = isPerformanceEvaluationRatingResultsItemCreatable;
            IsPerformanceEvaluationRatingResultIncluded = isPerformanceEvaluationRatingResultIncluded;
            IsPerformanceEvaluationRatingReviewersItemCreatable = isPerformanceEvaluationRatingReviewersItemCreatable;
            IsPerformanceEvaluationRatingReviewerIncluded = isPerformanceEvaluationRatingReviewerIncluded;
        }

        public bool IsActualDateSupported { get; }
        public bool IsActualDurationSupported { get; }
        public bool IsActualTimeSupported { get; }
        public bool IsAnnouncedSupported { get; }
        public bool IsCommentsSupported { get; }
        public bool IsCoteachingStyleObservedDescriptorSupported { get; }
        public bool IsPerformanceEvaluationRatingLevelDescriptorSupported { get; }
        public bool IsPerformanceEvaluationRatingResultsSupported { get; }
        public bool IsPerformanceEvaluationRatingReviewersSupported { get; }
        public bool IsPerformanceEvaluationReferenceSupported { get; }
        public bool IsPersonReferenceSupported { get; }
        public bool IsScheduleDateSupported { get; }
        public bool IsPerformanceEvaluationRatingResultsItemCreatable { get; }
        public Func<IPerformanceEvaluationRatingResult, bool> IsPerformanceEvaluationRatingResultIncluded { get; }
        public bool IsPerformanceEvaluationRatingReviewersItemCreatable { get; }
        public Func<IPerformanceEvaluationRatingReviewer, bool> IsPerformanceEvaluationRatingReviewerIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ActualDate":
                    return IsActualDateSupported;
                case "ActualDuration":
                    return IsActualDurationSupported;
                case "ActualTime":
                    return IsActualTimeSupported;
                case "Announced":
                    return IsAnnouncedSupported;
                case "Comments":
                    return IsCommentsSupported;
                case "CoteachingStyleObservedDescriptor":
                    return IsCoteachingStyleObservedDescriptorSupported;
                case "PerformanceEvaluationRatingLevelDescriptor":
                    return IsPerformanceEvaluationRatingLevelDescriptorSupported;
                case "PerformanceEvaluationRatingResults":
                    return IsPerformanceEvaluationRatingResultsSupported;
                case "PerformanceEvaluationRatingReviewers":
                    return IsPerformanceEvaluationRatingReviewersSupported;
                case "PerformanceEvaluationReference":
                    return IsPerformanceEvaluationReferenceSupported;
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "ScheduleDate":
                    return IsScheduleDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "PersonId":
                    return true;
                case "SchoolYear":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "PerformanceEvaluationRatingResults":
                    return IsPerformanceEvaluationRatingResultsItemCreatable;
                case "PerformanceEvaluationRatingReviewers":
                    return IsPerformanceEvaluationRatingReviewersItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationRatingLevel model.
    /// </summary>
    public interface IPerformanceEvaluationRatingLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IPerformanceEvaluation PerformanceEvaluation { get; set; }
        
        string EvaluationRatingLevelDescriptor { get; set; }

        // Non-PK properties
        decimal? MaxRating { get; set; }
        decimal? MinRating { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationRatingLevelMappingContract : IMappingContract
    {
        public PerformanceEvaluationRatingLevelMappingContract(
            bool isMaxRatingSupported,
            bool isMinRatingSupported
            )
        {
            IsMaxRatingSupported = isMaxRatingSupported;
            IsMinRatingSupported = isMinRatingSupported;
        }

        public bool IsMaxRatingSupported { get; }
        public bool IsMinRatingSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "MaxRating":
                    return IsMaxRatingSupported;
                case "MinRating":
                    return IsMinRatingSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EvaluationRatingLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationRatingLevelDescriptor model.
    /// </summary>
    public interface IPerformanceEvaluationRatingLevelDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PerformanceEvaluationRatingLevelDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationRatingLevelDescriptorMappingContract : IMappingContract
    {
        public PerformanceEvaluationRatingLevelDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PerformanceEvaluationRatingLevelDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationRatingResult model.
    /// </summary>
    public interface IPerformanceEvaluationRatingResult : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IPerformanceEvaluationRating PerformanceEvaluationRating { get; set; }
        
        decimal Rating { get; set; }
        
        string RatingResultTitle { get; set; }

        // Non-PK properties
        string ResultDatatypeTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationRatingResultMappingContract : IMappingContract
    {
        public PerformanceEvaluationRatingResultMappingContract(
            bool isResultDatatypeTypeDescriptorSupported
            )
        {
            IsResultDatatypeTypeDescriptorSupported = isResultDatatypeTypeDescriptorSupported;
        }

        public bool IsResultDatatypeTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ResultDatatypeTypeDescriptor":
                    return IsResultDatatypeTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "Rating":
                    return true;
                case "RatingResultTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationRatingReviewer model.
    /// </summary>
    public interface IPerformanceEvaluationRatingReviewer : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IPerformanceEvaluationRating PerformanceEvaluationRating { get; set; }
        
        string FirstName { get; set; }
        
        string LastSurname { get; set; }

        // Non-PK properties
        string ReviewerPersonId { get; set; }
        string ReviewerSourceSystemDescriptor { get; set; }

        // One-to-one relationships

        IPerformanceEvaluationRatingReviewerReceivedTraining PerformanceEvaluationRatingReviewerReceivedTraining { get; set; }

        // Lists

        // Resource reference data
        Guid? ReviewerPersonResourceId { get; set; }
        string ReviewerPersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationRatingReviewerMappingContract : IMappingContract
    {
        public PerformanceEvaluationRatingReviewerMappingContract(
            bool isPerformanceEvaluationRatingReviewerReceivedTrainingSupported,
            bool isReviewerPersonIdSupported,
            bool isReviewerPersonReferenceSupported,
            bool isReviewerSourceSystemDescriptorSupported,
            bool isPerformanceEvaluationRatingReviewerReceivedTrainingCreatable
            )
        {
            IsPerformanceEvaluationRatingReviewerReceivedTrainingSupported = isPerformanceEvaluationRatingReviewerReceivedTrainingSupported;
            IsReviewerPersonIdSupported = isReviewerPersonIdSupported;
            IsReviewerPersonReferenceSupported = isReviewerPersonReferenceSupported;
            IsReviewerSourceSystemDescriptorSupported = isReviewerSourceSystemDescriptorSupported;
            IsPerformanceEvaluationRatingReviewerReceivedTrainingCreatable = isPerformanceEvaluationRatingReviewerReceivedTrainingCreatable;
        }

        public bool IsPerformanceEvaluationRatingReviewerReceivedTrainingSupported { get; }
        public bool IsReviewerPersonIdSupported { get; }
        public bool IsReviewerPersonReferenceSupported { get; }
        public bool IsReviewerSourceSystemDescriptorSupported { get; }
        public bool IsPerformanceEvaluationRatingReviewerReceivedTrainingCreatable { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PerformanceEvaluationRatingReviewerReceivedTraining":
                    return IsPerformanceEvaluationRatingReviewerReceivedTrainingSupported;
                case "ReviewerPersonId":
                    return IsReviewerPersonIdSupported;
                case "ReviewerPersonReference":
                    return IsReviewerPersonReferenceSupported;
                case "ReviewerSourceSystemDescriptor":
                    return IsReviewerSourceSystemDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "FirstName":
                    return true;
                case "LastSurname":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "PerformanceEvaluationRatingReviewerReceivedTraining":
                    return IsPerformanceEvaluationRatingReviewerReceivedTrainingCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationRatingReviewerReceivedTraining model.
    /// </summary>
    public interface IPerformanceEvaluationRatingReviewerReceivedTraining : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IPerformanceEvaluationRatingReviewer PerformanceEvaluationRatingReviewer { get; set; }

        // Non-PK properties
        int? InterRaterReliabilityScore { get; set; }
        DateTime? ReceivedTrainingDate { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationRatingReviewerReceivedTrainingMappingContract : IMappingContract
    {
        public PerformanceEvaluationRatingReviewerReceivedTrainingMappingContract(
            bool isInterRaterReliabilityScoreSupported,
            bool isReceivedTrainingDateSupported
            )
        {
            IsInterRaterReliabilityScoreSupported = isInterRaterReliabilityScoreSupported;
            IsReceivedTrainingDateSupported = isReceivedTrainingDateSupported;
        }

        public bool IsInterRaterReliabilityScoreSupported { get; }
        public bool IsReceivedTrainingDateSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "InterRaterReliabilityScore":
                    return IsInterRaterReliabilityScoreSupported;
                case "ReceivedTrainingDate":
                    return IsReceivedTrainingDateSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PerformanceEvaluationTypeDescriptor model.
    /// </summary>
    public interface IPerformanceEvaluationTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PerformanceEvaluationTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PerformanceEvaluationTypeDescriptorMappingContract : IMappingContract
    {
        public PerformanceEvaluationTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PerformanceEvaluationTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PostSecondaryInstitutionExtension model.
    /// </summary>
    public interface IPostSecondaryInstitutionExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IPostSecondaryInstitution PostSecondaryInstitution { get; set; }

        // Non-PK properties
        string FederalLocaleCodeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PostSecondaryInstitutionExtensionMappingContract : IMappingContract
    {
        public PostSecondaryInstitutionExtensionMappingContract(
            bool isFederalLocaleCodeDescriptorSupported
            )
        {
            IsFederalLocaleCodeDescriptorSupported = isFederalLocaleCodeDescriptorSupported;
        }

        public bool IsFederalLocaleCodeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "FederalLocaleCodeDescriptor":
                    return IsFederalLocaleCodeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the PreviousCareerDescriptor model.
    /// </summary>
    public interface IPreviousCareerDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int PreviousCareerDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class PreviousCareerDescriptorMappingContract : IMappingContract
    {
        public PreviousCareerDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PreviousCareerDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ProfessionalDevelopmentEvent model.
    /// </summary>
    public interface IProfessionalDevelopmentEvent : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string Namespace { get; set; }
        
        string ProfessionalDevelopmentTitle { get; set; }

        // Non-PK properties
        bool? MultipleSession { get; set; }
        string ProfessionalDevelopmentOfferedByDescriptor { get; set; }
        string ProfessionalDevelopmentReason { get; set; }
        bool? Required { get; set; }
        int? TotalHours { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProfessionalDevelopmentEventMappingContract : IMappingContract
    {
        public ProfessionalDevelopmentEventMappingContract(
            bool isMultipleSessionSupported,
            bool isProfessionalDevelopmentOfferedByDescriptorSupported,
            bool isProfessionalDevelopmentReasonSupported,
            bool isRequiredSupported,
            bool isTotalHoursSupported
            )
        {
            IsMultipleSessionSupported = isMultipleSessionSupported;
            IsProfessionalDevelopmentOfferedByDescriptorSupported = isProfessionalDevelopmentOfferedByDescriptorSupported;
            IsProfessionalDevelopmentReasonSupported = isProfessionalDevelopmentReasonSupported;
            IsRequiredSupported = isRequiredSupported;
            IsTotalHoursSupported = isTotalHoursSupported;
        }

        public bool IsMultipleSessionSupported { get; }
        public bool IsProfessionalDevelopmentOfferedByDescriptorSupported { get; }
        public bool IsProfessionalDevelopmentReasonSupported { get; }
        public bool IsRequiredSupported { get; }
        public bool IsTotalHoursSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "MultipleSession":
                    return IsMultipleSessionSupported;
                case "ProfessionalDevelopmentOfferedByDescriptor":
                    return IsProfessionalDevelopmentOfferedByDescriptorSupported;
                case "ProfessionalDevelopmentReason":
                    return IsProfessionalDevelopmentReasonSupported;
                case "Required":
                    return IsRequiredSupported;
                case "TotalHours":
                    return IsTotalHoursSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "Namespace":
                    return true;
                case "ProfessionalDevelopmentTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ProfessionalDevelopmentEventAttendance model.
    /// </summary>
    public interface IProfessionalDevelopmentEventAttendance : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        DateTime AttendanceDate { get; set; }
        
        string Namespace { get; set; }
        
        string PersonId { get; set; }
        
        string ProfessionalDevelopmentTitle { get; set; }
        
        string SourceSystemDescriptor { get; set; }

        // Non-PK properties
        string AttendanceEventCategoryDescriptor { get; set; }
        string AttendanceEventReason { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
        Guid? ProfessionalDevelopmentEventResourceId { get; set; }
        string ProfessionalDevelopmentEventDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProfessionalDevelopmentEventAttendanceMappingContract : IMappingContract
    {
        public ProfessionalDevelopmentEventAttendanceMappingContract(
            bool isAttendanceEventCategoryDescriptorSupported,
            bool isAttendanceEventReasonSupported,
            bool isPersonReferenceSupported,
            bool isProfessionalDevelopmentEventReferenceSupported
            )
        {
            IsAttendanceEventCategoryDescriptorSupported = isAttendanceEventCategoryDescriptorSupported;
            IsAttendanceEventReasonSupported = isAttendanceEventReasonSupported;
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsProfessionalDevelopmentEventReferenceSupported = isProfessionalDevelopmentEventReferenceSupported;
        }

        public bool IsAttendanceEventCategoryDescriptorSupported { get; }
        public bool IsAttendanceEventReasonSupported { get; }
        public bool IsPersonReferenceSupported { get; }
        public bool IsProfessionalDevelopmentEventReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AttendanceEventCategoryDescriptor":
                    return IsAttendanceEventCategoryDescriptorSupported;
                case "AttendanceEventReason":
                    return IsAttendanceEventReasonSupported;
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "ProfessionalDevelopmentEventReference":
                    return IsProfessionalDevelopmentEventReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AttendanceDate":
                    return true;
                case "Namespace":
                    return true;
                case "PersonId":
                    return true;
                case "ProfessionalDevelopmentTitle":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ProfessionalDevelopmentOfferedByDescriptor model.
    /// </summary>
    public interface IProfessionalDevelopmentOfferedByDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ProfessionalDevelopmentOfferedByDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProfessionalDevelopmentOfferedByDescriptorMappingContract : IMappingContract
    {
        public ProfessionalDevelopmentOfferedByDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ProfessionalDevelopmentOfferedByDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the ProgramGatewayDescriptor model.
    /// </summary>
    public interface IProgramGatewayDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int ProgramGatewayDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class ProgramGatewayDescriptorMappingContract : IMappingContract
    {
        public ProgramGatewayDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "ProgramGatewayDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the QuantitativeMeasure model.
    /// </summary>
    public interface IQuantitativeMeasure : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string EvaluationElementTitle { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        string QuantitativeMeasureIdentifier { get; set; }
        
        short SchoolYear { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string QuantitativeMeasureDatatypeDescriptor { get; set; }
        string QuantitativeMeasureTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EvaluationElementResourceId { get; set; }
        string EvaluationElementDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class QuantitativeMeasureMappingContract : IMappingContract
    {
        public QuantitativeMeasureMappingContract(
            bool isEvaluationElementReferenceSupported,
            bool isQuantitativeMeasureDatatypeDescriptorSupported,
            bool isQuantitativeMeasureTypeDescriptorSupported
            )
        {
            IsEvaluationElementReferenceSupported = isEvaluationElementReferenceSupported;
            IsQuantitativeMeasureDatatypeDescriptorSupported = isQuantitativeMeasureDatatypeDescriptorSupported;
            IsQuantitativeMeasureTypeDescriptorSupported = isQuantitativeMeasureTypeDescriptorSupported;
        }

        public bool IsEvaluationElementReferenceSupported { get; }
        public bool IsQuantitativeMeasureDatatypeDescriptorSupported { get; }
        public bool IsQuantitativeMeasureTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationElementReference":
                    return IsEvaluationElementReferenceSupported;
                case "QuantitativeMeasureDatatypeDescriptor":
                    return IsQuantitativeMeasureDatatypeDescriptorSupported;
                case "QuantitativeMeasureTypeDescriptor":
                    return IsQuantitativeMeasureTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationElementTitle":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "QuantitativeMeasureIdentifier":
                    return true;
                case "SchoolYear":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the QuantitativeMeasureDatatypeDescriptor model.
    /// </summary>
    public interface IQuantitativeMeasureDatatypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int QuantitativeMeasureDatatypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class QuantitativeMeasureDatatypeDescriptorMappingContract : IMappingContract
    {
        public QuantitativeMeasureDatatypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "QuantitativeMeasureDatatypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the QuantitativeMeasureScore model.
    /// </summary>
    public interface IQuantitativeMeasureScore : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EvaluationDate { get; set; }
        
        string EvaluationElementTitle { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        string PersonId { get; set; }
        
        string QuantitativeMeasureIdentifier { get; set; }
        
        short SchoolYear { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        decimal ScoreValue { get; set; }
        decimal? StandardError { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EvaluationElementRatingResourceId { get; set; }
        string EvaluationElementRatingDiscriminator { get; set; }
        Guid? QuantitativeMeasureResourceId { get; set; }
        string QuantitativeMeasureDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class QuantitativeMeasureScoreMappingContract : IMappingContract
    {
        public QuantitativeMeasureScoreMappingContract(
            bool isEvaluationElementRatingReferenceSupported,
            bool isQuantitativeMeasureReferenceSupported,
            bool isScoreValueSupported,
            bool isStandardErrorSupported
            )
        {
            IsEvaluationElementRatingReferenceSupported = isEvaluationElementRatingReferenceSupported;
            IsQuantitativeMeasureReferenceSupported = isQuantitativeMeasureReferenceSupported;
            IsScoreValueSupported = isScoreValueSupported;
            IsStandardErrorSupported = isStandardErrorSupported;
        }

        public bool IsEvaluationElementRatingReferenceSupported { get; }
        public bool IsQuantitativeMeasureReferenceSupported { get; }
        public bool IsScoreValueSupported { get; }
        public bool IsStandardErrorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationElementRatingReference":
                    return IsEvaluationElementRatingReferenceSupported;
                case "QuantitativeMeasureReference":
                    return IsQuantitativeMeasureReferenceSupported;
                case "ScoreValue":
                    return IsScoreValueSupported;
                case "StandardError":
                    return IsStandardErrorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationDate":
                    return true;
                case "EvaluationElementTitle":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "PersonId":
                    return true;
                case "QuantitativeMeasureIdentifier":
                    return true;
                case "SchoolYear":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the QuantitativeMeasureTypeDescriptor model.
    /// </summary>
    public interface IQuantitativeMeasureTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int QuantitativeMeasureTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class QuantitativeMeasureTypeDescriptorMappingContract : IMappingContract
    {
        public QuantitativeMeasureTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "QuantitativeMeasureTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEvent model.
    /// </summary>
    public interface IRecruitmentEvent : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EventDate { get; set; }
        
        string EventTitle { get; set; }

        // Non-PK properties
        string EventDescription { get; set; }
        string EventLocation { get; set; }
        string RecruitmentEventTypeDescriptor { get; set; }

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
    public class RecruitmentEventMappingContract : IMappingContract
    {
        public RecruitmentEventMappingContract(
            bool isEducationOrganizationReferenceSupported,
            bool isEventDescriptionSupported,
            bool isEventLocationSupported,
            bool isRecruitmentEventTypeDescriptorSupported
            )
        {
            IsEducationOrganizationReferenceSupported = isEducationOrganizationReferenceSupported;
            IsEventDescriptionSupported = isEventDescriptionSupported;
            IsEventLocationSupported = isEventLocationSupported;
            IsRecruitmentEventTypeDescriptorSupported = isRecruitmentEventTypeDescriptorSupported;
        }

        public bool IsEducationOrganizationReferenceSupported { get; }
        public bool IsEventDescriptionSupported { get; }
        public bool IsEventLocationSupported { get; }
        public bool IsRecruitmentEventTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EducationOrganizationReference":
                    return IsEducationOrganizationReferenceSupported;
                case "EventDescription":
                    return IsEventDescriptionSupported;
                case "EventLocation":
                    return IsEventLocationSupported;
                case "RecruitmentEventTypeDescriptor":
                    return IsRecruitmentEventTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EventDate":
                    return true;
                case "EventTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendance model.
    /// </summary>
    public interface IRecruitmentEventAttendance : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EventDate { get; set; }
        
        string EventTitle { get; set; }
        
        string RecruitmentEventAttendeeIdentifier { get; set; }

        // Non-PK properties
        bool? Applied { get; set; }
        string ElectronicMailAddress { get; set; }
        string FirstName { get; set; }
        string GenderDescriptor { get; set; }
        string GenerationCodeSuffix { get; set; }
        bool? HispanicLatinoEthnicity { get; set; }
        string LastSurname { get; set; }
        string MaidenName { get; set; }
        bool? Met { get; set; }
        string MiddleName { get; set; }
        string Notes { get; set; }
        string PersonalTitlePrefix { get; set; }
        string PreferredFirstName { get; set; }
        string PreferredLastSurname { get; set; }
        int? PreScreeningRating { get; set; }
        string RecruitmentEventAttendeeTypeDescriptor { get; set; }
        bool? Referral { get; set; }
        string ReferredBy { get; set; }
        string SexDescriptor { get; set; }
        string SocialMediaNetworkName { get; set; }
        string SocialMediaUserName { get; set; }

        // One-to-one relationships

        IRecruitmentEventAttendanceCurrentPosition RecruitmentEventAttendanceCurrentPosition { get; set; }

        IRecruitmentEventAttendanceRecruitmentEventAttendeeQualifications RecruitmentEventAttendanceRecruitmentEventAttendeeQualifications { get; set; }

        // Lists
        ICollection<IRecruitmentEventAttendanceDisability> RecruitmentEventAttendanceDisabilities { get; set; }
        ICollection<IRecruitmentEventAttendancePersonalIdentificationDocument> RecruitmentEventAttendancePersonalIdentificationDocuments { get; set; }
        ICollection<IRecruitmentEventAttendanceRace> RecruitmentEventAttendanceRaces { get; set; }
        ICollection<IRecruitmentEventAttendanceTelephone> RecruitmentEventAttendanceTelephones { get; set; }
        ICollection<IRecruitmentEventAttendanceTouchpoint> RecruitmentEventAttendanceTouchpoints { get; set; }

        // Resource reference data
        Guid? RecruitmentEventResourceId { get; set; }
        string RecruitmentEventDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceMappingContract(
            bool isAppliedSupported,
            bool isElectronicMailAddressSupported,
            bool isFirstNameSupported,
            bool isGenderDescriptorSupported,
            bool isGenerationCodeSuffixSupported,
            bool isHispanicLatinoEthnicitySupported,
            bool isLastSurnameSupported,
            bool isMaidenNameSupported,
            bool isMetSupported,
            bool isMiddleNameSupported,
            bool isNotesSupported,
            bool isPersonalTitlePrefixSupported,
            bool isPreferredFirstNameSupported,
            bool isPreferredLastSurnameSupported,
            bool isPreScreeningRatingSupported,
            bool isRecruitmentEventAttendanceCurrentPositionSupported,
            bool isRecruitmentEventAttendanceDisabilitiesSupported,
            bool isRecruitmentEventAttendancePersonalIdentificationDocumentsSupported,
            bool isRecruitmentEventAttendanceRacesSupported,
            bool isRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsSupported,
            bool isRecruitmentEventAttendanceTelephonesSupported,
            bool isRecruitmentEventAttendanceTouchpointsSupported,
            bool isRecruitmentEventAttendeeTypeDescriptorSupported,
            bool isRecruitmentEventReferenceSupported,
            bool isReferralSupported,
            bool isReferredBySupported,
            bool isSexDescriptorSupported,
            bool isSocialMediaNetworkNameSupported,
            bool isSocialMediaUserNameSupported,
            bool isRecruitmentEventAttendanceCurrentPositionCreatable,
            bool isRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsCreatable,
            bool isRecruitmentEventAttendanceDisabilitiesItemCreatable,
            Func<IRecruitmentEventAttendanceDisability, bool> isRecruitmentEventAttendanceDisabilityIncluded,
            bool isRecruitmentEventAttendancePersonalIdentificationDocumentsItemCreatable,
            Func<IRecruitmentEventAttendancePersonalIdentificationDocument, bool> isRecruitmentEventAttendancePersonalIdentificationDocumentIncluded,
            bool isRecruitmentEventAttendanceRacesItemCreatable,
            Func<IRecruitmentEventAttendanceRace, bool> isRecruitmentEventAttendanceRaceIncluded,
            bool isRecruitmentEventAttendanceTelephonesItemCreatable,
            Func<IRecruitmentEventAttendanceTelephone, bool> isRecruitmentEventAttendanceTelephoneIncluded,
            bool isRecruitmentEventAttendanceTouchpointsItemCreatable,
            Func<IRecruitmentEventAttendanceTouchpoint, bool> isRecruitmentEventAttendanceTouchpointIncluded
            )
        {
            IsAppliedSupported = isAppliedSupported;
            IsElectronicMailAddressSupported = isElectronicMailAddressSupported;
            IsFirstNameSupported = isFirstNameSupported;
            IsGenderDescriptorSupported = isGenderDescriptorSupported;
            IsGenerationCodeSuffixSupported = isGenerationCodeSuffixSupported;
            IsHispanicLatinoEthnicitySupported = isHispanicLatinoEthnicitySupported;
            IsLastSurnameSupported = isLastSurnameSupported;
            IsMaidenNameSupported = isMaidenNameSupported;
            IsMetSupported = isMetSupported;
            IsMiddleNameSupported = isMiddleNameSupported;
            IsNotesSupported = isNotesSupported;
            IsPersonalTitlePrefixSupported = isPersonalTitlePrefixSupported;
            IsPreferredFirstNameSupported = isPreferredFirstNameSupported;
            IsPreferredLastSurnameSupported = isPreferredLastSurnameSupported;
            IsPreScreeningRatingSupported = isPreScreeningRatingSupported;
            IsRecruitmentEventAttendanceCurrentPositionSupported = isRecruitmentEventAttendanceCurrentPositionSupported;
            IsRecruitmentEventAttendanceDisabilitiesSupported = isRecruitmentEventAttendanceDisabilitiesSupported;
            IsRecruitmentEventAttendancePersonalIdentificationDocumentsSupported = isRecruitmentEventAttendancePersonalIdentificationDocumentsSupported;
            IsRecruitmentEventAttendanceRacesSupported = isRecruitmentEventAttendanceRacesSupported;
            IsRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsSupported = isRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsSupported;
            IsRecruitmentEventAttendanceTelephonesSupported = isRecruitmentEventAttendanceTelephonesSupported;
            IsRecruitmentEventAttendanceTouchpointsSupported = isRecruitmentEventAttendanceTouchpointsSupported;
            IsRecruitmentEventAttendeeTypeDescriptorSupported = isRecruitmentEventAttendeeTypeDescriptorSupported;
            IsRecruitmentEventReferenceSupported = isRecruitmentEventReferenceSupported;
            IsReferralSupported = isReferralSupported;
            IsReferredBySupported = isReferredBySupported;
            IsSexDescriptorSupported = isSexDescriptorSupported;
            IsSocialMediaNetworkNameSupported = isSocialMediaNetworkNameSupported;
            IsSocialMediaUserNameSupported = isSocialMediaUserNameSupported;
            IsRecruitmentEventAttendanceCurrentPositionCreatable = isRecruitmentEventAttendanceCurrentPositionCreatable;
            IsRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsCreatable = isRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsCreatable;
            IsRecruitmentEventAttendanceDisabilitiesItemCreatable = isRecruitmentEventAttendanceDisabilitiesItemCreatable;
            IsRecruitmentEventAttendanceDisabilityIncluded = isRecruitmentEventAttendanceDisabilityIncluded;
            IsRecruitmentEventAttendancePersonalIdentificationDocumentsItemCreatable = isRecruitmentEventAttendancePersonalIdentificationDocumentsItemCreatable;
            IsRecruitmentEventAttendancePersonalIdentificationDocumentIncluded = isRecruitmentEventAttendancePersonalIdentificationDocumentIncluded;
            IsRecruitmentEventAttendanceRacesItemCreatable = isRecruitmentEventAttendanceRacesItemCreatable;
            IsRecruitmentEventAttendanceRaceIncluded = isRecruitmentEventAttendanceRaceIncluded;
            IsRecruitmentEventAttendanceTelephonesItemCreatable = isRecruitmentEventAttendanceTelephonesItemCreatable;
            IsRecruitmentEventAttendanceTelephoneIncluded = isRecruitmentEventAttendanceTelephoneIncluded;
            IsRecruitmentEventAttendanceTouchpointsItemCreatable = isRecruitmentEventAttendanceTouchpointsItemCreatable;
            IsRecruitmentEventAttendanceTouchpointIncluded = isRecruitmentEventAttendanceTouchpointIncluded;
        }

        public bool IsAppliedSupported { get; }
        public bool IsElectronicMailAddressSupported { get; }
        public bool IsFirstNameSupported { get; }
        public bool IsGenderDescriptorSupported { get; }
        public bool IsGenerationCodeSuffixSupported { get; }
        public bool IsHispanicLatinoEthnicitySupported { get; }
        public bool IsLastSurnameSupported { get; }
        public bool IsMaidenNameSupported { get; }
        public bool IsMetSupported { get; }
        public bool IsMiddleNameSupported { get; }
        public bool IsNotesSupported { get; }
        public bool IsPersonalTitlePrefixSupported { get; }
        public bool IsPreferredFirstNameSupported { get; }
        public bool IsPreferredLastSurnameSupported { get; }
        public bool IsPreScreeningRatingSupported { get; }
        public bool IsRecruitmentEventAttendanceCurrentPositionSupported { get; }
        public bool IsRecruitmentEventAttendanceDisabilitiesSupported { get; }
        public bool IsRecruitmentEventAttendancePersonalIdentificationDocumentsSupported { get; }
        public bool IsRecruitmentEventAttendanceRacesSupported { get; }
        public bool IsRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsSupported { get; }
        public bool IsRecruitmentEventAttendanceTelephonesSupported { get; }
        public bool IsRecruitmentEventAttendanceTouchpointsSupported { get; }
        public bool IsRecruitmentEventAttendeeTypeDescriptorSupported { get; }
        public bool IsRecruitmentEventReferenceSupported { get; }
        public bool IsReferralSupported { get; }
        public bool IsReferredBySupported { get; }
        public bool IsSexDescriptorSupported { get; }
        public bool IsSocialMediaNetworkNameSupported { get; }
        public bool IsSocialMediaUserNameSupported { get; }
        public bool IsRecruitmentEventAttendanceCurrentPositionCreatable { get; }
        public bool IsRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsCreatable { get; }
        public bool IsRecruitmentEventAttendanceDisabilitiesItemCreatable { get; }
        public Func<IRecruitmentEventAttendanceDisability, bool> IsRecruitmentEventAttendanceDisabilityIncluded { get; }
        public bool IsRecruitmentEventAttendancePersonalIdentificationDocumentsItemCreatable { get; }
        public Func<IRecruitmentEventAttendancePersonalIdentificationDocument, bool> IsRecruitmentEventAttendancePersonalIdentificationDocumentIncluded { get; }
        public bool IsRecruitmentEventAttendanceRacesItemCreatable { get; }
        public Func<IRecruitmentEventAttendanceRace, bool> IsRecruitmentEventAttendanceRaceIncluded { get; }
        public bool IsRecruitmentEventAttendanceTelephonesItemCreatable { get; }
        public Func<IRecruitmentEventAttendanceTelephone, bool> IsRecruitmentEventAttendanceTelephoneIncluded { get; }
        public bool IsRecruitmentEventAttendanceTouchpointsItemCreatable { get; }
        public Func<IRecruitmentEventAttendanceTouchpoint, bool> IsRecruitmentEventAttendanceTouchpointIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "Applied":
                    return IsAppliedSupported;
                case "ElectronicMailAddress":
                    return IsElectronicMailAddressSupported;
                case "FirstName":
                    return IsFirstNameSupported;
                case "GenderDescriptor":
                    return IsGenderDescriptorSupported;
                case "GenerationCodeSuffix":
                    return IsGenerationCodeSuffixSupported;
                case "HispanicLatinoEthnicity":
                    return IsHispanicLatinoEthnicitySupported;
                case "LastSurname":
                    return IsLastSurnameSupported;
                case "MaidenName":
                    return IsMaidenNameSupported;
                case "Met":
                    return IsMetSupported;
                case "MiddleName":
                    return IsMiddleNameSupported;
                case "Notes":
                    return IsNotesSupported;
                case "PersonalTitlePrefix":
                    return IsPersonalTitlePrefixSupported;
                case "PreferredFirstName":
                    return IsPreferredFirstNameSupported;
                case "PreferredLastSurname":
                    return IsPreferredLastSurnameSupported;
                case "PreScreeningRating":
                    return IsPreScreeningRatingSupported;
                case "RecruitmentEventAttendanceCurrentPosition":
                    return IsRecruitmentEventAttendanceCurrentPositionSupported;
                case "RecruitmentEventAttendanceDisabilities":
                    return IsRecruitmentEventAttendanceDisabilitiesSupported;
                case "RecruitmentEventAttendancePersonalIdentificationDocuments":
                    return IsRecruitmentEventAttendancePersonalIdentificationDocumentsSupported;
                case "RecruitmentEventAttendanceRaces":
                    return IsRecruitmentEventAttendanceRacesSupported;
                case "RecruitmentEventAttendanceRecruitmentEventAttendeeQualifications":
                    return IsRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsSupported;
                case "RecruitmentEventAttendanceTelephones":
                    return IsRecruitmentEventAttendanceTelephonesSupported;
                case "RecruitmentEventAttendanceTouchpoints":
                    return IsRecruitmentEventAttendanceTouchpointsSupported;
                case "RecruitmentEventAttendeeTypeDescriptor":
                    return IsRecruitmentEventAttendeeTypeDescriptorSupported;
                case "RecruitmentEventReference":
                    return IsRecruitmentEventReferenceSupported;
                case "Referral":
                    return IsReferralSupported;
                case "ReferredBy":
                    return IsReferredBySupported;
                case "SexDescriptor":
                    return IsSexDescriptorSupported;
                case "SocialMediaNetworkName":
                    return IsSocialMediaNetworkNameSupported;
                case "SocialMediaUserName":
                    return IsSocialMediaUserNameSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EventDate":
                    return true;
                case "EventTitle":
                    return true;
                case "RecruitmentEventAttendeeIdentifier":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "RecruitmentEventAttendanceCurrentPosition":
                    return IsRecruitmentEventAttendanceCurrentPositionCreatable;
                case "RecruitmentEventAttendanceRecruitmentEventAttendeeQualifications":
                    return IsRecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsCreatable;
                case "RecruitmentEventAttendanceDisabilities":
                    return IsRecruitmentEventAttendanceDisabilitiesItemCreatable;
                case "RecruitmentEventAttendancePersonalIdentificationDocuments":
                    return IsRecruitmentEventAttendancePersonalIdentificationDocumentsItemCreatable;
                case "RecruitmentEventAttendanceRaces":
                    return IsRecruitmentEventAttendanceRacesItemCreatable;
                case "RecruitmentEventAttendanceTelephones":
                    return IsRecruitmentEventAttendanceTelephonesItemCreatable;
                case "RecruitmentEventAttendanceTouchpoints":
                    return IsRecruitmentEventAttendanceTouchpointsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceCurrentPosition model.
    /// </summary>
    public interface IRecruitmentEventAttendanceCurrentPosition : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendance RecruitmentEventAttendance { get; set; }

        // Non-PK properties
        string AcademicSubjectDescriptor { get; set; }
        string Location { get; set; }
        string NameOfInstitution { get; set; }
        string PositionTitle { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IRecruitmentEventAttendanceCurrentPositionGradeLevel> RecruitmentEventAttendanceCurrentPositionGradeLevels { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceCurrentPositionMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceCurrentPositionMappingContract(
            bool isAcademicSubjectDescriptorSupported,
            bool isLocationSupported,
            bool isNameOfInstitutionSupported,
            bool isPositionTitleSupported,
            bool isRecruitmentEventAttendanceCurrentPositionGradeLevelsSupported,
            bool isRecruitmentEventAttendanceCurrentPositionGradeLevelsItemCreatable,
            Func<IRecruitmentEventAttendanceCurrentPositionGradeLevel, bool> isRecruitmentEventAttendanceCurrentPositionGradeLevelIncluded
            )
        {
            IsAcademicSubjectDescriptorSupported = isAcademicSubjectDescriptorSupported;
            IsLocationSupported = isLocationSupported;
            IsNameOfInstitutionSupported = isNameOfInstitutionSupported;
            IsPositionTitleSupported = isPositionTitleSupported;
            IsRecruitmentEventAttendanceCurrentPositionGradeLevelsSupported = isRecruitmentEventAttendanceCurrentPositionGradeLevelsSupported;
            IsRecruitmentEventAttendanceCurrentPositionGradeLevelsItemCreatable = isRecruitmentEventAttendanceCurrentPositionGradeLevelsItemCreatable;
            IsRecruitmentEventAttendanceCurrentPositionGradeLevelIncluded = isRecruitmentEventAttendanceCurrentPositionGradeLevelIncluded;
        }

        public bool IsAcademicSubjectDescriptorSupported { get; }
        public bool IsLocationSupported { get; }
        public bool IsNameOfInstitutionSupported { get; }
        public bool IsPositionTitleSupported { get; }
        public bool IsRecruitmentEventAttendanceCurrentPositionGradeLevelsSupported { get; }
        public bool IsRecruitmentEventAttendanceCurrentPositionGradeLevelsItemCreatable { get; }
        public Func<IRecruitmentEventAttendanceCurrentPositionGradeLevel, bool> IsRecruitmentEventAttendanceCurrentPositionGradeLevelIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AcademicSubjectDescriptor":
                    return IsAcademicSubjectDescriptorSupported;
                case "Location":
                    return IsLocationSupported;
                case "NameOfInstitution":
                    return IsNameOfInstitutionSupported;
                case "PositionTitle":
                    return IsPositionTitleSupported;
                case "RecruitmentEventAttendanceCurrentPositionGradeLevels":
                    return IsRecruitmentEventAttendanceCurrentPositionGradeLevelsSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "RecruitmentEventAttendanceCurrentPositionGradeLevels":
                    return IsRecruitmentEventAttendanceCurrentPositionGradeLevelsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceCurrentPositionGradeLevel model.
    /// </summary>
    public interface IRecruitmentEventAttendanceCurrentPositionGradeLevel : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendanceCurrentPosition RecruitmentEventAttendanceCurrentPosition { get; set; }
        
        string GradeLevelDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceCurrentPositionGradeLevelMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceCurrentPositionGradeLevelMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "GradeLevelDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceDisability model.
    /// </summary>
    public interface IRecruitmentEventAttendanceDisability : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendance RecruitmentEventAttendance { get; set; }
        
        string DisabilityDescriptor { get; set; }

        // Non-PK properties
        string DisabilityDeterminationSourceTypeDescriptor { get; set; }
        string DisabilityDiagnosis { get; set; }
        int? OrderOfDisability { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IRecruitmentEventAttendanceDisabilityDesignation> RecruitmentEventAttendanceDisabilityDesignations { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceDisabilityMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceDisabilityMappingContract(
            bool isDisabilityDeterminationSourceTypeDescriptorSupported,
            bool isDisabilityDiagnosisSupported,
            bool isOrderOfDisabilitySupported,
            bool isRecruitmentEventAttendanceDisabilityDesignationsSupported,
            bool isRecruitmentEventAttendanceDisabilityDesignationsItemCreatable,
            Func<IRecruitmentEventAttendanceDisabilityDesignation, bool> isRecruitmentEventAttendanceDisabilityDesignationIncluded
            )
        {
            IsDisabilityDeterminationSourceTypeDescriptorSupported = isDisabilityDeterminationSourceTypeDescriptorSupported;
            IsDisabilityDiagnosisSupported = isDisabilityDiagnosisSupported;
            IsOrderOfDisabilitySupported = isOrderOfDisabilitySupported;
            IsRecruitmentEventAttendanceDisabilityDesignationsSupported = isRecruitmentEventAttendanceDisabilityDesignationsSupported;
            IsRecruitmentEventAttendanceDisabilityDesignationsItemCreatable = isRecruitmentEventAttendanceDisabilityDesignationsItemCreatable;
            IsRecruitmentEventAttendanceDisabilityDesignationIncluded = isRecruitmentEventAttendanceDisabilityDesignationIncluded;
        }

        public bool IsDisabilityDeterminationSourceTypeDescriptorSupported { get; }
        public bool IsDisabilityDiagnosisSupported { get; }
        public bool IsOrderOfDisabilitySupported { get; }
        public bool IsRecruitmentEventAttendanceDisabilityDesignationsSupported { get; }
        public bool IsRecruitmentEventAttendanceDisabilityDesignationsItemCreatable { get; }
        public Func<IRecruitmentEventAttendanceDisabilityDesignation, bool> IsRecruitmentEventAttendanceDisabilityDesignationIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DisabilityDeterminationSourceTypeDescriptor":
                    return IsDisabilityDeterminationSourceTypeDescriptorSupported;
                case "DisabilityDiagnosis":
                    return IsDisabilityDiagnosisSupported;
                case "OrderOfDisability":
                    return IsOrderOfDisabilitySupported;
                case "RecruitmentEventAttendanceDisabilityDesignations":
                    return IsRecruitmentEventAttendanceDisabilityDesignationsSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "DisabilityDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "RecruitmentEventAttendanceDisabilityDesignations":
                    return IsRecruitmentEventAttendanceDisabilityDesignationsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceDisabilityDesignation model.
    /// </summary>
    public interface IRecruitmentEventAttendanceDisabilityDesignation : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendanceDisability RecruitmentEventAttendanceDisability { get; set; }
        
        string DisabilityDesignationDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceDisabilityDesignationMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceDisabilityDesignationMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "DisabilityDesignationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendancePersonalIdentificationDocument model.
    /// </summary>
    public interface IRecruitmentEventAttendancePersonalIdentificationDocument : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendance RecruitmentEventAttendance { get; set; }
        
        string IdentificationDocumentUseDescriptor { get; set; }
        
        string PersonalInformationVerificationDescriptor { get; set; }

        // Non-PK properties
        DateTime? DocumentExpirationDate { get; set; }
        string DocumentTitle { get; set; }
        string IssuerCountryDescriptor { get; set; }
        string IssuerDocumentIdentificationCode { get; set; }
        string IssuerName { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendancePersonalIdentificationDocumentMappingContract : IMappingContract
    {
        public RecruitmentEventAttendancePersonalIdentificationDocumentMappingContract(
            bool isDocumentExpirationDateSupported,
            bool isDocumentTitleSupported,
            bool isIssuerCountryDescriptorSupported,
            bool isIssuerDocumentIdentificationCodeSupported,
            bool isIssuerNameSupported
            )
        {
            IsDocumentExpirationDateSupported = isDocumentExpirationDateSupported;
            IsDocumentTitleSupported = isDocumentTitleSupported;
            IsIssuerCountryDescriptorSupported = isIssuerCountryDescriptorSupported;
            IsIssuerDocumentIdentificationCodeSupported = isIssuerDocumentIdentificationCodeSupported;
            IsIssuerNameSupported = isIssuerNameSupported;
        }

        public bool IsDocumentExpirationDateSupported { get; }
        public bool IsDocumentTitleSupported { get; }
        public bool IsIssuerCountryDescriptorSupported { get; }
        public bool IsIssuerDocumentIdentificationCodeSupported { get; }
        public bool IsIssuerNameSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DocumentExpirationDate":
                    return IsDocumentExpirationDateSupported;
                case "DocumentTitle":
                    return IsDocumentTitleSupported;
                case "IssuerCountryDescriptor":
                    return IsIssuerCountryDescriptorSupported;
                case "IssuerDocumentIdentificationCode":
                    return IsIssuerDocumentIdentificationCodeSupported;
                case "IssuerName":
                    return IsIssuerNameSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "IdentificationDocumentUseDescriptor":
                    return true;
                case "PersonalInformationVerificationDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceRace model.
    /// </summary>
    public interface IRecruitmentEventAttendanceRace : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendance RecruitmentEventAttendance { get; set; }
        
        string RaceDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceRaceMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceRaceMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RaceDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceRecruitmentEventAttendeeQualifications model.
    /// </summary>
    public interface IRecruitmentEventAttendanceRecruitmentEventAttendeeQualifications : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendance RecruitmentEventAttendance { get; set; }

        // Non-PK properties
        bool? CapacityToServe { get; set; }
        bool Eligible { get; set; }
        decimal? YearsOfServiceCurrentPlacement { get; set; }
        decimal YearsOfServiceTotal { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceRecruitmentEventAttendeeQualificationsMappingContract(
            bool isCapacityToServeSupported,
            bool isEligibleSupported,
            bool isYearsOfServiceCurrentPlacementSupported,
            bool isYearsOfServiceTotalSupported
            )
        {
            IsCapacityToServeSupported = isCapacityToServeSupported;
            IsEligibleSupported = isEligibleSupported;
            IsYearsOfServiceCurrentPlacementSupported = isYearsOfServiceCurrentPlacementSupported;
            IsYearsOfServiceTotalSupported = isYearsOfServiceTotalSupported;
        }

        public bool IsCapacityToServeSupported { get; }
        public bool IsEligibleSupported { get; }
        public bool IsYearsOfServiceCurrentPlacementSupported { get; }
        public bool IsYearsOfServiceTotalSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CapacityToServe":
                    return IsCapacityToServeSupported;
                case "Eligible":
                    return IsEligibleSupported;
                case "YearsOfServiceCurrentPlacement":
                    return IsYearsOfServiceCurrentPlacementSupported;
                case "YearsOfServiceTotal":
                    return IsYearsOfServiceTotalSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceTelephone model.
    /// </summary>
    public interface IRecruitmentEventAttendanceTelephone : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendance RecruitmentEventAttendance { get; set; }
        
        string TelephoneNumber { get; set; }
        
        string TelephoneNumberTypeDescriptor { get; set; }

        // Non-PK properties
        bool? DoNotPublishIndicator { get; set; }
        int? OrderOfPriority { get; set; }
        bool? TextMessageCapabilityIndicator { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceTelephoneMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceTelephoneMappingContract(
            bool isDoNotPublishIndicatorSupported,
            bool isOrderOfPrioritySupported,
            bool isTextMessageCapabilityIndicatorSupported
            )
        {
            IsDoNotPublishIndicatorSupported = isDoNotPublishIndicatorSupported;
            IsOrderOfPrioritySupported = isOrderOfPrioritySupported;
            IsTextMessageCapabilityIndicatorSupported = isTextMessageCapabilityIndicatorSupported;
        }

        public bool IsDoNotPublishIndicatorSupported { get; }
        public bool IsOrderOfPrioritySupported { get; }
        public bool IsTextMessageCapabilityIndicatorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "DoNotPublishIndicator":
                    return IsDoNotPublishIndicatorSupported;
                case "OrderOfPriority":
                    return IsOrderOfPrioritySupported;
                case "TextMessageCapabilityIndicator":
                    return IsTextMessageCapabilityIndicatorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "TelephoneNumber":
                    return true;
                case "TelephoneNumberTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendanceTouchpoint model.
    /// </summary>
    public interface IRecruitmentEventAttendanceTouchpoint : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IRecruitmentEventAttendance RecruitmentEventAttendance { get; set; }
        
        string TouchpointContent { get; set; }
        
        DateTime TouchpointDate { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendanceTouchpointMappingContract : IMappingContract
    {
        public RecruitmentEventAttendanceTouchpointMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "TouchpointContent":
                    return true;
                case "TouchpointDate":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventAttendeeTypeDescriptor model.
    /// </summary>
    public interface IRecruitmentEventAttendeeTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int RecruitmentEventAttendeeTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventAttendeeTypeDescriptorMappingContract : IMappingContract
    {
        public RecruitmentEventAttendeeTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RecruitmentEventAttendeeTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RecruitmentEventTypeDescriptor model.
    /// </summary>
    public interface IRecruitmentEventTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int RecruitmentEventTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RecruitmentEventTypeDescriptorMappingContract : IMappingContract
    {
        public RecruitmentEventTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RecruitmentEventTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RubricDimension model.
    /// </summary>
    public interface IRubricDimension : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string EvaluationElementTitle { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        int RubricRating { get; set; }
        
        short SchoolYear { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        string CriterionDescription { get; set; }
        int? DimensionOrder { get; set; }
        string RubricRatingLevelDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EvaluationElementResourceId { get; set; }
        string EvaluationElementDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RubricDimensionMappingContract : IMappingContract
    {
        public RubricDimensionMappingContract(
            bool isCriterionDescriptionSupported,
            bool isDimensionOrderSupported,
            bool isEvaluationElementReferenceSupported,
            bool isRubricRatingLevelDescriptorSupported
            )
        {
            IsCriterionDescriptionSupported = isCriterionDescriptionSupported;
            IsDimensionOrderSupported = isDimensionOrderSupported;
            IsEvaluationElementReferenceSupported = isEvaluationElementReferenceSupported;
            IsRubricRatingLevelDescriptorSupported = isRubricRatingLevelDescriptorSupported;
        }

        public bool IsCriterionDescriptionSupported { get; }
        public bool IsDimensionOrderSupported { get; }
        public bool IsEvaluationElementReferenceSupported { get; }
        public bool IsRubricRatingLevelDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CriterionDescription":
                    return IsCriterionDescriptionSupported;
                case "DimensionOrder":
                    return IsDimensionOrderSupported;
                case "EvaluationElementReference":
                    return IsEvaluationElementReferenceSupported;
                case "RubricRatingLevelDescriptor":
                    return IsRubricRatingLevelDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationElementTitle":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "RubricRating":
                    return true;
                case "SchoolYear":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the RubricRatingLevelDescriptor model.
    /// </summary>
    public interface IRubricRatingLevelDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int RubricRatingLevelDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class RubricRatingLevelDescriptorMappingContract : IMappingContract
    {
        public RubricRatingLevelDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "RubricRatingLevelDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SalaryTypeDescriptor model.
    /// </summary>
    public interface ISalaryTypeDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int SalaryTypeDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SalaryTypeDescriptorMappingContract : IMappingContract
    {
        public SalaryTypeDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "SalaryTypeDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SchoolExtension model.
    /// </summary>
    public interface ISchoolExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ISchool School { get; set; }

        // Non-PK properties
        string AccreditationStatusDescriptor { get; set; }
        string FederalLocaleCodeDescriptor { get; set; }
        bool? ImprovingSchool { get; set; }
        long? PostSecondaryInstitutionId { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? PostSecondaryInstitutionResourceId { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SchoolExtensionMappingContract : IMappingContract
    {
        public SchoolExtensionMappingContract(
            bool isAccreditationStatusDescriptorSupported,
            bool isFederalLocaleCodeDescriptorSupported,
            bool isImprovingSchoolSupported,
            bool isPostSecondaryInstitutionIdSupported,
            bool isPostSecondaryInstitutionReferenceSupported
            )
        {
            IsAccreditationStatusDescriptorSupported = isAccreditationStatusDescriptorSupported;
            IsFederalLocaleCodeDescriptorSupported = isFederalLocaleCodeDescriptorSupported;
            IsImprovingSchoolSupported = isImprovingSchoolSupported;
            IsPostSecondaryInstitutionIdSupported = isPostSecondaryInstitutionIdSupported;
            IsPostSecondaryInstitutionReferenceSupported = isPostSecondaryInstitutionReferenceSupported;
        }

        public bool IsAccreditationStatusDescriptorSupported { get; }
        public bool IsFederalLocaleCodeDescriptorSupported { get; }
        public bool IsImprovingSchoolSupported { get; }
        public bool IsPostSecondaryInstitutionIdSupported { get; }
        public bool IsPostSecondaryInstitutionReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AccreditationStatusDescriptor":
                    return IsAccreditationStatusDescriptorSupported;
                case "FederalLocaleCodeDescriptor":
                    return IsFederalLocaleCodeDescriptorSupported;
                case "ImprovingSchool":
                    return IsImprovingSchoolSupported;
                case "PostSecondaryInstitutionId":
                    return IsPostSecondaryInstitutionIdSupported;
                case "PostSecondaryInstitutionReference":
                    return IsPostSecondaryInstitutionReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducationOrganizationAssignmentAssociationExtension model.
    /// </summary>
    public interface IStaffEducationOrganizationAssignmentAssociationExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStaffEducationOrganizationAssignmentAssociation StaffEducationOrganizationAssignmentAssociation { get; set; }

        // Non-PK properties
        decimal? YearsOfExperienceAtCurrentEducationOrganization { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducationOrganizationAssignmentAssociationExtensionMappingContract : IMappingContract
    {
        public StaffEducationOrganizationAssignmentAssociationExtensionMappingContract(
            bool isYearsOfExperienceAtCurrentEducationOrganizationSupported
            )
        {
            IsYearsOfExperienceAtCurrentEducationOrganizationSupported = isYearsOfExperienceAtCurrentEducationOrganizationSupported;
        }

        public bool IsYearsOfExperienceAtCurrentEducationOrganizationSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "YearsOfExperienceAtCurrentEducationOrganization":
                    return IsYearsOfExperienceAtCurrentEducationOrganizationSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducationOrganizationEmploymentAssociationBackgroundCheck model.
    /// </summary>
    public interface IStaffEducationOrganizationEmploymentAssociationBackgroundCheck : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStaffEducationOrganizationEmploymentAssociationExtension StaffEducationOrganizationEmploymentAssociationExtension { get; set; }
        
        string BackgroundCheckTypeDescriptor { get; set; }

        // Non-PK properties
        DateTime? BackgroundCheckCompletedDate { get; set; }
        DateTime BackgroundCheckRequestedDate { get; set; }
        string BackgroundCheckStatusDescriptor { get; set; }
        bool? Fingerprint { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducationOrganizationEmploymentAssociationBackgroundCheckMappingContract : IMappingContract
    {
        public StaffEducationOrganizationEmploymentAssociationBackgroundCheckMappingContract(
            bool isBackgroundCheckCompletedDateSupported,
            bool isBackgroundCheckRequestedDateSupported,
            bool isBackgroundCheckStatusDescriptorSupported,
            bool isFingerprintSupported
            )
        {
            IsBackgroundCheckCompletedDateSupported = isBackgroundCheckCompletedDateSupported;
            IsBackgroundCheckRequestedDateSupported = isBackgroundCheckRequestedDateSupported;
            IsBackgroundCheckStatusDescriptorSupported = isBackgroundCheckStatusDescriptorSupported;
            IsFingerprintSupported = isFingerprintSupported;
        }

        public bool IsBackgroundCheckCompletedDateSupported { get; }
        public bool IsBackgroundCheckRequestedDateSupported { get; }
        public bool IsBackgroundCheckStatusDescriptorSupported { get; }
        public bool IsFingerprintSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BackgroundCheckCompletedDate":
                    return IsBackgroundCheckCompletedDateSupported;
                case "BackgroundCheckRequestedDate":
                    return IsBackgroundCheckRequestedDateSupported;
                case "BackgroundCheckStatusDescriptor":
                    return IsBackgroundCheckStatusDescriptorSupported;
                case "Fingerprint":
                    return IsFingerprintSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "BackgroundCheckTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducationOrganizationEmploymentAssociationExtension model.
    /// </summary>
    public interface IStaffEducationOrganizationEmploymentAssociationExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStaffEducationOrganizationEmploymentAssociation StaffEducationOrganizationEmploymentAssociation { get; set; }

        // Non-PK properties
        string LengthOfContractDescriptor { get; set; }
        DateTime? ProbationCompleteDate { get; set; }
        bool? Tenured { get; set; }
        bool? TenureTrack { get; set; }

        // One-to-one relationships

        IStaffEducationOrganizationEmploymentAssociationSalary StaffEducationOrganizationEmploymentAssociationSalary { get; set; }

        // Lists
        ICollection<IStaffEducationOrganizationEmploymentAssociationBackgroundCheck> StaffEducationOrganizationEmploymentAssociationBackgroundChecks { get; set; }
        ICollection<IStaffEducationOrganizationEmploymentAssociationSeniority> StaffEducationOrganizationEmploymentAssociationSeniorities { get; set; }

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducationOrganizationEmploymentAssociationExtensionMappingContract : IMappingContract
    {
        public StaffEducationOrganizationEmploymentAssociationExtensionMappingContract(
            bool isLengthOfContractDescriptorSupported,
            bool isProbationCompleteDateSupported,
            bool isStaffEducationOrganizationEmploymentAssociationBackgroundChecksSupported,
            bool isStaffEducationOrganizationEmploymentAssociationSalarySupported,
            bool isStaffEducationOrganizationEmploymentAssociationSenioritiesSupported,
            bool isTenuredSupported,
            bool isTenureTrackSupported,
            bool isStaffEducationOrganizationEmploymentAssociationSalaryCreatable,
            bool isStaffEducationOrganizationEmploymentAssociationBackgroundChecksItemCreatable,
            Func<IStaffEducationOrganizationEmploymentAssociationBackgroundCheck, bool> isStaffEducationOrganizationEmploymentAssociationBackgroundCheckIncluded,
            bool isStaffEducationOrganizationEmploymentAssociationSenioritiesItemCreatable,
            Func<IStaffEducationOrganizationEmploymentAssociationSeniority, bool> isStaffEducationOrganizationEmploymentAssociationSeniorityIncluded
            )
        {
            IsLengthOfContractDescriptorSupported = isLengthOfContractDescriptorSupported;
            IsProbationCompleteDateSupported = isProbationCompleteDateSupported;
            IsStaffEducationOrganizationEmploymentAssociationBackgroundChecksSupported = isStaffEducationOrganizationEmploymentAssociationBackgroundChecksSupported;
            IsStaffEducationOrganizationEmploymentAssociationSalarySupported = isStaffEducationOrganizationEmploymentAssociationSalarySupported;
            IsStaffEducationOrganizationEmploymentAssociationSenioritiesSupported = isStaffEducationOrganizationEmploymentAssociationSenioritiesSupported;
            IsTenuredSupported = isTenuredSupported;
            IsTenureTrackSupported = isTenureTrackSupported;
            IsStaffEducationOrganizationEmploymentAssociationSalaryCreatable = isStaffEducationOrganizationEmploymentAssociationSalaryCreatable;
            IsStaffEducationOrganizationEmploymentAssociationBackgroundChecksItemCreatable = isStaffEducationOrganizationEmploymentAssociationBackgroundChecksItemCreatable;
            IsStaffEducationOrganizationEmploymentAssociationBackgroundCheckIncluded = isStaffEducationOrganizationEmploymentAssociationBackgroundCheckIncluded;
            IsStaffEducationOrganizationEmploymentAssociationSenioritiesItemCreatable = isStaffEducationOrganizationEmploymentAssociationSenioritiesItemCreatable;
            IsStaffEducationOrganizationEmploymentAssociationSeniorityIncluded = isStaffEducationOrganizationEmploymentAssociationSeniorityIncluded;
        }

        public bool IsLengthOfContractDescriptorSupported { get; }
        public bool IsProbationCompleteDateSupported { get; }
        public bool IsStaffEducationOrganizationEmploymentAssociationBackgroundChecksSupported { get; }
        public bool IsStaffEducationOrganizationEmploymentAssociationSalarySupported { get; }
        public bool IsStaffEducationOrganizationEmploymentAssociationSenioritiesSupported { get; }
        public bool IsTenuredSupported { get; }
        public bool IsTenureTrackSupported { get; }
        public bool IsStaffEducationOrganizationEmploymentAssociationSalaryCreatable { get; }
        public bool IsStaffEducationOrganizationEmploymentAssociationBackgroundChecksItemCreatable { get; }
        public Func<IStaffEducationOrganizationEmploymentAssociationBackgroundCheck, bool> IsStaffEducationOrganizationEmploymentAssociationBackgroundCheckIncluded { get; }
        public bool IsStaffEducationOrganizationEmploymentAssociationSenioritiesItemCreatable { get; }
        public Func<IStaffEducationOrganizationEmploymentAssociationSeniority, bool> IsStaffEducationOrganizationEmploymentAssociationSeniorityIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "LengthOfContractDescriptor":
                    return IsLengthOfContractDescriptorSupported;
                case "ProbationCompleteDate":
                    return IsProbationCompleteDateSupported;
                case "StaffEducationOrganizationEmploymentAssociationBackgroundChecks":
                    return IsStaffEducationOrganizationEmploymentAssociationBackgroundChecksSupported;
                case "StaffEducationOrganizationEmploymentAssociationSalary":
                    return IsStaffEducationOrganizationEmploymentAssociationSalarySupported;
                case "StaffEducationOrganizationEmploymentAssociationSeniorities":
                    return IsStaffEducationOrganizationEmploymentAssociationSenioritiesSupported;
                case "Tenured":
                    return IsTenuredSupported;
                case "TenureTrack":
                    return IsTenureTrackSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "StaffEducationOrganizationEmploymentAssociationSalary":
                    return IsStaffEducationOrganizationEmploymentAssociationSalaryCreatable;
                case "StaffEducationOrganizationEmploymentAssociationBackgroundChecks":
                    return IsStaffEducationOrganizationEmploymentAssociationBackgroundChecksItemCreatable;
                case "StaffEducationOrganizationEmploymentAssociationSeniorities":
                    return IsStaffEducationOrganizationEmploymentAssociationSenioritiesItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducationOrganizationEmploymentAssociationSalary model.
    /// </summary>
    public interface IStaffEducationOrganizationEmploymentAssociationSalary : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStaffEducationOrganizationEmploymentAssociationExtension StaffEducationOrganizationEmploymentAssociationExtension { get; set; }

        // Non-PK properties
        decimal? SalaryAmount { get; set; }
        int? SalaryMaxRange { get; set; }
        int? SalaryMinRange { get; set; }
        string SalaryTypeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducationOrganizationEmploymentAssociationSalaryMappingContract : IMappingContract
    {
        public StaffEducationOrganizationEmploymentAssociationSalaryMappingContract(
            bool isSalaryAmountSupported,
            bool isSalaryMaxRangeSupported,
            bool isSalaryMinRangeSupported,
            bool isSalaryTypeDescriptorSupported
            )
        {
            IsSalaryAmountSupported = isSalaryAmountSupported;
            IsSalaryMaxRangeSupported = isSalaryMaxRangeSupported;
            IsSalaryMinRangeSupported = isSalaryMinRangeSupported;
            IsSalaryTypeDescriptorSupported = isSalaryTypeDescriptorSupported;
        }

        public bool IsSalaryAmountSupported { get; }
        public bool IsSalaryMaxRangeSupported { get; }
        public bool IsSalaryMinRangeSupported { get; }
        public bool IsSalaryTypeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "SalaryAmount":
                    return IsSalaryAmountSupported;
                case "SalaryMaxRange":
                    return IsSalaryMaxRangeSupported;
                case "SalaryMinRange":
                    return IsSalaryMinRangeSupported;
                case "SalaryTypeDescriptor":
                    return IsSalaryTypeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducationOrganizationEmploymentAssociationSeniority model.
    /// </summary>
    public interface IStaffEducationOrganizationEmploymentAssociationSeniority : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStaffEducationOrganizationEmploymentAssociationExtension StaffEducationOrganizationEmploymentAssociationExtension { get; set; }
        
        string CredentialFieldDescriptor { get; set; }
        
        string NameOfInstitution { get; set; }

        // Non-PK properties
        decimal YearsExperience { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducationOrganizationEmploymentAssociationSeniorityMappingContract : IMappingContract
    {
        public StaffEducationOrganizationEmploymentAssociationSeniorityMappingContract(
            bool isYearsExperienceSupported
            )
        {
            IsYearsExperienceSupported = isYearsExperienceSupported;
        }

        public bool IsYearsExperienceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "YearsExperience":
                    return IsYearsExperienceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "CredentialFieldDescriptor":
                    return true;
                case "NameOfInstitution":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducatorPreparationProgram model.
    /// </summary>
    public interface IStaffEducatorPreparationProgram : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStaffExtension StaffExtension { get; set; }
        
        long EducationOrganizationId { get; set; }
        
        string ProgramName { get; set; }
        
        string ProgramTypeDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EducatorPreparationProgramResourceId { get; set; }
        string EducatorPreparationProgramDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducatorPreparationProgramMappingContract : IMappingContract
    {
        public StaffEducatorPreparationProgramMappingContract(
            bool isEducatorPreparationProgramReferenceSupported
            )
        {
            IsEducatorPreparationProgramReferenceSupported = isEducatorPreparationProgramReferenceSupported;
        }

        public bool IsEducatorPreparationProgramReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EducatorPreparationProgramReference":
                    return IsEducatorPreparationProgramReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "ProgramName":
                    return true;
                case "ProgramTypeDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducatorPreparationProgramAssociation model.
    /// </summary>
    public interface IStaffEducatorPreparationProgramAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string ProgramName { get; set; }
        
        string ProgramTypeDescriptor { get; set; }
        
        string StaffUniqueId { get; set; }

        // Non-PK properties
        DateTime BeginDate { get; set; }
        bool? Completer { get; set; }
        DateTime? EndDate { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EducatorPreparationProgramResourceId { get; set; }
        string EducatorPreparationProgramDiscriminator { get; set; }
        Guid? StaffResourceId { get; set; }
        string StaffDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducatorPreparationProgramAssociationMappingContract : IMappingContract
    {
        public StaffEducatorPreparationProgramAssociationMappingContract(
            bool isBeginDateSupported,
            bool isCompleterSupported,
            bool isEducatorPreparationProgramReferenceSupported,
            bool isEndDateSupported,
            bool isStaffReferenceSupported
            )
        {
            IsBeginDateSupported = isBeginDateSupported;
            IsCompleterSupported = isCompleterSupported;
            IsEducatorPreparationProgramReferenceSupported = isEducatorPreparationProgramReferenceSupported;
            IsEndDateSupported = isEndDateSupported;
            IsStaffReferenceSupported = isStaffReferenceSupported;
        }

        public bool IsBeginDateSupported { get; }
        public bool IsCompleterSupported { get; }
        public bool IsEducatorPreparationProgramReferenceSupported { get; }
        public bool IsEndDateSupported { get; }
        public bool IsStaffReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "BeginDate":
                    return IsBeginDateSupported;
                case "Completer":
                    return IsCompleterSupported;
                case "EducatorPreparationProgramReference":
                    return IsEducatorPreparationProgramReferenceSupported;
                case "EndDate":
                    return IsEndDateSupported;
                case "StaffReference":
                    return IsStaffReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "ProgramName":
                    return true;
                case "ProgramTypeDescriptor":
                    return true;
                case "StaffUniqueId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffEducatorResearch model.
    /// </summary>
    public interface IStaffEducatorResearch : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStaffExtension StaffExtension { get; set; }

        // Non-PK properties
        DateTime ResearchExperienceDate { get; set; }
        string ResearchExperienceDescription { get; set; }
        string ResearchExperienceTitle { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffEducatorResearchMappingContract : IMappingContract
    {
        public StaffEducatorResearchMappingContract(
            bool isResearchExperienceDateSupported,
            bool isResearchExperienceDescriptionSupported,
            bool isResearchExperienceTitleSupported
            )
        {
            IsResearchExperienceDateSupported = isResearchExperienceDateSupported;
            IsResearchExperienceDescriptionSupported = isResearchExperienceDescriptionSupported;
            IsResearchExperienceTitleSupported = isResearchExperienceTitleSupported;
        }

        public bool IsResearchExperienceDateSupported { get; }
        public bool IsResearchExperienceDescriptionSupported { get; }
        public bool IsResearchExperienceTitleSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "ResearchExperienceDate":
                    return IsResearchExperienceDateSupported;
                case "ResearchExperienceDescription":
                    return IsResearchExperienceDescriptionSupported;
                case "ResearchExperienceTitle":
                    return IsResearchExperienceTitleSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffExtension model.
    /// </summary>
    public interface IStaffExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStaff Staff { get; set; }

        // Non-PK properties
        long? EducationOrganizationId { get; set; }
        string GenderDescriptor { get; set; }
        string RequisitionNumber { get; set; }

        // One-to-one relationships

        IStaffEducatorResearch StaffEducatorResearch { get; set; }

        // Lists
        ICollection<IStaffEducatorPreparationProgram> StaffEducatorPreparationPrograms { get; set; }
        ICollection<IStaffHighlyQualifiedAcademicSubject> StaffHighlyQualifiedAcademicSubjects { get; set; }

        // Resource reference data
        Guid? OpenStaffPositionResourceId { get; set; }
        string OpenStaffPositionDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffExtensionMappingContract : IMappingContract
    {
        public StaffExtensionMappingContract(
            bool isEducationOrganizationIdSupported,
            bool isGenderDescriptorSupported,
            bool isOpenStaffPositionReferenceSupported,
            bool isRequisitionNumberSupported,
            bool isStaffEducatorPreparationProgramsSupported,
            bool isStaffEducatorResearchSupported,
            bool isStaffHighlyQualifiedAcademicSubjectsSupported,
            bool isStaffEducatorResearchCreatable,
            bool isStaffEducatorPreparationProgramsItemCreatable,
            Func<IStaffEducatorPreparationProgram, bool> isStaffEducatorPreparationProgramIncluded,
            bool isStaffHighlyQualifiedAcademicSubjectsItemCreatable,
            Func<IStaffHighlyQualifiedAcademicSubject, bool> isStaffHighlyQualifiedAcademicSubjectIncluded
            )
        {
            IsEducationOrganizationIdSupported = isEducationOrganizationIdSupported;
            IsGenderDescriptorSupported = isGenderDescriptorSupported;
            IsOpenStaffPositionReferenceSupported = isOpenStaffPositionReferenceSupported;
            IsRequisitionNumberSupported = isRequisitionNumberSupported;
            IsStaffEducatorPreparationProgramsSupported = isStaffEducatorPreparationProgramsSupported;
            IsStaffEducatorResearchSupported = isStaffEducatorResearchSupported;
            IsStaffHighlyQualifiedAcademicSubjectsSupported = isStaffHighlyQualifiedAcademicSubjectsSupported;
            IsStaffEducatorResearchCreatable = isStaffEducatorResearchCreatable;
            IsStaffEducatorPreparationProgramsItemCreatable = isStaffEducatorPreparationProgramsItemCreatable;
            IsStaffEducatorPreparationProgramIncluded = isStaffEducatorPreparationProgramIncluded;
            IsStaffHighlyQualifiedAcademicSubjectsItemCreatable = isStaffHighlyQualifiedAcademicSubjectsItemCreatable;
            IsStaffHighlyQualifiedAcademicSubjectIncluded = isStaffHighlyQualifiedAcademicSubjectIncluded;
        }

        public bool IsEducationOrganizationIdSupported { get; }
        public bool IsGenderDescriptorSupported { get; }
        public bool IsOpenStaffPositionReferenceSupported { get; }
        public bool IsRequisitionNumberSupported { get; }
        public bool IsStaffEducatorPreparationProgramsSupported { get; }
        public bool IsStaffEducatorResearchSupported { get; }
        public bool IsStaffHighlyQualifiedAcademicSubjectsSupported { get; }
        public bool IsStaffEducatorResearchCreatable { get; }
        public bool IsStaffEducatorPreparationProgramsItemCreatable { get; }
        public Func<IStaffEducatorPreparationProgram, bool> IsStaffEducatorPreparationProgramIncluded { get; }
        public bool IsStaffHighlyQualifiedAcademicSubjectsItemCreatable { get; }
        public Func<IStaffHighlyQualifiedAcademicSubject, bool> IsStaffHighlyQualifiedAcademicSubjectIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EducationOrganizationId":
                    return IsEducationOrganizationIdSupported;
                case "GenderDescriptor":
                    return IsGenderDescriptorSupported;
                case "OpenStaffPositionReference":
                    return IsOpenStaffPositionReferenceSupported;
                case "RequisitionNumber":
                    return IsRequisitionNumberSupported;
                case "StaffEducatorPreparationPrograms":
                    return IsStaffEducatorPreparationProgramsSupported;
                case "StaffEducatorResearch":
                    return IsStaffEducatorResearchSupported;
                case "StaffHighlyQualifiedAcademicSubjects":
                    return IsStaffHighlyQualifiedAcademicSubjectsSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName)
        {
            switch (memberName)
            {
                case "StaffEducatorResearch":
                    return IsStaffEducatorResearchCreatable;
                case "StaffEducatorPreparationPrograms":
                    return IsStaffEducatorPreparationProgramsItemCreatable;
                case "StaffHighlyQualifiedAcademicSubjects":
                    return IsStaffHighlyQualifiedAcademicSubjectsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffHighlyQualifiedAcademicSubject model.
    /// </summary>
    public interface IStaffHighlyQualifiedAcademicSubject : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStaffExtension StaffExtension { get; set; }
        
        string AcademicSubjectDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffHighlyQualifiedAcademicSubjectMappingContract : IMappingContract
    {
        public StaffHighlyQualifiedAcademicSubjectMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "AcademicSubjectDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StaffToCandidateRelationshipDescriptor model.
    /// </summary>
    public interface IStaffToCandidateRelationshipDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int StaffToCandidateRelationshipDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StaffToCandidateRelationshipDescriptorMappingContract : IMappingContract
    {
        public StaffToCandidateRelationshipDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "StaffToCandidateRelationshipDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StateEducationAgencyExtension model.
    /// </summary>
    public interface IStateEducationAgencyExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStateEducationAgency StateEducationAgency { get; set; }

        // Non-PK properties
        string FederalLocaleCodeDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StateEducationAgencyExtensionMappingContract : IMappingContract
    {
        public StateEducationAgencyExtensionMappingContract(
            bool isFederalLocaleCodeDescriptorSupported
            )
        {
            IsFederalLocaleCodeDescriptorSupported = isFederalLocaleCodeDescriptorSupported;
        }

        public bool IsFederalLocaleCodeDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "FederalLocaleCodeDescriptor":
                    return IsFederalLocaleCodeDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentGradebookEntryExtension model.
    /// </summary>
    public interface IStudentGradebookEntryExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.IStudentGradebookEntry StudentGradebookEntry { get; set; }

        // Non-PK properties
        bool? AssignmentPassed { get; set; }
        DateTime? DateCompleted { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentGradebookEntryExtensionMappingContract : IMappingContract
    {
        public StudentGradebookEntryExtensionMappingContract(
            bool isAssignmentPassedSupported,
            bool isDateCompletedSupported
            )
        {
            IsAssignmentPassedSupported = isAssignmentPassedSupported;
            IsDateCompletedSupported = isDateCompletedSupported;
        }

        public bool IsAssignmentPassedSupported { get; }
        public bool IsDateCompletedSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "AssignmentPassed":
                    return IsAssignmentPassedSupported;
                case "DateCompleted":
                    return IsDateCompletedSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentPath model.
    /// </summary>
    public interface IStudentPath : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string PathName { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists
        ICollection<IStudentPathPeriod> StudentPathPeriods { get; set; }

        // Resource reference data
        Guid? PathResourceId { get; set; }
        string PathDiscriminator { get; set; }
        Guid? StudentResourceId { get; set; }
        string StudentDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentPathMappingContract : IMappingContract
    {
        public StudentPathMappingContract(
            bool isPathReferenceSupported,
            bool isStudentPathPeriodsSupported,
            bool isStudentReferenceSupported,
            bool isStudentPathPeriodsItemCreatable,
            Func<IStudentPathPeriod, bool> isStudentPathPeriodIncluded
            )
        {
            IsPathReferenceSupported = isPathReferenceSupported;
            IsStudentPathPeriodsSupported = isStudentPathPeriodsSupported;
            IsStudentReferenceSupported = isStudentReferenceSupported;
            IsStudentPathPeriodsItemCreatable = isStudentPathPeriodsItemCreatable;
            IsStudentPathPeriodIncluded = isStudentPathPeriodIncluded;
        }

        public bool IsPathReferenceSupported { get; }
        public bool IsStudentPathPeriodsSupported { get; }
        public bool IsStudentReferenceSupported { get; }
        public bool IsStudentPathPeriodsItemCreatable { get; }
        public Func<IStudentPathPeriod, bool> IsStudentPathPeriodIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PathReference":
                    return IsPathReferenceSupported;
                case "StudentPathPeriods":
                    return IsStudentPathPeriodsSupported;
                case "StudentReference":
                    return IsStudentReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "PathName":
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
                case "StudentPathPeriods":
                    return IsStudentPathPeriodsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentPathMilestoneStatus model.
    /// </summary>
    public interface IStudentPathMilestoneStatus : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string PathMilestoneName { get; set; }
        
        string PathMilestoneTypeDescriptor { get; set; }
        
        string PathName { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        bool? CompletionIndicator { get; set; }
        string PathPhaseName { get; set; }

        // One-to-one relationships

        IStudentPathMilestoneStatusEvent StudentPathMilestoneStatusEvent { get; set; }

        // Lists

        // Resource reference data
        Guid? PathMilestoneResourceId { get; set; }
        string PathMilestoneDiscriminator { get; set; }
        Guid? PathPhaseResourceId { get; set; }
        string PathPhaseDiscriminator { get; set; }
        Guid? StudentPathResourceId { get; set; }
        string StudentPathDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentPathMilestoneStatusMappingContract : IMappingContract
    {
        public StudentPathMilestoneStatusMappingContract(
            bool isCompletionIndicatorSupported,
            bool isPathMilestoneReferenceSupported,
            bool isPathPhaseNameSupported,
            bool isPathPhaseReferenceSupported,
            bool isStudentPathMilestoneStatusEventSupported,
            bool isStudentPathReferenceSupported,
            bool isStudentPathMilestoneStatusEventCreatable
            )
        {
            IsCompletionIndicatorSupported = isCompletionIndicatorSupported;
            IsPathMilestoneReferenceSupported = isPathMilestoneReferenceSupported;
            IsPathPhaseNameSupported = isPathPhaseNameSupported;
            IsPathPhaseReferenceSupported = isPathPhaseReferenceSupported;
            IsStudentPathMilestoneStatusEventSupported = isStudentPathMilestoneStatusEventSupported;
            IsStudentPathReferenceSupported = isStudentPathReferenceSupported;
            IsStudentPathMilestoneStatusEventCreatable = isStudentPathMilestoneStatusEventCreatable;
        }

        public bool IsCompletionIndicatorSupported { get; }
        public bool IsPathMilestoneReferenceSupported { get; }
        public bool IsPathPhaseNameSupported { get; }
        public bool IsPathPhaseReferenceSupported { get; }
        public bool IsStudentPathMilestoneStatusEventSupported { get; }
        public bool IsStudentPathReferenceSupported { get; }
        public bool IsStudentPathMilestoneStatusEventCreatable { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CompletionIndicator":
                    return IsCompletionIndicatorSupported;
                case "PathMilestoneReference":
                    return IsPathMilestoneReferenceSupported;
                case "PathPhaseName":
                    return IsPathPhaseNameSupported;
                case "PathPhaseReference":
                    return IsPathPhaseReferenceSupported;
                case "StudentPathMilestoneStatusEvent":
                    return IsStudentPathMilestoneStatusEventSupported;
                case "StudentPathReference":
                    return IsStudentPathReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "PathMilestoneName":
                    return true;
                case "PathMilestoneTypeDescriptor":
                    return true;
                case "PathName":
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
                case "StudentPathMilestoneStatusEvent":
                    return IsStudentPathMilestoneStatusEventCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentPathMilestoneStatusEvent model.
    /// </summary>
    public interface IStudentPathMilestoneStatusEvent : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStudentPathMilestoneStatus StudentPathMilestoneStatus { get; set; }

        // Non-PK properties
        string Description { get; set; }
        DateTime PathMilestoneStatusDate { get; set; }
        string PathMilestoneStatusDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentPathMilestoneStatusEventMappingContract : IMappingContract
    {
        public StudentPathMilestoneStatusEventMappingContract(
            bool isDescriptionSupported,
            bool isPathMilestoneStatusDateSupported,
            bool isPathMilestoneStatusDescriptorSupported
            )
        {
            IsDescriptionSupported = isDescriptionSupported;
            IsPathMilestoneStatusDateSupported = isPathMilestoneStatusDateSupported;
            IsPathMilestoneStatusDescriptorSupported = isPathMilestoneStatusDescriptorSupported;
        }

        public bool IsDescriptionSupported { get; }
        public bool IsPathMilestoneStatusDateSupported { get; }
        public bool IsPathMilestoneStatusDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "Description":
                    return IsDescriptionSupported;
                case "PathMilestoneStatusDate":
                    return IsPathMilestoneStatusDateSupported;
                case "PathMilestoneStatusDescriptor":
                    return IsPathMilestoneStatusDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentPathPeriod model.
    /// </summary>
    public interface IStudentPathPeriod : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStudentPath StudentPath { get; set; }
        
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
    public class StudentPathPeriodMappingContract : IMappingContract
    {
        public StudentPathPeriodMappingContract(
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
    /// Defines available properties and methods for the abstraction of the StudentPathPhaseStatus model.
    /// </summary>
    public interface IStudentPathPhaseStatus : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        string PathName { get; set; }
        
        string PathPhaseName { get; set; }
        
        string StudentUniqueId { get; set; }

        // Non-PK properties
        bool? CompletionIndicator { get; set; }

        // One-to-one relationships

        // Lists
        ICollection<IStudentPathPhaseStatusEvent> StudentPathPhaseStatusEvents { get; set; }
        ICollection<IStudentPathPhaseStatusPeriod> StudentPathPhaseStatusPeriods { get; set; }

        // Resource reference data
        Guid? PathPhaseResourceId { get; set; }
        string PathPhaseDiscriminator { get; set; }
        Guid? StudentPathResourceId { get; set; }
        string StudentPathDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentPathPhaseStatusMappingContract : IMappingContract
    {
        public StudentPathPhaseStatusMappingContract(
            bool isCompletionIndicatorSupported,
            bool isPathPhaseReferenceSupported,
            bool isStudentPathPhaseStatusEventsSupported,
            bool isStudentPathPhaseStatusPeriodsSupported,
            bool isStudentPathReferenceSupported,
            bool isStudentPathPhaseStatusEventsItemCreatable,
            Func<IStudentPathPhaseStatusEvent, bool> isStudentPathPhaseStatusEventIncluded,
            bool isStudentPathPhaseStatusPeriodsItemCreatable,
            Func<IStudentPathPhaseStatusPeriod, bool> isStudentPathPhaseStatusPeriodIncluded
            )
        {
            IsCompletionIndicatorSupported = isCompletionIndicatorSupported;
            IsPathPhaseReferenceSupported = isPathPhaseReferenceSupported;
            IsStudentPathPhaseStatusEventsSupported = isStudentPathPhaseStatusEventsSupported;
            IsStudentPathPhaseStatusPeriodsSupported = isStudentPathPhaseStatusPeriodsSupported;
            IsStudentPathReferenceSupported = isStudentPathReferenceSupported;
            IsStudentPathPhaseStatusEventsItemCreatable = isStudentPathPhaseStatusEventsItemCreatable;
            IsStudentPathPhaseStatusEventIncluded = isStudentPathPhaseStatusEventIncluded;
            IsStudentPathPhaseStatusPeriodsItemCreatable = isStudentPathPhaseStatusPeriodsItemCreatable;
            IsStudentPathPhaseStatusPeriodIncluded = isStudentPathPhaseStatusPeriodIncluded;
        }

        public bool IsCompletionIndicatorSupported { get; }
        public bool IsPathPhaseReferenceSupported { get; }
        public bool IsStudentPathPhaseStatusEventsSupported { get; }
        public bool IsStudentPathPhaseStatusPeriodsSupported { get; }
        public bool IsStudentPathReferenceSupported { get; }
        public bool IsStudentPathPhaseStatusEventsItemCreatable { get; }
        public Func<IStudentPathPhaseStatusEvent, bool> IsStudentPathPhaseStatusEventIncluded { get; }
        public bool IsStudentPathPhaseStatusPeriodsItemCreatable { get; }
        public Func<IStudentPathPhaseStatusPeriod, bool> IsStudentPathPhaseStatusPeriodIncluded { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CompletionIndicator":
                    return IsCompletionIndicatorSupported;
                case "PathPhaseReference":
                    return IsPathPhaseReferenceSupported;
                case "StudentPathPhaseStatusEvents":
                    return IsStudentPathPhaseStatusEventsSupported;
                case "StudentPathPhaseStatusPeriods":
                    return IsStudentPathPhaseStatusPeriodsSupported;
                case "StudentPathReference":
                    return IsStudentPathReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "PathName":
                    return true;
                case "PathPhaseName":
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
                case "StudentPathPhaseStatusEvents":
                    return IsStudentPathPhaseStatusEventsItemCreatable;
                case "StudentPathPhaseStatusPeriods":
                    return IsStudentPathPhaseStatusPeriodsItemCreatable;
                default:
                    throw new Exception($"Unknown child item '{memberName}'.");
            }
        }

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentPathPhaseStatusEvent model.
    /// </summary>
    public interface IStudentPathPhaseStatusEvent : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStudentPathPhaseStatus StudentPathPhaseStatus { get; set; }
        
        DateTime PathPhaseStatusDate { get; set; }
        
        string PathPhaseStatusDescriptor { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class StudentPathPhaseStatusEventMappingContract : IMappingContract
    {
        public StudentPathPhaseStatusEventMappingContract(
            )
        {
        }


        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "PathPhaseStatusDate":
                    return true;
                case "PathPhaseStatusDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the StudentPathPhaseStatusPeriod model.
    /// </summary>
    public interface IStudentPathPhaseStatusPeriod : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        IStudentPathPhaseStatus StudentPathPhaseStatus { get; set; }
        
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
    public class StudentPathPhaseStatusPeriodMappingContract : IMappingContract
    {
        public StudentPathPhaseStatusPeriodMappingContract(
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
    /// Defines available properties and methods for the abstraction of the SurveyResponseExtension model.
    /// </summary>
    public interface ISurveyResponseExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ISurveyResponse SurveyResponse { get; set; }

        // Non-PK properties
        string PersonId { get; set; }
        string SourceSystemDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SurveyResponseExtensionMappingContract : IMappingContract
    {
        public SurveyResponseExtensionMappingContract(
            bool isPersonIdSupported,
            bool isPersonReferenceSupported,
            bool isSourceSystemDescriptorSupported
            )
        {
            IsPersonIdSupported = isPersonIdSupported;
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsSourceSystemDescriptorSupported = isSourceSystemDescriptorSupported;
        }

        public bool IsPersonIdSupported { get; }
        public bool IsPersonReferenceSupported { get; }
        public bool IsSourceSystemDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PersonId":
                    return IsPersonIdSupported;
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "SourceSystemDescriptor":
                    return IsSourceSystemDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SurveyResponsePersonTargetAssociation model.
    /// </summary>
    public interface ISurveyResponsePersonTargetAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string Namespace { get; set; }
        
        string PersonId { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string SurveyIdentifier { get; set; }
        
        string SurveyResponseIdentifier { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
        Guid? SurveyResponseResourceId { get; set; }
        string SurveyResponseDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SurveyResponsePersonTargetAssociationMappingContract : IMappingContract
    {
        public SurveyResponsePersonTargetAssociationMappingContract(
            bool isPersonReferenceSupported,
            bool isSurveyResponseReferenceSupported
            )
        {
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsSurveyResponseReferenceSupported = isSurveyResponseReferenceSupported;
        }

        public bool IsPersonReferenceSupported { get; }
        public bool IsSurveyResponseReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "SurveyResponseReference":
                    return IsSurveyResponseReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "Namespace":
                    return true;
                case "PersonId":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "SurveyIdentifier":
                    return true;
                case "SurveyResponseIdentifier":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SurveySectionAggregateResponse model.
    /// </summary>
    public interface ISurveySectionAggregateResponse : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        long EducationOrganizationId { get; set; }
        
        DateTime EvaluationDate { get; set; }
        
        string EvaluationElementTitle { get; set; }
        
        string EvaluationObjectiveTitle { get; set; }
        
        string EvaluationPeriodDescriptor { get; set; }
        
        string EvaluationTitle { get; set; }
        
        string Namespace { get; set; }
        
        string PerformanceEvaluationTitle { get; set; }
        
        string PerformanceEvaluationTypeDescriptor { get; set; }
        
        string PersonId { get; set; }
        
        short SchoolYear { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string SurveyIdentifier { get; set; }
        
        string SurveySectionTitle { get; set; }
        
        string TermDescriptor { get; set; }

        // Non-PK properties
        decimal ScoreValue { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EvaluationElementRatingResourceId { get; set; }
        string EvaluationElementRatingDiscriminator { get; set; }
        Guid? SurveySectionResourceId { get; set; }
        string SurveySectionDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SurveySectionAggregateResponseMappingContract : IMappingContract
    {
        public SurveySectionAggregateResponseMappingContract(
            bool isEvaluationElementRatingReferenceSupported,
            bool isScoreValueSupported,
            bool isSurveySectionReferenceSupported
            )
        {
            IsEvaluationElementRatingReferenceSupported = isEvaluationElementRatingReferenceSupported;
            IsScoreValueSupported = isScoreValueSupported;
            IsSurveySectionReferenceSupported = isSurveySectionReferenceSupported;
        }

        public bool IsEvaluationElementRatingReferenceSupported { get; }
        public bool IsScoreValueSupported { get; }
        public bool IsSurveySectionReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EvaluationElementRatingReference":
                    return IsEvaluationElementRatingReferenceSupported;
                case "ScoreValue":
                    return IsScoreValueSupported;
                case "SurveySectionReference":
                    return IsSurveySectionReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "EducationOrganizationId":
                    return true;
                case "EvaluationDate":
                    return true;
                case "EvaluationElementTitle":
                    return true;
                case "EvaluationObjectiveTitle":
                    return true;
                case "EvaluationPeriodDescriptor":
                    return true;
                case "EvaluationTitle":
                    return true;
                case "Namespace":
                    return true;
                case "PerformanceEvaluationTitle":
                    return true;
                case "PerformanceEvaluationTypeDescriptor":
                    return true;
                case "PersonId":
                    return true;
                case "SchoolYear":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "SurveyIdentifier":
                    return true;
                case "SurveySectionTitle":
                    return true;
                case "TermDescriptor":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SurveySectionExtension model.
    /// </summary>
    public interface ISurveySectionExtension : ISynchronizable, IMappable, IGetByExample
    {
        // Primary Key properties
        EdFi.ISurveySection SurveySection { get; set; }

        // Non-PK properties
        long? EducationOrganizationId { get; set; }
        string EvaluationElementTitle { get; set; }
        string EvaluationObjectiveTitle { get; set; }
        string EvaluationPeriodDescriptor { get; set; }
        string EvaluationTitle { get; set; }
        string PerformanceEvaluationTitle { get; set; }
        string PerformanceEvaluationTypeDescriptor { get; set; }
        short? SchoolYear { get; set; }
        string TermDescriptor { get; set; }

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? EvaluationElementResourceId { get; set; }
        string EvaluationElementDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SurveySectionExtensionMappingContract : IMappingContract
    {
        public SurveySectionExtensionMappingContract(
            bool isEducationOrganizationIdSupported,
            bool isEvaluationElementReferenceSupported,
            bool isEvaluationElementTitleSupported,
            bool isEvaluationObjectiveTitleSupported,
            bool isEvaluationPeriodDescriptorSupported,
            bool isEvaluationTitleSupported,
            bool isPerformanceEvaluationTitleSupported,
            bool isPerformanceEvaluationTypeDescriptorSupported,
            bool isSchoolYearSupported,
            bool isTermDescriptorSupported
            )
        {
            IsEducationOrganizationIdSupported = isEducationOrganizationIdSupported;
            IsEvaluationElementReferenceSupported = isEvaluationElementReferenceSupported;
            IsEvaluationElementTitleSupported = isEvaluationElementTitleSupported;
            IsEvaluationObjectiveTitleSupported = isEvaluationObjectiveTitleSupported;
            IsEvaluationPeriodDescriptorSupported = isEvaluationPeriodDescriptorSupported;
            IsEvaluationTitleSupported = isEvaluationTitleSupported;
            IsPerformanceEvaluationTitleSupported = isPerformanceEvaluationTitleSupported;
            IsPerformanceEvaluationTypeDescriptorSupported = isPerformanceEvaluationTypeDescriptorSupported;
            IsSchoolYearSupported = isSchoolYearSupported;
            IsTermDescriptorSupported = isTermDescriptorSupported;
        }

        public bool IsEducationOrganizationIdSupported { get; }
        public bool IsEvaluationElementReferenceSupported { get; }
        public bool IsEvaluationElementTitleSupported { get; }
        public bool IsEvaluationObjectiveTitleSupported { get; }
        public bool IsEvaluationPeriodDescriptorSupported { get; }
        public bool IsEvaluationTitleSupported { get; }
        public bool IsPerformanceEvaluationTitleSupported { get; }
        public bool IsPerformanceEvaluationTypeDescriptorSupported { get; }
        public bool IsSchoolYearSupported { get; }
        public bool IsTermDescriptorSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "EducationOrganizationId":
                    return IsEducationOrganizationIdSupported;
                case "EvaluationElementReference":
                    return IsEvaluationElementReferenceSupported;
                case "EvaluationElementTitle":
                    return IsEvaluationElementTitleSupported;
                case "EvaluationObjectiveTitle":
                    return IsEvaluationObjectiveTitleSupported;
                case "EvaluationPeriodDescriptor":
                    return IsEvaluationPeriodDescriptorSupported;
                case "EvaluationTitle":
                    return IsEvaluationTitleSupported;
                case "PerformanceEvaluationTitle":
                    return IsPerformanceEvaluationTitleSupported;
                case "PerformanceEvaluationTypeDescriptor":
                    return IsPerformanceEvaluationTypeDescriptorSupported;
                case "SchoolYear":
                    return IsSchoolYearSupported;
                case "TermDescriptor":
                    return IsTermDescriptorSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the SurveySectionResponsePersonTargetAssociation model.
    /// </summary>
    public interface ISurveySectionResponsePersonTargetAssociation : ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        
        string Namespace { get; set; }
        
        string PersonId { get; set; }
        
        string SourceSystemDescriptor { get; set; }
        
        string SurveyIdentifier { get; set; }
        
        string SurveyResponseIdentifier { get; set; }
        
        string SurveySectionTitle { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
        Guid? PersonResourceId { get; set; }
        string PersonDiscriminator { get; set; }
        Guid? SurveySectionResponseResourceId { get; set; }
        string SurveySectionResponseDiscriminator { get; set; }
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class SurveySectionResponsePersonTargetAssociationMappingContract : IMappingContract
    {
        public SurveySectionResponsePersonTargetAssociationMappingContract(
            bool isPersonReferenceSupported,
            bool isSurveySectionResponseReferenceSupported
            )
        {
            IsPersonReferenceSupported = isPersonReferenceSupported;
            IsSurveySectionResponseReferenceSupported = isSurveySectionResponseReferenceSupported;
        }

        public bool IsPersonReferenceSupported { get; }
        public bool IsSurveySectionResponseReferenceSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "PersonReference":
                    return IsPersonReferenceSupported;
                case "SurveySectionResponseReference":
                    return IsSurveySectionResponseReferenceSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "Namespace":
                    return true;
                case "PersonId":
                    return true;
                case "SourceSystemDescriptor":
                    return true;
                case "SurveyIdentifier":
                    return true;
                case "SurveyResponseIdentifier":
                    return true;
                case "SurveySectionTitle":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }

    /// <summary>
    /// Defines available properties and methods for the abstraction of the WithdrawReasonDescriptor model.
    /// </summary>
    public interface IWithdrawReasonDescriptor : EdFi.IDescriptor, ISynchronizable, IMappable, IHasIdentifier, IGetByExample
    {
        // Primary Key properties
        [AutoIncrement]
        int WithdrawReasonDescriptorId { get; set; }

        // Non-PK properties

        // One-to-one relationships

        // Lists

        // Resource reference data
    }

    /// <summary>
    /// Defines a mapping contract appropriate for a particular context when data is either being mapped or synchronized
    /// between entities/resources during API request processing.
    /// </summary>
    public class WithdrawReasonDescriptorMappingContract : IMappingContract
    {
        public WithdrawReasonDescriptorMappingContract(
            bool isCodeValueSupported,
            bool isDescriptionSupported,
            bool isEffectiveBeginDateSupported,
            bool isEffectiveEndDateSupported,
            bool isNamespaceSupported,
            bool isShortDescriptionSupported
            )
        {
            IsCodeValueSupported = isCodeValueSupported;
            IsDescriptionSupported = isDescriptionSupported;
            IsEffectiveBeginDateSupported = isEffectiveBeginDateSupported;
            IsEffectiveEndDateSupported = isEffectiveEndDateSupported;
            IsNamespaceSupported = isNamespaceSupported;
            IsShortDescriptionSupported = isShortDescriptionSupported;
        }

        public bool IsCodeValueSupported { get; }
        public bool IsDescriptionSupported { get; }
        public bool IsEffectiveBeginDateSupported { get; }
        public bool IsEffectiveEndDateSupported { get; }
        public bool IsNamespaceSupported { get; }
        public bool IsShortDescriptionSupported { get; }

        bool IMappingContract.IsMemberSupported(string memberName)
        {
            switch (memberName)
            {
                case "CodeValue":
                    return IsCodeValueSupported;
                case "Description":
                    return IsDescriptionSupported;
                case "EffectiveBeginDate":
                    return IsEffectiveBeginDateSupported;
                case "EffectiveEndDate":
                    return IsEffectiveEndDateSupported;
                case "Namespace":
                    return IsNamespaceSupported;
                case "ShortDescription":
                    return IsShortDescriptionSupported;
                // Additional inspection support for identifying properties (which are implicitly supported by Profiles) for use during validation
                case "WithdrawReasonDescriptorId":
                    return true;
                default:
                    throw new Exception($"Unknown member '{memberName}'.");
            }
        }

        bool IMappingContract.IsItemCreatable(string memberName) => throw new Exception($"Unknown child item member '{memberName}'.");

    }
}
