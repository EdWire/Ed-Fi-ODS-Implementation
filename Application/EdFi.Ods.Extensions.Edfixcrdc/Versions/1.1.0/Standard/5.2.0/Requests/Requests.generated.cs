using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Attributes;

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.AlternativeStatusDescriptors
{

    [ExcludeFromCodeCoverage]
    public class AlternativeStatusDescriptorGetByExample
    {
        public int AlternativeStatusDescriptorId { get; set; }
        public string CodeValue { get; set; }
        public string Description { get; set; }
        public DateTime EffectiveBeginDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public string ShortDescription { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class AlternativeStatusDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public AlternativeStatusDescriptorGetByIds() { }

        public AlternativeStatusDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class AlternativeStatusDescriptorPost : Resources.AlternativeStatusDescriptor.Edfixcrdc.AlternativeStatusDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class AlternativeStatusDescriptorPut : Resources.AlternativeStatusDescriptor.Edfixcrdc.AlternativeStatusDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class AlternativeStatusDescriptorDelete : IHasIdentifier
    {
        public AlternativeStatusDescriptorDelete() { }

        public AlternativeStatusDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.ClassGroups
{

    [ExcludeFromCodeCoverage]
    public class ClassGroupGetByExample
    {
        public int Capacity { get; set; }
        public string ClassGroupName { get; set; }
        public long CommunityProviderId { get; set; }
        public int CommunityProviderLocationId { get; set; }
        public int DaysAvailablePerWeek { get; set; }
        public decimal HoursAvailablePerDay { get; set; }
        public Guid Id { get; set; }
        public string ServiceDescriptor { get; set; }
        public bool SpecialNeedsProvidedIndicator { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ClassGroupGetByIds : IHasIdentifiers<Guid>
    {
        public ClassGroupGetByIds() { }

        public ClassGroupGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ClassGroupPost : Resources.ClassGroup.Edfixcrdc.ClassGroup
    {
    }

    [ExcludeFromCodeCoverage]
    public class ClassGroupPut : Resources.ClassGroup.Edfixcrdc.ClassGroup
    {
    }

    [ExcludeFromCodeCoverage]
    public class ClassGroupDelete : IHasIdentifier
    {
        public ClassGroupDelete() { }

        public ClassGroupDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.CommunityProviderLocations
{

    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationGetByExample
    {
        public string AddressTypeDescriptor { get; set; }
        public string AgeRangeDescription { get; set; }
        public string ApartmentRoomSuiteNumber { get; set; }
        public string BuildingSiteNumber { get; set; }
        public int Capacity { get; set; }
        public string City { get; set; }
        public long CommunityProviderId { get; set; }
        public int CommunityProviderLocationId { get; set; }
        public string CountyFIPSCode { get; set; }
        public Guid Id { get; set; }
        public string NameOfCounty { get; set; }
        public int OldestAgeAccepted { get; set; }
        public string PostalCode { get; set; }
        public bool SpecialNeedsProvidedIndicator { get; set; }
        public string StateAbbreviationDescriptor { get; set; }
        public string StreetNumberName { get; set; }
        public TimeSpan TimeClose { get; set; }
        public TimeSpan TimeOpen { get; set; }
        public int YoungestAgeAccepted { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationGetByIds : IHasIdentifiers<Guid>
    {
        public CommunityProviderLocationGetByIds() { }

        public CommunityProviderLocationGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationPost : Resources.CommunityProviderLocation.Edfixcrdc.CommunityProviderLocation
    {
    }

    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationPut : Resources.CommunityProviderLocation.Edfixcrdc.CommunityProviderLocation
    {
    }

    [ExcludeFromCodeCoverage]
    public class CommunityProviderLocationDelete : IHasIdentifier
    {
        public CommunityProviderLocationDelete() { }

        public CommunityProviderLocationDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.MeetingDayDescriptors
{

    [ExcludeFromCodeCoverage]
    public class MeetingDayDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public string Description { get; set; }
        public DateTime EffectiveBeginDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public Guid Id { get; set; }
        public int MeetingDayDescriptorId { get; set; }
        public string Namespace { get; set; }
        public string ShortDescription { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class MeetingDayDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public MeetingDayDescriptorGetByIds() { }

        public MeetingDayDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class MeetingDayDescriptorPost : Resources.MeetingDayDescriptor.Edfixcrdc.MeetingDayDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class MeetingDayDescriptorPut : Resources.MeetingDayDescriptor.Edfixcrdc.MeetingDayDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class MeetingDayDescriptorDelete : IHasIdentifier
    {
        public MeetingDayDescriptorDelete() { }

        public MeetingDayDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.ProgramCostDescriptors
{

    [ExcludeFromCodeCoverage]
    public class ProgramCostDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public string Description { get; set; }
        public DateTime EffectiveBeginDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int ProgramCostDescriptorId { get; set; }
        public string ShortDescription { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ProgramCostDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public ProgramCostDescriptorGetByIds() { }

        public ProgramCostDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ProgramCostDescriptorPost : Resources.ProgramCostDescriptor.Edfixcrdc.ProgramCostDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ProgramCostDescriptorPut : Resources.ProgramCostDescriptor.Edfixcrdc.ProgramCostDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ProgramCostDescriptorDelete : IHasIdentifier
    {
        public ProgramCostDescriptorDelete() { }

        public ProgramCostDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.RestraintCategoryDescriptors
{

    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public string Description { get; set; }
        public DateTime EffectiveBeginDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int RestraintCategoryDescriptorId { get; set; }
        public string ShortDescription { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public RestraintCategoryDescriptorGetByIds() { }

        public RestraintCategoryDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptorPost : Resources.RestraintCategoryDescriptor.Edfixcrdc.RestraintCategoryDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptorPut : Resources.RestraintCategoryDescriptor.Edfixcrdc.RestraintCategoryDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class RestraintCategoryDescriptorDelete : IHasIdentifier
    {
        public RestraintCategoryDescriptorDelete() { }

        public RestraintCategoryDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.StudentClassGroupAssociations
{

    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationGetByExample
    {
        public DateTime BeginDate { get; set; }
        public string ClassGroupName { get; set; }
        public long CommunityProviderId { get; set; }
        public int CommunityProviderLocationId { get; set; }
        public DateTime EndDate { get; set; }
        public Guid Id { get; set; }
        public string ReasonExitedDescriptor { get; set; }
        public bool SpecialNeedsProvidedIndicator { get; set; }
        public string StudentUniqueId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationGetByIds : IHasIdentifiers<Guid>
    {
        public StudentClassGroupAssociationGetByIds() { }

        public StudentClassGroupAssociationGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationPost : Resources.StudentClassGroupAssociation.Edfixcrdc.StudentClassGroupAssociation
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationPut : Resources.StudentClassGroupAssociation.Edfixcrdc.StudentClassGroupAssociation
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentClassGroupAssociationDelete : IHasIdentifier
    {
        public StudentClassGroupAssociationDelete() { }

        public StudentClassGroupAssociationDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.StudentCommunityProviderLocationAssociations
{

    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationGetByExample
    {
        public DateTime BeginDate { get; set; }
        public long CommunityProviderId { get; set; }
        public int CommunityProviderLocationId { get; set; }
        public DateTime EndDate { get; set; }
        public string EnrollmentStatus { get; set; }
        public Guid Id { get; set; }
        public string ReasonExitedDescriptor { get; set; }
        public string StudentUniqueId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationGetByIds : IHasIdentifiers<Guid>
    {
        public StudentCommunityProviderLocationAssociationGetByIds() { }

        public StudentCommunityProviderLocationAssociationGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationPost : Resources.StudentCommunityProviderLocationAssociation.Edfixcrdc.StudentCommunityProviderLocationAssociation
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationPut : Resources.StudentCommunityProviderLocationAssociation.Edfixcrdc.StudentCommunityProviderLocationAssociation
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentCommunityProviderLocationAssociationDelete : IHasIdentifier
    {
        public StudentCommunityProviderLocationAssociationDelete() { }

        public StudentCommunityProviderLocationAssociationDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.Edfixcrdc.UngradedDetailDescriptors
{

    [ExcludeFromCodeCoverage]
    public class UngradedDetailDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public string Description { get; set; }
        public DateTime EffectiveBeginDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public string ShortDescription { get; set; }
        public int UngradedDetailDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class UngradedDetailDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public UngradedDetailDescriptorGetByIds() { }

        public UngradedDetailDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class UngradedDetailDescriptorPost : Resources.UngradedDetailDescriptor.Edfixcrdc.UngradedDetailDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class UngradedDetailDescriptorPut : Resources.UngradedDetailDescriptor.Edfixcrdc.UngradedDetailDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class UngradedDetailDescriptorDelete : IHasIdentifier
    {
        public UngradedDetailDescriptorDelete() { }

        public UngradedDetailDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

