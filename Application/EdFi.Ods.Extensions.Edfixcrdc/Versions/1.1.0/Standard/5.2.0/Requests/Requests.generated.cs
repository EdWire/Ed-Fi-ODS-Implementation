using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.Attributes;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Attributes;

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

