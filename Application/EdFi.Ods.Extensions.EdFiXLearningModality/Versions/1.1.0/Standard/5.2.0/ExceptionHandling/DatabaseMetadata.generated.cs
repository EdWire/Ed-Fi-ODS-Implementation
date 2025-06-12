using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using EdFi.Ods.Api.ExceptionHandling;
using EdFi.Ods.Api.Providers;

namespace EdFi.Ods.Api.Common.ExceptionHandling.EdFiXLearningModality
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
            { "ModalityTimeTypeDescriptor_PK", new IndexDetails { IndexName = "ModalityTimeTypeDescriptor_PK", TableName = "ModalityTimeTypeDescriptor", ColumnNames = new List<string> { "ModalityTimeTypeDescriptorId" } } },
            { "ModalityTypeDescriptor_PK", new IndexDetails { IndexName = "ModalityTypeDescriptor_PK", TableName = "ModalityTypeDescriptor", ColumnNames = new List<string> { "ModalityTypeDescriptorId" } } },
            { "FK_ProgramLearningModality_ModalityTimeTypeDescriptor", new IndexDetails { IndexName = "FK_ProgramLearningModality_ModalityTimeTypeDescriptor", TableName = "ProgramLearningModality", ColumnNames = new List<string> { "ModalityTimeTypeDescriptorId" } } },
            { "FK_ProgramLearningModality_ModalityTypeDescriptor", new IndexDetails { IndexName = "FK_ProgramLearningModality_ModalityTypeDescriptor", TableName = "ProgramLearningModality", ColumnNames = new List<string> { "ModalityTypeDescriptorId" } } },
            { "FK_ProgramLearningModality_Program", new IndexDetails { IndexName = "FK_ProgramLearningModality_Program", TableName = "ProgramLearningModality", ColumnNames = new List<string> { "EducationOrganizationId", "ProgramName", "ProgramTypeDescriptorId" } } },
            { "ProgramLearningModality_PK", new IndexDetails { IndexName = "ProgramLearningModality_PK", TableName = "ProgramLearningModality", ColumnNames = new List<string> { "EducationOrganizationId", "ProgramName", "ProgramTypeDescriptorId", "ModalityTypeDescriptorId" } } },
        };
    }
}
