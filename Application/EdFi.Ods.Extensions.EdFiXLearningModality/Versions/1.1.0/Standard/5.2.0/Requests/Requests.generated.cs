using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Attributes;

namespace EdFi.Ods.Api.Common.Models.Requests.EdFiXLearningModality.ModalityTimeTypeDescriptors
{

    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public string Description { get; set; }
        public DateTime EffectiveBeginDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public Guid Id { get; set; }
        public int ModalityTimeTypeDescriptorId { get; set; }
        public string Namespace { get; set; }
        public string ShortDescription { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public ModalityTimeTypeDescriptorGetByIds() { }

        public ModalityTimeTypeDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptorPost : Resources.ModalityTimeTypeDescriptor.EdFiXLearningModality.ModalityTimeTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptorPut : Resources.ModalityTimeTypeDescriptor.EdFiXLearningModality.ModalityTimeTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTimeTypeDescriptorDelete : IHasIdentifier
    {
        public ModalityTimeTypeDescriptorDelete() { }

        public ModalityTimeTypeDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

namespace EdFi.Ods.Api.Common.Models.Requests.EdFiXLearningModality.ModalityTypeDescriptors
{

    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptorGetByExample
    {
        public string CodeValue { get; set; }
        public string Description { get; set; }
        public DateTime EffectiveBeginDate { get; set; }
        public DateTime EffectiveEndDate { get; set; }
        public Guid Id { get; set; }
        public int ModalityTypeDescriptorId { get; set; }
        public string Namespace { get; set; }
        public string ShortDescription { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptorGetByIds : IHasIdentifiers<Guid>
    {
        public ModalityTypeDescriptorGetByIds() { }

        public ModalityTypeDescriptorGetByIds(params Guid[] ids)
        {
            Ids = new List<Guid>(ids);
        }

        public List<Guid> Ids { get; set; }
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptorPost : Resources.ModalityTypeDescriptor.EdFiXLearningModality.ModalityTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptorPut : Resources.ModalityTypeDescriptor.EdFiXLearningModality.ModalityTypeDescriptor
    {
    }

    [ExcludeFromCodeCoverage]
    public class ModalityTypeDescriptorDelete : IHasIdentifier
    {
        public ModalityTypeDescriptorDelete() { }

        public ModalityTypeDescriptorDelete(Guid id)
        {
            Id = id;
        }

        public Guid Id { get; set; }
    }
}

