SET NOCOUNT ON;

DROP TABLE IF EXISTS #edfi_LanguageDescriptors;

CREATE TABLE #edfi_Descriptors
(
	[DescriptorType] [nvarchar] (100) NOT NULL,
	[DescriptorTypeSchema] [nvarchar] (20) NOT NULL,
	[EdFiCodeValue] [nvarchar] (50) not null,
	[EdFiNamespace] [nvarchar] (255) not null,
	[EdFiShortDescription] [nvarchar] (75) null,
	[EdFiDescription] [nvarchar] (1024) null
) on [PRIMARY]
go
alter table #edfi_Descriptors add constraint [pk_edfiDescriptors] primary key clustered ([DescriptorType], [EdFiCodeValue], [EdFiNamespace]) on [PRIMARY]
go


insert #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) values (N'ProgramTypeDescriptor', N'edfi', N'Kansas Parents as Teachers Program', N'uri://ksde.org/ProgramTypeDescriptor', N'Kansas Parents as Teachers Program', N'Kansas Parents as Teachers Program')
go
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ProgramTypeDescriptor', N'edfi', N'Kansas Pre-K Pilot Program', N'uri://ksde.org/ProgramTypeDescriptor', N'Kansas Pre-K Pilot Program', N'Kansas Pre-K Pilot Program')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'01', N'uri://ksde.org/AcademicSubjectDescriptor', N'English Language and Literature (secondary)', N'English Language and Literature (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'02', N'uri://ksde.org/AcademicSubjectDescriptor', N'Mathematics (secondary)', N'Mathematics (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'03', N'uri://ksde.org/AcademicSubjectDescriptor', N'Life and Physical Sciences (secondary)', N'Life and Physical Sciences (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'04', N'uri://ksde.org/AcademicSubjectDescriptor', N'Social Sciences and History (secondary)', N'Social Sciences and History (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'05', N'uri://ksde.org/AcademicSubjectDescriptor', N'Fine and Performing Arts (secondary)', N'Fine and Performing Arts (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'06', N'uri://ksde.org/AcademicSubjectDescriptor', N'World Language and Literature (secondary)', N'World Language and Literature (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'07', N'uri://ksde.org/AcademicSubjectDescriptor', N'Religious Education and Theology (secondary)', N'Religious Education and Theology (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'08', N'uri://ksde.org/AcademicSubjectDescriptor', N'Physical, Health, and Safety Education (secondary)', N'Physical, Health, and Safety Education (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'09', N'uri://ksde.org/AcademicSubjectDescriptor', N'Military Science (secondary)', N'Military Science (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'10', N'uri://ksde.org/AcademicSubjectDescriptor', N'Computer and Information Sciences (secondary)', N'Computer and Information Sciences (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'11', N'uri://ksde.org/AcademicSubjectDescriptor', N'Communications and Audio/Visual Technology (second', N'Communications and Audio/Visual Technology (second')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'12', N'uri://ksde.org/AcademicSubjectDescriptor', N'Business and Marketing (secondary)', N'Business and Marketing (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'13', N'uri://ksde.org/AcademicSubjectDescriptor', N'Manufacturing (secondary)', N'Manufacturing (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'14', N'uri://ksde.org/AcademicSubjectDescriptor', N'Health Care Sciences (secondary)', N'Health Care Sciences (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'15', N'uri://ksde.org/AcademicSubjectDescriptor', N'Public, Protective, and Government Service (second', N'Public, Protective, and Government Service (second')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'16', N'uri://ksde.org/AcademicSubjectDescriptor', N'Hospitality and Tourism (secondary)', N'Hospitality and Tourism (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'17', N'uri://ksde.org/AcademicSubjectDescriptor', N'Architecture and Construction (secondary)', N'Architecture and Construction (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'18', N'uri://ksde.org/AcademicSubjectDescriptor', N'Agriculture, Food, and Natural Resources (secondar', N'Agriculture, Food, and Natural Resources (secondar')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'19', N'uri://ksde.org/AcademicSubjectDescriptor', N'Human Services (secondary)', N'Human Services (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'20', N'uri://ksde.org/AcademicSubjectDescriptor', N'Transportation, Distribution and Logistics (second', N'Transportation, Distribution and Logistics (second')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'21', N'uri://ksde.org/AcademicSubjectDescriptor', N'Engineering and Technology (secondary)', N'Engineering and Technology (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'22', N'uri://ksde.org/AcademicSubjectDescriptor', N'Miscellaneous (secondary)', N'Miscellaneous (secondary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'30', N'uri://ksde.org/AcademicSubjectDescriptor', N'Art, AV Technology, and Communications Cluster', N'Art, AV Technology, and Communications Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'31', N'uri://ksde.org/AcademicSubjectDescriptor', N'Information Technology Cluster', N'Information Technology Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'32', N'uri://ksde.org/AcademicSubjectDescriptor', N'Business Management and Administration Cluster', N'Business Management and Administration Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'33', N'uri://ksde.org/AcademicSubjectDescriptor', N'Finance Cluster', N'Finance Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'34', N'uri://ksde.org/AcademicSubjectDescriptor', N'Hospitality and Tourism Cluster', N'Hospitality and Tourism Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'35', N'uri://ksde.org/AcademicSubjectDescriptor', N'Marketing Cluster', N'Marketing Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'36', N'uri://ksde.org/AcademicSubjectDescriptor', N'Health Sciences Cluster', N'Health Sciences Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'37', N'uri://ksde.org/AcademicSubjectDescriptor', N'Agriculture, Food, and Natural Resources Cluster', N'Agriculture, Food, and Natural Resources Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'38', N'uri://ksde.org/AcademicSubjectDescriptor', N'Architecture and Construction Cluster', N'Architecture and Construction Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'39', N'uri://ksde.org/AcademicSubjectDescriptor', N'Manufacturing Cluster', N'Manufacturing Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'40', N'uri://ksde.org/AcademicSubjectDescriptor', N'Transportation, Distribution, and Logistics Cluste', N'Transportation, Distribution, and Logistics Cluste')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'41', N'uri://ksde.org/AcademicSubjectDescriptor', N'Science, Technology, Engineering, and Mathematics ', N'Science, Technology, Engineering, and Mathematics ')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'42', N'uri://ksde.org/AcademicSubjectDescriptor', N'Education and Training Cluster', N'Education and Training Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'43', N'uri://ksde.org/AcademicSubjectDescriptor', N'Government and Public Administration Cluster', N'Government and Public Administration Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'44', N'uri://ksde.org/AcademicSubjectDescriptor', N'Law, Public Safety, and Security Cluster', N'Law, Public Safety, and Security Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'45', N'uri://ksde.org/AcademicSubjectDescriptor', N'Human Services Cluster', N'Human Services Cluster')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'51', N'uri://ksde.org/AcademicSubjectDescriptor', N'English Language and Literature (ms/jr. high)', N'English Language and Literature (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'52', N'uri://ksde.org/AcademicSubjectDescriptor', N'Mathematics (ms/jr. high)', N'Mathematics (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'53', N'uri://ksde.org/AcademicSubjectDescriptor', N'Life and Physical Sciences (ms/jr. high)', N'Life and Physical Sciences (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'54', N'uri://ksde.org/AcademicSubjectDescriptor', N'Social Sciences and History (ms/jr. high)', N'Social Sciences and History (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'55', N'uri://ksde.org/AcademicSubjectDescriptor', N'Fine and Performing Arts (ms/jr. high)', N'Fine and Performing Arts (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'56', N'uri://ksde.org/AcademicSubjectDescriptor', N'World Language and Literature (ms/jr. high)', N'World Language and Literature (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'57', N'uri://ksde.org/AcademicSubjectDescriptor', N'Religious Education and Theology (ms/jr. high)', N'Religious Education and Theology (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'58', N'uri://ksde.org/AcademicSubjectDescriptor', N'Physical, Health, and Safety Education (ms/jr. hig', N'Physical, Health, and Safety Education (ms/jr. hig')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'59', N'uri://ksde.org/AcademicSubjectDescriptor', N'Military Science (ms/jr. high)', N'Military Science (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'60', N'uri://ksde.org/AcademicSubjectDescriptor', N'Computer and Information Science (ms/jr. high)', N'Computer and Information Science (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'61', N'uri://ksde.org/AcademicSubjectDescriptor', N'Communications and Audio/Visual Technology (ms/jr.', N'Communications and Audio/Visual Technology (ms/jr.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'62', N'uri://ksde.org/AcademicSubjectDescriptor', N'Business and Marketing (ms/jr. high)', N'Business and Marketing (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'63', N'uri://ksde.org/AcademicSubjectDescriptor', N'Manufacturing (ms/jr. high)', N'Manufacturing (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'64', N'uri://ksde.org/AcademicSubjectDescriptor', N'Health Care Sciences (ms/jr. high)', N'Health Care Sciences (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'65', N'uri://ksde.org/AcademicSubjectDescriptor', N'Public, Protective, and Government Service (ms/jr.', N'Public, Protective, and Government Service (ms/jr.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'66', N'uri://ksde.org/AcademicSubjectDescriptor', N'Hospitality and Tourism (ms/jr. high)', N'Hospitality and Tourism (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'67', N'uri://ksde.org/AcademicSubjectDescriptor', N'Architecture and Construction (ms/jr. high)', N'Architecture and Construction (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'68', N'uri://ksde.org/AcademicSubjectDescriptor', N'Agriculture, Food, and Natural Resources (ms/jr. h', N'Agriculture, Food, and Natural Resources (ms/jr. h')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'69', N'uri://ksde.org/AcademicSubjectDescriptor', N'Human Services (ms/jr. high)', N'Human Services (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'70', N'uri://ksde.org/AcademicSubjectDescriptor', N'Transportation, Distribution and Logistics (ms/jr.', N'Transportation, Distribution and Logistics (ms/jr.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'71', N'uri://ksde.org/AcademicSubjectDescriptor', N'Engineering and Technology (ms/jr. high)', N'Engineering and Technology (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'72', N'uri://ksde.org/AcademicSubjectDescriptor', N'Miscellaneous (ms/jr. high)', N'Miscellaneous (ms/jr. high)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'80', N'uri://ksde.org/AcademicSubjectDescriptor', N'Elementary Self-Contained (elementary)', N'Elementary Self-Contained (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'81', N'uri://ksde.org/AcademicSubjectDescriptor', N'English Language and Literature (elementary)', N'English Language and Literature (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'82', N'uri://ksde.org/AcademicSubjectDescriptor', N'Mathematics (elementary)', N'Mathematics (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'83', N'uri://ksde.org/AcademicSubjectDescriptor', N'Life and Physical Sciences (elementary)', N'Life and Physical Sciences (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'84', N'uri://ksde.org/AcademicSubjectDescriptor', N'Social Sciences and History (elementary)', N'Social Sciences and History (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'85', N'uri://ksde.org/AcademicSubjectDescriptor', N'Fine and Performing Arts (elementary)', N'Fine and Performing Arts (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'86', N'uri://ksde.org/AcademicSubjectDescriptor', N'World Language and Literature (elementary)', N'World Language and Literature (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'87', N'uri://ksde.org/AcademicSubjectDescriptor', N'Religious Education and Theology (elementary)', N'Religious Education and Theology (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'88', N'uri://ksde.org/AcademicSubjectDescriptor', N'Physical, Health, and Safety Education (elementary', N'Physical, Health, and Safety Education (elementary')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'89', N'uri://ksde.org/AcademicSubjectDescriptor', N'Early Childhood (elementary)', N'Early Childhood (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'90', N'uri://ksde.org/AcademicSubjectDescriptor', N'Computer and Information Science (elementary)', N'Computer and Information Science (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AcademicSubjectDescriptor', N'edfi', N'92', N'uri://ksde.org/AcademicSubjectDescriptor', N'Miscellaneous (elementary)', N'Miscellaneous (elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'Clear test subject indicator', N'uri://ksde.org/AssessmentRequestDescriptor', N'Clear test subject indicator', N'Clear test subject indicator')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'COMPAGRIC - No Test in Power, Structural, and Tech', N'uri://ksde.org/AssessmentRequestDescriptor', N'COMPAGRIC - No Test in Power, Structural, and Tech', N'COMPAGRIC - No assessment, Power, Structural, and Technical Systems module only.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'COMPAGRIC - Test in Power, Structural, and Tech', N'uri://ksde.org/AssessmentRequestDescriptor', N'COMPAGRIC - Test in Power, Structural, and Tech', N'COMPAGRIC - Yes, test in this content area with Power, Structural, and Technical Systems module.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'General Assessment', N'uri://ksde.org/AssessmentRequestDescriptor', N'General Assessment', N'General Assessment')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'KELPA for current ESOL students only', N'uri://ksde.org/AssessmentRequestDescriptor', N'KELPA for current ESOL students only', N'KELPA for current ESOL students only')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'KELPA for ESOL program eligible student', N'uri://ksde.org/AssessmentRequestDescriptor', N'KELPA for ESOL program eligible student', N'KELPA for student who is ESOL program eligible, but not currently receiving ESOL program services')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'No test in this content area', N'uri://ksde.org/AssessmentRequestDescriptor', N'No test in this content area', N'No test in this content area')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'PLANTSYSTEMS - No Test in Horticulture Module', N'uri://ksde.org/AssessmentRequestDescriptor', N'PLANTSYSTEMS - No Test in Horticulture Module', N'PLANTSYSTEMS - No assessment, Horticulture module only.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'PLANTSYSTEMS - Test in Horticulture Module', N'uri://ksde.org/AssessmentRequestDescriptor', N'PLANTSYSTEMS - Test in Horticulture Module', N'PLANTSYSTEMS - Yes, test in this content area with Horticulture module.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'Yes test in this content area', N'uri://ksde.org/AssessmentRequestDescriptor', N'Yes test in this content area', N'Yes test in this content area')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'AssessmentRequestDescriptor', N'ks', N'Full-time virtual student', N'uri://ksde.org/AssessmentRequestDescriptor', N'Full-time virtual student', N'Full-time virtual student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarEventDescriptor', N'edfi', N'Holiday', N'uri://ksde.org/CalendarEventDescriptor', N'Holiday', N'Holiday')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarEventDescriptor', N'edfi', N'Instructional day', N'uri://ksde.org/CalendarEventDescriptor', N'Instructional day', N'Instructional day')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarEventDescriptor', N'edfi', N'Make-up day', N'uri://ksde.org/CalendarEventDescriptor', N'Make-up day', N'Make-up day')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarEventDescriptor', N'edfi', N'Other', N'uri://ksde.org/CalendarEventDescriptor', N'Other', N'Other')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarEventDescriptor', N'edfi', N'Student late arrival/early dismissal', N'uri://ksde.org/CalendarEventDescriptor', N'Student late arrival/early dismissal', N'Student late arrival/early dismissal')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarEventDescriptor', N'edfi', N'Staff Development or In-Service Day', N'uri://ksde.org/CalendarEventDescriptor', N'Staff Development or In-Service Day', N'Staff Development or In-Service Day')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarEventDescriptor', N'edfi', N'Inclement Weather Day', N'uri://ksde.org/CalendarEventDescriptor', N'Inclement Weather Day', N'Inclement Weather Day')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarTypeDescriptor', N'edfi', N'Student Specific', N'uri://ksde.org/CalendarTypeDescriptor', N'Student Specific', N'Student Specific')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarTypeDescriptor', N'edfi', N'IEP', N'uri://ksde.org/CalendarTypeDescriptor', N'IEP', N'IEP')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarTypeDescriptor', N'edfi', N'Grade Level', N'uri://ksde.org/CalendarTypeDescriptor', N'Grade Level', N'Grade Level')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarTypeDescriptor', N'edfi', N'School', N'uri://ksde.org/CalendarTypeDescriptor', N'School', N'School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CalendarTypeDescriptor', N'edfi', N'Staff', N'uri://ksde.org/CalendarTypeDescriptor', N'Staff', N'Staff')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'C', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'CTE Dual credit funded IN an approved pathway (HS Only)/Not Excel in CTE', N'CTE Dual credit funded IN an approved pathway (HS Only)/Not Excel in CTE')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'D', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'Dual credit NOT funded in a college program', N'Dual credit NOT funded in a college program')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'F', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'CTE credit/funded course IN an approved program/pathway', N'CTE credit/funded course IN an approved program/pathway (Technical/Application)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'L', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'CTE Dual credit IN an approved program/pathway/Excel in CTE only', N'CTE Dual credit IN an approved program/pathway/Excel in CTE only')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'N', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'Not dual credit/Regular course', N'Not dual credit/Regular course')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'R', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'CTE Dual credit NOT part of an approved program/pathway/Excel in CTE only', N'CTE Dual credit NOT part of an approved program/pathway/Excel in CTE only')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'T', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'CTE course NOT funded OR part of an approved Pathway (Local Program)', N'CTE course NOT funded OR part of an approved Pathway (Local Program)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CollegeCareerTypeDescriptor', N'ks', N'X', N'uri://ksde.org/CollegeCareerTypeDescriptor', N'CTE credit/not funded IN an approved program/pathway (Introductory level)', N'CTE credit/not funded IN an approved program/pathway (Introductory level)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseDeliveryTypeDescriptor', N'ks', N'D', N'uri://ksde.org/CourseDeliveryTypeDescriptor', N'Distance Learning', N'Distance Learning')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseDeliveryTypeDescriptor', N'ks', N'G', N'uri://ksde.org/CourseDeliveryTypeDescriptor', N'General', N'General')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseDeliveryTypeDescriptor', N'ks', N'M', N'uri://ksde.org/CourseDeliveryTypeDescriptor', N'Self-contained Multi', N'Self-contained Multi')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseDeliveryTypeDescriptor', N'ks', N'S', N'uri://ksde.org/CourseDeliveryTypeDescriptor', N'Self-contained Single', N'Self-contained Single')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseDeliveryTypeDescriptor', N'ks', N'V', N'uri://ksde.org/CourseDeliveryTypeDescriptor', N'Virtual', N'Virtual')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseLevelCharacteristicDescriptor', N'edfi', N'B', N'uri://ksde.org/CourseLevelCharacteristicDescriptor', N'Basic/Remedial', N'Basic/Remedial')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseLevelCharacteristicDescriptor', N'edfi', N'E', N'uri://ksde.org/CourseLevelCharacteristicDescriptor', N'Enriched/Advanced', N'Enriched/Advanced')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseLevelCharacteristicDescriptor', N'edfi', N'G', N'uri://ksde.org/CourseLevelCharacteristicDescriptor', N'General', N'General')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseLevelCharacteristicDescriptor', N'edfi', N'H', N'uri://ksde.org/CourseLevelCharacteristicDescriptor', N'Honors', N'Honors')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseLevelCharacteristicDescriptor', N'edfi', N'X', N'uri://ksde.org/CourseLevelCharacteristicDescriptor', N'No Specified Rigor', N'No Specified Rigor')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseProgramTypeDescriptor', N'ks', N'A', N'uri://ksde.org/CourseProgramTypeDescriptor', N'At-Risk', N'At-Risk')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseProgramTypeDescriptor', N'ks', N'E', N'uri://ksde.org/CourseProgramTypeDescriptor', N'ESOL', N'ESOL')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseProgramTypeDescriptor', N'ks', N'G', N'uri://ksde.org/CourseProgramTypeDescriptor', N'General', N'General')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseProgramTypeDescriptor', N'ks', N'M', N'uri://ksde.org/CourseProgramTypeDescriptor', N'Migrant', N'Migrant')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseProgramTypeDescriptor', N'ks', N'S', N'uri://ksde.org/CourseProgramTypeDescriptor', N'Special Education', N'Special Education')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseStatusDescriptor', N'ks', N'Completed (Fail)', N'uri://ksde.org/CourseStatusDescriptor', N'Completed (Fail)', N'Completed (Fail)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseStatusDescriptor', N'ks', N'Completed (Pass)', N'uri://ksde.org/CourseStatusDescriptor', N'Completed (Pass)', N'Completed (Pass)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseStatusDescriptor', N'ks', N'Enrolled', N'uri://ksde.org/CourseStatusDescriptor', N'Enrolled', N'Enrolled')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CourseStatusDescriptor', N'ks', N'Exited before course completion', N'uri://ksde.org/CourseStatusDescriptor', N'Exited before course completion', N'Exited before course completion')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1001', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Fashion, Textiles and Apparel', N'AAFCS - pre-PAC - Fashion, Textiles and Apparel')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1002', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Broad Field Family & Consumer Sciences', N'AAFCS - pre-PAC - Broad Field Family & Consumer Sciences')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1003', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Culinary Arts', N'AAFCS - pre-PAC - Culinary Arts')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1004', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Early Childhood Education', N'AAFCS - pre-PAC - Early Childhood Education')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1005', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Family & Community Services', N'AAFCS - pre-PAC - Family & Community Services')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1006', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Nutrition, Food & Wellness', N'AAFCS - pre-PAC - Nutrition, Food & Wellness')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1007', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Personal & Family Finance', N'AAFCS - pre-PAC - Personal & Family Finance')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1008', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Education Fundamentals', N'AAFCS - pre-PAC - Education Fundamentals')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1009', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - pre-PAC - Interior Design Fundamentals', N'AAFCS - pre-PAC - Interior Design Fundamentals')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1010', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ADDA - Certified Drafter', N'ADDA - Certified Drafter')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1011', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Campaign', N'Adobe Campaign')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1012', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Digital Publishing Suite', N'Adobe Digital Publishing Suite')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1013', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Dreamweaver', N'Adobe Dreamweaver')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1015', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Frame Maker', N'Adobe Frame Maker')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1016', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Illustrator', N'Adobe Illustrator')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1017', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe In-Design', N'Adobe In-Design')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1018', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Media Optimizer', N'Adobe Media Optimizer')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1019', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Photoshop', N'Adobe Photoshop')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1020', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Adobe Premier Pro', N'Adobe Premier Pro')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1021', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AHRI - HVAC Certifications', N'AHRI - HVAC Certifications')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1022', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Automobile Service Technician', N'ASE - Automobile Service Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1023', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Maintenance & Light Repair', N'ASE - Maintenance & Light Repair')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1024', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Master Automobile Service Technician', N'ASE - Master Automobile Service Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1025', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Mechanical & Electrical', N'ASE - Mechanical & Electrical')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1026', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Non-Structural Analysis & Damage Repair', N'ASE - Non-Structural Analysis & Damage Repair')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1027', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Painting & Refinishing', N'ASE - Painting & Refinishing')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1028', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Structural Analysis & Damage Repair', N'ASE - Structural Analysis & Damage Repair')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1029', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Student Certification (4 areas)', N'ASE - Student Certification (4 areas)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1030', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Student Certification Diesel (4 areas)', N'ASE - Student Certification Diesel (4 areas)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1031', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'MBA Research (ASK): Concepts of Business Management', N'MBA Research (ASK): Concepts of Business Management')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1032', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'MBA Research (ASK): Concepts of Finance', N'MBA Research (ASK): Concepts of Finance')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1033', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASK - MBA Research - Fundamental Business Concepts Certification', N'ASK - MBA Research - Fundamental Business Concepts Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1034', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASME - Section 9 Standards (6G Level)', N'ASME - Section 9 Standards (6G Level)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1035', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Auto Desk - Certification Program for: User, Professional, Specialist', N'Auto Desk - Certification Program for: User, Professional, Specialist')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1036', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AWS Certification', N'AWS Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1037', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AWS SENSE Certification', N'AWS SENSE Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1038', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Beef Quality Assurance', N'Beef Quality Assurance')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1039', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Am Red Cross/Am Heart Assoc: Cardiopulmonary Resus (CPR) Infant/Child', N'American Red Cross/American Heart Association: Cardiopulmonary Resuscitation (CPR) Infant/Child')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1040', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'CareerSafe - CyberSafe Safety Awareness Training', N'CareerSafe - CyberSafe Safety Awareness Training')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1041', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Certified Med Aide (CMA)', N'Certified Med Aide (CMA)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1042', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Certified Nurse Aide (CNA)', N'Certified Nurse Aide (CNA)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1043', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Certified Protection Officer', N'Certified Protection Officer')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1045', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Cisco Certified Network Associate - CCNA', N'Cisco Certified Network Associate - CCNA')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1046', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Cisco Certified Network Professional - CCNP', N'Cisco Certified Network Professional - CCNP')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1047', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Cisco Certified Internetwork Expert - CCIE', N'Cisco Certified Internetwork Expert - CCIE')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1048', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Cisco Certified Design Expert - CCDE', N'Cisco Certified Design Expert - CCDE')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1049', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Citrix Certified Associate - Networking', N'Citrix Certified Associate - Networking')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1050', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Commercial Driver''s License', N'Commercial Driver''s License')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1051', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'CompTIA A+', N'CompTIA A+')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1052', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'CompTIA Network+', N'CompTIA Network+')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1053', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'CompTIA Server+', N'CompTIA Server+')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1054', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'CompTIA Security+', N'CompTIA Security+')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1055', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'EKG Technician', N'EKG Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1056', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Emergency Medical Responder (EMR) (First Responder)', N'Emergency Medical Responder (EMR) (First Responder)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1057', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Emergency Medical Technician (EMT)', N'Emergency Medical Technician (EMT)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1058', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Energy Industry Fundamentals (CEWD)', N'Energy Industry Fundamentals (CEWD)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1059', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'EPA - Section 608 Certification', N'EPA - Section 608 Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1060', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'EPA - Section 609 Certification', N'EPA - Section 609 Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1061', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Fire Fighter Level 1', N'Fire Fighter Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1062', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'American Red Cross/American Heart Association: First Aid', N'American Red Cross/American Heart Association: First Aid')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1063', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Home Health Aide', N'Home Health Aide')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1064', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'HVAC Excellence - Core and Air Conditioning, Gas Heat & Electrical', N'HVAC Excellence - Core and Air Conditioning, Gas Heat & Electrical')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1065', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'HVAC Excellence - Core and Lt. Comm. Air Cond., Gas Heat & Electrical', N'HVAC Excellence - Core and Lt. Comm. Air Cond., Gas Heat & Electrical')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1066', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'HVAC Excellence - Core and Lt. Comm. Refrigeration & Electrical', N'HVAC Excellence - Core and Lt. Comm. Refrigeration & Electrical')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1067', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'I-CAR - Refinish Technician ProLevel 1', N'I-CAR - Refinish Technician ProLevel 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1068', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ICE Core & Commercial Refrigeration', N'ICE Core & Commercial Refrigeration')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1069', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ICE Core & Light Commercial Air Cond. & Heating', N'ICE Core & Light Commercial Air Cond. & Heating')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1070', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ICE Core & Res. Air Cond. & Heating', N'ICE Core & Res. Air Cond. & Heating')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1071', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Kansas Agriculture Skills and Competencies Certificate', N'Kansas Agriculture Skills and Competencies Certificate')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1072', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Kansas Plant Systems Skills and Competencies Certificate', N'Kansas Plant Systems Skills and Competencies Certificate')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1073', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Office Specialist', N'Microsoft Office Specialist')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1074', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Digital Literacy Certification', N'Microsoft Digital Literacy Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1075', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Technology Associate - MTA', N'Microsoft Technology Associate - MTA')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1076', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Certified Solutions Associate - MCSA', N'Microsoft Certified Solutions Associate - MCSA')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1077', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Certified Solutions Expert - MCSE', N'Microsoft Certified Solutions Expert - MCSE')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1078', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Certified Solutions Developer - MCSD', N'Microsoft Certified Solutions Developer - MCSD')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1079', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'MSSC - Certified Production Technician', N'MSSC - Certified Production Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1080', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NATE Core & Air Conditioning', N'NATE Core & Air Conditioning')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1081', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NATE Core & Air Distribution', N'NATE Core & Air Distribution')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1082', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NATE Core & Air-to-Air Heat Pumps', N'NATE Core & Air-to-Air Heat Pumps')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1083', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NATE Core & Gas or Oil Furnaces', N'NATE Core & Gas or Oil Furnaces')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1084', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NATE Core & Light Commercial/Commercial Refrigeration', N'NATE Core & Light Commercial/Commercial Refrigeration')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1085', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'National Health Science Assessment', N'National Health Science Assessment')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1086', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Natl Safe Tractor & Machinery Operation Prog (NSTMOP)', N'National Safe Tractor and Machinery Operation Program (NSTMOP) (tractor safety)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1087', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Carpentry Level 1', N'NCCER Core & Carpentry Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1088', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Concrete Finishing', N'NCCER Core & Concrete Finishing')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1089', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Construction Laborer', N'NCCER Core & Construction Laborer')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1090', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Electrical Level 1', N'NCCER Core & Electrical Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1091', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & HVAC Levels 1 & 2', N'NCCER Core & HVAC Levels 1 & 2')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1092', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Industrial Maintenance Level 1', N'NCCER Core & Industrial Maintenance Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1093', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Masonry Level 1', N'NCCER Core & Masonry Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1094', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Plumbing & Pipefitting Level 1', N'NCCER Core & Plumbing & Pipefitting Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1095', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Sheet Metal Level 1', N'NCCER Core & Sheet Metal Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1096', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NIMS Machining Level 1', N'NIMS Machining Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1097', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NIMS Metal Forming 1', N'NIMS Metal Forming 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1098', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'OSHA Safety Certification (10 Hour)', N'OSHA Safety Certification (10 Hour)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1099', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Paraprofessional Certification', N'Paraprofessional Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1100', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Pesticide Applicator Certification, Personal or Commercial', N'Pesticide Applicator Certification, Personal or Commercial')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1101', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Pharmacy Technician', N'Pharmacy Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1102', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Phlebotomy Technician', N'Phlebotomy Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1103', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Pork Quality Assurance', N'Pork Quality Assurance')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1104', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Pro-Start', N'Pro-Start')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1105', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Public Safety Telecommunications (911 Dispatching)', N'Public Safety Telecommunications (911 Dispatching)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1106', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ServSafe - Food Handlers', N'ServSafe - Food Handlers')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1107', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ServSafe - Manager', N'ServSafe - Manager')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1109', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'SMRP - Certified Maintenance & Reliability Technician', N'SMRP - Certified Maintenance & Reliability Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1110', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Solid Works Software Certification', N'Solid Works Software Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1111', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Telecommunications Apprentice Certification (ETA)', N'Telecommunications Apprentice Certification (ETA)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1112', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'WorkKeys', N'WorkKeys')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1114', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'cPass Comprehensive Agriculture', N'cPass Comprehensive Agriculture')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1115', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'cPass Power, Structural and Technical System Module', N'cPass Power, Structural and Technical System Module')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1116', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'cPass Animal Systems', N'cPass Animal Systems')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1117', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'cPass Plant Systems', N'cPass Plant Systems')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1118', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'cPass Horticulture Module', N'cPass Horticulture Module')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1120', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'EverFi', N'EverFi')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1121', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER4', N'NCCER4')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1122', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Dental Assistant', N'Dental Assistant')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1123', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'QuickBooks Certification', N'QuickBooks Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1124', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ICC Certification for Building Construction', N'ICC Certification for Building Construction')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1125', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NCCER Core & Carpentry Level 2', N'NCCER Core & Carpentry Level 2')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1126', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASK- MBA Research- Fundamental Marketing Concepts Certification', N'ASK- MBA Research- Fundamental Marketing Concepts Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1127', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Excel Certification', N'Microsoft Excel Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1128', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft PowerPoint Certification', N'Microsoft PowerPoint Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1129', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Access Certification', N'Microsoft Access Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1130', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Microsoft Word Certification', N'Microsoft Word Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1135', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'MBA Research (ASK): Concepts of Entrepreneurship', N'MBA Research (ASK): Concepts of Entrepreneurship')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1136', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'YQCA- Youth for the Quality Care of Animals', N'YQCA- Youth for the Quality Care of Animals')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1137', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Master Teacher - ParaEducator Assessment Parts 1 & 2 (Must take both)', N'Master Teacher - ParaEducator Assessment Parts 1 & 2 (Must take both)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1138', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'KCCTO: Foundation for Safe & Healthy Early Care Facilities: Module', N'KCCTO: Foundation for Safe & Healthy Early Care Facilities: Module (18 clock hours) (must complete all)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1140', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Apple Swift App Development Certification', N'Apple Swift App Development Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1141', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Child Development Associates - CDA', N'Child Development Associates - CDA')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1142', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'AAFCS - Interior Design Fundamentals', N'AAFCS - Interior Design Fundamentals')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1143', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Kansas Animal Science and Competencies Certificate', N'Kansas Animal Science and Competencies Certificate')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1144', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Dog Handler', N'Dog Handler')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1145', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'MS Office Specialist - Expert: A combination of two Certificates', N'Microsoft Office Specialist - Expert: A combination of two Certificates (Word - 1130, Excel - 1127, or Access - 1129)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1146', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Para Educator', N'Para Educator')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1147', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NC3 - Data Analytics/Harnessing the Power of Data', N'NC3 - Data Analytics/Harnessing the Power of Data')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1148', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ASE - Student Certification (2 areas)', N'ASE - Student Certification (2 areas)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1149', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ISCET Associate-Level CET Exam', N'ISCET Associate-Level CET Exam')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1150', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'ISCET Electronics Systems Associate (ESA) Exam', N'ISCET Electronics Systems Associate (ESA) Exam')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1151', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Google Analytics', N'Google Analytics')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1152', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Facebook Blueprint Certification', N'Facebook Blueprint Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1153', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'American Red Cross/American Heart Association: Basic Life Support (BLS)', N'American Red Cross/American Heart Association: Basic Life Support (BLS)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1155', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'FAA - General Exam and Aviation Maintenance Technician Airframe', N'Federal Aviation Administration (FAA) - General Exam and Aviation Maintenance Technician Airframe')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1156', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'FAA - General Exam and Aviation Maintenance Technician Powerplant', N'Federal Aviation Administration (FAA) - General Exam and Aviation Maintenance Technician Powerplant')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1157', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Health Coder Certification', N'Health Coder Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1158', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Health Information Technician', N'Health Information Technician')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1159', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Paramedic Certification', N'Paramedic Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1160', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Broadband Installer', N'Broadband Installer')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1161', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Am Red Cross/Am Heart Association: Advanced Life Support (ACLS/ALS)', N'American Red Cross/American Heart Association: Advanced Life Support (ACLS/ALS)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1162', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Am Red Cross/Am Heart Association: Automated External Defibrillator (AED)', N'American Red Cross/American Heart Association: Automated External Defibrillator (AED)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1163', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Am Red Cross/Am Heart Association: Cardiopulmonary Resuscitation (CPR)', N'American Red Cross/American Heart Association: Cardiopulmonary Resuscitation (CPR)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1164', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Am Red Cross/Am Heart Association: Pediatric Adv Life & Support (PALS)', N'American Red Cross/American Heart Association: Pediatric Advanced Life & Support (PALS)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1165', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Local Fire Departments: Fire Fighter - Level 2', N'Local Fire Departments: Fire Fighter - Level 2')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1166', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'NHA, AMCA: Certified Patient Care Technician (CPCT/A)', N'NHA, AMCA: Certified Patient Care Technician (CPCT/A)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1167', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Biotility - Applied Biotech Training: Biotechnician Assist Cred (BACE)', N'Biotility - Applied Biotech Training: Biotechnician Assistant Credential (BACE)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1168', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Biosci Core Skill Institute (BCSI): Aseptic Technique (lab bench level)', N'Bioscience Core Skill Institute (BCSI): Aseptic Technique (lab bench level)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1169', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Bioscience Core Skill Institute (BCSI): Essential 5', N'Bioscience Core Skill Institute (BCSI): Essential 5')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1170', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Bioscience Core Skill Institute (BCSI): Numeracy', N'Bioscience Core Skill Institute (BCSI): Numeracy')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1171', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Bioscience Core Skill Institute (BCSI): Safety - Hazard Assessment', N'Bioscience Core Skill Institute (BCSI): Safety - Hazard Assessment')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1172', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Bioscience Core Skill Institute (BCSI): Small Volume Metrology', N'Bioscience Core Skill Institute (BCSI): Small Volume Metrology')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1173', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'DOT: Hazardous Materials Transportation', N'DOT: Hazardous Materials Transportation')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'CTECertificationEarnedDescriptor', N'ks', N'1174', N'uri://ksde.org/CTECertificationEarnedDescriptor', N'Fundamental Payroll Certification (FPC)', N'Fundamental Payroll Certification (FPC)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'1', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to a public school in the same district', N'Transfer to a public school in the same district')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'10', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Student death', N'Student death')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'11', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Student illness', N'Student illness')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'12', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Student expulsion (or long-term suspension)', N'Student expulsion (or long-term suspension)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'13', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Reached maximum age for services', N'Reached maximum age for services')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'14', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Discontinued schooling', N'Discontinued schooling (including preschoolers/Kindergartners who are removed from schooling by parents).')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'15', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to a juvenile or adult correctional facility, diploma provided', N'Transfer to a juvenile or adult correctional facility where diploma completion services are provided.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'16', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Moved within the US, not known to be enrolled in school', N'Moved within the US, not known to be enrolled in school')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'17', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Unknown', N'Unknown')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'18', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Student data claimed in error by an ASGT record', N'Student data claimed in error by an ASGT record')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'19', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to a GED completion program', N'Transfer to a GED completion program')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'2', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to a public school in a different district in Kansas', N'Transfer to a public school in a different district in Kansas')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'20', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to juvenile or adult correctional facility, diploma not provided', N'Transferred to a juvenile or adult correctional facility where diploma completion services are not provided')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'21', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Student moved to another country, may or may not be continuing', N'Student moved to another country, may or may not be continuing')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'22', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Student with disabilities who met graduation requirements for reg diploma', N'Student with disabilities who met the district graduation requirements for a regular diploma, but is remaining in school to receive transitional services deemed necessary by the IEP team')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'23', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Student with an extended absence at the beginning of the school year', N'Student with an extended absence at the beginning of the school year (through September 30), planning to return')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'3', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to a public school in a different state', N'Transfer to a public school in a different state')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'4', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to an accredited private school in Kansas or in a different state', N'Transfer to an accredited private school in Kansas or in a different state')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'5', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to non-accredited private school in KS or in a different state', N'Transfer to non-accredited private school in Kansas or in a different state')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'6', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Transfer to home schooling', N'Transfer to home schooling')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'8', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Graduated with regular diploma', N'Graduated with regular diploma')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'98', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Unresolved Exit (KSDE use only)', N'Unresolved Exit (KSDE use only)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ExitWithdrawTypeDescriptor', N'edfi', N'99', N'uri://ksde.org/ExitWithdrawTypeDescriptor', N'Undo a previously submitted EXIT Record', N'Undo a previously submitted EXIT Record')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'Both Title III and State ESOL/Bilingual Funded', N'uri://ksde.org/FundingSourceDescriptor', N'Both Title III and State ESOL/Bilingual Funded', N'Both Title III and State ESOL/Bilingual Funded.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'ESOL program eligible', N'uri://ksde.org/FundingSourceDescriptor', N'ESOL program eligible', N'ESOL program eligible, based on an English language proficiency test, but not currently receiving ESOL program services. Example: Parents that have waived their child out of ESOL services, but the district is still obligated to provide ESOL support and tested with KELPA.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'Monitored', N'uri://ksde.org/FundingSourceDescriptor', N'Monitored', N'Monitored, for a student scoring proficient on last year''s KELPA and is not receiving EL support minutes(transitional year not chosen) OR is in second year monitored status. For EOYA, D43: ESOL/Bilingual Program Ending Date is required and D44: ESOL/Bilingual Student Contact Minutes must be blank.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'Not an ESOL eligible student', N'uri://ksde.org/FundingSourceDescriptor', N'Not an ESOL eligible student', N'Not an ESOL eligible student and not an ESOL monitored student.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'Optional Transitional year', N'uri://ksde.org/FundingSourceDescriptor', N'Optional Transitional year', N'Optional Transitional year, for a student scoring 3/Proficient on last year''s KELPA, but services are still needed for EL support. If EL services are not provided, select monitored status. Minutes must be provided and entered in field D44: ESOL/Bilingual Student Contact Minutes and the program ending date must be entered in D43: ESOL/Bilingual Program Ending Date. A transitional student will either be placed on monitored status the following year and remain for two years or becomes eligible to re-enter the ESOL program, receive services and testing requirements.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'Receives ESOL services and not funded', N'uri://ksde.org/FundingSourceDescriptor', N'Receives ESOL services and not funded', N'Receives ESOL services and not funded with Title III and/or State ESOL Funding.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'State ESOL/Bilingual Funded', N'uri://ksde.org/FundingSourceDescriptor', N'State ESOL/Bilingual Funded', N'State ESOL/Bilingual Funded.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'FundingSourceDescriptor', N'ks', N'Title III Funded', N'uri://ksde.org/FundingSourceDescriptor', N'Title III Funded', N'Title III Funded.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ImmigrantStudentDescriptor', N'ks', N'Yes and receiving Title III Immigrant Services', N'uri://ksde.org/ImmigrantStudentDescriptor', N'Yes, and receiving Title III Immigrant Services', N'Yes, and receiving Title III Immigrant Services')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'ImmigrantStudentDescriptor', N'ks', N'Yes but not receiving Title III Immigrant Services', N'uri://ksde.org/ImmigrantStudentDescriptor', N'Yes, but not receiving Title III Immigrant Services', N'Yes, but not receiving Title III Immigrant Services')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'Content Classes with integrated ESL support', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'Content Classes with integrated ESL support', N'This approach makes use of instructional materials, learning tasks, and classroom techniques from academic content areas as the vehicle for developing language, content, cognitive and study skills. English is used as the medium of instruction.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'Dual Language or Two-way Immersion', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'Dual Language or Two-way Immersion', N'The goal of these bilingual programs is for students to develop language proficiency in two languages by receiving instruction in English and another language in a classroom that usually consists of half native English-speakers and half native speakers of the other language.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'ESL or ELD', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'ESL or ELD English as a Second Language or English Language Development', N'A program of techniques, methodology and special curriculum designed to teach EL students English language skills, which may include listening, speaking, reading, writing, study skills, content vocabulary, and cultural orientation. ESL instruction is usually in English with little use of native language.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'Maintenance Bilingual Education (MBE)', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'Maintenance Bilingual Education', N'MBE, also referred to as late-exit bilingual education, is a program that uses two languages, the student''s primary language and English, as a means of instruction. The instruction builds upon the student''s primary language skills and develops and expands the English language skills of each student to enable him or her to achieve proficiency in both languages, while providing access to the content areas.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'Newcomer programs', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'Newcomer programs', N'Newcomer programs are separate, relatively self-contained educational interventions designed to meet the academic and transitional needs of newly arrived immigrants. Typically, students attend these programs before they enter more traditional interventions (e.g., English language development programs or mainstream classrooms with supplemental ESL instruction).')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'Sheltered English Instruction', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'Sheltered English Instruction', N'An instructional approach used to make academic instruction in English understandable to EL students. In the sheltered classroom, teachers use physical activities, visual aids, and the environment to teach vocabulary for concept development in mathematics, science, social studies, and other subjects.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'Submersion Program', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'Submersion Program', N'A submersion program places EL students in a regular English-only program with no support services on the theory that they will pick up English naturally. This program should not be confused with a structured English immersion program.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LanguageInstructionProgramTypeDescriptor', N'ks', N'Transitional or Early-Exit Bilingual Education', N'uri://ksde.org/LanguageInstructionProgramTypeDescriptor', N'Transitional Bilingual Education or Early-Exit Bilingual Education', N'This program utilizes a student''s primary language in instruction. The program maintains and develops skills in the primary language and culture while introducing, maintaining, and developing skills in English. The primary purpose of a TBE program is to facilitate the EL student''s transition to an all English instructional program while receiving academic subject instruction in the native language to the extent necessary.')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Area Vocational Technical Schools', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Area Vocational Technical Schools', N'Area Vocational Technical Schools')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Colleges and Universities', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Colleges and Universities', N'Colleges and Universities')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Community Colleges', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Community Colleges', N'Community Colleges')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Correctional Facility', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Correctional Facility', N'Correctional Facility')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Day Care Centers', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Day Care Centers', N'Day Care Centers')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Early Childhood Programs', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Early Childhood Programs', N'Early Childhood Programs')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Infant Toddler Network', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Infant Toddler Network', N'Infant Toddler Network')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Interlocals', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Interlocals', N'Interlocals')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'ITV (*** no longer used ***)', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'ITV (*** no longer used ***)', N'ITV (*** no longer used ***)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Municipalities', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Municipalities', N'Municipalities')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Other', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Other', N'Other')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Private Accredited School Districts', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Private Accredited School Districts', N'Private Accredited School Districts')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Private Non-Accredited School Districts', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Private Non-Accredited School Districts', N'Private Non-Accredited School Districts')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Proprietary Schools', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Proprietary Schools', N'Proprietary Schools')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Public School Districts', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Public School Districts', N'Public School Districts')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Service Centers', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Service Centers', N'Service Centers')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Special Education Cooperatives', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Special Education Cooperatives', N'Special Education Cooperatives')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'Special Education Programs', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'Special Education Programs', N'Special Education Programs')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'State Agencies Accessing KSDE Data', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'State Agencies Accessing KSDE Data', N'State Agencies Accessing KSDE Data')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'LocalEducationAgencyCategoryDescriptor', N'edfi', N'State Schools', N'uri://ksde.org/LocalEducationAgencyCategoryDescriptor', N'State Schools', N'State Schools')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'MilitaryConnectedStudentDescriptor', N'ks', N'Active Duty', N'uri://ksde.org/MilitaryConnectedStudentDescriptor', N'Student is a dependent of a (full-time) member of the military.', N'Student is a dependent of a (full-time) member of the Army, Navy, Air Force, Space Force, Marine Corps, Coast Guard, or a member of the National Guard or Reserve Forces called to (full time) Active Duty at the time of submission per KS statute 72-5139(e).')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'MilitaryConnectedStudentDescriptor', N'ks', N'National Guard Or Reserve', N'uri://ksde.org/MilitaryConnectedStudentDescriptor', N'Student is a dependent of a member of reserve forces or national guard.', N'Student is a dependent of a traditional part-time status member of the National Guard or Reserve Forces (Army, Navy, Air Force, Space Force, Marine Corps or Coast Guard).')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'NeglectedDelinquentStudentDescriptor', N'ks', N'Neglected student', N'uri://ksde.org/NeglectedDelinquentStudentDescriptor', N'Neglected student', N'Neglected student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'NeglectedDelinquentStudentDescriptor', N'ks', N'Delinquent student', N'uri://ksde.org/NeglectedDelinquentStudentDescriptor', N'Delinquent student', N'Delinquent student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Accuracy at or Above, Rate at or Above Benchmark', N'uri://ksde.org/PerformanceLevelDescriptor', N'Accuracy at or Above Benchmark, Rate at or Above Benchmark', N'Accuracy at or Above Benchmark, Rate Below Benchmark')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Accuracy at or Above, Rate Below Benchmark', N'uri://ksde.org/PerformanceLevelDescriptor', N'Accuracy at or Above Benchmark, Rate Below Benchmark', N'Accuracy at or Above Benchmark, Rate Below Benchmark')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Accuracy Below, Rate at or Above Benchmark', N'uri://ksde.org/PerformanceLevelDescriptor', N'Accuracy Below Benchmark, Rate at or Above Benchmark', N'Accuracy Below Benchmark, Rate at or Above Benchmark')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Accuracy Below, Rate Below Benchmark', N'uri://ksde.org/PerformanceLevelDescriptor', N'Accuracy Below Benchmark, Rate Below Benchmark', N'Accuracy Below Benchmark, Rate Below Benchmark')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'At or Above Benchmark', N'uri://ksde.org/PerformanceLevelDescriptor', N'At or Above Benchmark', N'At or Above Benchmark')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Below Benchmark', N'uri://ksde.org/PerformanceLevelDescriptor', N'Below Benchmark', N'Below Benchmark')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Not Assessed', N'uri://ksde.org/PerformanceLevelDescriptor', N'Not Assessed', N'Not Assessed')
GO

INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Performance Level 1', N'uri://ksde.org/PerformanceLevelDescriptor', N'Performance Level 1', N'Performance Level 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Performance Level 2', N'uri://ksde.org/PerformanceLevelDescriptor', N'Performance Level 2', N'Performance Level 2')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Performance Level 3', N'uri://ksde.org/PerformanceLevelDescriptor', N'Performance Level 3', N'Performance Level 3')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Performance Level 4', N'uri://ksde.org/PerformanceLevelDescriptor', N'Performance Level 4', N'Performance Level 4')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Student exempt from testing', N'uri://ksde.org/PerformanceLevelDescriptor', N'Student exempt from testing', N'Student exempt from testing - must be approved by KSDE')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PerformanceLevelDescriptor', N'edfi', N'Student refused to test', N'uri://ksde.org/PerformanceLevelDescriptor', N'Student refused to test', N'Student refused to test')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'2-Year College', N'uri://ksde.org/PostGraduationPlansDescriptor', N'2-Year College', N'2-Year College')

GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'4-Year College of University', N'uri://ksde.org/PostGraduationPlansDescriptor', N'4-Year College of University', N'4-Year College of University')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'Employment', N'uri://ksde.org/PostGraduationPlansDescriptor', N'Employment', N'Employment')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'Military Service', N'uri://ksde.org/PostGraduationPlansDescriptor', N'Military Service', N'Military Service')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'Other Type of College/Other Postsecondary', N'uri://ksde.org/PostGraduationPlansDescriptor', N'Other Type of College/Other Postsecondary', N'Other Type of College/Other Postsecondary')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'Others', N'uri://ksde.org/PostGraduationPlansDescriptor', N'All Other Graduates/Or whom none of the other values apply', N'All Other Graduates/Or whom none of the other values apply')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'Parenting', N'uri://ksde.org/PostGraduationPlansDescriptor', N'Parenting', N'Parenting')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'PostGraduationPlansDescriptor', N'ks', N'Unemployment', N'uri://ksde.org/PostGraduationPlansDescriptor', N'Unemployment', N'Unemployment')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'QualifiedFor504Descriptor', N'ks', N'Currently a 504 qualified student', N'uri://ksde.org/QualifiedFor504Descriptor', N'Currently a 504 qualified student', N'Currently a 504 qualified student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'QualifiedFor504Descriptor', N'ks', N'Not 504 qualified but has been this school year', N'uri://ksde.org/QualifiedFor504Descriptor', N'Not currently a 504 qualified student but has been this school year', N'Not currently a 504 qualified student but has been this school year')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'QualifiedFor504Descriptor', N'ks', N'Not a 504 qualified student this school year', N'uri://ksde.org/QualifiedFor504Descriptor', N'Not a 504 qualified student and has not been this school year', N'Not a 504 qualified student and has not been this school year')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Adult/Post High School', N'uri://ksde.org/SchoolCategoryDescriptor', N'Adult/Post High School', N'Adult/Post High School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Central Office', N'uri://ksde.org/SchoolCategoryDescriptor', N'Central Office', N'Central Office')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Child Care (Pre-Elementary)', N'uri://ksde.org/SchoolCategoryDescriptor', N'Child Care (Pre-Elementary)', N'Child Care (Pre-Elementary)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Early Childhood Program - Community Preschool or C', N'uri://ksde.org/SchoolCategoryDescriptor', N'Early Childhood Program - Community Preschool or C', N'Early Childhood Program - Community Preschool or C')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Early Childhood Program - Early Head Start', N'uri://ksde.org/SchoolCategoryDescriptor', N'Early Childhood Program - Early Head Start', N'Early Childhood Program - Early Head Start')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Early Childhood Program - General', N'uri://ksde.org/SchoolCategoryDescriptor', N'Early Childhood Program - General', N'Early Childhood Program - General')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Early Childhood Program - Head Start', N'uri://ksde.org/SchoolCategoryDescriptor', N'Early Childhood Program - Head Start', N'Early Childhood Program - Head Start')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Early Childhood Program - Other', N'uri://ksde.org/SchoolCategoryDescriptor', N'Early Childhood Program - Other', N'Early Childhood Program - Other')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Early Childhood Program - Parents as Teachers', N'uri://ksde.org/SchoolCategoryDescriptor', N'Early Childhood Program - Parents as Teachers', N'Early Childhood Program - Parents as Teachers')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Elementary', N'uri://ksde.org/SchoolCategoryDescriptor', N'Elementary', N'Elementary')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'High School', N'uri://ksde.org/SchoolCategoryDescriptor', N'High School', N'High School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Junior High School', N'uri://ksde.org/SchoolCategoryDescriptor', N'Junior High School', N'Junior High School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Juvenile Detention Center', N'uri://ksde.org/SchoolCategoryDescriptor', N'Juvenile Detention Center', N'Juvenile Detention Center')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Kitchen Unit', N'uri://ksde.org/SchoolCategoryDescriptor', N'Kitchen Unit', N'Kitchen Unit')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Middle School', N'uri://ksde.org/SchoolCategoryDescriptor', N'Middle School', N'Middle School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Other', N'uri://ksde.org/SchoolCategoryDescriptor', N'Other', N'Other')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Community Based Preschool', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Community Based Preschool', N'Special Ed Program - Community Based Preschool')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Home', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Home', N'Special Ed Program - Home')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Hospital', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Hospital', N'Special Ed Program - Hospital')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Incarcerated', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Incarcerated', N'Special Ed Program - Incarcerated')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Off Site Community Based', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Off Site Community Based', N'Special Ed Program - Off Site Community Based')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Off Site Preschool', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Off Site Preschool', N'Special Ed Program - Off Site Preschool')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Out of State Building', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Out of State Building', N'Special Ed Program - Out of State Building')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Private Non Accredited', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Private Non Accredited', N'Special Ed Program - Private Non Accredited')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special Ed Program - Public School Administered', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special Ed Program - Public School Administered', N'Special Ed Program - Public School Administered')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolCategoryDescriptor', N'edfi', N'Special School', N'uri://ksde.org/SchoolCategoryDescriptor', N'Special School', N'Special School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolFoodServiceProgramServiceDescriptor', N'edfi', N'Free Lunch - Direct Certification', N'uri://ksde.org/SchoolFoodServiceProgramServiceDescriptor', N'Free Lunch - Direct Certification', N'Free Lunch - Direct Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolFoodServiceProgramServiceDescriptor', N'edfi', N'Free Lunch - Household Economic Survey', N'uri://ksde.org/SchoolFoodServiceProgramServiceDescriptor', N'Free Lunch - Household Economic Survey', N'Free Lunch - Household Economic Survey')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolFoodServiceProgramServiceDescriptor', N'edfi', N'Reduced Price Lunch - Direct Certification', N'uri://ksde.org/SchoolFoodServiceProgramServiceDescriptor', N'Reduced Price Lunch - Direct Certification', N'Reduced Price Lunch - Direct Certification')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolFoodServiceProgramServiceDescriptor', N'edfi', N'Reduced Price Lunch - Household Economic Survey', N'uri://ksde.org/SchoolFoodServiceProgramServiceDescriptor', N'Reduced Price Lunch - Household Economic Survey', N'Reduced Price Lunch - Household Economic Survey')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Area Vocational Technical School', N'uri://ksde.org/SchoolTypeDescriptor', N'Area Vocational Technical School', N'Area Vocational Technical School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Colleges and Universities', N'uri://ksde.org/SchoolTypeDescriptor', N'Colleges and Universities', N'Colleges and Universities')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Community College', N'uri://ksde.org/SchoolTypeDescriptor', N'Community College', N'Community College')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Day Care', N'uri://ksde.org/SchoolTypeDescriptor', N'Day Care', N'Day Care')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Early Childhood Programs', N'uri://ksde.org/SchoolTypeDescriptor', N'Early Childhood Programs', N'Early Childhood Programs')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Infant Toddler Network', N'uri://ksde.org/SchoolTypeDescriptor', N'Infant Toddler Network', N'Infant Toddler Network')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Interlocals', N'uri://ksde.org/SchoolTypeDescriptor', N'Interlocals', N'Interlocals')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'ITV (*** no longer used ***)', N'uri://ksde.org/SchoolTypeDescriptor', N'ITV (*** no longer used ***)', N'ITV (*** no longer used ***)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Municipalities', N'uri://ksde.org/SchoolTypeDescriptor', N'Municipalities', N'Municipalities')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Other', N'uri://ksde.org/SchoolTypeDescriptor', N'Other', N'Other')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Private Non-Accredited School Districts', N'uri://ksde.org/SchoolTypeDescriptor', N'Private Non-Accredited School Districts', N'Private Non-Accredited School Districts')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Private Schools', N'uri://ksde.org/SchoolTypeDescriptor', N'Private Schools', N'Private Schools')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Public Schools', N'uri://ksde.org/SchoolTypeDescriptor', N'Public Schools', N'Public Schools')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Service Centers', N'uri://ksde.org/SchoolTypeDescriptor', N'Service Centers', N'Service Centers')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Special Education Cooperatives', N'uri://ksde.org/SchoolTypeDescriptor', N'Special Education Cooperatives', N'Special Education Cooperatives')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Special Education Programs', N'uri://ksde.org/SchoolTypeDescriptor', N'Special Education Programs', N'Special Education Programs')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'State Agencies Accessing KSDE Data', N'uri://ksde.org/SchoolTypeDescriptor', N'State Agencies Accessing KSDE Data', N'State Agencies Accessing KSDE Data')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'State School', N'uri://ksde.org/SchoolTypeDescriptor', N'State School', N'State School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'SchoolTypeDescriptor', N'edfi', N'Trade School', N'uri://ksde.org/SchoolTypeDescriptor', N'Trade School', N'Trade School')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Concurrent High School Enrolled Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Concurrent High School Enrolled Student', N'Concurrent High School Enrolled Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Dropout Diploma Completion Virtual Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Dropout Diploma Completion Virtual Student', N'Dropout Diploma Completion Virtual Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Gifted Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Gifted Student', N'Gifted Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'IEP Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'IEP Student', N'IEP Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Kansas At-Risk Program Participation', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Kansas At-Risk Program Participation', N'Kansas At-Risk Program Participation')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Preschool-Aged At-Risk Program Participation', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Preschool-Aged At-Risk Program Participation', N'Preschool-Aged At-Risk Program Participation')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Special Circumstances Transfer Choice Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Special Circumstances Transfer Choice Student', N'Special Circumstances Transfer Choice Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Truant', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Truant', N'Truant')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Migrant Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Migrant Student', N'Migrant Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Virtual Education Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Virtual Education Student', N'Virtual Education Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Single Parent', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Single Parent', N'Single Parent')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'40+ Hours Community Service Postsec Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'40+ Hours Community Service Postsecondary Asset', N'40+ Hours Community Service Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'ASVAB Postsecondary Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'ASVAB Postsecondary Asset', N'ASVAB Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Brd of Regents Curric Completer Postsec Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Board of Regents Curriculum Completer Postsecondary Asset', N'Board of Regents Curriculum Completer Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Eagle Scout or Gold Scout Postsec Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Eagle Scout or Gold Scout Postsecondary Asset', N'Eagle Scout or Gold Scout Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'4-H Kansas Key Award Postsecondary Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'4-H Kansas Key Award Postsecondary Asset', N'4-H Kansas Key Award Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'2+ HS Athletics or Activities Postsec Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'2+ High School Athletics or Activities Postsecondary Asset', N'2+ High School Athletics or Activities Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'JROTC Postsecondary Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'JROTC Postsecondary Asset', N'JROTC Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Sr Exit Interview or Sr Projects Postsec Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Senior Exit Interview or Senior Projects Postsecondary Asset', N'Senior Exit Interview or Senior Projects Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'CTSO Officer State Level Postsec Asset', N'uri://ksde.org/StudentCharacteristicDescriptor', N'CTSO Officer State Level Postsecondary Asset', N'CTSO Officer State Level Postsecondary Asset')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'StudentCharacteristicDescriptor', N'edfi', N'Open Enrollment Student', N'uri://ksde.org/StudentCharacteristicDescriptor', N'Open Enrollment Student', N'Open Enrollment Student')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'Q1', N'uri://ksde.org/TermDescriptor', N'Quarter 1', N'Quarter 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'Q2', N'uri://ksde.org/TermDescriptor', N'Quarter 2', N'Quarter 2')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'Q3', N'uri://ksde.org/TermDescriptor', N'Quarter 3', N'Quarter 3')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'Q4', N'uri://ksde.org/TermDescriptor', N'Quarter 4', N'Quarter 4')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'S1', N'uri://ksde.org/TermDescriptor', N'Semester 1', N'Semester 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'S2', N'uri://ksde.org/TermDescriptor', N'Semester 2', N'Semester 2')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'SM', N'uri://ksde.org/TermDescriptor', N'Summer', N'Summer')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'T1', N'uri://ksde.org/TermDescriptor', N'Trimester 1', N'Trimester 1')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'T2', N'uri://ksde.org/TermDescriptor', N'Trimester 2', N'Trimester 2')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'T3', N'uri://ksde.org/TermDescriptor', N'Trimester 3', N'Trimester 3')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'TermDescriptor', N'edfi', N'YR', N'uri://ksde.org/TermDescriptor', N'Year Long', N'Year Long')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'WorkbasedLearningDescriptor', N'ks', N'02', N'uri://ksde.org/WorkbasedLearningDescriptor', N'Internship/placement (business/industry/community)', N'Internship/placement (business/industry/community)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'WorkbasedLearningDescriptor', N'ks', N'03', N'uri://ksde.org/WorkbasedLearningDescriptor', N'Youth registered apprenticeship', N'Youth registered apprenticeship')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'WorkbasedLearningDescriptor', N'ks', N'04', N'uri://ksde.org/WorkbasedLearningDescriptor', N'Simulated work-based experience (school district)', N'Simulated work-based experience (school district)')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'WorkbasedLearningDescriptor', N'ks', N'05', N'uri://ksde.org/WorkbasedLearningDescriptor', N'Entrepreneurship/ownership', N'Entrepreneurship/ownership')
GO
INSERT #edfi_Descriptors ([DescriptorType], [DescriptorTypeSchema], [EdFiCodeValue], [EdFiNamespace], [EdFiShortDescription], [EdFiDescription]) VALUES (N'WorkbasedLearningDescriptor', N'ks', N'06', N'uri://ksde.org/WorkbasedLearningDescriptor', N'Service learning', N'Service learning')
GO



