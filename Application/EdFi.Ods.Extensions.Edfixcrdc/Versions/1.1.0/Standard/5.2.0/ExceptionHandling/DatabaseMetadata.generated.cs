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
            { "AlternativeStatusDescriptor_PK", new IndexDetails { IndexName = "AlternativeStatusDescriptor_PK", TableName = "AlternativeStatusDescriptor", ColumnNames = new List<string> { "AlternativeStatusDescriptorId" } } },
            { "ClassGroup_PK", new IndexDetails { IndexName = "ClassGroup_PK", TableName = "ClassGroup", ColumnNames = new List<string> { "ClassGroupName", "CommunityProviderId", "CommunityProviderLocationId", "SpecialNeedsProvidedIndicator" } } },
            { "FK_ClassGroup_CommunityProviderLocation", new IndexDetails { IndexName = "FK_ClassGroup_CommunityProviderLocation", TableName = "ClassGroup", ColumnNames = new List<string> { "CommunityProviderId", "CommunityProviderLocationId" } } },
            { "FK_ClassGroup_ServiceDescriptor", new IndexDetails { IndexName = "FK_ClassGroup_ServiceDescriptor", TableName = "ClassGroup", ColumnNames = new List<string> { "ServiceDescriptorId" } } },
            { "UX_ClassGroup_Id", new IndexDetails { IndexName = "UX_ClassGroup_Id", TableName = "ClassGroup", ColumnNames = new List<string> { "Id" } } },
            { "ClassGroupCourse_PK", new IndexDetails { IndexName = "ClassGroupCourse_PK", TableName = "ClassGroupCourse", ColumnNames = new List<string> { "ClassGroupName", "CommunityProviderId", "CommunityProviderLocationId", "SpecialNeedsProvidedIndicator", "CourseCode", "EducationOrganizationId" } } },
            { "FK_ClassGroupCourse_ClassGroup", new IndexDetails { IndexName = "FK_ClassGroupCourse_ClassGroup", TableName = "ClassGroupCourse", ColumnNames = new List<string> { "ClassGroupName", "CommunityProviderId", "CommunityProviderLocationId", "SpecialNeedsProvidedIndicator" } } },
            { "FK_ClassGroupCourse_Course", new IndexDetails { IndexName = "FK_ClassGroupCourse_Course", TableName = "ClassGroupCourse", ColumnNames = new List<string> { "CourseCode", "EducationOrganizationId" } } },
            { "ClassGroupMeetingTime_PK", new IndexDetails { IndexName = "ClassGroupMeetingTime_PK", TableName = "ClassGroupMeetingTime", ColumnNames = new List<string> { "ClassGroupName", "CommunityProviderId", "CommunityProviderLocationId", "SpecialNeedsProvidedIndicator", "MeetingDayDescriptorId", "StartTime", "StopTime" } } },
            { "FK_ClassGroupMeetingTime_ClassGroup", new IndexDetails { IndexName = "FK_ClassGroupMeetingTime_ClassGroup", TableName = "ClassGroupMeetingTime", ColumnNames = new List<string> { "ClassGroupName", "CommunityProviderId", "CommunityProviderLocationId", "SpecialNeedsProvidedIndicator" } } },
            { "FK_ClassGroupMeetingTime_MeetingDayDescriptor", new IndexDetails { IndexName = "FK_ClassGroupMeetingTime_MeetingDayDescriptor", TableName = "ClassGroupMeetingTime", ColumnNames = new List<string> { "MeetingDayDescriptorId" } } },
            { "CommunityProviderLocation_PK", new IndexDetails { IndexName = "CommunityProviderLocation_PK", TableName = "CommunityProviderLocation", ColumnNames = new List<string> { "CommunityProviderId", "CommunityProviderLocationId" } } },
            { "FK_CommunityProviderLocation_AddressTypeDescriptor", new IndexDetails { IndexName = "FK_CommunityProviderLocation_AddressTypeDescriptor", TableName = "CommunityProviderLocation", ColumnNames = new List<string> { "AddressTypeDescriptorId" } } },
            { "FK_CommunityProviderLocation_CommunityProvider", new IndexDetails { IndexName = "FK_CommunityProviderLocation_CommunityProvider", TableName = "CommunityProviderLocation", ColumnNames = new List<string> { "CommunityProviderId" } } },
            { "FK_CommunityProviderLocation_StateAbbreviationDescriptor", new IndexDetails { IndexName = "FK_CommunityProviderLocation_StateAbbreviationDescriptor", TableName = "CommunityProviderLocation", ColumnNames = new List<string> { "StateAbbreviationDescriptorId" } } },
            { "UX_CommunityProviderLocation_Id", new IndexDetails { IndexName = "UX_CommunityProviderLocation_Id", TableName = "CommunityProviderLocation", ColumnNames = new List<string> { "Id" } } },
            { "CommunityProviderLocationInstructionalCalendar_PK", new IndexDetails { IndexName = "CommunityProviderLocationInstructionalCalendar_PK", TableName = "CommunityProviderLocationInstructionalCalendar", ColumnNames = new List<string> { "CommunityProviderId", "CommunityProviderLocationId" } } },
            { "FK_CommunityProviderLocationInstructionalCalendar_SchoolYearType", new IndexDetails { IndexName = "FK_CommunityProviderLocationInstructionalCalendar_SchoolYearType", TableName = "CommunityProviderLocationInstructionalCalendar", ColumnNames = new List<string> { "SchoolYear" } } },
            { "MeetingDayDescriptor_PK", new IndexDetails { IndexName = "MeetingDayDescriptor_PK", TableName = "MeetingDayDescriptor", ColumnNames = new List<string> { "MeetingDayDescriptorId" } } },
            { "ProgramCostDescriptor_PK", new IndexDetails { IndexName = "ProgramCostDescriptor_PK", TableName = "ProgramCostDescriptor", ColumnNames = new List<string> { "ProgramCostDescriptorId" } } },
            { "FK_ProgramExtension_ProgramCostDescriptor", new IndexDetails { IndexName = "FK_ProgramExtension_ProgramCostDescriptor", TableName = "ProgramExtension", ColumnNames = new List<string> { "ProgramCostDescriptorId" } } },
            { "ProgramExtension_PK", new IndexDetails { IndexName = "ProgramExtension_PK", TableName = "ProgramExtension", ColumnNames = new List<string> { "EducationOrganizationId", "ProgramName", "ProgramTypeDescriptorId" } } },
            { "RestraintCategoryDescriptor_PK", new IndexDetails { IndexName = "RestraintCategoryDescriptor_PK", TableName = "RestraintCategoryDescriptor", ColumnNames = new List<string> { "RestraintCategoryDescriptorId" } } },
            { "FK_RestraintEventRestraintCategory_RestraintCategoryDescriptor", new IndexDetails { IndexName = "FK_RestraintEventRestraintCategory_RestraintCategoryDescriptor", TableName = "RestraintEventRestraintCategory", ColumnNames = new List<string> { "RestraintCategoryDescriptorId" } } },
            { "FK_RestraintEventRestraintCategory_RestraintEvent", new IndexDetails { IndexName = "FK_RestraintEventRestraintCategory_RestraintEvent", TableName = "RestraintEventRestraintCategory", ColumnNames = new List<string> { "RestraintEventIdentifier", "SchoolId", "StudentUSI" } } },
            { "RestraintEventRestraintCategory_PK", new IndexDetails { IndexName = "RestraintEventRestraintCategory_PK", TableName = "RestraintEventRestraintCategory", ColumnNames = new List<string> { "RestraintEventIdentifier", "SchoolId", "StudentUSI", "RestraintCategoryDescriptorId" } } },
            { "FK_SchoolExtension_AlternativeStatusDescriptor", new IndexDetails { IndexName = "FK_SchoolExtension_AlternativeStatusDescriptor", TableName = "SchoolExtension", ColumnNames = new List<string> { "AlternativeStatusDescriptorId" } } },
            { "FK_SchoolExtension_UngradedDetailDescriptor", new IndexDetails { IndexName = "FK_SchoolExtension_UngradedDetailDescriptor", TableName = "SchoolExtension", ColumnNames = new List<string> { "UngradedDetailDescriptorId" } } },
            { "SchoolExtension_PK", new IndexDetails { IndexName = "SchoolExtension_PK", TableName = "SchoolExtension", ColumnNames = new List<string> { "SchoolId" } } },
            { "SchoolTechnology_PK", new IndexDetails { IndexName = "SchoolTechnology_PK", TableName = "SchoolTechnology", ColumnNames = new List<string> { "SchoolId" } } },
            { "FK_StudentClassGroupAssociation_ClassGroup", new IndexDetails { IndexName = "FK_StudentClassGroupAssociation_ClassGroup", TableName = "StudentClassGroupAssociation", ColumnNames = new List<string> { "ClassGroupName", "CommunityProviderId", "CommunityProviderLocationId", "SpecialNeedsProvidedIndicator" } } },
            { "FK_StudentClassGroupAssociation_ReasonExitedDescriptor", new IndexDetails { IndexName = "FK_StudentClassGroupAssociation_ReasonExitedDescriptor", TableName = "StudentClassGroupAssociation", ColumnNames = new List<string> { "ReasonExitedDescriptorId" } } },
            { "FK_StudentClassGroupAssociation_Student", new IndexDetails { IndexName = "FK_StudentClassGroupAssociation_Student", TableName = "StudentClassGroupAssociation", ColumnNames = new List<string> { "StudentUSI" } } },
            { "StudentClassGroupAssociation_PK", new IndexDetails { IndexName = "StudentClassGroupAssociation_PK", TableName = "StudentClassGroupAssociation", ColumnNames = new List<string> { "BeginDate", "ClassGroupName", "CommunityProviderId", "CommunityProviderLocationId", "SpecialNeedsProvidedIndicator", "StudentUSI" } } },
            { "UX_StudentClassGroupAssociation_Id", new IndexDetails { IndexName = "UX_StudentClassGroupAssociation_Id", TableName = "StudentClassGroupAssociation", ColumnNames = new List<string> { "Id" } } },
            { "FK_StudentCommunityProviderLocationAssociation_CommunityProviderLocation", new IndexDetails { IndexName = "FK_StudentCommunityProviderLocationAssociation_CommunityProviderLocation", TableName = "StudentCommunityProviderLocationAssociation", ColumnNames = new List<string> { "CommunityProviderId", "CommunityProviderLocationId" } } },
            { "FK_StudentCommunityProviderLocationAssociation_ReasonExitedDescriptor", new IndexDetails { IndexName = "FK_StudentCommunityProviderLocationAssociation_ReasonExitedDescriptor", TableName = "StudentCommunityProviderLocationAssociation", ColumnNames = new List<string> { "ReasonExitedDescriptorId" } } },
            { "FK_StudentCommunityProviderLocationAssociation_Student", new IndexDetails { IndexName = "FK_StudentCommunityProviderLocationAssociation_Student", TableName = "StudentCommunityProviderLocationAssociation", ColumnNames = new List<string> { "StudentUSI" } } },
            { "StudentCommunityProviderLocationAssociation_PK", new IndexDetails { IndexName = "StudentCommunityProviderLocationAssociation_PK", TableName = "StudentCommunityProviderLocationAssociation", ColumnNames = new List<string> { "BeginDate", "CommunityProviderId", "CommunityProviderLocationId", "StudentUSI" } } },
            { "UX_StudentCommunityProviderLocationAssociation_Id", new IndexDetails { IndexName = "UX_StudentCommunityProviderLocationAssociation_Id", TableName = "StudentCommunityProviderLocationAssociation", ColumnNames = new List<string> { "Id" } } },
            { "UngradedDetailDescriptor_PK", new IndexDetails { IndexName = "UngradedDetailDescriptor_PK", TableName = "UngradedDetailDescriptor", ColumnNames = new List<string> { "UngradedDetailDescriptorId" } } },
        };
    }
}
