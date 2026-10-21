using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.ExceptionHandling;
using EdFi.Ods.Api.Providers;

namespace EdFi.Ods.Api.Common.ExceptionHandling.Edfixcrdc
{
    [ExcludeFromCodeCoverage]
    public class DatabaseMetadataProvider : IDatabaseMetadataProvider
    {
        public IndexDetails GetIndexDetails(string indexName)
        {
            IndexDetails indexDetails = null;

            IndexDetailsByName.TryGetValue(indexName, out indexDetails);

            return indexDetails;
        }

        private static readonly Dictionary<string, IndexDetails> IndexDetailsByName = new Dictionary<string, IndexDetails>(StringComparer.InvariantCultureIgnoreCase) {
            { "RestraintCategoryDescriptor_PK", new IndexDetails { IndexName = "RestraintCategoryDescriptor_PK", TableName = "RestraintCategoryDescriptor", ColumnNames = new List<string> { "RestraintCategoryDescriptorId" } } },
            { "FK_RestraintEventRestraintCategory_RestraintCategoryDescriptor", new IndexDetails { IndexName = "FK_RestraintEventRestraintCategory_RestraintCategoryDescriptor", TableName = "RestraintEventRestraintCategory", ColumnNames = new List<string> { "RestraintCategoryDescriptorId" } } },
            { "FK_RestraintEventRestraintCategory_RestraintEvent", new IndexDetails { IndexName = "FK_RestraintEventRestraintCategory_RestraintEvent", TableName = "RestraintEventRestraintCategory", ColumnNames = new List<string> { "RestraintEventIdentifier", "SchoolId", "StudentUSI" } } },
            { "RestraintEventRestraintCategory_PK", new IndexDetails { IndexName = "RestraintEventRestraintCategory_PK", TableName = "RestraintEventRestraintCategory", ColumnNames = new List<string> { "RestraintEventIdentifier", "SchoolId", "StudentUSI", "RestraintCategoryDescriptorId" } } },
        };
    }
}
