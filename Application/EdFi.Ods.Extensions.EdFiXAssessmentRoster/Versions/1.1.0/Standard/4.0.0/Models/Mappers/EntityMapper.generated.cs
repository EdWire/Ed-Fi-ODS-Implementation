using System;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Extensions;
using EdFi.Ods.Api.Providers;
using EdFi.Ods.Common.Dependencies;
using EdFi.Ods.Common.Providers;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Constants;
using EdFi.Ods.Common.Conventions;
using EdFi.Ods.Common.Exceptions;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Models;
using EdFi.Ods.Common.Models.Domain;
using EdFi.Ods.Entities.Common.EdFi;
// Aggregate: AssessmentAdministration

namespace EdFi.Ods.Entities.Common.EdFiXAssessmentRoster //.AssessmentAdministrationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class AssessmentAdministrationMapper
    {
        private static readonly FullName _fullName_edfixassessmentroster_AssessmentAdministration = new FullName("edfixassessmentroster", "AssessmentAdministration");
    
        public static bool SynchronizeTo(this IAssessmentAdministration source, IAssessmentAdministration target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (AssessmentAdministrationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_AssessmentAdministration);

            var keyStringComparer = GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer;

            // Detect primary key changes
            if (
                 (!keyStringComparer.Equals(target.AdministrationIdentifier, source.AdministrationIdentifier))
                || (!keyStringComparer.Equals(target.AssessmentIdentifier, source.AssessmentIdentifier))
                || (target.AssigningEducationOrganizationId != source.AssigningEducationOrganizationId)
                || (!keyStringComparer.Equals(target.Namespace, source.Namespace)))
            {
                // Disallow PK column updates on AssessmentAdministration
                throw new KeyChangeNotSupportedException("AssessmentAdministration");
            }


            // Copy non-PK properties


            // Sync lists
            if (mappingContract?.IsAssessmentAdministrationContactsSupported ?? true)
            {
                isModified |=
                    source.AssessmentAdministrationContacts.SynchronizeCollectionTo(
                        target.AssessmentAdministrationContacts,
                        onChildAdded: child =>
                            {
                                child.AssessmentAdministration = target;
                            },
                        itemCreatable: mappingContract?.IsAssessmentAdministrationContactsItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsAssessmentAdministrationContactIncluded?.Invoke(item) ?? true);
            }

            if (mappingContract?.IsAssessmentAdministrationPeriodsSupported ?? true)
            {
                isModified |=
                    source.AssessmentAdministrationPeriods.SynchronizeCollectionTo(
                        target.AssessmentAdministrationPeriods,
                        onChildAdded: child =>
                            {
                                child.AssessmentAdministration = target;
                            },
                        itemCreatable: mappingContract?.IsAssessmentAdministrationPeriodsItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsAssessmentAdministrationPeriodIncluded?.Invoke(item) ?? true);
            }


            return isModified;
        }

        public static void MapTo(this IAssessmentAdministration source, IAssessmentAdministration target, Action<IAssessmentAdministration, IAssessmentAdministration> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (AssessmentAdministrationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_AssessmentAdministration);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.AdministrationIdentifier = source.AdministrationIdentifier;
            target.AssessmentIdentifier = source.AssessmentIdentifier;
            target.AssigningEducationOrganizationId = source.AssigningEducationOrganizationId;
            target.Namespace = source.Namespace;

            // Copy non-PK properties

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
            {
                target.AssessmentResourceId = source.AssessmentResourceId;
                target.AssessmentDiscriminator = source.AssessmentDiscriminator;
                target.AssigningEducationOrganizationResourceId = source.AssigningEducationOrganizationResourceId;
                target.AssigningEducationOrganizationDiscriminator = source.AssigningEducationOrganizationDiscriminator;
            }



            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists

            if (mappingContract?.IsAssessmentAdministrationContactsSupported != false)
            {
                source.AssessmentAdministrationContacts.MapCollectionTo(target.AssessmentAdministrationContacts, mappingContract?.IsAssessmentAdministrationContactsItemCreatable ?? true, target, mappingContract?.IsAssessmentAdministrationContactIncluded);
            }

            if (mappingContract?.IsAssessmentAdministrationPeriodsSupported != false)
            {
                source.AssessmentAdministrationPeriods.MapCollectionTo(target.AssessmentAdministrationPeriods, mappingContract?.IsAssessmentAdministrationPeriodsItemCreatable ?? true, target, mappingContract?.IsAssessmentAdministrationPeriodIncluded);
            }


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

    [ExcludeFromCodeCoverage]
    public static class AssessmentAdministrationContactMapper
    {
        private static readonly FullName _fullName_edfixassessmentroster_AssessmentAdministrationContact = new FullName("edfixassessmentroster", "AssessmentAdministrationContact");
    
        public static bool SynchronizeTo(this IAssessmentAdministrationContact source, IAssessmentAdministrationContact target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (AssessmentAdministrationContactMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_AssessmentAdministrationContact);


            // Copy non-PK properties

            if ((mappingContract?.IsFirstNameSupported != false)
                && target.FirstName != source.FirstName)
            {
                target.FirstName = source.FirstName;
                isModified = true;
            }

            if ((mappingContract?.IsLastSurnameSupported != false)
                && target.LastSurname != source.LastSurname)
            {
                target.LastSurname = source.LastSurname;
                isModified = true;
            }

            if ((mappingContract?.IsLoginIdSupported != false)
                && target.LoginId != source.LoginId)
            {
                target.LoginId = source.LoginId;
                isModified = true;
            }


            // Sync lists

            return isModified;
        }

        public static void MapTo(this IAssessmentAdministrationContact source, IAssessmentAdministrationContact target, Action<IAssessmentAdministrationContact, IAssessmentAdministrationContact> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (AssessmentAdministrationContactMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_AssessmentAdministrationContact);
    
            // Copy contextual primary key values
            target.EducationOrganizationId = source.EducationOrganizationId;
            target.ElectronicMailAddress = source.ElectronicMailAddress;

            // Copy non-PK properties

            if (mappingContract?.IsFirstNameSupported != false)
                target.FirstName = source.FirstName;

            if (mappingContract?.IsLastSurnameSupported != false)
                target.LastSurname = source.LastSurname;

            if (mappingContract?.IsLoginIdSupported != false)
                target.LoginId = source.LoginId;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
            {
                target.EducationOrganizationResourceId = source.EducationOrganizationResourceId;
                target.EducationOrganizationDiscriminator = source.EducationOrganizationDiscriminator;
            }



            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

    [ExcludeFromCodeCoverage]
    public static class AssessmentAdministrationPeriodMapper
    {
        private static readonly FullName _fullName_edfixassessmentroster_AssessmentAdministrationPeriod = new FullName("edfixassessmentroster", "AssessmentAdministrationPeriod");
    
        public static bool SynchronizeTo(this IAssessmentAdministrationPeriod source, IAssessmentAdministrationPeriod target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (AssessmentAdministrationPeriodMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_AssessmentAdministrationPeriod);


            // Copy non-PK properties

            if ((mappingContract?.IsEndDateSupported != false)
                && target.EndDate != source.EndDate)
            {
                target.EndDate = source.EndDate;
                isModified = true;
            }


            // Sync lists

            return isModified;
        }

        public static void MapTo(this IAssessmentAdministrationPeriod source, IAssessmentAdministrationPeriod target, Action<IAssessmentAdministrationPeriod, IAssessmentAdministrationPeriod> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (AssessmentAdministrationPeriodMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_AssessmentAdministrationPeriod);
    
            // Copy contextual primary key values
            target.BeginDate = source.BeginDate;

            // Copy non-PK properties

            if (mappingContract?.IsEndDateSupported != false)
                target.EndDate = source.EndDate;

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

}
// Aggregate: StudentAssessmentRegistration

namespace EdFi.Ods.Entities.Common.EdFiXAssessmentRoster //.StudentAssessmentRegistrationAggregate
{
    [ExcludeFromCodeCoverage]
    public static class StudentAssessmentRegistrationMapper
    {
        private static readonly FullName _fullName_edfixassessmentroster_StudentAssessmentRegistration = new FullName("edfixassessmentroster", "StudentAssessmentRegistration");
    
        public static bool SynchronizeTo(this IStudentAssessmentRegistration source, IStudentAssessmentRegistration target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentAssessmentRegistrationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_StudentAssessmentRegistration);

            var keyStringComparer = GeneratedArtifactStaticDependencies.DatabaseEngineSpecificStringComparer;

            // Detect primary key changes
            if (
                 (!keyStringComparer.Equals(target.AdministrationIdentifier, source.AdministrationIdentifier))
                || (!keyStringComparer.Equals(target.AssessmentIdentifier, source.AssessmentIdentifier))
                || (target.AssigningEducationOrganizationId != source.AssigningEducationOrganizationId)
                || (target.EducationOrganizationId != source.EducationOrganizationId)
                || (!keyStringComparer.Equals(target.Namespace, source.Namespace))
                || (target.StudentUniqueId != source.StudentUniqueId))
            {
                // Disallow PK column updates on StudentAssessmentRegistration
                throw new KeyChangeNotSupportedException("StudentAssessmentRegistration");
            }


            // Copy non-PK properties

            if ((mappingContract?.IsEntryDateSupported != false)
                && target.EntryDate != source.EntryDate)
            {
                target.EntryDate = source.EntryDate;
                isModified = true;
            }

            if ((mappingContract?.IsPlatformTypeDescriptorSupported != false)
                && target.PlatformTypeDescriptor != source.PlatformTypeDescriptor)
            {
                target.PlatformTypeDescriptor = source.PlatformTypeDescriptor;
                isModified = true;
            }

            if ((mappingContract?.IsReportingEducationOrganizationIdSupported != false)
                && target.ReportingEducationOrganizationId != source.ReportingEducationOrganizationId)
            {
                target.ReportingEducationOrganizationId = source.ReportingEducationOrganizationId;
                isModified = true;
            }

            if ((mappingContract?.IsSchoolIdSupported != false)
                && target.SchoolId != source.SchoolId)
            {
                target.SchoolId = source.SchoolId;
                isModified = true;
            }

            if ((mappingContract?.IsTestingEducationOrganizationIdSupported != false)
                && target.TestingEducationOrganizationId != source.TestingEducationOrganizationId)
            {
                target.TestingEducationOrganizationId = source.TestingEducationOrganizationId;
                isModified = true;
            }


            // Sync lists
            if (mappingContract?.IsStudentAssessmentRegistrationAssessmentCustomizationsSupported ?? true)
            {
                isModified |=
                    source.StudentAssessmentRegistrationAssessmentCustomizations.SynchronizeCollectionTo(
                        target.StudentAssessmentRegistrationAssessmentCustomizations,
                        onChildAdded: child =>
                            {
                                child.StudentAssessmentRegistration = target;
                            },
                        itemCreatable: mappingContract?.IsStudentAssessmentRegistrationAssessmentCustomizationsItemCreatable ?? true,
                        includeItem: item => mappingContract?.IsStudentAssessmentRegistrationAssessmentCustomizationIncluded?.Invoke(item) ?? true);
            }


            return isModified;
        }

        public static void MapTo(this IStudentAssessmentRegistration source, IStudentAssessmentRegistration target, Action<IStudentAssessmentRegistration, IStudentAssessmentRegistration> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentAssessmentRegistrationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_StudentAssessmentRegistration);
    
            // Copy resource Id
            target.Id = source.Id;

            // Copy contextual primary key values
            target.AdministrationIdentifier = source.AdministrationIdentifier;
            target.AssessmentIdentifier = source.AssessmentIdentifier;
            target.AssigningEducationOrganizationId = source.AssigningEducationOrganizationId;
            target.EducationOrganizationId = source.EducationOrganizationId;
            target.Namespace = source.Namespace;
            target.StudentUniqueId = source.StudentUniqueId;

            // Copy non-PK properties

            if (mappingContract?.IsEntryDateSupported != false)
                target.EntryDate = source.EntryDate;

            if (mappingContract?.IsPlatformTypeDescriptorSupported != false)
                target.PlatformTypeDescriptor = source.PlatformTypeDescriptor;

            if (mappingContract?.IsReportingEducationOrganizationIdSupported != false)
                target.ReportingEducationOrganizationId = source.ReportingEducationOrganizationId;

            if (mappingContract?.IsSchoolIdSupported != false)
                target.SchoolId = source.SchoolId;

            if (mappingContract?.IsTestingEducationOrganizationIdSupported != false)
                target.TestingEducationOrganizationId = source.TestingEducationOrganizationId;

            // Copy Aggregate Reference Data
            if (GeneratedArtifactStaticDependencies.AuthorizationContextProvider == null
                || GeneratedArtifactStaticDependencies.AuthorizationContextProvider.GetAction() == RequestActions.ReadActionUri)
            {
                target.AssessmentAdministrationResourceId = source.AssessmentAdministrationResourceId;
                target.AssessmentAdministrationDiscriminator = source.AssessmentAdministrationDiscriminator;
                target.ReportingEducationOrganizationResourceId = source.ReportingEducationOrganizationResourceId;
                target.ReportingEducationOrganizationDiscriminator = source.ReportingEducationOrganizationDiscriminator;
                target.StudentEducationOrganizationAssociationResourceId = source.StudentEducationOrganizationAssociationResourceId;
                target.StudentEducationOrganizationAssociationDiscriminator = source.StudentEducationOrganizationAssociationDiscriminator;
                target.StudentSchoolAssociationResourceId = source.StudentSchoolAssociationResourceId;
                target.StudentSchoolAssociationDiscriminator = source.StudentSchoolAssociationDiscriminator;
                target.TestingEducationOrganizationResourceId = source.TestingEducationOrganizationResourceId;
                target.TestingEducationOrganizationDiscriminator = source.TestingEducationOrganizationDiscriminator;
            }



            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists

            if (mappingContract?.IsStudentAssessmentRegistrationAssessmentCustomizationsSupported != false)
            {
                source.StudentAssessmentRegistrationAssessmentCustomizations.MapCollectionTo(target.StudentAssessmentRegistrationAssessmentCustomizations, mappingContract?.IsStudentAssessmentRegistrationAssessmentCustomizationsItemCreatable ?? true, target, mappingContract?.IsStudentAssessmentRegistrationAssessmentCustomizationIncluded);
            }


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

    [ExcludeFromCodeCoverage]
    public static class StudentAssessmentRegistrationAssessmentCustomizationMapper
    {
        private static readonly FullName _fullName_edfixassessmentroster_StudentAssessmentRegistrationAssessmentCustomization = new FullName("edfixassessmentroster", "StudentAssessmentRegistrationAssessmentCustomization");
    
        public static bool SynchronizeTo(this IStudentAssessmentRegistrationAssessmentCustomization source, IStudentAssessmentRegistrationAssessmentCustomization target)
        {
            bool isModified = false;

            // Get the mapping contract for knowing what values to synchronize through to target entity
            var mappingContract = (StudentAssessmentRegistrationAssessmentCustomizationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_StudentAssessmentRegistrationAssessmentCustomization);


            // Copy non-PK properties

            if ((mappingContract?.IsCustomizationValueSupported != false)
                && target.CustomizationValue != source.CustomizationValue)
            {
                target.CustomizationValue = source.CustomizationValue;
                isModified = true;
            }


            // Sync lists

            return isModified;
        }

        public static void MapTo(this IStudentAssessmentRegistrationAssessmentCustomization source, IStudentAssessmentRegistrationAssessmentCustomization target, Action<IStudentAssessmentRegistrationAssessmentCustomization, IStudentAssessmentRegistrationAssessmentCustomization> onMapped)
        {
            // Get the mapping contract for determining what values to map through to target
            var mappingContract = (StudentAssessmentRegistrationAssessmentCustomizationMappingContract) GeneratedArtifactStaticDependencies
                .MappingContractProvider
                .GetMappingContract(_fullName_edfixassessmentroster_StudentAssessmentRegistrationAssessmentCustomization);
    
            // Copy contextual primary key values
            target.IdentificationCode = source.IdentificationCode;

            // Copy non-PK properties

            if (mappingContract?.IsCustomizationValueSupported != false)
                target.CustomizationValue = source.CustomizationValue;

            // Copy Aggregate Reference Data


            // ----------------------------------
            //   Map One-to-one relationships
            // ----------------------------------

            // Map lists


            // Convert source to an ETag, if appropriate
            if (target is IHasETag entityWithETag)
                entityWithETag.ETag = GeneratedArtifactStaticDependencies.ETagProvider.GetETag(source);

            // Copy/assign LastModifiedDate, if appropriate
            if (target is IDateVersionedEntity targetDateVersionedEntity)
            {
                if (source is IHasETag etagSource)
                {
                    // Convert resource's supplied eTag value to entity's LastModifiedDate
                    targetDateVersionedEntity.LastModifiedDate = GeneratedArtifactStaticDependencies.ETagProvider.GetDateTime(etagSource.ETag);
                }
                else if (source is IDateVersionedEntity sourceDateVersionedEntity)
                {
                    // Copy LastModifiedDate, when mapping from entities to resources/entities
                    targetDateVersionedEntity.LastModifiedDate = sourceDateVersionedEntity.LastModifiedDate;
                }
            }
        }
    }

}