declare 
	@Descriptor nvarchar (200),
	@DescriptorId nvarchar (200),
	@EdFiCodeValue nvarchar (50),
	@EdFiNamespace nvarchar (255),
	@EdFiShortDescription nvarchar (75),
	@EdFiDescription nvarchar (1024),
	@Sql nvarchar(max)


declare curTables cursor fast_forward read_only for
		select concat(DescriptorTypeSchema,'.',DescriptorType),
			   concat(DescriptorType,'Id'),
               EdFiCodeValue,
               EdFiNamespace,
               EdFiShortDescription,
               EdFiDescription
		from #edfi_Descriptors
	
	open curTables;

	fetch next from curTables
	into 
		@Descriptor,
		@DescriptorId,
		@EdFiCodeValue,
		@EdFiNamespace,
		@EdFiShortDescription,
		@EdFiDescription

	while @@FETCH_STATUS = 0 begin		
		
		;with source_cte as 
		(
			select @EdFiCodeValue as CodeValue,
				@EdFiNamespace as Namespace,
				@EdFiShortDescription as ShortDescription,
				@EdFiDescription as Description
		)
		merge into edfi.Descriptor as tgt
		using source_cte as src
			on tgt.Namespace = src.Namespace
			and tgt.CodeValue = src.CodeValue
		when matched
			and (nullif(tgt.ShortDescription, src.ShortDescription) is not null
			or nullif(src.ShortDescription, tgt.ShortDescription) is not null
			or nullif(tgt.Description, src.Description) is not null
			or nullif(src.Description, tgt.Description) is not null
			) then 
			update set tgt.Description = src.Description,
				tgt.ShortDescription = src.ShortDescription
		when not matched then 
			insert (CodeValue, ShortDescription, Description, Namespace)
			values (src.CodeValue, src.ShortDescription, src.Description, src.Namespace)
		;


		set @Sql = concat(N'
		;with source_cte as 
		(
			select 
				DescriptorId
			from edfi.Descriptor 
			where CodeValue =  ''', @EdFiCodeValue, '''
				and Namespace =  ''', @EdFiNamespace, '''
		)
		merge into ', @Descriptor, ' as tgt
		using source_cte as src
			on tgt.', @DescriptorId, ' = src.DescriptorId
		when not matched then 
			insert(', @DescriptorId, ')
			values (src.DescriptorId) ; 
		')

		exec (@Sql);

		fetch next from curTables
		into 
			@Descriptor,
			@DescriptorId,
			@EdFiCodeValue,
			@EdFiNamespace,
			@EdFiShortDescription,
			@EdFiDescription
	end
	close curTables;
	deallocate curTables;


drop table if exists #edfi_Descriptors;