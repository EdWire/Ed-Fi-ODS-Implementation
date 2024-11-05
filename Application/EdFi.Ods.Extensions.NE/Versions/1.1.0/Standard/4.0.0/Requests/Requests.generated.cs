using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Attributes;

namespace EdFi.Ods.Api.Common.Models.Requests.NE.CrisisDetails
{

    [ExcludeFromCodeCoverage]
    public class CrisisDetailsGetByExample
    {
        public string CrisisDesription { get; set; }
        public string CrisisEventDescriptor { get; set; }
        public DateTime CrisisStartDate { get; set; }
        public string CrisisTypeDescriptor { get; set; }
        public Guid Id { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CrisisDetailsGetByIds : IHasIdentifiers<Guid>
    {
        public CrisisDetailsGetByIds() { }

        public CrisisDetailsGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CrisisDetailsPost : Resources.CrisisDetails.NE.CrisisDetails
    {
    }

    [ExcludeFromCodeCoverage]
    public class CrisisDetailsPut : Resources.CrisisDetails.NE.CrisisDetails
    {
    }

    [ExcludeFromCodeCoverage]
    public class CrisisDetailsDelete : IHasIdentifier
    {
        public CrisisDetailsDelete() { }

        public CrisisDetailsDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.CrisisEventDescriptors
{

    [ExcludeFromCodeCoverage]
    public class CrisisEventDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public int CrisisEventDescriptorId { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CrisisEventDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public CrisisEventDescriptorGetByIds() { }

        public CrisisEventDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CrisisEventDescriptorPost : Resources.CrisisEventDescriptor.NE.CrisisEventDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class CrisisEventDescriptorPut : Resources.CrisisEventDescriptor.NE.CrisisEventDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class CrisisEventDescriptorDelete : IHasIdentifier
    {
        public CrisisEventDescriptorDelete() { }

        public CrisisEventDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.CrisisTypeDescriptors
{

    [ExcludeFromCodeCoverage]
    public class CrisisTypeDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public int CrisisTypeDescriptorId { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CrisisTypeDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public CrisisTypeDescriptorGetByIds() { }

        public CrisisTypeDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class CrisisTypeDescriptorPost : Resources.CrisisTypeDescriptor.NE.CrisisTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class CrisisTypeDescriptorPut : Resources.CrisisTypeDescriptor.NE.CrisisTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class CrisisTypeDescriptorDelete : IHasIdentifier
    {
        public CrisisTypeDescriptorDelete() { }

        public CrisisTypeDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.DualCreditDescriptors
{

    [ExcludeFromCodeCoverage]
    public class DualCreditDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public int DualCreditDescriptorId { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class DualCreditDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public DualCreditDescriptorGetByIds() { }

        public DualCreditDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class DualCreditDescriptorPost : Resources.DualCreditDescriptor.NE.DualCreditDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class DualCreditDescriptorPut : Resources.DualCreditDescriptor.NE.DualCreditDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class DualCreditDescriptorDelete : IHasIdentifier
    {
        public DualCreditDescriptorDelete() { }

        public DualCreditDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.EarlyLearningSettingDescriptors
{

    [ExcludeFromCodeCoverage]
    public class EarlyLearningSettingDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public int EarlyLearningSettingDescriptorId { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class EarlyLearningSettingDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public EarlyLearningSettingDescriptorGetByIds() { }

        public EarlyLearningSettingDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class EarlyLearningSettingDescriptorPost : Resources.EarlyLearningSettingDescriptor.NE.EarlyLearningSettingDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class EarlyLearningSettingDescriptorPut : Resources.EarlyLearningSettingDescriptor.NE.EarlyLearningSettingDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class EarlyLearningSettingDescriptorDelete : IHasIdentifier
    {
        public EarlyLearningSettingDescriptorDelete() { }

        public EarlyLearningSettingDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.ImmigrantIndicatorDescriptors
{

    [ExcludeFromCodeCoverage]
    public class ImmigrantIndicatorDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public int ImmigrantIndicatorDescriptorId { get; set; }
        public string Namespace { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ImmigrantIndicatorDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public ImmigrantIndicatorDescriptorGetByIds() { }

        public ImmigrantIndicatorDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ImmigrantIndicatorDescriptorPost : Resources.ImmigrantIndicatorDescriptor.NE.ImmigrantIndicatorDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ImmigrantIndicatorDescriptorPut : Resources.ImmigrantIndicatorDescriptor.NE.ImmigrantIndicatorDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ImmigrantIndicatorDescriptorDelete : IHasIdentifier
    {
        public ImmigrantIndicatorDescriptorDelete() { }

        public ImmigrantIndicatorDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.PartCTransitionDelayReasonDescriptors
{

    [ExcludeFromCodeCoverage]
    public class PartCTransitionDelayReasonDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int PartCTransitionDelayReasonDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PartCTransitionDelayReasonDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public PartCTransitionDelayReasonDescriptorGetByIds() { }

        public PartCTransitionDelayReasonDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PartCTransitionDelayReasonDescriptorPost : Resources.PartCTransitionDelayReasonDescriptor.NE.PartCTransitionDelayReasonDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PartCTransitionDelayReasonDescriptorPut : Resources.PartCTransitionDelayReasonDescriptor.NE.PartCTransitionDelayReasonDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PartCTransitionDelayReasonDescriptorDelete : IHasIdentifier
    {
        public PartCTransitionDelayReasonDescriptorDelete() { }

        public PartCTransitionDelayReasonDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.PlacementTypeDescriptors
{

    [ExcludeFromCodeCoverage]
    public class PlacementTypeDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int PlacementTypeDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PlacementTypeDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public PlacementTypeDescriptorGetByIds() { }

        public PlacementTypeDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PlacementTypeDescriptorPost : Resources.PlacementTypeDescriptor.NE.PlacementTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PlacementTypeDescriptorPut : Resources.PlacementTypeDescriptor.NE.PlacementTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PlacementTypeDescriptorDelete : IHasIdentifier
    {
        public PlacementTypeDescriptorDelete() { }

        public PlacementTypeDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.PositionTitleDescriptors
{

    [ExcludeFromCodeCoverage]
    public class PositionTitleDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int PositionTitleDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PositionTitleDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public PositionTitleDescriptorGetByIds() { }

        public PositionTitleDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PositionTitleDescriptorPost : Resources.PositionTitleDescriptor.NE.PositionTitleDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PositionTitleDescriptorPut : Resources.PositionTitleDescriptor.NE.PositionTitleDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PositionTitleDescriptorDelete : IHasIdentifier
    {
        public PositionTitleDescriptorDelete() { }

        public PositionTitleDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.PostGraduateActivities
{

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityGetByExample
    {
        public Guid Id { get; set; }
        public int LocalEducationAgencyId { get; set; }
        public string PostGraduateActivityDescriptor { get; set; }
        public string PostGraduateActivityDeterminationDescriptor { get; set; }
        public short SchoolYear { get; set; }
        public string StudentUniqueId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityGetByIds : IHasIdentifiers<Guid>
    {
        public PostGraduateActivityGetByIds() { }

        public PostGraduateActivityGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityPost : Resources.PostGraduateActivity.NE.PostGraduateActivity
    {
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityPut : Resources.PostGraduateActivity.NE.PostGraduateActivity
    {
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDelete : IHasIdentifier
    {
        public PostGraduateActivityDelete() { }

        public PostGraduateActivityDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.PostGraduateActivityDescriptors
{

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int PostGraduateActivityDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public PostGraduateActivityDescriptorGetByIds() { }

        public PostGraduateActivityDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDescriptorPost : Resources.PostGraduateActivityDescriptor.NE.PostGraduateActivityDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDescriptorPut : Resources.PostGraduateActivityDescriptor.NE.PostGraduateActivityDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDescriptorDelete : IHasIdentifier
    {
        public PostGraduateActivityDescriptorDelete() { }

        public PostGraduateActivityDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.PostGraduateActivityDeterminationDescriptors
{

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDeterminationDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int PostGraduateActivityDeterminationDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDeterminationDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public PostGraduateActivityDeterminationDescriptorGetByIds() { }

        public PostGraduateActivityDeterminationDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDeterminationDescriptorPost : Resources.PostGraduateActivityDeterminationDescriptor.NE.PostGraduateActivityDeterminationDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDeterminationDescriptorPut : Resources.PostGraduateActivityDeterminationDescriptor.NE.PostGraduateActivityDeterminationDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class PostGraduateActivityDeterminationDescriptorDelete : IHasIdentifier
    {
        public PostGraduateActivityDeterminationDescriptorDelete() { }

        public PostGraduateActivityDeterminationDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.SectionDeliveryDescriptors
{

    [ExcludeFromCodeCoverage]
    public class SectionDeliveryDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int SectionDeliveryDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class SectionDeliveryDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public SectionDeliveryDescriptorGetByIds() { }

        public SectionDeliveryDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class SectionDeliveryDescriptorPost : Resources.SectionDeliveryDescriptor.NE.SectionDeliveryDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class SectionDeliveryDescriptorPut : Resources.SectionDeliveryDescriptor.NE.SectionDeliveryDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class SectionDeliveryDescriptorDelete : IHasIdentifier
    {
        public SectionDeliveryDescriptorDelete() { }

        public SectionDeliveryDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.SpecialEducationProgramDescriptors
{

    [ExcludeFromCodeCoverage]
    public class SpecialEducationProgramDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int SpecialEducationProgramDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class SpecialEducationProgramDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public SpecialEducationProgramDescriptorGetByIds() { }

        public SpecialEducationProgramDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class SpecialEducationProgramDescriptorPost : Resources.SpecialEducationProgramDescriptor.NE.SpecialEducationProgramDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class SpecialEducationProgramDescriptorPut : Resources.SpecialEducationProgramDescriptor.NE.SpecialEducationProgramDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class SpecialEducationProgramDescriptorDelete : IHasIdentifier
    {
        public SpecialEducationProgramDescriptorDelete() { }

        public SpecialEducationProgramDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.StudentEarlyLearningProgramAssociations
{

    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociationGetByExample
    {
        public DateTime BeginDate { get; set; }
        public string EarlyLearningSettingDescriptor { get; set; }
        public int EducationOrganizationId { get; set; }
        public Guid Id { get; set; }
        public int ProgramEducationOrganizationId { get; set; }
        public string ProgramName { get; set; }
        public string ProgramTypeDescriptor { get; set; }
        public string StudentUniqueId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociationGetByIds : IHasIdentifiers<Guid>
    {
        public StudentEarlyLearningProgramAssociationGetByIds() { }

        public StudentEarlyLearningProgramAssociationGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociationPost : Resources.StudentEarlyLearningProgramAssociation.NE.StudentEarlyLearningProgramAssociation
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociationPut : Resources.StudentEarlyLearningProgramAssociation.NE.StudentEarlyLearningProgramAssociation
    {
    }

    [ExcludeFromCodeCoverage]
    public class StudentEarlyLearningProgramAssociationDelete : IHasIdentifier
    {
        public StudentEarlyLearningProgramAssociationDelete() { }

        public StudentEarlyLearningProgramAssociationDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.NE.UnilateralRemovalDescriptors
{

    [ExcludeFromCodeCoverage]
    public class UnilateralRemovalDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public Guid Id { get; set; }
        public string Namespace { get; set; }
        public int UnilateralRemovalDescriptorId { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class UnilateralRemovalDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public UnilateralRemovalDescriptorGetByIds() { }

        public UnilateralRemovalDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class UnilateralRemovalDescriptorPost : Resources.UnilateralRemovalDescriptor.NE.UnilateralRemovalDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class UnilateralRemovalDescriptorPut : Resources.UnilateralRemovalDescriptor.NE.UnilateralRemovalDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class UnilateralRemovalDescriptorDelete : IHasIdentifier
    {
        public UnilateralRemovalDescriptorDelete() { }

        public UnilateralRemovalDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

